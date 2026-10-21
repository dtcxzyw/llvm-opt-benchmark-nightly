Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm28regExpPrototypeSymbolReplaceEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !75
  %i.aw = and i32 %i.av, 2147483647               ; 2 uses
  %i.ax = load i32, ptr %i.ab, align 8, !tbaa !11
  %i.ay = icmp ugt i32 %i.ax, 1
  %i.az = load ptr, ptr %2, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -16
  %.sroa.02.0.i248 = select i1 %i.ay, ptr %i.ba, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 3 uses
  %i.bb = icmp ult ptr %i.aq, %i.ap
  br i1 %i.bb, label %bb.f, label %bb.g, !prof !38

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !36
  store i64 -844424930131968, ptr %i.aq, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.be = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ar, i64 -844424930131968) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i249 = phi ptr [ %i.aq, %bb.f ], [ %i.be, %bb.g ] ; 2 uses
  %.sroa.0.0.copyload.i.i250 = load i64, ptr %.sroa.02.0.i248, align 8, !tbaa !16 ; 2 uses
  %i.bf = icmp ugt i64 %.sroa.0.0.copyload.i.i250, -844424930131969
  br i1 %i.bf, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.bg = and i64 %.sroa.0.0.copyload.i.i250, 281474976710655
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = add i32 %i.bi, -1140850688
  %i.bk = icmp ult i32 %i.bj, 150994944
  %spec.select.i = select i1 %i.bk, ptr %.sroa.02.0.i248, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 4 uses
  %i.bl = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !14 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, -844424930131969
  %i.bn = and i64 %i.bl, 281474976710655
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = and i1 %i.bm, %i.bo
  br i1 %i.bp, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.bq = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i248) #12 ; 2 uses
  %.not517 = icmp eq ptr %i.bq, inttoptr (i64 -1 to ptr)
  br i1 %.not517, label %.critedge, label %bb.i, !prof !15

bb.i:                                             ; preds = %bb.h
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = or i64 %i.br, -844424930131968
  store i64 %i.bs, ptr %.0.i.i.i.i.i.i249, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.bt = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 333, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.bu = extractvalue { i32, i64 } %i.bt, 0
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.critedge, label %bb.k, !prof !15

bb.k:                                             ; preds = %bb.j
  %i.bw = extractvalue { i32, i64 } %i.bt, 1
  %i.bx = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.bw) #12 ; 2 uses
  br i1 %i.bx, label %bb.l, label %.critedge236

bb.l:                                             ; preds = %bb.k
  %i.by = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 337, ptr nonnull %.sroa.01.0.i, i32 0, ptr noundef null) #12 ; 2 uses
  %i.bz = extractvalue { i32, i64 } %i.by, 0
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.critedge, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.cb = extractvalue { i32, i64 } %i.by, 1
  %i.cc = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.cb) #12
  %i.cd = call noundef i32 @_ZN6hermes2vm7Runtime20putNamedThrowOnErrorENS0_6HandleINS0_8JSObjectEEENS0_11PropCacheIDENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, i32 noundef 0, i32 4) #12
  %.not518 = icmp eq i32 %i.cd, 0
  br i1 %.not518, label %.critedge, label %.critedge236, !prof !15

.critedge236:                                     ; preds = %bb.m, %bb.k
  %.1206 = phi i1 [ false, %bb.k ], [ %i.cc, %bb.m ]
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 8 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 72 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 1656 ; 4 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !50
  %.not.i.not.i.i.i.i.i.i = icmp ugt ptr %i.cg, %i.ci
  br i1 %.not.i.not.i.i.i.i.i.i, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %.critedge236
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ck = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.cj, i32 noundef 72) #12
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

bb.o:                                             ; preds = %.critedge236
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !49
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit: ; preds = %bb.n, %bb.o
  %i.cl = phi ptr [ %i.ck, %bb.n ], [ %i.cf, %bb.o ] ; 2 uses
  store i64 251658312, ptr %i.cl, align 4
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = or i64 %i.cm, -281474976710656          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !27  ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 192 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !36 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 200
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37 ; 2 uses
  %i.ct = icmp ult ptr %i.cq, %i.cs
  br i1 %i.ct, label %bb.p, label %bb.q, !prof !38

bb.p:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 2 uses
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !36
  store i64 %i.cn, ptr %i.cq, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit

bb.q:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit
  %i.cv = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.co, i64 %i.cn) #12
  %.pre772 = load ptr, ptr %i.b, align 8, !tbaa !27 ; 3 uses
  %.phi.trans.insert773 = getelementptr inbounds nuw i8, ptr %.pre772, i64 192
  %.pre774 = load ptr, ptr %.phi.trans.insert773, align 8, !tbaa !36
  %.phi.trans.insert775 = getelementptr inbounds nuw i8, ptr %.pre772, i64 200
  %.pre776 = load ptr, ptr %.phi.trans.insert775, align 8, !tbaa !37
  br label %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit

_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit: ; preds = %bb.p, %bb.q
  %i.cw = phi ptr [ %i.cs, %bb.p ], [ %.pre776, %bb.q ] ; 2 uses
  %i.cx = phi ptr [ %i.cu, %bb.p ], [ %.pre774, %bb.q ] ; 4 uses
  %i.cy = phi ptr [ %i.co, %bb.p ], [ %.pre772, %bb.q ] ; 3 uses
  %.0.i.i.i.i.i.i254 = phi ptr [ %i.cq, %bb.p ], [ %i.cv, %bb.q ]
  store ptr %.0.i.i.i.i.i.i254, ptr %5, align 8, !tbaa !80
  %i.cz = icmp ult ptr %i.cx, %i.cw
  br i1 %i.cz, label %bb.r, label %bb.s, !prof !38

bb.r:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 192
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.da, align 8, !tbaa !36
  store i64 -1688849860263936, ptr %i.cx, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.s:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit
  %i.dc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cy, i64 -1688849860263936) #12
  %.pre777 = load ptr, ptr %i.b, align 8, !tbaa !27 ; 3 uses
  %.phi.trans.insert778 = getelementptr inbounds nuw i8, ptr %.pre777, i64 192
  %.pre779 = load ptr, ptr %.phi.trans.insert778, align 8, !tbaa !36
  %.phi.trans.insert780 = getelementptr inbounds nuw i8, ptr %.pre777, i64 200
  %.pre781 = load ptr, ptr %.phi.trans.insert780, align 8, !tbaa !37
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.r, %bb.s
  %i.dd = phi ptr [ %i.cw, %bb.r ], [ %.pre781, %bb.s ] ; 2 uses
  %i.de = phi ptr [ %i.db, %bb.r ], [ %.pre779, %bb.s ] ; 4 uses
  %i.df = phi ptr [ %i.cy, %bb.r ], [ %.pre777, %bb.s ] ; 3 uses
  %.0.i.i.i.i.i.i255 = phi ptr [ %i.cx, %bb.r ], [ %i.dc, %bb.s ] ; 4 uses
  %i.dg = icmp ult ptr %i.de, %i.dd
  br i1 %i.dg, label %bb.t, label %bb.u, !prof !38

bb.t:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 192
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.di, ptr %i.dh, align 8, !tbaa !36
  store i64 -844424930131968, ptr %i.de, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit257

bb.u:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.dj = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.df, i64 -844424930131968) #12
  %.pre782 = load ptr, ptr %i.b, align 8, !tbaa !27 ; 3 uses
  %.phi.trans.insert783 = getelementptr inbounds nuw i8, ptr %.pre782, i64 192
  %.pre784 = load ptr, ptr %.phi.trans.insert783, align 8, !tbaa !36
  %.phi.trans.insert785 = getelementptr inbounds nuw i8, ptr %.pre782, i64 200
  %.pre786 = load ptr, ptr %.phi.trans.insert785, align 8, !tbaa !37
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit257

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit257: ; preds = %bb.t, %bb.u
  %i.dk = phi ptr [ %i.dd, %bb.t ], [ %.pre786, %bb.u ]
  %i.dl = phi ptr [ %i.di, %bb.t ], [ %.pre784, %bb.u ] ; 4 uses
  %i.dm = phi ptr [ %i.df, %bb.t ], [ %.pre782, %bb.u ] ; 2 uses
  %.0.i.i.i.i.i.i256 = phi ptr [ %i.de, %bb.t ], [ %i.dj, %bb.u ]
  %i.dn = icmp ult ptr %i.dl, %i.dk
  br i1 %i.dn, label %bb.v, label %bb.w, !prof !38

bb.v:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit257
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 192
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !36
  store i64 -281474976710656, ptr %i.dl, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.w:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit257
  %i.dq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dm, i64 -281474976710656) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.v, %bb.w
  %.0.i.i.i.i.i.i258 = phi ptr [ %i.dl, %bb.v ], [ %i.dq, %bb.w ] ; 17 uses
  %i.dr = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i) #12 ; 2 uses
  %12 = extractvalue { ptr, i64 } %i.dr, 0        ; 2 uses
  %i.ds = extractvalue { ptr, i64 } %i.dr, 1      ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 4 uses
  %i.du = ptrtoint ptr %1 to i64                  ; 10 uses
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !27  ; 10 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 192 ; 8 uses
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !36 ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 208 ; 8 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !44 ; 8 uses
  %i.ea = call { i32, i64 } @_ZN6hermes2vm10regExpExecERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, ptr nonnull %.0.i.i.i.i.i.i) ; 3 uses
  %i.eb = extractvalue { i32, i64 } %i.ea, 0      ; 2 uses
  br i1 %i.bx, label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader, label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader: ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %.critedge240.thread, label %.lr.ph, !prof !77

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader, %.critedge240.us
  %.pn = phi { i32, i64 } [ %i.gz, %.critedge240.us ], [ %i.ea, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ]
  %i.ed = phi i32 [ %i.gy, %.critedge240.us ], [ %i.dz, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ] ; 10 uses
  %i.ee = phi ptr [ %i.gx, %.critedge240.us ], [ %i.dy, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ] ; 9 uses
  %i.ef = phi ptr [ %i.gw, %.critedge240.us ], [ %i.dx, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ] ; 9 uses
  %i.eg = phi ptr [ %i.gv, %.critedge240.us ], [ %i.dw, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ] ; 9 uses
  %i.eh = phi ptr [ %i.gu, %.critedge240.us ], [ %i.dv, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ] ; 10 uses
  %i.ei = extractvalue { i32, i64 } %.pn, 1       ; 2 uses
  %.mask.i.us = and i64 %i.ei, -140737488355328
  %i.ej = icmp eq i64 %.mask.i.us, -1548112371908608
  br i1 %i.ej, label %.critedge240.thread468, label %bb.x

bb.x:                                             ; preds = %.lr.ph
  %i.ek = or i64 %i.ei, -281474976710656
  store i64 %i.ek, ptr %.0.i.i.i.i.i.i258, align 8, !tbaa !14
  %i.el = load ptr, ptr %5, align 8, !tbaa !80
  %.sroa.0.0.copyload.i.i259.us = load i64, ptr %i.el, align 8, !tbaa !16
  %i.em = and i64 %.sroa.0.0.copyload.i.i259.us, 281474976710655
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load atomic i32, ptr %i.eo monotonic, align 4
  %i.eq = icmp eq i32 %i.ep, 1027070
  br i1 %i.eq, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit261, label %bb.y, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.er = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i258)
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %.critedge240.thread, label %bb.z, !prof !15

bb.z:                                             ; preds = %bb.y
  %i.et = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, ptr nonnull %.0.i.i.i.i.i.i258) #12 ; 2 uses
  %i.eu = extractvalue { i32, i64 } %i.et, 0
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %.critedge240.thread, label %bb.aa, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.ew = extractvalue { i32, i64 } %i.et, 1
  store i64 %i.ew, ptr %.0.i.i.i.i.i.i255, align 8, !tbaa !14
  %i.ex = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i255) #12 ; 2 uses
  %.not519.us = icmp eq ptr %i.ex, inttoptr (i64 -1 to ptr)
  br i1 %.not519.us, label %.critedge240.thread, label %bb.ab, !prof !15

bb.ab:                                            ; preds = %bb.aa
  %i.ey = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.ez = or i64 %i.ey, -844424930131968
  store i64 %i.ez, ptr %.0.i.i.i.i.i.i256, align 8, !tbaa !14
  %i.fa = and i64 %i.ey, 281474976710655
  %i.fb = inttoptr i64 %i.fa to ptr
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !75
  %i.fe = and i32 %i.fd, 2147483647
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.ac, label %.critedge240.us

bb.ac:                                            ; preds = %bb.ab
  %i.fg = call { i32, i64 } @_ZN6hermes2vm7Runtime8getNamedENS0_6HandleINS0_8JSObjectEEENS0_11PropCacheIDE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, i32 noundef 0) #12 ; 2 uses
  %i.fh = extractvalue { i32, i64 } %i.fg, 0
  %i.fi = icmp eq i32 %i.fh, 0
  br i1 %i.fi, label %.critedge240.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fj = extractvalue { i32, i64 } %i.fg, 1
  store i64 %i.fj, ptr %.0.i.i.i.i.i.i255, align 8, !tbaa !14
  %i.fk = call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i255) #12 ; 2 uses
  %i.fl = extractvalue { i32, i64 } %i.fk, 0
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %.critedge240.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fn = extractvalue { i32, i64 } %i.fk, 1
  %.sroa.0.0.copyload.i.i265.us = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !16
  %i.fo = and i64 %.sroa.0.0.copyload.i.i265.us, 281474976710655
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = bitcast i64 %i.fn to double
  %i.fr = fptoui double %i.fq to i64
  %i.fs = call noundef i64 @_ZN6hermes2vm18advanceStringIndexEPKNS0_15StringPrimitiveEmb(ptr noundef %i.fp, i64 noundef %i.fr, i1 noundef zeroext %.1206) ; 2 uses
  %i.ft = uitofp i64 %i.fs to double              ; 2 uses
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = shl i32 %i.fu, 3                        ; 2 uses
  %i.fw = ashr exact i32 %i.fv, 3
  %i.fx = bitcast double %i.ft to i64
  %i.fy = sitofp i32 %i.fw to double
  %i.fz = bitcast double %i.fy to i64
  %i.ga = icmp eq i64 %i.fx, %i.fz
  br i1 %i.ga, label %bb.ai, label %bb.af, !prof !38

bb.af:                                            ; preds = %bb.ae
  %i.gb = load ptr, ptr %i.ce, align 8, !tbaa !49 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %i.ch, align 8, !tbaa !50
  %.not.i.not.i.i.i.i.i.i.i.i.us = icmp ugt ptr %i.gc, %i.gd
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.us, label %bb.ah, label %bb.ag, !prof !15

bb.ag:                                            ; preds = %bb.af
  store ptr %i.gc, ptr %i.ce, align 8, !tbaa !49
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.us

bb.ah:                                            ; preds = %bb.af
  %i.ge = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dt, i32 noundef 16) #12
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.us

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.us: ; preds = %bb.ah, %bb.ag
  %i.gf = phi ptr [ %i.ge, %bb.ah ], [ %i.gb, %bb.ag ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store double %i.ft, ptr %i.gg, align 8, !tbaa !54
  store i32 402653200, ptr %i.gf, align 8, !tbaa !23
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gh, %i.du
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = or i32 %i.gj, 3
  br label %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us

bb.ai:                                            ; preds = %bb.ae
  %i.gl = or disjoint i32 %i.fv, 4
  br label %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us

_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us: ; preds = %bb.ai, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.us
  %.sroa.0.0.i.i.us = phi i32 [ %i.gl, %bb.ai ], [ %i.gk, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.us ]
  %i.gm = call noundef i32 @_ZN6hermes2vm7Runtime20putNamedThrowOnErrorENS0_6HandleINS0_8JSObjectEEENS0_11PropCacheIDENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, i32 noundef 0, i32 %.sroa.0.0.i.i.us) #12
  %.not520.us = icmp eq i32 %i.gm, 0
  br i1 %.not520.us, label %.critedge240.thread, label %.critedge240.us

.critedge240.us:                                  ; preds = %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us, %bb.ab
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eh, i64 144
  %i.go = zext i32 %i.ed to i64
  %i.gp = load ptr, ptr %i.gn, align 8, !tbaa !41
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.go
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !76
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !44
  %i.gt = getelementptr inbounds nuw i8, ptr %i.eh, i64 200
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !37
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !36
  %i.gu = load ptr, ptr %i.b, align 8, !tbaa !27  ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 192 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !36 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 208 ; 3 uses
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !44 ; 2 uses
  %i.gz = call { i32, i64 } @_ZN6hermes2vm10regExpExecERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.01.0.i, ptr nonnull %.0.i.i.i.i.i.i) ; 2 uses
  %i.ha = extractvalue { i32, i64 } %i.gz, 0
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %.critedge240.thread, label %.lr.ph, !prof !78

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us: ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.hc = extractvalue { i32, i64 } %i.ea, 1      ; 2 uses
  %i.hd = icmp eq i32 %i.eb, 0
  br i1 %i.hd, label %.critedge240.thread, label %bb.aj, !prof !15

bb.aj:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us
  %.mask.i.us635 = and i64 %i.hc, -140737488355328
  %i.he = icmp eq i64 %.mask.i.us635, -1548112371908608
  br i1 %i.he, label %.critedge240.thread468, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hf = or i64 %i.hc, -281474976710656
  store i64 %i.hf, ptr %.0.i.i.i.i.i.i258, align 8, !tbaa !14
  %i.hg = load ptr, ptr %5, align 8, !tbaa !80
  %.sroa.0.0.copyload.i.i259.us636 = load i64, ptr %i.hg, align 8, !tbaa !16
  %i.hh = and i64 %.sroa.0.0.copyload.i.i259.us636, 281474976710655
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load atomic i32, ptr %i.hj monotonic, align 4
  %i.hl = icmp eq i32 %i.hk, 1027070
  br i1 %i.hl, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit261, label %bb.al, !prof !15

bb.al:                                            ; preds = %bb.ak
  %i.hm = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i258)
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.critedge240.thread, label %.critedge240.us637, !prof !15

.critedge240.us637:                               ; preds = %bb.al
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dv, i64 144
  %i.hp = zext i32 %i.dz to i64
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !41
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !76
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 128
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !44
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dv, i64 200
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !37
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !36
  br label %.loopexit

.critedge240.thread468:                           ; preds = %.lr.ph, %bb.aj
  %.us-phi605 = phi ptr [ %i.dv, %bb.aj ], [ %i.eh, %.lr.ph ] ; 2 uses
  %.us-phi606 = phi ptr [ %i.dw, %bb.aj ], [ %i.eg, %.lr.ph ]
  %.us-phi607 = phi ptr [ %i.dx, %bb.aj ], [ %i.ef, %.lr.ph ]
  %.us-phi608 = phi ptr [ %i.dy, %bb.aj ], [ %i.ee, %.lr.ph ]
  %.us-phi609 = phi i32 [ %i.dz, %bb.aj ], [ %i.ed, %.lr.ph ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.us-phi605, i64 144
  %i.hw = zext i32 %.us-phi609 to i64
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !41
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !76
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  store i32 %.us-phi609, ptr %.us-phi608, align 8, !tbaa !44
  %i.ib = getelementptr inbounds nuw i8, ptr %.us-phi605, i64 200
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !37
  store ptr %.us-phi607, ptr %.us-phi606, align 8, !tbaa !36
  br label %.loopexit

_ZN6hermes2vm11TwineChar16C2EPKc.exit261:         ; preds = %bb.x, %bb.ak
  %.us-phi610 = phi ptr [ %i.dv, %bb.ak ], [ %i.eh, %bb.x ]
  %.us-phi611 = phi ptr [ %i.dw, %bb.ak ], [ %i.eg, %bb.x ]
  %.us-phi612 = phi ptr [ %i.dx, %bb.ak ], [ %i.ef, %bb.x ]
  %.us-phi613 = phi ptr [ %i.dy, %bb.ak ], [ %i.ee, %bb.x ]
  %.us-phi614 = phi i32 [ %i.dz, %bb.ak ], [ %i.ed, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ic, align 8, !tbaa !20
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 33, ptr %i.id, align 8, !tbaa !21
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ie, align 8, !tbaa !22
  store ptr @.str.11, ptr %6, align 8, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.if, align 8, !tbaa !24
  %i.ig = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %.critedge240.thread

.critedge240.thread:                              ; preds = %.critedge240.us, %bb.y, %bb.z, %bb.aa, %bb.ac, %bb.ad, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us, %bb.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit261
  %i.ih = phi ptr [ %.us-phi610, %_ZN6hermes2vm11TwineChar16C2EPKc.exit261 ], [ %i.dv, %bb.al ], [ %i.dv, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us ], [ %i.dv, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ], [ %i.eh, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us ], [ %i.eh, %bb.ad ], [ %i.eh, %bb.ac ], [ %i.eh, %bb.aa ], [ %i.eh, %bb.z ], [ %i.eh, %bb.y ], [ %i.gu, %.critedge240.us ] ; 2 uses
  %i.ii = phi ptr [ %.us-phi611, %_ZN6hermes2vm11TwineChar16C2EPKc.exit261 ], [ %i.dw, %bb.al ], [ %i.dw, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us ], [ %i.dw, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ], [ %i.eg, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us ], [ %i.eg, %bb.ad ], [ %i.eg, %bb.ac ], [ %i.eg, %bb.aa ], [ %i.eg, %bb.z ], [ %i.eg, %bb.y ], [ %i.gv, %.critedge240.us ]
  %i.ij = phi ptr [ %.us-phi612, %_ZN6hermes2vm11TwineChar16C2EPKc.exit261 ], [ %i.dx, %bb.al ], [ %i.dx, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us ], [ %i.dx, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ], [ %i.ef, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us ], [ %i.ef, %bb.ad ], [ %i.ef, %bb.ac ], [ %i.ef, %bb.aa ], [ %i.ef, %bb.z ], [ %i.ef, %bb.y ], [ %i.gw, %.critedge240.us ]
  %i.ik = phi ptr [ %.us-phi613, %_ZN6hermes2vm11TwineChar16C2EPKc.exit261 ], [ %i.dy, %bb.al ], [ %i.dy, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us ], [ %i.dy, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ], [ %i.ee, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us ], [ %i.ee, %bb.ad ], [ %i.ee, %bb.ac ], [ %i.ee, %bb.aa ], [ %i.ee, %bb.z ], [ %i.ee, %bb.y ], [ %i.gx, %.critedge240.us ]
  %i.il = phi i32 [ %.us-phi614, %_ZN6hermes2vm11TwineChar16C2EPKc.exit261 ], [ %i.dz, %bb.al ], [ %i.dz, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us ], [ %i.dz, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ], [ %i.ed, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us ], [ %i.ed, %bb.ad ], [ %i.ed, %bb.ac ], [ %i.ed, %bb.aa ], [ %i.ed, %bb.z ], [ %i.ed, %bb.y ], [ %i.gy, %.critedge240.us ] ; 2 uses
  %.sroa.0464.4.ph = phi i32 [ %i.ig, %_ZN6hermes2vm11TwineChar16C2EPKc.exit261 ], [ 0, %bb.al ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.split.us ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us.preheader ], [ 0, %_ZN6hermes2vm12setLastIndexENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEd.exit.us ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %.critedge240.us ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.ih, i64 144
  %i.in = zext i32 %i.il to i64
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !41
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.in
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !76
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 128
  store i32 %i.il, ptr %i.ik, align 8, !tbaa !44
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 200
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !37
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !36
  br label %bb.dl

.loopexit:                                        ; preds = %.critedge240.us637, %.critedge240.thread468
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.it, ptr %7, align 8, !tbaa !41
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.iu, align 8, !tbaa !43
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 32, ptr %i.iv, align 4, !tbaa !42
  %i.iw = load ptr, ptr %i.b, align 8, !tbaa !27  ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 192 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !36 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 200
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !37 ; 2 uses
  %i.jb = icmp ult ptr %i.iy, %i.ja
  br i1 %i.jb, label %bb.am, label %bb.an, !prof !38

bb.am:                                            ; preds = %.loopexit
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  store ptr %i.jc, ptr %i.ix, align 8, !tbaa !36
  store i64 -1688849860263936, ptr %i.iy, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268

bb.an:                                            ; preds = %.loopexit
  %i.jd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.iw, i64 -1688849860263936) #12
  %.pre787 = load ptr, ptr %i.b, align 8, !tbaa !27 ; 3 uses
  %.phi.trans.insert788 = getelementptr inbounds nuw i8, ptr %.pre787, i64 192
  %.pre789 = load ptr, ptr %.phi.trans.insert788, align 8, !tbaa !36
  %.phi.trans.insert790 = getelementptr inbounds nuw i8, ptr %.pre787, i64 200
  %.pre791 = load ptr, ptr %.phi.trans.insert790, align 8, !tbaa !37
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268: ; preds = %bb.am, %bb.an
  %i.je = phi ptr [ %i.ja, %bb.am ], [ %.pre791, %bb.an ]
  %i.jf = phi ptr [ %i.jc, %bb.am ], [ %.pre789, %bb.an ] ; 4 uses
  %i.jg = phi ptr [ %i.iw, %bb.am ], [ %.pre787, %bb.an ] ; 2 uses
  %.0.i.i.i.i.i.i267 = phi ptr [ %i.iy, %bb.am ], [ %i.jd, %bb.an ] ; 2 uses
  %i.jh = icmp ult ptr %i.jf, %i.je
  br i1 %i.jh, label %bb.ao, label %bb.ap, !prof !38

bb.ao:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 192
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.jj, ptr %i.ji, align 8, !tbaa !36
  store i64 -1688849860263936, ptr %i.jf, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270

bb.ap:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268
  %i.jk = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.jg, i64 -1688849860263936) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i.i.i.i269 = phi ptr [ %i.jf, %bb.ao ], [ %i.jk, %bb.ap ] ; 2 uses
  %i.jl = load ptr, ptr %5, align 8, !tbaa !80
  %.sroa.0.0.copyload.i.i271 = load i64, ptr %i.jl, align 8, !tbaa !16
  %i.jm = and i64 %.sroa.0.0.copyload.i.i271, 281474976710655
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.jp = load atomic i32, ptr %i.jo monotonic, align 4 ; 2 uses
  %.not233683.not = icmp eq i32 %i.jp, 0
  br i1 %.not233683.not, label %.thread513, label %.lr.ph686

.lr.ph686:                                        ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270
  %i.jq = uitofp nneg i32 %i.aw to double
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.js = ptrtoint ptr %.0.i.i.i.i.i.i249 to i64
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.jw = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.jx = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.2.8.extract.trunc.i = trunc i64 %i.ds to i32 ; 2 uses
  %i.jy = and i32 %.sroa.2.8.extract.trunc.i, -1073741824
  %i.jz = getelementptr inbounds nuw i8, ptr %10, i64 8
  %wide.trip.count = zext i32 %i.jp to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph686, %bb.dg
  %indvars.iv = phi i64 [ 0, %.lr.ph686 ], [ %indvars.iv.next, %bb.dg ] ; 2 uses
  %.0210685 = phi i32 [ 0, %.lr.ph686 ], [ %.4214, %bb.dg ] ; 4 uses
  %i.ka = load ptr, ptr %i.b, align 8, !tbaa !27  ; 8 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 192 ; 4 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !36 ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 208 ; 4 uses
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !44 ; 6 uses
  %i.kf = load ptr, ptr %5, align 8, !tbaa !80
  %.sroa.0.0.copyload.i.i273 = load i64, ptr %i.kf, align 8, !tbaa !16
  %i.kg = and i64 %.sroa.0.0.copyload.i.i273, 281474976710655
  %i.kh = inttoptr i64 %i.kg to ptr
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %indvars.iv
  %.sroa.0.0.copyload.i274 = load i32, ptr %i.kj, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i274, 0
  %i.kk = zext i32 %.sroa.0.0.copyload.i274 to i64
  %i.kl = add i64 %i.kk, %i.du
  %i.km = or i64 %i.kl, -281474976710656
  %i.kn = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.km
  store i64 %i.kn, ptr %.0.i.i.i.i.i.i258, align 8, !tbaa !14
  %i.ko = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr nonnull %.0.i.i.i.i.i.i258, i32 0, ptr noundef null) #12 ; 2 uses
  %i.kp = extractvalue { i32, i64 } %i.ko, 0
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %.thread511, label %bb.ar, !prof !15

bb.ar:                                            ; preds = %bb.aq
  %i.kr = extractvalue { i32, i64 } %i.ko, 1
  store i64 %i.kr, ptr %.0.i.i.i.i.i.i267, align 8, !tbaa !14
  %i.ks = call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i267) #12 ; 2 uses
  %i.kt = extractvalue { i32, i64 } %i.ks, 0
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %.thread511, label %bb.as, !prof !15

bb.as:                                            ; preds = %bb.ar
  %i.kv = extractvalue { i32, i64 } %i.ks, 1
  %i.kw = bitcast i64 %i.kv to double
  %i.kx = fptoui double %i.kw to i64              ; 2 uses
  %i.ky = call i64 @llvm.usub.sat.i64(i64 %i.kx, i64 1) ; 4 uses
  %i.kz = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, ptr nonnull %.0.i.i.i.i.i.i258) #12 ; 2 uses
  %i.la = extractvalue { i32, i64 } %i.kz, 0
  %i.lb = extractvalue { i32, i64 } %i.kz, 1      ; 2 uses
  %i.lc = icmp eq i32 %i.la, 0
  br i1 %i.lc, label %.thread511, label %bb.at, !prof !15

bb.at:                                            ; preds = %bb.as
  %i.ld = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 192 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !36 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 200
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !37
  %i.li = icmp ult ptr %i.lf, %i.lh
  br i1 %i.li, label %bb.au, label %bb.av, !prof !38

bb.au:                                            ; preds = %bb.at
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.lj, ptr %i.le, align 8, !tbaa !36
  store i64 %i.lb, ptr %i.lf, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.av:                                            ; preds = %bb.at
  %i.lk = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ld, i64 %i.lb) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.au, %bb.av
  %.0.i.i.i.i.i.i277 = phi ptr [ %i.lf, %bb.au ], [ %i.lk, %bb.av ]
  %i.ll = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i277) #12 ; 2 uses
  %.not521 = icmp eq ptr %i.ll, inttoptr (i64 -1 to ptr)
  br i1 %.not521, label %.thread511, label %bb.aw, !prof !15

bb.aw:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = or i64 %i.lm, -844424930131968          ; 3 uses
  %i.lo = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 192 ; 2 uses
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !36 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lo, i64 200
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !37
  %i.lt = icmp ult ptr %i.lq, %i.ls
  br i1 %i.lt, label %bb.ax, label %bb.ay, !prof !38

bb.ax:                                            ; preds = %bb.aw
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lq, i64 8
  store ptr %i.lu, ptr %i.lp, align 8, !tbaa !36
  store i64 %i.ln, ptr %i.lq, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279

bb.ay:                                            ; preds = %bb.aw
  %i.lv = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.lo, i64 %i.ln) #12 ; 2 uses
  %.sroa.0.0.copyload.i.i280.pre = load i64, ptr %i.lv, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279: ; preds = %bb.ax, %bb.ay
  %.sroa.0.0.copyload.i.i280 = phi i64 [ %i.ln, %bb.ax ], [ %.sroa.0.0.copyload.i.i280.pre, %bb.ay ]
  %.0.i.i.i.i.i.i278 = phi ptr [ %i.lq, %bb.ax ], [ %i.lv, %bb.ay ] ; 2 uses
  %i.lw = and i64 %.sroa.0.0.copyload.i.i280, 281474976710655
  %i.lx = inttoptr i64 %i.lw to ptr
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !75
  %i.ma = and i32 %i.lz, 2147483647
  %i.mb = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 329, ptr nonnull %.0.i.i.i.i.i.i258, i32 0, ptr noundef null) #12 ; 2 uses
  %i.mc = extractvalue { i32, i64 } %i.mb, 0
  %i.md = extractvalue { i32, i64 } %i.mb, 1      ; 2 uses
  %i.me = icmp eq i32 %i.mc, 0
  br i1 %i.me, label %.thread511, label %bb.az, !prof !15

bb.az:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279
  %i.mf = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 192 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !36 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 200
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !37
  %i.mk = icmp ult ptr %i.mh, %i.mj
  br i1 %i.mk, label %bb.ba, label %bb.bb, !prof !38

bb.ba:                                            ; preds = %bb.az
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  store ptr %i.ml, ptr %i.mg, align 8, !tbaa !36
  store i64 %i.md, ptr %i.mh, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283

bb.bb:                                            ; preds = %bb.az
  %i.mm = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.mf, i64 %i.md) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283: ; preds = %bb.ba, %bb.bb
  %.0.i.i.i.i.i.i282 = phi ptr [ %i.mh, %bb.ba ], [ %i.mm, %bb.bb ]
  %i.mn = call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i282) #12 ; 2 uses
  %i.mo = extractvalue { i32, i64 } %i.mn, 0
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %.thread511, label %bb.bc, !prof !15

bb.bc:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283
  %i.mq = extractvalue { i32, i64 } %i.mn, 1
  %i.mr = bitcast i64 %i.mq to double
  %i.ms = call nsz double @llvm.minnum.f64(double %i.mr, double %i.jq)
  %i.mt = call nsz double @llvm.maxnum.f64(double %i.ms, double 0.000000e+00)
  %i.mu = fptosi double %i.mt to i64
  %i.mv = trunc i64 %i.mu to i32                  ; 5 uses
  %i.mw = icmp ugt i64 %i.ky, 1027070
  br i1 %i.mw, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit285, label %bb.bd, !prof !15

_ZN6hermes2vm11TwineChar16C2EPKc.exit285:         ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.mx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.mx, align 8, !tbaa !20
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 33, ptr %i.my, align 8, !tbaa !21
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.mz, align 8, !tbaa !22
  store ptr @.str.12, ptr %8, align 8, !tbaa !23
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.na, align 8, !tbaa !24
  %i.nb = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.thread511

bb.bd:                                            ; preds = %bb.bc
  %i.nc = trunc nuw nsw i64 %i.ky to i32
  %i.nd = shl nuw nsw i32 %i.nc, 2
  %i.ne = add nuw nsw i32 %i.nd, 12
  %i.nf = and i32 %i.ne, 8388600                  ; 3 uses
  %i.ng = load ptr, ptr %i.ce, align 8, !tbaa !49 ; 2 uses
  %i.nh = zext nneg i32 %i.nf to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.nh ; 2 uses
  %i.nj = load ptr, ptr %i.ch, align 8, !tbaa !50
  %.not.i.not.i.i.i.i.i.i286 = icmp ugt ptr %i.ni, %i.nj
  br i1 %.not.i.not.i.i.i.i.i.i286, label %bb.be, label %bb.bf, !prof !15

bb.be:                                            ; preds = %bb.bd
  %i.nk = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dt, i32 noundef %i.nf) #12
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread

bb.bf:                                            ; preds = %bb.bd
  store ptr %i.ni, ptr %i.ce, align 8, !tbaa !49
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread: ; preds = %bb.be, %bb.bf
  %i.nl = phi ptr [ %i.nk, %bb.be ], [ %i.ng, %bb.bf ] ; 3 uses
  store i64 0, ptr %i.nl, align 4
  %i.nm = or disjoint i32 %i.nf, 251658240
  store i32 %i.nm, ptr %i.nl, align 4, !tbaa !23
  %i.nn = ptrtoint ptr %i.nl to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.no = or i64 %i.nn, -281474976710656          ; 2 uses
  %i.np = load ptr, ptr %i.b, align 8, !tbaa !27  ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 192 ; 2 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !36 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.np, i64 200
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !37 ; 2 uses
  %i.nu = icmp ult ptr %i.nr, %i.nt
  br i1 %i.nu, label %bb.bg, label %bb.bh, !prof !38

bb.bg:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nr, i64 8 ; 2 uses
  store ptr %i.nv, ptr %i.nq, align 8, !tbaa !36
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm28regExpPrototypeSymbolReplaceEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.vp = getelementptr [8 x i8], ptr %i.te, i64 %i.vo
  %i.vq = getelementptr i8, ptr %i.vp, i64 -64
  store double %i.vl, ptr %i.vq, align 8, !tbaa !14
  %.sroa.0.0.copyload.i318 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !16
  %i.vr = sext i32 %i.vm to i64
  %i.vs = sub nsw i64 0, %i.vr
  %i.vt = getelementptr [8 x i8], ptr %i.te, i64 %i.vs
  %i.vu = getelementptr i8, ptr %i.vt, i64 -64
  store i64 %.sroa.0.0.copyload.i318, ptr %i.vu, align 8, !tbaa !14
  br i1 %i.rv, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %._crit_edge681
  %i.vv = add i32 %.0224.lcssa, 2
  %.sroa.0.0.copyload.i.i.i321 = load i64, ptr %.0.i.i.i.i.i.i300, align 8, !tbaa !16
  %i.vw = sext i32 %i.vv to i64
  %i.vx = sub nsw i64 0, %i.vw
  %i.vy = getelementptr [8 x i8], ptr %i.te, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 -64
  store i64 %.sroa.0.0.copyload.i.i.i321, ptr %i.vz, align 8, !tbaa !14
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge681
  %.sroa.0.0.copyload.i.i.i324 = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !16
  %i.wa = and i64 %.sroa.0.0.copyload.i.i.i324, 281474976710655
  %i.wb = inttoptr i64 %i.wa to ptr
  %i.wc = load i32, ptr %i.wb, align 4
  %i.wd = lshr i32 %i.wc, 24
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.we
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !371
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 104
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !376
  %i.wj = call { i32, i64 } %i.wi(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #12, !inline_history !139 ; 2 uses
  %i.wk = extractvalue { i32, i64 } %i.wj, 0
  %i.wl = extractvalue { i32, i64 } %i.wj, 1      ; 2 uses
  %i.wm = icmp eq i32 %i.wk, 0
  %i.wn = load i64, ptr %i.ju, align 8, !tbaa !368
  %i.wo = add i64 %i.wn, -1
  store i64 %i.wo, ptr %i.ju, align 8, !tbaa !368
  store ptr %i.sm, ptr %i.jt, align 8, !tbaa !367
  br i1 %i.wm, label %.thread490, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wp = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 192 ; 2 uses
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !36 ; 4 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 200
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !37
  %i.wu = icmp ult ptr %i.wr, %i.wt
  br i1 %i.wu, label %bb.cx, label %bb.cy, !prof !38

bb.cx:                                            ; preds = %bb.cw
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  store ptr %i.wv, ptr %i.wq, align 8, !tbaa !36
  store i64 %i.wl, ptr %i.wr, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327

bb.cy:                                            ; preds = %bb.cw
  %i.ww = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.wp, i64 %i.wl) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327: ; preds = %bb.cx, %bb.cy
  %.0.i.i.i.i.i.i326 = phi ptr [ %i.wr, %bb.cx ], [ %i.ww, %bb.cy ]
  %i.wx = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i326) #12 ; 2 uses
  %.not523 = icmp eq ptr %i.wx, inttoptr (i64 -1 to ptr)
  br i1 %.not523, label %.thread490, label %.thread488, !prof !15

.thread488:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327
  %i.wy = ptrtoint ptr %i.wx to i64
  br label %bb.de

bb.cz:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit305
  br i1 %i.rv, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.wz = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i300) #12 ; 2 uses
  %i.xa = extractvalue { i32, i64 } %i.wz, 0
  %i.xb = icmp eq i32 %i.xa, 0
  br i1 %i.xb, label %.thread490, label %bb.db, !prof !15

bb.db:                                            ; preds = %bb.da
  %i.xc = extractvalue { i32, i64 } %i.wz, 1
  store i64 %i.xc, ptr %.0.i.i.i.i.i.i300, align 8, !tbaa !14
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.db
  %.sroa.013.0 = phi ptr [ %.0.i.i.i.i.i.i300, %bb.db ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.cz ]
  %.sroa.014.0.copyload497 = load ptr, ptr %9, align 8
  %i.xd = call { i32, i64 } @_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i278, ptr nonnull %.0.i.i.i.i.i.i, i32 noundef %i.mv, ptr %.sroa.014.0.copyload497, ptr nonnull %.sroa.013.0, i64 %i.js) ; 2 uses
  %i.xe = extractvalue { i32, i64 } %i.xd, 0
  %i.xf = icmp eq i32 %i.xe, 0
  br i1 %i.xf, label %.thread490, label %bb.dd, !prof !15

bb.dd:                                            ; preds = %bb.dc
  %i.xg = extractvalue { i32, i64 } %i.xd, 1
  %i.xh = and i64 %i.xg, 281474976710655
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.thread488
  %storemerge.in = phi i64 [ %i.xh, %bb.dd ], [ %i.wy, %.thread488 ]
  %storemerge = or i64 %storemerge.in, -844424930131968
  store i64 %storemerge, ptr %.0.i.i.i.i.i.i304, align 8, !tbaa !14
  %.not232 = icmp ugt i32 %.0210685, %i.mv
  br i1 %.not232, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.xi = sub nuw i32 %i.mv, %.0210685
  %i.xj = add i32 %.0210685, %.sroa.2.8.extract.trunc.i
  %i.xk = and i32 %i.xj, 1073741823
  %i.xl = or disjoint i32 %i.xk, %i.jy
  %.sroa.2.8.insert.ext.i = zext i32 %i.xl to i64
  %.sroa.2.12.insert.ext.i = zext i32 %i.xi to i64
  %.sroa.2.12.insert.shift.i = shl nuw i64 %.sroa.2.12.insert.ext.i, 32
  %.sroa.2.12.insert.insert.i = or disjoint i64 %.sroa.2.12.insert.shift.i, %.sroa.2.8.insert.ext.i
  store ptr %12, ptr %10, align 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %i.jz, align 8
  %i.xm = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %.sroa.0.0.copyload.i.i331 = load i64, ptr %.0.i.i.i.i.i.i304, align 8, !tbaa !16
  %i.xn = and i64 %.sroa.0.0.copyload.i.i331, 281474976710655
  %i.xo = inttoptr i64 %i.xn to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.xo, ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  %i.xp = add i32 %i.ma, %i.mv
  br label %bb.dg

.thread511:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.ar, %bb.as, %bb.aq, %_ZN6hermes2vm11TwineChar16C2EPKc.exit285
  %.sroa.0464.25.ph = phi i32 [ %i.nb, %_ZN6hermes2vm11TwineChar16C2EPKc.exit285 ], [ 0, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279 ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283 ]
  %i.xq = getelementptr inbounds nuw i8, ptr %i.ka, i64 144
  %i.xr = zext i32 %i.ke to i64
  %i.xs = load ptr, ptr %i.xq, align 8, !tbaa !41
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %i.xs, i64 %i.xr
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !76
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 128
  store i32 %i.ke, ptr %i.kd, align 8, !tbaa !44
  %i.xw = getelementptr inbounds nuw i8, ptr %i.ka, i64 200
  store ptr %i.xv, ptr %i.xw, align 8, !tbaa !37
  store ptr %i.kc, ptr %i.kb, align 8, !tbaa !36
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de, %bb.df
  %.4214 = phi i32 [ %i.xp, %bb.df ], [ %.0210685, %bb.de ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ka, i64 144
  %i.xy = zext i32 %i.ke to i64
  %i.xz = load ptr, ptr %i.xx, align 8, !tbaa !41
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.xz, i64 %i.xy
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !76
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 128
  store i32 %i.ke, ptr %i.kd, align 8, !tbaa !44
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ka, i64 200
  store ptr %i.yc, ptr %i.yd, align 8, !tbaa !37
  store ptr %i.kc, ptr %i.kb, align 8, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread513, label %bb.aq, !llvm.loop !140

.thread490:                                       ; preds = %bb.dc, %bb.da, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327, %bb.cv, %.thread480, %.critedge246.critedge
  %.sroa.0464.20.ph = phi i32 [ 0, %.thread480 ], [ %i.sz, %.critedge246.critedge ], [ 0, %bb.cv ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327 ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301 ], [ 0, %bb.da ], [ 0, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.ye = getelementptr inbounds nuw i8, ptr %i.ka, i64 144
  %i.yf = zext i32 %i.ke to i64
  %i.yg = load ptr, ptr %i.ye, align 8, !tbaa !41
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.yf
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !76
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 128
  store i32 %i.ke, ptr %i.kd, align 8, !tbaa !44
  %i.yk = getelementptr inbounds nuw i8, ptr %i.ka, i64 200
  store ptr %i.yj, ptr %i.yk, align 8, !tbaa !37
  store ptr %i.kc, ptr %i.kb, align 8, !tbaa !36
  br label %bb.dj

.thread513:                                       ; preds = %bb.dg, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270
  %.0210.lcssa = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270 ], [ %.4214, %bb.dg ] ; 3 uses
  %.not234 = icmp ult i32 %.0210.lcssa, %i.aw
  br i1 %.not234, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.thread513
  %i.yl = load ptr, ptr %7, align 8, !tbaa !41
  %i.ym = load i32, ptr %i.iu, align 8, !tbaa !43
  %i.yn = zext i32 %i.ym to i64
  %i.yo = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.yl, i64 %i.yn) #12 ; 2 uses
  %i.yp = extractvalue { i32, i64 } %i.yo, 0
  %i.yq = extractvalue { i32, i64 } %i.yo, 1
  br label %bb.dj

bb.di:                                            ; preds = %.thread513
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %.sroa.5.12.extract.shift = lshr i64 %i.ds, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %i.yr = sub i32 %.sroa.5.12.extract.trunc, %.0210.lcssa
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ds to i32 ; 2 uses
  %i.ys = add i32 %.0210.lcssa, %.sroa.2.8.extract.trunc.i.i
  %i.yt = and i32 %i.ys, 1073741823
  %i.yu = and i32 %.sroa.2.8.extract.trunc.i.i, -1073741824
  %i.yv = or disjoint i32 %i.yt, %i.yu
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.yv to i64
  %.sroa.2.12.insert.ext.i.i = zext i32 %i.yr to i64
  %.sroa.2.12.insert.shift.i.i = shl nuw i64 %.sroa.2.12.insert.ext.i.i, 32
  %.sroa.2.12.insert.insert.i.i = or disjoint i64 %.sroa.2.12.insert.shift.i.i, %.sroa.2.8.insert.ext.i.i
  store ptr %12, ptr %11, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.2.12.insert.insert.i.i, ptr %i.yw, align 8
  %i.yx = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.yy = load ptr, ptr %7, align 8, !tbaa !41
  %i.yz = load i32, ptr %i.iu, align 8, !tbaa !43
  %i.za = zext i32 %i.yz to i64
  %i.zb = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.yy, i64 %i.za) #12 ; 2 uses
  %i.zc = extractvalue { i32, i64 } %i.zb, 0
  %i.zd = extractvalue { i32, i64 } %i.zb, 1
  br label %bb.dj

bb.dj:                                            ; preds = %.thread490, %.thread511, %bb.di, %bb.dh
  %.sroa.0464.27 = phi i32 [ %.sroa.0464.20.ph, %.thread490 ], [ %i.zc, %bb.di ], [ %i.yp, %bb.dh ], [ %.sroa.0464.25.ph, %.thread511 ]
  %.sroa.36.0 = phi i64 [ undef, %.thread490 ], [ %i.zd, %bb.di ], [ %i.yq, %bb.dh ], [ undef, %.thread511 ]
  %i.ze = load ptr, ptr %7, align 8, !tbaa !41    ; 2 uses
  %i.zf = icmp eq ptr %i.ze, %i.it
  br i1 %i.zf, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @free(ptr noundef %i.ze) #12
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %bb.dj, %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.dl

bb.dl:                                            ; preds = %.critedge240.thread, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit
  %.sroa.0464.28 = phi i32 [ %.sroa.0464.27, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ %.sroa.0464.4.ph, %.critedge240.thread ]
  %.sroa.36.1 = phi i64 [ %.sroa.36.0, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ undef, %.critedge240.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.b, %bb.j, %bb.l, %bb.m, %bb.dl, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.0464.33 = phi i32 [ %i.aa, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.b ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.j ], [ 0, %bb.m ], [ %.sroa.0464.28, %bb.dl ]
  %.sroa.36.6 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.b ], [ undef, %bb.h ], [ undef, %bb.l ], [ undef, %bb.j ], [ undef, %bb.m ], [ %.sroa.36.1, %bb.dl ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0464.33, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.36.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm26regExpPrototypeSymbolSplitEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::CallResult.164", align 8 ; 7 uses
  %6 = alloca %"class.hermes::vm::CallResult.164", align 8 ; 12 uses
  %7 = alloca %"class.llvh::SmallVector", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %1, ptr %3, align 8, !tbaa !39
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !27
  store ptr %i.c, ptr %i.a, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !41
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !42
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !43
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !44
  store ptr %3, ptr %i.b, align 8, !tbaa !27
  %i.l = load ptr, ptr %2, align 8, !tbaa !17, !noalias !382 ; 2 uses
  %.sroa.087.0.copyload = load i64, ptr %i.l, align 8, !tbaa !16 ; 2 uses
  %i.m = icmp ugt i64 %.sroa.087.0.copyload, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, !prof !383

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %bb.a
  %i.n = and i64 %.sroa.087.0.copyload, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, -436207616
  %i.r = icmp ult i32 %i.q, 855638016
  br i1 %i.r, label %bb.b, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, !prof !82

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 58, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !22
  store ptr @.str.13, ptr %4, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !24
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.thread

bb.b:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !11
  %.not252 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.02.0.i = select i1 %.not252, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %.not253 = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %.not253, label %.thread, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, -844424930131968          ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !36
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ac) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ak, %bb.e ] ; 8 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !17, !noalias !384 ; 3 uses
  %i.am = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 331, ptr %i.al, i32 0, ptr noundef null) #12 ; 2 uses
  %i.an = extractvalue { i32, i64 } %i.am, 0
  %i.ao = extractvalue { i32, i64 } %i.am, 1      ; 2 uses
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %.thread, label %bb.f, !prof !15

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !36 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.g, label %bb.h, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !36
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.h:                                             ; preds = %bb.f
  %i.ax = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.aq, i64 %i.ao) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i148 = phi ptr [ %i.as, %bb.g ], [ %i.ax, %bb.h ]
  %i.ay = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i148) #12 ; 2 uses
  %.not254 = icmp eq ptr %i.ay, inttoptr (i64 -1 to ptr)
  br i1 %.not254, label %.thread, label %bb.i, !prof !15

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = or i64 %i.az, -844424930131968          ; 2 uses
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !27  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 192 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !37
  %i.bg = icmp ult ptr %i.bd, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.k, !prof !38

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !36
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit150

bb.k:                                             ; preds = %bb.i
  %i.bi = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bb, i64 %i.ba) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit150

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit150: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i149 = phi ptr [ %i.bd, %bb.j ], [ %i.bi, %bb.k ]
  %i.bj = call fastcc ptr @_ZN6hermes2vmL25regExpConstructorFastCopyERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEENS3_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.al, ptr %.0.i.i.i.i.i.i149) ; 4 uses
  %.not255 = icmp eq ptr %i.bj, inttoptr (i64 -1 to ptr)
  br i1 %.not255, label %.thread, label %bb.l, !prof !15

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit150
  %.sroa.0.0.copyload.i.i151 = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bk = and i64 %.sroa.0.0.copyload.i.i151, 281474976710655
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36 ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.bm, align 4, !tbaa !23 ; 2 uses
  %i.bn = and i8 %.sroa.0.0.copyload.i, -33
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm18advanceStringIndexEPKNS0_15StringPrimitiveEmb:bb.a
; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm10regExpExecERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS3_INS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %1, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 327, ptr %1, i32 0, ptr noundef null) #12 ; 2 uses
  %i.b = extractvalue { i32, i64 } %i.a, 0
  %i.c = extractvalue { i32, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i32 %i.b, 0
  br i1 %i.d, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %bb.c, label %bb.d, !prof !38

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.l, ptr %i.g, align 8, !tbaa !36
  store i64 %i.c, ptr %i.h, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.f, i64 %i.c) #12 ; 2 uses
  %.sroa.0.0.copyload.i.i11.pr = load i64, ptr %i.m, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i11 = phi i64 [ %i.c, %bb.c ], [ %.sroa.0.0.copyload.i.i11.pr, %bb.d ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %i.m, %bb.d ]
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i.i11, -844424930131969
  br i1 %i.n, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.o = and i64 %.sroa.0.0.copyload.i.i11, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load i32, ptr %i.p, align 4
  %i.r = add i32 %i.q, -1140850688
  %i.s = icmp ult i32 %i.r, 150994944
  %spec.select.i = select i1 %i.s, ptr %.0.i.i.i.i.i.i, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.t = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !14 ; 2 uses
  %i.u = icmp ugt i64 %i.t, -844424930131969
  %i.v = and i64 %i.t, 281474976710655
  %i.w = icmp ne i64 %i.v, 0
  %i.x = and i1 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %.critedge

bb.e:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !16
  %i.y = tail call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false) #12 ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0        ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = extractvalue { i32, i64 } %i.y, 1       ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, -281474976710657
  %.mask.i = and i64 %i.ab, -140737488355328
  %i.ad = icmp eq i64 %.mask.i, -1548112371908608
  %or.cond = or i1 %i.ac, %i.ad
  br i1 %or.cond, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.ae, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 46, ptr %i.af, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ag, align 8, !tbaa !22
  store ptr @.str, ptr %3, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ah, align 8, !tbaa !24
  %i.ai = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit

.critedge:                                        ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %.sroa.0.0.copyload.i.i13 = load i64, ptr %1, align 8, !tbaa !16 ; 2 uses
  %i.aj = icmp ugt i64 %.sroa.0.0.copyload.i.i13, -844424930131969
  br i1 %i.aj, label %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i: ; preds = %.critedge
  %i.ak = and i64 %.sroa.0.0.copyload.i.i13, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load i32, ptr %i.al, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.am, -16777216
  %i.an = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 1040187392
  %spec.select.i15 = select i1 %i.an, ptr %1, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %.critedge, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i14 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %.critedge ], [ %spec.select.i15, %_ZN6hermes2vm5vmisaINS0_8JSRegExpEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.ao = load i64, ptr %.sroa.0.0.i14, align 8, !tbaa !14 ; 2 uses
  %i.ap = icmp ugt i64 %i.ao, -844424930131969
  %i.aq = and i64 %i.ao, 281474976710655
  %i.ar = icmp ne i64 %i.aq, 0
  %i.as = and i1 %i.ap, %i.ar
  br i1 %i.as, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit17, !prof !38

_ZN6hermes2vm11TwineChar16C2EPKc.exit17:          ; preds = %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.at, align 8, !tbaa !20
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 55, ptr %i.au, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.av, align 8, !tbaa !22
  store ptr @.str.1, ptr %4, align 8, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.aw, align 8, !tbaa !24
  %i.ax = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit

bb.g:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSRegExpEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.ay = tail call ptr @_ZN6hermes2vm16directRegExpExecENS0_6HandleINS0_8JSRegExpEEERNS0_7RuntimeENS1_INS0_15StringPrimitiveEEE(ptr nonnull %.sroa.0.0.i14, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %2) ; 2 uses
  %.not.i = icmp eq ptr %i.ay, inttoptr (i64 -1 to ptr)
  br i1 %.not.i, label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit, label %bb.h, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !14 ; 3 uses
  %i.ba = icmp ugt i64 %i.az, -844424930131969
  %i.bb = and i64 %i.az, 281474976710655
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = and i1 %i.ba, %i.bc
  %spec.select.i18 = select i1 %i.bd, i64 %i.az, i64 -1548112371908608
  br label %_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit

_ZN6hermes2vmL17regExpBuiltinExecERNS0_7RuntimeENS0_6HandleINS0_8JSRegExpEEENS3_INS0_15StringPrimitiveEEE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit17, %bb.a
  %.sroa.034.3 = phi i32 [ 0, %bb.a ], [ %i.z, %bb.f ], [ %i.ai, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.e ], [ %i.ax, %_ZN6hermes2vm11TwineChar16C2EPKc.exit17 ], [ 0, %bb.g ], [ 1, %bb.h ]
  %.sroa.7.4 = phi i64 [ undef, %bb.a ], [ %i.ab, %bb.f ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.e ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit17 ], [ undef, %bb.g ], [ %spec.select.i18, %bb.h ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.034.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.4, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSRegExp13escapePatternENS0_6HandleINS0_15StringPrimitiveEEERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSRegExp10getPatternEPS1_RNS0_11PointerBaseE(ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %1, ptr %2, i32 noundef %3, ptr nofree readonly captures(none) %4, ptr %5, i64 %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string.248", align 8 ; 6 uses
  %8 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %9 = alloca %"class.hermes::vm::SmallXString", align 8 ; 30 uses
  %10 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %11 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %12 = alloca %"class.llvh::SmallVector.188", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  %i.a = inttoptr i64 %6 to ptr
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !16
  %i.b = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !75
  %i.f = and i32 %i.e, 2147483647
  %.sroa.0.0.copyload.i.i145 = load i64, ptr %2, align 8, !tbaa !16
  %i.g = and i64 %.sroa.0.0.copyload.i.i145, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !75
  %i.k = and i32 %i.j, 2147483647
  %i.l = add i32 %i.f, %3                         ; 3 uses
  %i.m = load i64, ptr %4, align 8, !tbaa !14     ; 2 uses
  %i.n = icmp ugt i64 %i.m, -844424930131969
  %i.o = and i64 %i.m, 281474976710655            ; 2 uses
  %i.p = icmp ne i64 %i.o, 0
  %i.q = and i1 %i.n, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = inttoptr i64 %i.o to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = zext i32 %i.t to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.v = phi i64 [ %i.u, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.w = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.a) #12 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 17 uses
  %i.y = extractvalue { ptr, i64 } %i.w, 1        ; 5 uses
  %i.z = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %2) #12 ; 5 uses
  %14 = extractvalue { ptr, i64 } %i.z, 0         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.aa = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %1) #12 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  store ptr %i.ab, ptr %8, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = extractvalue { ptr, i64 } %i.aa, 1
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  store ptr %i.ae, ptr %9, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 29 uses
  store i32 0, ptr %i.af, align 8, !tbaa !43
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 7 uses
  store i32 32, ptr %i.ag, align 4, !tbaa !42
  %.sroa.12.12.extract.shift = lshr i64 %i.y, 32  ; 11 uses
  %.not140541.not = icmp eq i64 %.sroa.12.12.extract.shift, 0
  br i1 %.not140541.not, label %.critedge.thread, label %.lr.ph549

.lr.ph549:                                        ; preds = %bb.c
  %i.ah = extractvalue { ptr, i64 } %i.z, 1       ; 3 uses
  %.sroa.12.8.extract.trunc = trunc i64 %i.y to i32 ; 3 uses
  %i.ai = icmp slt i32 %.sroa.12.8.extract.trunc, 0 ; 4 uses
  %.not.i3.i = icmp samesign ult i32 %.sroa.12.8.extract.trunc, 1073741824 ; 4 uses
  %i.aj = and i64 %i.y, 1073741823                ; 12 uses
  %i.ak = and i32 %.sroa.12.8.extract.trunc, 1073741824
  %.not.i.i = icmp eq i32 %i.ak, 0                ; 4 uses
  %i.al = icmp ult i32 %i.l, %i.k
  %.sroa.8.12.extract.shift = lshr i64 %i.ah, 32
  %.sroa.8.12.extract.trunc = trunc nuw i64 %.sroa.8.12.extract.shift to i32 ; 4 uses
  %i.am = sub i32 %.sroa.8.12.extract.trunc, %i.l
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ah to i32 ; 5 uses
  %i.an = add i32 %i.l, %.sroa.2.8.extract.trunc.i.i
  %i.ao = and i32 %i.an, 1073741823
  %i.ap = and i32 %.sroa.2.8.extract.trunc.i.i, -1073741824 ; 4 uses
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.aq to i64
  %.sroa.2.12.insert.ext.i.i = zext i32 %i.am to i64
  %.sroa.2.12.insert.shift.i.i = shl nuw i64 %.sroa.2.12.insert.ext.i.i, 32
  %.sroa.2.12.insert.insert.i.i = or disjoint i64 %.sroa.2.12.insert.shift.i.i, %.sroa.2.8.insert.ext.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.sroa.2.8.insert.ext.i = and i64 %i.ah, 4294967295
  %.sroa.2.12.insert.ext.i = zext i32 %3 to i64
  %.sroa.2.12.insert.shift.i = shl nuw i64 %.sroa.2.12.insert.ext.i, 32
  %.sroa.2.12.insert.insert.i = or disjoint i64 %.sroa.2.8.insert.ext.i, %.sroa.2.12.insert.shift.i
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.aj
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aj
  %i.av = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.ay = and i64 %i.y, 3221225472
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bc = ptrtoint ptr %0 to i64                  ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph549, %bb.fz
  %.0548 = phi i64 [ 0, %.lr.ph549 ], [ %.9, %bb.fz ] ; 15 uses
  br i1 %i.ai, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 8, !tbaa !16
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr               ; 5 uses
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, 150994943
  br i1 %i.bg, label %bb.g, label %bb.h, !prof !15

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.h:                                             ; preds = %bb.f
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.bf, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.k [
    i32 134217728, label %bb.i
    i32 67108864, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.j:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

bb.k:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.bl, align 8, !tbaa !16
  %i.bm = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %bb.e
  %.0.i.sink.i.i = phi ptr [ %i.x, %bb.e ], [ %i.bi, %bb.g ], [ %i.bj, %bb.i ], [ %i.bk, %bb.j ], [ %i.bp, %bb.k ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.aj
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.0548
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = sext i8 %i.bs to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit

bb.l:                                             ; preds = %bb.d
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i.i.i.i4.i = load i64, ptr %i.x, align 8, !tbaa !16
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i4.i, 281474976710655
  %i.bv = inttoptr i64 %i.bu to ptr               ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 4            ; 2 uses
  %i.bx = icmp ugt i32 %i.bw, 150994943
  br i1 %i.bx, label %bb.n, label %bb.o, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.o:                                             ; preds = %bb.m
  %.mask.i.i.i.i.i.i.i.i.i5.i = and i32 %i.bw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i, label %bb.r [
    i32 117440512, label %bb.p
    i32 50331648, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.q:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.r:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.cd = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i, 281474976710655
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.l
  %.0.i.sink.i6.i = phi ptr [ %i.x, %bb.l ], [ %i.bz, %bb.n ], [ %i.ca, %bb.p ], [ %i.cb, %bb.q ], [ %i.cg, %bb.r ]
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i, i64 %i.aj
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %.0548
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !64
  br label %_ZNK6hermes2vm10StringViewixEj.exit

_ZNK6hermes2vm10StringViewixEj.exit:              ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  %.0.i = phi i16 [ %i.bt, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i ], [ %i.cj, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i ] ; 2 uses
  %.not = icmp eq i16 %.0.i, 36
  br i1 %.not, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6hermes2vm10StringViewixEj.exit
  %i.ck = add nuw nsw i64 %.0548, 1               ; 3 uses
  %i.cl = icmp eq i64 %i.ck, %.sroa.12.12.extract.shift
  br i1 %i.cl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %_ZNK6hermes2vm10StringViewixEj.exit
  %i.cm = load i32, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.cn = load i32, ptr %i.ag, align 4, !tbaa !42
  %.not.i.i147 = icmp ult i32 %i.cm, %i.cn
  br i1 %.not.i.i147, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit, label %bb.u, !prof !38

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef 0, i64 noundef 2) #12
  %.pre.i.i = load i32, ptr %i.af, align 8, !tbaa !43
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit: ; preds = %bb.t, %bb.u
  %i.co = phi i32 [ %.pre.i.i, %bb.u ], [ %i.cm, %bb.t ]
  %i.cp = load ptr, ptr %9, align 8, !tbaa !41
  %i.cq = zext i32 %i.co to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cq
  store i16 %.0.i, ptr %i.cr, align 1
  %i.cs = load i32, ptr %i.af, align 8, !tbaa !43
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr %i.af, align 8, !tbaa !43
  %i.cu = add nuw nsw i64 %.0548, 1
  br label %bb.fz, !llvm.loop !414

bb.v:                                             ; preds = %bb.s
  br i1 %i.ai, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.0.0.copyload.i.i.i.i.i156 = load i64, ptr %i.x, align 8, !tbaa !16
  %i.cv = and i64 %.sroa.0.0.copyload.i.i.i.i.i156, 281474976710655
  %i.cw = inttoptr i64 %i.cv to ptr               ; 5 uses
  %i.cx = load i32, ptr %i.cw, align 4            ; 2 uses
  %i.cy = icmp ugt i32 %i.cx, 150994943
  br i1 %i.cy, label %bb.y, label %bb.z, !prof !15

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

bb.z:                                             ; preds = %bb.x
  %.mask.i.i.i.i.i.i.i.i.i.i157 = and i32 %i.cx, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i157, label %bb.ac [
    i32 134217728, label %bb.aa
    i32 67108864, label %bb.ab
  ]

bb.aa:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

bb.ab:                                            ; preds = %bb.z
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

bb.ac:                                            ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i160 = load i64, ptr %i.dd, align 8, !tbaa !16
  %i.de = and i64 %.sroa.0.0.copyload.i.i.i2.i.i160, 281474976710655
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.w
  %.0.i.sink.i.i159 = phi ptr [ %i.x, %bb.w ], [ %i.da, %bb.y ], [ %i.db, %bb.aa ], [ %i.dc, %bb.ab ], [ %i.dh, %bb.ac ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i159, i64 %i.aj
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ck
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !23
  %i.dl = sext i8 %i.dk to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit161

bb.ad:                                            ; preds = %bb.v
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.0.0.copyload.i.i.i.i4.i149 = load i64, ptr %i.x, align 8, !tbaa !16
  %i.dm = and i64 %.sroa.0.0.copyload.i.i.i.i4.i149, 281474976710655
  %i.dn = inttoptr i64 %i.dm to ptr               ; 5 uses
  %i.do = load i32, ptr %i.dn, align 4            ; 2 uses
  %i.dp = icmp ugt i32 %i.do, 150994943
  br i1 %i.dp, label %bb.af, label %bb.ag, !prof !15

bb.af:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.ag:                                            ; preds = %bb.ae
  %.mask.i.i.i.i.i.i.i.i.i5.i150 = and i32 %i.do, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i150, label %bb.aj [
    i32 117440512, label %bb.ah
    i32 50331648, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.ai:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

bb.aj:                                            ; preds = %bb.ag
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i154 = load i64, ptr %i.du, align 8, !tbaa !16
  %i.dv = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i154, 281474976710655
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.0.i.sink.i6.i152 = phi ptr [ %i.x, %bb.ad ], [ %i.dr, %bb.af ], [ %i.ds, %bb.ah ], [ %i.dt, %bb.ai ], [ %i.dy, %bb.aj ]
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i152, i64 %i.aj
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %i.ck
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !64
  br label %_ZNK6hermes2vm10StringViewixEj.exit161

_ZNK6hermes2vm10StringViewixEj.exit161:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151
  %.0.i153 = phi i16 [ %i.dl, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i158 ], [ %i.eb, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i151 ] ; 9 uses
  %i.ec = zext nneg i16 %.0.i153 to i32
  switch i16 %.0.i153, label %bb.ar [
    i16 36, label %bb.ak
    i16 38, label %bb.am
    i16 96, label %bb.an
    i16 39, label %bb.ao
  ]

bb.ak:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.ed = load i32, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.ee = load i32, ptr %i.ag, align 4, !tbaa !42
  %.not.i.i162 = icmp ult i32 %i.ed, %i.ee
  br i1 %.not.i.i162, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164, label %bb.al, !prof !38

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef 0, i64 noundef 2) #12
  %.pre.i.i163 = load i32, ptr %i.af, align 8, !tbaa !43
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164: ; preds = %bb.ak, %bb.al
  %i.ef = phi i32 [ %.pre.i.i163, %bb.al ], [ %i.ed, %bb.ak ]
  %i.eg = load ptr, ptr %9, align 8, !tbaa !41
  %i.eh = zext i32 %i.ef to i64
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.eh
  store i16 36, ptr %i.ei, align 1
  %i.ej = load i32, ptr %i.af, align 8, !tbaa !43
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.af, align 8, !tbaa !43
  %i.el = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.em = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  %i.en = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.an:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  store ptr %14, ptr %10, align 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %i.as, align 8
  %i.eo = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %i.ep = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.ao:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  br i1 %i.al, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  store ptr %14, ptr %11, align 8
  store i64 %.sroa.2.12.insert.insert.i.i, ptr %i.ar, align 8
  %i.eq = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.er = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.ar:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit161
  %i.es = add i16 %.0.i153, -48
  %or.cond = icmp ult i16 %i.es, 10
  br i1 %or.cond, label %bb.as, label %bb.fb

bb.as:                                            ; preds = %bb.ar
  %i.et = add nsw i32 %i.ec, -48                  ; 5 uses
  %i.eu = add nuw nsw i64 %.0548, 2               ; 7 uses
  %i.ev = icmp ult i64 %i.eu, %.sroa.12.12.extract.shift
  br i1 %i.ev, label %bb.at, label %bb.du

bb.at:                                            ; preds = %bb.as
  br i1 %i.ai, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.sroa.0.0.copyload.i.i.i.i.i174 = load i64, ptr %i.x, align 8, !tbaa !16
  %i.ew = and i64 %.sroa.0.0.copyload.i.i.i.i.i174, 281474976710655
  %i.ex = inttoptr i64 %i.ew to ptr               ; 5 uses
  %i.ey = load i32, ptr %i.ex, align 4            ; 2 uses
  %i.ez = icmp ugt i32 %i.ey, 150994943
  br i1 %i.ez, label %bb.aw, label %bb.ax, !prof !15

bb.aw:                                            ; preds = %bb.av
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

bb.ax:                                            ; preds = %bb.av
  %.mask.i.i.i.i.i.i.i.i.i.i175 = and i32 %i.ey, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i175, label %bb.ba [
    i32 134217728, label %bb.ay
    i32 67108864, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

bb.az:                                            ; preds = %bb.ax
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

bb.ba:                                            ; preds = %bb.ax
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i178 = load i64, ptr %i.fe, align 8, !tbaa !16
  %i.ff = and i64 %.sroa.0.0.copyload.i.i.i2.i.i178, 281474976710655
  %i.fg = inttoptr i64 %i.ff to ptr
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176: ; preds = %bb.ba, %bb.az, %bb.ay, %bb.aw, %bb.au
  %.0.i.sink.i.i177 = phi ptr [ %i.x, %bb.au ], [ %i.fb, %bb.aw ], [ %i.fc, %bb.ay ], [ %i.fd, %bb.az ], [ %i.fi, %bb.ba ]
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i177, i64 %i.aj
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.eu
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !23
  %i.fm = sext i8 %i.fl to i16
  br label %_ZNK6hermes2vm10StringViewixEj.exit179

bb.bb:                                            ; preds = %bb.at
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0.0.copyload.i.i.i.i4.i167 = load i64, ptr %i.x, align 8, !tbaa !16
  %i.fn = and i64 %.sroa.0.0.copyload.i.i.i.i4.i167, 281474976710655
  %i.fo = inttoptr i64 %i.fn to ptr               ; 5 uses
  %i.fp = load i32, ptr %i.fo, align 4            ; 2 uses
  %i.fq = icmp ugt i32 %i.fp, 150994943
  br i1 %i.fq, label %bb.bd, label %bb.be, !prof !15

bb.bd:                                            ; preds = %bb.bc
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

bb.be:                                            ; preds = %bb.bc
  %.mask.i.i.i.i.i.i.i.i.i5.i168 = and i32 %i.fp, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i168, label %bb.bh [
    i32 117440512, label %bb.bf
    i32 50331648, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

bb.bg:                                            ; preds = %bb.be
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

bb.bh:                                            ; preds = %bb.be
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %.sroa.0.0.copyload.i.i.i2.i7.i172 = load i64, ptr %i.fv, align 8, !tbaa !16
  %i.fw = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i172, 281474976710655
  %i.fx = inttoptr i64 %i.fw to ptr
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bd, %bb.bb
  %.0.i.sink.i6.i170 = phi ptr [ %i.x, %bb.bb ], [ %i.fs, %bb.bd ], [ %i.ft, %bb.bf ], [ %i.fu, %bb.bg ], [ %i.fz, %bb.bh ]
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i170, i64 %i.aj
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.eu
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !64
  br label %_ZNK6hermes2vm10StringViewixEj.exit179

_ZNK6hermes2vm10StringViewixEj.exit179:           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169
  %.0.i171 = phi i16 [ %i.fm, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i176 ], [ %i.gc, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i169 ] ; 2 uses
  %i.gd = mul nuw nsw i32 %i.et, 10
  %i.ge = zext i16 %.0.i171 to i32
  %i.gf = add nsw i32 %i.gd, -48
  %i.gg = add nsw i32 %i.gf, %i.ge                ; 3 uses
  %i.gh = add i16 %.0.i171, -58
  %or.cond8 = icmp ult i16 %i.gh, -10
  %i.gi = icmp eq i32 %i.gg, 0
  %or.cond10.not524 = select i1 %or.cond8, i1 true, i1 %i.gi
  %i.gj = zext nneg i32 %i.gg to i64
  %.not137 = icmp samesign ult i64 %i.v, %i.gj
  %or.cond141 = select i1 %or.cond10.not524, i1 true, i1 %.not137
  br i1 %or.cond141, label %bb.cn, label %bb.bi

bb.bi:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit179
  %i.gk = add nsw i32 %i.gg, -1
  %i.gl = zext i32 %i.gk to i64
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %4, align 8, !tbaa !16
  %i.gm = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gl
  %.sroa.0.0.copyload.i.i180 = load i32, ptr %i.gp, align 4, !tbaa !6 ; 2 uses
  %i.gq = icmp eq i32 %.sroa.0.0.copyload.i.i180, 14
  br i1 %i.gq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %.sroa.0.0.copyload.i.i4.i = load i64, ptr %2, align 8, !tbaa !16
  %i.gr = and i64 %.sroa.0.0.copyload.i.i4.i, 281474976710655
  %i.gs = inttoptr i64 %i.gr to ptr
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_:bb.a

bb.cu:                                            ; preds = %bb.ct
  %.sroa.0.0.copyload.i.i.i.i.i234 = load i64, ptr %i.ll, align 8, !tbaa !16
  %i.lt = and i64 %.sroa.0.0.copyload.i.i.i.i.i234, 281474976710655
  %i.lu = inttoptr i64 %i.lt to ptr               ; 5 uses
  %i.lv = load i32, ptr %i.lu, align 4            ; 2 uses
  %i.lw = icmp ugt i32 %i.lv, 150994943
  br i1 %i.lw, label %bb.cv, label %bb.cw, !prof !15

bb.cv:                                            ; preds = %bb.cu
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !57
  br label %bb.dh

bb.cw:                                            ; preds = %bb.cu
  %.mask.i.i.i.i.i.i.i.i.i.i235 = and i32 %i.lv, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i235, label %bb.cz [
    i32 134217728, label %bb.cx
    i32 67108864, label %bb.cy
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  br label %bb.dh

bb.cy:                                            ; preds = %bb.cw
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  br label %bb.dh

bb.cz:                                            ; preds = %bb.cw
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i238 = load i64, ptr %i.mb, align 8, !tbaa !16
  %i.mc = and i64 %.sroa.0.0.copyload.i.i.i2.i.i238, 281474976710655
  %i.md = inttoptr i64 %i.mc to ptr
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !57
  br label %bb.dh

bb.da:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit222"
  %.not.i1.i223 = icmp samesign ult i32 %.sroa.7399.8.extract.trunc, 1073741824
  br i1 %.not.i1.i223, label %bb.dn, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.sroa.0.0.copyload.i.i.i.i2.i224 = load i64, ptr %i.ll, align 8, !tbaa !16
  %i.mg = and i64 %.sroa.0.0.copyload.i.i.i.i2.i224, 281474976710655
  %i.mh = inttoptr i64 %i.mg to ptr               ; 8 uses
  %i.mi = load i32, ptr %i.mh, align 4            ; 3 uses
  %i.mj = icmp ugt i32 %i.mi, 150994943
  br i1 %i.mj, label %bb.do, label %bb.dc, !prof !15

bb.dc:                                            ; preds = %bb.db
  %.mask.i.i.i.i.i.i.i.i.i3.i225 = and i32 %i.mi, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i225, label %bb.df [
    i32 117440512, label %bb.dd
    i32 50331648, label %bb.de
  ]

bb.dd:                                            ; preds = %bb.dc
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  br label %bb.dp

bb.de:                                            ; preds = %bb.dc
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  br label %bb.dp

bb.df:                                            ; preds = %bb.dc
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i232 = load i64, ptr %i.mm, align 8, !tbaa !16
  %i.mn = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i232, 281474976710655
  %i.mo = inttoptr i64 %i.mn to ptr
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !61
  br label %bb.dp

bb.dg:                                            ; preds = %bb.ct
  %i.mr = and i64 %i.lm, 1073741823               ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.mr
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253

bb.dh:                                            ; preds = %bb.cv, %bb.cx, %bb.cy, %bb.cz
  %.0.i.sink.i.i237.ph = phi ptr [ %i.mf, %bb.cz ], [ %i.ma, %bb.cy ], [ %i.lz, %bb.cx ], [ %i.ly, %bb.cv ]
  %i.mt = and i64 %i.lm, 1073741823               ; 5 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i237.ph, i64 %i.mt ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i251 = load i64, ptr %i.ll, align 8, !tbaa !16
  %i.mv = and i64 %.sroa.0.0.copyload.i.i.i.i.i251, 281474976710655
  %i.mw = inttoptr i64 %i.mv to ptr               ; 5 uses
  %i.mx = load i32, ptr %i.mw, align 4            ; 2 uses
  %i.my = icmp ugt i32 %i.mx, 150994943
  br i1 %i.my, label %bb.di, label %bb.dj, !prof !15

bb.di:                                            ; preds = %bb.dh
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253

bb.dj:                                            ; preds = %bb.dh
  %.mask.i.i.i.i.i.i.i.i.i.i252 = and i32 %i.mx, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i252, label %bb.dm [
    i32 134217728, label %bb.dk
    i32 67108864, label %bb.dl
  ]

bb.dk:                                            ; preds = %bb.dj
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mw, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253

bb.dl:                                            ; preds = %bb.dj
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253

bb.dm:                                            ; preds = %bb.dj
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i255 = load i64, ptr %i.nd, align 8, !tbaa !16
  %i.ne = and i64 %.sroa.0.0.copyload.i.i.i2.i.i255, 281474976710655
  %i.nf = inttoptr i64 %i.ne to ptr
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253: ; preds = %bb.dg, %bb.dm, %bb.dl, %bb.dk, %bb.di
  %i.ni = phi ptr [ %i.ms, %bb.dg ], [ %i.mu, %bb.di ], [ %i.mu, %bb.dk ], [ %i.mu, %bb.dl ], [ %i.mu, %bb.dm ]
  %i.nj = phi i64 [ %i.mr, %bb.dg ], [ %i.mt, %bb.di ], [ %i.mt, %bb.dk ], [ %i.mt, %bb.dl ], [ %i.mt, %bb.dm ]
  %.0.i.sink.i.i254 = phi ptr [ %i.ll, %bb.dg ], [ %i.na, %bb.di ], [ %i.nb, %bb.dk ], [ %i.nc, %bb.dl ], [ %i.nh, %bb.dm ]
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i254, i64 %i.nj
  %.sroa.7399.12.extract.shift403 = lshr i64 %i.lm, 32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.sroa.7399.12.extract.shift403
  br label %_ZNK6hermes2vm10StringView3endEv.exit256

bb.dn:                                            ; preds = %bb.da
  %i.nm = and i64 %i.lm, 1073741823               ; 2 uses
  %i.nn = getelementptr inbounds nuw [2 x i8], ptr %i.ll, i64 %i.nm
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243

bb.do:                                            ; preds = %bb.db
  %i.no = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !61 ; 2 uses
  %i.nq = and i64 %i.lm, 1073741823               ; 2 uses
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.nq
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243

bb.dp:                                            ; preds = %bb.df, %bb.de, %bb.dd
  %.0.i.sink.i4.i227.ph.ph = phi ptr [ %i.mk, %bb.dd ], [ %i.ml, %bb.de ], [ %i.mq, %bb.df ]
  %i.ns = and i64 %i.lm, 1073741823               ; 4 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i227.ph.ph, i64 %i.ns ; 3 uses
  %.mask.i.i.i.i.i.i.i.i.i3.i242 = and i32 %i.mi, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i242, label %bb.ds [
    i32 117440512, label %bb.dq
    i32 50331648, label %bb.dr
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.nu = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243

bb.dr:                                            ; preds = %bb.dp
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243

bb.ds:                                            ; preds = %bb.dp
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i249 = load i64, ptr %i.nw, align 8, !tbaa !16
  %i.nx = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i249, 281474976710655
  %i.ny = inttoptr i64 %i.nx to ptr
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243: ; preds = %bb.dn, %bb.ds, %bb.dr, %bb.dq, %bb.do
  %.pre-phi579 = phi i64 [ %i.nm, %bb.dn ], [ %i.ns, %bb.ds ], [ %i.ns, %bb.dr ], [ %i.ns, %bb.dq ], [ %i.nq, %bb.do ]
  %i.ob = phi ptr [ %i.nn, %bb.dn ], [ %i.nt, %bb.ds ], [ %i.nt, %bb.dr ], [ %i.nt, %bb.dq ], [ %i.nr, %bb.do ]
  %.0.i.sink.i4.i244 = phi ptr [ %i.ll, %bb.dn ], [ %i.oa, %bb.ds ], [ %i.nv, %bb.dr ], [ %i.nu, %bb.dq ], [ %i.np, %bb.do ]
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i244, i64 %.pre-phi579
  %.sroa.7399.12.extract.shift = lshr i64 %i.lm, 32
  %i.od = getelementptr inbounds nuw [2 x i8], ptr %i.oc, i64 %.sroa.7399.12.extract.shift
  br label %_ZNK6hermes2vm10StringView3endEv.exit256

_ZNK6hermes2vm10StringView3endEv.exit256:         ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243
  %.sroa.0.0.i229482 = phi ptr [ %i.ni, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243 ]
  %.sroa.3.0.i228480 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253 ], [ %i.ob, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243 ]
  %.sroa.3.0.i245 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253 ], [ %i.od, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243 ]
  %.sroa.0.0.i246 = phi ptr [ %i.nl, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i253 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i243 ]
  %i.oe = call noundef ptr @_ZN4llvh15SmallVectorImplIDsE6insertIN6hermes2vm10StringView14const_iteratorEvEEPDsS7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.lq, ptr %.sroa.0.0.i229482, ptr %.sroa.3.0.i228480, ptr %.sroa.0.0.i246, ptr %.sroa.3.0.i245) ; 0 uses
  br label %bb.fz

bb.dt:                                            ; preds = %bb.cn
  %i.of = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.og = zext i32 %i.of to i64
  %i.oh = load i32, ptr %i.af, align 8, !tbaa !43
  %i.oi = zext i32 %i.oh to i64                   ; 3 uses
  %i.oj = sub nsw i64 %i.og, %i.oi
  %i.ok = icmp ult i64 %i.oj, 2
  br i1 %i.ok, label %.thread.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit

.thread.i:                                        ; preds = %bb.dt
  %i.ol = add nuw nsw i64 %i.oi, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.ol, i64 noundef 2) #12
  %.pre7.pre.i.i = load i32, ptr %i.af, align 8, !tbaa !43
  %.pre578 = zext i32 %.pre7.pre.i.i to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit: ; preds = %bb.dt, %.thread.i
  %.pre-phi = phi i64 [ %i.oi, %bb.dt ], [ %.pre578, %.thread.i ]
  %i.om = load ptr, ptr %9, align 8, !tbaa !41
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.om, i64 %.pre-phi ; 2 uses
  store i16 36, ptr %i.on, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  store i16 %.0.i153, ptr %.sroa.4.0..sroa_idx, align 1
  %.pre.i.i257 = load i32, ptr %i.af, align 8, !tbaa !43
  %i.oo = add i32 %.pre.i.i257, 2
  store i32 %i.oo, ptr %i.af, align 8, !tbaa !43
  br label %bb.fz

bb.du:                                            ; preds = %bb.as
  %.not135 = icmp eq i32 %i.et, 0
  %i.op = zext nneg i32 %i.et to i64
  %.not136 = icmp samesign ult i64 %i.v, %i.op
  %or.cond143 = select i1 %.not135, i1 true, i1 %.not136
  br i1 %or.cond143, label %bb.fa, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.sroa.0.0.copyload.i.i.i258 = load i64, ptr %4, align 8, !tbaa !16
  %i.oq = and i64 %.sroa.0.0.copyload.i.i.i258, 281474976710655
  %i.or = inttoptr i64 %i.oq to ptr
  %i.os = zext nneg i16 %.0.i153 to i64
  %i.ot = getelementptr [4 x i8], ptr %i.or, i64 %i.os
  %i.ou = getelementptr i8, ptr %i.ot, i64 -188
  %.sroa.0.0.copyload.i.i259 = load i32, ptr %i.ou, align 4, !tbaa !6 ; 2 uses
  %i.ov = icmp eq i32 %.sroa.0.0.copyload.i.i259, 14
  br i1 %i.ov, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %.sroa.0.0.copyload.i.i4.i263 = load i64, ptr %2, align 8, !tbaa !16
  %i.ow = and i64 %.sroa.0.0.copyload.i.i4.i263, 281474976710655
  %i.ox = inttoptr i64 %i.ow to ptr
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !75 ; 2 uses
  %i.pa = and i32 %i.oz, 2147483647
  %i.pb = sub i32 %.sroa.8.12.extract.trunc, %i.pa
  %i.pc = add i32 %i.oz, %.sroa.2.8.extract.trunc.i.i
  %i.pd = and i32 %i.pc, 1073741823
  %i.pe = or disjoint i32 %i.pd, %i.ap
  %.sroa.2.8.insert.ext.i.i.i268 = zext i32 %i.pe to i64
  %.sroa.2.12.insert.ext.i.i.i269 = zext i32 %i.pb to i64
  %.sroa.2.12.insert.shift.i.i.i270 = shl nuw i64 %.sroa.2.12.insert.ext.i.i.i269, 32
  %.sroa.2.12.insert.insert.i.i.i271 = or disjoint i64 %.sroa.2.12.insert.shift.i.i.i270, %.sroa.2.8.insert.ext.i.i.i268
  %.fca.1.insert.i.i.i273 = insertvalue { ptr, i64 } %i.z, i64 %.sroa.2.12.insert.insert.i.i.i271, 1
  br label %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit274"

bb.dx:                                            ; preds = %bb.dv
  %i.pf = and i32 %.sroa.0.0.copyload.i.i259, -8
  %i.pg = zext i32 %i.pf to i64
  %i.ph = add i64 %i.pg, %i.bc
  %i.pi = or i64 %i.ph, -844424930131968          ; 2 uses
  %i.pj = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 192 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !36 ; 4 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 200
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !37
  %i.po = icmp ult ptr %i.pl, %i.pn
  br i1 %i.po, label %bb.dy, label %bb.dz, !prof !38

bb.dy:                                            ; preds = %bb.dx
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  store ptr %i.pp, ptr %i.pk, align 8, !tbaa !36
  store i64 %i.pi, ptr %i.pl, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i260

bb.dz:                                            ; preds = %bb.dx
  %i.pq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.pj, i64 %i.pi) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i260

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i260: ; preds = %bb.dz, %bb.dy
  %.0.i.i.i.i.i.i.i261 = phi ptr [ %i.pl, %bb.dy ], [ %i.pq, %bb.dz ]
  %i.pr = call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i.i261) #12
  br label %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit274"

"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit274": ; preds = %bb.dw, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i260
  %.pn.i262 = phi { ptr, i64 } [ %.fca.1.insert.i.i.i273, %bb.dw ], [ %i.pr, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit.i260 ] ; 2 uses
  %i.ps = extractvalue { ptr, i64 } %.pn.i262, 0  ; 7 uses
  %i.pt = extractvalue { ptr, i64 } %.pn.i262, 1  ; 8 uses
  %i.pu = load ptr, ptr %9, align 8, !tbaa !41
  %i.pv = load i32, ptr %i.af, align 8, !tbaa !43
  %i.pw = zext i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [2 x i8], ptr %i.pu, i64 %i.pw
  %.sroa.7.8.extract.trunc = trunc i64 %i.pt to i32 ; 3 uses
  %i.py = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  br i1 %i.py, label %bb.ea, label %bb.eh

bb.ea:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit274"
  %i.pz = and i32 %.sroa.7.8.extract.trunc, 1073741824
  %.not.i.i285 = icmp eq i32 %i.pz, 0
  br i1 %.not.i.i285, label %bb.en, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %.sroa.0.0.copyload.i.i.i.i.i286 = load i64, ptr %i.ps, align 8, !tbaa !16
  %i.qa = and i64 %.sroa.0.0.copyload.i.i.i.i.i286, 281474976710655
  %i.qb = inttoptr i64 %i.qa to ptr               ; 5 uses
  %i.qc = load i32, ptr %i.qb, align 4            ; 2 uses
  %i.qd = icmp ugt i32 %i.qc, 150994943
  br i1 %i.qd, label %bb.ec, label %bb.ed, !prof !15

bb.ec:                                            ; preds = %bb.eb
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !57
  br label %bb.eo

bb.ed:                                            ; preds = %bb.eb
  %.mask.i.i.i.i.i.i.i.i.i.i287 = and i32 %i.qc, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i287, label %bb.eg [
    i32 134217728, label %bb.ee
    i32 67108864, label %bb.ef
  ]

bb.ee:                                            ; preds = %bb.ed
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 12
  br label %bb.eo

bb.ef:                                            ; preds = %bb.ed
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  br label %bb.eo

bb.eg:                                            ; preds = %bb.ed
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i290 = load i64, ptr %i.qi, align 8, !tbaa !16
  %i.qj = and i64 %.sroa.0.0.copyload.i.i.i2.i.i290, 281474976710655
  %i.qk = inttoptr i64 %i.qj to ptr
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !57
  br label %bb.eo

bb.eh:                                            ; preds = %"_ZZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_ENK3$_0clEm.exit274"
  %.not.i1.i275 = icmp samesign ult i32 %.sroa.7.8.extract.trunc, 1073741824
  br i1 %.not.i1.i275, label %bb.eu, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %.sroa.0.0.copyload.i.i.i.i2.i276 = load i64, ptr %i.ps, align 8, !tbaa !16
  %i.qn = and i64 %.sroa.0.0.copyload.i.i.i.i2.i276, 281474976710655
  %i.qo = inttoptr i64 %i.qn to ptr               ; 8 uses
  %i.qp = load i32, ptr %i.qo, align 4            ; 3 uses
  %i.qq = icmp ugt i32 %i.qp, 150994943
  br i1 %i.qq, label %bb.ev, label %bb.ej, !prof !15

bb.ej:                                            ; preds = %bb.ei
  %.mask.i.i.i.i.i.i.i.i.i3.i277 = and i32 %i.qp, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i277, label %bb.em [
    i32 117440512, label %bb.ek
    i32 50331648, label %bb.el
  ]

bb.ek:                                            ; preds = %bb.ej
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  br label %bb.ew

bb.el:                                            ; preds = %bb.ej
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  br label %bb.ew

bb.em:                                            ; preds = %bb.ej
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i284 = load i64, ptr %i.qt, align 8, !tbaa !16
  %i.qu = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i284, 281474976710655
  %i.qv = inttoptr i64 %i.qu to ptr
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !61
  br label %bb.ew

bb.en:                                            ; preds = %bb.ea
  %i.qy = and i64 %i.pt, 1073741823               ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.ps, i64 %i.qy
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.eo:                                            ; preds = %bb.ec, %bb.ee, %bb.ef, %bb.eg
  %.0.i.sink.i.i289.ph = phi ptr [ %i.qm, %bb.eg ], [ %i.qh, %bb.ef ], [ %i.qg, %bb.ee ], [ %i.qf, %bb.ec ]
  %i.ra = and i64 %i.pt, 1073741823               ; 5 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i289.ph, i64 %i.ra ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i303 = load i64, ptr %i.ps, align 8, !tbaa !16
  %i.rc = and i64 %.sroa.0.0.copyload.i.i.i.i.i303, 281474976710655
  %i.rd = inttoptr i64 %i.rc to ptr               ; 5 uses
  %i.re = load i32, ptr %i.rd, align 4            ; 2 uses
  %i.rf = icmp ugt i32 %i.re, 150994943
  br i1 %i.rf, label %bb.ep, label %bb.eq, !prof !15

bb.ep:                                            ; preds = %bb.eo
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.eq:                                            ; preds = %bb.eo
  %.mask.i.i.i.i.i.i.i.i.i.i304 = and i32 %i.re, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i304, label %bb.et [
    i32 134217728, label %bb.er
    i32 67108864, label %bb.es
  ]

bb.er:                                            ; preds = %bb.eq
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rd, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.es:                                            ; preds = %bb.eq
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

bb.et:                                            ; preds = %bb.eq
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i307 = load i64, ptr %i.rk, align 8, !tbaa !16
  %i.rl = and i64 %.sroa.0.0.copyload.i.i.i2.i.i307, 281474976710655
  %i.rm = inttoptr i64 %i.rl to ptr
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305: ; preds = %bb.en, %bb.et, %bb.es, %bb.er, %bb.ep
  %i.rp = phi ptr [ %i.qz, %bb.en ], [ %i.rb, %bb.ep ], [ %i.rb, %bb.er ], [ %i.rb, %bb.es ], [ %i.rb, %bb.et ]
  %i.rq = phi i64 [ %i.qy, %bb.en ], [ %i.ra, %bb.ep ], [ %i.ra, %bb.er ], [ %i.ra, %bb.es ], [ %i.ra, %bb.et ]
  %.0.i.sink.i.i306 = phi ptr [ %i.ps, %bb.en ], [ %i.rh, %bb.ep ], [ %i.ri, %bb.er ], [ %i.rj, %bb.es ], [ %i.ro, %bb.et ]
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i306, i64 %i.rq
  %.sroa.7.12.extract.shift389 = lshr i64 %i.pt, 32
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %.sroa.7.12.extract.shift389
  br label %_ZNK6hermes2vm10StringView3endEv.exit308

bb.eu:                                            ; preds = %bb.eh
  %i.rt = and i64 %i.pt, 1073741823               ; 2 uses
  %i.ru = getelementptr inbounds nuw [2 x i8], ptr %i.ps, i64 %i.rt
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ev:                                            ; preds = %bb.ei
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !61 ; 2 uses
  %i.rx = and i64 %i.pt, 1073741823               ; 2 uses
  %i.ry = getelementptr inbounds nuw [2 x i8], ptr %i.rw, i64 %i.rx
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ew:                                            ; preds = %bb.em, %bb.el, %bb.ek
  %.0.i.sink.i4.i279.ph.ph = phi ptr [ %i.qr, %bb.ek ], [ %i.qs, %bb.el ], [ %i.qx, %bb.em ]
  %i.rz = and i64 %i.pt, 1073741823               ; 4 uses
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i279.ph.ph, i64 %i.rz ; 3 uses
  %.mask.i.i.i.i.i.i.i.i.i3.i294 = and i32 %i.qp, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i294, label %bb.ez [
    i32 117440512, label %bb.ex
    i32 50331648, label %bb.ey
  ]

bb.ex:                                            ; preds = %bb.ew
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ey:                                            ; preds = %bb.ew
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

bb.ez:                                            ; preds = %bb.ew
  %i.sd = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i301 = load i64, ptr %i.sd, align 8, !tbaa !16
  %i.se = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i301, 281474976710655
  %i.sf = inttoptr i64 %i.se to ptr
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295: ; preds = %bb.eu, %bb.ez, %bb.ey, %bb.ex, %bb.ev
  %.pre-phi583 = phi i64 [ %i.rt, %bb.eu ], [ %i.rz, %bb.ez ], [ %i.rz, %bb.ey ], [ %i.rz, %bb.ex ], [ %i.rx, %bb.ev ]
  %i.si = phi ptr [ %i.ru, %bb.eu ], [ %i.sa, %bb.ez ], [ %i.sa, %bb.ey ], [ %i.sa, %bb.ex ], [ %i.ry, %bb.ev ]
  %.0.i.sink.i4.i296 = phi ptr [ %i.ps, %bb.eu ], [ %i.sh, %bb.ez ], [ %i.sc, %bb.ey ], [ %i.sb, %bb.ex ], [ %i.rw, %bb.ev ]
  %i.sj = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i296, i64 %.pre-phi583
  %.sroa.7.12.extract.shift = lshr i64 %i.pt, 32
  %i.sk = getelementptr inbounds nuw [2 x i8], ptr %i.sj, i64 %.sroa.7.12.extract.shift
  br label %_ZNK6hermes2vm10StringView3endEv.exit308

_ZNK6hermes2vm10StringView3endEv.exit308:         ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295
  %.sroa.0.0.i281496 = phi ptr [ %i.rp, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.3.0.i280494 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ %i.si, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.3.0.i297 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ %i.sk, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %.sroa.0.0.i298 = phi ptr [ %i.rs, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i305 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i295 ]
  %i.sl = call noundef ptr @_ZN4llvh15SmallVectorImplIDsE6insertIN6hermes2vm10StringView14const_iteratorEvEEPDsS7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %i.px, ptr %.sroa.0.0.i281496, ptr %.sroa.3.0.i280494, ptr %.sroa.0.0.i298, ptr %.sroa.3.0.i297) ; 0 uses
  br label %bb.fz

bb.fa:                                            ; preds = %bb.du
  %i.sm = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.sn = zext i32 %i.sm to i64
  %i.so = load i32, ptr %i.af, align 8, !tbaa !43
  %i.sp = zext i32 %i.so to i64                   ; 3 uses
  %i.sq = sub nsw i64 %i.sn, %i.sp
  %i.sr = icmp ult i64 %i.sq, 2
  br i1 %i.sr, label %.thread.i314, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316

.thread.i314:                                     ; preds = %bb.fa
  %i.ss = add nuw nsw i64 %i.sp, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.ss, i64 noundef 2) #12
  %.pre7.pre.i.i315 = load i32, ptr %i.af, align 8, !tbaa !43
  %.pre581.a = zext i32 %.pre7.pre.i.i315 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316: ; preds = %bb.fa, %.thread.i314
  %.pre-phi582.a = phi i64 [ %i.sp, %bb.fa ], [ %.pre581.a, %.thread.i314 ]
  %i.st = load ptr, ptr %9, align 8, !tbaa !41
  %i.su = getelementptr inbounds nuw [2 x i8], ptr %i.st, i64 %.pre-phi582.a ; 2 uses
  store i16 36, ptr %i.su, align 1
  %.sroa.4460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 2
  store i16 %.0.i153, ptr %.sroa.4460.0..sroa_idx, align 1
  %.pre.i.i313 = load i32, ptr %i.af, align 8, !tbaa !43
  %i.sv = add i32 %.pre.i.i313, 2
  store i32 %i.sv, ptr %i.af, align 8, !tbaa !43
  br label %bb.fz

bb.fb:                                            ; preds = %bb.ar
  %i.sw = icmp eq i16 %.0.i153, 60
  br i1 %i.sw, label %bb.fc, label %bb.fy

bb.fc:                                            ; preds = %bb.fb
  %i.sx = load i64, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.sy = icmp ugt i64 %i.sx, -844424930131969
  %i.sz = and i64 %i.sx, 281474976710655
  %i.ta = icmp ne i64 %i.sz, 0
  %i.tb = and i1 %i.sy, %i.ta
  br i1 %i.tb, label %bb.fd, label %bb.fy

bb.fd:                                            ; preds = %bb.fc
  %i.tc = add nuw nsw i64 %.0548, 2               ; 10 uses
  %i.td = icmp ult i64 %i.tc, %.sroa.12.12.extract.shift
  br i1 %i.td, label %.lr.ph, label %.thread504

.lr.ph:                                           ; preds = %bb.fd
  br i1 %i.ai, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not.i.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us, label %.lr.ph.split.us.split

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us: ; preds = %.lr.ph.split.us, %bb.fe
  %.0117526.us.us = phi i64 [ %i.ti, %bb.fe ], [ %i.tc, %.lr.ph.split.us ] ; 3 uses
  %i.te = and i64 %.0117526.us.us, 4294967295
  %i.tf = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.te
  %i.tg = load i8, ptr %i.tf, align 1, !tbaa !23
  %i.th = icmp eq i8 %i.tg, 62
  br i1 %i.th, label %.split.us, label %bb.fe

bb.fe:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us
  %i.ti = add nsw i64 %.0117526.us.us, 1          ; 2 uses
  %exitcond570.not.a = icmp eq i64 %i.ti, %.sroa.12.12.extract.shift
  br i1 %exitcond570.not.a, label %.thread504, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us, !llvm.loop !415

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %.sroa.0.0.copyload.i.i.i.i.i325.us = load i64, ptr %i.x, align 8, !tbaa !16
  %i.tj = and i64 %.sroa.0.0.copyload.i.i.i.i.i325.us, 281474976710655
  %i.tk = inttoptr i64 %i.tj to ptr               ; 4 uses
  %i.tl = load i32, ptr %i.tk, align 4            ; 2 uses
  %i.tm = icmp ugt i32 %i.tl, 150994943
  %.mask.i.i.i.i.i.i.i.i.i.i326.us = and i32 %i.tl, 251658240
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 8 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 12
  br i1 %i.tm, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split, !prof !15

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !57
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 %i.aj
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537: ; preds = %bb.ff, %.lr.ph.split.us.split.split.us
  %.0117526.us.us536 = phi i64 [ %i.tc, %.lr.ph.split.us.split.split.us ], [ %i.tw, %bb.ff ] ; 3 uses
  %i.ts = and i64 %.0117526.us.us536, 4294967295
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.ts
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !23
  %i.tv = icmp eq i8 %i.tu, 62
  br i1 %i.tv, label %.split.us, label %bb.ff

bb.ff:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537
  %i.tw = add nsw i64 %.0117526.us.us536, 1       ; 2 uses
  %exitcond569.not.a = icmp eq i64 %i.tw, %.sroa.12.12.extract.shift
  br i1 %exitcond569.not.a, label %.thread504, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537, !llvm.loop !415

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %bb.fi
  %.0117526.us = phi i64 [ %i.ug, %bb.fi ], [ %i.tc, %.lr.ph.split.us.split ] ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i326.us, label %bb.fh [
    i32 134217728, label %bb.fg
    i32 67108864, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us
  ]

bb.fg:                                            ; preds = %.lr.ph.split.us.split.split
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us

bb.fh:                                            ; preds = %.lr.ph.split.us.split.split
  %.sroa.0.0.copyload.i.i.i2.i.i329.us = load i64, ptr %i.tn, align 8, !tbaa !16
  %i.tx = and i64 %.sroa.0.0.copyload.i.i.i2.i.i329.us, 281474976710655
  %i.ty = inttoptr i64 %i.tx to ptr
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !57
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us: ; preds = %.lr.ph.split.us.split.split, %bb.fh, %bb.fg
  %.0.i.sink.i.i328.us = phi ptr [ %i.ua, %bb.fh ], [ %i.to, %bb.fg ], [ %i.tn, %.lr.ph.split.us.split.split ]
  %i.ub = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i328.us, i64 %i.aj
  %i.uc = and i64 %.0117526.us, 4294967295
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !23
  %i.uf = icmp eq i8 %i.ue, 62
  br i1 %i.uf, label %.split.us, label %bb.fi

bb.fi:                                            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us
  %i.ug = add nsw i64 %.0117526.us, 1             ; 2 uses
  %exitcond568.not.a = icmp eq i64 %i.ug, %.sroa.12.12.extract.shift
  br i1 %exitcond568.not.a, label %.thread504, label %.lr.ph.split.us.split.split, !llvm.loop !415

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not.i3.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, label %.lr.ph.split.split

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us: ; preds = %.lr.ph.split, %bb.fj
  %.0117526.us527 = phi i64 [ %i.ul, %bb.fj ], [ %i.tc, %.lr.ph.split ] ; 3 uses
  %i.uh = and i64 %.0117526.us527, 4294967295
  %i.ui = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.uh
  %i.uj = load i16, ptr %i.ui, align 2, !tbaa !64
  %i.uk = icmp eq i16 %i.uj, 62
  br i1 %i.uk, label %.split.us, label %bb.fj

bb.fj:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us
  %i.ul = add nsw i64 %.0117526.us527, 1          ; 2 uses
  %exitcond567.not.a = icmp eq i64 %i.ul, %.sroa.12.12.extract.shift
  br i1 %exitcond567.not.a, label %.thread504, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, !llvm.loop !415

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %.sroa.0.0.copyload.i.i.i.i4.i318 = load i64, ptr %i.x, align 8, !tbaa !16
  %i.um = and i64 %.sroa.0.0.copyload.i.i.i.i4.i318, 281474976710655
  %i.un = inttoptr i64 %i.um to ptr               ; 4 uses
  %i.uo = load i32, ptr %i.un, align 4            ; 2 uses
  %i.up = icmp ugt i32 %i.uo, 150994943
  %.mask.i.i.i.i.i.i.i.i.i5.i319 = and i32 %i.uo, 251658240
  %i.uq = getelementptr inbounds nuw i8, ptr %i.un, i64 8 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  br i1 %i.up, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split, !prof !15

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.us = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !61
  %i.uu = getelementptr inbounds nuw [2 x i8], ptr %i.ut, i64 %i.aj
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531: ; preds = %bb.fk, %.lr.ph.split.split.split.us
  %.0117526.us530 = phi i64 [ %i.tc, %.lr.ph.split.split.split.us ], [ %i.uz, %bb.fk ] ; 3 uses
  %i.uv = and i64 %.0117526.us530, 4294967295
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.uu, i64 %i.uv
  %i.ux = load i16, ptr %i.uw, align 2, !tbaa !64
  %i.uy = icmp eq i16 %i.ux, 62
  br i1 %i.uy, label %.split.us, label %bb.fk

bb.fk:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531
  %i.uz = add nsw i64 %.0117526.us530, 1          ; 2 uses
  %exitcond566.not = icmp eq i64 %i.uz, %.sroa.12.12.extract.shift
  br i1 %exitcond566.not, label %.thread504, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531, !llvm.loop !415

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %bb.fn
  %.0117526 = phi i64 [ %i.vj, %bb.fn ], [ %i.tc, %.lr.ph.split.split ] ; 3 uses
  switch i32 %.mask.i.i.i.i.i.i.i.i.i5.i319, label %bb.fm [
    i32 117440512, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320
    i32 50331648, label %bb.fl
  ]

bb.fl:                                            ; preds = %.lr.ph.split.split.split
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320

bb.fm:                                            ; preds = %.lr.ph.split.split.split
  %.sroa.0.0.copyload.i.i.i2.i7.i323 = load i64, ptr %i.uq, align 8, !tbaa !16
  %i.va = and i64 %.sroa.0.0.copyload.i.i.i2.i7.i323, 281474976710655
  %i.vb = inttoptr i64 %i.va to ptr
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !61
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320: ; preds = %.lr.ph.split.split.split, %bb.fm, %bb.fl
  %.0.i.sink.i6.i321 = phi ptr [ %i.vd, %bb.fm ], [ %i.uq, %bb.fl ], [ %i.ur, %.lr.ph.split.split.split ]
  %i.ve = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i6.i321, i64 %i.aj
  %i.vf = and i64 %.0117526, 4294967295
  %i.vg = getelementptr inbounds nuw [2 x i8], ptr %i.ve, i64 %i.vf
  %i.vh = load i16, ptr %i.vg, align 2, !tbaa !64
  %i.vi = icmp eq i16 %i.vh, 62
  br i1 %i.vi, label %.split.us, label %bb.fn

bb.fn:                                            ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320
  %i.vj = add nsw i64 %.0117526, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.vj, %.sroa.12.12.extract.shift
  br i1 %exitcond.not, label %.thread504, label %.lr.ph.split.split.split, !llvm.loop !415

.split.us:                                        ; preds = %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us
  %.us-phi = phi i64 [ %.0117526.us530, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us531 ], [ %.0117526.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us ], [ %.0117526.us527, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320.us ], [ %.0117526.us.us, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us ], [ %.0117526.us.us536, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i327.us.us537 ], [ %.0117526, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i320 ] ; 3 uses
  %i.vk = icmp eq i64 %.us-phi, 0
  br i1 %i.vk, label %.thread504, label %bb.fo

.thread504:                                       ; preds = %bb.fn, %bb.fk, %bb.fj, %bb.fi, %bb.ff, %bb.fe, %bb.fd, %.split.us
  %i.vl = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.vm = zext i32 %i.vl to i64
  %i.vn = load i32, ptr %i.af, align 8, !tbaa !43
  %i.vo = zext i32 %i.vn to i64                   ; 3 uses
  %i.vp = sub nsw i64 %i.vm, %i.vo
  %i.vq = icmp ult i64 %i.vp, 2
  br i1 %i.vq, label %.thread.i336, label %.thread508

.thread.i336:                                     ; preds = %.thread504
  %i.vr = add nuw nsw i64 %i.vo, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.vr, i64 noundef 2) #12
  %.pre7.pre.i.i337 = load i32, ptr %i.af, align 8, !tbaa !43
  %.pre584 = zext i32 %.pre7.pre.i.i337 to i64
  br label %.thread508

.thread508:                                       ; preds = %.thread.i336, %.thread504
  %.pre-phi585 = phi i64 [ %.pre584, %.thread.i336 ], [ %i.vo, %.thread504 ]
  %i.vs = load ptr, ptr %9, align 8, !tbaa !41
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.vs, i64 %.pre-phi585 ; 2 uses
  store i16 36, ptr %i.vt, align 1
  %.sroa.4462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  store i16 60, ptr %.sroa.4462.0..sroa_idx, align 1
  %.pre.i.i335 = load i32, ptr %i.af, align 8, !tbaa !43
  %i.vu = add i32 %.pre.i.i335, 2
  store i32 %i.vu, ptr %i.af, align 8, !tbaa !43
  br label %bb.fz

bb.fo:                                            ; preds = %.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #12
  store ptr %i.av, ptr %12, align 8, !tbaa !41
  store i32 0, ptr %i.aw, align 8, !tbaa !43
  store i32 32, ptr %i.ax, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #12
  %i.vv = sub nuw i64 %.us-phi, %i.tc
  %i.vw = add i64 %i.tc, %i.y
  %i.vx = and i64 %i.vw, 1073741823
  %.sroa.2.8.insert.ext.i343 = or disjoint i64 %i.ay, %i.vx
  %.sroa.2.12.insert.ext.i344 = shl i64 %i.vv, 32
  %.sroa.2.12.insert.insert.i346 = or disjoint i64 %.sroa.2.12.insert.ext.i344, %.sroa.2.8.insert.ext.i343
  store ptr %i.x, ptr %13, align 8
  store i64 %.sroa.2.12.insert.insert.i346, ptr %i.az, align 8
  %i.vy = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %12, i1 noundef zeroext false) #12 ; 2 uses
  %i.vz = extractvalue { ptr, i64 } %i.vy, 0      ; 3 uses
  %i.wa = extractvalue { ptr, i64 } %i.vy, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #12
  %.not10.i.i = icmp eq i64 %i.wa, 0
  br i1 %.not10.i.i, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.fo
  %i.wb = add i64 %i.wa, 9223372036854775807
  %i.wc = and i64 %i.wb, 9223372036854775807      ; 2 uses
  %i.wd = add nuw i64 %i.wc, 1                    ; 2 uses
  %xtraiter = and i64 %i.wd, 3                    ; 3 uses
  %i.we = icmp samesign ult i64 %i.wc, 3
  br i1 %i.we, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.wd, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.xf, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %i.vz, %.lr.ph.i.i.preheader.new ], [ %i.xg, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.wf = load i16, ptr %.0811.i.i, align 2, !tbaa !64
  %i.wg = zext i16 %i.wf to i32
  %i.wh = add i32 %.012.i.i, %i.wg
  %i.wi = mul i32 %i.wh, 1025                     ; 2 uses
  %i.wj = lshr i32 %i.wi, 6
  %i.wk = xor i32 %i.wj, %i.wi
  %i.wl = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.wm = load i16, ptr %i.wl, align 2, !tbaa !64
  %i.wn = zext i16 %i.wm to i32
  %i.wo = add i32 %i.wk, %i.wn
  %i.wp = mul i32 %i.wo, 1025                     ; 2 uses
  %i.wq = lshr i32 %i.wp, 6
  %i.wr = xor i32 %i.wq, %i.wp
  %i.ws = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.wt = load i16, ptr %i.ws, align 2, !tbaa !64
  %i.wu = zext i16 %i.wt to i32
  %i.wv = add i32 %i.wr, %i.wu
  %i.ww = mul i32 %i.wv, 1025                     ; 2 uses
  %i.wx = lshr i32 %i.ww, 6
  %i.wy = xor i32 %i.wx, %i.ww
  %i.wz = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 6
  %i.xa = load i16, ptr %i.wz, align 2, !tbaa !64
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add i32 %i.wy, %i.xb
  %i.xd = mul i32 %i.xc, 1025                     ; 2 uses
  %i.xe = lshr i32 %i.xd, 6
  %i.xf = xor i32 %i.xe, %i.xd                    ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.xf, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %i.vz, %.lr.ph.i.i.preheader ], [ %i.xg, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod692 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod692)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.xm, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.xn, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.xh = load i16, ptr %.0811.i.i.epil, align 2, !tbaa !64
  %i.xi = zext i16 %i.xh to i32
  %i.xj = add i32 %.012.i.i.epil, %i.xi
  %i.xk = mul i32 %i.xj, 1025                     ; 2 uses
  %i.xl = lshr i32 %i.xk, 6
  %i.xm = xor i32 %i.xl, %i.xk                    ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !416

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.fo
  %.0.lcssa.i.i = phi i32 [ 0, %bb.fo ], [ %i.xf, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ], [ %i.xm, %.lr.ph.i.i.epil ]
  %i.xo = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.ba, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.vz, i64 %i.wa, i32 noundef %.0.lcssa.i.i) #12 ; 2 uses
  %.not521 = icmp eq ptr %i.xo, inttoptr (i64 -1 to ptr)
  br i1 %.not521, label %.thread506, label %bb.fp, !prof !15

bb.fp:                                            ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0.0.copyload.i.i350 = load i64, ptr %i.xo, align 8, !tbaa !16
  %i.xp = trunc i64 %.sroa.0.0.copyload.i.i350 to i32
  %i.xq = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %5, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.xp, ptr nonnull %5, i32 0, ptr noundef null) #12 ; 2 uses
  %i.xr = extractvalue { i32, i64 } %i.xq, 0
  %i.xs = extractvalue { i32, i64 } %i.xq, 1      ; 3 uses
  %i.xt = icmp eq i32 %i.xr, 0
  br i1 %i.xt, label %.thread506, label %bb.fq, !prof !15

bb.fq:                                            ; preds = %bb.fp
  %.mask.i = and i64 %i.xs, -140737488355328
  %i.xu = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.xu, label %bb.fv, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.xv = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 192 ; 2 uses
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !36 ; 4 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xv, i64 200
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !37
  %i.ya = icmp ult ptr %i.xx, %i.xz
  br i1 %i.ya, label %bb.fs, label %bb.ft, !prof !38

bb.fs:                                            ; preds = %bb.fr
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  store ptr %i.yb, ptr %i.xw, align 8, !tbaa !36
  store i64 %i.xs, ptr %i.xx, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.ft:                                            ; preds = %bb.fr
  %i.yc = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.xv, i64 %i.xs) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.fs, %bb.ft
  %.0.i.i.i.i.i.i = phi ptr [ %i.xx, %bb.fs ], [ %i.yc, %bb.ft ]
  %i.yd = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i) #12 ; 2 uses
  %.not522 = icmp eq ptr %i.yd, inttoptr (i64 -1 to ptr)
  br i1 %.not522, label %.thread506, label %bb.fu

bb.fu:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.yd, ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.fq
  %i.ye = add nuw i64 %.us-phi, 1
  br label %.thread506

.thread506:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.fv, %bb.fp, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.2121 = phi i1 [ false, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ false, %bb.fp ], [ true, %bb.fv ], [ false, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %.4 = phi i64 [ %.0548, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ %.0548, %bb.fp ], [ %i.ye, %bb.fv ], [ %.0548, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ]
  %i.yf = load ptr, ptr %12, align 8, !tbaa !41   ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.av
  br i1 %i.yg, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %.thread506
  call void @free(ptr noundef %i.yf) #12
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %.thread506
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #12
  br i1 %.2121, label %bb.fz, label %.loopexit

bb.fy:                                            ; preds = %bb.fc, %bb.fb
  %i.yh = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.yi = zext i32 %i.yh to i64
  %i.yj = load i32, ptr %i.af, align 8, !tbaa !43
  %i.yk = zext i32 %i.yj to i64                   ; 3 uses
  %i.yl = sub nsw i64 %i.yi, %i.yk
  %i.ym = icmp ult i64 %i.yl, 2
  br i1 %i.ym, label %.thread.i357, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit359

.thread.i357:                                     ; preds = %bb.fy
  %i.yn = add nuw nsw i64 %i.yk, 2
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull %i.ae, i64 noundef %i.yn, i64 noundef 2) #12
  %.pre7.pre.i.i358 = load i32, ptr %i.af, align 8, !tbaa !43
  %.pre586 = zext i32 %.pre7.pre.i.i358 to i64
  br label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit359

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit359: ; preds = %bb.fy, %.thread.i357
  %.pre-phi587 = phi i64 [ %i.yk, %bb.fy ], [ %.pre586, %.thread.i357 ]
  %i.yo = load ptr, ptr %9, align 8, !tbaa !41
  %i.yp = getelementptr inbounds nuw [2 x i8], ptr %i.yo, i64 %.pre-phi587 ; 2 uses
  store i16 36, ptr %i.yp, align 1
  %.sroa.4464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.yp, i64 2
  store i16 %.0.i153, ptr %.sroa.4464.0..sroa_idx, align 1
  %.pre.i.i356 = load i32, ptr %i.af, align 8, !tbaa !43
  %i.yq = add i32 %.pre.i.i356, 2
  store i32 %i.yq, ptr %i.af, align 8, !tbaa !43
  %i.yr = add nuw nsw i64 %.0548, 2
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fx, %.thread508, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316, %_ZNK6hermes2vm10StringView3endEv.exit308, %_ZNK6hermes2vm10StringView3endEv.exit256, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit, %_ZNK6hermes2vm10StringView3endEv.exit, %bb.am, %bb.aq, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit359, %bb.an, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit
  %.9 = phi i64 [ %i.cu, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit ], [ %i.er, %bb.aq ], [ %i.eu, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit316 ], [ %i.yr, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit359 ], [ %i.el, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEDs.exit164 ], [ %i.en, %bb.am ], [ %i.ep, %bb.an ], [ %i.kh, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %i.eu, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendEN4llvh8ArrayRefIDsEE.exit ], [ %i.eu, %_ZNK6hermes2vm10StringView3endEv.exit256 ], [ %i.eu, %_ZNK6hermes2vm10StringView3endEv.exit308 ], [ %i.tc, %.thread508 ], [ %.4, %bb.fx ] ; 2 uses
  %.not140 = icmp ult i64 %.9, %.sroa.12.12.extract.shift
  br i1 %.not140, label %bb.d, label %.critedge

.critedge:                                        ; preds = %bb.fz
  %.pre = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  %.pre577 = load i32, ptr %i.af, align 8, !tbaa !43 ; 2 uses
  %i.ys = zext i32 %.pre577 to i64                ; 2 uses
  %.not.i = icmp ult i32 %.pre577, 65536
  br i1 %.not.i, label %.critedge.thread, label %bb.ga, !prof !418

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  %i.yt = phi i64 [ %i.ys, %.critedge ], [ 0, %bb.c ]
  %i.yu = phi ptr [ %.pre, %.critedge ], [ %i.ae, %bb.c ]
  %i.yv = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.yu, i64 %i.yt) #12
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

bb.ga:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string.248") align 8 %7, ptr %.pre, i64 %i.ys)
  %i.yw = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(32) %7) #12
  %i.yx = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.yz = icmp eq ptr %i.yx, %i.yy
  br i1 %i.yz, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ga
  %i.za = load i64, ptr %i.yy, align 8, !tbaa !23
  %i.zb = shl i64 %i.za, 1
  %i.zc = add i64 %i.zb, 2
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.zc) #13
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.ga, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %.critedge.thread, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %.pn.i360 = phi { i32, i64 } [ %i.yv, %.critedge.thread ], [ %i.yw, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i ] ; 2 uses
  %i.zd = extractvalue { i32, i64 } %.pn.i360, 0
  %i.ze = extractvalue { i32, i64 } %.pn.i360, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.fx, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0441.7 = phi i32 [ %i.zd, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ 0, %bb.fx ]
  %.sroa.5.0 = phi i64 [ %i.ze, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ undef, %bb.fx ]
  %i.zf = load ptr, ptr %9, align 8, !tbaa !41    ; 2 uses
  %i.zg = icmp eq ptr %i.zf, %i.ae
  br i1 %i.zg, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit361, label %bb.gb

bb.gb:                                            ; preds = %.loopexit
  call void @free(ptr noundef %i.zf) #12
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit361

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit361:       ; preds = %.loopexit, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0441.7, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIDsE6insertIN6hermes2vm10StringView14const_iteratorEvEEPDsS7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43   ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 6 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %.not.i.i = icmp eq ptr %4, null                ; 2 uses
  %i.j = ptrtoint ptr %4 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ptrtoint ptr %5 to i64                   ; 2 uses
  %i.n = ptrtoint ptr %3 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 1
  %.0.i.i = select i1 %.not.i.i, i64 %i.p, i64 %i.l ; 24 uses
  br i1 %i.i, label %bb.b, label %_ZNK6hermes2vm10StringView14const_iteratormiERKS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !42
  %i.s = zext i32 %i.r to i64
  %i.t = sub nsw i64 %i.s, %i.g
  %i.u = icmp ugt i64 %.0.i.i, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = add i64 %.0.i.i, %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef 2) #12
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !43 ; 2 uses
  %.pre15.i = zext i32 %.pre.i to i64
  %.pre75.pre = load ptr, ptr %0, align 8, !tbaa !41
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre75 = phi ptr [ %.pre75.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.pre-phi.i = phi i64 [ %.pre15.i, %bb.c ], [ %i.g, %bb.b ]
  %i.x = phi i32 [ %.pre.i, %bb.c ], [ %i.f, %bb.b ]
  %i.y = icmp sgt i64 %.0.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i, label %_ZN4llvh15SmallVectorImplIDsE6appendIN6hermes2vm10StringView14const_iteratorEvEEvT_S7_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i:               ; preds = %bb.d
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.pre75, i64 %.pre-phi.i ; 3 uses
  %xtraiter99 = and i64 %.0.i.i, 1
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i
  %.not.i5.i.i.i.i.i.i.i.i.i.prol = icmp eq ptr %2, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.prol, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.aa = load i8, ptr %2, align 1, !tbaa !23
  %i.ab = sext i8 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.ad = load i16, ptr %3, align 2, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol: ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i.i.i.i.prol = phi i16 [ %i.ad, %bb.f ], [ %i.ab, %bb.e ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i.prol = phi ptr [ null, %bb.f ], [ %i.ac, %bb.e ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ae, %bb.f ], [ %3, %bb.e ]
  store i16 %.sink.i.i.i.i.i.i.i.i.i.prol, ptr %i.z, align 2, !tbaa !64
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ag = add nsw i64 %.0.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i
  %.015.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.0.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.ag, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %.0414.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %i.af, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.5.013.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %3, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.07.012.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i ], [ %.sroa.07.1.i.i.i.i.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.prol ]
  %i.ah = icmp eq i64 %.0.i.i, 1
  br i1 %i.ah, label %_ZN4llvh15SmallVectorImplIDsE6appendIN6hermes2vm10StringView14const_iteratorEvEEvT_S7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1
  %.015.i.i.i.i.i.i.i.i.i = phi i64 [ %i.au, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.015.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0414.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.0414.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.5.013.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.5.013.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.07.012.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.not.i5.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i, align 1, !tbaa !23
  %i.aj = sext i8 %i.ai to i16
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.al = load i16, ptr %.sroa.5.013.i.i.i.i.i.i.i.i.i, align 2, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.5.013.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sink.i.i.i.i.i.i.i.i.i = phi i16 [ %i.al, %bb.h ], [ %i.aj, %bb.g ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.h ], [ %i.ak, %bb.g ] ; 3 uses
  %.sroa.5.1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %bb.h ], [ %.sroa.5.013.i.i.i.i.i.i.i.i.i, %bb.g ] ; 3 uses
  store i16 %.sink.i.i.i.i.i.i.i.i.i, ptr %.0414.i.i.i.i.i.i.i.i.i, align 2, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i.i.i.i.i, i64 2
  %.not.i5.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.1, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i
  %i.ao = load i8, ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, align 1, !tbaa !23
  %i.ap = sext i8 %i.ao to i16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1

bb.j:                                             ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i
  %i.ar = load i16, ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i, align 2, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.1: ; preds = %bb.j, %bb.i
  %.sink.i.i.i.i.i.i.i.i.i.1 = phi i16 [ %i.ar, %bb.j ], [ %i.ap, %bb.i ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i.1 = phi ptr [ null, %bb.j ], [ %i.aq, %bb.i ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.as, %bb.j ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i, %bb.i ]
  store i16 %.sink.i.i.i.i.i.i.i.i.i.1, ptr %i.an, align 2, !tbaa !64
end_hunk_3
