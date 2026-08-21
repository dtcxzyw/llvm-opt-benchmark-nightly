Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Function?download=true
inline.NumInlined: 464
inline.NumDeleted: 291
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6hermes2vm22functionPrototypeApplyEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  br label %bb.e

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit19
  %i.ba = or i64 %i.s, -281474976710656
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store ptr %i.bb, ptr %i.ai, align 8, !tbaa !76
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.bc, align 8, !tbaa !312
  %i.bd = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store i64 -1125899906842624, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 -1688849860263936, ptr %i.bh, align 8, !tbaa !35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ba, ptr %i.bi, align 8, !tbaa !35
  store i64 %.sroa.0.0.i17, ptr %i.aj, align 8, !tbaa !35
  %.sroa.0.0.copyload.i.i.i20 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.bj = and i64 %.sroa.0.0.copyload.i.i.i20, 281474976710655
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = lshr i32 %i.bl, 24
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !313
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !315
  %i.bs = call { i32, i64 } %i.br(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13, !inline_history !320
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.merged = phi { i32, i64 } [ %i.az, %bb.c ], [ %i.bs, %bb.d ]
  %i.bt = load i64, ptr %i.ak, align 8, !tbaa !310
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.ak, align 8, !tbaa !310
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !76
  br label %bb.h

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bv = getelementptr inbounds i8, ptr %i.l, i64 -8
  %i.bw = icmp ugt i64 %.sroa.0.0.copyload.i12, -844424930131969
  br i1 %i.bw, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.f
  %i.bx = and i64 %.sroa.0.0.copyload.i12, 281474976710655
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = add i32 %i.bz, -436207616
  %i.cb = icmp ult i32 %i.ca, 855638016
  %spec.select.i = select i1 %i.cb, ptr %i.ag, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.f, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i22 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.f ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.cc = load i64, ptr %.sroa.0.0.i22, align 8, !tbaa !35 ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, -844424930131969
  %i.ce = and i64 %i.cc, 281474976710655
  %i.cf = icmp ne i64 %i.ce, 0
  %i.cg = and i1 %i.cd, %i.cf
  br i1 %i.cg, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit24, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit24:          ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.ch, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 44, ptr %i.ci, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.cj, align 8, !tbaa !41
  store ptr @.str.9, ptr %5, align 8, !tbaa !42
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.ck, align 8, !tbaa !43
  %i.cl = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.cm = insertvalue { i32, i64 } poison, i32 %i.cl, 0
  %i.cn = insertvalue { i32, i64 } %i.cm, i64 undef, 1
  br label %bb.h

bb.g:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8JSObjectEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.co = call { i32, i64 } @_ZN6hermes2vm8Callable11executeCallENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_NS2_INS0_8JSObjectEEE(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr nonnull %i.bv, ptr nonnull %.sroa.0.0.i22) #13
  br label %bb.h

bb.h:                                             ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit24, %bb.g, %bb.e, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %.merged, %bb.e ], [ %i.ac, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.co, %bb.g ], [ %i.cn, %_ZN6hermes2vm11TwineChar16C2EPKc.exit24 ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret { i32, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21functionPrototypeCallEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !321 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 3 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i, 281474976710655 ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -1140850688
  %i.g = icmp ult i32 %i.f, 150994944
  br i1 %i.g, label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %bb.a
  %.pre = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !35 ; 2 uses
  %.pre31 = and i64 %.pre, 281474976710655
  br label %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit

_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit: ; preds = %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i
  %.pre-phi = phi i64 [ %i.c, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre31, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ]
  %i.h = phi i64 [ %.sroa.0.0.copyload.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ %.pre, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.a, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.thread.i ] ; 2 uses
  %i.i = icmp ugt i64 %i.h, -844424930131969
  %i.j = icmp ne i64 %.pre-phi, 0
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !58

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 25, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !41
  store ptr @.str.10, ptr %3, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.o, align 8, !tbaa !43
  %i.p = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.j

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs11dyncastThisINS0_8CallableEEENS0_6HandleIT_EEv.exit
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !74   ; 5 uses
  %i.s = tail call i32 @llvm.usub.sat.i32(i32 %i.r, i32 1) ; 2 uses
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.t, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload.i12, %bb.c ], [ -1688849860263936, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 9448 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 9480 ; 4 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !310
  %i.y = add i64 %i.x, 1                          ; 2 uses
  store i64 %i.y, ptr %i.w, align 8, !tbaa !310
  %i.z = tail call noundef i32 @llvm.uadd.sat.i32(i32 %i.s, i32 7)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 9440
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !311
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.v to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = and i64 %i.af, 4294967295
  %i.ah = zext i32 %i.z to i64                    ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 32
  %i.aj = icmp samesign ugt i64 %i.ai, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9488
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp ugt i64 %i.y, %i.al
  %.not31.i.i = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %.not31.i.i, label %bb.d, label %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit, !prof !57

_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.an = or i64 %i.h, -281474976710656
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ah ; 10 uses
  store ptr %i.ao, ptr %i.u, align 8, !tbaa !76
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.02.0.copyload.i.i = load ptr, ptr %i.ap, align 8, !tbaa !312
  %i.aq = ptrtoint ptr %.sroa.02.0.copyload.i.i to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 -8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !35
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %i.at = zext i32 %i.s to i64
  %i.au = or disjoint i64 %i.at, -1125899906842624
  %i.av = getelementptr inbounds i8, ptr %i.ao, i64 -32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  store i64 %i.au, ptr %i.av, align 8, !tbaa !35
  %i.aw = getelementptr inbounds i8, ptr %i.ao, i64 -40
  store i64 -1688849860263936, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds i8, ptr %i.ao, i64 -48
  store i64 %i.an, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 -56
  store i64 %.sroa.0.0.i, ptr %i.ay, align 8, !tbaa !35
  %i.az = icmp ugt i32 %i.r, 1
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit
  %i.ba = load i32, ptr %i.q, align 8, !tbaa !74  ; 3 uses
  %4 = add i32 %i.r, -1                           ; 3 uses
  %xtraiter = and i32 %4, 1
  %i.bb = icmp eq i32 %i.r, 2
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %4, -2
  br label %bb.f

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.bc = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef 1) #13
  br label %bb.i

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.030.epil.init = phi i32 [ 1, %.lr.ph ], [ %15, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod34 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.bd = icmp ult i32 %.030.epil.init, %i.ba
  br i1 %i.bd, label %bb.e, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil

bb.e:                                             ; preds = %.epil.preheader
  %i.be = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %5 = zext i32 %.030.epil.init to i64
  %i.bf = sub nsw i64 0, %5
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -8
  %.sroa.0.0.copyload.i15.epil = load i64, ptr %i.bh, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil:  ; preds = %bb.e, %.epil.preheader
  %.sroa.0.0.i14.epil = phi i64 [ %.sroa.0.0.copyload.i15.epil, %bb.e ], [ -1688849860263936, %.epil.preheader ]
  %6 = add i32 %.030.epil.init, -1
  %7 = sext i32 %6 to i64
  %i.bi = sub nsw i64 0, %7
  %i.bj = getelementptr [8 x i8], ptr %i.ao, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -64
  store i64 %.sroa.0.0.i14.epil, ptr %i.bk, align 8, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.epil, %._crit_edge.loopexit.unr-lcssa, %_ZN6hermes2vm21ScopedNativeCallFrameC2ERNS0_7RuntimeEjPNS0_8CallableEbNS0_11HermesValueE.exit
  %.sroa.0.0.copyload.i.i.i13 = load i64, ptr %.sroa.01.0.i, align 8, !tbaa !33
  %i.bl = and i64 %.sroa.0.0.copyload.i.i.i13, 281474976710655
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = lshr i32 %i.bn, 24
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !313
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 104
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !315
  %i.bu = tail call { i32, i64 } %i.bt(ptr nonnull %.sroa.01.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1) #13, !inline_history !320 ; 2 uses
  %i.bv = extractvalue { i32, i64 } %i.bu, 0
  %i.bw = extractvalue { i32, i64 } %i.bu, 1
  %i.bx = icmp ne i32 %i.bv, 0                    ; 2 uses
  %spec.select = zext i1 %i.bx to i32
  %spec.select29 = select i1 %i.bx, i64 %i.bw, i64 undef, !prof !58
  br label %bb.i

bb.f:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1, %.lr.ph.new
  %.030 = phi i32 [ 1, %.lr.ph.new ], [ %15, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1 ] ; 6 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1 ]
  %i.by = icmp ult i32 %.030, %i.ba
  br i1 %i.by, label %bb.g, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16

bb.g:                                             ; preds = %bb.f
  %i.bz = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %8 = zext i32 %.030 to i64
  %i.ca = sub nsw i64 0, %8
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -8
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.cc, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16:       ; preds = %bb.f, %bb.g
  %.sroa.0.0.i14 = phi i64 [ %.sroa.0.0.copyload.i15, %bb.g ], [ -1688849860263936, %bb.f ]
  %9 = add nsw i32 %.030, -1
  %10 = sext i32 %9 to i64
  %i.cd = sub nsw i64 0, %10
  %i.ce = getelementptr [8 x i8], ptr %i.ao, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -64
  store i64 %.sroa.0.0.i14, ptr %i.cf, align 8, !tbaa !35
  %11 = add nuw i32 %.030, 1                      ; 2 uses
  %i.cg = icmp ult i32 %11, %i.ba
  br i1 %i.cg, label %bb.h, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1

bb.h:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16
  %i.ch = load ptr, ptr %2, align 8, !tbaa !7, !noalias !324
  %12 = zext i32 %11 to i64
  %13 = sub nsw i64 0, %12
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %13
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  %.sroa.0.0.copyload.i15.1 = load i64, ptr %i.cj, align 8, !tbaa !33
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1

_ZNK6hermes2vm10NativeArgs6getArgEj.exit16.1:     ; preds = %bb.h, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16
  %.sroa.0.0.i14.1 = phi i64 [ %.sroa.0.0.copyload.i15.1, %bb.h ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit16 ]
  %14 = sext i32 %.030 to i64
  %i.ck = sub nsw i64 0, %14
  %i.cl = getelementptr [8 x i8], ptr %i.ao, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -64
  store i64 %.sroa.0.0.i14.1, ptr %i.cm, align 8, !tbaa !35
  %15 = add nuw i32 %.030, 2                      ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f, !llvm.loop !327

bb.i:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.027.1 = phi i32 [ %i.bc, %bb.d ], [ %spec.select, %._crit_edge ]
  %.sroa.5.1 = phi i64 [ undef, %bb.d ], [ %spec.select29, %._crit_edge ]
  %i.cn = load i64, ptr %i.w, align 8, !tbaa !310
  %i.co = add i64 %i.cn, -1
  store i64 %i.co, ptr %i.w, align 8, !tbaa !310
  store ptr %i.v, ptr %i.u, align 8, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.027.2 = phi i32 [ %.sroa.027.1, %bb.i ], [ %i.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.sroa.5.2 = phi i64 [ %.sroa.5.1, %bb.i ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.027.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm21functionPrototypeBindEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.std::reverse_iterator", align 8 ; 2 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !328 ; 3 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !tbaa !33 ; 2 uses
  %i.b = icmp ugt i64 %.sroa.0.0.copyload.i.i, -844424930131969
  br i1 %i.b, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.a
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -1140850688
  %i.g = icmp ult i32 %i.f, 150994944
  %spec.select.i = select i1 %i.g, ptr %i.a, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit

_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit: ; preds = %bb.a, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.0.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.a ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 2 uses
  %i.h = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !35 ; 2 uses
  %i.i = icmp ugt i64 %i.h, -844424930131969
  %i.j = and i64 %i.h, 281474976710655
  %i.k = icmp ne i64 %i.j, 0
  %i.l = and i1 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 27, ptr %i.n, align 8, !tbaa !40
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !41
  store ptr @.str.11, ptr %3, align 8, !tbaa !42
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !43
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.r = insertvalue { i32, i64 } poison, i32 %i.q, 0
  %i.s = insertvalue { i32, i64 } %i.r, i64 undef, 1
  br label %bb.c

bb.b:                                             ; preds = %_ZN6hermes2vm6HandleINS0_8CallableEE10dyn_vmcastERKNS0_10HandleBaseE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !74
  store ptr %i.a, ptr %4, align 8, !tbaa !7, !alias.scope !331
  %i.v = call { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.0.0.i, i32 noundef %i.u, ptr noundef nonnull dead_on_return %4) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.v, %bb.b ], [ %i.s, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ]
  ret { i32, i64 } %.fca.1.insert.merged
}

declare { i32, i64 } @_ZN6hermes2vm12defineMethodERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDES6_PvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S2_NS0_10NativeArgsEEjNS0_19DefinePropertyFlagsE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32, i32, ptr noundef, ptr noundef, i32 noundef, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm34functionPrototypeSymbolHasInstanceEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !7, !noalias !334 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !74
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds i8, ptr %i.a, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call i32 @_ZN6hermes2vm19ordinaryHasInstanceERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, ptr nonnull %.sroa.02.0.i) #13 ; 2 uses
  %.mask = and i32 %i.e, 255
  %i.f = icmp ne i32 %.mask, 0                    ; 2 uses
  %i.g = lshr i32 %i.e, 8
  %.lobit = and i32 %i.g, 1
  %i.h = zext nneg i32 %.lobit to i64
  %i.i = or disjoint i64 %i.h, -1407374883553280
  %.sroa.05.0 = zext i1 %i.f to i32
  %.sroa.3.0 = select i1 %i.f, i64 %i.i, i64 undef, !prof !58
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.05.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i32, i64 } @_ZN6hermes2vm21createDynamicFunctionERNS0_7RuntimeENS0_10NativeArgsENS0_19DynamicFunctionKindE(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare i64 @_ZNK6hermes2vm9CodeBlock19getFunctionSourceIDEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm13RuntimeModule36getStringPrimFromStringIDMayAllocateEj(ptr noundef nonnull align 8 dereferenceable(192), i32 noundef) local_unnamed_addr #2

declare { i32, double } @_ZN6hermes2vm8Callable28extractOwnLengthProperty_RJSENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #4

declare noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8Callable11executeCallENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_NS2_INS0_8JSObjectEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr, ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm13BoundFunction6createERNS0_7RuntimeENS0_6HandleINS0_8CallableEEEjSt16reverse_iteratorIPKNS0_17PinnedHermesValueEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, ptr noundef dead_on_return) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm19ordinaryHasInstanceERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.197") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !337
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !338
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #17 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !59
  store i64 %2, ptr %i.a, align 8, !tbaa !42
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !55
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !55
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !338
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !55
  ret void
}

end_hunk_0
