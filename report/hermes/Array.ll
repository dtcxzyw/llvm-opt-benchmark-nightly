inline.NumInlined: 3514
inline.NumDeleted: 769
begin_hunk_0_@_ZN6hermes2vm20arrayPrototypeConcatEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread: ; preds = %.lr.ph313, %bb.an, %bb.aq, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.iu = uitofp i64 %.0146309 to double
  store double %i.iu, ptr %.0.i.i.i.i.i.i166, align 8, !tbaa !8
  %i.iv = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr nonnull %.0.i.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i166, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7) #9 ; 0 uses
  %.sroa.031.0.copyload = load ptr, ptr %5, align 8
  %.sroa.030.0.copyload = load i64, ptr %7, align 8
  %i.iw = call { i32, i64 } @_ZN6hermes2vm8JSObject28getComputedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_RNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE(ptr nonnull %.0.i.i.i.i.i.i164, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.031.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.030.0.copyload, ptr nonnull %.0.i.i.i.i.i.i166) #9 ; 2 uses
  %i.ix = extractvalue { i32, i64 } %i.iw, 0
  %i.iy = extractvalue { i32, i64 } %i.iw, 1      ; 2 uses
  %i.iz = icmp eq i32 %i.ix, 0
  br i1 %i.iz, label %.thread286, label %bb.au, !prof !7

bb.au:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
  %.mask.i = and i64 %i.iy, -140737488355328
  %i.ja = icmp eq i64 %.mask.i, -1970324836974592
  br i1 %i.ja, label %bb.aw, label %bb.av, !prof !7

bb.av:                                            ; preds = %bb.au
  store i64 %i.iy, ptr %.0.i.i.i.i.i.i169, align 8, !tbaa !8
  %i.jb = uitofp i64 %.1133310 to double
  store double %i.jb, ptr %.0.i.i.i.i.i.i167, align 8, !tbaa !8
  %i.jc = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr nonnull %i.bz, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i167, i32 319, ptr nonnull %.0.i.i.i.i.i.i169, i32 0) #9
  %.mask296 = and i32 %i.jc, 255
  %i.jd = icmp eq i32 %.mask296, 0
  br i1 %i.jd, label %.thread286, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.je = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.ee
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !42
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 128
  store i32 %i.dz, ptr %i.k, align 8, !tbaa !38
  store ptr %i.jh, ptr %i.j, align 8, !tbaa !30
  store ptr %i.dy, ptr %i.i, align 8, !tbaa !21
  br label %bb.ax

bb.ax:                                            ; preds = %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, %bb.aw
  %i.ji = add nuw i64 %.0146309, 1                ; 2 uses
  %i.jj = add i64 %.1133310, 1                    ; 2 uses
  %exitcond319.not = icmp eq i64 %i.ji, %.3142
  br i1 %exitcond319.not, label %.critedge157, label %.lr.ph313, !llvm.loop !117

.critedge157:                                     ; preds = %bb.ax, %bb.am
  %.1133.lcssa = phi i64 [ %.0132316, %bb.am ], [ %i.jj, %bb.ax ]
  %i.jk = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %i.ee
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !42
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 128
  store i32 %i.dz, ptr %i.k, align 8, !tbaa !38
  store ptr %i.jn, ptr %i.j, align 8, !tbaa !30
  store ptr %i.dy, ptr %i.i, align 8, !tbaa !21
  br label %.critedge

bb.ay:                                            ; preds = %bb.ab
  %i.jo = icmp ugt i64 %.0132316, 9007199254740990
  br i1 %i.jo, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit195, label %bb.az, !prof !7

_ZN6hermes2vm11TwineChar16C2EPKc.exit195:         ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.jp = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 1, ptr %i.jp, align 8, !tbaa !49
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 42, ptr %i.jq, align 8, !tbaa !52
  %i.jr = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 0, ptr %i.jr, align 8, !tbaa !53
  store ptr @.str.3, ptr %9, align 8, !tbaa !54
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 3, ptr %i.js, align 8, !tbaa !55
  %i.jt = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %.thread286

bb.az:                                            ; preds = %bb.ay
  %i.ju = icmp samesign ult i64 %.0132316, 4294967295
  br i1 %i.ju, label %bb.ba, label %bb.bb, !prof !31

bb.ba:                                            ; preds = %bb.az
  %i.jv = trunc nuw i64 %.0132316 to i32
  %i.jw = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.jv, ptr nonnull %.0.i.i.i.i.i.i169) #9 ; 0 uses
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.jx = uitofp nneg i64 %.0132316 to double
  store double %i.jx, ptr %.0.i.i.i.i.i.i167, align 8, !tbaa !8
  %i.jy = call ptr @_ZN6hermes2vm15valueToSymbolIDERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i167) #9 ; 2 uses
  %.not293 = icmp eq ptr %i.jy, inttoptr (i64 -1 to ptr)
  br i1 %.not293, label %.thread286, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %bb.bb
  %.sroa.0.0.copyload.i.i.i196 = load i64, ptr %i.jy, align 8, !tbaa !32
  %i.jz = trunc i64 %.sroa.0.0.copyload.i.i.i196 to i32
  %i.ka = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.jz, i32 319, ptr nonnull %.0.i.i.i.i.i.i169, i32 0) #9
  %.mask294 = and i32 %i.ka, 255
  %i.kb = icmp eq i32 %.mask294, 0
  br i1 %i.kb, label %.thread286, label %bb.bd, !prof !7

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.kc = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.ee
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !42
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 128
  store i32 %i.dz, ptr %i.k, align 8, !tbaa !38
  store ptr %i.kf, ptr %i.j, align 8, !tbaa !30
  store ptr %i.dy, ptr %i.i, align 8, !tbaa !21
  %i.kg = add nuw nsw i64 %.0132316, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.bd, %.critedge157
  %.4136 = phi i64 [ %i.kg, %bb.bd ], [ %.1133.lcssa, %.critedge157 ] ; 3 uses
  %i.kh = add nsw i64 %.0138315, 1                ; 3 uses
  %i.ki = trunc i64 %i.kh to i32
  %i.kj = load i32, ptr %i.z, align 8, !tbaa !101
  %i.kk = icmp ugt i32 %i.kj, %i.ki
  br i1 %i.kk, label %bb.be, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit199

bb.be:                                            ; preds = %.critedge
  %i.kl = load ptr, ptr %2, align 8, !tbaa !11, !noalias !118
  %i.km = xor i64 %.0138315, -1
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.km
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -8
  %.sroa.0.0.copyload.i198 = load i64, ptr %i.ko, align 8, !tbaa !32
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit199

_ZNK6hermes2vm10NativeArgs6getArgEj.exit199:      ; preds = %.critedge, %bb.be
  %.sroa.0.0.i197 = phi i64 [ %.sroa.0.0.copyload.i198, %bb.be ], [ -1688849860263936, %.critedge ]
  store i64 %.sroa.0.0.i197, ptr %.0.i.i.i.i.i.i169, align 8, !tbaa !8
  %exitcond320.not = icmp eq i64 %i.kh, %i.ab
  br i1 %exitcond320.not, label %.thread282, label %bb.aa, !llvm.loop !121

.thread282:                                       ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit199
  %i.kp = icmp ugt i64 %.4136, 4294967295
  br i1 %i.kp, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit201, label %bb.bf

_ZN6hermes2vm11TwineChar16C2EPKc.exit201:         ; preds = %.thread282
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.kq = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.kq, align 8, !tbaa !49
  %i.kr = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 20, ptr %i.kr, align 8, !tbaa !52
  %i.ks = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.ks, align 8, !tbaa !53
  store ptr @.str, ptr %10, align 8, !tbaa !54
  %i.kt = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.kt, align 8, !tbaa !55
  %i.ku = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.thread286

bb.bf:                                            ; preds = %.thread282
  %i.kv = trunc nuw i64 %.4136 to i32
  %i.kw = uitofp i32 %i.kv to double              ; 2 uses
  %i.kx = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 192 ; 2 uses
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !21 ; 4 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 200
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !30
  %i.lc = icmp ult ptr %i.kz, %i.lb
  br i1 %i.lc, label %bb.bg, label %bb.bh, !prof !31

bb.bg:                                            ; preds = %bb.bf
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  store ptr %i.ld, ptr %i.ky, align 8, !tbaa !21
  store double %i.kw, ptr %i.kz, align 8, !tbaa !32
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

bb.bh:                                            ; preds = %bb.bf
  %i.le = bitcast double %i.kw to i64
  %i.lf = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.kx, i64 %i.le) #9
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit: ; preds = %bb.bg, %bb.bh
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.kz, %bb.bg ], [ %i.lf, %bb.bh ]
  %i.lg = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.bz, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i, ptr %i.bz, i32 0) #9 ; 0 uses
  %.sroa.0.0.copyload.i202 = load i64, ptr %i.bz, align 8, !tbaa !32
  br label %.thread286

.thread286:                                       ; preds = %bb.ag, %bb.bb, %bb.bc, %bb.al, %bb.ah, %bb.aa, %bb.av, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm11TwineChar16C2EPKc.exit185, %_ZN6hermes2vm11TwineChar16C2EPKc.exit195, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit201
  %.sroa.0268.10 = phi i32 [ %i.fv, %_ZN6hermes2vm11TwineChar16C2EPKc.exit185 ], [ %i.ku, %_ZN6hermes2vm11TwineChar16C2EPKc.exit201 ], [ 1, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit ], [ 0, %bb.av ], [ %i.jt, %_ZN6hermes2vm11TwineChar16C2EPKc.exit195 ], [ 0, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread ], [ 0, %bb.aa ], [ 0, %bb.ah ], [ 0, %bb.al ], [ 0, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.ag ]
  %.sroa.16.0 = phi i64 [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit185 ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit201 ], [ %.sroa.0.0.copyload.i202, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit ], [ undef, %bb.av ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit195 ], [ undef, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread ], [ undef, %bb.aa ], [ undef, %bb.ah ], [ undef, %bb.al ], [ undef, %bb.bc ], [ undef, %bb.bb ], [ undef, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %._crit_edge.thread, %.thread286, %bb.a
  %.sroa.0268.13 = phi i32 [ 0, %bb.a ], [ %i.bx, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0268.10, %.thread286 ], [ 0, %._crit_edge.thread ]
  %.sroa.16.3 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.16.0, %.thread286 ], [ undef, %._crit_edge.thread ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0268.13, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.16.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18arrayPrototypeJoinEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 18 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %7 = alloca %"class.hermes::vm::CallResult.167", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.c, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !36
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !38
  store ptr %3, ptr %i.b, align 8, !tbaa !18
  %i.l = load ptr, ptr %2, align 8, !tbaa !11, !noalias !122
  %i.m = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.l) #9 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.av, label %bb.b, !prof !7

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
  %.0.i.i.i.i.i.i = phi ptr [ %i.t, %bb.c ], [ %i.y, %bb.d ] ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 9240 ; 3 uses
  %i.aa = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.z, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #9
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = or i64 %i.ab, -844424930131968          ; 2 uses
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !21 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !30
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f, !prof !31

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !21
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !32
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

bb.f:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.ak = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ac) #9
  br label %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit

_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.af, %bb.e ], [ %i.ak, %bb.f ] ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !32
  %i.al = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = call noundef zeroext i1 @_ZN6hermes2vm7Runtime19insertVisitedObjectEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.am) #9
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit
  %.sroa.0.0.copyload.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !32
  br label %bb.av

bb.h:                                             ; preds = %_ZN6hermes2vm7Runtime25getPredefinedStringHandleENS0_10Predefined3StrE.exit
  %i.ao = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr nonnull %.0.i.i.i.i.i.i, i32 0, ptr noundef null) #9 ; 2 uses
  %i.ap = extractvalue { i32, i64 } %i.ao, 0
  %i.aq = extractvalue { i32, i64 } %i.ao, 1      ; 2 uses
  %i.ar = icmp eq i32 %i.ap, 0
  br i1 %i.ar, label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit", label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 192 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 200
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !30
  %i.ax = icmp ult ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !31

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !21
  store i64 %i.aq, ptr %i.au, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.k:                                             ; preds = %bb.i
  %i.az = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.as, i64 %i.aq) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i.i.i70 = phi ptr [ %i.au, %bb.j ], [ %i.az, %bb.k ]
  %i.ba = call { i32, i64 } @_ZN6hermes2vm11toLengthU64ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i70) #9 ; 2 uses
  %i.bb = extractvalue { i32, i64 } %i.ba, 0
  %i.bc = extractvalue { i32, i64 } %i.ba, 1      ; 6 uses
  %i.bd = icmp eq i32 %i.bb, 0
  br i1 %i.bd, label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit", label %bb.l, !prof !7

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !101
  %.not157 = icmp eq i32 %i.bf, 0
  br i1 %.not157, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.l
  %i.bg = load ptr, ptr %2, align 8, !tbaa !11, !noalias !125
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i71 = load i64, ptr %i.bh, align 8, !tbaa !32
  %.mask.i = and i64 %.sroa.0.0.copyload.i71, -140737488355328
  %i.bi = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.bi, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.l, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bj = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.z, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 15) #9
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = or i64 %i.bk, -844424930131968          ; 2 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 192 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !21 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 200
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30
  %i.br = icmp ult ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bs, ptr %i.bn, align 8, !tbaa !21
  store i64 %i.bl, ptr %i.bo, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.n:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.bt = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bm, i64 %i.bl) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.n, %bb.m
  %.sroa.019.0 = phi ptr [ %i.bt, %bb.n ], [ %i.bo, %bb.m ], [ %i.bh, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %i.bu = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.019.0) #9 ; 2 uses
  %.not158 = icmp eq ptr %i.bu, inttoptr (i64 -1 to ptr)
  br i1 %.not158, label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit", label %bb.o, !prof !7

bb.o:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = or i64 %i.bv, -844424930131968          ; 2 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 192 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !21 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 200
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30
  %i.cc = icmp ult ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.p, label %bb.q, !prof !31

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %i.cd, ptr %i.by, align 8, !tbaa !21
  store i64 %i.bw, ptr %i.bz, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.q:                                             ; preds = %bb.o
  %i.ce = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bx, i64 %i.bw) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i.i.i.i73 = phi ptr [ %i.bz, %bb.p ], [ %i.ce, %bb.q ] ; 3 uses
  %i.cf = icmp eq i64 %i.bc, 0
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.cg = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.z, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #9
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = or i64 %i.ch, -844424930131968
  br label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit"

bb.s:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.cj = icmp ugt i64 %i.bc, 1047529472
  br i1 %i.cj, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.t, !prof !7

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ck, align 8, !tbaa !49
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 33, ptr %i.cl, align 8, !tbaa !52
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.cm, align 8, !tbaa !53
  store ptr @.str.4, ptr %4, align 8, !tbaa !54
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.cn, align 8, !tbaa !55
  %i.co = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit"

bb.t:                                             ; preds = %bb.s
  %i.cp = trunc nuw nsw i64 %i.bc to i32
  %i.cq = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.cp, i32 noundef 0) #9 ; 4 uses
  %.not159 = icmp eq ptr %i.cq, inttoptr (i64 -1 to ptr)
  br i1 %.not159, label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit", label %bb.u, !prof !7

bb.u:                                             ; preds = %bb.t
  %i.cr = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 192 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !21 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 200
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30
  %i.cw = icmp ult ptr %i.ct, %i.cv
  br i1 %i.cw, label %bb.v, label %bb.w, !prof !31

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cx, ptr %i.cs, align 8, !tbaa !21
  store i64 0, ptr %i.ct, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.w:                                             ; preds = %bb.u
  %i.cy = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cr, i64 0) #9 ; 2 uses
  %.pre = load double, ptr %i.cy, align 8, !tbaa !8
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.v, %bb.w
  %i.cz = phi double [ 0.000000e+00, %bb.v ], [ %.pre, %bb.w ] ; 2 uses
  %.0.i.i.i.i.i.i74 = phi ptr [ %i.ct, %bb.v ], [ %i.cy, %bb.w ] ; 4 uses
  %i.da = uitofp nneg i64 %i.bc to double         ; 2 uses
  %i.db = fcmp uge double %i.cz, %i.da
  br i1 %i.db, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  br label %bb.ak

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 156
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 200
  %8 = getelementptr inbounds nuw i8, ptr %5, i64 208
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.aj
  %i.dk = phi double [ %i.cz, %.lr.ph ], [ %i.fn, %bb.aj ]
  %.sroa.0124.0165 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0124.3, %bb.aj ] ; 2 uses
  %i.dl = fptoui double %i.dk to i32
  %.not = icmp eq i32 %i.dl, 0
  br i1 %.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.sroa.0.0.copyload.i.i75 = load i64, ptr %.0.i.i.i.i.i.i73, align 8, !tbaa !32
  %i.dm = and i64 %.sroa.0.0.copyload.i.i75, 281474976710655
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !45
  %i.dq = and i32 %i.dp, 2147483647
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = add i64 %.sroa.0124.0165, %i.dr         ; 2 uses
  %i.dt = lshr i64 %i.ds, 32
  %i.du = trunc nuw i64 %i.dt to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.0124.1 = phi i64 [ %.sroa.0124.0165, %bb.x ], [ %i.ds, %bb.y ] ; 3 uses
  %.sroa.8.1 = phi i32 [ 0, %bb.x ], [ %i.du, %bb.y ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %1, ptr %5, align 8, !tbaa !33
  %i.dv = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.dv, ptr %i.dc, align 8, !tbaa !34
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !35
  store i32 4, ptr %i.dh, align 4, !tbaa !36
  store ptr %i.de, ptr %i.df, align 8
  store i32 1, ptr %i.dg, align 8, !tbaa !37
  store ptr %i.de, ptr %i.di, align 8, !tbaa !21
  store ptr %i.dd, ptr %i.dj, align 8, !tbaa !30
  store i32 0, ptr %8, align 8, !tbaa !38
  store ptr %5, ptr %i.b, align 8, !tbaa !18
  %i.dw = call { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr nonnull %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i74, ptr nonnull %.0.i.i.i.i.i.i) #9 ; 2 uses
  %i.dx = extractvalue { i32, i64 } %i.dw, 0
  %i.dy = extractvalue { i32, i64 } %i.dw, 1      ; 3 uses
  %i.dz = icmp eq i32 %i.dx, 0
  br i1 %i.dz, label %.critedge, label %bb.aa, !prof !7

.critedge:                                        ; preds = %bb.z
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit"

bb.aa:                                            ; preds = %bb.z
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 192 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !21 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !30
  %i.ef = icmp ult ptr %i.ec, %i.ee
  br i1 %i.ef, label %bb.ab, label %bb.ac, !prof !31

bb.ab:                                            ; preds = %bb.aa
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.eg, ptr %i.eb, align 8, !tbaa !21
  store i64 %i.dy, ptr %i.ec, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78

bb.ac:                                            ; preds = %bb.aa
  %i.eh = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ea, i64 %i.dy) #9 ; 2 uses
  %.pre171 = load i64, ptr %i.eh, align 8, !tbaa !8
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78: ; preds = %bb.ab, %bb.ac
  %i.ei = phi i64 [ %i.dy, %bb.ab ], [ %.pre171, %bb.ac ]
  %.0.i.i.i.i.i.i77 = phi ptr [ %i.ec, %bb.ab ], [ %i.eh, %bb.ac ]
  %.mask.i79 = and i64 %i.ei, -140737488355328
  switch i64 %.mask.i79, label %bb.ad [
    i64 -1688849860263936, label %bb.ai
    i64 -1548112371908608, label %bb.ai
  ]

bb.ad:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78
  %i.ej = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i77) #9 ; 2 uses
  %.not160 = icmp eq ptr %i.ej, inttoptr (i64 -1 to ptr)
  br i1 %.not160, label %.critedge69, label %bb.ae, !prof !7

bb.ae:                                            ; preds = %bb.ad
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = or i64 %i.ek, -844424930131968          ; 3 uses
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 192 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !21 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 200
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !30
  %i.er = icmp ult ptr %i.eo, %i.eq
  br i1 %i.er, label %bb.af, label %bb.ag, !prof !31

bb.af:                                            ; preds = %bb.ae
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr %i.es, ptr %i.en, align 8, !tbaa !21
  store i64 %i.el, ptr %i.eo, align 8, !tbaa !32
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.et = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.em, i64 %i.el) #9 ; 2 uses
  %.sroa.0.0.copyload.i.i83.pre = load i64, ptr %i.et, align 8, !tbaa !32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.0.0.copyload.i.i83 = phi i64 [ %i.el, %bb.af ], [ %.sroa.0.0.copyload.i.i83.pre, %bb.ag ]
  %.0.i.i.i.i.i.i81 = phi ptr [ %i.eo, %bb.af ], [ %i.et, %bb.ag ]
  %i.eu = and i64 %.sroa.0.0.copyload.i.i83, 281474976710655
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !45
  %i.ey = and i32 %i.ex, 2147483647
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = add i64 %.sroa.0124.1, %i.ez            ; 2 uses
  %i.fb = lshr i64 %i.fa, 32
  %i.fc = trunc nuw i64 %i.fb to i32
  %i.fd = or i32 %.sroa.8.1, %i.fc
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78, %bb.ah
  %.0.i.i.i.i.i.i81.sink = phi ptr [ %.0.i.i.i.i.i.i81, %bb.ah ], [ %.0.i.i.i.i.i.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78 ], [ %.0.i.i.i.i.i.i.i, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78 ]
  %.sroa.0124.3 = phi i64 [ %i.fa, %bb.ah ], [ %.sroa.0124.1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78 ], [ %.sroa.0124.1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78 ] ; 2 uses
  %.sroa.8.3 = phi i32 [ %i.fd, %bb.ah ], [ %.sroa.8.1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78 ], [ %.sroa.8.1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit78 ]
  %i.fe = load double, ptr %.0.i.i.i.i.i.i74, align 8, !tbaa !8
  %i.ff = fptoui double %i.fe to i32
  %i.fg = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.cq, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ff, ptr %.0.i.i.i.i.i.i81.sink) #9 ; 0 uses
  %.not161 = icmp eq i32 %.sroa.8.3, 0
  br i1 %.not161, label %bb.aj, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit85

_ZN6hermes2vm11TwineChar16C2EPKc.exit85:          ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.fh, align 8, !tbaa !49
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 18, ptr %i.fi, align 8, !tbaa !52
  %i.fj = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.fj, align 8, !tbaa !53
  store ptr @.str.5, ptr %6, align 8, !tbaa !54
  %i.fk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.fk, align 8, !tbaa !55
  %i.fl = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.critedge69

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.fm = load double, ptr %.0.i.i.i.i.i.i74, align 8, !tbaa !8
  %i.fn = fadd double %i.fm, 1.000000e+00         ; 3 uses
  store double %i.fn, ptr %.0.i.i.i.i.i.i74, align 8, !tbaa !8
  %i.fo = fcmp uge double %i.fn, %i.da
  br i1 %i.fo, label %._crit_edge, label %bb.x, !llvm.loop !128

.critedge69:                                      ; preds = %bb.ad, %_ZN6hermes2vm11TwineChar16C2EPKc.exit85
  %.sroa.0151.3 = phi i32 [ %i.fl, %_ZN6hermes2vm11TwineChar16C2EPKc.exit85 ], [ 0, %bb.ad ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %"_ZN4llvh6detail10scope_exitIZN6hermes2vm18arrayPrototypeJoinEPvRNS3_7RuntimeENS3_10NativeArgsEE3$_0ED2Ev.exit"

._crit_edge:                                      ; preds = %bb.aj
  %i.fp = trunc i64 %.sroa.0124.3 to i32          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.fq = icmp ugt i32 %i.fp, 65535
  br i1 %i.fq, label %bb.al, label %bb.ak, !prof !132

bb.ak:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0124.0.lcssa197 = phi i32 [ 0, %._crit_edge.thread ], [ %i.fp, %._crit_edge ]
  %i.fr = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.sroa.0124.0.lcssa197) #9, !noalias !129
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.al:                                            ; preds = %._crit_edge
  %i.fs = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.fp) #9, !noalias !129
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.al, %bb.ak
  %.pn.i.i = phi { i32, i64 } [ %i.fs, %bb.al ], [ %i.fr, %bb.ak ] ; 2 uses
  %i.ft = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.am, !prof !7

bb.am:                                            ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.fv = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.fw = and i64 %i.fv, 281474976710655
  %i.fx = or disjoint i64 %i.fw, -844424930131968 ; 2 uses
  %i.fy = load ptr, ptr %i.b, align 8, !tbaa !18, !noalias !129 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 192 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !21, !noalias !129 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 200
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !30, !noalias !129
  %i.gd = icmp ult ptr %i.ga, %i.gc
  br i1 %i.gd, label %bb.an, label %bb.ao, !prof !31

bb.an:                                            ; preds = %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %i.ge, ptr %i.fz, align 8, !tbaa !21, !noalias !129
  store i64 %i.fx, ptr %i.ga, align 8, !tbaa !32, !noalias !129
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gf = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fy, i64 %i.fx) #9, !noalias !129
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.ga, %bb.an ], [ %i.gf, %bb.ao ]
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.gg, align 8, !tbaa !59, !alias.scope !129
  %i.gh = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.gh, ptr %7, align 8, !alias.scope !129
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.gi, align 8, !alias.scope !129
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !129
  %i.gj = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 192 ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !21 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 200
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !30
  %i.go = icmp ult ptr %i.gl, %i.gn
  br i1 %i.go, label %bb.aq, label %bb.ar, !prof !31

bb.aq:                                            ; preds = %bb.ap
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  store ptr %i.gp, ptr %i.gk, align 8, !tbaa !21
  store i64 -844424930131968, ptr %i.gl, align 8, !tbaa !32
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.ar:                                            ; preds = %bb.ap
  %i.gq = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gj, i64 -844424930131968) #9
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.aq, %bb.ar
  %.0.i.i.i.i.i.i86 = phi ptr [ %i.gl, %bb.aq ], [ %i.gq, %bb.ar ] ; 4 uses
  %.sroa.0.0.copyload.i.i87 = load i64, ptr %i.cq, align 8, !tbaa !32
  %i.gr = and i64 %.sroa.0.0.copyload.i.i87, 281474976710655
  %i.gs = inttoptr i64 %i.gr to ptr               ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm20arrayPrototypeSpliceEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.eq
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !42
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 128
  store i32 %i.eo, ptr %i.k, align 8, !tbaa !38
  store ptr %i.fd, ptr %i.j, align 8, !tbaa !30
  store ptr %i.en, ptr %i.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  %i.fe = add i32 %.0195415, 1                    ; 2 uses
  %i.ff = zext i32 %i.fe to i64
  %.not = icmp samesign ugt i64 %.0193486489, %i.ff
  br i1 %.not, label %bb.ag, label %.critedge, !llvm.loop !215

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %.loopexit

.critedge:                                        ; preds = %bb.aj, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit229
  %i.fg = uitofp nneg i32 %i.cn to double         ; 2 uses
  %i.fh = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 192 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !21 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 200
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !30
  %i.fm = icmp ult ptr %i.fj, %i.fl
  br i1 %i.fm, label %bb.al, label %bb.am, !prof !31

bb.al:                                            ; preds = %.critedge
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.fn, ptr %i.fi, align 8, !tbaa !21
  store double %i.fg, ptr %i.fj, align 8, !tbaa !32
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

bb.am:                                            ; preds = %.critedge
  %i.fo = bitcast double %i.fg to i64
  %i.fp = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fh, i64 %i.fo) #9
  br label %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit

_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit: ; preds = %bb.al, %bb.am
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.fj, %bb.al ], [ %i.fp, %bb.am ]
  %i.fq = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i.i, ptr %i.co, i32 0) #9
  %.mask = and i32 %i.fq, 255
  %i.fr = icmp eq i32 %.mask, 0
  br i1 %i.fr, label %.loopexit, label %bb.an, !prof !7

bb.an:                                            ; preds = %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 192 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !21 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 200
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !30
  %i.fx = icmp ult ptr %i.fu, %i.fw
  br i1 %i.fx, label %bb.ao, label %bb.ap, !prof !31

bb.ao:                                            ; preds = %bb.an
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.fy, ptr %i.ft, align 8, !tbaa !21
  store double %i.cm, ptr %i.fu, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.ap:                                            ; preds = %bb.an
  %i.fz = bitcast double %i.cm to i64
  %i.ga = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.fs, i64 %i.fz) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.ao, %bb.ap
  %.0.i.i.i.i.i.i231 = phi ptr [ %i.fu, %bb.ao ], [ %i.ga, %bb.ap ]
  %i.gb = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %i.co, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i231, ptr %i.co, i32 1) #9
  %.mask404 = and i32 %i.gb, 255
  %i.gc = icmp eq i32 %.mask404, 0
  br i1 %i.gc, label %.loopexit, label %bb.aq, !prof !7

bb.aq:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.gd = load i32, ptr %i.aq, align 8, !tbaa !101
  %spec.select = call i32 @llvm.usub.sat.i32(i32 %i.gd, i32 2) ; 4 uses
  %i.ge = zext i32 %spec.select to i64            ; 2 uses
  %i.gf = icmp samesign ugt i64 %.0193486489, %i.ge
  br i1 %i.gf, label %.preheader, label %bb.ay

.preheader:                                       ; preds = %bb.aq
  %i.gg = fsub double %i.ap, %i.cm                ; 2 uses
  %i.gh = fcmp uge double %i.bf, %i.gg
  %.pre454 = uitofp i32 %spec.select to double    ; 2 uses
  br i1 %i.gh, label %.critedge205, label %.lr.ph419

.lr.ph419:                                        ; preds = %.preheader
  %i.gi = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.gj = zext i32 %i.eo to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph419, %bb.av
  %.0196418 = phi double [ %i.bf, %.lr.ph419 ], [ %i.he, %bb.av ] ; 3 uses
  %i.gk = fadd double %.0196418, %i.cm            ; 2 uses
  %i.gl = fcmp uno double %i.gk, 0.000000e+00
  %i.gm = bitcast double %i.gk to i64
  %.sroa.0.0.i = select i1 %i.gl, i64 9221120237041090560, i64 %i.gm, !prof !7
  store i64 %.sroa.0.0.i, ptr %.0.i.i.i.i.i.i219, align 8, !tbaa !8
  %i.gn = fadd double %.0196418, %.pre454         ; 2 uses
  %i.go = fcmp uno double %i.gn, 0.000000e+00
  %i.gp = bitcast double %i.gn to i64
  %.sroa.0.0.i232 = select i1 %i.go, i64 9221120237041090560, i64 %i.gp, !prof !7
  store i64 %.sroa.0.0.i232, ptr %.0.i.i.i.i.i.i220, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  store i32 0, ptr %9, align 8, !tbaa !54
  store i32 -1, ptr %i.gi, align 4, !tbaa !110
  %i.gq = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i219, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %9) #9 ; 0 uses
  %.sroa.062.0.copyload = load ptr, ptr %7, align 8
  %.sroa.061.0.copyload = load i64, ptr %9, align 8
  %i.gr = call { i32, i64 } @_ZN6hermes2vm8JSObject28getComputedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_RNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.062.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.061.0.copyload, ptr nonnull %.0.i.i.i.i.i.i219) #9 ; 2 uses
  %i.gs = extractvalue { i32, i64 } %i.gr, 0
  %i.gt = extractvalue { i32, i64 } %i.gr, 1      ; 2 uses
  %i.gu = icmp eq i32 %i.gs, 0
  br i1 %i.gu, label %.critedge203, label %bb.as, !prof !7

bb.as:                                            ; preds = %bb.ar
  %.mask.i233 = and i64 %i.gt, -140737488355328
  %i.gv = icmp eq i64 %.mask.i233, -1970324836974592
  br i1 %i.gv, label %bb.au, label %bb.at, !prof !7

bb.at:                                            ; preds = %bb.as
  store i64 %i.gt, ptr %.0.i.i.i.i.i.i224, align 8, !tbaa !8
  %i.gw = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i220, ptr nonnull %.0.i.i.i.i.i.i224, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask407 = and i32 %i.gw, 255
  %i.gx = icmp eq i32 %.mask407, 0
  br i1 %i.gx, label %.critedge203, label %bb.av, !prof !7

bb.au:                                            ; preds = %bb.as
  %i.gy = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i220, i32 1) #9
  %.mask408 = and i32 %i.gy, 255
  %i.gz = icmp eq i32 %.mask408, 0
  br i1 %i.gz, label %.critedge203, label %bb.av, !prof !7

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gj
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !42
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  store i32 %i.eo, ptr %i.k, align 8, !tbaa !38
  store ptr %i.hd, ptr %i.j, align 8, !tbaa !30
  store ptr %i.en, ptr %i.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  %i.he = fadd double %.0196418, 1.000000e+00     ; 2 uses
  %i.hf = fcmp uge double %i.he, %i.gg
  br i1 %i.hf, label %.critedge205, label %bb.ar, !llvm.loop !216

.critedge203:                                     ; preds = %bb.au, %bb.at, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  br label %.loopexit

.critedge205:                                     ; preds = %bb.av, %.preheader
  %i.hg = fadd double %i.ap, -1.000000e+00        ; 2 uses
  store double %i.hg, ptr %.0.i.i.i.i.i.i226, align 8, !tbaa !8
  %i.hh = fsub double %i.ap, %i.cm
  %i.hi = fadd double %i.hh, %.pre454
  %i.hj = fadd double %i.hi, -1.000000e+00        ; 2 uses
  %i.hk = fcmp olt double %i.hj, %i.hg
  br i1 %i.hk, label %.lr.ph420, label %.critedge209

.lr.ph420:                                        ; preds = %.critedge205
  %i.hl = zext i32 %i.eo to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph420, %bb.ax
  %i.hm = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i226, i32 1) #9
  %.mask411 = and i32 %i.hm, 255
  %i.hn = icmp eq i32 %.mask411, 0
  br i1 %i.hn, label %.loopexit, label %bb.ax, !prof !7

bb.ax:                                            ; preds = %bb.aw
  %i.ho = load double, ptr %.0.i.i.i.i.i.i226, align 8, !tbaa !8
  %i.hp = fadd double %i.ho, -1.000000e+00        ; 2 uses
  %i.hq = fcmp uno double %i.hp, 0.000000e+00
  %i.hr = bitcast double %i.hp to i64
  %.sroa.0.0.i258 = select i1 %i.hq, i64 9221120237041090560, i64 %i.hr, !prof !7 ; 2 uses
  store i64 %.sroa.0.0.i258, ptr %.0.i.i.i.i.i.i226, align 8, !tbaa !8
  %i.hs = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %i.hl
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !42
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 128
  store i32 %i.eo, ptr %i.k, align 8, !tbaa !38
  store ptr %i.hv, ptr %i.j, align 8, !tbaa !30
  store ptr %i.en, ptr %i.i, align 8, !tbaa !21
  %i.hw = bitcast i64 %.sroa.0.0.i258 to double
  %i.hx = fcmp olt double %i.hj, %i.hw
  br i1 %i.hx, label %bb.aw, label %.critedge209, !llvm.loop !217

bb.ay:                                            ; preds = %bb.aq
  %i.hy = icmp samesign ult i64 %.0193486489, %i.ge
  br i1 %i.hy, label %bb.az, label %.critedge209

bb.az:                                            ; preds = %bb.ay
  %i.hz = fsub double %i.ap, %i.cm                ; 2 uses
  %i.ia = fcmp ule double %i.hz, %i.bf
  br i1 %i.ia, label %.critedge209, label %.lr.ph417

.lr.ph417:                                        ; preds = %bb.az
  %i.ib = uitofp i32 %spec.select to double
  %i.ic = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.id = zext i32 %i.eo to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph417, %bb.be
  %.0197416 = phi double [ %i.hz, %.lr.ph417 ], [ %i.is, %bb.be ] ; 3 uses
  %11 = fadd double %.0197416, %i.cm
  %12 = fadd double %11, -1.000000e+00            ; 2 uses
  %13 = fcmp uno double %12, 0.000000e+00
  %14 = bitcast double %12 to i64
  %.sroa.0.0.i259 = select i1 %13, i64 9221120237041090560, i64 %14, !prof !7
  store i64 %.sroa.0.0.i259, ptr %.0.i.i.i.i.i.i219, align 8, !tbaa !8
  %15 = fadd double %.0197416, %i.ib
  %16 = fadd double %15, -1.000000e+00            ; 2 uses
  %17 = fcmp uno double %16, 0.000000e+00
  %18 = bitcast double %16 to i64
  %.sroa.0.0.i260 = select i1 %17, i64 9221120237041090560, i64 %18, !prof !7
  store i64 %.sroa.0.0.i260, ptr %.0.i.i.i.i.i.i220, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  store i32 0, ptr %10, align 8, !tbaa !54
  store i32 -1, ptr %i.ic, align 4, !tbaa !110
  %i.ie = call noundef i32 @_ZN6hermes2vm8JSObject30getComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleIS1_EERNS8_INS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i219, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %10) #9 ; 0 uses
  %.sroa.033.0.copyload = load ptr, ptr %7, align 8
  %.sroa.032.0.copyload = load i64, ptr %10, align 8
  %i.if = call { i32, i64 } @_ZN6hermes2vm8JSObject28getComputedPropertyValue_RJSENS0_6HandleIS1_EERNS0_7RuntimeES3_RNS0_13MutableHandleINS0_8SymbolIDEEENS0_26ComputedPropertyDescriptorENS2_INS0_11HermesValueEEE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.033.0.copyload, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 %.sroa.032.0.copyload, ptr nonnull %.0.i.i.i.i.i.i219) #9 ; 2 uses
  %i.ig = extractvalue { i32, i64 } %i.if, 0
  %i.ih = extractvalue { i32, i64 } %i.if, 1      ; 2 uses
  %i.ii = icmp eq i32 %i.ig, 0
  br i1 %i.ii, label %.critedge207, label %bb.bb, !prof !7

bb.bb:                                            ; preds = %bb.ba
  %.mask.i261 = and i64 %i.ih, -140737488355328
  %i.ij = icmp eq i64 %.mask.i261, -1970324836974592
  br i1 %i.ij, label %bb.bd, label %bb.bc, !prof !7

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.ih, ptr %.0.i.i.i.i.i.i224, align 8, !tbaa !8
  %i.ik = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i220, ptr nonnull %.0.i.i.i.i.i.i224, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask405 = and i32 %i.ik, 255
  %i.il = icmp eq i32 %.mask405, 0
  br i1 %i.il, label %.critedge207, label %bb.be, !prof !7

bb.bd:                                            ; preds = %bb.bb
  %i.im = call i32 @_ZN6hermes2vm8JSObject14deleteComputedENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i220, i32 1) #9
  %.mask406 = and i32 %i.im, 255
  %i.in = icmp eq i32 %.mask406, 0
  br i1 %i.in, label %.critedge207, label %bb.be, !prof !7

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.io = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.id
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !42
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 128
  store i32 %i.eo, ptr %i.k, align 8, !tbaa !38
  store ptr %i.ir, ptr %i.j, align 8, !tbaa !30
  store ptr %i.en, ptr %i.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %i.is = fadd double %.0197416, -1.000000e+00    ; 2 uses
  %i.it = fcmp ule double %i.is, %i.bf
  br i1 %i.it, label %.critedge209, label %bb.ba, !llvm.loop !218

.critedge207:                                     ; preds = %bb.bd, %bb.bc, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %.loopexit

.critedge209:                                     ; preds = %bb.be, %bb.ax, %bb.az, %.critedge205, %bb.ay
  %i.iu = fcmp uno double %i.bf, 0.000000e+00
  %i.iv = bitcast double %i.bf to i64
  %.sroa.0.0.i278 = select i1 %i.iu, i64 9221120237041090560, i64 %i.iv, !prof !7
  store i64 %.sroa.0.0.i278, ptr %.0.i.i.i.i.i.i228, align 8, !tbaa !8
  %i.iw = zext i32 %i.bg to i64
  %.not201421 = icmp ugt i32 %i.bg, 2
  br i1 %.not201421, label %.lr.ph423, label %.critedge211

.lr.ph423:                                        ; preds = %.critedge209
  %i.ix = zext i32 %i.eo to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph423, %bb.bg
  %.0198422 = phi i64 [ 2, %.lr.ph423 ], [ %i.jp, %bb.bg ] ; 3 uses
  %i.iy = trunc nuw i64 %.0198422 to i32
  %i.iz = load i32, ptr %i.aq, align 8, !tbaa !101
  %i.ja = icmp ugt i32 %i.iz, %i.iy
  %i.jb = load ptr, ptr %2, align 8
  %i.jc = sub nsw i64 0, %.0198422
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.jc
  %i.je = getelementptr inbounds i8, ptr %i.jd, i64 -8
  %.sroa.02.0.i279 = select i1 %i.ja, ptr %i.je, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.jf = call i32 @_ZN6hermes2vm8JSObject27putComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_S7_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i228, ptr nonnull %.sroa.02.0.i279, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask410 = and i32 %i.jf, 255
  %i.jg = icmp eq i32 %.mask410, 0
  br i1 %i.jg, label %.loopexit, label %bb.bg, !prof !7

bb.bg:                                            ; preds = %bb.bf
  %i.jh = load double, ptr %.0.i.i.i.i.i.i228, align 8, !tbaa !8
  %i.ji = fadd double %i.jh, 1.000000e+00         ; 2 uses
  %i.jj = fcmp uno double %i.ji, 0.000000e+00
  %i.jk = bitcast double %i.ji to i64
  %.sroa.0.0.i288 = select i1 %i.jj, i64 9221120237041090560, i64 %i.jk, !prof !7
  store i64 %.sroa.0.0.i288, ptr %.0.i.i.i.i.i.i228, align 8, !tbaa !8
  %i.jl = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.ix
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !42
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 128
  store i32 %i.eo, ptr %i.k, align 8, !tbaa !38
  store ptr %i.jo, ptr %i.j, align 8, !tbaa !30
  store ptr %i.en, ptr %i.i, align 8, !tbaa !21
  %i.jp = add nuw nsw i64 %.0198422, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.jp, %i.iw
  br i1 %exitcond.not, label %.critedge211, label %bb.bf, !llvm.loop !219

.critedge211:                                     ; preds = %bb.bg, %.critedge209
  %i.jq = fsub double %i.ap, %i.cm
  %i.jr = uitofp i32 %spec.select to double
  %i.js = fadd double %i.jq, %i.jr                ; 2 uses
  %i.jt = load ptr, ptr %i.b, align 8, !tbaa !18  ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 192 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !21 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 200
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !30
  %i.jy = icmp ult ptr %i.jv, %i.jx
  br i1 %i.jy, label %bb.bh, label %bb.bi, !prof !31

bb.bh:                                            ; preds = %.critedge211
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  store ptr %i.jz, ptr %i.ju, align 8, !tbaa !21
  store double %i.js, ptr %i.jv, align 8, !tbaa !32
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit291

bb.bi:                                            ; preds = %.critedge211
  %i.ka = bitcast double %i.js to i64
  %i.kb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.jt, i64 %i.ka) #9
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit291

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit291: ; preds = %bb.bh, %bb.bi
  %.0.i.i.i.i.i.i290 = phi ptr [ %i.jv, %bb.bh ], [ %i.kb, %bb.bi ]
  %i.kc = call i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr %.0.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, ptr %.0.i.i.i.i.i.i290, ptr %.0.i.i.i.i.i.i, i32 1) #9
  %.mask409 = and i32 %i.kc, 255
  %i.kd = icmp eq i32 %.mask409, 0
  br i1 %i.kd, label %.loopexit, label %bb.bj, !prof !7

bb.bj:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit291
  %.sroa.0.0.copyload.i300 = load i64, ptr %i.co, align 8, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.aw, %bb.bf, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit291, %.critedge207, %.critedge203, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit, %bb.ak, %bb.bj
  %.sroa.0399.4 = phi i32 [ 0, %bb.ak ], [ 0, %.critedge207 ], [ 0, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %bb.bf ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit291 ], [ 1, %bb.bj ], [ 0, %.critedge203 ], [ 0, %bb.aw ]
  %.sroa.22.0 = phi i64 [ undef, %bb.ak ], [ undef, %.critedge207 ], [ undef, %_ZN6hermes2vm7JSArray17setLengthPropertyENS0_6HandleIS1_EERNS0_7RuntimeEjNS0_11PropOpFlagsE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ undef, %bb.bf ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit291 ], [ %.sroa.0.0.copyload.i300, %bb.bj ], [ undef, %.critedge203 ], [ undef, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %bb.bk

bb.bk:                                            ; preds = %bb.h, %.loopexit, %.thread487, %bb.n, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm11TwineChar16C2EPKc.exit218, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %bb.a
  %.sroa.0399.10 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %bb.h ], [ 0, %bb.n ], [ %i.cf, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.cl, %_ZN6hermes2vm11TwineChar16C2EPKc.exit218 ], [ %.sroa.0399.4, %.loopexit ], [ 0, %.thread487 ]
  %.sroa.22.6 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HermesValueEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %bb.h ], [ undef, %bb.n ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit218 ], [ %.sroa.22.0, %.loopexit ], [ undef, %.thread487 ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0399.10, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.22.6, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24arrayPrototypeCopyWithinEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::MutableHandle.176", align 8 ; 5 uses
  %5 = alloca %"class.hermes::vm::MutableHandle.175", align 8 ; 5 uses
  %6 = alloca %"struct.hermes::vm::ComputedPropertyDescriptor", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  store ptr %1, ptr %3, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18
  store ptr %i.c, ptr %i.a, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !36
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 4 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 3 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 4 uses
  store i32 0, ptr %i.k, align 8, !tbaa !38
  store ptr %3, ptr %i.b, align 8, !tbaa !18
  %i.l = load ptr, ptr %2, align 8, !tbaa !11, !noalias !220
  %i.m = call { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.l) #9 ; 2 uses
  %i.n = extractvalue { i32, i64 } %i.m, 0
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.b, !prof !7

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

end_hunk_1
