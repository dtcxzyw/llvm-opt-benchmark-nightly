inline.NumInlined: 1255
inline.NumDeleted: 622
begin_hunk_0_@_ZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %spec.select.i = select i1 %i.j, ptr %i.d, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i ] ; 4 uses
  %i.k = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !18 ; 2 uses
  %i.l = icmp ugt i64 %i.k, -844424930131969
  %i.m = and i64 %i.k, 281474976710655
  %i.n = icmp ne i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  br i1 %i.o, label %bb.c, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !31

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread: ; preds = %bb.a
  %i.p = load i64, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, align 8, !tbaa !18 ; 2 uses
  %i.q = icmp ugt i64 %i.p, -844424930131969
  %i.r = and i64 %i.p, 281474976710655
  %i.s = icmp ne i64 %i.r, 0
  %i.t = and i1 %i.q, %i.s
  br i1 %i.t, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit12, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, !prof !31

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.u, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 43, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.w, align 8, !tbaa !25
  store ptr @.str.10, ptr %3, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.x, align 8, !tbaa !27
  %i.y = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.ae

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit
  %.not36 = icmp eq i32 %i.b, 1
  br i1 %.not36, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit12, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.z, align 8, !tbaa !16 ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.0.0.copyload.i9, -844424930131969
  br i1 %i.aa, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i10, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit12

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i10: ; preds = %bb.d
  %i.ab = and i64 %.sroa.0.0.copyload.i9, 281474976710655
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, -436207616
  %i.af = icmp ult i32 %i.ae, 855638016
  %spec.select.i11 = select i1 %i.af, ptr %i.z, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit12

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit12: ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread, %bb.c, %bb.d, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i10
  %.sroa.03.0.i3133 = phi ptr [ %.sroa.03.0.i, %bb.d ], [ %.sroa.03.0.i, %bb.c ], [ %.sroa.03.0.i, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i10 ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread ]
  %.sroa.03.0.i8 = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.d ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ %spec.select.i11, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.i10 ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit.thread ] ; 3 uses
  %i.ag = load i64, ptr %.sroa.03.0.i8, align 8, !tbaa !18 ; 2 uses
  %i.ah = icmp ugt i64 %i.ag, -844424930131969
  %i.ai = and i64 %i.ag, 281474976710655          ; 2 uses
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = and i1 %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit14, !prof !31

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit12
  %i.al = inttoptr i64 %i.ai to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = and i32 %i.an, 128
  %.not37 = icmp eq i32 %i.ao, 0
  br i1 %.not37, label %bb.f, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit14, !prof !31

_ZN6hermes2vm11TwineChar16C2EPKc.exit14:          ; preds = %bb.e, %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8JSObjectEEENS0_6HandleIT_EEj.exit12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.ap, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 52, ptr %i.aq, align 8, !tbaa !24
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.ar, align 8, !tbaa !25
  store ptr @.str.11, ptr %4, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.as, align 8, !tbaa !27
  %i.at = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !34 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 192 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !48 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 200
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !49 ; 2 uses
  %i.ba = icmp ult ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %bb.h, !prof !31

bb.g:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.ax, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.h:                                             ; preds = %bb.f
  %i.bc = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.av, i64 -1688849860263936) #10
  %.pre = load ptr, ptr %i.au, align 8, !tbaa !34 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre39 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.phi.trans.insert40 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre41 = load ptr, ptr %.phi.trans.insert40, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.g, %bb.h
  %i.bd = phi ptr [ %i.az, %bb.g ], [ %.pre41, %bb.h ]
  %i.be = phi ptr [ %i.bb, %bb.g ], [ %.pre39, %bb.h ] ; 4 uses
  %i.bf = phi ptr [ %i.av, %bb.g ], [ %.pre, %bb.h ] ; 2 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.bc, %bb.h ] ; 2 uses
  %.sroa.0.0.copyload.i.i15 = load i64, ptr %.sroa.03.0.i8, align 8, !tbaa !16
  %i.bg = and i64 %.sroa.0.0.copyload.i.i15, 281474976710655
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bj = ptrtoint ptr %1 to i64                  ; 7 uses
  %i.bk = zext i32 %.sroa.0.0.copyload.i.i.i to i64
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = or i64 %i.bl, -281474976710656          ; 3 uses
  %i.bn = icmp ult ptr %i.be, %i.bd
  br i1 %i.bn, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !48
  store i64 %i.bm, ptr %i.be, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EEPS5_.exit

bb.j:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.bq = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bf, i64 %i.bm) #10 ; 2 uses
  %.sroa.0.0.copyload.i.i.i17.pre = load i64, ptr %i.bq, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.i, %bb.j
  %.sroa.0.0.copyload.i.i.i17 = phi i64 [ %i.bm, %bb.i ], [ %.sroa.0.0.copyload.i.i.i17.pre, %bb.j ]
  %.0.i.i.i.i.i.i16 = phi ptr [ %i.be, %bb.i ], [ %i.bq, %bb.j ] ; 2 uses
  %i.br = and i64 %.sroa.0.0.copyload.i.i.i17, 281474976710655
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !146 ; 2 uses
  %.not.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i, label %bb.k, label %bb.l, !prof !20

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EEPS5_.exit
  tail call void @_ZN6hermes2vm11HiddenClass28initializeMissingPropertyMapENS0_6HandleIS1_EERNS0_7RuntimeE(ptr nonnull %.0.i.i.i.i.i.i16, ptr noundef nonnull align 8 dereferenceable(9816) %1) #10
  %.sroa.0.0.copyload.i.i5.pre.i = load i64, ptr %.0.i.i.i.i.i.i16, align 8, !tbaa !16
  %.pre12.i = and i64 %.sroa.0.0.copyload.i.i5.pre.i, 281474976710655
  %.pre13.i = inttoptr i64 %.pre12.i to ptr
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %.pre13.i, i64 16
  %.sroa.0.0.copyload.i.i.i.i.pre = load i32, ptr %.phi.trans.insert43, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EEPS5_.exit
  %.sroa.0.0.copyload.i.i.i.i = phi i32 [ %.sroa.0.0.copyload.i.i.i.i.pre, %bb.k ], [ %i.bu, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_11HiddenClassEEENS0_6HandleIT_EEPS5_.exit ] ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.bv = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.bw = add i64 %i.bv, %i.bj
  %i.bx = or i64 %i.bw, -281474976710656
  %i.by = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.bx ; 3 uses
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !34 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !48 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !49
  %i.ce = icmp ult ptr %i.cb, %i.cd
  br i1 %i.ce, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  store ptr %i.cf, ptr %i.ca, align 8, !tbaa !48
  store i64 %i.by, ptr %i.cb, align 8, !tbaa !16
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cg = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bz, i64 %i.by) #10 ; 2 uses
  %.pre.i = load ptr, ptr %i.au, align 8, !tbaa !34 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 192
  %.pre10.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  %.sroa.0.0.copyload.i.i.i6.pre.i = load i64, ptr %i.cg, align 8, !tbaa !16
  br label %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i

_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i: ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload.i.i.i6.i = phi i64 [ %i.by, %bb.m ], [ %.sroa.0.0.copyload.i.i.i6.pre.i, %bb.n ]
  %i.ch = phi ptr [ %i.cf, %bb.m ], [ %.pre10.i, %bb.n ] ; 2 uses
  %i.ci = phi ptr [ %i.bz, %bb.m ], [ %.pre.i, %bb.n ] ; 6 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.m ], [ %i.cg, %bb.n ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 192 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 208 ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !50 ; 5 uses
  %i.cm = and i64 %.sroa.0.0.copyload.i.i.i6.i, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cp = load atomic i32, ptr %i.co monotonic, align 4 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not31.i.i, label %..critedge_crit_edge.i.i, label %.lr.ph.i.i

..critedge_crit_edge.i.i:                         ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i
  %.pre.i.i = zext i32 %i.cl to i64
  br label %.loopexit

.lr.ph.i.i:                                       ; preds = %_ZN6hermes2vm7Runtime10makeHandleINS0_15DictPropertyMapEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 144 ; 2 uses
  %i.cr = zext i32 %i.cl to i64                   ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 200 ; 2 uses
  %i.ct = zext i32 %i.cp to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.ac, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.ac ] ; 2 uses
  %.sroa.0.0.copyload.i.i19.i.i = load i64, ptr %.0.i.i.i.i.i.i.i, align 8, !tbaa !16
  %i.cu = and i64 %.sroa.0.0.copyload.i.i19.i.i, 281474976710655
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !147 ; 3 uses
  %i.cz = icmp ult i32 %i.cy, 536870910
  br i1 %i.cz, label %bb.p, label %bb.ac

bb.p:                                             ; preds = %bb.o
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.sroa.0.0.copyload.i.i18 = load i64, ptr %i.da, align 4 ; 3 uses
  %i.db = and i64 %.sroa.0.0.copyload.i.i18, 2
  %.not.i.i.i = icmp eq i64 %i.db, 0
  %i.dc = icmp eq i32 %i.cy, 475
  %or.cond.i.i.i = or i1 %i.dc, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %"._ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i_crit_edge", label %bb.q

"._ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i_crit_edge": ; preds = %bb.p
  %.pre45 = load ptr, ptr %i.cq, align 8, !tbaa !45
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i"

bb.q:                                             ; preds = %bb.p
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.03.0.i8, align 8, !tbaa !16
  %i.dd = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 281474976710655
  %i.de = inttoptr i64 %i.dd to ptr               ; 2 uses
  %.sroa.1.0.extract.shift.i.i.i.i = lshr i64 %.sroa.0.0.copyload.i.i18, 32 ; 2 uses
  %i.df = icmp ult i64 %.sroa.0.0.copyload.i.i18, 21474836480
  br i1 %i.df, label %bb.r, label %bb.s, !prof !31

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i32, ptr %i.dh, align 4, !tbaa !3
  %i.di = zext i32 %.sroa.0.0.copyload.i.i.i.i.i.i.i to i64
  %i.dj = add i64 %i.di, %i.bj
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = add nuw nsw i64 %.sroa.1.0.extract.shift.i.i.i.i, 4294967291
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dn = and i64 %i.dl, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i: ; preds = %bb.s, %bb.r
  %.sink6.i.i.i.i.i = phi i64 [ %i.dn, %bb.s ], [ %.sroa.1.0.extract.shift.i.i.i.i, %bb.r ]
  %.sink.i.i.i.i.i = phi ptr [ %i.dm, %bb.s ], [ %i.dg, %bb.r ]
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i, i64 %.sink6.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i = load i32, ptr %i.do, align 4, !tbaa !3 ; 9 uses
  %i.dp = trunc i32 %.sroa.0.0.i.i.i.i.i to i8
  %i.dq = and i8 %i.dp, 15
  switch i8 %i.dq, label %default.unreachable [
    i8 0, label %bb.t
    i8 8, label %bb.t
    i8 1, label %bb.u
    i8 9, label %bb.u
    i8 2, label %bb.v
    i8 10, label %bb.v
    i8 3, label %bb.w
    i8 11, label %bb.w
    i8 4, label %bb.x
    i8 12, label %bb.x
    i8 5, label %bb.y
    i8 13, label %bb.y
    i8 6, label %bb.z
    i8 14, label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"
    i8 7, label %bb.aa
    i8 15, label %bb.ab
  ]

bb.t:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i, 0
  %i.dr = zext i32 %.sroa.0.0.i.i.i.i.i to i64
  %i.ds = add i64 %i.dr, %i.bj
  %i.dt = or i64 %i.ds, -281474976710656
  %i.du = select i1 %.not.i.i.i.i.i.i.i.i, i64 -281474976710656, i64 %i.dt
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.u:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.dv = and i32 %.sroa.0.0.i.i.i.i.i, -8
  %i.dw = zext i32 %i.dv to i64
  %i.dx = add i64 %i.dw, %i.bj
  %i.dy = or i64 %i.dx, -562949953421312
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.v:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.dz = and i32 %.sroa.0.0.i.i.i.i.i, -8
  %i.ea = zext i32 %i.dz to i64
  %i.eb = add i64 %i.ea, %i.bj
  %i.ec = or i64 %i.eb, -844424930131968
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.w:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.ed = and i32 %.sroa.0.0.i.i.i.i.i, -8
  %i.ee = zext i32 %i.ed to i64
  %i.ef = add i64 %i.ee, %i.bj
  %i.eg = inttoptr i64 %i.ef to ptr
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !113 ; 2 uses
  %i.ej = fcmp uno double %i.ei, 0.000000e+00
  %i.ek = bitcast double %i.ei to i64
  %.sroa.0.0.i.i13.i.i.i = select i1 %i.ej, i64 9221120237041090560, i64 %i.ek, !prof !20
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.x:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.el = ashr i32 %.sroa.0.0.i.i.i.i.i, 3
  %i.em = sitofp i32 %i.el to double
  %i.en = bitcast double %i.em to i64
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.y:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.eo = lshr i32 %.sroa.0.0.i.i.i.i.i, 3
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = or disjoint i64 %i.ep, -1266637395197952
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.z:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.er = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 15
  %i.es = zext i1 %i.er to i64
  %i.et = or disjoint i64 %i.es, -1407374883553280
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.aa:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.ab:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  br label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

default.unreachable:                              ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  unreachable

"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i": ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.du, %bb.t ], [ %i.dy, %bb.u ], [ %i.ec, %bb.v ], [ %.sroa.0.0.i.i13.i.i.i, %bb.w ], [ %i.en, %bb.x ], [ %i.eq, %bb.y ], [ %i.et, %bb.z ], [ -1548112371908608, %bb.ab ], [ -1970324836974592, %bb.aa ], [ -1688849860263936, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i ]
  store i64 %.sroa.05.0.i.i.i.i, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !18
  %i.eu = tail call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr nonnull %.sroa.03.0.i3133, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.cy, i32 315, ptr nonnull %.0.i.i.i.i.i.i, i32 0) #10
  %.mask.i.i.i38 = and i32 %i.eu, 255
  %.not29.i.i = icmp eq i32 %.mask.i.i.i38, 0
  %.pre46 = load ptr, ptr %i.cq, align 8, !tbaa !45 ; 2 uses
  br i1 %.not29.i.i, label %bb.ad, label %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i", !prof !429

"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i": ; preds = %"._ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i_crit_edge", %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"
  %i.ev = phi ptr [ %.pre45, %"._ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i_crit_edge" ], [ %.pre46, %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i" ]
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.cr
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 128
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !50
  store ptr %i.ey, ptr %i.cs, align 8, !tbaa !49
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !48
  br label %bb.ac

bb.ac:                                            ; preds = %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i", %bb.o
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ct
  br i1 %.not.i.i, label %.loopexit, label %bb.o, !llvm.loop !430

bb.ad:                                            ; preds = %"_ZZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.pre46, i64 %i.cr
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 128
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !50
  store ptr %i.fb, ptr %i.cs, align 8, !tbaa !49
  br label %.sink.split

.loopexit:                                        ; preds = %bb.ac, %..critedge_crit_edge.i.i
  %.pre-phi.i.i.ph = phi i64 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.cr, %bb.ac ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !45
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.pre-phi.i.i.ph
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 128
  store i32 %i.cl, ptr %i.ck, align 8, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ci, i64 200
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !49
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ad, %.loopexit
  %.sroa.020.2.ph = phi i32 [ 0, %bb.ad ], [ 1, %.loopexit ]
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !48
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %_ZN6hermes2vm11TwineChar16C2EPKc.exit14, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.020.2 = phi i32 [ %i.y, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.at, %_ZN6hermes2vm11TwineChar16C2EPKc.exit14 ], [ %.sroa.020.2.ph, %.sink.split ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.020.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 -1688849860263936, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25hermesBuiltinExponentiateEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = extractvalue { i32, i64 } %i.e, 1        ; 4 uses
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.o, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.g, -281474976710656
  %i.i = icmp eq i64 %.mask.i, -562949953421312
  br i1 %i.i, label %bb.h, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.j = bitcast i64 %i.g to double               ; 2 uses
  %i.k = load i32, ptr %i.a, align 8, !tbaa !7
  %i.l = icmp ugt i32 %i.k, 1
  %i.m = load ptr, ptr %2, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16
  %.sroa.02.0.i15 = select i1 %i.l, ptr %i.n, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i15) #10 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.o, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  %i.r = extractvalue { i32, i64 } %i.o, 1
  %i.s = bitcast i64 %i.r to double               ; 4 uses
  %i.t = fcmp uno double %i.s, 0.000000e+00
  br i1 %i.t, label %_ZN6hermes2vm5expOpEdd.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = fcmp oeq double %i.s, 0.000000e+00
  br i1 %i.u, label %_ZN6hermes2vm5expOpEdd.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call noundef double @llvm.fabs.f64(double %i.j)
  %i.w = fcmp oeq double %i.v, 1.000000e+00
  %i.x = tail call double @llvm.fabs.f64(double %i.s)
  %i.y = fcmp oeq double %i.x, +inf
  %or.cond.i = and i1 %i.w, %i.y
  br i1 %or.cond.i, label %_ZN6hermes2vm5expOpEdd.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = tail call double @pow(double noundef %i.j, double noundef %i.s) #10, !tbaa !3
  br label %_ZN6hermes2vm5expOpEdd.exit

_ZN6hermes2vm5expOpEdd.exit:                      ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi double [ %i.z, %bb.g ], [ +qnan, %bb.d ], [ 1.000000e+00, %bb.e ], [ +qnan, %bb.f ] ; 2 uses
  %i.aa = fcmp uno double %.0.i, 0.000000e+00
  %i.ab = bitcast double %.0.i to i64
  %.sroa.0.0.i = select i1 %i.aa, i64 9221120237041090560, i64 %i.ab, !prof !20
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 192 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !48 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = icmp ult ptr %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr %i.aj, ptr %i.ae, align 8, !tbaa !48
  store i64 %i.g, ptr %i.af, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ad, i64 %i.g) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.i, %bb.j
  %.0.i.i.i.i.i.i = phi ptr [ %i.af, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = load i32, ptr %i.a, align 8, !tbaa !7
  %i.am = icmp ugt i32 %i.al, 1
  %i.an = load ptr, ptr %2, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -16
  %.sroa.02.0.i16 = select i1 %i.am, ptr %i.ao, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.ap = tail call { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i16) #10 ; 2 uses
  %i.aq = extractvalue { i32, i64 } %i.ap, 0
  %i.ar = extractvalue { i32, i64 } %i.ap, 1      ; 3 uses
  %i.as = icmp eq i32 %i.aq, 0
  br i1 %i.as, label %bb.o, label %bb.k, !prof !20

bb.k:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  %.mask.i17 = and i64 %i.ar, -281474976710656
  %i.at = icmp eq i64 %.mask.i17, -562949953421312
  br i1 %i.at, label %bb.l, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.au, align 8, !tbaa !21
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 15, ptr %i.av, align 8, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.aw, align 8, !tbaa !25
  store ptr @.str.12, ptr %3, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ax, align 8, !tbaa !27
  %i.ay = load i32, ptr %i.a, align 8, !tbaa !7
  %i.az = icmp ugt i32 %i.ay, 1
  %i.ba = load ptr, ptr %2, align 8
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -16
  %.sroa.02.0.i18 = select i1 %i.az, ptr %i.bb, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bc, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 10, ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !25
  store ptr @.str.13, ptr %4, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bf, align 8, !tbaa !27
  %i.bg = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %.sroa.02.0.i18, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 192 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !49
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !48
  store i64 %i.ar, ptr %i.bj, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22

bb.n:                                             ; preds = %bb.l
  %i.bo = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, i64 %i.ar) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i21 = phi ptr [ %i.bj, %bb.m ], [ %i.bo, %bb.n ]
  %i.bp = tail call { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr %.0.i.i.i.i.i.i21) #10 ; 2 uses
  %i.bq = extractvalue { i32, i64 } %i.bp, 0
  %i.br = extractvalue { i32, i64 } %i.bp, 1
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm5expOpEdd.exit, %bb.c, %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22
  %.sroa.033.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.bq, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22 ], [ %i.bg, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm5expOpEdd.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ]
  %.sroa.7.1 = phi i64 [ undef, %bb.a ], [ undef, %bb.c ], [ %i.br, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22 ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.i, %_ZN6hermes2vm5expOpEdd.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.033.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48), ptr, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm33hermesBuiltinInitRegexNamedGroupsEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef readonly captures(none) dead_on_return %2) #0 {
_ZNK6hermes2vm10NativeArgs6getArgEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not)
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !431
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16
  %i.e = icmp ugt i32 %i.b, 1
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit7, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit7:        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !12, !noalias !434
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.0.0.copyload.i6, -844424930131969
  br i1 %i.h, label %bb.a, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

bb.a:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit7
end_hunk_0
