Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RegExp?download=true
inline.NumInlined: 2505
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6hermes2vm28regExpPrototypeSymbolReplaceEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.hf = or i64 %i.hc, -281474976710656
  store i64 %i.hf, ptr %.0.i.i.i.i.i.i258, align 8, !tbaa !30
  %i.hg = load ptr, ptr %5, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i259.us636 = load i64, ptr %i.hg, align 8, !tbaa !32
  %i.hh = and i64 %.sroa.0.0.copyload.i.i259.us636, 281474976710655
  %i.hi = inttoptr i64 %i.hh to ptr
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 4
  %i.hk = load atomic i32, ptr %i.hj monotonic, align 4
  %i.hl = icmp eq i32 %i.hk, 1027070
  br i1 %i.hl, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit261, label %bb.al, !prof !31

bb.al:                                            ; preds = %bb.ak
  %i.hm = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i258)
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %.critedge240.thread, label %.critedge240.us637, !prof !31

.critedge240.us637:                               ; preds = %bb.al
  %i.ho = getelementptr inbounds nuw i8, ptr %i.dv, i64 144
  %i.hp = zext i32 %i.dz to i64
  %i.hq = load ptr, ptr %i.ho, align 8, !tbaa !57
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hq, i64 %i.hp
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !92
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 128
  store i32 %i.dz, ptr %i.dy, align 8, !tbaa !60
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dv, i64 200
  store ptr %i.ht, ptr %i.hu, align 8, !tbaa !53
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !52
  br label %.loopexit

.critedge240.thread468:                           ; preds = %.lr.ph, %bb.aj
  %.us-phi605 = phi ptr [ %i.dv, %bb.aj ], [ %i.eh, %.lr.ph ] ; 2 uses
  %.us-phi606 = phi ptr [ %i.dw, %bb.aj ], [ %i.eg, %.lr.ph ]
  %.us-phi607 = phi ptr [ %i.dx, %bb.aj ], [ %i.ef, %.lr.ph ]
  %.us-phi608 = phi ptr [ %i.dy, %bb.aj ], [ %i.ee, %.lr.ph ]
  %.us-phi609 = phi i32 [ %i.dz, %bb.aj ], [ %i.ed, %.lr.ph ] ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.us-phi605, i64 144
  %i.hw = zext i32 %.us-phi609 to i64
  %i.hx = load ptr, ptr %i.hv, align 8, !tbaa !57
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hw
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !92
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 128
  store i32 %.us-phi609, ptr %.us-phi608, align 8, !tbaa !60
  %i.ib = getelementptr inbounds nuw i8, ptr %.us-phi605, i64 200
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !53
  store ptr %.us-phi607, ptr %.us-phi606, align 8, !tbaa !52
  br label %.loopexit

_ZN6hermes2vm11TwineChar16C2EPKc.exit261:         ; preds = %bb.x, %bb.ak
  %.us-phi610 = phi ptr [ %i.dv, %bb.ak ], [ %i.eh, %bb.x ]
  %.us-phi611 = phi ptr [ %i.dw, %bb.ak ], [ %i.eg, %bb.x ]
  %.us-phi612 = phi ptr [ %i.dx, %bb.ak ], [ %i.ef, %bb.x ]
  %.us-phi613 = phi ptr [ %i.dy, %bb.ak ], [ %i.ee, %bb.x ]
  %.us-phi614 = phi i32 [ %i.dz, %bb.ak ], [ %i.ed, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.ic = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.ic, align 8, !tbaa !36
  %i.id = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 33, ptr %i.id, align 8, !tbaa !37
  %i.ie = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.ie, align 8, !tbaa !38
  store ptr @.str.11, ptr %6, align 8, !tbaa !39
  %i.if = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.if, align 8, !tbaa !40
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
  %i.io = load ptr, ptr %i.im, align 8, !tbaa !57
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.in
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !92
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 128
  store i32 %i.il, ptr %i.ik, align 8, !tbaa !60
  %i.is = getelementptr inbounds nuw i8, ptr %i.ih, i64 200
  store ptr %i.ir, ptr %i.is, align 8, !tbaa !53
  store ptr %i.ij, ptr %i.ii, align 8, !tbaa !52
  br label %bb.dl

.loopexit:                                        ; preds = %.critedge240.us637, %.critedge240.thread468
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.it = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.it, ptr %7, align 8, !tbaa !57
  %i.iu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i32 0, ptr %i.iu, align 8, !tbaa !59
  %i.iv = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 32, ptr %i.iv, align 4, !tbaa !58
  %i.iw = load ptr, ptr %i.b, align 8, !tbaa !43  ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 192 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !52 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 200
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !53 ; 2 uses
  %i.jb = icmp ult ptr %i.iy, %i.ja
  br i1 %i.jb, label %bb.am, label %bb.an, !prof !54

bb.am:                                            ; preds = %.loopexit
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 2 uses
  store ptr %i.jc, ptr %i.ix, align 8, !tbaa !52
  store i64 -1688849860263936, ptr %i.iy, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268

bb.an:                                            ; preds = %.loopexit
  %i.jd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.iw, i64 -1688849860263936) #12
  %.pre787 = load ptr, ptr %i.b, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert788 = getelementptr inbounds nuw i8, ptr %.pre787, i64 192
  %.pre789 = load ptr, ptr %.phi.trans.insert788, align 8, !tbaa !52
  %.phi.trans.insert790 = getelementptr inbounds nuw i8, ptr %.pre787, i64 200
  %.pre791 = load ptr, ptr %.phi.trans.insert790, align 8, !tbaa !53
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268: ; preds = %bb.am, %bb.an
  %i.je = phi ptr [ %i.ja, %bb.am ], [ %.pre791, %bb.an ]
  %i.jf = phi ptr [ %i.jc, %bb.am ], [ %.pre789, %bb.an ] ; 4 uses
  %i.jg = phi ptr [ %i.iw, %bb.am ], [ %.pre787, %bb.an ] ; 2 uses
  %.0.i.i.i.i.i.i267 = phi ptr [ %i.iy, %bb.am ], [ %i.jd, %bb.an ] ; 2 uses
  %i.jh = icmp ult ptr %i.jf, %i.je
  br i1 %i.jh, label %bb.ao, label %bb.ap, !prof !54

bb.ao:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 192
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  store ptr %i.jj, ptr %i.ji, align 8, !tbaa !52
  store i64 -1688849860263936, ptr %i.jf, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270

bb.ap:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit268
  %i.jk = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.jg, i64 -1688849860263936) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i.i.i.i269 = phi ptr [ %i.jf, %bb.ao ], [ %i.jk, %bb.ap ] ; 2 uses
  %i.jl = load ptr, ptr %5, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i271 = load i64, ptr %i.jl, align 8, !tbaa !32
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
  %i.jz = extractvalue { ptr, i64 } %i.dr, 0
  %i.ka = getelementptr inbounds nuw i8, ptr %10, i64 8
  %wide.trip.count = zext i32 %i.jp to i64
  br label %bb.aq

bb.aq:                                            ; preds = %.lr.ph686, %bb.dg
  %indvars.iv = phi i64 [ 0, %.lr.ph686 ], [ %indvars.iv.next, %bb.dg ] ; 2 uses
  %.0210685 = phi i32 [ 0, %.lr.ph686 ], [ %.4214, %bb.dg ] ; 4 uses
  %i.kb = load ptr, ptr %i.b, align 8, !tbaa !43  ; 8 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 192 ; 4 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !52 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 208 ; 4 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !60 ; 6 uses
  %i.kg = load ptr, ptr %5, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i273 = load i64, ptr %i.kg, align 8, !tbaa !32
  %i.kh = and i64 %.sroa.0.0.copyload.i.i273, 281474976710655
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kj, i64 %indvars.iv
  %.sroa.0.0.copyload.i274 = load i32, ptr %i.kk, align 4, !tbaa !6 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i274, 0
  %i.kl = zext i32 %.sroa.0.0.copyload.i274 to i64
  %i.km = add i64 %i.kl, %i.du
  %i.kn = or i64 %i.km, -281474976710656
  %i.ko = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.kn
  store i64 %i.ko, ptr %.0.i.i.i.i.i.i258, align 8, !tbaa !30
  %i.kp = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr nonnull %.0.i.i.i.i.i.i258, i32 0, ptr noundef null) #12 ; 2 uses
  %i.kq = extractvalue { i32, i64 } %i.kp, 0
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %.thread511, label %bb.ar, !prof !31

bb.ar:                                            ; preds = %bb.aq
  %i.ks = extractvalue { i32, i64 } %i.kp, 1
  store i64 %i.ks, ptr %.0.i.i.i.i.i.i267, align 8, !tbaa !30
  %i.kt = call { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i267) #12 ; 2 uses
  %i.ku = extractvalue { i32, i64 } %i.kt, 0
  %i.kv = icmp eq i32 %i.ku, 0
  br i1 %i.kv, label %.thread511, label %bb.as, !prof !31

bb.as:                                            ; preds = %bb.ar
  %i.kw = extractvalue { i32, i64 } %i.kt, 1
  %i.kx = bitcast i64 %i.kw to double
  %i.ky = fptoui double %i.kx to i64              ; 2 uses
  %i.kz = call i64 @llvm.usub.sat.i64(i64 %i.ky, i64 1) ; 4 uses
  %i.la = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner10zeroValue_E, ptr nonnull %.0.i.i.i.i.i.i258) #12 ; 2 uses
  %i.lb = extractvalue { i32, i64 } %i.la, 0
  %i.lc = extractvalue { i32, i64 } %i.la, 1      ; 2 uses
  %i.ld = icmp eq i32 %i.lb, 0
  br i1 %i.ld, label %.thread511, label %bb.at, !prof !31

bb.at:                                            ; preds = %bb.as
  %i.le = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 192 ; 2 uses
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !52 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 200
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !53
  %i.lj = icmp ult ptr %i.lg, %i.li
  br i1 %i.lj, label %bb.au, label %bb.av, !prof !54

bb.au:                                            ; preds = %bb.at
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  store ptr %i.lk, ptr %i.lf, align 8, !tbaa !52
  store i64 %i.lc, ptr %i.lg, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.av:                                            ; preds = %bb.at
  %i.ll = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.le, i64 %i.lc) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.au, %bb.av
  %.0.i.i.i.i.i.i277 = phi ptr [ %i.lg, %bb.au ], [ %i.ll, %bb.av ]
  %i.lm = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i277) #12 ; 2 uses
  %.not521 = icmp eq ptr %i.lm, inttoptr (i64 -1 to ptr)
  br i1 %.not521, label %.thread511, label %bb.aw, !prof !31

bb.aw:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ln = ptrtoint ptr %i.lm to i64
  %i.lo = or i64 %i.ln, -844424930131968          ; 3 uses
  %i.lp = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 192 ; 2 uses
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !52 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 200
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !53
  %i.lu = icmp ult ptr %i.lr, %i.lt
  br i1 %i.lu, label %bb.ax, label %bb.ay, !prof !54

bb.ax:                                            ; preds = %bb.aw
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  store ptr %i.lv, ptr %i.lq, align 8, !tbaa !52
  store i64 %i.lo, ptr %i.lr, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279

bb.ay:                                            ; preds = %bb.aw
  %i.lw = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.lp, i64 %i.lo) #12 ; 2 uses
  %.sroa.0.0.copyload.i.i280.pre = load i64, ptr %i.lw, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279: ; preds = %bb.ax, %bb.ay
  %.sroa.0.0.copyload.i.i280 = phi i64 [ %i.lo, %bb.ax ], [ %.sroa.0.0.copyload.i.i280.pre, %bb.ay ]
  %.0.i.i.i.i.i.i278 = phi ptr [ %i.lr, %bb.ax ], [ %i.lw, %bb.ay ] ; 2 uses
  %i.lx = and i64 %.sroa.0.0.copyload.i.i280, 281474976710655
  %i.ly = inttoptr i64 %i.lx to ptr
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !91
  %i.mb = and i32 %i.ma, 2147483647
  %i.mc = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 329, ptr nonnull %.0.i.i.i.i.i.i258, i32 0, ptr noundef null) #12 ; 2 uses
  %i.md = extractvalue { i32, i64 } %i.mc, 0
  %i.me = extractvalue { i32, i64 } %i.mc, 1      ; 2 uses
  %i.mf = icmp eq i32 %i.md, 0
  br i1 %i.mf, label %.thread511, label %bb.az, !prof !31

bb.az:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279
  %i.mg = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 192 ; 2 uses
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !52 ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mg, i64 200
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !53
  %i.ml = icmp ult ptr %i.mi, %i.mk
  br i1 %i.ml, label %bb.ba, label %bb.bb, !prof !54

bb.ba:                                            ; preds = %bb.az
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store ptr %i.mm, ptr %i.mh, align 8, !tbaa !52
  store i64 %i.me, ptr %i.mi, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283

bb.bb:                                            ; preds = %bb.az
  %i.mn = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.mg, i64 %i.me) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283: ; preds = %bb.ba, %bb.bb
  %.0.i.i.i.i.i.i282 = phi ptr [ %i.mi, %bb.ba ], [ %i.mn, %bb.bb ]
  %i.mo = call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i282) #12 ; 2 uses
  %i.mp = extractvalue { i32, i64 } %i.mo, 0
  %i.mq = icmp eq i32 %i.mp, 0
  br i1 %i.mq, label %.thread511, label %bb.bc, !prof !31

bb.bc:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283
  %i.mr = extractvalue { i32, i64 } %i.mo, 1
  %i.ms = bitcast i64 %i.mr to double
  %i.mt = call nsz double @llvm.minnum.f64(double %i.ms, double %i.jq)
  %i.mu = call nsz double @llvm.maxnum.f64(double %i.mt, double 0.000000e+00)
  %i.mv = fptosi double %i.mu to i64
  %i.mw = trunc i64 %i.mv to i32                  ; 5 uses
  %i.mx = icmp ugt i64 %i.kz, 1027070
  br i1 %i.mx, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit285, label %bb.bd, !prof !31

_ZN6hermes2vm11TwineChar16C2EPKc.exit285:         ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.my = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.my, align 8, !tbaa !36
  %i.mz = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 33, ptr %i.mz, align 8, !tbaa !37
  %i.na = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.na, align 8, !tbaa !38
  store ptr @.str.12, ptr %8, align 8, !tbaa !39
  %i.nb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.nb, align 8, !tbaa !40
  %i.nc = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br label %.thread511

bb.bd:                                            ; preds = %bb.bc
  %i.nd = trunc nuw nsw i64 %i.kz to i32
  %i.ne = shl nuw nsw i32 %i.nd, 2
  %i.nf = add nuw nsw i32 %i.ne, 12
  %i.ng = and i32 %i.nf, 8388600                  ; 3 uses
  %i.nh = load ptr, ptr %i.ce, align 8, !tbaa !65 ; 2 uses
  %i.ni = zext nneg i32 %i.ng to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.ni ; 2 uses
  %i.nk = load ptr, ptr %i.ch, align 8, !tbaa !66
  %.not.i.not.i.i.i.i.i.i286 = icmp ugt ptr %i.nj, %i.nk
  br i1 %.not.i.not.i.i.i.i.i.i286, label %bb.be, label %bb.bf, !prof !31

bb.be:                                            ; preds = %bb.bd
  %i.nl = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dt, i32 noundef %i.ng) #12
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread

bb.bf:                                            ; preds = %bb.bd
  store ptr %i.nj, ptr %i.ce, align 8, !tbaa !65
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread: ; preds = %bb.be, %bb.bf
  %i.nm = phi ptr [ %i.nl, %bb.be ], [ %i.nh, %bb.bf ] ; 3 uses
  store i64 0, ptr %i.nm, align 4
  %i.nn = or disjoint i32 %i.ng, 251658240
  store i32 %i.nn, ptr %i.nm, align 4, !tbaa !39
  %i.no = ptrtoint ptr %i.nm to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %i.np = or i64 %i.no, -281474976710656          ; 2 uses
  %i.nq = load ptr, ptr %i.b, align 8, !tbaa !43  ; 4 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 192 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !52 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nq, i64 200
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !53 ; 2 uses
  %i.nv = icmp ult ptr %i.ns, %i.nu
  br i1 %i.nv, label %bb.bg, label %bb.bh, !prof !54

bb.bg:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 2 uses
  store ptr %i.nw, ptr %i.nr, align 8, !tbaa !52
  store i64 %i.np, ptr %i.ns, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit291

bb.bh:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit289.thread
  %i.nx = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.nq, i64 %i.np) #12
  %.pre793 = load ptr, ptr %i.b, align 8, !tbaa !43 ; 3 uses
  %.phi.trans.insert794 = getelementptr inbounds nuw i8, ptr %.pre793, i64 192
  %.pre795 = load ptr, ptr %.phi.trans.insert794, align 8, !tbaa !52
  %.phi.trans.insert796 = getelementptr inbounds nuw i8, ptr %.pre793, i64 200
  %.pre797 = load ptr, ptr %.phi.trans.insert796, align 8, !tbaa !53
  br label %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit291

_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit291: ; preds = %bb.bg, %bb.bh
  %i.ny = phi ptr [ %i.nu, %bb.bg ], [ %.pre797, %bb.bh ]
  %i.nz = phi ptr [ %i.nw, %bb.bg ], [ %.pre795, %bb.bh ] ; 4 uses
  %i.oa = phi ptr [ %i.nq, %bb.bg ], [ %.pre793, %bb.bh ] ; 2 uses
  %.0.i.i.i.i.i.i290 = phi ptr [ %i.ns, %bb.bg ], [ %i.nx, %bb.bh ]
  store ptr %.0.i.i.i.i.i.i290, ptr %9, align 8, !tbaa !96
  %i.ob = icmp ult ptr %i.nz, %i.ny
  br i1 %i.ob, label %bb.bi, label %bb.bj, !prof !54

bb.bi:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit291
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 192
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store ptr %i.od, ptr %i.oc, align 8, !tbaa !52
  store i64 -1688849860263936, ptr %i.nz, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit293

bb.bj:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEC2ERNS0_15HandleRootOwnerEPS4_.exit291
  %i.oe = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.oa, i64 -1688849860263936) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit293

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit293: ; preds = %bb.bi, %bb.bj
  %.0.i.i.i.i.i.i292 = phi ptr [ %i.nz, %bb.bi ], [ %i.oe, %bb.bj ] ; 4 uses
  %.not673 = icmp ult i64 %i.ky, 2
  br i1 %.not673, label %._crit_edge, label %.lr.ph675

.lr.ph675:                                        ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit293, %bb.cb
  %.0225674 = phi i64 [ %i.rc, %bb.cb ], [ 1, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit293 ] ; 3 uses
  %i.of = load ptr, ptr %i.b, align 8, !tbaa !43  ; 6 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 192 ; 3 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !52 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 208 ; 3 uses
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !60 ; 4 uses
  %i.ok = uitofp nneg i64 %.0225674 to double
  store double %i.ok, ptr %.0.i.i.i.i.i.i269, align 8, !tbaa !30
  %i.ol = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i269, ptr nonnull %.0.i.i.i.i.i.i258) #12 ; 2 uses
  %i.om = extractvalue { i32, i64 } %i.ol, 0
  %i.on = icmp eq i32 %i.om, 0
  br i1 %i.on, label %.thread480, label %bb.bk, !prof !31

bb.bk:                                            ; preds = %.lr.ph675
  %i.oo = extractvalue { i32, i64 } %i.ol, 1      ; 3 uses
  store i64 %i.oo, ptr %.0.i.i.i.i.i.i292, align 8, !tbaa !30
  %.mask.i296 = and i64 %i.oo, -140737488355328
  %i.op = icmp eq i64 %.mask.i296, -1688849860263936
  br i1 %i.op, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oq = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i292) #12 ; 2 uses
  %.not522 = icmp eq ptr %i.oq, inttoptr (i64 -1 to ptr)
  br i1 %.not522, label %.thread480, label %bb.bm, !prof !31

bb.bm:                                            ; preds = %bb.bl
  %i.or = ptrtoint ptr %i.oq to i64
  %i.os = or i64 %i.or, -844424930131968          ; 2 uses
  store i64 %i.os, ptr %.0.i.i.i.i.i.i292, align 8, !tbaa !30
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.0.0.copyload.i.i17.i = phi i64 [ %i.os, %bb.bm ], [ %i.oo, %bb.bk ] ; 9 uses
  %i.ot = load ptr, ptr %9, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ot, align 8, !tbaa !32
  %i.ou = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ov = inttoptr i64 %i.ou to ptr               ; 9 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 4
  %i.ox = load atomic i32, ptr %i.ow monotonic, align 4 ; 3 uses
  %i.oy = ashr i64 %.sroa.0.0.copyload.i.i17.i, 47
  switch i64 %i.oy, label %bb.bu [
    i64 -1, label %bb.bt
    i64 -12, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i
    i64 -11, label %bb.bo
    i64 -10, label %bb.bp
    i64 -9, label %bb.bq
    i64 -6, label %bb.br
    i64 -5, label %bb.br
    i64 -4, label %bb.bs
    i64 -3, label %bb.bs
    i64 -2, label %bb.bt
  ]

bb.bo:                                            ; preds = %bb.bn
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

bb.bp:                                            ; preds = %bb.bn
  %i.oz = trunc i64 %.sroa.0.0.copyload.i.i17.i to i1
  %i.pa = select i1 %i.oz, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

bb.bq:                                            ; preds = %bb.bn
  %i.pb = trunc i64 %.sroa.0.0.copyload.i.i17.i to i32
  %i.pc = shl i32 %i.pb, 3
  %i.pd = or disjoint i32 %i.pc, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

bb.br:                                            ; preds = %bb.bn, %bb.bn
  %i.pe = sub i64 %.sroa.0.0.copyload.i.i17.i, %i.du
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = or i32 %i.pf, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

bb.bs:                                            ; preds = %bb.bn, %bb.bn
  %i.ph = sub i64 %.sroa.0.0.copyload.i.i17.i, %i.du
  %i.pi = trunc i64 %i.ph to i32
  %i.pj = or i32 %i.pi, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

bb.bt:                                            ; preds = %bb.bn, %bb.bn
  %i.pk = sub i64 %.sroa.0.0.copyload.i.i17.i, %i.du
  %i.pl = trunc i64 %i.pk to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

bb.bu:                                            ; preds = %bb.bn
  %i.pm = bitcast i64 %.sroa.0.0.copyload.i.i17.i to double
  %i.pn = fptosi double %i.pm to i32
  %i.po = shl i32 %i.pn, 3                        ; 2 uses
  %i.pp = ashr exact i32 %i.po, 3
  %i.pq = sitofp i32 %i.pp to double
  %i.pr = bitcast double %i.pq to i64
  %i.ps = icmp eq i64 %.sroa.0.0.copyload.i.i17.i, %i.pr
  br i1 %i.ps, label %bb.bv, label %bb.bw, !prof !54

bb.bv:                                            ; preds = %bb.bu
  %i.pt = or disjoint i32 %i.po, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.pu = load ptr, ptr %i.ce, align 8, !tbaa !65 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  %i.pw = load ptr, ptr %i.ch, align 8, !tbaa !66
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp ugt ptr %i.pv, %i.pw
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.by, !prof !31

bb.bx:                                            ; preds = %bb.bw
  %i.px = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.dt, i32 noundef 16) #12
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.i

bb.by:                                            ; preds = %bb.bw
  store ptr %i.pv, ptr %i.ce, align 8, !tbaa !65
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.i: ; preds = %bb.by, %bb.bx
  %i.py = phi ptr [ %i.px, %bb.bx ], [ %i.pu, %bb.by ] ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  store i64 %.sroa.0.0.copyload.i.i17.i, ptr %i.pz, align 8, !tbaa !70
  store i32 402653200, ptr %i.py, align 8, !tbaa !39
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = sub i64 %i.qa, %i.du
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = or i32 %i.qc, 3
  %.pre.i = load ptr, ptr %9, align 8, !tbaa !96
  %.sroa.0.0.copyload.i.i18.pre.i = load i64, ptr %.pre.i, align 8, !tbaa !32
  %.pre20.i = and i64 %.sroa.0.0.copyload.i.i18.pre.i, 281474976710655
  %.pre21.i = inttoptr i64 %.pre20.i to ptr
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i: ; preds = %bb.bn, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.i, %bb.bv, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.pre-phi22.i = phi ptr [ %.pre21.i, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.i ], [ %i.ov, %bb.bv ], [ %i.ov, %bb.bo ], [ %i.ov, %bb.bp ], [ %i.ov, %bb.bq ], [ %i.ov, %bb.br ], [ %i.ov, %bb.bs ], [ %i.ov, %bb.bt ], [ %i.ov, %bb.bn ] ; 3 uses
  %.sroa.04.0.i.i = phi i32 [ %i.qd, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i.i ], [ %i.pt, %bb.bv ], [ 15, %bb.bo ], [ %i.pa, %bb.bp ], [ %i.pd, %bb.bq ], [ %i.pg, %bb.br ], [ %i.pj, %bb.bs ], [ %i.pl, %bb.bt ], [ 14, %bb.bn ] ; 2 uses
  %i.qe = load i32, ptr %.pre-phi22.i, align 4
  %i.qf = and i32 %i.qe, 16777212
  %i.qg = add nsw i32 %i.qf, -8
  %i.qh = lshr exact i32 %i.qg, 2
  %i.qi = icmp ult i32 %i.ox, %i.qh
  br i1 %i.qi, label %bb.bz, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, !prof !54

bb.bz:                                            ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i
  %i.qj = getelementptr inbounds nuw i8, ptr %.pre-phi22.i, i64 8
  %i.qk = zext nneg i32 %i.ox to i64
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qj, i64 %i.qk ; 3 uses
  store i32 %.sroa.04.0.i.i, ptr %i.ql, align 4, !tbaa !6
  %i.qm = load ptr, ptr %i.jr, align 8, !tbaa !97
  %i.qn = ptrtoint ptr %i.ql to i64
  %i.qo = and i64 %i.qn, 1125899902648320
  %i.qp = inttoptr i64 %i.qo to ptr
  %i.qq = icmp eq ptr %i.qm, %i.qp
  br i1 %i.qq, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, label %bb.ca, !prof !54

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.dt, ptr noundef nonnull align 4 dereferenceable(4) %i.ql, i32 %.sroa.04.0.i.i) #12
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.bz, %bb.ca
  %i.qr = getelementptr inbounds nuw i8, ptr %.pre-phi22.i, i64 4
  %i.qs = add nuw nsw i32 %i.ox, 1
  store atomic i32 %i.qs, ptr %i.qr release, align 4
  br label %bb.cb

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit.i
  %i.qt = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i292) #12
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %.thread480, label %bb.cb, !prof !98

.thread480:                                       ; preds = %.lr.ph675, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %bb.bl
  %i.qv = getelementptr inbounds nuw i8, ptr %i.of, i64 144
  %i.qw = zext i32 %i.oj to i64
  %i.qx = load ptr, ptr %i.qv, align 8, !tbaa !57
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.qx, i64 %i.qw
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !92
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 128
  store i32 %i.oj, ptr %i.oi, align 8, !tbaa !60
  %i.rb = getelementptr inbounds nuw i8, ptr %i.of, i64 200
  store ptr %i.ra, ptr %i.rb, align 8, !tbaa !53
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !52
  br label %.thread490

bb.cb:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.rc = add nuw nsw i64 %.0225674, 1
  %i.rd = getelementptr inbounds nuw i8, ptr %i.of, i64 144
  %i.re = zext i32 %i.oj to i64
  %i.rf = load ptr, ptr %i.rd, align 8, !tbaa !57
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %i.re
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !92
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rh, i64 128
  store i32 %i.oj, ptr %i.oi, align 8, !tbaa !60
  %i.rj = getelementptr inbounds nuw i8, ptr %i.of, i64 200
  store ptr %i.ri, ptr %i.rj, align 8, !tbaa !53
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !52
  %.not.not = icmp ult i64 %.0225674, %i.kz
  br i1 %.not.not, label %.lr.ph675, label %._crit_edge, !llvm.loop !169

._crit_edge:                                      ; preds = %bb.cb, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit293
  %i.rk = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 192 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !52 ; 4 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 200
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !53
  %i.rp = icmp ult ptr %i.rm, %i.ro
  br i1 %i.rp, label %bb.cc, label %bb.cd, !prof !54

bb.cc:                                            ; preds = %._crit_edge
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  store ptr %i.rq, ptr %i.rl, align 8, !tbaa !52
  store i64 -1688849860263936, ptr %i.rm, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301

bb.cd:                                            ; preds = %._crit_edge
  %i.rr = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.rk, i64 -1688849860263936) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301: ; preds = %bb.cc, %bb.cd
  %.0.i.i.i.i.i.i300 = phi ptr [ %i.rm, %bb.cc ], [ %i.rr, %bb.cd ] ; 5 uses
  %i.rs = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.0.i.i.i.i.i.i258, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 334, ptr nonnull %.0.i.i.i.i.i.i258, i32 0, ptr noundef null) #12 ; 2 uses
  %i.rt = extractvalue { i32, i64 } %i.rs, 0
  %i.ru = extractvalue { i32, i64 } %i.rs, 1      ; 2 uses
  %i.rv = icmp eq i32 %i.rt, 0
  br i1 %i.rv, label %.thread490, label %bb.ce, !prof !31

bb.ce:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301
  %.mask.i302 = and i64 %i.ru, -140737488355328
  %i.rw = icmp ne i64 %.mask.i302, -1688849860263936 ; 4 uses
  br i1 %i.rw, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store i64 %i.ru, ptr %.0.i.i.i.i.i.i300, align 8, !tbaa !30
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.rx = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 192 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !52 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rx, i64 200
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !53
  %i.sc = icmp ult ptr %i.rz, %i.sb
  br i1 %i.sc, label %bb.ch, label %bb.ci, !prof !54

bb.ch:                                            ; preds = %bb.cg
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store ptr %i.sd, ptr %i.ry, align 8, !tbaa !52
  store i64 -844424930131968, ptr %i.rz, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit305

bb.ci:                                            ; preds = %bb.cg
  %i.se = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.rx, i64 -844424930131968) #12
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit305

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit305: ; preds = %bb.ch, %bb.ci
  %.0.i.i.i.i.i.i304 = phi ptr [ %i.rz, %bb.ch ], [ %i.se, %bb.ci ] ; 2 uses
  %i.sf = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !30 ; 3 uses
  %i.sg = icmp ugt i64 %i.sf, -844424930131969
  %i.sh = and i64 %i.sf, 281474976710655
  %i.si = icmp ne i64 %i.sh, 0
  %i.sj = and i1 %i.sg, %i.si
  br i1 %i.sj, label %bb.cj, label %bb.cz

bb.cj:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit305
  %12 = add nuw nsw i64 %i.kz, 3
  %13 = zext i1 %i.rw to i64
  %14 = add nuw nsw i64 %12, %13                  ; 3 uses
  %i.sk = load ptr, ptr %i.jt, align 8, !tbaa !400 ; 4 uses
  %i.sl = load i64, ptr %i.ju, align 8, !tbaa !401
  %i.sm = add i64 %i.sl, 1                        ; 2 uses
  store i64 %i.sm, ptr %i.ju, align 8, !tbaa !401
  %i.sn = load ptr, ptr %i.jv, align 8, !tbaa !402
  %i.so = ptrtoint ptr %i.sn to i64
  %i.sp = ptrtoint ptr %i.sk to i64
  %i.sq = sub i64 %i.so, %i.sp
  %i.sr = lshr exact i64 %i.sq, 3
  %i.ss = and i64 %i.sr, 4294967295
  %i.st = add nuw nsw i64 %14, 39
  %i.su = icmp samesign ugt i64 %i.st, %i.ss
  %i.sv = load i64, ptr %i.jw, align 8
  %i.sw = icmp ugt i64 %i.sm, %i.sv
  %.not31.i.i = select i1 %i.su, i1 true, i1 %i.sw
  br i1 %.not31.i.i, label %.critedge246.critedge, label %bb.ck, !prof !31

.critedge246.critedge:                            ; preds = %bb.cj
  %i.sx = call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #12
  %i.sy = load i64, ptr %i.ju, align 8, !tbaa !401
  %i.sz = add i64 %i.sy, -1
  store i64 %i.sz, ptr %i.ju, align 8, !tbaa !401
  store ptr %i.sk, ptr %i.jt, align 8, !tbaa !400
  br label %.thread490

bb.ck:                                            ; preds = %bb.cj
  %i.ta = or i64 %i.sf, -281474976710656
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %14 ; 8 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 56 ; 5 uses
  store ptr %i.tc, ptr %i.jt, align 8, !tbaa !400
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.jx, align 8, !tbaa !92
  %i.td = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 48
  store i64 %i.td, ptr %i.te, align 8, !tbaa !30
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %i.tg = or disjoint i64 %14, -1125899906842624
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.tf, i8 0, i64 16, i1 false)
  store i64 %i.tg, ptr %i.th, align 8, !tbaa !30
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  store i64 -1688849860263936, ptr %i.ti, align 8, !tbaa !30
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  store i64 %i.ta, ptr %i.tj, align 8, !tbaa !30
  store i64 -1688849860263936, ptr %i.tb, align 8, !tbaa !30
  %.sroa.0.0.copyload.i308 = load i64, ptr %.0.i.i.i.i.i.i278, align 8, !tbaa !32
  %i.tk = getelementptr i8, ptr %i.tb, i64 -8
  store i64 %.sroa.0.0.copyload.i308, ptr %i.tk, align 8, !tbaa !30
  %i.tl = load ptr, ptr %9, align 8, !tbaa !96    ; 2 uses
  %.sroa.0.0.copyload.i.i311676 = load i64, ptr %i.tl, align 8, !tbaa !32
  %i.tm = and i64 %.sroa.0.0.copyload.i.i311676, 281474976710655
  %i.tn = inttoptr i64 %i.tm to ptr               ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 4
  %i.tp = load atomic i32, ptr %i.to monotonic, align 4
  %.not231677 = icmp eq i32 %i.tp, 0
  br i1 %.not231677, label %._crit_edge681, label %.lr.ph680

.lr.ph680:                                        ; preds = %bb.ck, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %i.tq = phi ptr [ %i.vg, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ %i.tn, %bb.ck ]
  %.0224678 = phi i32 [ %i.ve, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ], [ 1, %bb.ck ] ; 3 uses
  %i.tr = add i32 %.0224678, -1
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tt = zext i32 %i.tr to i64
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.ts, i64 %i.tt
  %.sroa.0.0.copyload.i313 = load i32, ptr %i.tu, align 4, !tbaa !6 ; 9 uses
  %i.tv = trunc i32 %.sroa.0.0.copyload.i313 to i8
  %i.tw = and i8 %i.tv, 15
  switch i8 %i.tw, label %default.unreachable [
    i8 0, label %bb.cl
    i8 8, label %bb.cl
    i8 1, label %bb.cm
    i8 9, label %bb.cm
    i8 2, label %bb.cn
    i8 10, label %bb.cn
    i8 3, label %bb.co
    i8 11, label %bb.co
    i8 4, label %bb.cp
    i8 12, label %bb.cp
    i8 5, label %bb.cq
    i8 13, label %bb.cq
    i8 6, label %bb.cr
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %bb.cs
    i8 15, label %bb.ct
  ]

bb.cl:                                            ; preds = %.lr.ph680, %.lr.ph680
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i313, 0
  %i.tx = zext i32 %.sroa.0.0.copyload.i313 to i64
  %i.ty = add i64 %i.tx, %i.du
  %i.tz = or i64 %i.ty, -281474976710656
  %i.ua = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.tz
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.cm:                                            ; preds = %.lr.ph680, %.lr.ph680
  %i.ub = and i32 %.sroa.0.0.copyload.i313, -8
  %i.uc = zext i32 %i.ub to i64
  %i.ud = add i64 %i.uc, %i.du
  %i.ue = or i64 %i.ud, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.cn:                                            ; preds = %.lr.ph680, %.lr.ph680
  %i.uf = and i32 %.sroa.0.0.copyload.i313, -8
  %i.ug = zext i32 %i.uf to i64
  %i.uh = add i64 %i.ug, %i.du
  %i.ui = or i64 %i.uh, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.co:                                            ; preds = %.lr.ph680, %.lr.ph680
  %i.uj = and i32 %.sroa.0.0.copyload.i313, -8
  %i.uk = zext i32 %i.uj to i64
  %i.ul = add i64 %i.uk, %i.du
  %i.um = inttoptr i64 %i.ul to ptr
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uo = load double, ptr %i.un, align 8, !tbaa !70 ; 2 uses
  %i.up = fcmp uno double %i.uo, 0.000000e+00
  %i.uq = bitcast double %i.uo to i64
  %spec.select.i.i = select i1 %i.up, i64 9221120237041090560, i64 %i.uq, !prof !31
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.cp:                                            ; preds = %.lr.ph680, %.lr.ph680
  %i.ur = ashr i32 %.sroa.0.0.copyload.i313, 3
  %i.us = sitofp i32 %i.ur to double
  %i.ut = bitcast double %i.us to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.cq:                                            ; preds = %.lr.ph680, %.lr.ph680
  %i.uu = lshr i32 %.sroa.0.0.copyload.i313, 3
  %i.uv = zext nneg i32 %i.uu to i64
  %i.uw = or disjoint i64 %i.uv, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.cr:                                            ; preds = %.lr.ph680
  %i.ux = icmp ugt i32 %.sroa.0.0.copyload.i313, 15
  %i.uy = zext i1 %i.ux to i64
  %i.uz = or disjoint i64 %i.uy, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.cs:                                            ; preds = %.lr.ph680
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ct:                                            ; preds = %.lr.ph680
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %.lr.ph680
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %.lr.ph680, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cq, %bb.cr, %bb.cs, %bb.ct
  %.sroa.05.0.i = phi i64 [ %i.ua, %bb.cl ], [ %i.ue, %bb.cm ], [ %i.ui, %bb.cn ], [ %spec.select.i.i, %bb.co ], [ %i.ut, %bb.cp ], [ %i.uw, %bb.cq ], [ %i.uz, %bb.cr ], [ -1548112371908608, %bb.ct ], [ -1970324836974592, %bb.cs ], [ -1688849860263936, %.lr.ph680 ]
  %i.va = sext i32 %.0224678 to i64
  %i.vb = sub nsw i64 0, %i.va
  %i.vc = getelementptr [8 x i8], ptr %i.tc, i64 %i.vb
  %i.vd = getelementptr i8, ptr %i.vc, i64 -64
  store i64 %.sroa.05.0.i, ptr %i.vd, align 8, !tbaa !30
  %i.ve = add i32 %.0224678, 1                    ; 3 uses
  %.sroa.0.0.copyload.i.i311 = load i64, ptr %i.tl, align 8, !tbaa !32
  %i.vf = and i64 %.sroa.0.0.copyload.i.i311, 281474976710655
  %i.vg = inttoptr i64 %i.vf to ptr               ; 2 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vi = load atomic i32, ptr %i.vh monotonic, align 4
  %.not231 = icmp ugt i32 %i.ve, %i.vi
  br i1 %.not231, label %._crit_edge681, label %.lr.ph680, !llvm.loop !170

._crit_edge681:                                   ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %bb.ck
  %.0224.lcssa = phi i32 [ 1, %bb.ck ], [ %i.ve, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ] ; 3 uses
  %i.vj = uitofp i32 %i.mw to double
  %i.vk = add i32 %.0224.lcssa, 1
  %i.vl = sext i32 %.0224.lcssa to i64
  %i.vm = sub nsw i64 0, %i.vl
  %i.vn = getelementptr [8 x i8], ptr %i.tc, i64 %i.vm
  %i.vo = getelementptr i8, ptr %i.vn, i64 -64
  store double %i.vj, ptr %i.vo, align 8, !tbaa !30
  %.sroa.0.0.copyload.i318 = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !32
  %i.vp = sext i32 %i.vk to i64
  %i.vq = sub nsw i64 0, %i.vp
  %i.vr = getelementptr [8 x i8], ptr %i.tc, i64 %i.vq
  %i.vs = getelementptr i8, ptr %i.vr, i64 -64
  store i64 %.sroa.0.0.copyload.i318, ptr %i.vs, align 8, !tbaa !30
  br i1 %i.rw, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %._crit_edge681
  %i.vt = add i32 %.0224.lcssa, 2
  %.sroa.0.0.copyload.i.i.i321 = load i64, ptr %.0.i.i.i.i.i.i300, align 8, !tbaa !32
  %i.vu = sext i32 %i.vt to i64
  %i.vv = sub nsw i64 0, %i.vu
  %i.vw = getelementptr [8 x i8], ptr %i.tc, i64 %i.vv
  %i.vx = getelementptr i8, ptr %i.vw, i64 -64
  store i64 %.sroa.0.0.copyload.i.i.i321, ptr %i.vx, align 8, !tbaa !30
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %._crit_edge681
  %.sroa.0.0.copyload.i.i.i324 = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !32
  %i.vy = and i64 %.sroa.0.0.copyload.i.i.i324, 281474976710655
  %i.vz = inttoptr i64 %i.vy to ptr
  %i.wa = load i32, ptr %i.vz, align 4
  %i.wb = lshr i32 %i.wa, 24
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.wc
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !404
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 104
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !409
  %i.wh = call { i32, i64 } %i.wg(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #12, !inline_history !171 ; 2 uses
  %i.wi = extractvalue { i32, i64 } %i.wh, 0
  %i.wj = extractvalue { i32, i64 } %i.wh, 1      ; 2 uses
  %i.wk = icmp eq i32 %i.wi, 0
  %i.wl = load i64, ptr %i.ju, align 8, !tbaa !401
  %i.wm = add i64 %i.wl, -1
  store i64 %i.wm, ptr %i.ju, align 8, !tbaa !401
  store ptr %i.sk, ptr %i.jt, align 8, !tbaa !400
  br i1 %i.wk, label %.thread490, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wn = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 192 ; 2 uses
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !52 ; 4 uses
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wn, i64 200
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !53
  %i.ws = icmp ult ptr %i.wp, %i.wr
  br i1 %i.ws, label %bb.cx, label %bb.cy, !prof !54

bb.cx:                                            ; preds = %bb.cw
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store ptr %i.wt, ptr %i.wo, align 8, !tbaa !52
  store i64 %i.wj, ptr %i.wp, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327

bb.cy:                                            ; preds = %bb.cw
  %i.wu = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.wn, i64 %i.wj) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327: ; preds = %bb.cx, %bb.cy
  %.0.i.i.i.i.i.i326 = phi ptr [ %i.wp, %bb.cx ], [ %i.wu, %bb.cy ]
  %i.wv = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i326) #12 ; 2 uses
  %.not523 = icmp eq ptr %i.wv, inttoptr (i64 -1 to ptr)
  br i1 %.not523, label %.thread490, label %.thread488, !prof !31

.thread488:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327
  %i.ww = ptrtoint ptr %i.wv to i64
  br label %bb.de

bb.cz:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit305
  br i1 %i.rw, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.wx = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i300) #12 ; 2 uses
  %i.wy = extractvalue { i32, i64 } %i.wx, 0
  %i.wz = icmp eq i32 %i.wy, 0
  br i1 %i.wz, label %.thread490, label %bb.db, !prof !31

bb.db:                                            ; preds = %bb.da
  %i.xa = extractvalue { i32, i64 } %i.wx, 1
  store i64 %i.xa, ptr %.0.i.i.i.i.i.i300, align 8, !tbaa !30
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.db
  %.sroa.013.0 = phi ptr [ %.0.i.i.i.i.i.i300, %bb.db ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.cz ]
  %.sroa.014.0.copyload497 = load ptr, ptr %9, align 8
  %i.xb = call { i32, i64 } @_ZN6hermes2vm15getSubstitutionERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEES5_jNS3_INS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS3_INS0_8JSObjectEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i278, ptr nonnull %.0.i.i.i.i.i.i, i32 noundef %i.mw, ptr %.sroa.014.0.copyload497, ptr nonnull %.sroa.013.0, i64 %i.js) ; 2 uses
  %i.xc = extractvalue { i32, i64 } %i.xb, 0
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %.thread490, label %bb.dd, !prof !31

bb.dd:                                            ; preds = %bb.dc
  %i.xe = extractvalue { i32, i64 } %i.xb, 1
  %i.xf = and i64 %i.xe, 281474976710655
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.thread488
  %storemerge.in = phi i64 [ %i.xf, %bb.dd ], [ %i.ww, %.thread488 ]
  %storemerge = or i64 %storemerge.in, -844424930131968
  store i64 %storemerge, ptr %.0.i.i.i.i.i.i304, align 8, !tbaa !30
  %.not232 = icmp ugt i32 %.0210685, %i.mw
  br i1 %.not232, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.xg = sub nuw i32 %i.mw, %.0210685
  %i.xh = add i32 %.0210685, %.sroa.2.8.extract.trunc.i
  %i.xi = and i32 %i.xh, 1073741823
  %i.xj = or disjoint i32 %i.xi, %i.jy
  %.sroa.2.8.insert.ext.i = zext i32 %i.xj to i64
  %.sroa.2.12.insert.ext.i = zext i32 %i.xg to i64
  %.sroa.2.12.insert.shift.i = shl nuw i64 %.sroa.2.12.insert.ext.i, 32
  %.sroa.2.12.insert.insert.i = or disjoint i64 %.sroa.2.12.insert.shift.i, %.sroa.2.8.insert.ext.i
  store ptr %i.jz, ptr %10, align 8
  store i64 %.sroa.2.12.insert.insert.i, ptr %i.ka, align 8
  %i.xk = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #12
  %.sroa.0.0.copyload.i.i331 = load i64, ptr %.0.i.i.i.i.i.i304, align 8, !tbaa !32
  %i.xl = and i64 %.sroa.0.0.copyload.i.i331, 281474976710655
  %i.xm = inttoptr i64 %i.xl to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.xm, ptr noundef nonnull align 8 dereferenceable(16) %7) #12
  %i.xn = add i32 %i.mb, %i.mw
  br label %bb.dg

.thread511:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.ar, %bb.as, %bb.aq, %_ZN6hermes2vm11TwineChar16C2EPKc.exit285
  %.sroa.0464.25.ph = phi i32 [ %i.nc, %_ZN6hermes2vm11TwineChar16C2EPKc.exit285 ], [ 0, %bb.aq ], [ 0, %bb.as ], [ 0, %bb.ar ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit279 ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit283 ]
  %i.xo = getelementptr inbounds nuw i8, ptr %i.kb, i64 144
  %i.xp = zext i32 %i.kf to i64
  %i.xq = load ptr, ptr %i.xo, align 8, !tbaa !57
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.xp
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !92
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 128
  store i32 %i.kf, ptr %i.ke, align 8, !tbaa !60
  %i.xu = getelementptr inbounds nuw i8, ptr %i.kb, i64 200
  store ptr %i.xt, ptr %i.xu, align 8, !tbaa !53
  store ptr %i.kd, ptr %i.kc, align 8, !tbaa !52
  br label %bb.dj

bb.dg:                                            ; preds = %bb.de, %bb.df
  %.4214 = phi i32 [ %i.xn, %bb.df ], [ %.0210685, %bb.de ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.xv = getelementptr inbounds nuw i8, ptr %i.kb, i64 144
  %i.xw = zext i32 %i.kf to i64
  %i.xx = load ptr, ptr %i.xv, align 8, !tbaa !57
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.xx, i64 %i.xw
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !92
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 128
  store i32 %i.kf, ptr %i.ke, align 8, !tbaa !60
  %i.yb = getelementptr inbounds nuw i8, ptr %i.kb, i64 200
  store ptr %i.ya, ptr %i.yb, align 8, !tbaa !53
  store ptr %i.kd, ptr %i.kc, align 8, !tbaa !52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread513, label %bb.aq, !llvm.loop !172

.thread490:                                       ; preds = %bb.dc, %bb.da, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327, %bb.cv, %.thread480, %.critedge246.critedge
  %.sroa.0464.20.ph = phi i32 [ 0, %.thread480 ], [ %i.sx, %.critedge246.critedge ], [ 0, %bb.cv ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit327 ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit301 ], [ 0, %bb.da ], [ 0, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %i.yc = getelementptr inbounds nuw i8, ptr %i.kb, i64 144
  %i.yd = zext i32 %i.kf to i64
  %i.ye = load ptr, ptr %i.yc, align 8, !tbaa !57
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.yd
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !92
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 128
  store i32 %i.kf, ptr %i.ke, align 8, !tbaa !60
  %i.yi = getelementptr inbounds nuw i8, ptr %i.kb, i64 200
  store ptr %i.yh, ptr %i.yi, align 8, !tbaa !53
  store ptr %i.kd, ptr %i.kc, align 8, !tbaa !52
  br label %bb.dj

.thread513:                                       ; preds = %bb.dg, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270
  %.0210.lcssa = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit270 ], [ %.4214, %bb.dg ] ; 3 uses
  %.not234 = icmp ult i32 %.0210.lcssa, %i.aw
  br i1 %.not234, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.thread513
  %i.yj = load ptr, ptr %7, align 8, !tbaa !57
  %i.yk = load i32, ptr %i.iu, align 8, !tbaa !59
  %i.yl = zext i32 %i.yk to i64
  %i.ym = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.yj, i64 %i.yl) #12 ; 2 uses
  %i.yn = extractvalue { i32, i64 } %i.ym, 0
  %i.yo = extractvalue { i32, i64 } %i.ym, 1
  br label %bb.dj

bb.di:                                            ; preds = %.thread513
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  %.sroa.5.12.extract.shift = lshr i64 %i.ds, 32
  %.sroa.5.12.extract.trunc = trunc nuw i64 %.sroa.5.12.extract.shift to i32
  %i.yp = sub i32 %.sroa.5.12.extract.trunc, %.0210.lcssa
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %i.ds to i32 ; 2 uses
  %i.yq = add i32 %.0210.lcssa, %.sroa.2.8.extract.trunc.i.i
  %i.yr = and i32 %i.yq, 1073741823
  %i.ys = and i32 %.sroa.2.8.extract.trunc.i.i, -1073741824
  %i.yt = or disjoint i32 %i.yr, %i.ys
  %.sroa.2.8.insert.ext.i.i = zext i32 %i.yt to i64
  %.sroa.2.12.insert.ext.i.i = zext i32 %i.yp to i64
  %.sroa.2.12.insert.shift.i.i = shl nuw i64 %.sroa.2.12.insert.ext.i.i, 32
  %.sroa.2.12.insert.insert.i.i = or disjoint i64 %.sroa.2.12.insert.shift.i.i, %.sroa.2.8.insert.ext.i.i
  %i.yu = extractvalue { ptr, i64 } %i.dr, 0
  store ptr %i.yu, ptr %11, align 8
  %i.yv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sroa.2.12.insert.insert.i.i, ptr %i.yv, align 8
  %i.yw = call { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %7, i1 noundef zeroext true) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %i.yx = load ptr, ptr %7, align 8, !tbaa !57
  %i.yy = load i32, ptr %i.iu, align 8, !tbaa !59
  %i.yz = zext i32 %i.yy to i64
  %i.za = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.yx, i64 %i.yz) #12 ; 2 uses
  %i.zb = extractvalue { i32, i64 } %i.za, 0
  %i.zc = extractvalue { i32, i64 } %i.za, 1
  br label %bb.dj

bb.dj:                                            ; preds = %.thread490, %.thread511, %bb.di, %bb.dh
  %.sroa.0464.27 = phi i32 [ %.sroa.0464.20.ph, %.thread490 ], [ %i.zb, %bb.di ], [ %i.yn, %bb.dh ], [ %.sroa.0464.25.ph, %.thread511 ]
  %.sroa.36.0 = phi i64 [ undef, %.thread490 ], [ %i.zc, %bb.di ], [ %i.yo, %bb.dh ], [ undef, %.thread511 ]
  %i.zd = load ptr, ptr %7, align 8, !tbaa !57    ; 2 uses
  %i.ze = icmp eq ptr %i.zd, %i.it
  br i1 %i.ze, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @free(ptr noundef %i.zd) #12
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
define hidden { i32, i64 } @_ZN6hermes2vm26regExpPrototypeSymbolSplitEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 !guid !415 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::CallResult.164", align 8 ; 7 uses
  %6 = alloca %"class.hermes::vm::CallResult.164", align 8 ; 12 uses
  %7 = alloca %"class.llvh::SmallVector", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %1, ptr %3, align 8, !tbaa !55
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !43
  store ptr %i.c, ptr %i.a, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !58
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !59
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !60
  store ptr %3, ptr %i.b, align 8, !tbaa !43
  %i.l = load ptr, ptr %2, align 8, !tbaa !33, !noalias !416 ; 2 uses
  %.sroa.087.0.copyload = load i64, ptr %i.l, align 8, !tbaa !32 ; 2 uses
  %i.m = icmp ugt i64 %.sroa.087.0.copyload, -844424930131969
  br i1 %i.m, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !417

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %bb.a
  %i.n = and i64 %.sroa.087.0.copyload, 281474976710655
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load i32, ptr %i.o, align 4
  %i.q = add i32 %i.p, -436207616
  %i.r = icmp ult i32 %i.q, 855638016
  br i1 %i.r, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !98

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.s, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 58, ptr %i.t, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !38
  store ptr @.str.13, ptr %4, align 8, !tbaa !39
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.v, align 8, !tbaa !40
  %i.w = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.thread

bb.b:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %.not252 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds i8, ptr %i.l, i64 -8
  %.sroa.02.0.i = select i1 %.not252, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.z
  %i.aa = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #12 ; 2 uses
  %.not253 = icmp eq ptr %i.aa, inttoptr (i64 -1 to ptr)
  br i1 %.not253, label %.thread, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, -844424930131968          ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !53
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !52
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.e:                                             ; preds = %bb.c
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ac) #12
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i.i.i.i = phi ptr [ %i.af, %bb.d ], [ %i.ak, %bb.e ] ; 8 uses
  %i.al = load ptr, ptr %2, align 8, !tbaa !33, !noalias !418 ; 3 uses
  %i.am = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %i.al, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 331, ptr %i.al, i32 0, ptr noundef null) #12 ; 2 uses
  %i.an = extractvalue { i32, i64 } %i.am, 0
  %i.ao = extractvalue { i32, i64 } %i.am, 1      ; 2 uses
  %i.ap = icmp eq i32 %i.an, 0
  br i1 %i.ap, label %.thread, label %bb.f, !prof !31

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !43  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 192 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %i.av = icmp ult ptr %i.as, %i.au
  br i1 %i.av, label %bb.g, label %bb.h, !prof !54

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !52
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.h:                                             ; preds = %bb.f
end_hunk_0
