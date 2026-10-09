Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ic?download=true
inline.NumInlined: 5609
inline.NumDeleted: 1806
begin_hunk_0_@_ZN2v88internal12KeyedStoreIC18UpdateStoreElementENS0_6HandleINS0_3MapEEENS0_20KeyedAccessStoreModeES4_:bb.a
  %i.ct = add i64 %i.co, 39
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = load atomic volatile i64, ptr %i.cu monotonic, align 8
  %i.cw = and i64 %i.cv, 17179869184
  %.not212 = icmp eq i64 %i.cw, 0
  br i1 %.not212, label %bb.l, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread

_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread: ; preds = %bb.k, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.30, ptr %i.cx, align 8
  br label %.critedge94

bb.l:                                             ; preds = %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit, %bb.j
  %i.cy = call ptr @_ZN2v88internal12KeyedStoreIC19StoreElementHandlerENS0_12DirectHandleINS0_3MapEEENS0_20KeyedAccessStoreModeENS0_17MaybeDirectHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %1, i8 noundef zeroext %2, ptr null)
  call void @_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEENS2_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr null, ptr nonnull %1, ptr %i.cy)
  br label %.critedge94

_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread187: ; preds = %bb.i, %bb.h, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit100.thread, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit100, %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit, %.critedge90
  %i.cz = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_126AddOneReceiverMapIfMissingEPNS0_15MapsAndHandlersENS0_6HandleINS0_3MapEEE(ptr noundef %6, ptr %1) ; 2 uses
  %i.da = load i64, ptr %1, align 8
  %i.db = load i64, ptr %3, align 8
  %i.dc = call noundef zeroext i1 @_ZN2v88internal2IC31IsTransitionOfMonomorphicTargetENS0_6TaggedINS0_3MapEEES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, i64 %i.da, i64 %i.db)
  br i1 %i.dc, label %.split, label %bb.m

.split:                                           ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread187
  %i.dd = call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_126AddOneReceiverMapIfMissingEPNS0_15MapsAndHandlersENS0_6HandleINS0_3MapEEE(ptr noundef %6, ptr nonnull %3)
  %i.de = or i1 %i.cz, %i.dd
  br i1 %i.de, label %bb.o, label %bb.n

bb.m:                                             ; preds = %_ZNK2v88internal10HandleBase15is_identical_toERKS1_.exit.thread187
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.split, %bb.m
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.17, ptr %i.df, align 8
  br label %.critedge94

bb.o:                                             ; preds = %.split, %bb.m
  %i.dg = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.dh = load ptr, ptr %6, align 8               ; 3 uses
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = ashr exact i64 %i.dk, 3                 ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1496), align 8
  %i.do = icmp slt i32 %i.dn, %i.dm
  br i1 %i.do, label %.critedge94, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = icmp eq i8 %i.ay, 0
  %i.dq = icmp eq i8 %2, 0                        ; 2 uses
  br i1 %i.dp, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.dq, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not83 = icmp eq i8 %2, %i.ay
  br i1 %.not83, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.31, ptr %i.dr, align 8
  br label %.critedge94

bb.t:                                             ; preds = %bb.p
  br i1 %i.dq, label %._crit_edge.thread, label %.thread

.thread:                                          ; preds = %bb.q, %bb.r, %bb.t
  %.0194 = phi i8 [ %2, %bb.t ], [ %i.ay, %bb.q ], [ %2, %bb.r ] ; 2 uses
  %.not84216 = icmp eq ptr %i.dh, %i.dg
  br i1 %.not84216, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.v
  %.077218 = phi i64 [ %spec.select, %bb.v ], [ 0, %.thread ]
  %.081217 = phi ptr [ %i.er, %bb.v ], [ %i.dh, %.thread ] ; 2 uses
  %i.ds = load i64, ptr %.081217, align 8
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = load i64, ptr %i.dt, align 8            ; 3 uses
  %i.dv = add i64 %i.du, 11
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = load atomic volatile i16, ptr %i.dw monotonic, align 2
  %i.dy = icmp eq i16 %i.dx, 2119
  br i1 %i.dy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph
  %i.dz = add i64 %i.du, 39
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load i64, ptr %i.ea, align 8            ; 2 uses
  %i.ec = add i64 %i.eb, 9
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = load atomic volatile i16, ptr %i.ed monotonic, align 2
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114.thread, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114, !prof !10

_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114: ; preds = %bb.u
  %i.eg = add i64 %i.eb, 39
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load atomic volatile i64, ptr %i.eh monotonic, align 8
  %i.ej = and i64 %i.ei, 17179869184
  %.not213 = icmp eq i64 %i.ej, 0
  br i1 %.not213, label %bb.v, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114.thread

bb.v:                                             ; preds = %.lr.ph, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114
  %i.ek = add i64 %i.du, 14
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = load i8, ptr %i.el, align 1
  %i.en = lshr i8 %i.em, 2
  %i.eo = add nsw i8 %i.en, -18
  %i.ep = icmp ult i8 %i.eo, 24
  %i.eq = zext i1 %i.ep to i64
  %spec.select = add i64 %.077218, %i.eq          ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.081217, i64 8 ; 2 uses
  %.not84 = icmp eq ptr %i.er, %i.dg
  br i1 %.not84, label %._crit_edge, label %.lr.ph

_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114.thread: ; preds = %bb.u, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.32, ptr %i.es, align 8
  br label %.critedge94

._crit_edge:                                      ; preds = %bb.v
  %.not85 = icmp eq i64 %spec.select, 0
  %.not86 = icmp eq i64 %spec.select, %i.dl
  %or.cond208 = or i1 %.not85, %.not86
  br i1 %or.cond208, label %._crit_edge.thread, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.33, ptr %i.et, align 8
  br label %.critedge94

._crit_edge.thread:                               ; preds = %.thread, %._crit_edge, %bb.t
  %.0195 = phi i8 [ 0, %bb.t ], [ %.0194, %._crit_edge ], [ %.0194, %.thread ] ; 2 uses
  call void @_ZN2v88internal12KeyedStoreIC31StoreElementPolymorphicHandlersEPNS0_15MapsAndHandlersENS0_20KeyedAccessStoreModeE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %6, i8 noundef zeroext %.0195)
  %i.eu = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ev = load ptr, ptr %6, align 8               ; 3 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.thread
  %i.ex = call ptr @_ZN2v88internal12KeyedStoreIC19StoreElementHandlerENS0_12DirectHandleINS0_3MapEEENS0_20KeyedAccessStoreModeENS0_17MaybeDirectHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %1, i8 noundef zeroext %.0195, ptr null)
  call void @_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEENS2_INS0_6ObjectEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr null, ptr nonnull %1, ptr %i.ex)
  br label %.critedge94

bb.y:                                             ; preds = %._crit_edge.thread
  %i.ey = ptrtoint ptr %i.eu to i64
  %i.ez = ptrtoint ptr %i.ev to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = icmp eq i64 %i.fa, 8
  br i1 %i.fb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  %i.fc = load ptr, ptr %i.i, align 8, !noalias !42
  %i.fd = load i32, ptr %i.fc, align 4, !noalias !42 ; 2 uses
  %switch = icmp ult i32 %i.fd, 2
  br i1 %switch, label %.sink.split.i, label %_ZNK2v88internal15MapsAndHandlersixEm.exit

.sink.split.i:                                    ; preds = %bb.z
  %i.fe = load ptr, ptr %i.e, align 8, !noalias !42
  %.sroa.0.0.copyload.i115 = load ptr, ptr %i.fe, align 8, !noalias !42
  br label %_ZNK2v88internal15MapsAndHandlersixEm.exit

_ZNK2v88internal15MapsAndHandlersixEm.exit:       ; preds = %bb.z, %.sink.split.i
  %.sroa.09.0.i = phi i32 [ 1, %bb.z ], [ %i.fd, %.sink.split.i ]
  %.sroa.7.0.i = phi ptr [ null, %bb.z ], [ %.sroa.0.0.copyload.i115, %.sink.split.i ]
  %i.ff = load i64, ptr %i.ev, align 8, !noalias !42 ; 2 uses
  store i64 %i.ff, ptr %8, align 8, !alias.scope !42
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i32 %.sroa.09.0.i, ptr %i.fg, align 8, !alias.scope !42
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !42
  %.sroa.0.0.copyload.cast = inttoptr i64 %i.ff to ptr
  call void @_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEERKNS0_23MaybeObjectDirectHandleE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr null, ptr %.sroa.0.0.copyload.cast, ptr noundef nonnull align 8 dereferenceable(16) %i.fg)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.critedge94

bb.aa:                                            ; preds = %bb.y
  call void @_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEERKNS0_15MapsAndHandlersE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr null, ptr noundef nonnull align 8 dereferenceable(152) %6)
  br label %.critedge94

.critedge94:                                      ; preds = %bb.w, %bb.x, %bb.aa, %_ZNK2v88internal15MapsAndHandlersixEm.exit, %bb.o, %bb.s, %bb.n, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit114.thread, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread, %bb.l, %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEENS2_INS0_6ObjectEEE.exit109, %.critedge88, %_ZN2v88internal2IC20ConfigureVectorStateENS0_12DirectHandleINS0_4NameEEENS2_INS0_3MapEEENS2_INS0_6ObjectEEE.exit
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal23HeapObjectReferenceTypeELm4ESaIS3_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6ObjectEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(56) %i.e)
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_3MapEEELm4ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(152) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal12KeyedStoreIC19StoreElementHandlerENS0_12DirectHandleINS0_3MapEEENS0_20KeyedAccessStoreModeENS0_17MaybeDirectHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, ptr %1, i8 noundef zeroext %2, ptr nofree readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = add i64 %i.a, 11
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.e = icmp ugt i16 %i.d, 302
  br i1 %i.e, label %bb.i, label %4

4:                                                ; preds = %bb.a
  %5 = load atomic volatile i16, ptr %i.c monotonic, align 2
  %6 = icmp eq i16 %5, 302
  br i1 %6, label %bb.b, label %bb.e

bb.b:                                             ; preds = %4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i8, ptr %i.f, align 4
  %i.h = icmp eq i8 %i.g, 13
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 560 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 568
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.j) #22
  br label %_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit

_ZN2v88internal12StoreHandler10StoreProxyEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.p, %bb.d ], [ %i.l, %bb.c ] ; 3 uses
  %i.q = ptrtoint ptr %.0.i.i to i64
  %i.r = add i64 %i.q, 8
  %i.s = inttoptr i64 %i.r to ptr
  store ptr %i.s, ptr %i.k, align 8
  store i64 42949672960, ptr %.0.i.i, align 8
  br label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit

bb.e:                                             ; preds = %bb.b, %4
  %i.t = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.u = and i16 %i.t, -2
  %i.v = icmp eq i16 %i.u, 300
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.34, ptr %i.w, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 560 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 568
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = icmp eq ptr %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit, !prof !10

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.y) #22
  br label %_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit

_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit: ; preds = %bb.g, %bb.h
  %.0.i.i30 = phi ptr [ %i.ae, %bb.h ], [ %i.aa, %bb.g ] ; 3 uses
  %i.af = zext i8 %2 to i64
  %i.ag = shl nuw nsw i64 %i.af, 38
  %i.ah = or disjoint i64 %i.ag, 38654705664
  %i.ai = ptrtoint ptr %.0.i.i30 to i64
  %i.aj = add i64 %i.ai, 8
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %i.ak, ptr %i.z, align 8
  store i64 %i.ah, ptr %.0.i.i30, align 8
  br label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit

bb.i:                                             ; preds = %bb.a
  %i.al = add i64 %i.a, 14
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i8, ptr %i.am, align 1
  %.fr = freeze i8 %i.an                          ; 6 uses
  %i.ao = and i8 %.fr, -8                         ; 2 uses
  %i.ap = icmp eq i8 %i.ao, 56
  br i1 %i.ap, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ult i8 %2, 4
  br i1 %i.aq, label %_ZN2v88internal12StoreHandler27StoreSloppyArgumentsBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #21
  unreachable

_ZN2v88internal12StoreHandler27StoreSloppyArgumentsBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit: ; preds = %bb.j
  %i.ar = or disjoint i8 %2, -88
  %switch.offset.i = zext i8 %i.ar to i32
  br label %.sink.split

bb.l:                                             ; preds = %bb.i
  %i.as = icmp ult i8 %.fr, 24
  %.mask.i = and i8 %.fr, -4
  %i.at = icmp eq i8 %.mask.i, 48
  %or.cond.a = or i1 %i.as, %i.at
  br i1 %or.cond.a, label %.thread, label %switch.early.test

switch.early.test:                                ; preds = %bb.l
  switch i8 %i.ao, label %bb.m [
    i8 32, label %.thread
    i8 24, label %.thread
  ]

bb.m:                                             ; preds = %switch.early.test
  %i.au = lshr i8 %.fr, 2
  %i.av = add nsw i8 %i.au, -18
  %i.aw = icmp ult i8 %i.av, 24
  br i1 %i.aw, label %.thread, label %bb.p

.thread:                                          ; preds = %switch.early.test, %switch.early.test, %bb.l, %bb.m
  %i.ax = load atomic volatile i16, ptr %i.c monotonic, align 2
  %i.ay = icmp eq i16 %i.ax, 2118
  br i1 %i.ay, label %bb.n, label %.critedge

bb.n:                                             ; preds = %.thread
  %i.az = and i8 %.fr, 4
  %i.ba = icmp eq i8 %i.az, 0
  %i.bb = icmp ult i8 %.fr, 20
  %i.bc = and i1 %i.bb, %i.ba
  br i1 %i.bc, label %.sink.split, label %.critedge

.critedge:                                        ; preds = %.thread, %bb.n
  %i.bd = icmp ult i8 %2, 4
  br i1 %i.bd, label %_ZN2v88internal12StoreHandler23StoreFastElementBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit, label %bb.o

bb.o:                                             ; preds = %.critedge
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #21
  unreachable

_ZN2v88internal12StoreHandler23StoreFastElementBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit: ; preds = %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = or disjoint i8 %2, -84
  %switch.offset.i31 = zext i8 %i.bg to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 58992
  %i.bi = tail call ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.bh, i32 noundef %switch.offset.i31) #22 ; 2 uses
  %i.bj = load i64, ptr %1, align 8
  %i.bk = add i64 %i.bj, 14
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = lshr i8 %i.bm, 2
  %i.bo = add nsw i8 %i.bn, -18
  %i.bp = icmp ult i8 %i.bo, 24
  br i1 %i.bp, label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit, label %bb.u

bb.p:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.br = load i8, ptr %i.bq, align 4
  %i.bs = icmp eq i8 %i.br, 15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 560 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 568
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = icmp eq ptr %i.bw, %i.by                ; 2 uses
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %i.bz, label %bb.r, label %_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit33, !prof !10

bb.r:                                             ; preds = %bb.q
  %i.ca = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bu) #22
  br label %_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit33

_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit33: ; preds = %bb.q, %bb.r
  %.0.i.i32 = phi ptr [ %i.ca, %bb.r ], [ %i.bw, %bb.q ] ; 3 uses
  %i.cb = zext i8 %2 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 38
  %i.cd = or disjoint i64 %i.cc, 38654705664
  %i.ce = ptrtoint ptr %.0.i.i32 to i64
  %i.cf = add i64 %i.ce, 8
  %i.cg = inttoptr i64 %i.cf to ptr
  store ptr %i.cg, ptr %i.bv, align 8
  store i64 %i.cd, ptr %.0.i.i32, align 8
  br label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit

bb.s:                                             ; preds = %bb.p
  br i1 %i.bz, label %bb.t, label %_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit35, !prof !10

bb.t:                                             ; preds = %bb.s
  %i.ch = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bu) #22
  br label %_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit35

_ZN2v88internal12StoreHandler9StoreSlowEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit35: ; preds = %bb.s, %bb.t
  %.0.i.i34 = phi ptr [ %i.ch, %bb.t ], [ %i.bw, %bb.s ] ; 3 uses
  %i.ci = zext i8 %2 to i64
  %i.cj = shl nuw nsw i64 %i.ci, 38
  %i.ck = or disjoint i64 %i.cj, 38654705664
  %i.cl = ptrtoint ptr %.0.i.i34 to i64
  %i.cm = add i64 %i.cl, 8
  %i.cn = inttoptr i64 %i.cm to ptr
  store ptr %i.cn, ptr %i.bv, align 8
  store i64 %i.ck, ptr %.0.i.i34, align 8
  br label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit

.sink.split:                                      ; preds = %bb.n, %_ZN2v88internal12StoreHandler27StoreSloppyArgumentsBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit
  %.sink117 = phi i32 [ %switch.offset.i, %_ZN2v88internal12StoreHandler27StoreSloppyArgumentsBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit ], [ 172, %bb.n ]
  %.sink118.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sink118 = load ptr, ptr %.sink118.in, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %.sink118, i64 58992
  %i.cp = tail call ptr @_ZN2v88internal8Builtins11code_handleENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.co, i32 noundef %.sink117) #22
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %_ZN2v88internal12StoreHandler23StoreFastElementBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit
  %.sroa.068.0 = phi ptr [ %i.bi, %_ZN2v88internal12StoreHandler23StoreFastElementBuiltinEPNS0_7IsolateENS0_20KeyedAccessStoreModeE.exit ], [ %i.cp, %.sink.split ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cr = load i8, ptr %i.cq, align 4
  switch i8 %i.cr, label %bb.v [
    i8 15, label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit
    i8 13, label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit
    i8 12, label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit
  ]

bb.v:                                             ; preds = %bb.u
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit, label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call ptr @_ZN2v88internal3Map37GetOrCreatePrototypeChainValidityCellENS0_12DirectHandleIS1_EEPNS0_7IsolateEPNS2_INS0_13PrototypeInfoEEE(ptr nonnull %1, ptr noundef %i.ct, ptr noundef null) #22
  br label %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread

_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread: ; preds = %bb.v, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.045.0 = phi ptr [ %i.cu, %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit ], [ %3, %bb.v ] ; 2 uses
  %i.cv = load i64, ptr %.sroa.045.0, align 8
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_ZN2v88internal11DataHandler15set_smi_handlerENS0_6TaggedINS0_4CodeEEENS0_16WriteBarrierModeE.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_5UnionIJNS0_3SmiENS0_4CellEEEEE8ToHandleIS5_EEbPNS0_12DirectHandleIT_EE.exit.thread
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
begin_hunk_1_@_ZN2v88internal12KeyedStoreIC5StoreENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEENS0_12DirectHandleISF_EE:bb.a

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113: ; preds = %bb.av, %bb.aw
  %.0.i112 = phi ptr [ %i.ja, %bb.aw ], [ %i.iw, %bb.av ] ; 3 uses
  %i.jb = ptrtoint ptr %.0.i112 to i64
  %i.jc = add i64 %i.jb, 8
  %i.jd = inttoptr i64 %i.jc to ptr
  store ptr %i.jd, ptr %i.iv, align 8
  store i64 %i.it, ptr %.0.i112, align 8
  call void @_ZN2v88internal12KeyedStoreIC18UpdateStoreElementENS0_6HandleINS0_3MapEEENS0_20KeyedAccessStoreModeES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %.sroa.0180.0, i8 noundef zeroext %.1103, ptr nonnull %.0.i112)
  br label %bb.be

bb.ax:                                            ; preds = %_ZNK2v88internal3Map26is_abandoned_prototype_mapEv.exit.thread
  %i.je = add i64 %i.ik, 14
  %i.jf = inttoptr i64 %i.je to ptr
  %i.jg = load i8, ptr %i.jf, align 1
  %.mask.i = and i8 %i.jg, -4
  %i.jh = icmp eq i8 %.mask.i, 52
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  br i1 %i.jh, label %.critedge11, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ji = load i64, ptr %.sroa.0180.0, align 8
  store i64 %i.ji, ptr %8, align 8
  %i.jj = load ptr, ptr %i.b, align 8
  %i.jk = call noundef zeroext i1 @_ZN2v88internal3Map46ShouldCheckForReadOnlyElementsInPrototypeChainEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %i.jj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.jk, label %bb.bb, label %bb.az

.critedge11:                                      ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.az

bb.az:                                            ; preds = %.critedge11, %bb.ay
  %i.jl = load i64, ptr %1, align 8
  %i.jm = add i64 %i.jl, -1
  %i.jn = inttoptr i64 %i.jm to ptr
  %i.jo = load atomic volatile i64, ptr %i.jn monotonic, align 8
  %i.jp = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 560 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8            ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 568
  %i.jt = load ptr, ptr %i.js, align 8
  %i.ju = icmp eq ptr %i.jr, %i.jt
  br i1 %i.ju, label %bb.ba, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !10

bb.ba:                                            ; preds = %bb.az
  %i.jv = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.jp) #22
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.az, %bb.ba
  %.0.i = phi ptr [ %i.jv, %bb.ba ], [ %i.jr, %bb.az ] ; 3 uses
  %i.jw = ptrtoint ptr %.0.i to i64
  %i.jx = add i64 %i.jw, 8
  %i.jy = inttoptr i64 %i.jx to ptr
  store ptr %i.jy, ptr %i.jq, align 8
  store i64 %i.jo, ptr %.0.i, align 8
  call void @_ZN2v88internal12KeyedStoreIC18UpdateStoreElementENS0_6HandleINS0_3MapEEENS0_20KeyedAccessStoreModeES4_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr nonnull %.sroa.0180.0, i8 noundef zeroext %.1103, ptr nonnull %.0.i)
  br label %bb.be

bb.bb:                                            ; preds = %bb.ay
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.42, ptr %i.jz, align 8
  br label %bb.be

bb.bc:                                            ; preds = %.critedge9
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.43, ptr %i.ka, align 8
  br label %bb.be

bb.bd:                                            ; preds = %bb.al
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @.str.44, ptr %i.kb, align 8
  br label %bb.be

bb.be:                                            ; preds = %.thread384, %bb.bd, %bb.aq, %bb.bc, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit113, %bb.bb, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.au, %bb.as, %bb.an, %bb.ak
  %i.kc = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 0
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kf = load i8, ptr %i.ke, align 8, !range !8
  %i.kg = trunc nuw i8 %i.kf to i1
  %or.cond.i139 = select i1 %i.kd, i1 true, i1 %i.kg
  br i1 %or.cond.i139, label %_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.not.i140 = icmp eq i32 %i.kc, 6
  br i1 %.not.i140, label %_ZN2v88internal2IC19vector_needs_updateEv.exit142, label %_ZN2v88internal2IC19vector_needs_updateEv.exit142.thread

_ZN2v88internal2IC19vector_needs_updateEv.exit142: ; preds = %bb.bf
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ki = call noundef i32 @_ZNK2v88internal13FeedbackNexus10GetKeyTypeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kh) #22
  %.not = icmp eq i32 %i.ki, 0
  br i1 %.not, label %_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146, label %_ZN2v88internal2IC19vector_needs_updateEv.exit142.thread

_ZN2v88internal2IC19vector_needs_updateEv.exit142.thread: ; preds = %bb.bf, %_ZN2v88internal2IC19vector_needs_updateEv.exit142
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.kk = load i64, ptr %2, align 8               ; 2 uses
  %i.kl = trunc i64 %i.kk to i1
  br i1 %i.kl, label %bb.bg, label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i143

bb.bg:                                            ; preds = %_ZN2v88internal2IC19vector_needs_updateEv.exit142.thread
  %i.km = add nsw i64 %i.kk, -1
  %i.kn = inttoptr i64 %i.km to ptr
  %i.ko = load atomic volatile i64, ptr %i.kn monotonic, align 8
  %i.kp = add i64 %i.ko, 11
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = load atomic volatile i16, ptr %i.kq monotonic, align 2
  %i.ks = icmp ult i16 %i.kr, 129
  %i.kt = zext i1 %i.ks to i32
  br label %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i143

_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i143: ; preds = %bb.bg, %_ZN2v88internal2IC19vector_needs_updateEv.exit142.thread
  %i.ku = phi i32 [ 0, %_ZN2v88internal2IC19vector_needs_updateEv.exit142.thread ], [ %i.kt, %bb.bg ]
  %i.kv = call noundef zeroext i1 @_ZN2v88internal13FeedbackNexus20ConfigureMegamorphicENS0_11IcCheckTypeE(ptr noundef nonnull align 8 dereferenceable(88) %i.kj, i32 noundef %i.ku) #22
  br i1 %i.kv, label %bb.bh, label %_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146

bb.bh:                                            ; preds = %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i143
  store i8 1, ptr %i.ke, align 8
  %i.kw = load ptr, ptr %i.kj, align 8            ; 2 uses
  %i.kx = icmp eq ptr %i.kw, null
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.0.0.in.i.i.i144 = select i1 %i.kx, ptr %i.ky, ptr %i.kw
  %.sroa.0.0.i.i.i145 = load i64, ptr %.sroa.0.0.in.i.i.i144, align 8
  %i.kz = load ptr, ptr %i.b, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 58640
  %i.lb = load ptr, ptr %i.la, align 8
  call void @_ZN2v88internal14TieringManager15NotifyICChangedENS0_6TaggedINS0_14FeedbackVectorEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.lb, i64 %.sroa.0.0.i.i.i145) #22
  br label %_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146

_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146: ; preds = %bb.be, %bb.bh, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i143, %_ZN2v88internal2IC19vector_needs_updateEv.exit142
  %i.lc = load atomic i32, ptr @_ZN2v88internal12TracingFlags8ic_statsE monotonic, align 4
  %.not.i147 = icmp eq i32 %i.lc, 0
  br i1 %.not.i147, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.bi, !prof !7

bb.bi:                                            ; preds = %_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146
  %i.ld = load i32, ptr %i.bk, align 8
  %i.le = icmp eq i32 %i.ld, 0
  br i1 %i.le, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.lg = call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lf) #22
  %.pre.i148 = load i32, ptr %i.bk, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.lh = phi i32 [ %.pre.i148, %bb.bj ], [ 0, %bb.bi ]
  %i.li = phi i32 [ %i.lg, %bb.bj ], [ 0, %bb.bi ]
  call void @_ZN2v88internal2IC7TraceICEPKcNS0_12DirectHandleINS0_6ObjectEEENS0_16InlineCacheStateES7_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull @.str.20, ptr %2, i32 noundef %i.lh, i32 noundef %i.li)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.h, %bb.bk, %_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146, %_ZN2v88internal2IC19vector_needs_updateEv.exit, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.k, %bb.n, %bb.g
  %.sroa.0211.1 = phi ptr [ null, %bb.g ], [ %i.aa, %_ZN2v88internal2IC19vector_needs_updateEv.exit ], [ %i.aa, %bb.n ], [ %i.aa, %bb.k ], [ %i.aa, %_ZN2v88internal6IsNameENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %storemerge, %bb.bk ], [ %storemerge, %_ZN2v88internal2IC20ConfigureVectorStateENS0_16InlineCacheStateENS0_12DirectHandleINS0_6ObjectEEE.exit146 ], [ %i.aa, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit116

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit116: ; preds = %bb.d, %bb.e, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  %.sroa.0211.2 = phi ptr [ %.sroa.0211.1, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  ret ptr %.sroa.0211.2
}

declare ptr @_ZN2v88internal7Runtime23DefineObjectOwnPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_6ObjectEEESI_NS0_11StoreOriginE(ptr noundef, ptr, ptr, ptr, i32 noundef) local_unnamed_addr #3

declare ptr @_ZN2v88internal7Runtime17SetObjectPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_6ObjectEEESI_NS0_11StoreOriginENS_5MaybeINS0_11ShouldThrowEEE(ptr noundef, ptr, ptr, ptr, i32 noundef, i64) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK2v88internal3Map26IsMapInArrayPrototypeChainEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal7JSArray17HasReadOnlyLengthENS0_12DirectHandleIS1_EE(ptr %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 39
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = add i64 %i.g, 9
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = icmp eq i16 %i.j, 0
  br i1 %i.k, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit, !prof !10

_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit: ; preds = %bb.a
  %i.l = add i64 %i.g, 39
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8
  %i.o = and i64 %i.n, 17179869184
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.b, label %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread

_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit
  %i.p = tail call preserve_mostcc noundef zeroext i1 @_ZN2v88internal7JSArray25HasReadOnlyLengthSlowPathENS0_12DirectHandleIS1_EE(ptr nonnull %0) #22
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread
  %.0 = phi i1 [ %i.p, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit.thread ], [ false, %_ZN2v88internal7JSArray21MayHaveReadOnlyLengthENS0_6TaggedINS0_3MapEEE.exit ]
  ret i1 %.0
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_133MayHaveTypedArrayInPrototypeChainEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEE(ptr nofree noundef readonly captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, -1
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 11
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i16, ptr %i.f monotonic, align 2
  %i.h = icmp eq i16 %i.g, 302
  br i1 %i.h, label %.thread, label %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit

_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit: ; preds = %bb.a
  %i.i = load atomic volatile i64, ptr %i.c monotonic, align 8
  %i.j = add i64 %i.i, 23
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit
  %.sroa.6.038 = phi i64 [ %i.l, %.lr.ph ], [ %i.ak, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ]
  %i.q = add i64 %.sroa.6.038, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 4 uses
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = icmp eq i16 %i.v, 302
  br i1 %i.w, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.y = add i64 %i.x, 11
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load atomic volatile i16, ptr %i.z monotonic, align 2
  %i.ab = icmp eq i16 %i.aa, 2061
  br i1 %i.ab, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = icmp eq i16 %i.af, 302
  br i1 %i.ag, label %.thread, label %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit

_ZN2v88internal17PrototypeIterator7AdvanceEv.exit: ; preds = %bb.d
  %i.ah = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.ai = add i64 %i.ah, 23
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = load i64, ptr %i.p, align 8
  %i.am = icmp eq i64 %i.ak, %i.al
  br i1 %i.am, label %.thread, label %bb.b, !llvm.loop !53

.thread:                                          ; preds = %bb.d, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit, %bb.b, %bb.c, %bb.a, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit
  %i.an = phi i1 [ false, %_ZN2v88internal17PrototypeIteratorC2EPNS0_7IsolateENS0_6TaggedINS0_10JSReceiverEEENS0_12WhereToStartENS1_10WhereToEndE.exit ], [ false, %bb.a ], [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ false, %_ZN2v88internal17PrototypeIterator7AdvanceEv.exit ]
  ret i1 %i.an
}

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal21StoreInArrayLiteralIC5StoreENS0_12DirectHandleINS0_7JSArrayEEENS0_6HandleINS0_6ObjectEEENS2_IS6_EE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %6 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.626", align 8 ; 5 uses
  %7 = alloca %"class.v8::internal::PropertyKey", align 8 ; 5 uses
  %8 = alloca %"class.v8::internal::LookupIterator", align 8 ; 4 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 314), align 2, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load i64, ptr %1, align 8                ; 2 uses
  %i.i = trunc i64 %i.h to i1
  br i1 %i.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, label %bb.j

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.j = add nsw i64 %i.h, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp ugt i16 %i.o, 302
  br i1 %i.p, label %bb.d, label %bb.j

bb.d:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.q = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.r = add i64 %i.q, 15
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i32, ptr %i.s acquire, align 4
  %i.u = and i32 %i.t, 16777216
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.j, label %_ZN2v88internal12_GLOBAL__N_117MigrateDeprecatedEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_117MigrateDeprecatedEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit: ; preds = %bb.d
  tail call void @_ZN2v88internal8JSObject15MigrateInstanceEPNS0_7IsolateENS0_12DirectHandleIS1_EE(ptr noundef %i.g, ptr nonnull %1) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_117MigrateDeprecatedEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEE.exit, %bb.a, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN2v88internal11PropertyKeyC2INS0_6ObjectENS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS6_EEEEEPNS0_7IsolateES7_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.w, ptr %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %7, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.y = load i64, ptr %i.x, align 8
  call void @_ZN2v88internal14LookupIteratorC2EPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEEmSG_NS1_13ConfigurationE(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef %i.w, ptr %1, ptr %.sroa.0.0.copyload.i.i.i, i64 noundef %i.y, ptr %1, i32 noundef 1)
  %i.z = call i16 @_ZN2v88internal8JSObject33DefineOwnPropertyIgnoreAttributesEPNS0_14LookupIteratorENS0_12DirectHandleINS0_6ObjectEEENS0_18PropertyAttributesENS_5MaybeINS0_11ShouldThrowEEENS1_20AccessorInfoHandlingENS0_22EnforceDefineSemanticsENS0_11StoreOriginENS0_17MaybeDirectHandleIS5_EE(ptr noundef nonnull %8, ptr %3, i32 noundef 0, i64 4294967297, i32 noundef 1, i32 noundef 0, i32 noundef 1, i64 0) #22
  %i.aa = trunc i16 %i.z to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.aa, label %bb.f, label %_ZN2v88internal2IC7TraceICEPKcNS0_12DirectHandleINS0_6ObjectEEE.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load atomic i32, ptr @_ZN2v88internal12TracingFlags8ic_statsE monotonic, align 4
  %.not.i25 = icmp eq i32 %i.ab, 0
  br i1 %.not.i25, label %_ZN2v88internal2IC7TraceICEPKcNS0_12DirectHandleINS0_6ObjectEEE.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = call noundef i32 @_ZNK2v88internal13FeedbackNexus8ic_stateEv(ptr noundef nonnull align 8 dereferenceable(88) %i.af) #22
  %.pre.i = load i32, ptr %i.ac, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i32 [ %.pre.i, %bb.h ], [ 0, %bb.g ]
  %i.ai = phi i32 [ %i.ag, %bb.h ], [ 0, %bb.g ]
  call void @_ZN2v88internal2IC7TraceICEPKcNS0_12DirectHandleINS0_6ObjectEEENS0_16InlineCacheStateES7_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull @.str.45, ptr %2, i32 noundef %i.ah, i32 noundef %i.ai)
  br label %_ZN2v88internal2IC7TraceICEPKcNS0_12DirectHandleINS0_6ObjectEEE.exit

bb.j:                                             ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.d, %bb.c
  %i.aj = load i64, ptr %2, align 8               ; 2 uses
  %i.ak = and i64 %i.aj, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.k, label %_ZN2v88internal12_GLOBAL__N_112GetStoreModeENS0_12DirectHandleINS0_8JSObjectEEEm.exit

bb.k:                                             ; preds = %bb.j
  %i.am = lshr i64 %i.aj, 32                      ; 3 uses
  %i.an = tail call fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_119IsOutOfBoundsAccessENS0_12DirectHandleINS0_6ObjectEEEm(ptr nonnull readonly %1, i64 noundef %i.am) ; 2 uses
  %i.ao = load i64, ptr %1, align 8               ; 3 uses
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  %i.as = add i64 %i.ar, 11
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load atomic volatile i16, ptr %i.at monotonic, align 2
  %i.av = icmp eq i16 %i.au, 2119
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.aw = icmp ne i64 %i.am, 4294967295
  %i.ax = and i1 %i.aw, %i.av
  %or.cond3.i = and i1 %i.an, %i.ax
  br i1 %or.cond3.i, label %bb.l, label %.critedge.i

bb.l:                                             ; preds = %bb.k
  %i.ay = trunc nuw i64 %i.am to i32
  store i64 %i.ao, ptr %6, align 8
  %i.az = call noundef zeroext i1 @_ZN2v88internal8JSObject26WouldConvertToSlowElementsEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.ay) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %i.az, label %._crit_edge.i, label %_ZN2v88internal12_GLOBAL__N_112GetStoreModeENS0_12DirectHandleINS0_8JSObjectEEEm.exit

._crit_edge.i:                                    ; preds = %bb.l
  %.pre.i27 = load i64, ptr %1, align 8           ; 2 uses
  %.pre48.i = add i64 %.pre.i27, -1
  %.pre49.i = inttoptr i64 %.pre48.i to ptr
  br label %bb.m

.critedge.i:                                      ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %._crit_edge.i
  %.pre-phi50.i = phi ptr [ %.pre49.i, %._crit_edge.i ], [ %i.aq, %.critedge.i ]
  %i.ba = phi i64 [ %.pre.i27, %._crit_edge.i ], [ %i.ao, %.critedge.i ]
  %i.bb = load atomic volatile i64, ptr %.pre-phi50.i monotonic, align 8
  %i.bc = add i64 %i.bb, 14
  %i.bd = inttoptr i64 %i.bc to ptr
end_hunk_1
begin_hunk_2_@_ZN2v88internal25PropertyCallbackArguments16CallIndexedQueryENS0_12DirectHandleINS0_15InterceptorInfoEEEj:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.m = load atomic i8, ptr %i.l seq_cst, align 1, !noalias !88
  %i.n = and i8 %i.m, 2
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 59496
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef zeroext i1 @_ZN2v88internal5Debug36PerformSideEffectCheckForInterceptorENS0_12DirectHandleINS0_15InterceptorInfoEEE(ptr noundef nonnull align 8 dereferenceable(256) %i.p, ptr nonnull %1) #22
  br i1 %i.q, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store i64 %i.j, ptr %3, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.e, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  %i.u = load ptr, ptr %i.t, align 8
  store ptr %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %i.c, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 496 ; 2 uses
  %i.y = load i16, ptr %i.x, align 8
  store i16 %i.y, ptr %i.w, align 8
  store i16 6, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 5, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 58656
  %i.ac = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3360 ; 2 uses
  %i.ae = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1779), align 1, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %_ZN2v88internal8Counters7executeEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 3384 ; 3 uses
  %i.ah = load atomic ptr, ptr %i.ag acquire, align 8
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.e, label %_ZN2v88internal8Counters7executeEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 3400 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #22
  %i.ak = load atomic ptr, ptr %i.ag monotonic, align 8
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.am = tail call noundef ptr @_ZNK2v88internal9Histogram15CreateHistogramEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ad) #22
  store atomic ptr %i.am, ptr %i.ag release, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #22
  br label %_ZN2v88internal8Counters7executeEv.exit.i

_ZN2v88internal8Counters7executeEv.exit.i:        ; preds = %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i.i.i, %bb.d, %bb.c
  store ptr %i.ad, ptr %i.aa, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 3416 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  store ptr null, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 4 uses
  store ptr %i.ao, ptr %i.ap, align 8
  %.not.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i, label %_ZN2v88internal21ExternalCallbackScopeC2EPNS0_7IsolateEmNS_16ExceptionContextEPKv.exit, label %_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i

_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i: ; preds = %_ZN2v88internal8Counters7executeEv.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 3384
  %i.ar = load atomic ptr, ptr %i.aq seq_cst, align 8
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZN2v88internal21ExternalCallbackScopeC2EPNS0_7IsolateEmNS_16ExceptionContextEPKv.exit, label %bb.g

bb.g:                                             ; preds = %_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i
  %i.as = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.at = tail call i64 @_ZN2v84base9TimeTicks3NowEv() #22
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.as, align 8
  %i.au = sub nsw i64 %i.at, %.sroa.0.0.copyload.i.i.i.i.i.i
  store i64 %i.au, ptr %i.as, align 8
  br label %_ZN2v88internal21ExternalCallbackScopeC2EPNS0_7IsolateEmNS_16ExceptionContextEPKv.exit

_ZN2v88internal21ExternalCallbackScopeC2EPNS0_7IsolateEmNS_16ExceptionContextEPKv.exit: ; preds = %_ZN2v88internal8Counters7executeEv.exit.i, %_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i, %bb.g
  %i.av = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 488
  store ptr %3, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 352
  store i64 0, ptr %i.ax, align 8
  %i.ay = call noundef zeroext i8 %i.k(i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #22
  %i.az = icmp eq i8 %i.ay, 0
  %spec.select = select i1 %i.az, ptr null, ptr %i.f
  %i.ba = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.bb = load ptr, ptr %i.s, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 488
  store ptr %i.bb, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 352
  store i64 0, ptr %i.bd, align 8
  %i.be = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.bf = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  store ptr %i.bf, ptr %i.bg, align 8
  %.not.i.i.i17 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i17, label %_ZN2v88internal21ExternalCallbackScopeD2Ev.exit, label %_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i18

_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i18: ; preds = %_ZN2v88internal21ExternalCallbackScopeC2EPNS0_7IsolateEmNS_16ExceptionContextEPKv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bi = load atomic ptr, ptr %i.bh seq_cst, align 8
  %.not.i.i19 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i19, label %_ZN2v88internal21ExternalCallbackScopeD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i18
  %i.bj = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.bk = call i64 @_ZN2v84base9TimeTicks3NowEv() #22
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.bj, align 8
  %i.bl = call noundef i64 @_ZN2v84base4bits20SignedSaturatedSub64Ell(i64 noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %i.bk) #22
  %i.bm = sub nsw i64 0, %i.bl
  store i64 %i.bm, ptr %i.bj, align 8
  br label %_ZN2v88internal21ExternalCallbackScopeD2Ev.exit

_ZN2v88internal21ExternalCallbackScopeD2Ev.exit:  ; preds = %_ZN2v88internal21ExternalCallbackScopeC2EPNS0_7IsolateEmNS_16ExceptionContextEPKv.exit, %_ZNK2v88internal30PauseNestedTimedHistogramScope9isEnabledEv.exit.i.i18, %bb.h
  %i.bn = load ptr, ptr %i.v, align 8
  %i.bo = load i16, ptr %i.w, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 496
  store i16 %i.bo, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZN2v88internal21ExternalCallbackScopeD2Ev.exit
  %.sroa.027.1 = phi ptr [ %spec.select, %_ZN2v88internal21ExternalCallbackScopeD2Ev.exit ], [ null, %bb.b ]
  ret ptr %.sroa.027.1
}

declare noundef zeroext i1 @_ZN2v88internal6Object7ToInt32ENS0_6TaggedIS1_EEPi(i64, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @"_ZNSt17_Function_handlerIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEZNS1_12KeyedStoreIC18UpdateStoreElementES6_NS1_20KeyedAccessStoreModeES6_E3$_0E9_M_invokeERKSt9_Any_dataOS6_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8
  %.val2 = load ptr, ptr %1, align 8
  %i.a = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.a, align 8
  %i.b = tail call ptr @_ZN2v88internal3Map9TryUpdateEPNS0_7IsolateENS0_6HandleIS1_EE(ptr noundef %.val.val, ptr %.val2) #22
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFN2v88internal11MaybeHandleINS1_3MapEEENS1_6HandleIS3_EEEZNS1_12KeyedStoreIC18UpdateStoreElementES6_NS1_20KeyedAccessStoreModeES6_E3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal12KeyedStoreIC18UpdateStoreElementENS2_6HandleINS2_3MapEEENS2_20KeyedAccessStoreModeES6_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal12KeyedStoreIC18UpdateStoreElementENS2_6HandleINS2_3MapEEENS2_20KeyedAccessStoreModeES6_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal12KeyedStoreIC18UpdateStoreElementENS2_6HandleINS2_3MapEEENS2_20KeyedAccessStoreModeES6_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8
  br label %"_ZNSt14_Function_base13_Base_managerIZN2v88internal12KeyedStoreIC18UpdateStoreElementENS2_6HandleINS2_3MapEEENS2_20KeyedAccessStoreModeES6_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2v88internal12KeyedStoreIC18UpdateStoreElementENS2_6HandleINS2_3MapEEENS2_20KeyedAccessStoreModeES6_E3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare ptr @_ZN2v88internal3Map9TryUpdateEPNS0_7IsolateENS0_6HandleIS1_EE(ptr noundef, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { noreturn }
attributes #26 = { cold nounwind }

!llvm.module.flags = !{!2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !11}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", i32 2146410443, i32 1073205}
!13 = !{ptr @_ZN2v88internal2ICD2Ev}
!14 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!15 = !{i64 8}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, i1 false, !"_ZNK2v88internal15MapsAndHandlers8IteratordeEv"}
!22 = distinct !{!22, !21, !"_ZNK2v88internal15MapsAndHandlers8IteratordeEv: argument 0"}
!23 = distinct !{!23, i1 false, !"_ZNK2v88internal15MapsAndHandlersixEm"}
!24 = distinct !{!24, !23, !"_ZNK2v88internal15MapsAndHandlersixEm: argument 0"}
!25 = !{!24, !22}
!26 = distinct !{!26, !11}
!27 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, i1 false, !"_ZSt19__relocate_object_aIN2v88internal17MaybeObjectHandleES2_SaIS2_EEvPT_PT0_RT1_"}
!31 = distinct !{!31, !30, !"_ZSt19__relocate_object_aIN2v88internal17MaybeObjectHandleES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!32 = distinct !{!32, !30, !"_ZSt19__relocate_object_aIN2v88internal17MaybeObjectHandleES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, i1 false, !"_ZSt19__relocate_object_aIN2v88internal17MaybeObjectHandleES2_SaIS2_EEvPT_PT0_RT1_"}
!35 = distinct !{!35, !34, !"_ZSt19__relocate_object_aIN2v88internal17MaybeObjectHandleES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!36 = distinct !{!36, !34, !"_ZSt19__relocate_object_aIN2v88internal17MaybeObjectHandleES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!37 = !{!32, !31}
!38 = !{!36, !35}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, i1 false, !"_ZNK2v88internal15MapsAndHandlersixEm"}
!41 = distinct !{!41, !40, !"_ZNK2v88internal15MapsAndHandlersixEm: argument 0"}
!42 = !{!41}
!43 = distinct !{!43, i1 false, !"_ZSt19__relocate_object_aIN2v88internal21DirectHandleUncheckedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN2v88internal21DirectHandleUncheckedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!45 = distinct !{!45, !43, !"_ZSt19__relocate_object_aIN2v88internal21DirectHandleUncheckedINS1_3MapEEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, i1 false, !"_ZNK2v88internal15MapsAndHandlersixEm"}
!48 = distinct !{!48, !47, !"_ZNK2v88internal15MapsAndHandlersixEm: argument 0"}
!49 = distinct !{!49, !11}
!50 = !{!44}
!51 = !{!45}
!52 = !{!48}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!56 = !{!"branch_weights", !"expected", i32 4345034, i32 2143138614}
!57 = distinct !{!57, !11}
!58 = !{!"branch_weights", !"expected", i32 20385900, i32 2127097748}
!59 = distinct !{!59, !11}
!60 = distinct !{null, null, null, null}
!61 = distinct !{null, null, null}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!65 = distinct !{!65, !64, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!66 = distinct !{!66, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!67 = distinct !{!67, !66, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!68 = !{!67, !65}
!69 = distinct !{!69, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!70 = distinct !{!70, !69, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!71 = distinct !{!71, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!72 = distinct !{!72, !71, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!73 = !{!72, !70}
!74 = distinct !{!74, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!75 = distinct !{!75, !74, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!76 = distinct !{!76, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!77 = distinct !{!77, !76, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!78 = !{!77, !75}
!79 = distinct !{!79, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!80 = distinct !{!80, !79, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!81 = distinct !{!81, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!82 = distinct !{!82, !81, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!83 = !{!82, !80}
!84 = distinct !{!84, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_"}
!85 = distinct !{!85, !84, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanES3_: argument 0"}
!86 = distinct !{!86, i1 false, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_"}
!87 = distinct !{!87, !86, !"_ZNK2v84base5FlagsINS_8internal24IsolateExecutionModeFlagEhSt6atomicIhEEanERKS6_: argument 0"}
!88 = !{!87, !85}
end_hunk_2
