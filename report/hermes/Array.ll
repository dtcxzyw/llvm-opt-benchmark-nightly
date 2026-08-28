Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Array?download=true
inline.NumInlined: 3514
inline.NumDeleted: 769
begin_hunk_0_@_ZN6hermes2vm21arrayPrototypeReverseEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br i1 %i.cu, label %.critedge, label %bb.v, !prof !7

bb.v:                                             ; preds = %bb.u
  %i.cv = and i32 %i.ct, 256
  %.not202 = icmp eq i32 %i.cv, 0
  br i1 %.not202, label %.thread191, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i85, ptr %.0.i.i.i.i.i.i) #9 ; 2 uses
  %i.cx = extractvalue { i32, i64 } %i.cw, 0
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %.critedge, label %bb.x, !prof !7

bb.x:                                             ; preds = %bb.w
  %i.cz = extractvalue { i32, i64 } %i.cw, 1
  store i64 %i.cz, ptr %.0.i.i.i.i.i.i89, align 8, !tbaa !8
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.bx
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 128
  store i32 %i.bc, ptr %i.k, align 8, !tbaa !38
  store ptr %i.dd, ptr %i.j, align 8, !tbaa !30
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !21
  %i.de = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i84, ptr nonnull %.0.i.i.i.i.i.i89, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask205 = and i32 %i.de, 255
  %i.df = icmp eq i32 %.mask205, 0                ; 2 uses
  br i1 %.not, label %bb.aa, label %bb.y

.thread191:                                       ; preds = %bb.v
  br i1 %.not, label %bb.ad, label %.thread196

bb.y:                                             ; preds = %bb.x
  br i1 %i.df, label %.critedge, label %bb.z, !prof !7

bb.z:                                             ; preds = %bb.y
  %i.dg = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i85, ptr %.0.i.i.i.i.i.i87, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask208 = and i32 %i.dg, 255
  %i.dh = icmp eq i32 %.mask208, 0
  br i1 %i.dh, label %.critedge, label %bb.ad, !prof !7

bb.aa:                                            ; preds = %bb.x
  br i1 %i.df, label %.critedge, label %bb.ab, !prof !7

bb.ab:                                            ; preds = %bb.aa
  %i.di = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i85, i32 1) #9
  %.mask206 = and i32 %i.di, 255
  %i.dj = icmp eq i32 %.mask206, 0
  br i1 %i.dj, label %.critedge, label %bb.ad, !prof !7

.thread196:                                       ; preds = %.thread191
  %i.dk = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i84, i32 1) #9
  %.mask203 = and i32 %i.dk, 255
  %i.dl = icmp eq i32 %.mask203, 0
  br i1 %i.dl, label %.critedge, label %bb.ac, !prof !7

bb.ac:                                            ; preds = %.thread196
  %i.dm = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i85, ptr %.0.i.i.i.i.i.i87, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask204 = and i32 %i.dm, 255
  %i.dn = icmp eq i32 %.mask204, 0
  br i1 %i.dn, label %.critedge, label %bb.ad, !prof !7

bb.ad:                                            ; preds = %.thread191, %bb.ab, %bb.ac, %bb.z
  %i.do = load double, ptr %.0.i.i.i.i.i.i84, align 8, !tbaa !8
  %i.dp = fadd double %i.do, 1.000000e+00         ; 2 uses
  %i.dq = fcmp uno double %i.dp, 0.000000e+00
  %i.dr = bitcast double %i.dp to i64
  %.sroa.0.0.i132 = select i1 %i.dq, i64 9221120237041090560, i64 %i.dr, !prof !7 ; 2 uses
  store i64 %.sroa.0.0.i132, ptr %.0.i.i.i.i.i.i84, align 8, !tbaa !8
  %.cast = bitcast i64 %.sroa.0.0.i132 to double  ; 2 uses
  %i.ds = fcmp une double %.cast, %i.bu
  br i1 %i.ds, label %bb.q, label %._crit_edge, !llvm.loop !273

._crit_edge:                                      ; preds = %bb.ad, %bb.p
  %.sroa.0.0.copyload.i133 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %bb.s, %bb.u, %bb.y, %bb.z, %bb.aa, %bb.ab, %.thread196, %bb.ac, %bb.q, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit90, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %._crit_edge, %bb.a
  %.sroa.0187.9 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit90 ], [ 1, %._crit_edge ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %bb.q ], [ 0, %bb.ac ], [ 0, %.thread196 ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.u ], [ 0, %bb.s ], [ 0, %bb.w ]
  %.sroa.15.2 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit90 ], [ %.sroa.0.0.copyload.i133, %._crit_edge ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %bb.q ], [ undef, %bb.ac ], [ undef, %.thread196 ], [ undef, %bb.ab ], [ undef, %bb.aa ], [ undef, %bb.z ], [ undef, %bb.y ], [ undef, %bb.u ], [ undef, %bb.s ], [ undef, %bb.w ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0187.9, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.15.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm22arrayPrototypeIncludesEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.c, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !36
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !38
  store ptr %3, ptr %i.b, align 8, !tbaa !18
  %i.l = load ptr, ptr %2, align 8, !tbaa !11, !noalias !274
  %i.m = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.l) #9 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.critedge, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.p = extractvalue { i32, i64 } %i.m, 1
  %i.q = or i64 %i.p, -281474976710656            ; 2 uses
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !21
  store i64 %i.q, ptr %i.t, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.y = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.q) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.y, %bb.d ] ; 4 uses
  %i.z = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #9 ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.z, 0
  %i.ab = extractvalue { i32, i64 } %i.z, 1       ; 2 uses
  %i.ac = icmp eq i32 %i.aa, 0
  br i1 %i.ac, label %.critedge, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !31

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !21
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ab) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i43.a = phi ptr [ %i.af, %bb.f ], [ %i.ak, %bb.g ]
  %i.al = call { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i43.a) #9 ; 2 uses
  %i.am = extractvalue { i32, i64 } %i.al, 0
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.critedge, label %bb.h, !prof !7

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ao = extractvalue { i32, i64 } %i.al, 1      ; 2 uses
  %i.ap = uitofp i64 %i.ao to double              ; 3 uses
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !101
  %i.at = icmp ugt i32 %i.as, 1
  %i.au = load ptr, ptr %2, align 8
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -16
  %.sroa.02.0.i = select i1 %i.at, ptr %i.av, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.aw = call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #9 ; 2 uses
  %i.ax = extractvalue { i32, i64 } %i.aw, 0
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.critedge, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.az = extractvalue { i32, i64 } %i.aw, 1
  %i.ba = bitcast i64 %i.az to double             ; 3 uses
  %i.bb = fcmp ult double %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = fadd double %i.ap, %i.ba                ; 2 uses
  %i.bd = fcmp olt double %i.bc, 0.000000e+00
  %spec.store.select = select i1 %i.bd, double 0.000000e+00, double %i.bc
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.038 = phi double [ %spec.store.select, %bb.k ], [ %i.ba, %bb.j ] ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 192 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !21 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 200
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !30
  %i.bj = icmp ult ptr %i.bg, %i.bi
  br i1 %i.bj, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bk, ptr %i.bf, align 8, !tbaa !21
  store i64 -1688849860263936, ptr %i.bg, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.be, i64 -1688849860263936) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i44 = phi ptr [ %i.bg, %bb.m ], [ %i.bl, %bb.n ] ; 2 uses
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.bn = load i32, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = fcmp olt double %.038, %i.ap
  br i1 %i.bp, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.q
  %.162 = phi double [ %i.ce, %bb.q ], [ %.038, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ] ; 3 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bo
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !42
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  store i32 %i.bn, ptr %i.k, align 8, !tbaa !38
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !30
  store ptr %i.bm, ptr %i.i, align 8, !tbaa !21
  %i.bu = fcmp uno double %.162, 0.000000e+00
  %i.bv = bitcast double %.162 to i64
  %.sroa.0.0.i.a = select i1 %i.bu, i64 9221120237041090560, i64 %i.bv, !prof !7
  store i64 %.sroa.0.0.i.a, ptr %.0.i.i.i.i.i.i44, align 8, !tbaa !8
  %i.bw = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i44, ptr %.0.i.i.i.i.i.i) #9 ; 2 uses
  %i.bx = extractvalue { i32, i64 } %i.bw, 0
  %i.by = extractvalue { i32, i64 } %i.bw, 1
  %i.bz = icmp eq i32 %i.bx, 0
  br i1 %i.bz, label %.critedge, label %bb.o, !prof !7

bb.o:                                             ; preds = %.lr.ph
  %i.ca = load i32, ptr %i.ar, align 8, !tbaa !101
  %.not = icmp eq i32 %i.ca, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %2, align 8, !tbaa !11, !noalias !277
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.cc, align 8, !tbaa !32
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.o, %bb.p
  %.sroa.0.0.i45 = phi i64 [ %.sroa.0.0.copyload.i, %bb.p ], [ -1688849860263936, %bb.o ]
  %i.cd = call noundef zeroext i1 @_ZN6hermes2vm15isSameValueZeroENS0_11HermesValueES1_(i64 %.sroa.0.0.i45, i64 %i.by) #9
  br i1 %i.cd, label %.critedge, label %bb.q

bb.q:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.ce = fadd double %.162, 1.000000e+00         ; 2 uses
  %i.cf = fcmp olt double %i.ce, %i.ap
  br i1 %i.cf, label %.lr.ph, label %.critedge, !llvm.loop !280

.critedge:                                        ; preds = %bb.q, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %.lr.ph, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %bb.i, %bb.h, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.a
  %.sroa.061.5 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 1, %bb.h ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %bb.i ], [ 1, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ 1, %bb.q ], [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ 0, %.lr.ph ]
  %.sroa.9.5 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ -1407374883553280, %bb.h ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %bb.i ], [ -1407374883553280, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ -1407374883553280, %bb.q ], [ -1407374883553279, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ -1407374883553279, %.lr.ph ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.061.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.5, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm7arrayOfEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.c, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !36
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 3 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !38
  store ptr %3, ptr %i.b, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !101  ; 6 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !11, !noalias !281 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.o, ptr %i.i, align 8, !tbaa !21
  store i64 -281474976710656, ptr %i.e, align 8, !tbaa !32
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.n, align 8, !tbaa !32
  %i.p = call i32 @_ZN6hermes2vm13isConstructorERNS0_7RuntimeENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %.sroa.0.0.copyload.i.i.i) #9 ; 2 uses
  %.mask = and i32 %i.p, 255
  %i.q = icmp eq i32 %.mask, 0
  br i1 %i.q, label %.thread, label %bb.a, !prof !7

bb.a:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_8JSObjectEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.r = and i32 %i.p, 256
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = uitofp i32 %i.m to double                ; 2 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !18   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 192 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !21   ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 200
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.y = icmp ult ptr %i.v, %i.x
  br i1 %i.y, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.u, align 8, !tbaa !21
  store double %i.s, ptr %i.v, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = bitcast double %i.s to i64
  %i.ab = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.t, i64 %i.aa) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i38 = phi ptr [ %i.v, %bb.c ], [ %i.ab, %bb.d ]
  %i.ac = call { i32, i64 } @_ZN6hermes2vm8Callable17executeConstruct1ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEE(ptr nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i38) #9 ; 2 uses
  %i.ad = extractvalue { i32, i64 } %i.ac, 0
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.thread, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.af = extractvalue { i32, i64 } %i.ac, 1
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.ag = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.m, i32 noundef %i.m) #9 ; 2 uses
  %.not88 = icmp eq ptr %i.ag, inttoptr (i64 -1 to ptr)
  br i1 %.not88, label %.thread, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i = load i64, ptr %i.ag, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %storemerge.in = phi i64 [ %.sroa.0.0.copyload.i, %bb.g ], [ %i.af, %bb.e ]
  %storemerge = or i64 %storemerge.in, -281474976710656
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !8
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !18  ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 192 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 200
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.ai, align 8, !tbaa !21
  store i64 0, ptr %i.aj, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.j:                                             ; preds = %bb.h
  %i.ao = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ah, i64 0) #9
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre91 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre93.a = load ptr, ptr %.phi.trans.insert92, align 8, !tbaa !30
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.i, %bb.j
  %i.ap = phi ptr [ %i.al, %bb.i ], [ %.pre93.a, %bb.j ]
  %i.aq = phi ptr [ %i.an, %bb.i ], [ %.pre91, %bb.j ] ; 4 uses
  %i.ar = phi ptr [ %i.ah, %bb.i ], [ %.pre, %bb.j ] ; 2 uses
  %.0.i.i.i.i.i.i39 = phi ptr [ %i.aj, %bb.i ], [ %i.ao, %bb.j ] ; 4 uses
  %i.as = icmp ult ptr %i.aq, %i.ap
  br i1 %i.as, label %bb.k, label %bb.l, !prof !31

bb.k:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.au, ptr %i.at, align 8, !tbaa !21
  store i64 -1688849860263936, ptr %i.aq, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit41
end_hunk_0
