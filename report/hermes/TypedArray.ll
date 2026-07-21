inline.NumInlined: 3640
inline.NumDeleted: 1030
begin_hunk_0_@_ZN6hermes2vm28typedArrayPrototypeMapFilterEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.hq = add i64 %i.hp, %i.gu
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = and i32 %i.hh, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %bb.ac, %bb.ad
  %.sink8.i.i = phi ptr [ %i.hr, %bb.ad ], [ %i.hg, %bb.ac ]
  %.sink7.i.i = phi i32 [ %i.hs, %bb.ad ], [ %i.hh, %bb.ac ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.hu = zext nneg i32 %.sink7.i.i to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hu
  %.sroa.0.0.i.i = load i32, ptr %i.hv, align 4, !tbaa !3 ; 9 uses
  %i.hw = trunc i32 %.sroa.0.0.i.i to i8
  %i.hx = and i8 %i.hw, 15
  switch i8 %i.hx, label %default.unreachable [
    i8 0, label %bb.ae
    i8 8, label %bb.ae
    i8 1, label %bb.af
    i8 9, label %bb.af
    i8 2, label %bb.ag
    i8 10, label %bb.ag
    i8 3, label %bb.ah
    i8 11, label %bb.ah
    i8 4, label %bb.ai
    i8 12, label %bb.ai
    i8 5, label %bb.aj
    i8 13, label %bb.aj
    i8 6, label %bb.ak
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
    i8 15, label %bb.al
  ]

bb.ae:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.hy = zext i32 %.sroa.0.0.i.i to i64
  %i.hz = add i64 %i.hy, %i.gu
  %i.ia = or i64 %i.hz, -281474976710656
  %i.ib = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.ia
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.af:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ic = and i32 %.sroa.0.0.i.i, -8
  %i.id = zext i32 %i.ic to i64
  %i.ie = add i64 %i.id, %i.gu
  %i.if = or i64 %i.ie, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ag:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ig = and i32 %.sroa.0.0.i.i, -8
  %i.ih = zext i32 %i.ig to i64
  %i.ii = add i64 %i.ih, %i.gu
  %i.ij = or i64 %i.ii, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ah:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ik = and i32 %.sroa.0.0.i.i, -8
  %i.il = zext i32 %i.ik to i64
  %i.im = add i64 %i.il, %i.gu
  %i.in = inttoptr i64 %i.im to ptr
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.ip = load double, ptr %i.io, align 8, !tbaa !452 ; 2 uses
  %i.iq = fcmp uno double %i.ip, 0.000000e+00
  %i.ir = bitcast double %i.ip to i64
  %.sroa.0.0.i.i64 = select i1 %i.iq, i64 9221120237041090560, i64 %i.ir, !prof !73
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ai:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.is = ashr i32 %.sroa.0.0.i.i, 3
  %i.it = sitofp i32 %i.is to double
  %i.iu = bitcast double %i.it to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.aj:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.iv = lshr i32 %.sroa.0.0.i.i, 3
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = or disjoint i64 %i.iw, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.ak:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.iy = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.iz = zext i1 %i.iy to i64
  %i.ja = or disjoint i64 %i.iz, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread: ; preds = %bb.ab, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.al:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread, %bb.al
  %.sroa.05.0.i = phi i64 [ %i.ib, %bb.ae ], [ %i.if, %bb.af ], [ %i.ij, %bb.ag ], [ %.sroa.0.0.i.i64, %bb.ah ], [ %i.iu, %bb.ai ], [ %i.ix, %bb.aj ], [ %i.ja, %bb.ak ], [ -1548112371908608, %bb.al ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread ], [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit ]
  store i64 %.sroa.05.0.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %i.gj, align 8, !tbaa !21
  %i.jb = and i64 %.sroa.0.0.copyload.i.i.i65, 281474976710655
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = load i32, ptr %i.jc, align 4
  %i.je = lshr i32 %i.jd, 24
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.jf
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !382
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 72
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !396
  %i.jk = call i32 %i.jj(ptr nonnull %i.gj, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.04292, ptr nonnull %.0.i.i.i.i.i.i) #10, !inline_history !397
  %.mask = and i32 %i.jk, 255
  %i.jl = icmp eq i32 %.mask, 0
  br i1 %i.jl, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit
  %i.jm = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.gv
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !58
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 128
  store i32 %i.gt, ptr %i.k, align 8, !tbaa !57
  store ptr %i.jp, ptr %i.j, align 8, !tbaa !50
  store ptr %i.gs, ptr %i.i, align 8, !tbaa !41
  %i.jq = add nuw i32 %.04292, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.jq, %i.gi
  br i1 %exitcond.not, label %.critedge, label %bb.ab, !llvm.loop !454

.critedge:                                        ; preds = %bb.am, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %.sroa.0.0.copyload.i66 = load i64, ptr %i.gj, align 8, !tbaa !21
  br label %.loopexit

.critedge90:                                      ; preds = %bb.t
  %i.jr = load ptr, ptr %i.ef, align 8, !tbaa !54
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.eg
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !58
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 128
  store i32 %i.ed, ptr %i.ec, align 8, !tbaa !57
  store ptr %i.ju, ptr %i.eh, align 8, !tbaa !50
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !41
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread113, %.critedge90, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit, %.critedge, %bb.x, %bb.d, %bb.a
  %.sroa.085.5 = phi i32 [ 0, %bb.a ], [ %i.al, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 0, %bb.d ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ 0, %bb.x ], [ 1, %.critedge ], [ 0, %.critedge90 ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread113 ], [ 0, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ]
  %.sroa.9.5 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ undef, %bb.d ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb0EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit ], [ undef, %bb.x ], [ %.sroa.0.0.copyload.i66, %.critedge ], [ undef, %.critedge90 ], [ undef, %_ZN6hermes2vm12_GLOBAL__N_113mapFilterLoopILb1EEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeENS0_6HandleINS0_16JSTypedArrayBaseEEENSA_INS0_8CallableEEENSA_IS4_EENSA_INS0_7JSArrayEEEjj.exit.thread113 ], [ undef, %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.085.5, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.5, 1
  ret { i32, i64 } %.fca.1.insert
}

declare ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_ZN6hermes2vm16JSTypedArrayBase15allocateSpeciesERNS0_7RuntimeENS0_6HandleIS1_EEj(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25typedArrayPrototypeLengthEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !455
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i1 noundef zeroext false) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !15, !noalias !458
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !100  ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %bb.b
  %i.i = ptrtoint ptr %1 to i64
  %i.j = zext i32 %i.h to i64
  %i.k = add i64 %i.j, %i.i
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 37
  %i.n = load i8, ptr %i.m, align 1, !tbaa !101, !range !102, !noundef !103
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

bb.c:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22
  %i.r = uitofp i32 %i.q to double
  %i.s = bitcast double %i.r to i64
  br label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %bb.c, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit, %bb.b, %bb.a
  %.sroa.05.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.b ], [ 1, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ 1, %bb.c ]
  %.sroa.3.0 = phi i64 [ undef, %bb.a ], [ 0, %bb.b ], [ 0, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit ], [ %i.s, %bb.c ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23typedArrayPrototypeJoinEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  %6 = alloca %"class.hermes::vm::CallResult.184", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !461
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i1 noundef zeroext true) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !15, !noalias !464 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71
  %.not109 = icmp eq i32 %i.j, 0
  br i1 %.not109, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !21
  %.mask.i = and i64 %.sroa.0.0.copyload.i, -140737488355328
  %i.l = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.l, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.b, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.n = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.m, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 15) #10
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = or i64 %i.o, -844424930131968            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d, !prof !51

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.x, ptr %i.s, align 8, !tbaa !41
  store i64 %i.p, ptr %i.t, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread
  %i.y = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.r, i64 %i.p) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.d, %bb.c
  %.sroa.022.0 = phi ptr [ %i.y, %bb.d ], [ %i.t, %bb.c ], [ %i.k, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %i.z = tail call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.022.0) #10 ; 2 uses
  %.not110 = icmp eq ptr %i.z, inttoptr (i64 -1 to ptr)
  br i1 %.not110, label %bb.af, label %bb.e, !prof !73

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = or i64 %i.aa, -844424930131968          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !41 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.g, !prof !51

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !41
  store i64 %i.ab, ptr %i.af, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.ab) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i53 = phi ptr [ %i.af, %bb.f ], [ %i.ak, %bb.g ] ; 3 uses
  %i.al = icmp eq i32 %i.h, 0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.an = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.am, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #10
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = or i64 %i.ao, -844424930131968
  br label %bb.af

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %.sroa.0.0.copyload.i.i54 = load i64, ptr %.0.i.i.i.i.i.i53, align 8, !tbaa !21
  %i.aq = and i64 %.sroa.0.0.copyload.i.i54, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !467
  %i.au = and i32 %i.at, 2147483647               ; 2 uses
  %i.av = uitofp nneg i32 %i.au to double
  %i.aw = uitofp i32 %i.h to double
  %i.ax = fdiv double f0x41B0000000000000, %i.aw
  %i.ay = fcmp olt double %i.ax, %i.av
  br i1 %i.ay, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.j

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.az, align 8, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 44, ptr %i.ba, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.bb, align 8, !tbaa !12
  store ptr @.str.10, ptr %4, align 8, !tbaa !13
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bc, align 8, !tbaa !14
  %i.bd = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.af

bb.j:                                             ; preds = %bb.i
  %i.be = add i32 %i.h, -1
  %i.bf = mul i32 %i.au, %i.be
  %i.bg = zext i32 %i.bf to i64
  %i.bh = tail call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.h, i32 noundef 0) #10 ; 4 uses
  %.not111 = icmp eq ptr %i.bh, inttoptr (i64 -1 to ptr)
  br i1 %.not111, label %bb.af, label %bb.k, !prof !73

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = icmp ult ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m, !prof !51

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.bk, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.m:                                             ; preds = %bb.k
  %i.bp = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bi, i64 -1688849860263936) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i.i.i.i56 = phi ptr [ %i.bk, %bb.l ], [ %i.bp, %bb.m ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 156
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 208
  %7 = insertelement <2 x ptr> poison, ptr %i.bs, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.br, i64 1
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.r
  %.050117 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.df, %bb.r ] ; 3 uses
  %.sroa.6.0116 = phi i32 [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.dd, %bb.r ]
  %.sroa.090.0115 = phi i64 [ %i.bg, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ %i.da, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %1, ptr %5, align 8, !tbaa !52
  %i.by = load ptr, ptr %i.ac, align 8, !tbaa !38
  store ptr %i.by, ptr %i.bq, align 8, !tbaa !53
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !54
  store i32 4, ptr %i.bv, align 4, !tbaa !55
  store ptr %i.bs, ptr %i.bt, align 8
  store i32 1, ptr %i.bu, align 8, !tbaa !56
  store <2 x ptr> %8, ptr %i.bw, align 8, !tbaa !58
  store i32 0, ptr %i.bx, align 8, !tbaa !57
  store ptr %5, ptr %i.ac, align 8, !tbaa !38
  %.sroa.0.0.copyload.i.i57 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bz = and i64 %.sroa.0.0.copyload.i.i57, 281474976710655
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = lshr i32 %i.cb, 24
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !382
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !384
  %i.ci = call i64 %i.ch(ptr nonnull %i.ca, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.050117) #10, !inline_history !388
  store i64 %i.ci, ptr %.0.i.i.i.i.i.i56, align 8, !tbaa !19
  %i.cj = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i56) #10 ; 2 uses
  %.not112 = icmp eq ptr %i.cj, inttoptr (i64 -1 to ptr)
  br i1 %.not112, label %bb.s, label %bb.o, !prof !73

bb.o:                                             ; preds = %bb.n
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = or i64 %i.ck, -844424930131968          ; 3 uses
  %i.cm = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 192 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 200
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !50
  %i.cr = icmp ult ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.p, label %bb.q, !prof !51

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !41
  store i64 %i.cl, ptr %i.co, align 8, !tbaa !21
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ct = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cm, i64 %i.cl) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i60.pre = load i64, ptr %i.ct, align 8, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.sroa.0.0.copyload.i.i60 = phi i64 [ %i.cl, %bb.p ], [ %.sroa.0.0.copyload.i.i60.pre, %bb.q ]
  %.0.i.i.i.i.i.i58 = phi ptr [ %i.co, %bb.p ], [ %i.ct, %bb.q ]
  %i.cu = and i64 %.sroa.0.0.copyload.i.i60, 281474976710655
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !467
  %i.cy = and i32 %i.cx, 2147483647
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = add i64 %.sroa.090.0115, %i.cz          ; 3 uses
  %i.db = lshr i64 %i.da, 32
  %i.dc = trunc nuw i64 %i.db to i32
  %i.dd = or i32 %.sroa.6.0116, %i.dc             ; 2 uses
  %i.de = call i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.050117, ptr nonnull %.0.i.i.i.i.i.i58) #10 ; 0 uses
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.df = add nuw i32 %.050117, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %i.h
  br i1 %exitcond.not, label %.critedge, label %bb.n, !llvm.loop !470

bb.s:                                             ; preds = %bb.n
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.af

.critedge:                                        ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %.not.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i, label %bb.t, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit.i

_ZN6hermes2vm11TwineChar16C2EPKc.exit.i:          ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10, !noalias !471
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.dg, align 8, !tbaa !7, !noalias !471
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.dh, align 8, !tbaa !11, !noalias !471
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.di, align 8, !tbaa !12, !noalias !471
  store ptr @.str.21, ptr %3, align 8, !tbaa !13, !noalias !471
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.dj, align 8, !tbaa !14, !noalias !471
  %i.dk = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10, !noalias !471 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10, !noalias !471
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

bb.t:                                             ; preds = %.critedge
  %i.dl = trunc i64 %i.da to i32                  ; 3 uses
  %i.dm = icmp ugt i32 %i.dl, 65535
  br i1 %i.dm, label %bb.v, label %bb.u, !prof !73

bb.u:                                             ; preds = %bb.t
  %i.dn = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dl) #10, !noalias !471
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.v:                                             ; preds = %bb.t
  %i.do = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dl) #10, !noalias !471
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.v, %bb.u
  %.pn.i.i = phi { i32, i64 } [ %i.do, %bb.v ], [ %i.dn, %bb.u ] ; 2 uses
  %i.dp = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.w, !prof !73

bb.w:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.dr = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.ds = and i64 %i.dr, 281474976710655
  %i.dt = or disjoint i64 %i.ds, -844424930131968 ; 2 uses
  %i.du = load ptr, ptr %i.ac, align 8, !tbaa !38, !noalias !471 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 192 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !41, !noalias !471 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 200
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !50, !noalias !471
  %i.dz = icmp ult ptr %i.dw, %i.dy
  br i1 %i.dz, label %bb.x, label %bb.y, !prof !51

bb.x:                                             ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !41, !noalias !471
  store i64 %i.dt, ptr %i.dw, align 8, !tbaa !21, !noalias !471
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.eb = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.du, i64 %i.dt) #10, !noalias !471
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dw, %bb.x ], [ %i.eb, %bb.y ]
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.ec, align 8, !tbaa !474, !alias.scope !471
  %i.ed = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.ed, ptr %6, align 8, !alias.scope !471
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ee, align 8, !alias.scope !471
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !471
  %i.ef = load ptr, ptr %i.ac, align 8, !tbaa !38 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 192 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !41 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 200
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !50
  %i.ek = icmp ult ptr %i.eh, %i.ej
  br i1 %i.ek, label %bb.aa, label %bb.ab, !prof !51

bb.aa:                                            ; preds = %bb.z
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr %i.el, ptr %i.eg, align 8, !tbaa !41
  store i64 -844424930131968, ptr %i.eh, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.em = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ef, i64 -844424930131968) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.aa, %bb.ab
  %.0.i.i.i.i.i.i61 = phi ptr [ %i.eh, %bb.aa ], [ %i.em, %bb.ab ] ; 4 uses
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.bh, align 8, !tbaa !21
  %i.en = and i64 %.sroa.0.0.copyload.i.i62, 281474976710655
  %i.eo = inttoptr i64 %i.en to ptr               ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 20
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !447
  %.not.i63 = icmp eq i32 %i.eq, 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.es = load i32, ptr %i.er, align 4
  %i.et = icmp ne i32 %i.es, 0
  %or.cond.i = select i1 %.not.i63, i1 %i.et, i1 false
  br i1 %or.cond.i, label %bb.ac, label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %.pre = ptrtoint ptr %1 to i64
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

bb.ac:                                            ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.eu, align 4, !tbaa !3
  %i.ev = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ew = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ex = add i64 %i.ew, %i.ev
  %i.ey = inttoptr i64 %i.ex to ptr
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.0.0.i.i = load i32, ptr %i.ez, align 4, !tbaa !3
  %i.fa = and i32 %.sroa.0.0.i.i, -8
  %i.fb = zext i32 %i.fa to i64
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge, %bb.ac
  %.pre-phi = phi i64 [ %.pre, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge ], [ %i.ev, %bb.ac ] ; 4 uses
  %.sroa.0.0.i64 = phi i64 [ 0, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit._ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit_crit_edge ], [ %i.fb, %bb.ac ]
  %i.fc = add i64 %.sroa.0.0.i64, %.pre-phi       ; 2 uses
  %i.fd = or i64 %i.fc, -844424930131968
  store i64 %i.fd, ptr %.0.i.i.i.i.i.i61, align 8, !tbaa !19
  %i.fe = and i64 %i.fc, 281474976710655
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !467
  %i.fi = and i32 %i.fh, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i61, i32 noundef %i.fi)
  %.not119 = icmp eq i32 %i.h, 1
  br i1 %.not119, label %._crit_edge, label %.lr.ph

end_hunk_0
