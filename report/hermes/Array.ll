Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Array?download=true
inline.NumInlined: 3514
inline.NumDeleted: 769
begin_hunk_0_@_ZN6hermes2vmL13indexOfHelperERNS0_7RuntimeENS0_10NativeArgsEb:bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !26
  store i64 %i.q, ptr %i.t, align 8, !tbaa !29
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.y, %bb.d ] ; 6 uses
  %i.z = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 85, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #9 ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0
  %i.ab = extractvalue { i32, i64 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i32 %i.aa, 0
  br i1 %i.ac, label %bb.ah, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !26
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !29
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ab) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.af, %bb.f ], [ %i.ak, %bb.g ]
  %i.al = call { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i53) #9 ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 0
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.ah, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ao = extractvalue { i32, i64 } %i.al, 1      ; 2 uses
  %i.ap = uitofp i64 %i.ao to double              ; 6 uses
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %bb.ah, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !88
  %i.at = icmp ugt i32 %i.as, 1
  %i.au = load ptr, ptr %1, align 8
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -16
  %.sroa.02.0.i = select i1 %i.at, ptr %i.av, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.aw = call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ax = extractvalue { i32, i64 } %i.aw, 1
  %i.ay = load i32, ptr %i.ar, align 8, !tbaa !88
  %i.az = icmp ugt i32 %i.ay, 1
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ba = extractvalue { i32, i64 } %i.aw, 0
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ah, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.bc = bitcast i64 %i.ax to double             ; 2 uses
  %i.bd = fcmp oeq double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.l, label %bb.n, !prof !7

bb.l:                                             ; preds = %bb.k
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.be = fadd double %i.ap, -1.000000e+00
  %i.bf = select i1 %2, double %i.be, double 0.000000e+00
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.0 = phi double [ 0.000000e+00, %bb.l ], [ %i.bc, %bb.k ], [ %i.bf, %bb.m ] ; 6 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 192 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !26 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !27
  %i.bl = icmp ult ptr %i.bi, %i.bk
  br i1 %i.bl, label %bb.o, label %bb.p, !prof !28

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bm, ptr %i.bh, align 8, !tbaa !26
  store i64 -1688849860263936, ptr %i.bi, align 8, !tbaa !29
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.p:                                             ; preds = %bb.n
  %i.bn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bg, i64 -1688849860263936) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i.i.i.i54 = phi ptr [ %i.bi, %bb.o ], [ %i.bn, %bb.p ] ; 14 uses
  %i.bo = fcmp ult double %.0, 0.000000e+00       ; 2 uses
  br i1 %2, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  br i1 %i.bo, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store double %.0, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.bp = call noundef double @llvm.fabs.f64(double %.0)
  %i.bq = fsub double %i.ap, %i.bp                ; 2 uses
  %i.br = fcmp olt double %i.bq, 0.000000e+00
  %.sroa.speculated69 = select i1 %i.br, double 0.000000e+00, double %i.bq ; 2 uses
  %i.bs = fcmp uno double %.sroa.speculated69, 0.000000e+00
  %i.bt = bitcast double %.sroa.speculated69 to i64
  %spec.select.i55 = select i1 %i.bs, i64 9221120237041090560, i64 %i.bt, !prof !7
  store i64 %spec.select.i55, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  br label %bb.w

bb.t:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  br i1 %i.bo, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = fadd double %i.ap, -1.000000e+00        ; 2 uses
  %i.bv = fcmp olt double %i.bu, %.0
  %.sroa.speculated = select i1 %i.bv, double %i.bu, double %.0
  store double %.sroa.speculated, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bw = call noundef double @llvm.fabs.f64(double %.0)
  %i.bx = fsub double %i.ap, %i.bw                ; 2 uses
  %i.by = fcmp uno double %i.bx, 0.000000e+00
  %i.bz = bitcast double %i.bx to i64
  %spec.select.i58 = select i1 %i.by, i64 9221120237041090560, i64 %i.bz, !prof !7
  store i64 %spec.select.i58, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !17  ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 192 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !26 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 200
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !27 ; 2 uses
  %i.cf = icmp ult ptr %i.cc, %i.ce
  br i1 %i.cf, label %bb.x, label %bb.y, !prof !28

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !26
  store i64 -1266636858327041, ptr %i.cc, align 8, !tbaa !29
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.y:                                             ; preds = %bb.w
  %i.ch = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ca, i64 -1266636858327041) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre102 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26
  %.phi.trans.insert103 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre104 = load ptr, ptr %.phi.trans.insert103, align 8, !tbaa !27
  br label %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.x, %bb.y
  %i.ci = phi ptr [ %i.ce, %bb.x ], [ %.pre104, %bb.y ]
  %i.cj = phi ptr [ %i.cg, %bb.x ], [ %.pre102, %bb.y ] ; 4 uses
  %i.ck = phi ptr [ %i.ca, %bb.x ], [ %.pre, %bb.y ] ; 2 uses
  %.0.i.i.i.i.i.i59 = phi ptr [ %i.cc, %bb.x ], [ %i.ch, %bb.y ]
  store ptr %.0.i.i.i.i.i.i59, ptr %4, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.cl = icmp ult ptr %i.cj, %i.ci
  br i1 %i.cl, label %bb.z, label %bb.aa, !prof !28

bb.z:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 192
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !26
  store i64 -281474976710656, ptr %i.cj, align 8, !tbaa !29
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.aa:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_8SymbolIDEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.co = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ck, i64 -281474976710656) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.z, %bb.aa
  %.0.i.i.i.i.i.i60 = phi ptr [ %i.cj, %bb.z ], [ %i.co, %bb.aa ]
  store ptr %.0.i.i.i.i.i.i60, ptr %5, align 8, !tbaa !66
  %i.cp = load i32, ptr %i.ar, align 8, !tbaa !88
  %.not = icmp eq i32 %i.cp, 0
  %i.cq = load ptr, ptr %1, align 8
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -8
  %.sroa.02.0.i61 = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.cr ; 2 uses
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %i.ct = load i32, ptr %i.k, align 8, !tbaa !35  ; 3 uses
  %i.cu = zext i32 %i.ct to i64                   ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !36
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 128
  store ptr %i.cz, ptr %i.j, align 8, !tbaa !27
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !26
  %i.da = load double, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10 ; 2 uses
  br i1 %2, label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us, label %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us: ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.db = fcmp olt double %i.da, 0.000000e+00
  br i1 %i.db, label %.loopexit, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i32 0, ptr %6, align 8, !tbaa !47
  store i32 -1, ptr %i.cv, align 4, !tbaa !90
  %i.dc = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i54, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6) #9 ; 0 uses
  %.sroa.07.0.copyload.us = load ptr, ptr %5, align 8
  %.sroa.06.0.copyload.us = load i64, ptr %6, align 8
  %i.dd = call { i32, i64 } @_ZN6hermes2vm8JSObject28getComputedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_RNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.sroa.07.0.copyload.us, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.06.0.copyload.us, ptr nonnull %.0.i.i.i.i.i.i54) #9 ; 2 uses
  %i.de = extractvalue { i32, i64 } %i.dd, 0
  %i.df = extractvalue { i32, i64 } %i.dd, 1      ; 2 uses
  %i.dg = icmp eq i32 %i.de, 0
  br i1 %i.dg, label %.critedge, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %.lr.ph98
  %.mask.i.us = and i64 %i.df, -140737488355328
  %i.dh = icmp eq i64 %.mask.i.us, -1970324836974592
  br i1 %i.dh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.0.0.copyload.i.i62.us = load i64, ptr %.sroa.02.0.i61, align 8, !tbaa !29
  %i.di = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0.0.copyload.i.i62.us, i64 %i.df) #9
  br i1 %i.di, label %.split.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dj = load double, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  %i.dk = fadd double %i.dj, -1.000000e+00        ; 2 uses
  %i.dl = fcmp uno double %i.dk, 0.000000e+00
  %i.dm = bitcast double %i.dk to i64
  %spec.select.i64.us = select i1 %i.dl, i64 9221120237041090560, i64 %i.dm, !prof !7 ; 2 uses
  store i64 %spec.select.i64.us, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.cu
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !36
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 128
  store i32 %i.ct, ptr %i.k, align 8, !tbaa !35
  store ptr %i.dq, ptr %i.j, align 8, !tbaa !27
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !26
  %i.dr = bitcast i64 %spec.select.i64.us to double
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  br i1 %i.ds, label %.loopexit, label %.lr.ph98, !llvm.loop !546

_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split: ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.dt = fcmp ult double %i.da, %i.ap
  br i1 %i.dt, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  store i32 0, ptr %6, align 8, !tbaa !47
  store i32 -1, ptr %i.cv, align 4, !tbaa !90
  %i.du = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %.0.i.i.i.i.i.i54, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6) #9 ; 0 uses
  %.sroa.07.0.copyload = load ptr, ptr %5, align 8
  %.sroa.06.0.copyload = load i64, ptr %6, align 8
  %i.dv = call { i32, i64 } @_ZN6hermes2vm8JSObject28getComputedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_RNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.sroa.07.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.06.0.copyload, ptr nonnull %.0.i.i.i.i.i.i54) #9 ; 2 uses
  %i.dw = extractvalue { i32, i64 } %i.dv, 0
  %i.dx = extractvalue { i32, i64 } %i.dv, 1      ; 2 uses
  %i.dy = icmp eq i32 %i.dw, 0
  br i1 %i.dy, label %.critedge, label %bb.ae, !prof !7

bb.ae:                                            ; preds = %.lr.ph
  %.mask.i = and i64 %i.dx, -140737488355328
  %i.dz = icmp eq i64 %.mask.i, -1970324836974592
  br i1 %i.dz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %.sroa.02.0.i61, align 8, !tbaa !29
  %i.ea = call noundef zeroext i1 @_ZN6hermes2vm18strictEqualityTestENS0_11HermesValueES1_(i64 %.sroa.0.0.copyload.i.i62, i64 %i.dx) #9
  br i1 %i.ea, label %.split.us, label %bb.ag

.split.us:                                        ; preds = %bb.af, %bb.ac
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !29
  br label %.critedge

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eb = load double, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  %i.ec = fadd double %i.eb, 1.000000e+00         ; 2 uses
  %i.ed = fcmp uno double %i.ec, 0.000000e+00
  %i.ee = bitcast double %i.ec to i64
  %spec.select.i64 = select i1 %i.ed, i64 9221120237041090560, i64 %i.ee, !prof !7 ; 2 uses
  store i64 %spec.select.i64, ptr %.0.i.i.i.i.i.i54, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.cu
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  store i32 %i.ct, ptr %i.k, align 8, !tbaa !35
  store ptr %i.ei, ptr %i.j, align 8, !tbaa !27
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !26
  %i.ej = bitcast i64 %spec.select.i64 to double
  %i.ek = fcmp ult double %i.ej, %i.ap
  br i1 %i.ek, label %.lr.ph, label %.loopexit, !llvm.loop !546

.critedge:                                        ; preds = %.lr.ph, %.lr.ph98, %.split.us
  %.sroa.097.0 = phi i32 [ 1, %.split.us ], [ 0, %.lr.ph98 ], [ 0, %.lr.ph ]
  %.sroa.9.0 = phi i64 [ %.sroa.0.0.copyload.i.i63, %.split.us ], [ undef, %.lr.ph98 ], [ undef, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ag, %bb.ad, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split, %.critedge
  %.sroa.097.1 = phi i32 [ %.sroa.097.0, %.critedge ], [ 1, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split ], [ 1, %bb.ad ], [ 1, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us ], [ 1, %bb.ag ]
  %.sroa.9.1 = phi i64 [ %.sroa.9.0, %.critedge ], [ -4616189618054758400, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split ], [ -4616189618054758400, %bb.ad ], [ -4616189618054758400, %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit.split.us ], [ -4616189618054758400, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %.loopexit, %bb.j, %bb.h, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.a
  %.sroa.097.5 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 1, %bb.h ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %.sroa.097.1, %.loopexit ], [ 0, %bb.j ]
  %.sroa.9.5 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ -4616189618054758400, %bb.h ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ %.sroa.9.1, %.loopexit ], [ undef, %bb.j ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.097.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.5, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vmL15everySomeHelperERNS0_7RuntimeENS0_10NativeArgsEb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree noundef nonnull readonly captures(none) dead_on_return %1, i1 noundef zeroext %2) unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::MutableHandle.176", align 8 ; 5 uses
  %6 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 5 uses
  %7 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %0, ptr %3, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  store ptr %i.c, ptr %i.a, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !33
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !35
  store ptr %3, ptr %i.b, align 8, !tbaa !17
  %i.l = load ptr, ptr %1, align 8, !tbaa !14, !noalias !553
  %i.m = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %i.l) #9 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.aa, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { i32, i64 } %i.m, 1
  %i.q = or i64 %i.p, -281474976710656            ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !26   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d, !prof !28

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !26
  store i64 %i.q, ptr %i.t, align 8, !tbaa !29
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.y, %bb.d ] ; 5 uses
  %i.z = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 85, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #9 ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0
  %i.ab = extractvalue { i32, i64 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i32 %i.aa, 0
  br i1 %i.ac, label %bb.aa, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !28

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !26
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !29
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ab) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i50 = phi ptr [ %i.af, %bb.f ], [ %i.ak, %bb.g ]
  %i.al = call { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.0.i.i.i.i.i.i50) #9 ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 0
  %i.an = extractvalue { i32, i64 } %i.al, 1
  %i.ao = icmp eq i32 %i.am, 0
  br i1 %i.ao, label %bb.aa, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !88
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %1, align 8, !tbaa !14, !noalias !554
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.as, align 8, !tbaa !29 ; 2 uses
  %i.at = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.at, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.i
  %i.au = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = add i32 %i.aw, -1140850688
  %i.ay = icmp ult i32 %i.ax, 150994944
  %spec.select.i = select i1 %i.ay, ptr %i.as, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %bb.h, %bb.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.h ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.az = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !10 ; 2 uses
  %i.ba = icmp ugt i64 %i.az, -844424930131969
  %i.bb = and i64 %i.az, 281474976710655
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = and i1 %i.ba, %i.bc
  br i1 %i.bd, label %bb.j, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.be, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 52, ptr %i.bf, align 8, !tbaa !45
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bg, align 8, !tbaa !46
  store ptr @.str.20, ptr %4, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bh, align 8, !tbaa !48
  %i.bi = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.aa

bb.j:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !17  ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 192 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !26 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 200
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !27 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.k, label %bb.l, !prof !28

bb.k:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !26
  store i64 0, ptr %i.bl, align 8, !tbaa !29
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.l:                                             ; preds = %bb.j
  %i.bq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bj, i64 0) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !17  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre87 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !26
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre89 = load ptr, ptr %.phi.trans.insert88, align 8, !tbaa !27
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
end_hunk_0
