inline.NumInlined: 3640
inline.NumDeleted: 1030
begin_hunk_0_@_ZN6hermes2vm28typedArrayPrototypeEverySomeEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.bh = and i64 %.sroa.0.0.copyload.i.i.us, 281474976710655
  %i.bi = inttoptr i64 %i.bh to ptr               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !22
  %.not37.us = icmp ult i32 %i.bg, %i.bk
  br i1 %.not37.us, label %.lr.ph.split.us, label %.critedge39, !llvm.loop !389

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.bl = extractvalue { i32, i64 } %i.bd, 1
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ar
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 128
  store i32 %i.am, ptr %i.k, align 8, !tbaa !57
  store ptr %i.bp, ptr %i.j, align 8, !tbaa !50
  store ptr %i.al, ptr %i.i, align 8, !tbaa !41
  %i.bq = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.bl) #10
  br i1 %i.bq, label %.critedge, label %bb.e

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %i.br = phi ptr [ %i.cn, %bb.h ], [ %i.ao, %.lr.ph ] ; 2 uses
  %.03654 = phi i32 [ %i.cl, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = lshr i32 %i.bs, 24
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !382
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !384
  %i.bz = call i64 %i.by(ptr nonnull %i.br, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %.03654) #10, !inline_history !388
  %i.ca = uitofp i32 %.03654 to double
  %i.cb = bitcast double %i.ca to i64
  %.sroa.0.0.copyload.i41 = load i64, ptr %i.p, align 8, !tbaa !21
  %i.cc = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i, i64 %i.bz, i64 %i.cb, i64 %.sroa.0.0.copyload.i41, i1 noundef zeroext false) #10 ; 2 uses
  %i.cd = extractvalue { i32, i64 } %i.cc, 0
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split
  %i.cf = extractvalue { i32, i64 } %i.cc, 1
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.ar
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !58
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 128
  store i32 %i.am, ptr %i.k, align 8, !tbaa !57
  store ptr %i.cj, ptr %i.j, align 8, !tbaa !50
  store ptr %i.al, ptr %i.i, align 8, !tbaa !41
  %i.ck = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.cf) #10
  br i1 %i.ck, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.cl = add nuw i32 %.03654, 1                  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.p, align 8, !tbaa !21
  %i.cm = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !22
  %.not37 = icmp ult i32 %i.cl, %i.cp
  br i1 %.not37, label %.lr.ph.split, label %.critedge39, !llvm.loop !389

.critedge39:                                      ; preds = %bb.e, %bb.h, %bb.d
  %i.cq = zext i1 %i.l to i64
  %i.cr = or disjoint i64 %i.cq, -1407374883553280
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.lr.ph.split.us, %.lr.ph.split, %bb.g, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %.critedge39, %bb.a
  %.sroa.050.2 = phi i32 [ 0, %bb.a ], [ %i.ai, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %.critedge39 ], [ 0, %.lr.ph.split ], [ 1, %bb.g ], [ 0, %.lr.ph.split.us ], [ 1, %bb.f ]
  %.sroa.7.2 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %i.cr, %.critedge39 ], [ -1407374883553280, %.lr.ph.split ], [ -1407374883553280, %bb.g ], [ -1407374883553279, %.lr.ph.split.us ], [ -1407374883553279, %bb.f ]
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.050.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64, i64, i64, i1 noundef zeroext) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23typedArrayPrototypeFillEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15, !noalias !390
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %i.a, i1 noundef zeroext true) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !15, !noalias !393 ; 7 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22
  %i.i = uitofp i32 %i.h to double                ; 8 uses
  %i.j = load i32, ptr %i.f, align 4
  %i.k = and i32 %i.j, -33554432
  %switch = icmp eq i32 %i.k, 738197504
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !71
  %.not104 = icmp eq i32 %i.m, 0
  %i.n = getelementptr inbounds i8, ptr %i.d, i64 -8
  %.sroa.02.0.i56 = select i1 %.not104, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.n ; 2 uses
  br i1 %switch, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i56) #10
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = tail call { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i56) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i32, i64 } [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.1093.0 = extractvalue { i32, i64 } %.pn, 1 ; 2 uses
  %.sroa.090.0 = extractvalue { i32, i64 } %.pn, 0
  %i.q = icmp eq i32 %.sroa.090.0, 0
  br i1 %i.q, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !50
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %bb.g, label %bb.h, !prof !51

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.y, ptr %i.t, align 8, !tbaa !41
  store i64 %.sroa.1093.0, ptr %i.u, align 8, !tbaa !21
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

bb.h:                                             ; preds = %bb.f
  %i.z = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.s, i64 %.sroa.1093.0) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.z, %bb.h ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !71
  %i.ac = icmp ugt i32 %i.ab, 1
  %i.ad = load ptr, ptr %2, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %.sroa.02.0.i57 = select i1 %i.ac, ptr %i.ae, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E
  %i.af = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i57) #10 ; 2 uses
  %i.ag = extractvalue { i32, i64 } %i.af, 0
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.v, label %bb.i

bb.i:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit
  %i.ai = extractvalue { i32, i64 } %i.af, 1
  %i.aj = bitcast i64 %i.ai to double             ; 4 uses
  %i.ak = load i32, ptr %i.aa, align 8, !tbaa !71
  %i.al = icmp ugt i32 %i.ak, 2
  %i.am = load ptr, ptr %2, align 8
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -24
  %.sroa.02.0.i58 = select i1 %i.al, ptr %i.an, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 3 uses
  %i.ao = load i64, ptr %.sroa.02.0.i58, align 8, !tbaa !19
  %.mask.i = and i64 %i.ao, -140737488355328
  %i.ap = icmp eq i64 %.mask.i, -1688849860263936
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = tail call { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i58) #10 ; 2 uses
  %i.ar = extractvalue { i32, i64 } %i.aq, 0
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j
  %i.at = extractvalue { i32, i64 } %i.aq, 1
  %.pre = load i64, ptr %.sroa.02.0.i58, align 8, !tbaa !19
  %.pre110 = and i64 %.pre, -140737488355328
  %.pre111 = bitcast i64 %i.at to double
  %i.au = icmp eq i64 %.pre110, -1688849860263936
  %i.av = select i1 %i.au, double %i.i, double %.pre111
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.i
  %.mask.i59.pre-phi = phi double [ %i.av, %._crit_edge ], [ %i.i, %bb.i ] ; 4 uses
  %i.aw = fcmp olt double %i.aj, 0.000000e+00
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = fadd double %i.i, %i.aj                 ; 2 uses
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  %i.az = select i1 %i.ay, double 0.000000e+00, double %i.ax
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = fcmp olt double %i.i, %i.aj
  %i.bb = select i1 %i.ba, double %i.i, double %i.aj
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit

_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit: ; preds = %bb.l, %bb.m
  %i.bc = phi double [ %i.az, %bb.l ], [ %i.bb, %bb.m ]
  %i.bd = fptosi double %i.bc to i64              ; 10 uses
  %i.be = fcmp olt double %.mask.i59.pre-phi, 0.000000e+00
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit
  %i.bf = fadd double %.mask.i59.pre-phi, %i.i    ; 2 uses
  %i.bg = fcmp olt double %i.bf, 0.000000e+00
  %i.bh = select i1 %i.bg, double 0.000000e+00, double %i.bf
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60

bb.o:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit
  %i.bi = fcmp ogt double %.mask.i59.pre-phi, %i.i
  %i.bj = select i1 %i.bi, double %i.i, double %.mask.i59.pre-phi
  br label %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60

_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60: ; preds = %bb.n, %bb.o
  %i.bk = phi double [ %i.bh, %bb.n ], [ %i.bj, %bb.o ]
  %i.bl = fptosi double %i.bk to i64              ; 8 uses
  %.sroa.0.0.copyload.i.i61 = load i64, ptr %i.d, align 8, !tbaa !21 ; 2 uses
  %i.bm = and i64 %.sroa.0.0.copyload.i.i61, 281474976710655
  %i.bn = inttoptr i64 %i.bm to ptr               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !100 ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit: ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60
  %i.bq = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.br = zext i32 %i.bp to i64
  %i.bs = add i64 %i.br, %i.bq
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 37
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !101, !range !102, !noundef !103
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.p, label %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread

_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread: ; preds = %_ZN6hermes2vm12_GLOBAL__N_137convertNegativeBoundsRelativeToLengthIdEET_S3_S3_.exit60, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.bx, align 8, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 33, ptr %i.by, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !12
  store ptr @.str.7, ptr %3, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.ca, align 8, !tbaa !14
  %i.cb = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.v

bb.p:                                             ; preds = %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit
  %.not = icmp slt i64 %i.bd, %i.bl
  br i1 %.not, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.cc = trunc i64 %i.bd to i32
  %i.cd = load i32, ptr %i.bn, align 4
  %i.ce = lshr i32 %i.cd, 24
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !382
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !396
  %i.ck = tail call i32 %i.cj(ptr nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.cc, ptr %.0.i.i.i.i.i.i) #10, !inline_history !397
  %.mask = and i32 %i.ck, 255
  %i.cl = icmp eq i32 %.mask, 0
  br i1 %i.cl, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i62 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cm = and i64 %.sroa.0.0.copyload.i.i62, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = tail call noundef zeroext i8 @_ZNK6hermes2vm16JSTypedArrayBase12getByteWidthEv(ptr noundef nonnull align 4 dereferenceable(32) %i.cn) #10
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 9068
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !117, !range !102, !noundef !103
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN6hermes12hermes_fatalEPKc(ptr noundef nonnull @.str.20) #11
  unreachable

_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit: ; preds = %bb.r
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.cs = and i64 %.sroa.0.0.copyload.i.i63, 281474976710655
  %i.ct = inttoptr i64 %i.cs to ptr               ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %.sroa.0.0.copyload.i.i.i64 = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cv = zext i32 %.sroa.0.0.copyload.i.i.i64 to i64
  %i.cw = add i64 %i.cv, %i.bq
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !350
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 1512
  %i.db = load i64, ptr %i.da, align 8, !tbaa !21
  %i.dc = xor i64 %i.db, %i.cz
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !110
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dg ; 7 uses
  %i.di = tail call range(i8 0, 9) i8 @llvm.cttz.i8(i8 %i.co, i1 true)
  switch i8 %i.di, label %bb.u [
    i8 0, label %bb.t
    i8 1, label %iter.check
    i8 2, label %.lr.ph.i.i.i67.preheader
    i8 3, label %.lr.ph.i.i.i71.preheader
  ]

bb.t:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %i.dj = getelementptr inbounds i8, ptr %i.dh, i64 %i.bd ; 2 uses
  %gepdiff = sub nsw i64 %i.bl, %i.bd
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dj, i8 %i.dk, i64 %gepdiff, i1 false)
  br label %_ZSt4fillIPhhEvT_S1_RKT0_.exit

iter.check:                                       ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %4 = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.bd ; 6 uses
  %5 = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.bl
  %6 = load i16, ptr %4, align 2, !tbaa !351      ; 3 uses
  %i.dl = shl i64 %i.bl, 1
  %i.dm = add i64 %i.dl, -2
  %i.dn = shl i64 %i.bd, 1
  %i.do = sub i64 %i.dm, %i.dn                    ; 3 uses
  %i.dp = lshr exact i64 %i.do, 1
  %i.dq = add nuw i64 %i.dp, 1                    ; 5 uses
  %min.iters.check137 = icmp ult i64 %i.do, 6
  br i1 %min.iters.check137, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check138 = icmp ult i64 %i.do, 30
  br i1 %min.iters.check138, label %vec.epilog.ph, label %vector.ph139

vector.ph139:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf140 = and i64 %i.dq, 12
  %n.vec141 = and i64 %i.dq, -16                  ; 4 uses
  %i.dr = shl i64 %n.vec141, 1
  %i.ds = getelementptr i8, ptr %4, i64 %i.dr
  %broadcast.splatinsert142 = insertelement <8 x i16> poison, i16 %6, i64 0
  %broadcast.splat143 = shufflevector <8 x i16> %broadcast.splatinsert142, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph139
  %index145 = phi i64 [ 0, %vector.ph139 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.dt = shl i64 %index145, 1
  %next.gep146 = getelementptr i8, ptr %4, i64 %i.dt ; 2 uses
  %i.du = getelementptr i8, ptr %next.gep146, i64 16
  store <8 x i16> %broadcast.splat143, ptr %next.gep146, align 2, !tbaa !351
  store <8 x i16> %broadcast.splat143, ptr %i.du, align 2, !tbaa !351
  %index.next147 = add nuw i64 %index145, 16      ; 2 uses
  %i.dv = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.dv, label %middle.block148, label %vector.body144, !llvm.loop !398

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.dq, %n.vec141
  br i1 %cmp.n149, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block148
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf140, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !401

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec141, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec152 = and i64 %i.dq, -4                   ; 3 uses
  %i.dw = shl i64 %n.vec152, 1
  %i.dx = getelementptr i8, ptr %4, i64 %i.dw
  %broadcast.splatinsert153 = insertelement <4 x i16> poison, i16 %6, i64 0
  %broadcast.splat154 = shufflevector <4 x i16> %broadcast.splatinsert153, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index155 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next157, %vec.epilog.vector.body ] ; 2 uses
  %i.dy = shl i64 %index155, 1
  %next.gep156 = getelementptr i8, ptr %4, i64 %i.dy
  store <4 x i16> %broadcast.splat154, ptr %next.gep156, align 2, !tbaa !351
  %index.next157 = add nuw i64 %index155, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next157, %n.vec152
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !402

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n158 = icmp eq i64 %i.dq, %n.vec152
  br i1 %cmp.n158, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.ph = phi ptr [ %4, %iter.check ], [ %i.ds, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i16 %6, ptr %.06.i.i.i, align 2, !tbaa !351
  %i.ea = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 2 ; 2 uses
  %.not.i.i.i65 = icmp eq ptr %i.ea, %5
  br i1 %.not.i.i.i65, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !403

.lr.ph.i.i.i67.preheader:                         ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %7 = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.bd ; 4 uses
  %8 = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.bl
  %9 = load i32, ptr %7, align 4, !tbaa !3        ; 2 uses
  %i.eb = sub i64 %i.bl, %i.bd
  %i.ec = add i64 %i.eb, 4611686018427387903
  %i.ed = and i64 %i.ec, 4611686018427387903      ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check123 = icmp samesign ult i64 %i.ed, 7
  br i1 %min.iters.check123, label %.lr.ph.i.i.i67.preheader160, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph.i.i.i67.preheader
  %n.vec126 = and i64 %i.ee, 9223372036854775800  ; 3 uses
  %i.ef = shl i64 %n.vec126, 2
  %i.eg = getelementptr i8, ptr %7, i64 %i.ef
  %broadcast.splatinsert127 = insertelement <4 x i32> poison, i32 %9, i64 0
  %broadcast.splat128 = shufflevector <4 x i32> %broadcast.splatinsert127, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body129

vector.body129:                                   ; preds = %vector.body129, %vector.ph124
  %index130 = phi i64 [ 0, %vector.ph124 ], [ %index.next132, %vector.body129 ] ; 2 uses
  %i.eh = shl i64 %index130, 2
  %next.gep131 = getelementptr i8, ptr %7, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep131, i64 16
  store <4 x i32> %broadcast.splat128, ptr %next.gep131, align 4, !tbaa !3
  store <4 x i32> %broadcast.splat128, ptr %i.ei, align 4, !tbaa !3
  %index.next132 = add nuw i64 %index130, 8       ; 2 uses
  %i.ej = icmp eq i64 %index.next132, %n.vec126
  br i1 %i.ej, label %middle.block133, label %vector.body129, !llvm.loop !404

middle.block133:                                  ; preds = %vector.body129
  %cmp.n134 = icmp eq i64 %i.ee, %n.vec126
  br i1 %cmp.n134, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i67.preheader160

.lr.ph.i.i.i67.preheader160:                      ; preds = %.lr.ph.i.i.i67.preheader, %middle.block133
  %.06.i.i.i68.ph = phi ptr [ %7, %.lr.ph.i.i.i67.preheader ], [ %i.eg, %middle.block133 ]
  br label %.lr.ph.i.i.i67

.lr.ph.i.i.i67:                                   ; preds = %.lr.ph.i.i.i67.preheader160, %.lr.ph.i.i.i67
  %.06.i.i.i68 = phi ptr [ %i.ek, %.lr.ph.i.i.i67 ], [ %.06.i.i.i68.ph, %.lr.ph.i.i.i67.preheader160 ] ; 2 uses
  store i32 %9, ptr %.06.i.i.i68, align 4, !tbaa !3
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i.i68, i64 4 ; 2 uses
  %.not.i.i.i69 = icmp eq ptr %i.ek, %8
  br i1 %.not.i.i.i69, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i67, !llvm.loop !405

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  %10 = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.bd ; 4 uses
  %11 = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.bl
  %12 = load i64, ptr %10, align 8, !tbaa !21     ; 2 uses
  %i.el = sub i64 %i.bl, %i.bd
  %i.em = add i64 %i.el, 2305843009213693951
  %i.en = and i64 %i.em, 2305843009213693951      ; 2 uses
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.en, 3
  br i1 %min.iters.check, label %.lr.ph.i.i.i71.preheader162, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec = and i64 %i.eo, 4611686018427387900     ; 3 uses
  %i.ep = shl i64 %n.vec, 3
  %i.eq = getelementptr i8, ptr %10, i64 %i.ep
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %12, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.er = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %10, i64 %i.er ; 2 uses
  %i.es = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %broadcast.splat, ptr %next.gep, align 8, !tbaa !21
  store <2 x i64> %broadcast.splat, ptr %i.es, align 8, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !406

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.eo, %n.vec
  br i1 %cmp.n, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader162

.lr.ph.i.i.i71.preheader162:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block
  %.06.i.i.i72.ph = phi ptr [ %10, %.lr.ph.i.i.i71.preheader ], [ %i.eq, %middle.block ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader162, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.eu, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader162 ] ; 2 uses
  store i64 %12, ptr %.06.i.i.i72, align 8, !tbaa !21
  %i.eu = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.eu, %11
  br i1 %.not.i.i.i73, label %_ZSt4fillIPhhEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !407

bb.u:                                             ; preds = %_ZN6hermes2vm16JSTypedArrayBase5beginERNS0_7RuntimeE.exit
  unreachable

_ZSt4fillIPhhEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i67, %.lr.ph.i.i.i, %middle.block, %middle.block133, %middle.block148, %vec.epilog.middle.block, %bb.t
  %.sroa.0.0.copyload.i74 = load i64, ptr %i.d, align 8, !tbaa !21
  br label %bb.v

bb.v:                                             ; preds = %bb.e, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit, %bb.q, %bb.p, %bb.j, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread, %_ZSt4fillIPhhEvT_S1_RKT0_.exit, %bb.a
  %.sroa.0102.2 = phi i32 [ 0, %bb.a ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ 0, %bb.e ], [ 1, %bb.p ], [ 1, %_ZSt4fillIPhhEvT_S1_RKT0_.exit ], [ 0, %bb.j ], [ %i.cb, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ 0, %bb.q ]
  %.sroa.9.2 = phi i64 [ undef, %bb.a ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleENS0_11HermesValueE.exit ], [ undef, %bb.e ], [ %.sroa.0.0.copyload.i.i61, %bb.p ], [ %.sroa.0.0.copyload.i74, %_ZSt4fillIPhhEvT_S1_RKT0_.exit ], [ undef, %bb.j ], [ undef, %_ZNK6hermes2vm16JSTypedArrayBase8attachedERNS0_7RuntimeE.exit.thread ], [ undef, %bb.q ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0102.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.9.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare { i32, i64 } @_ZN6hermes2vm12toBigInt_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #1

declare noundef zeroext i8 @_ZNK6hermes2vm16JSTypedArrayBase12getByteWidthEv(ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm23typedArrayPrototypeFindEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::NativeArgs", align 8 ; 3 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !15
  store ptr %i.a, ptr %3, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  %i.d = call fastcc { i32, i64 } @_ZN6hermes2vmL15typedFindHelperEPvbRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef %0, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef dead_on_return %3)
  ret { i32, i64 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vmL15typedFindHelperEPvbRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree noundef readnone captures(address_is_null) %0, i1 noundef zeroext %1, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr nofree noundef nonnull readonly captures(none) dead_on_return %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %.not = icmp eq ptr %0, null                    ; 2 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !15, !noalias !408
  %i.b = tail call noundef i32 @_ZN6hermes2vm16JSTypedArrayBase18validateTypedArrayERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEEb(ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr %i.a, i1 noundef zeroext true) #10
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !15, !noalias !411 ; 7 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !tbaa !21
  %i.e = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 4, !tbaa !22   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %.not57 = icmp eq i32 %i.j, 0
  br i1 %.not57, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !21 ; 2 uses
  %i.l = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.l, label %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.c
  %i.m = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load i32, ptr %i.n, align 4
  %i.p = add i32 %i.o, -1140850688
  %i.q = icmp ult i32 %i.p, 150994944
  %spec.select.i = select i1 %i.q, ptr %i.k, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit: ; preds = %bb.b, %bb.c, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i
  %.sroa.03.0.i = phi ptr [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.c ], [ @_ZN6hermes2vm15HandleRootOwner12nullPointer_E, %bb.b ], [ %spec.select.i, %_ZN6hermes2vm5vmisaINS0_8CallableEEEbNS0_11HermesValueE.exit.i ] ; 3 uses
  %i.r = load i64, ptr %.sroa.03.0.i, align 8, !tbaa !19 ; 2 uses
  %i.s = icmp ugt i64 %i.r, -844424930131969
  %i.t = and i64 %i.r, 281474976710655
  %i.u = icmp ne i64 %i.t, 0
  %i.v = and i1 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 29, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !12
  store ptr @.str.6, ptr %4, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.z, align 8, !tbaa !14
  %i.aa = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.l

bb.d:                                             ; preds = %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_8CallableEEENS0_6HandleIT_EEj.exit
  %i.ab = icmp ugt i32 %i.j, 1
  %i.ac = getelementptr inbounds i8, ptr %i.d, i64 -16
  %.sroa.02.0.i = select i1 %i.ab, ptr %i.ac, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 192 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !50
  %i.aj = icmp ult ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !51

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !41
  store i64 -1688849860263936, ptr %i.ag, align 8, !tbaa !21
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.f:                                             ; preds = %bb.d
  %i.al = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ae, i64 -1688849860263936) #10
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !38
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.e, %bb.f
  %i.am = phi ptr [ %i.ae, %bb.e ], [ %.pre, %bb.f ]
  %.0.i.i.i.i.i.i = phi ptr [ %i.ag, %bb.e ], [ %i.al, %bb.f ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %2, ptr %5, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !53
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 156
  store i32 4, ptr %i.as, align 4, !tbaa !55
  store ptr %i.ap, ptr %i.aq, align 8
  store i32 1, ptr %i.ar, align 8, !tbaa !56
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 3 uses
  store ptr %i.ao, ptr %i.au, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  store i32 0, ptr %i.av, align 8, !tbaa !57
  store ptr %5, ptr %i.ad, align 8, !tbaa !38
  %.not3959.not = icmp eq i32 %i.h, 0
  br i1 %.not3959.not, label %.critedge41, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %.03760.us = phi i32 [ %i.bs, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.aw = xor i32 %.03760.us, -1
  %i.ax = add i32 %i.h, %i.aw                     ; 2 uses
  %.sroa.0.0.copyload.i.i42.us = load i64, ptr %i.d, align 8, !tbaa !21
  %i.ay = and i64 %.sroa.0.0.copyload.i.i42.us, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = lshr i32 %i.ba, 24
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !382
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !384
  %i.bh = call i64 %i.bg(ptr nonnull %i.az, ptr noundef nonnull align 8 dereferenceable(9816) %2, i32 noundef %i.ax) #10, !inline_history !388 ; 2 uses
  store i64 %i.bh, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !19
  %i.bi = uitofp i32 %i.ax to double
  %i.bj = bitcast double %i.bi to i64             ; 2 uses
  %.sroa.0.0.copyload.i43.us = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bk = call { i32, i64 } @_ZN6hermes2vm8Callable12executeCall3ENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES6_S6_S6_b(ptr nonnull %.sroa.03.0.i, ptr noundef nonnull align 8 dereferenceable(9816) %2, ptr nonnull %.sroa.02.0.i, i64 %i.bh, i64 %i.bj, i64 %.sroa.0.0.copyload.i43.us, i1 noundef zeroext false) #10 ; 2 uses
  %i.bl = extractvalue { i32, i64 } %i.bk, 0
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.bn = extractvalue { i32, i64 } %i.bk, 1
  %i.bo = call noundef zeroext i1 @_ZN6hermes2vm9toBooleanENS0_11HermesValueE(i64 %i.bn) #10
  br i1 %i.bo, label %.split.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 128
  store i32 0, ptr %i.av, align 8, !tbaa !57
  store ptr %i.br, ptr %i.au, align 8, !tbaa !50
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !41
  %i.bs = add nuw i32 %.03760.us, 1               ; 2 uses
  %exitcond68.not = icmp eq i32 %i.bs, %i.h
  br i1 %exitcond68.not, label %.critedge41, label %.lr.ph.split.us, !llvm.loop !414

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.03760 = phi i32 [ %i.cn, %bb.k ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.0.0.copyload.i.i42 = load i64, ptr %i.d, align 8, !tbaa !21
  %i.bt = and i64 %.sroa.0.0.copyload.i.i42, 281474976710655
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = lshr i32 %i.bv, 24
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZN6hermes2vm6VTable11vtableArrayE, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !382
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !384
  %i.cc = call i64 %i.cb(ptr nonnull %i.bu, ptr noundef nonnull align 8 dereferenceable(9816) %2, i32 noundef %.03760) #10, !inline_history !388 ; 2 uses
  store i64 %i.cc, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !19
  %i.cd = uitofp i32 %.03760 to double
end_hunk_0
