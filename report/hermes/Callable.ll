inline.NumInlined: 2092
inline.NumDeleted: 1158
begin_hunk_0_@_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE:bb.a
  %i.o = or disjoint i32 %i.e, 234881024
  store i32 %i.o, ptr %i.n, align 8, !tbaa !267
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = or i64 %i.p, -281474976710656
  br label %bb.e

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit: ; preds = %bb.a
  %i.r = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.b) #11
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.t, label %bb.e, !prof !353

bb.e:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit
  %.sroa.3.0.i41 = phi i64 [ %i.q, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit.thread ], [ -281474976710656, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !7, !noalias !354 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !11, !noalias !354 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 200
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21, !noalias !354
  %i.z = icmp ult ptr %i.w, %i.y
  br i1 %i.z, label %bb.f, label %bb.g, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !11, !noalias !354
  store i64 %.sroa.3.0.i41, ptr %i.w, align 8, !tbaa !23, !noalias !354
  br label %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EEPS7_.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.u, i64 %.sroa.3.0.i41) #11, !noalias !354
  br label %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EEPS7_.exit

_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EEPS7_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.w, %bb.f ], [ %i.ab, %bb.g ] ; 2 uses
  store ptr %.0.i.i.i.i.i.i.i, ptr %5, align 8, !tbaa !357, !alias.scope !354
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.l, label %.preheader

.preheader:                                       ; preds = %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EEPS7_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ae = zext i32 %2 to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit ] ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !359, !noalias !361
  %i.ag = sub nsw i64 0, %indvars.iv
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 2 uses
  %i.aj = load ptr, ptr %5, align 8, !tbaa !357
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !23
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr               ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = load atomic i32, ptr %i.am monotonic, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i16.i = load i64, ptr %i.ai, align 8, !tbaa !23 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4
  %i.ap = and i32 %i.ao, 16777208
  %i.aq = add nsw i32 %i.ap, -8
  %i.ar = lshr exact i32 %i.aq, 3
  %i.as = icmp ult i32 %i.an, %i.ar
  br i1 %i.as, label %bb.i, label %bb.k, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.au = zext nneg i32 %i.an to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i16.i, ptr %i.av, align 8, !tbaa !23
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !364
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = and i64 %i.ax, 1125899902648320
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = icmp eq ptr %i.aw, %i.az
  br i1 %i.ba, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.ad, ptr noundef nonnull align 8 dereferenceable(8) %i.av, i64 %.sroa.0.0.copyload.i.i16.i) #11
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i: ; preds = %bb.j, %bb.i
  %i.bb = add nuw nsw i32 %i.an, 1
  store atomic i32 %i.bb, ptr %i.am release, align 4
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit

bb.k:                                             ; preds = %bb.h
  %i.bc = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.ai) #11 ; 0 uses
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit: ; preds = %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not24 = icmp eq i64 %indvars.iv.next, %i.ae
  br i1 %.not24, label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit29, label %bb.h, !llvm.loop !365

bb.l:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner17makeMutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEENS0_13MutableHandleIT_EEPS7_.exit
  %.sroa.0.0.copyload.i.i.i25 = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !23
  %i.bd = and i64 %.sroa.0.0.copyload.i.i.i25, 281474976710655
  %i.be = inttoptr i64 %i.bd to ptr               ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load atomic i32, ptr %i.bf monotonic, align 4 ; 3 uses
  %.sroa.0.0.copyload.i.i16.i26 = load i64, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, align 8, !tbaa !23 ; 2 uses
  %i.bh = load i32, ptr %i.be, align 4
  %i.bi = and i32 %i.bh, 16777208
  %i.bj = add nsw i32 %i.bi, -8
  %i.bk = lshr exact i32 %i.bj, 3
  %i.bl = icmp ult i32 %i.bg, %i.bk
  br i1 %i.bl, label %bb.m, label %bb.o, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bn = zext nneg i32 %i.bg to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn ; 3 uses
  store i64 %.sroa.0.0.copyload.i.i16.i26, ptr %i.bo, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !364
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = and i64 %i.br, 1125899902648320
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = icmp eq ptr %i.bq, %i.bt
  br i1 %i.bu, label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i28, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 856
  tail call void @_ZN6hermes2vm7HadesGC27constructorWriteBarrierSlowEPKNS0_17GCHermesValueBaseINS0_11HermesValueEEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.bo, i64 %.sroa.0.0.copyload.i.i16.i26) #11
  br label %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i28

_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i28: ; preds = %bb.n, %bb.m
  %i.bw = add nuw nsw i32 %i.bg, 1
  store atomic i32 %i.bw, ptr %i.bf release, align 4
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit29

bb.o:                                             ; preds = %bb.l
  %i.bx = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE16pushBackSlowPathERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E) #11 ; 0 uses
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit29

_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit29: ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit, %bb.o, %_ZN6hermes2vm17GCHermesValueBaseINS0_11HermesValueEEC2ISt17integral_constantIbLb1EEEES2_RNS0_7HadesGCE.exit.i28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.by, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #11
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 9520
  store ptr %i.bz, ptr %7, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cb = call noundef ptr @_ZN6hermes2vm6GCBase5makeAINS0_13BoundFunctionELb1ELNS0_12HasFinalizerE0ELNS0_9LongLivedE0EJRNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS8_INS0_11HiddenClassEEERNS8_INS0_8CallableEEERNS0_13MutableHandleINS0_16ArrayStorageBaseINS0_11HermesValueEEEEEEEEPT_jDpOT3_(ptr noundef nonnull align 8 dereferenceable(717) %i.ca, i32 noundef 40, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  %.val = load ptr, ptr %i.t, align 8, !tbaa !7   ; 3 uses
  %.01320.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i32 14, ptr %.01320.i.ptr.i.i, align 4, !tbaa !3
  %.01320.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 36
  store i32 14, ptr %.01320.i.ptr.1.i.i, align 4, !tbaa !3
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = or i64 %i.cc, -281474976710656          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 192 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !11 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 200
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !21
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.p, label %bb.q, !prof !22

bb.p:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit29
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.cj, ptr %i.ce, align 8, !tbaa !11
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !23
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_13BoundFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

bb.q:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleIS2_EE.exit29
  %i.ck = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %.val, i64 %i.cd) #11
  br label %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_13BoundFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit

_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_13BoundFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i.i.i.i.i30 = phi ptr [ %i.cf, %bb.p ], [ %i.ck, %bb.q ] ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %4, align 8
  %i.cl = call noundef i32 @_ZN6hermes2vm13BoundFunction27initializeLengthAndName_RJSENS0_6HandleINS0_8CallableEEERNS0_7RuntimeES4_j(ptr %.0.i.i.i.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr %.sroa.01.0.copyload, i32 noundef %i.a)
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_13BoundFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit
  %.sroa.0.0.copyload.i = load i64, ptr %.0.i.i.i.i.i.i.i30, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_13BoundFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit, %bb.r
  %.sroa.035.0 = phi i32 [ 1, %bb.r ], [ 0, %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_13BoundFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit ]
  %.sroa.436.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.r ], [ undef, %_ZN6hermes2vm12JSObjectInitL12initToHandleINS0_13BoundFunctionEEENS0_6HandleIT_EERNS0_7RuntimeEPS5_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit, %bb.s
  %.sroa.035.1 = phi i32 [ %.sroa.035.0, %bb.s ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ]
  %.sroa.436.1 = phi i64 [ %.sroa.436.0, %bb.s ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_11HermesValueEE6createERNS0_7RuntimeEj.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.035.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.436.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm13BoundFunction27initializeLengthAndName_RJSENS0_6HandleINS0_8CallableEEERNS0_7RuntimeES4_j(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.hermes::vm::SmallXString", align 8 ; 11 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !23
  %i.a = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6hermes2vm8JSObject20initializeLazyObjectERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %2) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call { i32, double } @_ZN6hermes2vm8Callable28extractOwnLengthProperty_RJSENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(9816) %1) ; 2 uses
  %i.g = extractvalue { i32, double } %i.f, 0
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.bd, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i32, double } %i.f, 1     ; 2 uses
  %i.j = uitofp i32 %3 to double                  ; 2 uses
  %i.k = fcmp ugt double %i.i, %i.j
  %i.l = fsub double %i.i, %i.j
  %i.m = select i1 %i.k, double %i.l, double 0.000000e+00 ; 2 uses
  %i.n = fcmp uno double %i.m, 0.000000e+00
  %i.o = bitcast double %i.m to i64
  %.sroa.0.0.i = select i1 %i.n, i64 9221120237041090560, i64 %i.o, !prof !264 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !7    ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = icmp ult ptr %i.s, %i.u
  br i1 %i.v, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.r, align 8, !tbaa !11
  store i64 %.sroa.0.0.i, ptr %i.s, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.f:                                             ; preds = %bb.d
  %i.x = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.q, i64 %.sroa.0.0.i) #11
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i.i.i.i.i = phi ptr [ %i.s, %bb.e ], [ %i.x, %bb.f ]
  %i.y = tail call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, i16 8, ptr %.0.i.i.i.i.i.i) #11
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.bd, label %bb.g, !prof !264

bb.g:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.aa = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, ptr nonnull %2, i32 0, ptr noundef null) #11 ; 2 uses
  %i.ab = extractvalue { i32, i64 } %i.aa, 0
  %i.ac = extractvalue { i32, i64 } %i.aa, 1      ; 3 uses
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.bd, label %bb.h, !prof !264

bb.h:                                             ; preds = %bb.g
  %.mask.i = and i64 %i.ac, -281474976710656
  %i.ae = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.ae, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !7   ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !11 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.k, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.al, ptr %i.ag, align 8, !tbaa !11
  store i64 %i.ac, ptr %i.ah, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.k:                                             ; preds = %bb.i
  %i.am = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.af, i64 %i.ac) #11
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.l:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 9240
  %i.ao = tail call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.an, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 14) #11
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = or i64 %i.ap, -844424930131968          ; 2 uses
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !7   ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 192 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !11 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 200
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  %i.aw = icmp ult ptr %i.at, %i.av
  br i1 %i.aw, label %bb.m, label %bb.n, !prof !22

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ax, ptr %i.as, align 8, !tbaa !11
  store i64 %i.aq, ptr %i.at, align 8, !tbaa !23
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.n:                                             ; preds = %bb.l
  %i.ay = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ar, i64 %i.aq) #11
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.n, %bb.m, %bb.k, %bb.j
  %.sroa.015.0 = phi ptr [ %i.am, %bb.k ], [ %i.ah, %bb.j ], [ %i.at, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.sroa.015.0) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.ba, ptr %4, align 8, !tbaa !296
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 32, ptr %i.bb, align 4, !tbaa !297
  store <4 x i16> <i16 98, i16 111, i16 117, i16 110>, ptr %i.ba, align 8, !tbaa !366
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i16 100, ptr %i.bc, align 8, !tbaa !366
  %6 = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 32, ptr %6, align 2, !tbaa !366
  %i.bd = extractvalue { ptr, i64 } %i.az, 0      ; 7 uses
  %i.be = extractvalue { ptr, i64 } %i.az, 1      ; 8 uses
  store i32 6, ptr %5, align 8, !tbaa !298
  %.sroa.7.8.extract.trunc = trunc i64 %i.be to i32 ; 3 uses
  %i.bf = icmp slt i32 %.sroa.7.8.extract.trunc, 0
  br i1 %i.bf, label %bb.o, label %bb.v

bb.o:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.bg = and i32 %.sroa.7.8.extract.trunc, 1073741824
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr               ; 5 uses
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = icmp ugt i32 %i.bj, 150994943
  br i1 %i.bk, label %bb.q, label %bb.r, !prof !264

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !368
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %.mask.i.i.i.i.i.i.i.i.i.i = and i32 %i.bj, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i, label %bb.u [
    i32 134217728, label %bb.s
    i32 67108864, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  br label %bb.ac

bb.t:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %bb.ac

bb.u:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.bp, align 8, !tbaa !23
  %i.bq = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.br = inttoptr i64 %i.bq to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !368
  br label %bb.ac

bb.v:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %.not.i1.i = icmp samesign ult i32 %.sroa.7.8.extract.trunc, 1073741824
  br i1 %.not.i1.i, label %bb.ai, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.bv = inttoptr i64 %i.bu to ptr               ; 8 uses
  %i.bw = load i32, ptr %i.bv, align 4            ; 3 uses
  %i.bx = icmp ugt i32 %i.bw, 150994943
  br i1 %i.bx, label %bb.aj, label %bb.x, !prof !264

bb.x:                                             ; preds = %bb.w
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.bw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.aa [
    i32 117440512, label %bb.y
    i32 50331648, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  br label %bb.ak

bb.z:                                             ; preds = %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  br label %bb.ak

bb.aa:                                            ; preds = %bb.x
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.ca, align 8, !tbaa !23
  %i.cb = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !369
  br label %bb.ak

bb.ab:                                            ; preds = %bb.o
  %i.cf = and i64 %i.be, 1073741823               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cf
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57

bb.ac:                                            ; preds = %bb.q, %bb.s, %bb.t, %bb.u
  %.0.i.sink.i.i.ph = phi ptr [ %i.bt, %bb.u ], [ %i.bo, %bb.t ], [ %i.bn, %bb.s ], [ %i.bm, %bb.q ]
  %i.ch = and i64 %i.be, 1073741823               ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i.ph, i64 %i.ch ; 4 uses
  %.sroa.0.0.copyload.i.i.i.i.i55 = load i64, ptr %i.bd, align 8, !tbaa !23
  %i.cj = and i64 %.sroa.0.0.copyload.i.i.i.i.i55, 281474976710655
  %i.ck = inttoptr i64 %i.cj to ptr               ; 5 uses
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  %i.cm = icmp ugt i32 %i.cl, 150994943
  br i1 %i.cm, label %bb.ad, label %bb.ae, !prof !264

bb.ad:                                            ; preds = %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !368
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57

bb.ae:                                            ; preds = %bb.ac
  %.mask.i.i.i.i.i.i.i.i.i.i56 = and i32 %i.cl, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i.i56, label %bb.ah [
    i32 134217728, label %bb.af
    i32 67108864, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57

bb.ag:                                            ; preds = %bb.ae
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57

bb.ah:                                            ; preds = %bb.ae
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.0.0.copyload.i.i.i2.i.i59 = load i64, ptr %i.cr, align 8, !tbaa !23
  %i.cs = and i64 %.sroa.0.0.copyload.i.i.i2.i.i59, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !368
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57: ; preds = %bb.ab, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %i.cw = phi ptr [ %i.cg, %bb.ab ], [ %i.ci, %bb.ad ], [ %i.ci, %bb.af ], [ %i.ci, %bb.ag ], [ %i.ci, %bb.ah ]
  %i.cx = phi i64 [ %i.cf, %bb.ab ], [ %i.ch, %bb.ad ], [ %i.ch, %bb.af ], [ %i.ch, %bb.ag ], [ %i.ch, %bb.ah ]
  %.0.i.sink.i.i58 = phi ptr [ %i.bd, %bb.ab ], [ %i.co, %bb.ad ], [ %i.cp, %bb.af ], [ %i.cq, %bb.ag ], [ %i.cv, %bb.ah ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i58, i64 %i.cx
  %.sroa.7.12.extract.shift82 = lshr i64 %i.be, 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sroa.7.12.extract.shift82
  br label %_ZNK6hermes2vm10StringView3endEv.exit

bb.ai:                                            ; preds = %bb.v
  %i.da = and i64 %i.be, 1073741823               ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.bd, i64 %i.da
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47

bb.aj:                                            ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !369 ; 2 uses
  %i.de = and i64 %i.be, 1073741823               ; 2 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %i.de
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47

bb.ak:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.0.i.sink.i4.i.ph.ph = phi ptr [ %i.by, %bb.y ], [ %i.bz, %bb.z ], [ %i.ce, %bb.aa ]
  %i.dg = and i64 %i.be, 1073741823               ; 4 uses
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i.ph.ph, i64 %i.dg ; 3 uses
  %.mask.i.i.i.i.i.i.i.i.i3.i46 = and i32 %i.bw, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i46, label %bb.an [
    i32 117440512, label %bb.al
    i32 50331648, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47

bb.am:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47

bb.an:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i53 = load i64, ptr %i.dk, align 8, !tbaa !23
  %i.dl = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i53, 281474976710655
  %i.dm = inttoptr i64 %i.dl to ptr
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !369
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47: ; preds = %bb.ai, %bb.an, %bb.am, %bb.al, %bb.aj
  %.pre-phi = phi i64 [ %i.da, %bb.ai ], [ %i.dg, %bb.an ], [ %i.dg, %bb.am ], [ %i.dg, %bb.al ], [ %i.de, %bb.aj ]
  %i.dp = phi ptr [ %i.db, %bb.ai ], [ %i.dh, %bb.an ], [ %i.dh, %bb.am ], [ %i.dh, %bb.al ], [ %i.df, %bb.aj ]
  %.0.i.sink.i4.i48 = phi ptr [ %i.bd, %bb.ai ], [ %i.do, %bb.an ], [ %i.dj, %bb.am ], [ %i.di, %bb.al ], [ %i.dd, %bb.aj ]
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i48, i64 %.pre-phi
  %.sroa.7.12.extract.shift = lshr i64 %i.be, 32
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %.sroa.7.12.extract.shift
  %i.ds = ptrtoint ptr %i.dr to i64
  br label %_ZNK6hermes2vm10StringView3endEv.exit

_ZNK6hermes2vm10StringView3endEv.exit:            ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47
  %.sroa.0.0.i43113 = phi ptr [ %i.cw, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47 ] ; 5 uses
  %.sroa.3.0.i111 = phi ptr [ null, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57 ], [ %i.dp, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47 ] ; 5 uses
  %.sroa.3.0.i49 = phi i64 [ 0, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57 ], [ %i.ds, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47 ]
  %.sroa.0.0.i50 = phi ptr [ %i.cz, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i57 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i47 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i50, null
  %i.dt = ptrtoint ptr %.sroa.0.0.i50 to i64
  %i.du = ptrtoint ptr %.sroa.0.0.i43113 to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ptrtoint ptr %.sroa.3.0.i111 to i64
  %i.dx = sub i64 %.sroa.3.0.i49, %i.dw
  %i.dy = ashr exact i64 %i.dx, 1
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %i.dy, i64 %i.dv ; 8 uses
  %i.dz = icmp ugt i64 %.0.i.i.i, 26
  br i1 %i.dz, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZNK6hermes2vm10StringView3endEv.exit
  %i.ea = add i64 %.0.i.i.i, 6
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.ba, i64 noundef %i.ea, i64 noundef 2) #11
  %.pre.i.i = load i32, ptr %5, align 8, !tbaa !298 ; 2 uses
  %.pre15.i.i = zext i32 %.pre.i.i to i64
  %.pre.pre = load ptr, ptr %4, align 8, !tbaa !296
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNK6hermes2vm10StringView3endEv.exit
  %.pre = phi ptr [ %.pre.pre, %bb.ao ], [ %i.ba, %_ZNK6hermes2vm10StringView3endEv.exit ] ; 4 uses
  %.pre-phi.i.i = phi i64 [ %.pre15.i.i, %bb.ao ], [ 6, %_ZNK6hermes2vm10StringView3endEv.exit ]
  %i.eb = phi i32 [ %.pre.i.i, %bb.ao ], [ 6, %_ZNK6hermes2vm10StringView3endEv.exit ]
  %i.ec = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i:             ; preds = %bb.ap
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %.pre-phi.i.i ; 3 uses
  %xtraiter = and i64 %.0.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.not.i5.i.i.i.i.i.i.i.i.i.i.prol = icmp eq ptr %.sroa.0.0.i43113, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.i.prol, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %i.ee = load i8, ptr %.sroa.0.0.i43113, align 1, !tbaa !267
  %i.ef = sext i8 %i.ee to i16
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i43113, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %i.eh = load i16, ptr %.sroa.3.0.i111, align 2, !tbaa !366
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i111, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol: ; preds = %bb.ar, %bb.aq
  %.sink.i.i.i.i.i.i.i.i.i.i.prol = phi i16 [ %i.eh, %bb.ar ], [ %i.ef, %bb.aq ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ null, %bb.ar ], [ %i.eg, %bb.aq ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ei, %bb.ar ], [ %.sroa.3.0.i111, %bb.aq ]
  store i16 %.sink.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.ed, align 2, !tbaa !366
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.ek = add nsw i64 %.0.i.i.i, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i
  %.015.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.0.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %i.ek, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol ]
  %.0414.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %i.ej, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.5.013.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.3.0.i111, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.07.012.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.0.0.i43113, %.lr.ph.i.i.i.i.i.i.i.i.preheader.i.i ], [ %.sroa.07.1.i.i.i.i.i.i.i.i.i.i.prol, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.el = icmp eq i64 %.0.i.i.i, 1
  br i1 %i.el, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1
  %.015.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ey, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1 ], [ %.015.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.0414.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ex, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1 ], [ %.0414.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.5.013.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.5.013.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.07.012.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i.i.i.i.i.i.1, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1 ], [ %.sroa.07.012.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.not.i5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.em = load i8, ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !267
  %i.en = sext i8 %i.em to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.07.012.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ep = load i16, ptr %.sroa.5.013.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !366
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.5.013.i.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ep, %bb.at ], [ %i.en, %bb.as ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.at ], [ %i.eo, %bb.as ] ; 3 uses
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eq, %bb.at ], [ %.sroa.5.013.i.i.i.i.i.i.i.i.i.i, %bb.as ] ; 3 uses
  store i16 %.sink.i.i.i.i.i.i.i.i.i.i, ptr %.0414.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !366
  %i.er = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i.i.i.i.i.i, i64 2
  %.not.i5.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i5.i.i.i.i.i.i.i.i.i.i.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.es = load i8, ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i.i, align 1, !tbaa !267
  %i.et = sext i8 %i.es to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i.i.i.i.i.i, i64 1
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1

bb.av:                                            ; preds = %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.ev = load i16, ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i.i, align 2, !tbaa !366
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.5.1.i.i.i.i.i.i.i.i.i.i, i64 2
  br label %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1

_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1: ; preds = %bb.av, %bb.au
  %.sink.i.i.i.i.i.i.i.i.i.i.1 = phi i16 [ %i.ev, %bb.av ], [ %i.et, %bb.au ]
  %.sroa.07.1.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ null, %bb.av ], [ %i.eu, %bb.au ]
  %.sroa.5.1.i.i.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.ew, %bb.av ], [ %.sroa.5.1.i.i.i.i.i.i.i.i.i.i, %bb.au ]
  store i16 %.sink.i.i.i.i.i.i.i.i.i.i.1, ptr %i.er, align 2, !tbaa !366
  %i.ex = getelementptr inbounds nuw i8, ptr %.0414.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.ey = add nsw i64 %.015.i.i.i.i.i.i.i.i.i.i, -2
  %i.ez = icmp sgt i64 %.015.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.ez, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit, !llvm.loop !373

_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN6hermes2vm10StringView14const_iteratorppEv.exit.i.i.i.i.i.i.i.i.i.i.1, %bb.ap
  %i.fa = trunc i64 %.0.i.i.i to i32
  %i.fb = add i32 %i.eb, %i.fa                    ; 3 uses
  store i32 %i.fb, ptr %5, align 8, !tbaa !298
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 9240 ; 2 uses
  %i.fd = zext i32 %i.fb to i64                   ; 2 uses
  %.not10.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not10.i.i, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit
  %i.fe = add nuw i64 %i.fd, 9223372036854775807
  %i.ff = and i64 %i.fe, 9223372036854775807      ; 2 uses
  %i.fg = add nuw i64 %i.ff, 1                    ; 2 uses
  %xtraiter131 = and i64 %i.fg, 3                 ; 3 uses
  %i.fh = icmp samesign ult i64 %i.ff, 3
  br i1 %i.fh, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.fg, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.gi, %.lr.ph.i.i ]
  %.0811.i.i = phi ptr [ %.pre, %.lr.ph.i.i.preheader.new ], [ %i.gj, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.fi = load i16, ptr %.0811.i.i, align 2, !tbaa !366
  %i.fj = zext i16 %i.fi to i32
  %i.fk = add i32 %.012.i.i, %i.fj
  %i.fl = mul i32 %i.fk, 1025                     ; 2 uses
  %i.fm = lshr i32 %i.fl, 6
  %i.fn = xor i32 %i.fm, %i.fl
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 2
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !366
  %i.fq = zext i16 %i.fp to i32
  %i.fr = add i32 %i.fn, %i.fq
  %i.fs = mul i32 %i.fr, 1025                     ; 2 uses
  %i.ft = lshr i32 %i.fs, 6
  %i.fu = xor i32 %i.ft, %i.fs
  %i.fv = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !366
  %i.fx = zext i16 %i.fw to i32
  %i.fy = add i32 %i.fu, %i.fx
  %i.fz = mul i32 %i.fy, 1025                     ; 2 uses
  %i.ga = lshr i32 %i.fz, 6
  %i.gb = xor i32 %i.ga, %i.fz
  %i.gc = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 6
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !366
  %i.ge = zext i16 %i.gd to i32
  %i.gf = add i32 %i.gb, %i.ge
  %i.gg = mul i32 %i.gf, 1025                     ; 2 uses
  %i.gh = lshr i32 %i.gg, 6
  %i.gi = xor i32 %i.gh, %i.gg                    ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 8 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.gi, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %.0811.i.i.epil.init = phi ptr [ %.pre, %.lr.ph.i.i.preheader ], [ %i.gj, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod134 = icmp ne i64 %xtraiter131, 0
  call void @llvm.assume(i1 %lcmp.mod134)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi i32 [ %i.gp, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0811.i.i.epil = phi ptr [ %i.gq, %.lr.ph.i.i.epil ], [ %.0811.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.gk = load i16, ptr %.0811.i.i.epil, align 2, !tbaa !366
  %i.gl = zext i16 %i.gk to i32
  %i.gm = add i32 %.012.i.i.epil, %i.gl
  %i.gn = mul i32 %i.gm, 1025                     ; 2 uses
  %i.go = lshr i32 %i.gn, 6
  %i.gp = xor i32 %i.go, %i.gn                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.0811.i.i.epil, i64 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit, label %.lr.ph.i.i.epil, !llvm.loop !374

_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit: ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit
  %.0.lcssa.i.i = phi i32 [ 0, %_ZN6hermes2vm12SmallXStringIDsLj32EE6appendINS0_10StringView14const_iteratorEEERS2_T_S7_.exit ], [ %i.gi, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit.loopexit.unr-lcssa ], [ %i.gp, %.lr.ph.i.i.epil ]
  %i.gr = call ptr @_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEEj(ptr noundef nonnull align 8 dereferenceable(84) %i.fc, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.pre, i64 %i.fd, i32 noundef %.0.lcssa.i.i) #11 ; 2 uses
  %.not119 = icmp eq ptr %i.gr, inttoptr (i64 -1 to ptr)
  br i1 %.not119, label %bb.bb, label %bb.aw, !prof !264

bb.aw:                                            ; preds = %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.gr, align 8, !tbaa !23
  %i.gs = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.gt = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.fc, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.gs) #11
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = or i64 %i.gu, -844424930131968          ; 2 uses
  %i.gw = load ptr, ptr %i.p, align 8, !tbaa !7   ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 192 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !11 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 200
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !21
  %i.hb = icmp ult ptr %i.gy, %i.ha
  br i1 %i.hb, label %bb.ax, label %bb.ay, !prof !22

bb.ax:                                            ; preds = %bb.aw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.hc, ptr %i.gx, align 8, !tbaa !11
  store i64 %i.gv, ptr %i.gy, align 8, !tbaa !23
  br label %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.hd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gw, i64 %i.gv) #11
  br label %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.ax, %bb.ay
  %.0.i.i.i.i.i = phi ptr [ %i.gy, %bb.ax ], [ %i.hd, %bb.ay ]
  %i.he = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 139, i32 316, ptr %.0.i.i.i.i.i, i32 0) #11
  %.mask = and i32 %i.he, 255
  %i.hf = icmp eq i32 %.mask, 0
  br i1 %i.hf, label %bb.bb, label %bb.az, !prof !264

bb.az:                                            ; preds = %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 2 uses
  %i.hh = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 133, i16 16, ptr nonnull %i.hg) #11
  %i.hi = icmp eq i32 %i.hh, 0
  br i1 %i.hi, label %bb.bb, label %bb.ba, !prof !264

bb.ba:                                            ; preds = %bb.az
  %i.hj = call noundef i32 @_ZN6hermes2vm8JSObject20defineNewOwnPropertyENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsENS2_INS0_11HermesValueEEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 134, i16 16, ptr nonnull %i.hg) #11
  %i.hk = icmp ne i32 %i.hj, 0
  %. = zext i1 %i.hk to i32
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit, %bb.ba, %bb.az, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit
  %.2 = phi i32 [ 0, %_ZN6hermes2vm15IdentifierTable15getSymbolHandleERNS0_7RuntimeEN4llvh8ArrayRefIDsEE.exit ], [ 0, %_ZN6hermes2vm6HandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit ], [ 0, %bb.az ], [ %., %bb.ba ]
  %i.hl = load ptr, ptr %4, align 8, !tbaa !296   ; 2 uses
  %i.hm = icmp eq ptr %i.hl, %i.ba
  br i1 %i.hm, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @free(ptr noundef %i.hl) #11
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.g, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, %bb.c
  %.5 = phi i32 [ 0, %bb.c ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ %.2, %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit ], [ 0, %bb.g ]
  ret i32 %.5
}

declare void @_ZN6hermes2vm8JSObject20initializeLazyObjectERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm13BoundFunction10_boundCallEPS1_PKNS_4inst4InstERNS0_7RuntimeE(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(9816) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 9480 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !301
  %i.c = add i64 %i.b, 1                          ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !301
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 9488
  %i.e = load i64, ptr %i.d, align 8, !tbaa !376
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !264

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %2, i32 noundef 1) #11
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 9448 ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !300  ; 9 uses
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -32 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !263
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.o, align 8, !tbaa !303 ; 5 uses
  %i.p = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 4 uses
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.p, align 8, !tbaa !23
  store i64 %.sroa.0.0.copyload.i49, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !263
  store ptr %i.p, ptr %i.h, align 8, !tbaa !300
  %i.q = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 9440
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !302
  %i.t = ptrtoint ptr %i.s to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit, %bb.c
  %i.u = phi ptr [ %i.p, %bb.c ], [ %i.am, %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit ] ; 3 uses
  %.047 = phi i32 [ %i.n, %bb.c ], [ %i.ac, %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit ]
  %.0 = phi ptr [ %0, %bb.c ], [ %i.bi, %_ZSt20uninitialized_copy_nIPN6hermes2vm17GCHermesValueBaseINS1_11HermesValueEEEjSt16reverse_iteratorIPNS1_17PinnedHermesValueEEET1_T_T0_SA_.exit ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 28
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.v, align 4, !tbaa !3
  %i.w = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.x = add i64 %i.w, %i.q
  %i.y = inttoptr i64 %i.x to ptr                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4
end_hunk_0
