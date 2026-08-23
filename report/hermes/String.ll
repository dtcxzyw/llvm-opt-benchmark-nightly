Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/String?download=true
inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vm26stringPrototypeCodePointAtEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %or.cond5 = icmp ult i16 %i.dv, -1024
  br i1 %or.cond5, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit48
  %i.dw = uitofp i16 %.0.i34 to double
  %i.dx = bitcast double %i.dw to i64
  br label %bb.an

bb.am:                                            ; preds = %_ZNK6hermes2vm10StringViewixEj.exit48
  %i.dy = zext i16 %.0.i34 to i32
  %i.dz = zext i16 %.0.i40 to i32
  %i.ea = shl nuw nsw i32 %i.dy, 10
  %i.eb = add nsw i32 %i.ea, -56613888
  %i.ec = add nuw nsw i32 %i.eb, %i.dz
  %i.ed = uitofp nneg i32 %i.ec to double
  %i.ee = bitcast double %i.ed to i64
  br label %bb.an

bb.an:                                            ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %bb.v, %bb.am, %bb.al, %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.059.3 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 1, %bb.e ], [ 1, %bb.al ], [ 1, %bb.am ], [ 1, %bb.v ]
  %.sroa.8.3 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ -1688849860263936, %bb.e ], [ %i.dx, %bb.al ], [ %i.ee, %bb.am ], [ %i.ch, %bb.v ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.059.3, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.3, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21stringPrototypeConcatEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::CallResult.161", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %1, ptr %4, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !49
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 3 uses
  store ptr %i.e, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !51
  store ptr %4, ptr %i.b, align 8, !tbaa !8
  %i.l = load ptr, ptr %2, align 8, !tbaa !32, !noalias !86 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30
  %.mask.i.i = and i64 %i.m, -140737488355328
  switch i64 %.mask.i.i, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread [
    i64 -1688849860263936, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
    i64 -1548112371908608, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  ], !prof !55

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.n, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 29, ptr %i.o, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.p, align 8, !tbaa !43
  store ptr @.str.20, ptr %3, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !45
  %i.r = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, !prof !56

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !32, !noalias !89
  br label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge, %bb.a
  %i.t = phi ptr [ %.pre, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit._ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread_crit_edge ], [ %i.l, %bb.a ]
  %i.u = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.t) #13 ; 2 uses
  %.not77 = icmp eq ptr %i.u, inttoptr (i64 -1 to ptr)
  br i1 %.not77, label %.critedge, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, -844424930131968            ; 3 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !8    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 192 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 200
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !12
  store i64 %i.w, ptr %i.z, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.ae = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.x, i64 %i.w) #13 ; 2 uses
  %.sroa.0.0.copyload.i.i.pre = load i64, ptr %i.ae, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.copyload.i.i = phi i64 [ %i.w, %bb.c ], [ %.sroa.0.0.copyload.i.i.pre, %bb.d ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.z, %bb.c ], [ %i.ae, %bb.d ] ; 2 uses
  %i.af = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !60
  %i.aj = and i32 %i.ai, 2147483647
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !26 ; 7 uses
  %i.an = icmp ugt i32 %i.am, 1027070
  br i1 %i.an, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.ao = shl nuw nsw i32 %i.am, 2
  %i.ap = add nuw nsw i32 %i.ao, 12
  %i.aq = and i32 %i.ap, 8388600                  ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !92 ; 2 uses
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !96
  %.not.i.not.i.i.i.i.i.i.i = icmp ugt ptr %i.au, %i.aw
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.ay = call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.ax, i32 noundef %i.aq) #13
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i

bb.g:                                             ; preds = %bb.e
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !92
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i: ; preds = %bb.g, %bb.f
  %i.az = phi ptr [ %i.ay, %bb.f ], [ %i.as, %bb.g ] ; 3 uses
  store i64 0, ptr %i.az, align 4
  %i.ba = or disjoint i32 %i.aq, 251658240
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !44
  %i.bb = ptrtoint ptr %i.az to i64
  br label %bb.h

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit
  %i.bc = call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE27throwExcessiveCapacityErrorERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.am) #13
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %.critedge, label %bb.h, !prof !97

bb.h:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i
  %.sroa.3.0.i10.i = phi i64 [ %i.bb, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.thread.i ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i ] ; 2 uses
  %i.be = and i64 %.sroa.3.0.i10.i, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  call void @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE20resizeWithinCapacityEPS3_RNS0_7HadesGCEj(ptr noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(8112) %i.bg, i32 noundef %i.am) #13
  %i.bh = or i64 %.sroa.3.0.i10.i, -281474976710656 ; 2 uses
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !8   ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 192 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !12 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 200
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bn = icmp ult ptr %i.bk, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.j, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bo, ptr %i.bj, align 8, !tbaa !12
  store i64 %i.bh, ptr %i.bk, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

bb.j:                                             ; preds = %bb.h
  %i.bp = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bi, i64 %i.bh) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i45 = phi ptr [ %i.bk, %bb.i ], [ %i.bp, %bb.j ] ; 2 uses
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.br = load i32, ptr %i.k, align 8, !tbaa !51  ; 2 uses
  %.not82.not = icmp eq i32 %i.am, 0              ; 2 uses
  br i1 %.not82.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %i.bs = ptrtoint ptr %1 to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 1632
  %i.bu = zext i32 %i.br to i64
  %wide.trip.count = zext i32 %i.am to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.sroa.062.083 = phi i64 [ %i.ak, %.lr.ph ], [ %i.cs, %bb.o ]
  %i.bv = load i32, ptr %i.al, align 8, !tbaa !26
  %i.bw = zext i32 %i.bv to i64
  %i.bx = icmp samesign ult i64 %indvars.iv, %i.bw
  %i.by = load ptr, ptr %2, align 8
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -8
  %.sroa.02.0.i = select i1 %i.bx, ptr %i.bz, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.ca = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #13 ; 3 uses
  %.not78 = icmp eq ptr %i.ca, inttoptr (i64 -1 to ptr)
  br i1 %.not78, label %.critedge, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i48 = load i64, ptr %.0.i.i.i.i.i.i45, align 8, !tbaa !24
  %i.cb = and i64 %.sroa.0.0.copyload.i.i48, 281474976710655
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = sub i64 %i.cd, %i.bs
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = or i32 %i.cf, 2                         ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv ; 3 uses
  %i.cj = load ptr, ptr %i.bt, align 8, !tbaa !98
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = and i64 %i.ck, 1125899902648320
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = icmp eq ptr %i.cj, %i.cm
  br i1 %i.cn, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit, label %bb.m, !prof !23

bb.m:                                             ; preds = %bb.l
  call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.bg, ptr noundef nonnull align 4 dereferenceable(4) %i.ci, i32 %i.cg) #13
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit: ; preds = %bb.l, %bb.m
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !99
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !60
  %i.cq = and i32 %i.cp, 2147483647
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = add nuw nsw i64 %.sroa.062.083, %i.cr   ; 3 uses
  %.not79 = icmp samesign ult i64 %i.cs, 4294967296
  br i1 %.not79, label %bb.o, label %bb.n, !prof !23

bb.n:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ct, align 8, !tbaa !39
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 37, ptr %i.cu, align 8, !tbaa !42
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cv, align 8, !tbaa !43
  store ptr @.str.3, ptr %5, align 8, !tbaa !44
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.cw, align 8, !tbaa !45
  %i.cx = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

bb.o:                                             ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE3setILNS3_6InlineE0EEEvjS2_RNS0_7HadesGCE.exit
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.bu
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !101
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  store i32 %i.br, ptr %i.k, align 8, !tbaa !51
  store ptr %i.db, ptr %i.j, align 8, !tbaa !22
  store ptr %i.bq, ptr %i.i, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !102

._crit_edge:                                      ; preds = %bb.o, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit
  %.sroa.062.0.lcssa = phi i64 [ %i.ak, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ %i.cs, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.dc = trunc nuw i64 %.sroa.062.0.lcssa to i32 ; 2 uses
  %i.dd = icmp samesign ugt i64 %.sroa.062.0.lcssa, 65535
  br i1 %i.dd, label %bb.q, label %bb.p, !prof !7

bb.p:                                             ; preds = %._crit_edge
  %i.de = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dc) #13, !noalias !104
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.q:                                             ; preds = %._crit_edge
  %i.df = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.dc) #13, !noalias !104
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.q, %bb.p
  %.pn.i.i = phi { i32, i64 } [ %i.df, %bb.q ], [ %i.de, %bb.p ] ; 2 uses
  %i.dg = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.r, !prof !7

bb.r:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.di = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.dj = and i64 %i.di, 281474976710655
  %i.dk = or disjoint i64 %i.dj, -844424930131968 ; 2 uses
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !8, !noalias !104 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 192 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !12, !noalias !104 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 200
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !22, !noalias !104
  %i.dq = icmp ult ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.s, label %bb.t, !prof !23

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %i.dr, ptr %i.dm, align 8, !tbaa !12, !noalias !104
  store i64 %i.dk, ptr %i.dn, align 8, !tbaa !24, !noalias !104
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ds = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.dl, i64 %i.dk) #13, !noalias !104
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dn, %bb.s ], [ %i.ds, %bb.t ]
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.dt, align 8, !tbaa !107, !alias.scope !104
  %i.du = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.du, ptr %6, align 8, !alias.scope !104
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.dv, align 8, !alias.scope !104
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !104
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !24
  %i.dw = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !60
  %i.ea = and i32 %i.dz, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i, i32 noundef %i.ea)
  %i.eb = load ptr, ptr %i.b, align 8, !tbaa !8   ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 192 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !12 ; 4 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 200
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.eg = icmp ult ptr %i.ed, %i.ef
  br i1 %i.eg, label %bb.v, label %bb.w, !prof !23

bb.v:                                             ; preds = %bb.u
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store ptr %i.eh, ptr %i.ec, align 8, !tbaa !12
  store i64 -844424930131968, ptr %i.ed, align 8, !tbaa !24
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

bb.w:                                             ; preds = %bb.u
  %i.ei = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.eb, i64 -844424930131968) #13
  br label %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit

_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit: ; preds = %bb.v, %bb.w
  %.0.i.i.i.i.i.i49 = phi ptr [ %i.ed, %bb.v ], [ %i.ei, %bb.w ] ; 2 uses
  br i1 %.not82.not, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ej = ptrtoint ptr %1 to i64
  %wide.trip.count94 = zext i32 %i.am to i64
  br label %bb.x

._crit_edge87:                                    ; preds = %bb.x, %_ZN6hermes2vm13MutableHandleINS0_15StringPrimitiveEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.ek = load i64, ptr %6, align 8, !tbaa !101
  %i.el = inttoptr i64 %i.ek to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.el, align 8, !tbaa !24
  br label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread

bb.x:                                             ; preds = %.lr.ph86, %bb.x
  %indvars.iv91 = phi i64 [ 0, %.lr.ph86 ], [ %indvars.iv.next92, %bb.x ] ; 2 uses
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %.0.i.i.i.i.i.i45, align 8, !tbaa !24
  %i.em = and i64 %.sroa.0.0.copyload.i.i50, 281474976710655
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv91
  %.sroa.0.0.copyload.i51 = load i32, ptr %i.ep, align 4, !tbaa !3
  %i.eq = and i32 %.sroa.0.0.copyload.i51, -8
  %i.er = zext i32 %i.eq to i64
  %i.es = add i64 %i.er, %i.ej                    ; 2 uses
  %i.et = or i64 %i.es, -844424930131968
  store i64 %i.et, ptr %.0.i.i.i.i.i.i49, align 8, !tbaa !30
  %i.eu = and i64 %i.es, 281474976710648
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !60
  %i.ey = and i32 %i.ex, 2147483647
  call void @_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nonnull %.0.i.i.i.i.i.i49, i32 noundef %i.ey)
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %._crit_edge87, label %bb.x, !llvm.loop !112

_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread: ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i, %._crit_edge87
  %.sroa.069.3 = phi i32 [ 1, %._crit_edge87 ], [ 0, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  %.sroa.8.0 = phi i64 [ %.sroa.0.0.copyload.i, %._crit_edge87 ], [ undef, %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, %bb.n, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.069.7 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i ], [ %.sroa.069.3, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ %i.cx, %bb.n ], [ 0, %bb.k ]
  %.sroa.8.4 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ], [ undef, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE6createERNS0_7RuntimeEj.exit.i ], [ %.sroa.8.0, %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread ], [ undef, %bb.n ], [ undef, %bb.k ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.069.7, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.8.4, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24stringPrototypeSubstringEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm22stringPrototypeTrimEndEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
    i16 12, label %.critedge2.i
    i16 11, label %.critedge2.i
    i16 9, label %.critedge2.i
  ]

bb.ag:                                            ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i
  %i.cy = add i16 %i.cx, -8192
  %or.cond20.i.i = icmp ult i16 %i.cy, 11
  br i1 %or.cond20.i.i, label %.critedge2.i, label %switch.early.test.i.i

switch.early.test.i.i:                            ; preds = %bb.ag
  switch i16 %i.cx, label %_ZN6hermes2vm16isWhiteSpaceCharEDs.exit.i [
    i16 8287, label %.critedge2.i
    i16 8239, label %.critedge2.i
    i16 12288, label %.critedge2.i
  ]

_ZN6hermes2vm16isWhiteSpaceCharEDs.exit.i:        ; preds = %switch.early.test.i.i
  br i1 %.not.i.i31, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN6hermes2vm16isWhiteSpaceCharEDs.exit.i
  %i.cz = load i8, ptr %i.ct, align 1, !tbaa !44
  %i.da = sext i8 %i.cz to i16
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i

bb.ai:                                            ; preds = %_ZN6hermes2vm16isWhiteSpaceCharEDs.exit.i
  %i.db = load i16, ptr %.sroa.3.0.i.i, align 2, !tbaa !78
  br label %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i

_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i: ; preds = %bb.ai, %bb.ah
  %i.dc = phi i16 [ %i.da, %bb.ah ], [ %i.db, %bb.ai ]
  switch i16 %i.dc, label %_ZN6hermes2vmL7trimEndENS0_10StringView14const_iteratorES2_.exit [
    i16 8232, label %.critedge2.i
    i16 13, label %.critedge2.i
    i16 10, label %.critedge2.i
    i16 8233, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i, %switch.early.test.i.i, %switch.early.test.i.i, %switch.early.test.i.i, %bb.ag, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit.i
  %spec.select.idx.i = select i1 %.not.i.i31, i64 -2, i64 0
  %spec.select.i = getelementptr inbounds i8, ptr %.sroa.620.027.i, i64 %spec.select.idx.i ; 2 uses
  %spec.select25.i = select i1 %.not.i.i31, ptr null, ptr %i.ct ; 2 uses
  %i.dd = add i64 %.029.i, 1                      ; 2 uses
  %i.de = icmp ne ptr %.sroa.0.0.i51, %spec.select25.i
  %i.df = icmp ne ptr %.sroa.3.0.i49, %spec.select.i
  %.0.i.i.i = select i1 %.not.i.i.i, i1 %i.df, i1 %i.de
  br i1 %.0.i.i.i, label %.lr.ph.i, label %_ZN6hermes2vmL7trimEndENS0_10StringView14const_iteratorES2_.exit, !llvm.loop !161

_ZN6hermes2vmL7trimEndENS0_10StringView14const_iteratorES2_.exit: ; preds = %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i, %.critedge2.i, %_ZNK6hermes2vm10StringView3endEv.exit
  %.0.lcssa.i = phi i64 [ 0, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %.029.i, %_ZNK6hermes2vm10StringView14const_iteratordeEv.exit12.i ], [ %i.dd, %.critedge2.i ]
  %i.dg = sub i64 %i.aa, %.0.lcssa.i
  %i.dh = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i, i64 noundef 0, i64 noundef %i.dg) #13 ; 2 uses
  %i.di = extractvalue { i32, i64 } %i.dh, 0
  %i.dj = extractvalue { i32, i64 } %i.dh, 1
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6hermes2vmL7trimEndENS0_10StringView14const_iteratorES2_.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.dj, %_ZN6hermes2vmL7trimEndENS0_10StringView14const_iteratorES2_.exit ], [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ]
  %.sroa.043.1 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.di, %_ZN6hermes2vmL7trimEndENS0_10StringView14const_iteratorES2_.exit ], [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.043.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare void @_ZN6hermes2vm14definePropertyERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDENS3_INS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm29stringPrototypeSymbolIteratorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !32, !noalias !204 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30
  %.mask.i.i = and i64 %i.b, -140737488355328
  switch i64 %.mask.i.i, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread [
    i64 -1688849860263936, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
    i64 -1548112371908608, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  ], !prof !55

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit: ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 29, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !43
  store ptr @.str.20, ptr %3, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !45
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, !prof !56

_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread: ; preds = %bb.a, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %i.i = call ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.a) #13 ; 2 uses
  %.not = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.e, label %bb.b, !prof !7

bb.b:                                             ; preds = %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = or i64 %i.j, -844424930131968            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 200
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.s, ptr %i.n, align 8, !tbaa !12
  store i64 %i.k, ptr %i.o, align 8, !tbaa !24
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.t = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.m, i64 %i.k) #13
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.o, %bb.c ], [ %i.t, %bb.d ]
  %i.u = call ptr @_ZN6hermes2vm16JSStringIterator6createERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i) #13
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, -281474976710656
  br label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit
  %.sroa.011.1 = phi i32 [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ 1, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ 0, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ]
  %.sroa.4.1 = phi i64 [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit ], [ %i.w, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEONS0_12PseudoHandleIS5_EE.exit ], [ undef, %_ZN6hermes2vm20checkObjectCoercibleERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE.exit.thread ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.011.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm18stringFromCharCodeEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.hermes::vm::CallResult.161", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !49
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 192
  store ptr %i.e, ptr %i.i, align 8, !tbaa !12
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr %i.d, ptr %i.j, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i32 0, ptr %i.k, align 8, !tbaa !51
  store ptr %3, ptr %i.b, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26   ; 3 uses
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.b, label %bb.d, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %2, align 8
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = call { i32, i64 } @_ZN6hermes2vm8toUInt16ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.p) #13 ; 2 uses
  %i.r = extractvalue { i32, i64 } %i.q, 0
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.t = extractvalue { i32, i64 } %i.q, 1
  %i.u = bitcast i64 %i.t to double
  %i.v = fptoui double %i.u to i16
  %i.w = call ptr @_ZN6hermes2vm7Runtime18getCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 noundef zeroext %i.v) #13
  %.sroa.0.0.copyload.i = load i64, ptr %i.w, align 8, !tbaa !24
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.x = zext i32 %i.m to i64                     ; 2 uses
  call void @_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::CallResult.161") align 8 %4, ptr noundef nonnull align 8 dereferenceable(9816) %1, i64 %i.x, i32 0, i1 noundef zeroext false)
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.z = load i8, ptr %i.y, align 8, !tbaa !207, !range !209, !noundef !210
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not31.not = icmp eq i32 %i.m, 0
  br i1 %.not31.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.ab = load i32, ptr %i.l, align 8, !tbaa !26
  %i.ac = zext i32 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv, %i.ac
  %i.ae = load ptr, ptr %2, align 8
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -8
  %.sroa.02.0.i20 = select i1 %i.ad, ptr %i.af, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.ag = call { i32, i64 } @_ZN6hermes2vm8toUInt16ERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i20) #13 ; 2 uses
  %i.ah = extractvalue { i32, i64 } %i.ag, 0
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.loopexit, label %bb.e, !prof !7

bb.e:                                             ; preds = %.lr.ph
  %i.aj = extractvalue { i32, i64 } %i.ag, 1
  %i.ak = bitcast i64 %i.aj to double
  %i.al = fptoui double %i.ak to i16
  call void @_ZN6hermes2vm13StringBuilder15appendCharacterEDs(ptr noundef nonnull align 8 dereferenceable(24) %4, i16 noundef zeroext %i.al)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.x
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !211

.critedge:                                        ; preds = %bb.e, %.preheader
  %i.am = load i64, ptr %4, align 8, !tbaa !101
  %i.an = inttoptr i64 %i.am to ptr
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.an, align 8, !tbaa !24
  %i.ao = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.ap = or disjoint i64 %i.ao, -844424930131968
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %.critedge
  %.sroa.028.3 = phi i32 [ 1, %.critedge ], [ 0, %bb.d ], [ 0, %.lr.ph ]
  %.sroa.6.1 = phi i64 [ %i.ap, %.critedge ], [ undef, %bb.d ], [ undef, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %.loopexit
  %.sroa.028.4 = phi i32 [ %.sroa.028.3, %.loopexit ], [ 1, %bb.c ], [ 0, %bb.b ]
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0.copyload.i, %bb.c ], [ undef, %bb.b ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.028.4, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm19stringFromCodePointEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit24:
  %i.a = alloca [32 x i8], align 16               ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 3 uses
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 16 uses
  %4 = alloca %"class.llvh::SmallVector.164", align 8 ; 12 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8
  store ptr %i.e, ptr %i.c, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 156
  store i32 4, ptr %i.j, align 4, !tbaa !49
  store ptr %i.g, ptr %i.h, align 8
  store i32 1, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 200 ; 4 uses
  store ptr %i.f, ptr %i.l, align 8, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 4 uses
  store i32 0, ptr %i.m, align 8, !tbaa !51
  store ptr %3, ptr %i.d, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !26   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.p, ptr %4, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  store i32 0, ptr %i.q, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  store i32 32, ptr %i.r, align 4, !tbaa !49
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 6 uses
  store i64 -1688849860263936, ptr %i.g, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !12
  store i64 -1688849860263936, ptr %i.s, align 8, !tbaa !24
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit24
  %wide.trip.count = zext i32 %i.o to i64
  br label %bb.a

bb.a:                                             ; preds = %.lr.ph, %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit
  %i.u = phi ptr [ %i.h, %.lr.ph ], [ %i.cg, %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit ] ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i32 0, ptr %i.m, align 8, !tbaa !51
  store ptr %i.w, ptr %i.l, align 8, !tbaa !22
  store ptr %i.t, ptr %i.k, align 8, !tbaa !12
  %i.x = load i32, ptr %i.n, align 8, !tbaa !26
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv, %i.y
  br i1 %i.z, label %bb.b, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = load ptr, ptr %2, align 8, !tbaa !32, !noalias !212
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -8
  %.sroa.0.0.copyload.i26 = load i64, ptr %i.ab, align 8, !tbaa !24
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i26, %bb.b ], [ -1688849860263936, %bb.a ]
  store i64 %.sroa.0.0.i, ptr %i.g, align 8, !tbaa !30
  %i.ac = call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.g) #13 ; 2 uses
  %i.ad = extractvalue { i32, i64 } %i.ac, 0
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.critedge, label %bb.c, !prof !7

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.af = extractvalue { i32, i64 } %i.ac, 1
  store i64 %i.af, ptr %i.s, align 8, !tbaa !30
  %i.ag = call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %i.s) #13 ; 2 uses
  %i.ah = extractvalue { i32, i64 } %i.ag, 0
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.aj = extractvalue { i32, i64 } %i.ag, 1
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.s, align 8, !tbaa !24
  %i.ak = call noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64 %.sroa.0.0.copyload.i.i.i, i64 %i.aj) #13
  br i1 %i.ak, label %bb.e, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.al = load double, ptr %i.s, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.am = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.al, ptr noundef nonnull %i.b, i64 noundef 32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.an = bitcast double %i.al to i64
  %i.ao = inttoptr i64 %i.an to ptr
  store ptr @.str, ptr %5, align 8, !tbaa !44, !alias.scope !215
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ap, align 8, !tbaa !45, !alias.scope !215
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ao, ptr %i.aq, align 8, !tbaa !44, !alias.scope !215
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 8, ptr %i.ar, align 8, !tbaa !39, !alias.scope !215
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 31, ptr %i.as, align 8, !tbaa !42, !alias.scope !215
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %i.am, ptr %i.at, align 8, !tbaa !43, !alias.scope !215
  %i.au = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.av = load double, ptr %i.s, align 8, !tbaa !30 ; 5 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %i.ax = fcmp ogt double %i.av, f0x4130FFFF00000000
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35, label %bb.f

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35:   ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ay = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.av, ptr noundef nonnull %i.a, i64 noundef 32) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.az = bitcast double %i.av to i64
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr @.str.1, ptr %6, align 8, !tbaa !44, !alias.scope !220
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.bb, align 8, !tbaa !45, !alias.scope !220
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ba, ptr %i.bc, align 8, !tbaa !44, !alias.scope !220
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 8, ptr %i.bd, align 8, !tbaa !39, !alias.scope !220
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 26, ptr %i.be, align 8, !tbaa !42, !alias.scope !220
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ay, ptr %i.bf, align 8, !tbaa !43, !alias.scope !220
  %i.bg = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.bh = fptoui double %i.av to i32              ; 4 uses
  %i.bi = icmp ult i32 %i.bh, 65536
  br i1 %i.bi, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bj = trunc nuw i32 %i.bh to i16              ; 2 uses
  %i.bk = load i32, ptr %i.q, align 8, !tbaa !50  ; 2 uses
  %i.bl = load i32, ptr %i.r, align 4, !tbaa !49
  %.not.i.i = icmp ult i32 %i.bk, %i.bl
  br i1 %.not.i.i, label %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit, label %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit.sink.split, !prof !23

bb.h:                                             ; preds = %bb.f
  %i.bm = add i32 %i.bh, 67043328
  %i.bn = lshr i32 %i.bm, 10
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = add i16 %i.bo, -10240
  %i.bq = trunc i32 %i.bh to i16
  %i.br = and i16 %i.bq, 1023
  %i.bs = or disjoint i16 %i.br, -9216            ; 2 uses
  %i.bt = load i32, ptr %i.q, align 8, !tbaa !50  ; 2 uses
  %i.bu = load i32, ptr %i.r, align 4, !tbaa !49
  %.not.i6.i = icmp ult i32 %i.bt, %i.bu
  br i1 %.not.i6.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 2) #13
  %.pre.i7.i = load i32, ptr %i.q, align 8, !tbaa !50
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i: ; preds = %bb.i, %bb.h
  %i.bv = phi i32 [ %.pre.i7.i, %bb.i ], [ %i.bt, %bb.h ]
  %i.bw = load ptr, ptr %4, align 8, !tbaa !48
  %i.bx = zext i32 %i.bv to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.bx
  store i16 %i.bp, ptr %i.by, align 1
  %i.bz = load i32, ptr %i.q, align 8, !tbaa !50
  %i.ca = add i32 %i.bz, 1                        ; 3 uses
  store i32 %i.ca, ptr %i.q, align 8, !tbaa !50
  %i.cb = load i32, ptr %i.r, align 4, !tbaa !49
  %.not.i9.i = icmp ult i32 %i.ca, %i.cb
  br i1 %.not.i9.i, label %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit, label %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit.sink.split, !prof !23

_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit.sink.split: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i, %bb.g
  %.sink.ph = phi i16 [ %i.bj, %bb.g ], [ %i.bs, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i ]
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.p, i64 noundef 0, i64 noundef 2) #13
  %.pre.i10.i = load i32, ptr %i.q, align 8, !tbaa !50
  br label %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit

_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit: ; preds = %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit.sink.split, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i, %bb.g
  %.sink73 = phi i32 [ %i.bk, %bb.g ], [ %i.ca, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i ], [ %.pre.i10.i, %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit.sink.split ]
  %.sink = phi i16 [ %i.bj, %bb.g ], [ %i.bs, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit8.i ], [ %.sink.ph, %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit.sink.split ]
  %i.cc = load ptr, ptr %4, align 8, !tbaa !48
  %i.cd = zext i32 %.sink73 to i64
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cd
  store i16 %.sink, ptr %i.ce, align 1
  %i.cf = load i32, ptr %i.q, align 8, !tbaa !50
  %storemerge = add i32 %i.cf, 1                  ; 2 uses
  store i32 %storemerge, ptr %i.q, align 8, !tbaa !50
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load ptr, ptr %i.f, align 8, !tbaa !48  ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !101
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  store i32 0, ptr %i.m, align 8, !tbaa !51
  store ptr %i.ci, ptr %i.l, align 8, !tbaa !22
  store ptr %i.t, ptr %i.k, align 8, !tbaa !12
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.a, !llvm.loop !225

._crit_edge.loopexit:                             ; preds = %_ZN6hermes2vm13utf16EncodingEjRN4llvh15SmallVectorImplIDsEE.exit
  %.pre = load ptr, ptr %4, align 8, !tbaa !48
  %i.cj = zext i32 %storemerge to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit24
  %i.ck = phi i64 [ %i.cj, %._crit_edge.loopexit ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit24 ]
  %i.cl = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.p, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit24 ]
  %i.cm = call { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.cl, i64 %i.ck) #13 ; 2 uses
  %i.cn = extractvalue { i32, i64 } %i.cm, 0
  %i.co = extractvalue { i32, i64 } %i.cm, 1
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit, %._crit_edge
  %.sroa.057.1 = phi i32 [ %i.cn, %._crit_edge ], [ %i.bg, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35 ], [ %i.au, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ], [ 0, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ 0, %bb.c ]
  %.sroa.658.0 = phi i64 [ %i.co, %._crit_edge ], [ undef, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit35 ], [ undef, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ], [ undef, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ undef, %bb.c ]
  %i.cp = load ptr, ptr %i.f, align 8, !tbaa !48
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !101
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 128
  store i32 0, ptr %i.m, align 8, !tbaa !51
  store ptr %i.cr, ptr %i.l, align 8, !tbaa !22
  store ptr %i.t, ptr %i.k, align 8, !tbaa !12
  %i.cs = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.p
  br i1 %i.ct, label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.cs) #13
  br label %_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit

_ZN4llvh11SmallVectorIDsLj32EED2Ev.exit:          ; preds = %.critedge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.057.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.658.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm9stringRawEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %4 = alloca %"class.llvh::SmallVector.164", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %1, ptr %3, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %i.c, ptr %i.a, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 144 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !48
end_hunk_1
