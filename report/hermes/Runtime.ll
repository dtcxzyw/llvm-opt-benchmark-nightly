inline.NumInlined: 3791
inline.NumDeleted: 2147
begin_hunk_0_@_ZN6hermes2vm7Runtime26forEachPublicNativeBuiltinERKSt8functionIFNS0_15ExecutionStatusEjNS0_10Predefined3StrERNS0_6HandleINS0_8JSObjectEEENS0_8SymbolIDEEE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.ah = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ag, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.x) #29
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.ah) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !627, !noalias !991 ; 2 uses
  switch i32 %i.aj, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread150
    i32 1, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread150: ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ak, align 8, !tbaa !627, !alias.scope !992
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.al, align 8, !tbaa !649, !alias.scope !992
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false), !alias.scope !992
  br label %bb.h

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread: ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !650, !noalias !991
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !651, !noalias !991
  %i.ar = add i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.at = load i32, ptr %i.as, align 8, !noalias !991
  %i.au = icmp eq i32 %i.at, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i = load ptr, ptr %7, align 8, !noalias !991
  %.015.i.i = select i1 %i.au, i32 %i.aj, i32 2
  %.sroa.03.0.i.i = select i1 %i.au, ptr %.sroa.03.0.copyload.i.i, ptr %7
  store ptr @.str.145, ptr %6, align 8, !tbaa !19, !alias.scope !991
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %i.av, align 8, !tbaa !627, !alias.scope !991
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %.sroa.03.0.i.i, ptr %i.aw, align 8, !tbaa !19, !alias.scope !991
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.015.i.i, ptr %i.ax, align 8, !tbaa !649, !alias.scope !991
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 59, ptr %i.ay, align 8, !tbaa !650, !alias.scope !991
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ar, ptr %i.az, align 8, !tbaa !651, !alias.scope !991
  br label %bb.j

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit:     ; preds = %bb.g
  store ptr @.str.145, ptr %6, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !620
  %.sroa.5257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %.sroa.5257.0..sroa_idx, align 8, !tbaa !620
  %.sroa.6258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 59, ptr %.sroa.6258.0..sroa_idx, align 8, !tbaa !18
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !627, !noalias !995 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  switch i32 %.pre, label %bb.j [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread150, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !627, !alias.scope !1002
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.bb, align 8, !tbaa !649, !alias.scope !1002
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false), !alias.scope !1002
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit50

bb.i:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  store ptr @.str.146, ptr %5, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !620
  %.sroa.6146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %.sroa.6146.0..sroa_idx, align 8, !tbaa !620
  %.sroa.7147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 12, ptr %.sroa.7147.0..sroa_idx, align 8, !tbaa !18
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !18
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit50

bb.j:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit
  %i.bd = phi i32 [ 3, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit.thread ], [ %.pre, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit ]
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !650, !noalias !995
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !651, !noalias !995
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !noalias !995
  %i.bl = icmp eq i32 %i.bk, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i44 = load ptr, ptr %6, align 8, !noalias !995
  %.0.i.i45 = select i1 %i.bl, i32 %i.bd, i32 2
  %.sroa.06.0.i.i46 = select i1 %i.bl, ptr %.sroa.06.0.copyload.i.i44, ptr %6
  store ptr %.sroa.06.0.i.i46, ptr %5, align 8, !tbaa !19, !alias.scope !995
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.0.i.i45, ptr %i.bm, align 8, !tbaa !627, !alias.scope !995
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.146, ptr %i.bn, align 8, !tbaa !19, !alias.scope !995
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 3, ptr %i.bo, align 8, !tbaa !649, !alias.scope !995
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.bi, ptr %i.bp, align 8, !tbaa !650, !alias.scope !995
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 12, ptr %i.bq, align 8, !tbaa !651, !alias.scope !995
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit50

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit50:   ; preds = %bb.h, %bb.i, %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bs = call fastcc noundef i32 @_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.br, ptr noundef nonnull align 8 dereferenceable(48) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %.thread69

bb.k:                                             ; preds = %bb.f
  %.sroa.07.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.49.0.extract.shift.i = lshr i64 %.sroa.07.0.copyload, 32 ; 3 uses
  %i.bt = and i64 %.sroa.07.0.copyload, 1280
  %or.cond.i = icmp eq i64 %i.bt, 0
  br i1 %or.cond.i, label %bb.l, label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit, !prof !96

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.m, align 8, !tbaa !18
  %i.bu = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.bv = inttoptr i64 %i.bu to ptr               ; 2 uses
  %i.bw = icmp ult i64 %.sroa.07.0.copyload, 21474836480
  br i1 %i.bw, label %bb.m, label %bb.n, !prof !66

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i51 = load i32, ptr %i.by, align 4, !tbaa !3
  %i.bz = zext i32 %.sroa.0.0.copyload.i.i.i.i.i51 to i64
  %i.ca = add i64 %i.bz, %i.n
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = add nuw nsw i64 %.sroa.49.0.extract.shift.i, 4294967291
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = and i64 %i.cc, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i: ; preds = %bb.n, %bb.m
  %.sink6.i.i.i = phi i64 [ %i.ce, %bb.n ], [ %.sroa.49.0.extract.shift.i, %bb.m ]
  %.sink.i.i.i = phi ptr [ %i.cd, %bb.n ], [ %i.bx, %bb.m ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i, i64 %.sink6.i.i.i
  %.sroa.0.0.i.i.i = load i32, ptr %i.cf, align 4, !tbaa !3 ; 7 uses
  %i.cg = trunc i32 %.sroa.0.0.i.i.i to i8
  %i.ch = and i8 %i.cg, 15
  switch i8 %i.ch, label %default.unreachable [
    i8 0, label %bb.o
    i8 8, label %bb.o
    i8 1, label %bb.p
    i8 9, label %bb.p
    i8 2, label %bb.q
    i8 10, label %bb.q
    i8 3, label %bb.r
    i8 11, label %bb.r
    i8 4, label %bb.s
    i8 12, label %bb.s
    i8 5, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
    i8 13, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
    i8 6, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
    i8 14, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
    i8 7, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
    i8 15, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread
  ]

bb.o:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i, 0
  %i.ci = zext i32 %.sroa.0.0.i.i.i to i64
  %i.cj = add i64 %i.ci, %i.n
  %i.ck = select i1 %.not.i.i.i.i.i.i, i64 -281474976710656, i64 %i.cj
  br label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit

bb.p:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i
  %i.cl = and i32 %.sroa.0.0.i.i.i, -8
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add i64 %i.cm, %i.n
  br label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit

bb.q:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i
  %i.co = and i32 %.sroa.0.0.i.i.i, -8
  %i.cp = zext i32 %i.co to i64
  %i.cq = add i64 %i.cp, %i.n
  br label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit

bb.r:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i
  %i.cr = and i32 %.sroa.0.0.i.i.i, -8
  %i.cs = zext i32 %i.cr to i64
  %i.ct = add i64 %i.cs, %i.n
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !72 ; 2 uses
  %i.cx = fcmp uno double %i.cw, 0.000000e+00
  %i.cy = bitcast double %i.cw to i64
  br i1 %i.cx, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread, !prof !51

bb.s:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i
  %i.cz = ashr i32 %.sroa.0.0.i.i.i, 3
  %i.da = sitofp i32 %i.cz to double
  %i.db = bitcast double %i.da to i64
  br label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread

default.unreachable:                              ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i
  unreachable

_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit: ; preds = %bb.k
  %.sroa.49.0.extract.trunc.i = trunc nuw i64 %.sroa.49.0.extract.shift.i to i32
  %i.dc = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %.sroa.49.0.extract.trunc.i, ptr nonnull %i.m, i32 0, ptr noundef null) #29 ; 2 uses
  %i.dd = extractvalue { i32, i64 } %i.dc, 0
  %i.de = extractvalue { i32, i64 } %i.dc, 1
  %i.df = icmp eq i32 %i.dd, 0
  br i1 %i.df, label %.thread69, label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread, !prof !1005

_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread: ; preds = %bb.r, %bb.s, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit
  %.sroa.3.0.i65 = phi i64 [ %i.de, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit ], [ %i.cy, %bb.r ], [ %i.db, %bb.s ] ; 2 uses
  %i.dg = icmp ugt i64 %.sroa.3.0.i65, -844424930131969
  br i1 %i.dg, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, !prof !1006

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit: ; preds = %bb.o, %bb.p, %bb.q, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread
  %.sroa.3.0.i6577 = phi i64 [ %.sroa.3.0.i65, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread ], [ %i.ck, %bb.o ], [ %i.cn, %bb.p ], [ %i.cq, %bb.q ] ; 2 uses
  %i.dh = and i64 %.sroa.3.0.i6577, 281474976710655
  %i.di = inttoptr i64 %i.dh to ptr
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = add i32 %i.dj, -436207616
  %i.dl = icmp ult i32 %i.dk, 855638016
  br i1 %i.dl, label %bb.t, label %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, !prof !1007

_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread: ; preds = %bb.r, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 1, ptr %i.dm, align 8, !tbaa !649
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 59, ptr %i.dn, align 8, !tbaa !650
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 0, ptr %i.do, align 8, !tbaa !651
  store ptr @.str.145, ptr %10, align 8, !tbaa !19
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 3, ptr %i.dp, align 8, !tbaa !627
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.dr = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.dq, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %i.x) #29
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef %i.dr) #29
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.ds, align 8, !tbaa !649
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 17, ptr %i.dt, align 8, !tbaa !650
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.du, align 8, !tbaa !651
  store ptr @.str.147, ptr %12, align 8, !tbaa !19
  %i.dv = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.dv, align 8, !tbaa !627
  call void @_ZN6hermes2vmplERKNS0_11TwineChar16ES3_(ptr dead_on_unwind nonnull writable sret(%"class.hermes::vm::TwineChar16") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %12)
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dx = call fastcc noundef i32 @_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.dw, ptr noundef nonnull align 8 dereferenceable(48) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %.thread69

.thread69:                                        ; preds = %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit50
  %.2.ph = phi i32 [ %i.bs, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit50 ], [ %i.dx, %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit.thread ], [ 0, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  %i.dy = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.dz = zext i32 %i.u to i64
  %i.ea = load ptr, ptr %i.dy, align 8, !tbaa !113
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dz
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !419
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 128
  store i32 %i.u, ptr %i.t, align 8, !tbaa !424
  %i.ee = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !110
  store ptr %i.s, ptr %i.r, align 8, !tbaa !100
  br label %.loopexit

bb.t:                                             ; preds = %_ZN6hermes2vm5vmisaINS0_8JSObjectEEEbNS0_11HermesValueE.exit
  %i.ef = or i64 %.sroa.3.0.i6577, -281474976710656
  %i.eg = load ptr, ptr %3, align 8, !tbaa !419
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !420
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.e
  %.332 = phi i32 [ %i.x, %bb.t ], [ %.029109, %bb.e ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !1008
  %i.ej = zext i16 %i.ei to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.ej, ptr %2, align 4
  %i.ek = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ek, ptr %i.a, align 4, !tbaa !3
  store i32 %i.x, ptr %i.b, align 4, !tbaa !1009
  %i.el = load ptr, ptr %i.o, align 8, !tbaa !24
  %.not.i.i = icmp eq ptr %i.el, null
  br i1 %.not.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZSt25__throw_bad_function_callv() #32
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !508
  %i.en = call noundef i32 %i.em(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #29, !inline_history !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not41 = icmp eq i32 %i.en, 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.ep = zext i32 %i.u to i64
  %i.eq = load ptr, ptr %i.eo, align 8, !tbaa !113
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.ep
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !419
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 128
  store i32 %i.u, ptr %i.t, align 8, !tbaa !424
  %i.eu = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !110
  store ptr %i.s, ptr %i.r, align 8, !tbaa !100
  br i1 %.not41, label %bb.d, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.w, %.thread69
  %spec.select = phi i32 [ %.2.ph, %.thread69 ], [ 1, %bb.d ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i32 %spec.select
}

declare void @_ZN6hermes2vm20createHermesBuiltinsERNS0_7RuntimeEN4llvh15MutableArrayRefIPNS0_8CallableEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare void @_ZN6hermes2vm8JSObject37updatePropertyFlagsWithoutTransitionsENS0_6HandleIS1_EERNS0_7RuntimeENS0_13PropertyFlagsES6_NS_8OptValueIN4llvh8ArrayRefINS0_8SymbolIDEEEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i16, i16, ptr noundef byval(%"class.hermes::OptValue.398") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes2vm7Runtime9drainJobsEv(ptr noundef nonnull align 8 dereferenceable(9816) %0) local_unnamed_addr #0 align 2 {
_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit:
  %1 = alloca %"class.hermes::vm::GCScope", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  store ptr %0, ptr %1, align 8, !tbaa !422
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !97
  store ptr %i.c, ptr %i.a, align 8, !tbaa !423
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 156
  store i32 4, ptr %i.h, align 4, !tbaa !115
  store ptr %i.e, ptr %i.f, align 8
  store i32 1, ptr %i.g, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  store ptr %i.d, ptr %i.j, align 8, !tbaa !110
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !424
  store ptr %1, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store ptr %i.l, ptr %i.i, align 8, !tbaa !100
  store i64 -281474976710656, ptr %i.e, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9696
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9664 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9680 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 9672 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 9688 ; 2 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE9pop_frontEv.exit, %_ZN6hermes2vm13MutableHandleINS0_8CallableEEC2ERNS0_15HandleRootOwnerEPS2_.exit
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !564
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !564  ; 4 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !448
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = or i64 %i.v, -281474976710656
  store i64 %i.w, ptr %i.e, align 8, !tbaa !420
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !1012
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.not.i = icmp eq ptr %i.s, %i.y
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_ZNSt5dequeIPN6hermes2vm8CallableESaIS3_EE9pop_frontEv.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !1013
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef 512) #30
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm7Runtime23gcStableHashHermesValueENS0_6HandleINS0_11HermesValueEEE:bb.a
  %.sroa.0.0.i12 = phi ptr [ %i.cf, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i19 ], [ null, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i9 ]
  %i.cy = tail call i64 @_ZN4llvh7hashing6detail23hash_combine_range_implIN6hermes2vm10StringView14const_iteratorEEENS_9hash_codeET_S8_(ptr %.sroa.0.0.i54, ptr %.sroa.3.0.i52, ptr %.sroa.0.0.i12, ptr %.sroa.3.0.i11)
  br label %bb.an

bb.ag:                                            ; preds = %bb.a
  %i.cz = icmp ult i64 %i.a, -1970324836974592
  br i1 %i.cz, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.da = and i64 %i.a, 9223372036854775807
  %i.db = icmp eq i64 %i.da, 9221120237041090560
  br i1 %i.db, label %bb.ai, label %bb.aj, !prof !51

bb.ai:                                            ; preds = %bb.ah
  %i.dc = tail call i64 @_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_(i64 noundef 9221120237041090560)
  br label %bb.an

bb.aj:                                            ; preds = %bb.ah
  %i.dd = and i64 %i.a, 9223372036854775807
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.df = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.al, label %_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit, !prof !1015

bb.al:                                            ; preds = %bb.ak
  %i.dh = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  %.not.i.i.i22 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i22, label %_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !18 ; 2 uses
  %.not1.i.i.i23 = icmp eq i64 %i.di, 0
  %i.dj = select i1 %.not1.i.i.i23, i64 -49064778989728563, i64 %i.di
  store i64 %i.dj, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  br label %_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit

_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit: ; preds = %bb.ak, %bb.al, %bb.am
  %.sroa.2.0.extract.shift.i.i = lshr i64 %i.a, 32 ; 2 uses
  %i.dk = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18
  %i.dl = shl i64 %i.a, 3
  %i.dm = and i64 %i.dl, 34359738360
  %i.dn = add i64 %i.dk, %i.dm
  %i.do = xor i64 %i.dn, %.sroa.2.0.extract.shift.i.i
  %i.dp = mul i64 %i.do, -7070675565921424023     ; 2 uses
  %i.dq = lshr i64 %i.dp, 47
  %i.dr = xor i64 %.sroa.2.0.extract.shift.i.i, %i.dq
  %i.ds = xor i64 %i.dr, %i.dp
  %i.dt = mul i64 %i.ds, -7070675565921424023     ; 2 uses
  %i.du = lshr i64 %i.dt, 47
  %i.dv = xor i64 %i.du, %i.dt
  %i.dw = mul i64 %i.dv, -7070675565921424023
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit, %bb.ai, %_ZNK6hermes2vm10StringView3endEv.exit, %bb.e, %_ZN4llvh10hash_valueIjEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit
  %.0 = phi i64 [ %i.dc, %bb.ai ], [ %i.cy, %_ZNK6hermes2vm10StringView3endEv.exit ], [ %i.dw, %_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit ], [ %i.u, %_ZN4llvh10hash_valueIjEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_.exit ], [ %i.ah, %bb.e ], [ 0, %bb.aj ]
  ret i64 %.0
}

declare noundef i32 @_ZN6hermes2vm8JSObject11getObjectIDEPS1_RNS0_7RuntimeE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN4llvh10hash_valueImEENSt9enable_ifIXsr19is_integral_or_enumIT_EE5valueENS_9hash_codeEE4typeES2_(i64 noundef %0) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4llvh7hashing6detail18hash_integer_valueEm.exit, !prof !1015

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4llvh7hashing6detail18hash_integer_valueEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr @_ZN4llvh7hashing6detail19fixed_seed_overrideE, align 8, !tbaa !18 ; 2 uses
  %.not1.i.i = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not1.i.i, i64 -49064778989728563, i64 %i.d
  store i64 %i.e, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvh7hashing6detail18get_execution_seedEvE4seed) #29
  br label %_ZN4llvh7hashing6detail18hash_integer_valueEm.exit

_ZN4llvh7hashing6detail18hash_integer_valueEm.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.2.0.extract.shift.i = lshr i64 %0, 32    ; 2 uses
  %i.f = load i64, ptr @_ZZN4llvh7hashing6detail18get_execution_seedEvE4seed, align 8, !tbaa !18
  %i.g = shl i64 %0, 3
  %i.h = and i64 %i.g, 34359738360
  %i.i = add i64 %i.f, %i.h
  %i.j = xor i64 %i.i, %.sroa.2.0.extract.shift.i
  %i.k = mul i64 %i.j, -7070675565921424023       ; 2 uses
  %i.l = lshr i64 %i.k, 47
  %i.m = xor i64 %.sroa.2.0.extract.shift.i, %i.l
  %i.n = xor i64 %i.m, %i.k
  %i.o = mul i64 %i.n, -7070675565921424023       ; 2 uses
  %i.p = lshr i64 %i.o, 47
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -7070675565921424023
  ret i64 %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes2vm7Runtime24symbolEqualsToStringPrimENS0_8SymbolIDEPNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.hermes::vm::StringView", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 9240
  %i.b = tail call { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.a, ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 %1) #29 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  store ptr %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = extractvalue { ptr, i64 } %i.b, 1
  store i64 %i.e, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsERKNS0_10StringViewE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  ret i1 %i.f
}

declare { ptr, i64 } @_ZNK6hermes2vm15IdentifierTable13getStringViewERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6hermes2vm15StringPrimitive6equalsERKNS0_10StringViewE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm7Runtime14dumpCallFramesERN4llvh11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !696
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !699  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp ult i64 %i.g, 18
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @.str.148, i64 noundef 18) #29 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.d, ptr noundef nonnull align 1 dereferenceable(18) @.str.148, i64 18, i1 false)
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !699
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  store ptr %i.k, ptr %i.c, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.l, align 8, !tbaa !419 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9432
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !417  ; 2 uses
  %.not53 = icmp eq ptr %.sroa.0.0.copyload.i, %i.n
  br i1 %.not53, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9448
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !369
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1520
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit41, %_ZN4llvh11raw_ostreamlsEPKc.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsEPKc.exit41
  %.056 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.046.054, %_ZN4llvh11raw_ostreamlsEPKc.exit41 ]
  %.01955 = phi i32 [ 0, %.lr.ph ], [ %i.r, %_ZN4llvh11raw_ostreamlsEPKc.exit41 ] ; 2 uses
  %.sroa.046.054 = phi ptr [ %.sroa.0.0.copyload.i, %.lr.ph ], [ %i.bz, %_ZN4llvh11raw_ostreamlsEPKc.exit41 ] ; 4 uses
  %i.r = add i32 %.01955, 1
  %i.s = zext i32 %.01955 to i64
  %i.t = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %1, i64 noundef %i.s) #29 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !696
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !699  ; 2 uses
  %i.y = icmp eq ptr %i.v, %i.x
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull @.str.149, i64 noundef 1) #29 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

bb.f:                                             ; preds = %bb.d
  store i8 32, ptr %i.x, align 1
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !699
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit28

_ZN4llvh11raw_ostreamlsEPKc.exit28:               ; preds = %bb.e, %bb.f
  %i.ac = getelementptr inbounds i8, ptr %.sroa.046.054, i64 -48 ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  %i.ad = icmp ugt i64 %.sroa.05.0.copyload, -844424930131969
  br i1 %i.ad, label %bb.g, label %_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit28
  %i.ae = and i64 %.sroa.05.0.copyload, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = add i32 %i.ag, -1140850688
  %i.ai = icmp ult i32 %i.ah, 150994944
  br i1 %i.ai, label %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, label %_ZN4llvh11raw_ostreamlsEPKc.exit35

_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit: ; preds = %bb.g
  %i.aj = lshr i32 %i.ag, 24
  %i.ak = tail call noundef ptr @_ZN6hermes2vm11cellKindStrENS0_8CellKindE(i32 noundef %i.aj) #29 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit31, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #34 ; 5 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !696
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !699 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ugt i64 %i.al, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.as = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %i.ak, i64 noundef %i.al) #29
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit31

bb.i:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i29 = icmp eq i64 %i.al, 0
  br i1 %.not.i2.i29, label %_ZN4llvh11raw_ostreamlsEPKc.exit31, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr nonnull align 1 %i.ak, i64 %i.al, i1 false)
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !699
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.al
  store ptr %i.au, ptr %i.c, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit31

_ZN4llvh11raw_ostreamlsEPKc.exit31:               ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit, %bb.h, %bb.i, %bb.j
  %.0.i.i30 = phi ptr [ %i.as, %bb.h ], [ %1, %bb.j ], [ %1, %bb.i ], [ %1, %_ZN6hermes2vm10dyn_vmcastINS0_8CallableEEEPT_NS0_11HermesValueE.exit ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i30, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !696
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i30, i64 24 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !699 ; 2 uses
  %i.az = icmp eq ptr %i.aw, %i.ay
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit31
  %i.ba = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i30, ptr noundef nonnull @.str.149, i64 noundef 1) #29 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit31
  store i8 32, ptr %i.ay, align 1
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !699
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit35

_ZN4llvh11raw_ostreamlsEPKc.exit35:               ; preds = %bb.g, %bb.l, %bb.k
  %.pr = load i64, ptr %i.ac, align 8, !tbaa !420 ; 3 uses
  %i.bd = icmp ugt i64 %.pr, -281474976710657
  br i1 %i.bd, label %_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit

_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit35
  %i.be = and i64 %.pr, 281474976710655
  %i.bf = inttoptr i64 %i.be to ptr               ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = add i32 %i.bg, -1291845632
  %i.bi = icmp ult i32 %i.bh, -67108864
  br i1 %i.bi, label %_ZN4llvh11raw_ostreamlsEPKc.exit41, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !943
  %i.bl = load i64, ptr %i.q, align 8, !tbaa !18
  %i.bm = xor i64 %i.bl, %i.bk
  br label %_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit

_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit35, %_ZN4llvh11raw_ostreamlsEPKc.exit28, %bb.m
  %.1.i.in = phi i64 [ %i.bm, %bb.m ], [ %.pr, %_ZN4llvh11raw_ostreamlsEPKc.exit35 ], [ %.sroa.05.0.copyload, %_ZN4llvh11raw_ostreamlsEPKc.exit28 ] ; 2 uses
  %.not22 = icmp eq i64 %.1.i.in, 0
  br i1 %.not22, label %_ZN4llvh11raw_ostreamlsEPKc.exit41, label %bb.n

bb.n:                                             ; preds = %_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit
  %.1.i = inttoptr i64 %.1.i.in to ptr
  %i.bn = tail call i32 @_ZNK6hermes2vm9CodeBlock18getNameMayAllocateEv(ptr noundef nonnull align 8 dereferenceable(40) %.1.i) #29
  %i.bo = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes2vmlsERN4llvh11raw_ostreamENS0_7Runtime14FormatSymbolIDE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nonnull %0, i32 %i.bn) ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !696
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !699 ; 2 uses
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.bo, ptr noundef nonnull @.str.149, i64 noundef 1) #29 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit41

bb.p:                                             ; preds = %bb.n
  store i8 32, ptr %i.bs, align 1
  %i.bv = load ptr, ptr %i.br, align 8, !tbaa !699
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit41

_ZN4llvh11raw_ostreamlsEPKc.exit41:               ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_10JSFunctionEEEPT_NS0_11HermesValueE.exit.i, %bb.p, %bb.o, %_ZNK6hermes2vm14StackFramePtrTILb0EE18getCalleeCodeBlockERNS0_7RuntimeE.exit
  tail call void @_ZN6hermes2vm14dumpStackFrameENS0_14StackFramePtrTILb1EEERN4llvh11raw_ostreamEPKNS0_17PinnedHermesValueE(ptr nonnull %.sroa.046.054, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %.056) #29
  %i.bx = getelementptr inbounds i8, ptr %.sroa.046.054, i64 -8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !420
  %i.bz = inttoptr i64 %i.by to ptr               ; 2 uses
  %.not = icmp eq ptr %i.n, %i.bz
  br i1 %.not, label %._crit_edge, label %bb.d
}

declare noundef ptr @_ZN6hermes2vm11cellKindStrENS0_8CellKindE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN6hermes2vmlsERN4llvh11raw_ostreamENS0_7Runtime14FormatSymbolIDE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr %1, i32 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp ult i32 %2, 536870910
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !696
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !699  ; 3 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.h, 17
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.150, i64 noundef 17) #29
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.e, ptr noundef nonnull align 1 dereferenceable(17) @.str.150, i64 17, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !699
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  store ptr %i.l, ptr %i.d, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.h, 9
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @.str.151, i64 noundef 9) #29 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.e, ptr noundef nonnull align 1 dereferenceable(9) @.str.151, i64 9, i1 false)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !699
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 9 ; 2 uses
  store ptr %i.p, ptr %i.d, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit7

_ZN4llvh11raw_ostreamlsEPKc.exit7:                ; preds = %bb.f, %bb.g
  %i.q = phi ptr [ %.pre, %bb.f ], [ %i.p, %bb.g ] ; 2 uses
  %.0.i.i6 = phi ptr [ %i.n, %bb.f ], [ %0, %bb.g ] ; 4 uses
  %.not = icmp samesign ult i32 %2, 268435456
  %.str.152..str.153 = select i1 %.not, ptr @.str.153, ptr @.str.152 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i6, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !696
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult i64 %i.v, 10
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit7
  %i.x = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i6, ptr noundef nonnull %.str.152..str.153, i64 noundef 10) #29
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit10

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit7
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i6, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.q, ptr noundef nonnull align 1 dereferenceable(10) %.str.152..str.153, i64 10, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !699
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 10
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !699
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit10

_ZN4llvh11raw_ostreamlsEPKc.exit10:               ; preds = %bb.h, %bb.i
  %.0.i.i9 = phi ptr [ %i.x, %bb.h ], [ %.0.i.i6, %bb.i ]
  %i.ab = and i32 %2, 268435455
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i9, i64 noundef %i.ac) #29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !696
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !699 ; 2 uses
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit10
  %i.am = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ad, ptr noundef nonnull @.str.154, i64 noundef 2) #29 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit13

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit10
  store i16 8736, ptr %i.ah, align 1
  %i.an = load ptr, ptr %i.ag, align 8, !tbaa !699
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFN6hermes2vm15ExecutionStatusEjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0E9_M_invokeERKSt9_Any_dataOjOS4_S8_OS9_":bb.a
  br i1 %i.ax, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.thread.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit29.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !627, !noalias !1171 ; 2 uses
  switch i32 %i.az, label %bb.i [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.thread.i.i
    i32 1, label %bb.h
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.thread.i.i: ; preds = %bb.g, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit29.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !627, !alias.scope !1172
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.bb, align 8, !tbaa !649, !alias.scope !1172
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false), !alias.scope !1172
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false), !tbaa.struct !736
  %.phi.trans.insert16.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.pre17.i.i = load i32, ptr %.phi.trans.insert16.i.i, align 8, !tbaa !627, !noalias !1175
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bd = add i64 %i.au, %i.at
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !650, !noalias !1171
  %i.bg = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !651, !noalias !1171
  %i.bi = add i64 %i.bh, %i.bf
  %.0.i.i31.i.i.i = select i1 %i.as, i32 %i.av, i32 2 ; 2 uses
  %.sroa.06.0.i.i32.i.i.i = select i1 %i.as, ptr %.sroa.06.0.copyload.i.i30.i.i.i, ptr %8
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !noalias !1171
  %i.bl = icmp eq i32 %i.bk, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i33.i.i.i = load ptr, ptr %11, align 8, !noalias !1171
  %.015.i.i34.i.i.i = select i1 %i.bl, i32 %i.az, i32 2
  %.sroa.03.0.i.i35.i.i.i = select i1 %i.bl, ptr %.sroa.03.0.copyload.i.i33.i.i.i, ptr %11
  store ptr %.sroa.06.0.i.i32.i.i.i, ptr %7, align 8, !tbaa !19, !alias.scope !1171
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %.0.i.i31.i.i.i, ptr %i.bm, align 8, !tbaa !627, !alias.scope !1171
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.sroa.03.0.i.i35.i.i.i, ptr %i.bn, align 8, !tbaa !19, !alias.scope !1171
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.015.i.i34.i.i.i, ptr %i.bo, align 8, !tbaa !649, !alias.scope !1171
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.bd, ptr %i.bp, align 8, !tbaa !650, !alias.scope !1171
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.bi, ptr %i.bq, align 8, !tbaa !651, !alias.scope !1171
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.i.i: ; preds = %bb.i, %bb.h
  %i.br = phi i32 [ %.0.i.i31.i.i.i, %bb.i ], [ %.pre17.i.i, %bb.h ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  switch i32 %i.br, label %bb.l [
    i32 0, label %bb.j
    i32 1, label %bb.k
  ]

bb.j:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.i.i, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.thread.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.bs, align 8, !tbaa !627, !alias.scope !1182
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %i.bt, align 8, !tbaa !649, !alias.scope !1182
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false), !alias.scope !1182
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i

bb.k:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.i.i
  store ptr @.str.191, ptr %6, align 8, !tbaa !19
  %.sroa.528.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 3, ptr %.sroa.528.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.630.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 1, ptr %.sroa.630.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.732.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 18, ptr %.sroa.732.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %.sroa.833.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %.sroa.833.0..sroa_idx.i.i.i, align 8, !tbaa !18
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i

bb.l:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit36.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !650, !noalias !1175
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !651, !noalias !1175
  %i.bz = add i64 %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cb = load i32, ptr %i.ca, align 8, !noalias !1175
  %i.cc = icmp eq i32 %i.cb, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i39.i.i.i = load ptr, ptr %7, align 8, !noalias !1175
  %.0.i.i40.i.i.i = select i1 %i.cc, i32 %i.br, i32 2
  %.sroa.06.0.i.i41.i.i.i = select i1 %i.cc, ptr %.sroa.06.0.copyload.i.i39.i.i.i, ptr %7
  store ptr %.sroa.06.0.i.i41.i.i.i, ptr %6, align 8, !tbaa !19, !alias.scope !1175
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.0.i.i40.i.i.i, ptr %i.cd, align 8, !tbaa !627, !alias.scope !1175
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.191, ptr %i.ce, align 8, !tbaa !19, !alias.scope !1175
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.cf, align 8, !tbaa !649, !alias.scope !1175
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.bz, ptr %i.cg, align 8, !tbaa !650, !alias.scope !1175
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 18, ptr %i.ch, align 8, !tbaa !651, !alias.scope !1175
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit45.i.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 144
  %i.cj = call fastcc noundef i32 @_ZN6hermes2vmL16raisePlaceholderERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %.val, ptr nonnull %i.ci, ptr noundef nonnull align 8 dereferenceable(48) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  br label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit"

bb.m:                                             ; preds = %bb.b
  %.sroa.04.0.copyload.i.i.i = load ptr, ptr %3, align 8 ; 3 uses
  %.sroa.03.0.copyload.i.i.i = load i64, ptr %5, align 8 ; 3 uses
  %.sroa.49.0.extract.shift.i.i.i.i = lshr i64 %.sroa.03.0.copyload.i.i.i, 32 ; 3 uses
  %i.ck = and i64 %.sroa.03.0.copyload.i.i.i, 1280
  %or.cond.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %or.cond.i.i.i.i, label %bb.n, label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i, !prof !96

bb.n:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.04.0.copyload.i.i.i, align 8, !tbaa !18
  %i.cl = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 281474976710655
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = icmp ult i64 %.sroa.03.0.copyload.i.i.i, 21474836480
  br i1 %i.cn, label %bb.o, label %bb.p, !prof !66

bb.o:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %.sroa.0.0.copyload.i.i.i.i.i46.i.i.i = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.cq = zext i32 %.sroa.0.0.copyload.i.i.i.i.i46.i.i.i to i64
  %i.cr = add i64 %i.cq, %i.e
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = add nuw nsw i64 %.sroa.49.0.extract.shift.i.i.i.i, 4294967291
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cv = and i64 %i.ct, 4294967295
  br label %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i

_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.sink6.i.i.i.i.i.i = phi i64 [ %i.cv, %bb.p ], [ %.sroa.49.0.extract.shift.i.i.i.i, %bb.o ]
  %.sink.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.p ], [ %i.co, %bb.o ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i.i.i.i.i.i, i64 %.sink6.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = load i32, ptr %i.cw, align 4, !tbaa !3 ; 7 uses
  %i.cx = trunc i32 %.sroa.0.0.i.i.i.i.i.i to i8
  %i.cy = and i8 %i.cx, 15
  switch i8 %i.cy, label %default.unreachable [
    i8 0, label %bb.q
    i8 8, label %bb.q
    i8 1, label %bb.r
    i8 9, label %bb.r
    i8 2, label %bb.s
    i8 10, label %bb.s
    i8 3, label %bb.t
    i8 11, label %bb.t
    i8 4, label %bb.u
    i8 12, label %bb.u
    i8 5, label %bb.v
    i8 13, label %bb.v
    i8 6, label %bb.v
    i8 14, label %bb.v
    i8 7, label %bb.v
    i8 15, label %bb.v
  ]

bb.q:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i, 0
  %i.cz = zext i32 %.sroa.0.0.i.i.i.i.i.i to i64
  %i.da = add i64 %i.cz, %i.e
  %i.db = select i1 %.not.i.i.i.i.i.i.i.i.i, i64 -281474976710656, i64 %i.da
  br label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.thread12.i.i.i

bb.r:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i
  %i.dc = and i32 %.sroa.0.0.i.i.i.i.i.i, -8
  %i.dd = zext i32 %i.dc to i64
  %i.de = add i64 %i.dd, %i.e
  br label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.thread12.i.i.i

bb.s:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i
  %i.df = and i32 %.sroa.0.0.i.i.i.i.i.i, -8
  %i.dg = zext i32 %i.df to i64
  %i.dh = add i64 %i.dg, %i.e
  br label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.thread12.i.i.i

bb.t:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i
  %i.di = and i32 %.sroa.0.0.i.i.i.i.i.i, -8
  %i.dj = zext i32 %i.di to i64
  %i.dk = add i64 %i.dj, %i.e
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !72 ; 2 uses
  %i.do = fcmp uno double %i.dn, 0.000000e+00
  %i.dp = bitcast double %i.dn to i64
  br i1 %i.do, label %bb.v, label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.i.i.i, !prof !51

bb.u:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i
  %i.dq = ashr i32 %.sroa.0.0.i.i.i.i.i.i, 3
  %i.dr = sitofp i32 %i.dq to double
  %i.ds = bitcast double %i.dr to i64
  br label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.i.i.i

default.unreachable:                              ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i
  unreachable

_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i: ; preds = %bb.m
  %.sroa.49.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.49.0.extract.shift.i.i.i.i to i32
  %i.dt = call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.sroa.04.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %.val, i32 %.sroa.49.0.extract.trunc.i.i.i.i, ptr %.sroa.04.0.copyload.i.i.i, i32 0, ptr noundef null) #29 ; 2 uses
  %i.du = extractvalue { i32, i64 } %i.dt, 0
  %i.dv = extractvalue { i32, i64 } %i.dt, 1
  %i.dw = icmp eq i32 %i.du, 0
  br i1 %i.dw, label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.i.i.i, !prof !1005

_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.i.i.i: ; preds = %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i, %bb.u, %bb.t
  %.sroa.3.0.i6.i.i.i = phi i64 [ %i.dv, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.i.i.i ], [ %i.dp, %bb.t ], [ %i.ds, %bb.u ] ; 2 uses
  %i.dx = icmp ugt i64 %.sroa.3.0.i6.i.i.i, -844424930131969
  br i1 %i.dx, label %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.thread12.i.i.i, label %bb.v

_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.thread12.i.i.i: ; preds = %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.i.i.i, %bb.s, %bb.r, %bb.q
  %.sroa.3.0.i614.i.i.i = phi i64 [ %.sroa.3.0.i6.i.i.i, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.i.i.i ], [ %i.db, %bb.q ], [ %i.de, %bb.r ], [ %i.dh, %bb.s ]
  %i.dy = and i64 %.sroa.3.0.i614.i.i.i, 281474976710655
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = add i32 %i.ea, -1157627904
  %i.ec = icmp ult i32 %i.eb, 67108864
  br i1 %i.ec, label %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i.i.i, label %bb.v

_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i.i.i: ; preds = %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.thread12.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %.val, i64 9616
  %i.ee = zext i32 %.val5 to i64
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !447
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ee
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !448
  %.not20.i.i.i = icmp eq ptr %i.eh, %i.dz
  br i1 %.not20.i.i.i, label %"_ZSt10__invoke_rIN6hermes2vm15ExecutionStatusERZNS1_7Runtime24assertBuiltinsUnmodifiedEvE3$_0JjNS1_10Predefined3StrERNS1_6HandleINS1_8JSObjectEEENS1_8SymbolIDEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESE_E4typeEOSF_DpOSG_.exit", label %bb.v

bb.v:                                             ; preds = %_ZN6hermes2vm10dyn_vmcastINS0_14NativeFunctionEEEPT_NS0_11HermesValueE.exit.i.i.i, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.thread12.i.i.i, %_ZN6hermes2vm8JSObject17getNamedSlotValueENS0_6HandleIS1_EERNS0_7RuntimeENS0_23NamedPropertyDescriptorE.exit.thread.i.i.i, %bb.t, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29
  %i.ei = getelementptr inbounds nuw i8, ptr %.val, i64 9240 ; 2 uses
  %i.ej = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ei, ptr noundef nonnull align 8 dereferenceable(9816) %.val, i32 %.val6) #29
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef %i.ej) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  %i.ek = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !627, !noalias !1191 ; 2 uses
  switch i32 %i.el, label %bb.x [
    i32 0, label %bb.w
    i32 1, label %.thread28.i.i
  ]

.thread28.i.i:                                    ; preds = %bb.v
  store ptr @.str.145, ptr %15, align 8, !tbaa !19
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !620
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !620
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 59, ptr %.sroa.68.0..sroa_idx.i.i, align 8, !tbaa !18
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !18
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 0, ptr %i.em, align 8, !tbaa !627, !alias.scope !1192
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %i.en, align 8, !tbaa !649, !alias.scope !1192
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i8 0, i64 16, i1 false), !alias.scope !1192
  %i.ep = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.ep, align 8, !tbaa !627, !alias.scope !1195
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 1, ptr %i.eq, align 8, !tbaa !649, !alias.scope !1195
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false), !alias.scope !1195
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.et = load i64, ptr %i.es, align 8, !tbaa !650, !noalias !1191
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !651, !noalias !1191
  %i.ew = add i64 %i.ev, %i.et                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ey = load i32, ptr %i.ex, align 8, !noalias !1191
  %i.ez = icmp eq i32 %i.ey, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i52.i.i.i = load ptr, ptr %16, align 8, !noalias !1191
  %.015.i.i53.i.i.i = select i1 %i.ez, i32 %i.el, i32 2
  %.sroa.03.0.i.i54.i.i.i = select i1 %i.ez, ptr %.sroa.03.0.copyload.i.i52.i.i.i, ptr %16
  store ptr @.str.145, ptr %15, align 8, !tbaa !19, !alias.scope !1191
  %i.fa = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %i.fa, align 8, !tbaa !627, !alias.scope !1191
  %i.fb = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %.sroa.03.0.i.i54.i.i.i, ptr %i.fb, align 8, !tbaa !19, !alias.scope !1191
  %i.fc = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 %.015.i.i53.i.i.i, ptr %i.fc, align 8, !tbaa !649, !alias.scope !1191
  %i.fd = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 59, ptr %i.fd, align 8, !tbaa !650, !alias.scope !1191
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 %i.ew, ptr %i.fe, align 8, !tbaa !651, !alias.scope !1191
  %i.ff = add i64 %i.ew, 59
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread28.i.i
  %i.fg = phi i32 [ 3, %.thread28.i.i ], [ 2, %bb.x ] ; 2 uses
  %i.fh = phi i64 [ 59, %.thread28.i.i ], [ %i.ff, %bb.x ] ; 2 uses
  %i.fi = phi ptr [ @.str.145, %.thread28.i.i ], [ %15, %bb.x ] ; 2 uses
  store ptr %i.fi, ptr %14, align 8, !tbaa !19, !alias.scope !1202
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %i.fg, ptr %i.fj, align 8, !tbaa !627, !alias.scope !1202
  %i.fk = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.190, ptr %i.fk, align 8, !tbaa !19, !alias.scope !1202
  %i.fl = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 3, ptr %i.fl, align 8, !tbaa !649, !alias.scope !1202
  %i.fm = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %i.fh, ptr %i.fm, align 8, !tbaa !650, !alias.scope !1202
  %i.fn = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 1, ptr %i.fn, align 8, !tbaa !651, !alias.scope !1202
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i: ; preds = %bb.y, %bb.w
  %.sroa.06.0.copyload.i.i65.i.i.i = phi ptr [ undef, %bb.w ], [ %i.fi, %bb.y ]
  %i.fo = phi i1 [ true, %bb.w ], [ false, %bb.y ] ; 2 uses
  %i.fp = phi i64 [ 0, %bb.w ], [ 1, %bb.y ]
  %i.fq = phi i64 [ 0, %bb.w ], [ %i.fh, %bb.y ]
  %i.fr = phi i32 [ 0, %bb.w ], [ %i.fg, %bb.y ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  %i.fs = call noundef ptr @_ZN6hermes2vm15IdentifierTable13getStringPrimERNS0_7RuntimeENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(84) %i.ei, ptr noundef nonnull align 8 dereferenceable(9816) %.val, i32 %.val7) #29
  call void @_ZN6hermes2vm11TwineChar16C1EPKNS0_15StringPrimitiveE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.fs) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.ft = icmp eq i32 %i.fr, 0
  br i1 %i.ft, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !627, !noalias !1209 ; 2 uses
  switch i32 %i.fv, label %bb.ab [
    i32 0, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i
    i32 1, label %bb.aa
  ]

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i: ; preds = %bb.z, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit64.i.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.fw, align 8, !tbaa !627, !alias.scope !1210
  %i.fx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.fx, align 8, !tbaa !649, !alias.scope !1210
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, i8 0, i64 16, i1 false), !alias.scope !1210
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14, i64 48, i1 false), !tbaa.struct !736
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 8, !tbaa !627, !noalias !1213
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.fz = add i64 %i.fq, %i.fp
  %i.ga = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !650, !noalias !1209
  %i.gc = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !651, !noalias !1209
  %i.ge = add i64 %i.gd, %i.gb
  %.0.i.i66.i.i.i = select i1 %i.fo, i32 %i.fr, i32 2 ; 2 uses
  %.sroa.06.0.i.i67.i.i.i = select i1 %i.fo, ptr %.sroa.06.0.copyload.i.i65.i.i.i, ptr %14
  %i.gf = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.gg = load i32, ptr %i.gf, align 8, !noalias !1209
  %i.gh = icmp eq i32 %i.gg, 1                    ; 2 uses
  %.sroa.03.0.copyload.i.i68.i.i.i = load ptr, ptr %17, align 8, !noalias !1209
  %.015.i.i69.i.i.i = select i1 %i.gh, i32 %i.fv, i32 2
  %.sroa.03.0.i.i70.i.i.i = select i1 %i.gh, ptr %.sroa.03.0.copyload.i.i68.i.i.i, ptr %17
  store ptr %.sroa.06.0.i.i67.i.i.i, ptr %13, align 8, !tbaa !19, !alias.scope !1209
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 %.0.i.i66.i.i.i, ptr %i.gi, align 8, !tbaa !627, !alias.scope !1209
  %i.gj = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sroa.03.0.i.i70.i.i.i, ptr %i.gj, align 8, !tbaa !19, !alias.scope !1209
  %i.gk = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 %.015.i.i69.i.i.i, ptr %i.gk, align 8, !tbaa !649, !alias.scope !1209
  %i.gl = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.fz, ptr %i.gl, align 8, !tbaa !650, !alias.scope !1209
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %i.ge, ptr %i.gm, align 8, !tbaa !651, !alias.scope !1209
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i: ; preds = %bb.ab, %bb.aa
  %i.gn = phi i32 [ %.0.i.i66.i.i.i, %bb.ab ], [ %.pre.i.i, %bb.aa ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  switch i32 %i.gn, label %bb.ae [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
  ]

bb.ac:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.thread.i.i
  %i.go = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 0, ptr %i.go, align 8, !tbaa !627, !alias.scope !1220
  %i.gp = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.gp, align 8, !tbaa !649, !alias.scope !1220
  %i.gq = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i8 0, i64 16, i1 false), !alias.scope !1220
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

bb.ad:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i
  store ptr @.str.191, ptr %12, align 8, !tbaa !19
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.618.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %.sroa.618.0..sroa_idx.i.i.i, align 8, !tbaa !620
  %.sroa.719.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 18, ptr %.sroa.719.0..sroa_idx.i.i.i, align 8, !tbaa !18
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !18
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit80.i.i.i

bb.ae:                                            ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit71.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !650, !noalias !1213
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !651, !noalias !1213
end_hunk_2
