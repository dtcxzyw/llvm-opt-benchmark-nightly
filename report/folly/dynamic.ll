Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/dynamic?download=true
inline.NumInlined: 2778
inline.NumDeleted: 1117
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN5follyeqERKNS_7dynamicES2_:bb.a

bb.i:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !108
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !108
  %.not.unshifted.i = xor i64 %i.aw, %i.au
  %.not.i = icmp ult i64 %.not.unshifted.i, 256
  br i1 %.not.i, label %bb.j, label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !110 ; 3 uses
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %.not1421.i = icmp eq i64 %i.az, 0
  br i1 %.not1421.i, label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %i.ba = shl i64 %i.ay, 1
  %i.bb = and i64 %i.ba, 14
  %i.bc = lshr i64 %i.ay, 3
  %i.bd = and i64 %i.bc, 1
  %i.be = or disjoint i64 %i.bb, %i.bd
  %i.bf = inttoptr i64 %i.az to ptr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i, %.lr.ph.preheader.i
  %.sroa.011.023.i = phi ptr [ %.sroa.011.1.i, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i ], [ %i.bf, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.8.022.i = phi i64 [ %.sroa.8.3.i, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i ], [ %i.be, %.lr.ph.preheader.i ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.011.023.i, align 8, !tbaa !112
  %i.bh = tail call noundef zeroext i1 @_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE18containsEqualValueERKSt4pairIKS4_S4_E(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %i.bg), !inline_history !267 ; 3 uses
  br i1 %i.bh, label %bb.k, label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.k:                                             ; preds = %.lr.ph.i
  %i.bi = getelementptr inbounds i8, ptr %.sroa.011.023.i, i64 -16
  %.neg.i.i.i.i = mul nsw i64 %.sroa.8.022.i, -8
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %.neg.i.i.i.i ; 2 uses
  %.not19.i5.i.i = icmp eq i64 %.sroa.8.022.i, 0
  br i1 %.not19.i5.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

.critedge.i.i.i.preheader:                        ; preds = %bb.l, %bb.k
  br label %.critedge.i.i.i

bb.l:                                             ; preds = %thread-pre-split.i.i
  %.not19.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i.i.i, label %.critedge.i.i.i.preheader, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.k, %bb.l
  %i.bk = phi i64 [ %i.bm, %bb.l ], [ %.sroa.8.022.i, %bb.k ]
  %i.bl = phi ptr [ %i.bn, %bb.l ], [ %.sroa.011.023.i, %bb.k ]
  %i.bm = add nsw i64 %i.bk, -1                   ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !44
  %.not.i.i41 = icmp eq i8 %i.bp, 0
  br i1 %.not.i.i41, label %bb.l, label %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i, !prof !69, !llvm.loop !1

.critedge.i.i.i:                                  ; preds = %.critedge.i.i.i.preheader, %bb.m
  %.017.i.i.i = phi ptr [ %i.bt, %bb.m ], [ %i.bj, %.critedge.i.i.i.preheader ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.017.i.i.i, i64 14
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !44
  %i.bs = and i8 %i.br, 15
  %.not2.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not2.i.i, label %bb.m, label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, !prof !70

bb.m:                                             ; preds = %.critedge.i.i.i
  %i.bt = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -128 ; 4 uses
  %i.bu = load <16 x i8>, ptr %i.bt, align 16, !tbaa !44
  %i.bv = icmp eq <16 x i8> %i.bu, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = and i16 %i.bw, 16383                    ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %.017.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.by, i32 0, i32 3, i32 1)
  %.not3.i.i = icmp eq i16 %i.bx, 16383
  br i1 %.not3.i.i, label %.critedge.i.i.i, label %bb.n, !prof !69, !llvm.loop !2

bb.n:                                             ; preds = %bb.m
  %i.bz = xor i16 %i.bx, 16383
  %i.ca = zext nneg i16 %i.bz to i32
  %i.cb = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ca, i1 true)
  %i.cc = xor i32 %i.cb, 31
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = icmp ne ptr %i.bt, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = shl nuw nsw i64 %i.cd, 3
  %i.cg = getelementptr i8, ptr %i.bt, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  br label %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i

_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i: ; preds = %thread-pre-split.i.i, %bb.n
  %.sroa.8.3.i = phi i64 [ %i.cd, %bb.n ], [ %i.bm, %thread-pre-split.i.i ]
  %.sroa.011.1.i = phi ptr [ %i.ch, %bb.n ], [ %i.bn, %thread-pre-split.i.i ] ; 2 uses
  %.not14.i = icmp eq ptr %.sroa.011.1.i, null
  br i1 %.not14.i, label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %.lr.ph.i

bb.o:                                             ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !43 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43
  %i.co = icmp eq i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.p, label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.p:                                             ; preds = %bb.o
  %i.cp = icmp eq i64 %i.cl, 0
  br i1 %i.cp, label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !46
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !46
  %bcmp.i = tail call i32 @bcmp(ptr %i.cr, ptr %i.cq, i64 %i.cl)
  %i.cs = icmp eq i32 %bcmp.i, 0
  br label %_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit

bb.r:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @.str.38, i32 noundef 130)
  %i.ct = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef nonnull @.str.39)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %2) #33
  unreachable

_ZSteqIN5folly7dynamicESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit: ; preds = %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i, %.lr.ph.i, %.critedge.i.i.i, %.lr.ph, %bb.j, %bb.i, %.preheader, %bb.q, %bb.p, %bb.o, %bb.e, %bb.d, %bb.b, %bb.h, %bb.g, %bb.f, %bb.c
  %.0 = phi i1 [ %i.k, %bb.c ], [ false, %bb.o ], [ false, %bb.b ], [ true, %bb.d ], [ %i.ah, %bb.f ], [ %i.am, %bb.g ], [ %i.ar, %bb.h ], [ true, %.critedge.i.i.i ], [ true, %bb.p ], [ false, %bb.e ], [ %i.cs, %bb.q ], [ true, %.preheader ], [ %i.aa, %.lr.ph ], [ false, %bb.i ], [ true, %bb.j ], [ %i.bh, %.lr.ph.i ], [ %i.bh, %_ZN5folly3f146detail21NodeContainerIteratorIPKSt4pairIKNS_7dynamicES4_EEppEv.exit.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE18containsEqualValueERKSt4pairIKS4_S4_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #22 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.b = lshr i64 %i.a, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 1) ; 2 uses
  %i.c = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.d = insertelement <16 x i8> poison, i8 %i.c, i64 0
  %i.e = shufflevector <16 x i8> %i.d, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.f = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.g = or disjoint i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !108
  %i.j = and i64 %i.i, 255
  %i.k = shl nuw i64 1, %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %.024.i34 = phi i64 [ %i.k, %bb.a ], [ %i.ao, %bb.d ]
  %.025.i33 = phi i64 [ %i.a, %bb.a ], [ %i.an, %bb.d ] ; 2 uses
  %i.l = load i64, ptr %i.h, align 8, !tbaa !108
  %i.m = and i64 %i.l, 255
  %notmask.i = shl nsw i64 -1, %i.m
  %i.n = xor i64 %notmask.i, -1
  %i.o = and i64 %.025.i33, %i.n
  %i.p = load ptr, ptr %0, align 8, !tbaa !116
  %i.q = shl nuw nsw i64 %i.o, 7
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q ; 5 uses
  %i.s = getelementptr i8, ptr %i.r, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = load <16 x i8>, ptr %i.r, align 16       ; 2 uses
  %i.u = icmp eq <16 x i8> %i.t, %i.e
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = and i32 %i.w, 16383
  %.not = icmp eq i32 %i.x, 0
  %i.y = extractelement <16 x i8> %i.t, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.z = icmp ne ptr %i.r, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.z)
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.06.0 = phi i32 [ %i.aj, %.critedge.i ], [ %i.w, %.preheader ] ; 4 uses
  %i.aa = icmp ne i32 %.sroa.06.0, 0
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.06.0, i1 true)
  %i.ac = shl nuw nsw i32 %i.ab, 3
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr i8, ptr %i.r, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !112
  %i.ah = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ag), !inline_history !268
  br i1 %i.ah, label %bb.e, label %.critedge.i, !prof !70

.critedge.i:                                      ; preds = %bb.c
  %i.ai = add nuw nsw i32 %.sroa.06.0, 65535
  %i.aj = and i32 %i.ai, %.sroa.06.0              ; 2 uses
  %i.ak = and i32 %i.aj, 16382
  %.not30 = icmp eq i32 %i.ak, 0
  br i1 %.not30, label %.loopexit.loopexit, label %bb.c, !llvm.loop !269

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !119
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %i.al = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.y, %bb.b ]
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE12findMatchingIS4_ZNKS1_11F14BasicMapIS8_E18containsEqualValueERKSt4pairIKS4_S4_EEUlRT_E_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSF_EEEERKSI_OT0_.exit.thread, label %bb.d, !prof !70

bb.d:                                             ; preds = %.loopexit
  %i.an = add i64 %i.g, %.025.i33
  %i.ao = add i64 %.024.i34, -1                   ; 2 uses
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE12findMatchingIS4_ZNKS1_11F14BasicMapIS8_E18containsEqualValueERKSt4pairIKS4_S4_EEUlRT_E_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSF_EEEERKSI_OT0_.exit.thread, label %bb.b, !llvm.loop !270

bb.e:                                             ; preds = %bb.c
  %i.ap = getelementptr i8, ptr %i.ae, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !112
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %i.aq, ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE12findMatchingIS4_ZNKS1_11F14BasicMapIS8_E18containsEqualValueERKSt4pairIKS4_S4_EEUlRT_E_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSF_EEEERKSI_OT0_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE12findMatchingIS4_ZNKS1_11F14BasicMapIS8_E18containsEqualValueERKSt4pairIKS4_S4_EEUlRT_E_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSF_EEEERKSI_OT0_.exit.thread: ; preds = %.loopexit, %bb.d, %bb.e
  %i.au = phi i1 [ %i.at, %bb.e ], [ false, %bb.d ], [ false, %.loopexit ]
  ret i1 %i.au
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5folly7dynamic4hashEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !31
  switch i32 %i.c, label %bb.h [
    i32 0, label %"_ZSt10accumulateIN5folly7dynamic19const_item_iteratorEmZNKS1_4hashEvE3$_0ET0_T_S5_S4_T1_.exit"
    i32 5, label %_ZNK5folly7dynamic5itemsEv.exit7
    i32 1, label %_ZNK5folly7dynamic3endEv.exit
    i32 4, label %_ZNKR5folly7dynamic6getIntEv.exit
    i32 3, label %_ZNKR5folly7dynamic9getDoubleEv.exit
    i32 2, label %_ZNKR5folly7dynamic7getBoolEv.exit
    i32 6, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  ]

_ZNK5folly7dynamic5itemsEv.exit7:                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !110  ; 3 uses
  %i.f = and i64 %i.e, -8                         ; 2 uses
  %.not46 = icmp eq i64 %i.f, 0
  br i1 %.not46, label %"_ZSt10accumulateIN5folly7dynamic19const_item_iteratorEmZNKS1_4hashEvE3$_0ET0_T_S5_S4_T1_.exit", label %.lr.ph50.preheader

.lr.ph50.preheader:                               ; preds = %_ZNK5folly7dynamic5itemsEv.exit7
  %i.g = shl i64 %i.e, 1
  %i.h = and i64 %i.g, 14
  %i.i = lshr i64 %i.e, 3
  %i.j = and i64 %i.i, 1
  %i.k = or disjoint i64 %i.h, %i.j
  %i.l = inttoptr i64 %i.f to ptr
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit
  %.0.i49 = phi i64 [ %i.z, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ 728775, %.lr.ph50.preheader ]
  %.sroa.8.048 = phi i64 [ %.sroa.8.3, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %i.k, %.lr.ph50.preheader ] ; 3 uses
  %.sroa.026.047 = phi ptr [ %.sroa.026.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %i.l, %.lr.ph50.preheader ] ; 3 uses
  %i.m = load ptr, ptr %.sroa.026.047, align 8, !tbaa !112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = tail call noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(80) %i.m), !inline_history !271 ; 2 uses
  %i.p = tail call noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %i.n), !inline_history !272
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, -7070675565921424023       ; 2 uses
  %i.s = lshr i64 %i.r, 47
  %i.t = xor i64 %i.o, %i.s
  %i.u = xor i64 %i.t, %i.r
  %i.v = mul i64 %i.u, -7070675565921424023       ; 2 uses
  %i.w = lshr i64 %i.v, 47
  %i.x = xor i64 %i.w, %i.v
  %i.y = mul i64 %i.x, -7070675565921424023
  %i.z = add i64 %i.y, %.0.i49                    ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.026.047, i64 -16
  %.neg.i.i.i.i.i = mul nsw i64 %.sroa.8.048, -8
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %.neg.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i = icmp eq i64 %.sroa.8.048, 0
  br i1 %.not19.i5.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

.critedge.i.i.i.i.preheader:                      ; preds = %bb.b, %.lr.ph50
  br label %.critedge.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not19.i.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.lr.ph50, %bb.b
  %i.ac = phi i64 [ %i.ae, %bb.b ], [ %.sroa.8.048, %.lr.ph50 ]
  %i.ad = phi ptr [ %i.af, %bb.b ], [ %.sroa.026.047, %.lr.ph50 ]
  %i.ae = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !44
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.b, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !69, !llvm.loop !1

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %bb.c
  %.017.i.i.i.i = phi ptr [ %i.al, %bb.c ], [ %i.ab, %.critedge.i.i.i.i.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 14
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !44
  %i.ak = and i8 %i.aj, 15
  %.not2.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not2.i.i.i, label %bb.c, label %"_ZSt10accumulateIN5folly7dynamic19const_item_iteratorEmZNKS1_4hashEvE3$_0ET0_T_S5_S4_T1_.exit", !prof !70

bb.c:                                             ; preds = %.critedge.i.i.i.i
  %i.al = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -128 ; 4 uses
  %i.am = load <16 x i8>, ptr %i.al, align 16, !tbaa !44
  %i.an = icmp eq <16 x i8> %i.am, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16
  %i.ap = and i16 %i.ao, 16383                    ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.aq, i32 0, i32 3, i32 1)
  %.not3.i.i.i = icmp eq i16 %i.ap, 16383
  br i1 %.not3.i.i.i, label %.critedge.i.i.i.i, label %bb.d, !prof !69, !llvm.loop !2

bb.d:                                             ; preds = %bb.c
  %i.ar = xor i16 %i.ap, 16383
  %i.as = zext nneg i16 %i.ar to i32
  %i.at = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.as, i1 true)
  %i.au = xor i32 %i.at, 31
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = icmp ne ptr %i.al, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = shl nuw nsw i64 %i.av, 3
  %i.ay = getelementptr i8, ptr %i.al, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit: ; preds = %thread-pre-split.i.i.i, %bb.d
  %.sroa.026.1 = phi ptr [ %i.az, %bb.d ], [ %i.af, %thread-pre-split.i.i.i ] ; 2 uses
  %.sroa.8.3 = phi i64 [ %i.av, %bb.d ], [ %i.ae, %thread-pre-split.i.i.i ]
  %.not = icmp eq ptr %.sroa.026.1, null
  br i1 %.not, label %"_ZSt10accumulateIN5folly7dynamic19const_item_iteratorEmZNKS1_4hashEvE3$_0ET0_T_S5_S4_T1_.exit", label %.lr.ph50, !llvm.loop !273

_ZNK5folly7dynamic3endEv.exit:                    ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !87 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !87 ; 2 uses
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %"_ZSt10accumulateIN5folly7dynamic19const_item_iteratorEmZNKS1_4hashEvE3$_0ET0_T_S5_S4_T1_.exit", label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5folly7dynamic3endEv.exit, %.lr.ph
  %.0.i1045 = phi i64 [ %i.bo, %.lr.ph ], [ 0, %_ZNK5folly7dynamic3endEv.exit ] ; 2 uses
  %.sroa.031.044 = phi ptr [ %i.bp, %.lr.ph ], [ %i.bb, %_ZNK5folly7dynamic3endEv.exit ] ; 2 uses
  %i.bf = tail call noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.031.044), !inline_history !274
  %i.bg = xor i64 %i.bf, %.0.i1045
  %i.bh = mul i64 %i.bg, -7070675565921424023     ; 2 uses
  %i.bi = lshr i64 %i.bh, 47
  %i.bj = xor i64 %.0.i1045, %i.bi
  %i.bk = xor i64 %i.bj, %i.bh
  %i.bl = mul i64 %i.bk, -7070675565921424023     ; 2 uses
  %i.bm = lshr i64 %i.bl, 47
  %i.bn = xor i64 %i.bm, %i.bl
  %i.bo = mul i64 %i.bn, -7070675565921424023     ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.031.044, i64 40 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bd
  br i1 %i.bq, label %"_ZSt10accumulateIN5folly7dynamic19const_item_iteratorEmZNKS1_4hashEvE3$_0ET0_T_S5_S4_T1_.exit", label %.lr.ph, !llvm.loop !275

_ZNKR5folly7dynamic6getIntEv.exit:                ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !71 ; 2 uses
  %i.bt = xor i64 %i.bs, -1
  %i.bu = shl i64 %i.bs, 21
  %i.bv = add i64 %i.bu, %i.bt                    ; 2 uses
  %i.bw = lshr i64 %i.bv, 24
  %i.bx = xor i64 %i.bw, %i.bv
  %i.by = mul i64 %i.bx, 265                      ; 2 uses
  %i.bz = lshr i64 %i.by, 14
  %i.ca = xor i64 %i.bz, %i.by
  %i.cb = mul i64 %i.ca, 21                       ; 2 uses
  %i.cc = lshr i64 %i.cb, 28
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, 2147483649
  br label %"_ZSt10accumulateIN5folly7dynamic19const_item_iteratorEmZNKS1_4hashEvE3$_0ET0_T_S5_S4_T1_.exit"

_ZNKR5folly7dynamic9getDoubleEv.exit:             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !90 ; 4 uses
  %i.ch = fptosi double %i.cg to i64              ; 3 uses
  %i.ci = sitofp i64 %i.ch to double
  %i.cj = fcmp oeq double %i.cg, %i.ci
  br i1 %i.cj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNKR5folly7dynamic9getDoubleEv.exit
  %i.ck = xor i64 %i.ch, -1
  %i.cl = shl i64 %i.ch, 21
  %i.cm = add i64 %i.cl, %i.ck                    ; 2 uses
  %i.cn = lshr i64 %i.cm, 24
end_hunk_0
begin_hunk_1_@_ZN5folly7dynamicaSEOS0_:bb.a
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #33
  unreachable

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.cw = load i32, ptr %1, align 8, !tbaa !31
  store i32 %i.cw, ptr %0, align 8, !tbaa !31
  br label %_ZNSt6vectorIN5folly7dynamicESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN5folly7dynamicESaIS1_EEaSEOS3_.exit: ; preds = %bb.j, %bb.f, %_ZSt8_DestroyIPN5folly7dynamicES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %bb.i, %bb.h, %bb.g, %bb.d, %bb.a
  ret ptr %0

bb.ai:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.s, %bb.r, %bb.q
  %i.cx = landingpad { ptr, i32 }
          catch ptr null
  %i.cy = extractvalue { ptr, i32 } %i.cx, 0
  call void @__clang_call_terminate(ptr %i.cy) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEDn(ptr noundef nonnull returned align 8 dereferenceable(40) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.c, align 8, !tbaa !44
  store i32 0, ptr %0, align 8, !tbaa !31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic6atImplERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %3 = alloca %"struct.folly::dynamic", align 8   ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i32 %i.a, label %bb.v [
    i32 1, label %bb.b
    i32 5, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 4
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.5, i32 noundef %i.c) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %2, align 8, !tbaa !31
  store i64 0, ptr %i.d, align 8, !tbaa !71
  %i.e = invoke noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  br i1 %i.e, label %.critedge.thread, label %bb.f

.critedge.thread:                                 ; preds = %bb.e
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %3, align 8, !tbaa !31
  store i64 %i.l, ptr %i.m, align 8, !tbaa !71
  %i.n = invoke noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %.critedge unwind label %bb.i

.critedge:                                        ; preds = %bb.f
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %i.n, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.critedge.thread, %.critedge
  call void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJPKcEEEvDpT0_(ptr noundef nonnull @.str.57) #12
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn31.pn = phi { ptr, i32 } [ %i.p, %bb.i ], [ %i.o, %bb.h ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.x

bb.k:                                             ; preds = %.critedge
  %i.q = call noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.q
  br label %bb.w

bb.l:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  %i.v = icmp ult i64 %i.u, 512
  br i1 %i.v, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.w = icmp samesign ult i64 %i.u, 256
  br i1 %i.w, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !110
  %i.z = and i64 %i.y, -8
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.ac = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
  br i1 %i.ac, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.o:                                             ; preds = %bb.l
  %i.ad = tail call noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.ae = lshr i64 %i.ad, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1) ; 2 uses
  %i.af = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  %i.ah = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !108
  %i.al = and i64 %i.ak, 255
  %i.am = shl nuw i64 1, %i.al
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.r
  %.024.i100 = phi i64 [ %i.am, %bb.o ], [ %i.bp, %bb.r ]
  %.026.i99 = phi i64 [ %i.ad, %bb.o ], [ %i.bq, %bb.r ] ; 2 uses
  %i.an = load i64, ptr %i.t, align 8, !tbaa !108
  %i.ao = and i64 %i.an, 255
  %notmask.i = shl nsw i64 -1, %i.ao
  %i.ap = xor i64 %notmask.i, -1
  %i.aq = and i64 %.026.i99, %i.ap
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.as = shl nuw nsw i64 %i.aq, 7
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as ; 5 uses
  %i.au = getelementptr i8, ptr %i.at, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = load <16 x i8>, ptr %i.at, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.aj
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = and i32 %i.ay, 16383
  %.not = icmp eq i32 %i.az, 0
  %i.ba = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.bb = icmp ne ptr %i.at, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bb)
  br label %bb.q

bb.q:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.056.0 = phi i32 [ %i.bl, %.critedge.i ], [ %i.ay, %.preheader ] ; 4 uses
  %i.bc = icmp ne i32 %.sroa.056.0, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.056.0, i1 true)
  %i.be = shl nuw nsw i32 %i.bd, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.at, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112
  %i.bj = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.bi)
  br i1 %i.bj, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82.loopexit, label %.critedge.i, !prof !70

.critedge.i:                                      ; preds = %bb.q
  %i.bk = add nuw nsw i32 %.sroa.056.0, 65535
  %i.bl = and i32 %i.bk, %.sroa.056.0             ; 2 uses
  %i.bm = and i32 %i.bl, 16382
  %.not96 = icmp eq i32 %i.bm, 0
  br i1 %.not96, label %.loopexit.loopexit, label %bb.q, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.at, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !119
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.p
  %i.bn = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.ba, %bb.p ]
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.r, !prof !70

bb.r:                                             ; preds = %.loopexit
  %i.bp = add i64 %.024.i100, -1                  ; 2 uses
  %i.bq = add i64 %i.ag, %.026.i99
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.p, !llvm.loop !13

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.r, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %1)
  invoke void @_ZN5folly7sformatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_NS_5RangeIPKcEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.58, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.58, i64 38), ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !44
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.t
  %.pn = phi { ptr, i32 } [ %i.br, %bb.t ], [ %i.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bs, %bb.u ]
  %i.by = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !44
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.x

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82.loopexit: ; preds = %bb.q
  %i.cd = getelementptr i8, ptr %i.bg, i64 16
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82: ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82.loopexit, %bb.n
  %.sroa.055.187 = phi ptr [ %i.aa, %bb.n ], [ %i.cd, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82.loopexit ]
  %i.ce = load ptr, ptr %.sroa.055.187, align 8, !tbaa !112
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.59, i32 noundef %i.a) #12
  unreachable

bb.w:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82, %bb.k
  %.026 = phi ptr [ %i.s, %bb.k ], [ %i.cf, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread82 ]
  ret ptr %.026

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %bb.j
  %.pn31.pn.pn = phi { ptr, i32 } [ %.pn31.pn, %bb.j ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ]
  resume { ptr, i32 } %.pn31.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly7sformatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES6_NS_5RangeIPKcEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %4 = alloca %"struct.folly::detail::BaseFormatterAppendToString", align 8 ; 4 uses
  %5 = alloca %"class.folly::Formatter.94", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 7 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !40
  %i.d = load ptr, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZN5folly9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEECI2NS_17BaseFormatterImplIS7_Lb0ESt16integer_sequenceImJLm0EEEJS6_EEEENS_5RangeIPKcEEOS6_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !46
  %i.k = load i64, ptr %i.e, align 8, !tbaa !44
  store i64 %i.k, ptr %i.c, align 8, !tbaa !44
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !43
  br label %_ZN5folly9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEECI2NS_17BaseFormatterImplIS7_Lb0ESt16integer_sequenceImJLm0EEEJS6_EEEENS_5RangeIPKcEEOS6_.exit

_ZN5folly9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEECI2NS_17BaseFormatterImplIS7_Lb0ESt16integer_sequenceImJLm0EEEJS6_EEEENS_5RangeIPKcEEOS6_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.l, ptr %i.n, align 8, !tbaa !43
  store ptr %i.e, ptr %3, align 8, !tbaa !46
  store i64 0, ptr %i.m, align 8, !tbaa !43
  store i8 0, ptr %i.e, align 8, !tbaa !44
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !40, !alias.scope !331
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !43, !alias.scope !331
  store i8 0, ptr %i.o, align 8, !tbaa !44, !alias.scope !331
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !331
  store ptr %0, ptr %4, align 8, !tbaa !36, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !331
  store i64 4294967295, ptr %i.a, align 8, !noalias !331
  invoke void @_ZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN5folly6detail17BaseFormatterBase13recordUsedArgERKS1_m, ptr noundef nonnull @_ZZNK5folly17BaseFormatterImplINS_9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0ESt16integer_sequenceImJLm0EEEJS7_EEclINS_6detail27BaseFormatterAppendToStringIS7_EEEEvRT_E4funsB5cxx11, ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZN5folly9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEECI2NS_17BaseFormatterImplIS7_Lb0ESt16integer_sequenceImJLm0EEEJS6_EEEENS_5RangeIPKcEEOS6_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !331 ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.o
  br i1 %i.s, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.o, align 8, !tbaa !44, !alias.scope !331
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #34
  br label %.body

bb.d:                                             ; preds = %_ZN5folly9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEECI2NS_17BaseFormatterImplIS7_Lb0ESt16integer_sequenceImJLm0EEEJS6_EEEENS_5RangeIPKcEEOS6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !331
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.c
  br i1 %i.w, label %_ZN5folly17BaseFormatterImplINS_9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0ESt16integer_sequenceImJLm0EEEJS7_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4: ; preds = %bb.d
  %i.x = load i64, ptr %i.c, align 8, !tbaa !44
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #34
  br label %_ZN5folly17BaseFormatterImplINS_9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0ESt16integer_sequenceImJLm0EEEJS7_EED2Ev.exit

_ZN5folly17BaseFormatterImplINS_9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0ESt16integer_sequenceImJLm0EEEJS7_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZN5folly17BaseFormatterImplINS_9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0ESt16integer_sequenceImJLm0EEEJS7_EED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5: ; preds = %.body
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !44
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #34
  br label %_ZN5folly17BaseFormatterImplINS_9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0ESt16integer_sequenceImJLm0EEEJS7_EED2Ev.exit7

_ZN5folly17BaseFormatterImplINS_9FormatterILb0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0ESt16integer_sequenceImJLm0EEEJS7_EED2Ev.exit7: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  resume { ptr, i32 } %i.q
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZNK5folly7dynamic6asImplINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_v:bb.a
          to label %.noexc.i11 unwind label %bb.h

.noexc.i11:                                       ; preds = %bb.g
  %i.aj = load i8, ptr %i.ac, align 8, !tbaa !88, !range !81, !noalias !350, !noundef !51
  %i.ak = zext nneg i8 %i.aj to i64
  invoke void @_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_(i64 noundef %i.ak, ptr noundef nonnull align 8 %0)
          to label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit unwind label %bb.h

bb.h:                                             ; preds = %.noexc.i11, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !350 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ad
  br i1 %i.an, label %common.resume, label %common.resume.sink.split

bb.i:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !46, !noalias !351 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !43, !noalias !351 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.as, ptr %0, align 8, !tbaa !40, !alias.scope !353
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = icmp slt i64 %i.ar, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.at, i8 0, i64 9, i1 false), !alias.scope !353
  br i1 %i.au, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #36
          to label %.noexc.i.i unwind label %bb.o

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.ar, 15
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  switch i64 %i.ar, label %bb.m [
    i64 0, label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !44, !noalias !354
  store i8 %i.av, ptr %i.as, align 8, !tbaa !44, !alias.scope !353, !noalias !355
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.m:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 1 %i.ap, i64 %i.ar, i1 false), !noalias !355
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %._crit_edge.i.i unwind label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.n
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !353, !noalias !355
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit

bb.o:                                             ; preds = %bb.n, %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !353 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.as
  br i1 %i.ay, label %common.resume, label %common.resume.sink.split

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit: ; preds = %bb.k, %bb.l, %bb.m, %._crit_edge.i.i
  %i.az = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.as, %bb.m ], [ %i.as, %bb.l ], [ %i.as, %bb.k ]
  store i64 %i.ar, ptr %i.at, align 8, !tbaa !43, !alias.scope !353, !noalias !355
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ar
  store i8 0, ptr %i.ba, align 1, !tbaa !44, !noalias !355
  br label %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit

bb.p:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.41, i32 noundef %i.a) #12
  unreachable

_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJlETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS8_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSB_EEEE5valueEiE4typeELi0EEES8_DpRKSA_.exit: ; preds = %.noexc.i11, %bb.e, %.noexc.i, %_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EENSt9enable_ifIXaasr12IsSomeStringIT0_EE5valuentsr3std7is_sameINS_5RangeIPKcEET_EE5valueESD_E4typeERKS8_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZNKR5folly7dynamic2atENS_5RangeIPKcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.folly::Range", align 8      ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr %1, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.c, align 8
  %i.d = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i.i.not = icmp eq i32 %i.d, 5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %.not.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.d) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %i.h = icmp ult i64 %i.g, 512
  br i1 %i.h, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = icmp samesign ult i64 %i.g, 256
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !110
  %i.l = and i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !112  ; 5 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !43
  %i.u = ptrtoint ptr %2 to i64
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.w, %i.t
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.f:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.x = icmp eq ptr %2, %1
  br i1 %i.x, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread51, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.f
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.r, i64 %i.w)
  %i.y = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.y, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread51, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !71
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ac = load i64, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ad = lshr i64 %i.ac, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ad, i64 1) ; 2 uses
  %i.ae = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ag = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ah = insertelement <16 x i8> poison, i8 %i.ag, i64 0
  %i.ai = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !108
  %i.ak = and i64 %i.aj, 255                      ; 2 uses
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.ak
  %i.am = xor i64 %notmask.i, -1                  ; 2 uses
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !116 ; 2 uses
  %i.ao = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.ao
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g, %bb.i
  %.024.i70.us = phi i64 [ %i.bp, %bb.i ], [ %i.al, %bb.g ]
  %.026.i69.us = phi i64 [ %i.bq, %bb.i ], [ %i.ac, %bb.g ] ; 2 uses
  %i.ap = and i64 %.026.i69.us, %i.am
  %i.aq = shl nuw nsw i64 %i.ap, 7
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 80
  call void @llvm.prefetch.p0(ptr %i.as, i32 0, i32 3, i32 1)
  %i.at = load <16 x i8>, ptr %i.ar, align 16     ; 2 uses
  %i.au = icmp eq <16 x i8> %i.at, %i.ai
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = and i32 %i.aw, 16383
  %.not.us = icmp eq i32 %i.ax, 0
  %i.ay = extractelement <16 x i8> %i.at, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.az = icmp ne ptr %i.ar, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.az)
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.023.0.us.us = phi i32 [ %i.bd, %.critedge.i.us.us ], [ %i.aw, %.preheader.us ] ; 4 uses
  %i.ba = icmp ne i32 %.sroa.023.0.us.us, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.023.0.us.us, i1 true)
  %i.bc = add nuw nsw i32 %.sroa.023.0.us.us, 65535
  %i.bd = and i32 %i.bc, %.sroa.023.0.us.us       ; 2 uses
  %i.be = shl nuw nsw i32 %i.bb, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.ar, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !31
  %i.bk = icmp eq i32 %i.bj, 6
  br i1 %i.bk, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i12.us.us, label %.critedge.i.us.us, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i12.us.us: ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !43
  %.not.i.i.i.i13.us.us = icmp eq i64 %i.ab, %i.bm
  br i1 %.not.i.i.i.i13.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread51, label %.critedge.i.us.us, !prof !140

.critedge.i.us.us:                                ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i12.us.us, %bb.h
  %i.bn = and i32 %i.bd, 16382
  %.not65.us.us = icmp eq i32 %i.bn, 0
  br i1 %.not65.us.us, label %.loopexit.split.us.us, label %bb.h, !llvm.loop !14

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.bo = icmp eq i8 %i.ay, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.i, !prof !70

bb.i:                                             ; preds = %.loopexit.split.us.us
  %i.bp = add i64 %.024.i70.us, -1                ; 2 uses
  %i.bq = add i64 %i.af, %.026.i69.us
  %.not.i.us = icmp eq i64 %i.bp, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %bb.g, %bb.k
  %.024.i70 = phi i64 [ %i.cu, %bb.k ], [ %i.al, %bb.g ]
  %.026.i69 = phi i64 [ %i.cv, %bb.k ], [ %i.ac, %bb.g ] ; 2 uses
  %i.br = and i64 %.026.i69, %i.am
  %i.bs = shl nuw nsw i64 %i.br, 7
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.bs ; 4 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 80
  call void @llvm.prefetch.p0(ptr %i.bu, i32 0, i32 3, i32 1)
  %i.bv = load <16 x i8>, ptr %i.bt, align 16     ; 2 uses
  %i.bw = icmp eq <16 x i8> %i.bv, %i.ai
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = zext i16 %i.bx to i32                   ; 2 uses
  %i.bz = and i32 %i.by, 16383
  %.not = icmp eq i32 %i.bz, 0
  %i.ca = extractelement <16 x i8> %i.bv, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.cb = icmp ne ptr %i.bt, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cb)
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.023.0 = phi i32 [ %i.cf, %.critedge.i ], [ %i.by, %.preheader ] ; 4 uses
  %i.cc = icmp ne i32 %.sroa.023.0, 0
  call void @llvm.assume(i1 %i.cc)
  %i.cd = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.023.0, i1 true)
  %i.ce = add nuw nsw i32 %.sroa.023.0, 65535
  %i.cf = and i32 %i.ce, %.sroa.023.0             ; 2 uses
  %i.cg = shl nuw nsw i32 %i.cd, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr i8, ptr %i.bt, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !112 ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !31
  %i.cm = icmp eq i32 %i.cl, 6
  br i1 %i.cm, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i12, label %.critedge.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i12:     ; preds = %bb.j
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !43
  %.not.i.i.i.i13 = icmp eq i64 %i.ab, %i.co
  br i1 %.not.i.i.i.i13, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit15, label %.critedge.i, !prof !140

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit15: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i12
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !46
  %bcmp.i.i.i.i14 = call i32 @bcmp(ptr %1, ptr %i.cq, i64 %i.ab)
  %i.cr = icmp eq i32 %bcmp.i.i.i.i14, 0
  br i1 %i.cr, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread51, label %.critedge.i, !prof !141

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i12, %bb.j, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit15
  %i.cs = and i32 %i.cf, 16382
  %.not65 = icmp eq i32 %i.cs, 0
  br i1 %.not65, label %.loopexit.split, label %bb.j, !llvm.loop !14

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.ct = icmp eq i8 %i.ca, 0
  br i1 %i.ct, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.k, !prof !70

bb.k:                                             ; preds = %.loopexit.split
  %i.cu = add i64 %.024.i70, -1                   ; 2 uses
  %i.cv = add i64 %i.af, %.026.i69
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split, !llvm.loop !15

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread: ; preds = %bb.k, %.loopexit.split, %bb.i, %.loopexit.split.us.us, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.e, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @_ZN5folly7sformatIJRNS_5RangeIPKcEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.58, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.58, i64 38), ptr noundef nonnull align 8 dereferenceable(16) %3)
  invoke void @_ZN5folly6detail16throw_exception_ISt12out_of_rangeJONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpT0_(ptr noundef nonnull align 8 dereferenceable(32) %4) #12
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread
  unreachable

bb.l:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %4, align 8, !tbaa !46    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !44
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  resume { ptr, i32 } %i.cw

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread51: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit15, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i12.us.us, %bb.f, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.dc = phi ptr [ %i.n, %bb.f ], [ %i.n, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.bi, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i12.us.us ], [ %i.ck, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit15 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  ret ptr %i.dd
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly7sformatIJRNS_5RangeIPKcEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES4_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %4 = alloca %"struct.folly::detail::BaseFormatterAppendToString", align 8 ; 4 uses
  %5 = alloca %"class.folly::Formatter.105", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  store ptr %1, ptr %5, align 8, !tbaa !34
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %3, ptr %i.b, align 8, !tbaa !94
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !40, !alias.scope !358
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !43, !alias.scope !358
  store i8 0, ptr %i.c, align 8, !tbaa !44, !alias.scope !358
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !358
  store ptr %0, ptr %4, align 8, !tbaa !36, !noalias !358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32, !noalias !358
  store i64 4294967295, ptr %i.a, align 8, !noalias !358
  invoke void @_ZN5folly6detail21baseFormatterCallImplILb0ELb0ENS0_27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT1_mPKiPFSt17integral_constantIbXT0_EERKNS0_17BaseFormatterBaseEmEPKPFvSI_RNS_9FormatArgESB_ESI_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull @_ZN5folly6detail17BaseFormatterBase13recordUsedArgERKS1_m, ptr noundef nonnull @_ZZNK5folly17BaseFormatterImplINS_9FormatterILb0EJRNS_5RangeIPKcEEEEELb0ESt16integer_sequenceImJLm0EEEJS6_EEclINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRT_E4funsB5cxx11, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %_ZNK5folly17BaseFormatterImplINS_9FormatterILb0EJRNS_5RangeIPKcEEEEELb0ESt16integer_sequenceImJLm0EEEJS6_EE3strB5cxx11Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %0, align 8, !tbaa !46, !alias.scope !358 ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.c
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.c, align 8, !tbaa !44, !alias.scope !358
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.e

_ZNK5folly17BaseFormatterImplINS_9FormatterILb0EJRNS_5RangeIPKcEEEEELb0ESt16integer_sequenceImJLm0EEEJS6_EE3strB5cxx11Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  ret void
}

declare void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly9FormatterILb0EJRNS_5RangeIPKcEEEE11doFormatArgILm0ENS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRKNS8_17BaseFormatterBaseERNS_9FormatArgERT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.folly::FormatValue.23", align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !360, !nonnull !51, !align !52
  %i.c = load <2 x ptr>, ptr %i.b, align 8, !tbaa !34
  store <2 x ptr> %i.c, ptr %3, align 16
  call void @_ZNK5folly11FormatValueINS_5RangeIPKcEEvE6formatINS_6detail27BaseFormatterAppendToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvRNS_9FormatArgERT_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(84) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZNR5folly7dynamicixENS_5RangeIPKcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"struct.std::pair.111", align 8    ; 4 uses
  %4 = alloca %"class.folly::Range", align 8      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.d, align 8
  %i.e = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.e, 5
  br i1 %.not.i.not.i, label %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.e) #12
  unreachable

_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store ptr null, ptr %i.c, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32, !noalias !373
  %i.g = ptrtoint ptr %2 to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !374
  store i64 0, ptr %i.a, align 8, !tbaa !71, !noalias !374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32, !noalias !374
  store i64 0, ptr %i.b, align 8, !tbaa !71, !noalias !374
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.i, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a), !noalias !374
  %i.j = load i64, ptr %i.b, align 8, !tbaa !71, !noalias !374 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32, !noalias !374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !374
  %i.k = lshr i64 %i.j, 56
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplINS_5RangeIPKcEEJRSE_DnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSG_IKS4_S4_EEEEEbESG_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.111") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 %i.j, i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !373
  %.sroa.04.0.copyload.i = load ptr, ptr %3, align 8, !tbaa !143, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.l = load ptr, ptr %.sroa.04.0.copyload.i, align 8, !tbaa !112
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  ret ptr %i.m
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplINS_5RangeIPKcEEJRSE_DnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSG_IKS4_S4_EEEEEbESG_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.111") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !116   ; 3 uses
  br i1 %.not, label %.thread69, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  %notmask.i = shl nsw i64 -1, %i.i
  %i.k = xor i64 %notmask.i, -1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.024.i82 = phi i64 [ %i.j, %bb.b ], [ %i.av, %bb.f ]
  %.026.i81 = phi i64 [ %2, %bb.b ], [ %i.aw, %bb.f ] ; 2 uses
  %i.m = and i64 %.026.i81, %i.k
  %i.n = shl nuw nsw i64 %i.m, 7
  %i.o = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.n ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.p, i32 0, i32 3, i32 1)
  %i.q = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.r = icmp eq <16 x i8> %i.q, %i.h
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 16383
  %.not71 = icmp eq i32 %i.u, 0
  %i.v = extractelement <16 x i8> %i.q, i64 15
  br i1 %.not71, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.w = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.w)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.043.0 = phi i32 [ %i.aa, %.critedge.i ], [ %i.t, %.preheader ] ; 4 uses
  %i.x = icmp ne i32 %.sroa.043.0, 0
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.z = add nuw nsw i32 %.sroa.043.0, 65535
  %i.aa = and i32 %i.z, %.sroa.043.0              ; 2 uses
  %i.ab = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = getelementptr i8, ptr %i.o, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !112 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !31
  %i.ah = icmp eq i32 %i.ag, 6
  br i1 %i.ah, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %.critedge.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !43 ; 2 uses
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !68  ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !67    ; 3 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %.not.i.i.i.i = icmp eq i64 %i.aq, %i.al
  br i1 %.not.i.i.i.i, label %bb.e, label %.critedge.i, !prof !140

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.ar = icmp eq ptr %i.am, %i.an
  br i1 %i.ar, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread48, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.an, ptr %i.aj, i64 %i.al)
  %i.as = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.as, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread48, label %.critedge.i, !prof !141

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.at = and i32 %i.aa, 16382
  %.not72 = icmp eq i32 %i.at, 0
  br i1 %.not72, label %.loopexit, label %bb.d, !llvm.loop !14

.loopexit:                                        ; preds = %.critedge.i, %bb.c
  %i.au = icmp eq i8 %i.v, 0
  br i1 %i.au, label %.thread69, label %bb.f, !prof !70

bb.f:                                             ; preds = %.loopexit
  %i.av = add i64 %.024.i82, -1                   ; 2 uses
  %i.aw = add i64 %i.e, %.026.i81
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %.thread69, label %bb.c, !llvm.loop !15

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread48: ; preds = %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.ax = getelementptr i8, ptr %i.ad, i64 16
  br label %bb.n

.thread69:                                        ; preds = %bb.f, %.loopexit, %bb.a
  %.pre-phi93 = phi i64 [ %i.b, %bb.a ], [ %i.i, %.loopexit ], [ %i.i, %bb.f ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !44
  %i.ba = and i8 %i.az, 15
  %i.bb = zext nneg i8 %i.ba to i64               ; 2 uses
  %i.bc = shl i64 %i.bb, %.pre-phi93              ; 2 uses
  %.not.i31 = icmp ult i64 %i.c, %i.bc
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread69
  %i.bd = shl nuw i64 1, %.pre-phi93
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.bd, i64 noundef %i.bb, i64 noundef %i.bc)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !108
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !116
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread69, %bb.g
  %.pre-phi = phi i64 [ %.pre-phi93, %.thread69 ], [ %.pre91, %bb.g ]
  %i.be = phi ptr [ %.pre, %.thread69 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i32 = shl nsw i64 -1, %.pre-phi
  %i.bf = xor i64 %notmask.i32, -1                ; 2 uses
  %i.bg = and i64 %2, %i.bf
  %i.bh = shl nuw nsw i64 %i.bg, 7                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = load <16 x i8>, ptr %i.bi, align 16, !tbaa !44
  %i.bk = icmp eq <16 x i8> %i.bj, zeroinitializer
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %i.bm = and i16 %i.bl, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bm, 0
  br i1 %.not73, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bn = shl i64 %3, 1
  %i.bo = or disjoint i64 %i.bn, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bp = phi i64 [ %i.bh, %bb.h ], [ %i.bw, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.bu, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 15 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !119 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bs, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = add i8 %i.bs, 1
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !119
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bu = add i64 %i.bo, %.029                    ; 2 uses
  %i.bv = and i64 %i.bu, %i.bf
  %i.bw = shl nuw nsw i64 %i.bv, 7                ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bw
  %i.by = load <16 x i8>, ptr %i.bx, align 16     ; 2 uses
  %i.bz = icmp eq <16 x i8> %i.by, zeroinitializer
  %i.ca = bitcast <16 x i1> %i.bz to i16
  %i.cb = and i16 %i.ca, 16383                    ; 2 uses
  %.not74 = icmp eq i16 %i.cb, 0
  br i1 %.not74, label %bb.i, label %bb.k, !llvm.loop !375

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bw ; 2 uses
  %i.cd = extractelement <16 x i8> %i.by, i64 14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 14
  %i.cf = add i8 %i.cd, 16
  store i8 %i.cf, ptr %i.ce, align 2, !tbaa !123
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.037.0.in = phi i16 [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.cb, %bb.k ]
  %.1 = phi ptr [ %i.bi, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.cc, %bb.k ] ; 3 uses
  %i.cg = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.037.0.in, i1 true)
  %i.ch = zext nneg i16 %i.cg to i64              ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.1, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !44
  %i.ck = icmp eq i8 %i.cj, 0
  br i1 %i.ck, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.50) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.cl = trunc i64 %3 to i8
  store i8 %i.cl, ptr %i.ci, align 1, !tbaa !44
  %i.cm = shl nuw nsw i64 %i.ch, 3
  %i.cn = getelementptr i8, ptr %.1, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 16     ; 3 uses
  %i.cp = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cp)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRNS_5RangeIPKcEEDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESI_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.co, i64 %i.ch, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.n

bb.n:                                             ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread48, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink110 = phi ptr [ %i.ax, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread48 ], [ %i.co, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa105.sink = phi i64 [ %i.ab, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread48 ], [ %i.ch, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit.thread48 ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink110, ptr %0, align 8, !tbaa !143
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa105.sink, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !71
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cq, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRNS_5RangeIPKcEEDnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESI_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS3_S3_EDpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRNS_5RangeIPKcEEDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESJ_ImmEDpOT_EUlvE_PFvPSA_SP_SQ_EJSV_RSP_RSQ_EvEET2_OT_OT0_DpOT1_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  %i.c = tail call ptr @__cxa_begin_catch(ptr %i.b) #32 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i unwind label %bb.c, !inline_history !16

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i: ; preds = %bb.b
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRNS_5RangeIPKcEEDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESJ_ImmEDpOT_EUlvE_PFvPSA_SP_SQ_EJSV_RSP_RSQ_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #33
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRNS_5RangeIPKcEEDnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESJ_ImmEDpOT_EUlvE_PFvPSA_SP_SQ_EJSV_RSP_RSQ_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %bb.a, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
  %i.g = and i64 %2, 255                          ; 2 uses
  %i.h = icmp samesign ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = lshr i64 %i.g, 1
end_hunk_2
begin_hunk_3_@_ZN5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE20constructValueAtItemIRNS1_8F14TableIS7_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS3_S3_EDpOT0_:bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !67     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !40
  %i.j = icmp eq ptr %i.c, null
  %i.k = icmp ne ptr %i.e, null
  %or.cond.i.i.i.i = and i1 %i.j, %i.k
  br i1 %or.cond.i.i.i.i, label %.noexc.i.i.i, label %bb.b

.noexc.i.i.i:                                     ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.40) #36
          to label %.noexc unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.h, 15
  br i1 %i.l, label %bb.c, label %._crit_edge.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = icmp slt i64 %i.h, 0
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.d

.noexc.i.i.i.i:                                   ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #36
          to label %.noexc10 unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13

.noexc10:                                         ; preds = %.noexc.i.i.i.i
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw i64 %i.h, 1                      ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !69

.noexc9.i.i.i.i:                                  ; preds = %bb.d
  invoke void @_ZSt17__throw_bad_allocv() #36
          to label %.noexc11 unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13

.noexc11:                                         ; preds = %.noexc9.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.d
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #37
          to label %.noexc12 unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13 ; 2 uses

.noexc12:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.b, align 8, !tbaa !46
  store i64 %i.h, ptr %i.i, align 8, !tbaa !44
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc12, %bb.b
  %i.q = phi ptr [ %i.p, %.noexc12 ], [ %i.i, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = load i8, ptr %i.c, align 1, !tbaa !44
  store i8 %i.r, ptr %i.q, align 1, !tbaa !44
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %i.c, i64 %i.h, i1 false)
  br label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.h
  store i8 0, ptr %i.t, align 1, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !44
  ret void

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRNS_5RangeIPKcEEDnEEEvOT_PPSt4pairIKS5_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc9.i.i.i.i, %.noexc.i.i.i.i, %.noexc.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZNKR5folly7dynamic10getDefaultENS_5RangeIPKcEERKS0_(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i.i, label %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.c) #12
  unreachable

_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.f = icmp ult i64 %i.e, 512
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.g = icmp samesign ult i64 %i.e, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !110
  %i.j = and i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, 6
  br i1 %i.n, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43
  %i.s = ptrtoint ptr %3 to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.v = icmp eq ptr %3, %2
  br i1 %i.v, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %2, ptr %i.p, i64 %i.u)
  %i.w = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.w, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.f:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = ptrtoint ptr %3 to i64
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !71
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %2, i64 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = lshr i64 %i.ab, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !108
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  %i.ak = shl nuw i64 1, %i.aj                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.al = xor i64 %notmask.i, -1                  ; 2 uses
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !116 ; 2 uses
  %i.an = icmp eq ptr %3, %2
  %.fr = freeze i1 %i.an
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f, %bb.h
  %.024.i73.us = phi i64 [ %i.bo, %bb.h ], [ %i.ak, %bb.f ]
  %.026.i72.us = phi i64 [ %i.bp, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ao = and i64 %.026.i72.us, %i.al
  %i.ap = shl nuw nsw i64 %i.ao, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1)
  %i.as = load <16 x i8>, ptr %i.aq, align 16     ; 2 uses
  %i.at = icmp eq <16 x i8> %i.as, %i.ah
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = and i32 %i.av, 16383
  %.not.us = icmp eq i32 %i.aw, 0
  %i.ax = extractelement <16 x i8> %i.as, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.ay = icmp ne ptr %i.aq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ay)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.026.0.us.us = phi i32 [ %i.bc, %.critedge.i.us.us ], [ %i.av, %.preheader.us ] ; 4 uses
  %i.az = icmp ne i32 %.sroa.026.0.us.us, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.026.0.us.us, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.026.0.us.us, 65535
  %i.bc = and i32 %i.bb, %.sroa.026.0.us.us       ; 2 uses
  %i.bd = shl nuw nsw i32 %i.ba, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !31
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us, label %.critedge.i.us.us, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us: ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !43
  %.not.i.i.i.i12.us.us = icmp eq i64 %i.aa, %i.bl
  br i1 %.not.i.i.i.i12.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %.critedge.i.us.us, !prof !140

.critedge.i.us.us:                                ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us, %bb.g
  %i.bm = and i32 %i.bc, 16382
  %.not68.us.us = icmp eq i32 %i.bm, 0
  br i1 %.not68.us.us, label %.loopexit.split.us.us, label %bb.g, !llvm.loop !14

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.bn = icmp eq i8 %i.ax, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.h, !prof !70

bb.h:                                             ; preds = %.loopexit.split.us.us
  %i.bo = add i64 %.024.i73.us, -1                ; 2 uses
  %i.bp = add i64 %i.ae, %.026.i72.us
  %.not.i.us = icmp eq i64 %i.bo, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %bb.f, %bb.j
  %.024.i73 = phi i64 [ %i.ct, %bb.j ], [ %i.ak, %bb.f ]
  %.026.i72 = phi i64 [ %i.cu, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %i.bq = and i64 %.026.i72, %i.al
  %i.br = shl nuw nsw i64 %i.bq, 7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 80
  call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bv = icmp eq <16 x i8> %i.bu, %i.ah
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = and i32 %i.bx, 16383
  %.not = icmp eq i32 %i.by, 0
  %i.bz = extractelement <16 x i8> %i.bu, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.ca = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.026.0 = phi i32 [ %i.ce, %.critedge.i ], [ %i.bx, %.preheader ] ; 4 uses
  %i.cb = icmp ne i32 %.sroa.026.0, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.026.0, i1 true)
  %i.cd = add nuw nsw i32 %.sroa.026.0, 65535
  %i.ce = and i32 %i.cd, %.sroa.026.0             ; 2 uses
  %i.cf = shl nuw nsw i32 %i.cc, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %i.bs, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !31
  %i.cl = icmp eq i32 %i.ck, 6
  br i1 %i.cl, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11, label %.critedge.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i11:     ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43
  %.not.i.i.i.i12 = icmp eq i64 %i.aa, %i.cn
  br i1 %.not.i.i.i.i12, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14, label %.critedge.i, !prof !140

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !46
  %bcmp.i.i.i.i13 = call i32 @bcmp(ptr %2, ptr %i.cp, i64 %i.aa)
  %i.cq = icmp eq i32 %bcmp.i.i.i.i13, 0
  br i1 %i.cq, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %.critedge.i, !prof !141

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11, %bb.i, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14
  %i.cr = and i32 %i.ce, 16382
  %.not68 = icmp eq i32 %i.cr, 0
  br i1 %.not68, label %.loopexit.split, label %bb.i, !llvm.loop !14

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.cs = icmp eq i8 %i.bz, 0
  br i1 %i.cs, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.j, !prof !70

bb.j:                                             ; preds = %.loopexit.split
  %i.ct = add i64 %.024.i73, -1                   ; 2 uses
  %i.cu = add i64 %i.ae, %.026.i72
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split, !llvm.loop !15

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us, %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.cv = phi ptr [ %i.l, %bb.e ], [ %i.l, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.bh, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us ], [ %i.cj, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread: ; preds = %bb.j, %.loopexit.split, %bb.h, %.loopexit.split.us.us, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.d, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.c, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54
  %i.cx = phi ptr [ %i.cw, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54 ], [ %4, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %4, %bb.c ], [ %4, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i ], [ %4, %bb.d ], [ %4, %bb.h ], [ %4, %.loopexit.split.us.us ], [ %4, %.loopexit.split ], [ %4, %bb.j ]
  call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cx)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNKR5folly7dynamic10getDefaultENS_5RangeIPKcEEOS0_(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i.i, label %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.c) #12
  unreachable

_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.f = icmp ult i64 %i.e, 512
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.g = icmp samesign ult i64 %i.e, 256
  br i1 %i.g, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !110
  %i.j = and i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, 6
  br i1 %i.n, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43
  %i.s = ptrtoint ptr %3 to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.v = icmp eq ptr %3, %2
  br i1 %i.v, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %2, ptr %i.p, i64 %i.u)
  %i.w = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.w, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.f:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = ptrtoint ptr %3 to i64
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !71
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %2, i64 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = lshr i64 %i.ab, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !108
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  %i.ak = shl nuw i64 1, %i.aj                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.al = xor i64 %notmask.i, -1                  ; 2 uses
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !116 ; 2 uses
  %i.an = icmp eq ptr %3, %2
  %.fr = freeze i1 %i.an
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f, %bb.h
  %.024.i73.us = phi i64 [ %i.bo, %bb.h ], [ %i.ak, %bb.f ]
  %.026.i72.us = phi i64 [ %i.bp, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ao = and i64 %.026.i72.us, %i.al
  %i.ap = shl nuw nsw i64 %i.ao, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1)
  %i.as = load <16 x i8>, ptr %i.aq, align 16     ; 2 uses
  %i.at = icmp eq <16 x i8> %i.as, %i.ah
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = and i32 %i.av, 16383
  %.not.us = icmp eq i32 %i.aw, 0
  %i.ax = extractelement <16 x i8> %i.as, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.ay = icmp ne ptr %i.aq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ay)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.026.0.us.us = phi i32 [ %i.bc, %.critedge.i.us.us ], [ %i.av, %.preheader.us ] ; 4 uses
  %i.az = icmp ne i32 %.sroa.026.0.us.us, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.026.0.us.us, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.026.0.us.us, 65535
  %i.bc = and i32 %i.bb, %.sroa.026.0.us.us       ; 2 uses
  %i.bd = shl nuw nsw i32 %i.ba, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !31
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us, label %.critedge.i.us.us, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us: ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !43
  %.not.i.i.i.i12.us.us = icmp eq i64 %i.aa, %i.bl
  br i1 %.not.i.i.i.i12.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %.critedge.i.us.us, !prof !140

.critedge.i.us.us:                                ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us, %bb.g
  %i.bm = and i32 %i.bc, 16382
  %.not68.us.us = icmp eq i32 %i.bm, 0
  br i1 %.not68.us.us, label %.loopexit.split.us.us, label %bb.g, !llvm.loop !14

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.bn = icmp eq i8 %i.ax, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.h, !prof !70

bb.h:                                             ; preds = %.loopexit.split.us.us
  %i.bo = add i64 %.024.i73.us, -1                ; 2 uses
  %i.bp = add i64 %i.ae, %.026.i72.us
  %.not.i.us = icmp eq i64 %i.bo, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %bb.f, %bb.j
  %.024.i73 = phi i64 [ %i.ct, %bb.j ], [ %i.ak, %bb.f ]
  %.026.i72 = phi i64 [ %i.cu, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %i.bq = and i64 %.026.i72, %i.al
  %i.br = shl nuw nsw i64 %i.bq, 7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 80
  call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bv = icmp eq <16 x i8> %i.bu, %i.ah
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = and i32 %i.bx, 16383
  %.not = icmp eq i32 %i.by, 0
  %i.bz = extractelement <16 x i8> %i.bu, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.ca = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.026.0 = phi i32 [ %i.ce, %.critedge.i ], [ %i.bx, %.preheader ] ; 4 uses
  %i.cb = icmp ne i32 %.sroa.026.0, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.026.0, i1 true)
  %i.cd = add nuw nsw i32 %.sroa.026.0, 65535
  %i.ce = and i32 %i.cd, %.sroa.026.0             ; 2 uses
  %i.cf = shl nuw nsw i32 %i.cc, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %i.bs, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !31
  %i.cl = icmp eq i32 %i.ck, 6
  br i1 %i.cl, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11, label %.critedge.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i11:     ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43
  %.not.i.i.i.i12 = icmp eq i64 %i.aa, %i.cn
  br i1 %.not.i.i.i.i12, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14, label %.critedge.i, !prof !140

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !46
  %bcmp.i.i.i.i13 = call i32 @bcmp(ptr %2, ptr %i.cp, i64 %i.aa)
  %i.cq = icmp eq i32 %bcmp.i.i.i.i13, 0
  br i1 %i.cq, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, label %.critedge.i, !prof !141

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11, %bb.i, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14
  %i.cr = and i32 %i.ce, 16382
  %.not68 = icmp eq i32 %i.cr, 0
  br i1 %.not68, label %.loopexit.split, label %bb.i, !llvm.loop !14

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.cs = icmp eq i8 %i.bz, 0
  br i1 %i.cs, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.j, !prof !70

bb.j:                                             ; preds = %.loopexit.split
  %i.ct = add i64 %.024.i73, -1                   ; 2 uses
  %i.cu = add i64 %i.ae, %.026.i72
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split, !llvm.loop !15

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread: ; preds = %bb.j, %.loopexit.split, %bb.h, %.loopexit.split.us.us, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.d, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.c
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4) #32
  br label %bb.k

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us, %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.cv = phi ptr [ %i.l, %bb.e ], [ %i.l, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.bh, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i11.us.us ], [ %i.cj, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit14 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cw)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread54, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNO5folly7dynamic10getDefaultENS_5RangeIPKcEERKS0_(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i, label %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.c) #12
  unreachable

_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.f = icmp ult i64 %i.e, 512
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit
  %i.g = icmp samesign ult i64 %i.e, 256
  br i1 %i.g, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !110
  %i.j = and i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, 6
  br i1 %i.n, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43
  %i.s = ptrtoint ptr %3 to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.v = icmp eq ptr %3, %2
  br i1 %i.v, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %2, ptr %i.p, i64 %i.u)
  %i.w = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.w, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread

bb.f:                                             ; preds = %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = ptrtoint ptr %3 to i64
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !71
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %2, i64 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = lshr i64 %i.ab, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !108
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  %i.ak = shl nuw i64 1, %i.aj                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.al = xor i64 %notmask.i, -1                  ; 2 uses
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !116 ; 2 uses
  %i.an = icmp eq ptr %3, %2
  %.fr = freeze i1 %i.an
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f, %bb.h
  %.024.i.i67.us = phi i64 [ %i.bo, %bb.h ], [ %i.ak, %bb.f ]
  %.026.i.i66.us = phi i64 [ %i.bp, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ao = and i64 %.026.i.i66.us, %i.al
  %i.ap = shl nuw nsw i64 %i.ao, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1)
  %i.as = load <16 x i8>, ptr %i.aq, align 16     ; 2 uses
  %i.at = icmp eq <16 x i8> %i.as, %i.ah
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = and i32 %i.av, 16383
  %.not.us = icmp eq i32 %i.aw, 0
  %i.ax = extractelement <16 x i8> %i.as, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.ay = icmp ne ptr %i.aq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ay)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.us.us, %.preheader.us
  %.sroa.019.0.us.us = phi i32 [ %i.bc, %.critedge.i.i.us.us ], [ %i.av, %.preheader.us ] ; 4 uses
  %i.az = icmp ne i32 %.sroa.019.0.us.us, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.us.us, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.019.0.us.us, 65535
  %i.bc = and i32 %i.bb, %.sroa.019.0.us.us       ; 2 uses
  %i.bd = shl nuw nsw i32 %i.ba, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !31
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us, label %.critedge.i.i.us.us, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us: ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !43
  %.not.i.i.i.i5.us.us = icmp eq i64 %i.aa, %i.bl
  br i1 %.not.i.i.i.i5.us.us, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %.critedge.i.i.us.us, !prof !140

.critedge.i.i.us.us:                              ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us, %bb.g
  %i.bm = and i32 %i.bc, 16382
  %.not62.us.us = icmp eq i32 %i.bm, 0
  br i1 %.not62.us.us, label %.loopexit.split.us.us, label %bb.g, !llvm.loop !14

.loopexit.split.us.us:                            ; preds = %.critedge.i.i.us.us, %.split.us
  %i.bn = icmp eq i8 %i.ax, 0
  br i1 %i.bn, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %bb.h, !prof !70

bb.h:                                             ; preds = %.loopexit.split.us.us
  %i.bo = add i64 %.024.i.i67.us, -1              ; 2 uses
  %i.bp = add i64 %i.ae, %.026.i.i66.us
  %.not.i.i.us = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.us, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %bb.f, %bb.j
  %.024.i.i67 = phi i64 [ %i.ct, %bb.j ], [ %i.ak, %bb.f ]
  %.026.i.i66 = phi i64 [ %i.cu, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %i.bq = and i64 %.026.i.i66, %i.al
  %i.br = shl nuw nsw i64 %i.bq, 7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 80
  call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bv = icmp eq <16 x i8> %i.bu, %i.ah
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = and i32 %i.bx, 16383
  %.not = icmp eq i32 %i.by, 0
  %i.bz = extractelement <16 x i8> %i.bu, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.ca = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %.critedge.i.i
  %.sroa.019.0 = phi i32 [ %i.ce, %.critedge.i.i ], [ %i.bx, %.preheader ] ; 4 uses
  %i.cb = icmp ne i32 %.sroa.019.0, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0, i1 true)
  %i.cd = add nuw nsw i32 %.sroa.019.0, 65535
  %i.ce = and i32 %i.cd, %.sroa.019.0             ; 2 uses
  %i.cf = shl nuw nsw i32 %i.cc, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %i.bs, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !31
  %i.cl = icmp eq i32 %i.ck, 6
  br i1 %i.cl, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4, label %.critedge.i.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i4:      ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43
  %.not.i.i.i.i5 = icmp eq i64 %i.aa, %i.cn
  br i1 %.not.i.i.i.i5, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7, label %.critedge.i.i, !prof !140

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !46
  %bcmp.i.i.i.i6 = call i32 @bcmp(ptr %2, ptr %i.cp, i64 %i.aa)
  %i.cq = icmp eq i32 %bcmp.i.i.i.i6, 0
  br i1 %i.cq, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %.critedge.i.i, !prof !141

.critedge.i.i:                                    ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4, %bb.i, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7
  %i.cr = and i32 %i.ce, 16382
  %.not62 = icmp eq i32 %i.cr, 0
  br i1 %.not62, label %.loopexit.split, label %bb.i, !llvm.loop !14

.loopexit.split:                                  ; preds = %.critedge.i.i, %.split
  %i.cs = icmp eq i8 %i.bz, 0
  br i1 %i.cs, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %bb.j, !prof !70

bb.j:                                             ; preds = %.loopexit.split
  %i.ct = add i64 %.024.i.i67, -1                 ; 2 uses
  %i.cu = add i64 %i.ae, %.026.i.i66
  %.not.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %.split, !llvm.loop !15

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread: ; preds = %bb.j, %.loopexit.split, %bb.h, %.loopexit.split.us.us, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.d, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.c
  call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %4)
  br label %bb.k

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us, %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.cv = phi ptr [ %i.l, %bb.e ], [ %i.l, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.bh, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us ], [ %i.cj, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cw) #32
  br label %bb.k

bb.k:                                             ; preds = %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNO5folly7dynamic10getDefaultENS_5RangeIPKcEEOS0_(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.c, 5
  br i1 %.not.i.not.i, label %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.c) #12
  unreachable

_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %i.f = icmp ult i64 %i.e, 512
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit
  %i.g = icmp samesign ult i64 %i.e, 256
  br i1 %i.g, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !110
  %i.j = and i64 %i.i, -8
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112  ; 5 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !31
  %i.n = icmp eq i32 %i.m, 6
  br i1 %i.n, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43
  %i.s = ptrtoint ptr %3 to i64
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, %i.r
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread

bb.e:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.v = icmp eq ptr %3, %2
  br i1 %i.v, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.e
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %2, ptr %i.p, i64 %i.u)
  %i.w = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.w, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread

bb.f:                                             ; preds = %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = ptrtoint ptr %3 to i64
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !71
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %2, i64 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = lshr i64 %i.ab, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !108
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  %i.ak = shl nuw i64 1, %i.aj                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.al = xor i64 %notmask.i, -1                  ; 2 uses
  %i.am = load ptr, ptr %i.x, align 8, !tbaa !116 ; 2 uses
  %i.an = icmp eq ptr %3, %2
  %.fr = freeze i1 %i.an
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.f, %bb.h
  %.024.i.i67.us = phi i64 [ %i.bo, %bb.h ], [ %i.ak, %bb.f ]
  %.026.i.i66.us = phi i64 [ %i.bp, %bb.h ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ao = and i64 %.026.i.i66.us, %i.al
  %i.ap = shl nuw nsw i64 %i.ao, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1)
  %i.as = load <16 x i8>, ptr %i.aq, align 16     ; 2 uses
  %i.at = icmp eq <16 x i8> %i.as, %i.ah
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = and i32 %i.av, 16383
  %.not.us = icmp eq i32 %i.aw, 0
  %i.ax = extractelement <16 x i8> %i.as, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.ay = icmp ne ptr %i.aq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ay)
  br label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.us.us, %.preheader.us
  %.sroa.019.0.us.us = phi i32 [ %i.bc, %.critedge.i.i.us.us ], [ %i.av, %.preheader.us ] ; 4 uses
  %i.az = icmp ne i32 %.sroa.019.0.us.us, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0.us.us, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.019.0.us.us, 65535
  %i.bc = and i32 %i.bb, %.sroa.019.0.us.us       ; 2 uses
  %i.bd = shl nuw nsw i32 %i.ba, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !31
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us, label %.critedge.i.i.us.us, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us: ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !43
  %.not.i.i.i.i5.us.us = icmp eq i64 %i.aa, %i.bl
  br i1 %.not.i.i.i.i5.us.us, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %.critedge.i.i.us.us, !prof !140

.critedge.i.i.us.us:                              ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us, %bb.g
  %i.bm = and i32 %i.bc, 16382
  %.not62.us.us = icmp eq i32 %i.bm, 0
  br i1 %.not62.us.us, label %.loopexit.split.us.us, label %bb.g, !llvm.loop !14

.loopexit.split.us.us:                            ; preds = %.critedge.i.i.us.us, %.split.us
  %i.bn = icmp eq i8 %i.ax, 0
  br i1 %i.bn, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %bb.h, !prof !70

bb.h:                                             ; preds = %.loopexit.split.us.us
  %i.bo = add i64 %.024.i.i67.us, -1              ; 2 uses
  %i.bp = add i64 %i.ae, %.026.i.i66.us
  %.not.i.i.us = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i.us, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %bb.f, %bb.j
  %.024.i.i67 = phi i64 [ %i.ct, %bb.j ], [ %i.ak, %bb.f ]
  %.026.i.i66 = phi i64 [ %i.cu, %bb.j ], [ %i.ab, %bb.f ] ; 2 uses
  %i.bq = and i64 %.026.i.i66, %i.al
  %i.br = shl nuw nsw i64 %i.bq, 7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 80
  call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bv = icmp eq <16 x i8> %i.bu, %i.ah
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = and i32 %i.bx, 16383
  %.not = icmp eq i32 %i.by, 0
  %i.bz = extractelement <16 x i8> %i.bu, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.ca = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  br label %bb.i

bb.i:                                             ; preds = %.preheader, %.critedge.i.i
  %.sroa.019.0 = phi i32 [ %i.ce, %.critedge.i.i ], [ %i.bx, %.preheader ] ; 4 uses
  %i.cb = icmp ne i32 %.sroa.019.0, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.019.0, i1 true)
  %i.cd = add nuw nsw i32 %.sroa.019.0, 65535
  %i.ce = and i32 %i.cd, %.sroa.019.0             ; 2 uses
  %i.cf = shl nuw nsw i32 %i.cc, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %i.bs, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !31
  %i.cl = icmp eq i32 %i.ck, 6
  br i1 %i.cl, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4, label %.critedge.i.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i4:      ; preds = %bb.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43
  %.not.i.i.i.i5 = icmp eq i64 %i.aa, %i.cn
  br i1 %.not.i.i.i.i5, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7, label %.critedge.i.i, !prof !140

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !46
  %bcmp.i.i.i.i6 = call i32 @bcmp(ptr %2, ptr %i.cp, i64 %i.aa)
  %i.cq = icmp eq i32 %bcmp.i.i.i.i6, 0
  br i1 %i.cq, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49, label %.critedge.i.i, !prof !141

.critedge.i.i:                                    ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4, %bb.i, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7
  %i.cr = and i32 %i.ce, 16382
  %.not62 = icmp eq i32 %i.cr, 0
  br i1 %.not62, label %.loopexit.split, label %bb.i, !llvm.loop !14

.loopexit.split:                                  ; preds = %.critedge.i.i, %.split
  %i.cs = icmp eq i8 %i.bz, 0
  br i1 %i.cs, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %bb.j, !prof !70

bb.j:                                             ; preds = %.loopexit.split
  %i.ct = add i64 %.024.i.i67, -1                 ; 2 uses
  %i.cu = add i64 %i.ae, %.026.i.i66
  %.not.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i, label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread, label %.split, !llvm.loop !15

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us, %bb.e, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.cv = phi ptr [ %i.l, %bb.e ], [ %i.l, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.bh, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i4.us.us ], [ %i.cj, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit7 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  br label %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread

_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread: ; preds = %bb.j, %.loopexit.split, %bb.h, %.loopexit.split.us.us, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.d, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.c, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49
  %i.cx = phi ptr [ %i.cw, %_ZN5folly3f146detail11F14BasicMapINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENSt9enable_ifIXgssr5folly6detail28EligibleForHeterogeneousFindIS4_S6_S7_T_EE5valueENS1_21NodeContainerIteratorIPSt4pairIKS4_S4_EEEE4typeERKSG_.exit.thread49 ], [ %4, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %4, %bb.c ], [ %4, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i ], [ %4, %bb.d ], [ %4, %bb.h ], [ %4, %.loopexit.split.us.us ], [ %4, %.loopexit.split ], [ %4, %bb.j ]
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.cx) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %3 = alloca %"struct.folly::dynamic", align 8   ; 8 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i32 %i.a, label %bb.r [
    i32 1, label %bb.b
    i32 5, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %1, align 8, !tbaa !31     ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 4
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.5, i32 noundef %i.c) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %2, align 8, !tbaa !31
  store i64 0, ptr %i.d, align 8, !tbaa !71
  %i.e = invoke noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %i.e, label %.critedge.thread, label %bb.f

.critedge.thread:                                 ; preds = %bb.e
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %3, align 8, !tbaa !31
  store i64 %i.l, ptr %i.m, align 8, !tbaa !71
  %i.n = invoke noundef zeroext i1 @_ZN5follyltERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %.critedge unwind label %bb.h

.critedge:                                        ; preds = %bb.f
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br i1 %i.n, label %bb.j, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.o, %bb.g ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #32, !inline_history !11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %.critedge
  %i.q = call noundef i64 @_ZNK5folly7dynamic6asImplIlEET_v(ptr noundef nonnull align 8 dereferenceable(40) %1)
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.q
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  %i.v = icmp ult i64 %i.u, 512
  br i1 %i.v, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.w = icmp samesign ult i64 %i.u, 256
  br i1 %i.w, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !110
  %i.z = and i64 %i.y, -8
  %i.aa = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !112
  %i.ac = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.ab)
  br i1 %i.ac, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.n:                                             ; preds = %bb.k
  %i.ad = tail call noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.ae = lshr i64 %i.ad, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1) ; 2 uses
  %i.af = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  %i.ah = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ai = insertelement <16 x i8> poison, i8 %i.ah, i64 0
  %i.aj = shufflevector <16 x i8> %i.ai, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !108
  %i.al = and i64 %i.ak, 255
  %i.am = shl nuw i64 1, %i.al
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.q
  %.024.i91 = phi i64 [ %i.am, %bb.n ], [ %i.bp, %bb.q ]
  %.026.i90 = phi i64 [ %i.ad, %bb.n ], [ %i.bq, %bb.q ] ; 2 uses
  %i.an = load i64, ptr %i.t, align 8, !tbaa !108
  %i.ao = and i64 %i.an, 255
  %notmask.i = shl nsw i64 -1, %i.ao
  %i.ap = xor i64 %notmask.i, -1
  %i.aq = and i64 %.026.i90, %i.ap
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.as = shl nuw nsw i64 %i.aq, 7
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as ; 5 uses
  %i.au = getelementptr i8, ptr %i.at, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = load <16 x i8>, ptr %i.at, align 16     ; 2 uses
  %i.aw = icmp eq <16 x i8> %i.av, %i.aj
  %i.ax = bitcast <16 x i1> %i.aw to i16
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = and i32 %i.ay, 16383
  %.not = icmp eq i32 %i.az, 0
  %i.ba = extractelement <16 x i8> %i.av, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.bb = icmp ne ptr %i.at, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bb)
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.047.0 = phi i32 [ %i.bl, %.critedge.i ], [ %i.ay, %.preheader ] ; 4 uses
  %i.bc = icmp ne i32 %.sroa.047.0, 0
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.047.0, i1 true)
  %i.be = shl nuw nsw i32 %i.bd, 3
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr i8, ptr %i.at, i64 %i.bf  ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !112
  %i.bj = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.bi)
  br i1 %i.bj, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73.loopexit, label %.critedge.i, !prof !70

.critedge.i:                                      ; preds = %bb.p
  %i.bk = add nuw nsw i32 %.sroa.047.0, 65535
  %i.bl = and i32 %i.bk, %.sroa.047.0             ; 2 uses
  %i.bm = and i32 %i.bl, 16382
  %.not87 = icmp eq i32 %i.bm, 0
  br i1 %.not87, label %.loopexit.loopexit, label %bb.p, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.at, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !119
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.o
  %i.bn = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.ba, %bb.o ]
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.q, !prof !70

bb.q:                                             ; preds = %.loopexit
  %i.bp = add i64 %.024.i91, -1                   ; 2 uses
  %i.bq = add i64 %i.ag, %.026.i90
  %.not.i = icmp eq i64 %i.bp, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.o, !llvm.loop !13

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73.loopexit: ; preds = %bb.p
  %i.br = getelementptr i8, ptr %i.bg, i64 16
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73: ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73.loopexit, %bb.m
  %.sroa.046.178 = phi ptr [ %i.aa, %bb.m ], [ %i.br, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73.loopexit ]
  %i.bs = load ptr, ptr %.sroa.046.178, align 8, !tbaa !112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.r:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.59, i32 noundef %i.a) #12
  unreachable

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread: ; preds = %.loopexit, %bb.q, %bb.m, %bb.l, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73, %.critedge.thread, %.critedge, %bb.j
  %.124 = phi ptr [ null, %.critedge.thread ], [ %i.s, %bb.j ], [ null, %.critedge ], [ %i.bt, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread73 ], [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.q ], [ null, %.loopexit ]
  ret ptr %.124
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNKR5folly7dynamic7get_ptrENS_5RangeIPKcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i.i.not = icmp eq i32 %i.c, 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br i1 %.not.i.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.c) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !108  ; 2 uses
  %i.g = icmp ult i64 %i.f, 512
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i64 %i.f, 256
  br i1 %i.h, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !110
  %i.k = and i64 %i.j, -8
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 5 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !31
  %i.o = icmp eq i32 %i.n, 6
  br i1 %i.o, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %i.t = ptrtoint ptr %2 to i64
  %i.u = ptrtoint ptr %1 to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.v, %i.s
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.f:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.w = icmp eq ptr %2, %1
  br i1 %i.w, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread56, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.f
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %i.q, i64 %i.v)
  %i.x = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.x, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread56, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.y = ptrtoint ptr %2 to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !71
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %1, i64 noundef %i.aa, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !71  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = lshr i64 %i.ab, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ac, i64 1) ; 2 uses
  %i.ad = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.ae = or disjoint i64 %i.ad, 1                ; 2 uses
  %i.af = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ag = insertelement <16 x i8> poison, i8 %i.af, i64 0
  %i.ah = shufflevector <16 x i8> %i.ag, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ai = load i64, ptr %i.e, align 8, !tbaa !108
  %i.aj = and i64 %i.ai, 255                      ; 2 uses
  %i.ak = shl nuw i64 1, %i.aj                    ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.al = xor i64 %notmask.i, -1                  ; 2 uses
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !116 ; 2 uses
  %i.an = icmp eq ptr %2, %1
  %.fr = freeze i1 %i.an
  br i1 %.fr, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.g, %bb.i
  %.024.i75.us = phi i64 [ %i.bo, %bb.i ], [ %i.ak, %bb.g ]
  %.026.i74.us = phi i64 [ %i.bp, %bb.i ], [ %i.ab, %bb.g ] ; 2 uses
  %i.ao = and i64 %.026.i74.us, %i.al
  %i.ap = shl nuw nsw i64 %i.ao, 7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 4 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  call void @llvm.prefetch.p0(ptr %i.ar, i32 0, i32 3, i32 1)
  %i.as = load <16 x i8>, ptr %i.aq, align 16     ; 2 uses
  %i.at = icmp eq <16 x i8> %i.as, %i.ah
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = zext i16 %i.au to i32                   ; 2 uses
  %i.aw = and i32 %i.av, 16383
  %.not.us = icmp eq i32 %i.aw, 0
  %i.ax = extractelement <16 x i8> %i.as, i64 15
  br i1 %.not.us, label %.loopexit.split.us.us, label %.preheader.us

.preheader.us:                                    ; preds = %.split.us
  %i.ay = icmp ne ptr %i.aq, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ay)
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i.us.us, %.preheader.us
  %.sroa.028.0.us.us = phi i32 [ %i.bc, %.critedge.i.us.us ], [ %i.av, %.preheader.us ] ; 4 uses
  %i.az = icmp ne i32 %.sroa.028.0.us.us, 0
  call void @llvm.assume(i1 %i.az)
  %i.ba = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.028.0.us.us, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.028.0.us.us, 65535
  %i.bc = and i32 %i.bb, %.sroa.028.0.us.us       ; 2 uses
  %i.bd = shl nuw nsw i32 %i.ba, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr i8, ptr %i.aq, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !112 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !31
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i13.us.us, label %.critedge.i.us.us, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i13.us.us: ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !43
  %.not.i.i.i.i14.us.us = icmp eq i64 %i.aa, %i.bl
  br i1 %.not.i.i.i.i14.us.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread56, label %.critedge.i.us.us, !prof !140

.critedge.i.us.us:                                ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i13.us.us, %bb.h
  %i.bm = and i32 %i.bc, 16382
  %.not70.us.us = icmp eq i32 %i.bm, 0
  br i1 %.not70.us.us, label %.loopexit.split.us.us, label %bb.h, !llvm.loop !14

.loopexit.split.us.us:                            ; preds = %.critedge.i.us.us, %.split.us
  %i.bn = icmp eq i8 %i.ax, 0
  br i1 %i.bn, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.i, !prof !70

bb.i:                                             ; preds = %.loopexit.split.us.us
  %i.bo = add i64 %.024.i75.us, -1                ; 2 uses
  %i.bp = add i64 %i.ae, %.026.i74.us
  %.not.i.us = icmp eq i64 %i.bo, 0
  br i1 %.not.i.us, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split.us, !llvm.loop !15

.split:                                           ; preds = %bb.g, %bb.k
  %.024.i75 = phi i64 [ %i.ct, %bb.k ], [ %i.ak, %bb.g ]
  %.026.i74 = phi i64 [ %i.cu, %bb.k ], [ %i.ab, %bb.g ] ; 2 uses
  %i.bq = and i64 %.026.i74, %i.al
  %i.br = shl nuw nsw i64 %i.bq, 7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br ; 4 uses
  %i.bt = getelementptr i8, ptr %i.bs, i64 80
  call void @llvm.prefetch.p0(ptr %i.bt, i32 0, i32 3, i32 1)
  %i.bu = load <16 x i8>, ptr %i.bs, align 16     ; 2 uses
  %i.bv = icmp eq <16 x i8> %i.bu, %i.ah
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %i.bx = zext i16 %i.bw to i32                   ; 2 uses
  %i.by = and i32 %i.bx, 16383
  %.not = icmp eq i32 %i.by, 0
  %i.bz = extractelement <16 x i8> %i.bu, i64 15
  br i1 %.not, label %.loopexit.split, label %.preheader

.preheader:                                       ; preds = %.split
  %i.ca = icmp ne ptr %i.bs, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.ca)
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.028.0 = phi i32 [ %i.ce, %.critedge.i ], [ %i.bx, %.preheader ] ; 4 uses
  %i.cb = icmp ne i32 %.sroa.028.0, 0
  call void @llvm.assume(i1 %i.cb)
  %i.cc = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.028.0, i1 true)
  %i.cd = add nuw nsw i32 %.sroa.028.0, 65535
  %i.ce = and i32 %i.cd, %.sroa.028.0             ; 2 uses
  %i.cf = shl nuw nsw i32 %i.cc, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr i8, ptr %i.bs, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !112 ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !31
  %i.cl = icmp eq i32 %i.ck, 6
  br i1 %i.cl, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i13, label %.critedge.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i13:     ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !43
  %.not.i.i.i.i14 = icmp eq i64 %i.aa, %i.cn
  br i1 %.not.i.i.i.i14, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit16, label %.critedge.i, !prof !140

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit16: ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !46
  %bcmp.i.i.i.i15 = call i32 @bcmp(ptr %1, ptr %i.cp, i64 %i.aa)
  %i.cq = icmp eq i32 %bcmp.i.i.i.i15, 0
  br i1 %i.cq, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread56, label %.critedge.i, !prof !141

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i13, %bb.j, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit16
  %i.cr = and i32 %i.ce, 16382
  %.not70 = icmp eq i32 %i.cr, 0
  br i1 %.not70, label %.loopexit.split, label %bb.j, !llvm.loop !14

.loopexit.split:                                  ; preds = %.critedge.i, %.split
  %i.cs = icmp eq i8 %i.bz, 0
  br i1 %i.cs, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.k, !prof !70

bb.k:                                             ; preds = %.loopexit.split
  %i.ct = add i64 %.024.i75, -1                   ; 2 uses
  %i.cu = add i64 %i.ae, %.026.i74
  %.not.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %.split, !llvm.loop !15

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread56: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit16, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i13.us.us, %bb.f, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.cv = phi ptr [ %i.m, %bb.f ], [ %i.m, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.bh, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i13.us.us ], [ %i.cj, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit16 ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread: ; preds = %bb.k, %.loopexit.split, %bb.i, %.loopexit.split.us.us, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.e, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.d, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread56
  %.0 = phi ptr [ %i.cw, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINS_5RangeIPKcEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread56 ], [ null, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINS_5RangeIPKcEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ null, %bb.d ], [ null, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i ], [ null, %bb.e ], [ null, %bb.i ], [ null, %.loopexit.split.us.us ], [ null, %.loopexit.split ], [ null, %bb.k ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  switch i32 %i.a, label %bb.e [
    i32 1, label %bb.b
    i32 5, label %bb.c
    i32 6, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !105
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !106
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 40
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !108
  %i.l = lshr i64 %i.k, 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.60, i32 noundef %i.a) #12
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.3 = phi i64 [ %i.n, %bb.d ], [ %i.l, %bb.c ], [ %i.i, %bb.b ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define ptr @_ZN5folly7dynamic5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_St6vectorIS0_SaIS0_EEEES8_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i.not.i = icmp eq i32 %i.a, 1
  br i1 %.not.i.not.i, label %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit6, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.3, i32 noundef %i.a) #12
  unreachable

_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit6: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !87   ; 3 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f ; 3 uses
  %i.h = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.i = sub i64 %i.h, %i.e
  %i.j = getelementptr inbounds i8, ptr %i.c, i64 %i.i ; 2 uses
  %i.k = icmp eq ptr %1, %2
  br i1 %i.k, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87   ; 3 uses
  %i.n = icmp eq ptr %2, %i.m
  br i1 %i.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.o, %i.h                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.d
  %i.r = udiv exact i64 %i.p, 40
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i.i ], [ %i.j, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN5folly7dynamicaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %.0811.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0910.i.i.i.i.i.i.i) #32 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 40
  %i.v = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.w = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !376

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !87 ; 2 uses
  %.pre12.i.i = ptrtoint ptr %.pre.i.i to i64
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, %bb.d, %bb.c
  %.pre-phi13.i.i = phi i64 [ %i.o, %bb.d ], [ %.pre12.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.h, %bb.c ]
  %i.x = phi ptr [ %i.m, %bb.d ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.y = sub i64 %.pre-phi13.i.i, %i.h
  %i.z = getelementptr inbounds i8, ptr %i.g, i64 %i.y ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i ], [ %i.z, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i ] ; 2 uses
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i3.i.i.i.i) #32, !inline_history !10
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aa, %i.x
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5folly7dynamicES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPN5folly7dynamicES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.z, ptr %i.l, align 8, !tbaa !105
  br label %_ZNSt6vectorIN5folly7dynamicESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorIN5folly7dynamicESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %_ZN5folly7dynamic3getISt6vectorIS0_SaIS0_EEEERT_v.exit6, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN5folly7dynamicESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i, %_ZSt8_DestroyIPN5folly7dynamicES1_EvT_S3_RSaIT0_E.exit.i.i.i
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7dynamic10merge_diffERKS0_S2_(ptr dead_on_unwind noalias writable sret(%"struct.folly::dynamic") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.111", align 8    ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"struct.std::pair.111", align 8    ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"struct.std::pair.111", align 8    ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %6 = alloca %"struct.std::pair.111", align 8    ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"struct.folly::dynamic", align 8   ; 10 uses
  %8 = alloca %"struct.folly::dynamic", align 8   ; 7 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !31
  %.not.i.i.i = icmp eq i32 %i.e, 5
  %i.f = load i32, ptr %2, align 8
  %.not.i.i.i66 = icmp eq i32 %i.f, 5
  %or.cond = select i1 %.not.i.i.i, i1 %.not.i.i.i66, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  store i32 5, ptr %0, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.g, align 8, !tbaa !116
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !110  ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN5folly7dynamic10merge_diffERKS0_S2_:bb.a
.noexc113:                                        ; preds = %.noexc112
  %.sroa.04.0.copyload.i.i109 = load ptr, ptr %3, align 8, !tbaa !143, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.dj = load ptr, ptr %.sroa.04.0.copyload.i.i109, align 8, !tbaa !112
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  br label %_ZNR5folly7dynamicixIRKS0_EENSt9enable_ifIXaantsr3std14is_convertibleIT_NS_5RangeIPKcEEEE5valuesr3std14is_convertibleIS5_S0_EE5valueERS0_E4typeEOS5_.exit114

_ZNR5folly7dynamicixIRKS0_EENSt9enable_ifIXaantsr3std14is_convertibleIT_NS_5RangeIPKcEEEE5valuesr3std14is_convertibleIS5_S0_EE5valueERS0_E4typeEOS5_.exit114: ; preds = %.noexc113, %bb.as
  %.0.i106 = phi ptr [ %i.dk, %.noexc113 ], [ %i.dg, %bb.as ] ; 4 uses
  %i.dl = load i32, ptr %.0.i106, align 8, !tbaa !31
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZN5folly7dynamicaSEDn.exit, label %bb.at

bb.at:                                            ; preds = %_ZNR5folly7dynamicixIRKS0_EENSt9enable_ifIXaantsr3std14is_convertibleIT_NS_5RangeIPKcEEEE5valuesr3std14is_convertibleIS5_S0_EE5valueERS0_E4typeEOS5_.exit114
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %.0.i106) #32
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i106, i64 8
  store ptr null, ptr %i.dn, align 8, !tbaa !44
  store i32 0, ptr %.0.i106, align 8, !tbaa !31
  br label %_ZN5folly7dynamicaSEDn.exit

.loopexit152:                                     ; preds = %.lr.ph208, %bb.as, %_ZN5folly7dynamic3getINS0_10ObjectImplEEERT_v.exit.i107, %.noexc112
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.au:                                            ; preds = %bb.ao
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZN5folly7dynamicaSEDn.exit:                      ; preds = %bb.at, %_ZNR5folly7dynamicixIRKS0_EENSt9enable_ifIXaantsr3std14is_convertibleIT_NS_5RangeIPKcEEEE5valuesr3std14is_convertibleIS5_S0_EE5valueERS0_E4typeEOS5_.exit114, %bb.ap
  %i.dp = getelementptr inbounds i8, ptr %.sroa.0133.0206, i64 -16
  %.neg.i.i.i.i.i115 = mul nsw i64 %.sroa.9.0205, -8
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %.neg.i.i.i.i.i115 ; 2 uses
  %.not19.i5.i.i.i116 = icmp eq i64 %.sroa.9.0205, 0
  br i1 %.not19.i5.i.i.i116, label %.critedge.i.i.i.i121.preheader, label %thread-pre-split.i.i.i117

.critedge.i.i.i.i121.preheader:                   ; preds = %bb.av, %_ZN5folly7dynamicaSEDn.exit
  br label %.critedge.i.i.i.i121

bb.av:                                            ; preds = %thread-pre-split.i.i.i117
  %.not19.i.i.i.i119 = icmp eq i64 %i.dt, 0
  br i1 %.not19.i.i.i.i119, label %.critedge.i.i.i.i121.preheader, label %thread-pre-split.i.i.i117

thread-pre-split.i.i.i117:                        ; preds = %_ZN5folly7dynamicaSEDn.exit, %bb.av
  %i.dr = phi i64 [ %i.dt, %bb.av ], [ %.sroa.9.0205, %_ZN5folly7dynamicaSEDn.exit ]
  %i.ds = phi ptr [ %i.du, %bb.av ], [ %.sroa.0133.0206, %_ZN5folly7dynamicaSEDn.exit ]
  %i.dt = add nsw i64 %i.dr, -1                   ; 4 uses
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 -8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dt
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !44
  %.not.i.i.i118 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i118, label %bb.av, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit127, !prof !69, !llvm.loop !1

.critedge.i.i.i.i121:                             ; preds = %.critedge.i.i.i.i121.preheader, %bb.aw
  %.017.i.i.i.i122 = phi ptr [ %i.ea, %bb.aw ], [ %i.dq, %.critedge.i.i.i.i121.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i122, i64 14
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !44
  %i.dz = and i8 %i.dy, 15
  %.not2.i.i.i123 = icmp eq i8 %i.dz, 0
  br i1 %.not2.i.i.i123, label %bb.aw, label %.loopexit, !prof !70

bb.aw:                                            ; preds = %.critedge.i.i.i.i121
  %i.ea = getelementptr inbounds i8, ptr %.017.i.i.i.i122, i64 -128 ; 4 uses
  %i.eb = load <16 x i8>, ptr %i.ea, align 16, !tbaa !44
  %i.ec = icmp eq <16 x i8> %i.eb, zeroinitializer
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %i.ee = and i16 %i.ed, 16383                    ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %.017.i.i.i.i122, i64 -256
  call void @llvm.prefetch.p0(ptr nonnull %i.ef, i32 0, i32 3, i32 1)
  %.not3.i.i.i126 = icmp eq i16 %i.ee, 16383
  br i1 %.not3.i.i.i126, label %.critedge.i.i.i.i121, label %bb.ax, !prof !69, !llvm.loop !2

bb.ax:                                            ; preds = %bb.aw
  %i.eg = xor i16 %i.ee, 16383
  %i.eh = zext nneg i16 %i.eg to i32
  %i.ei = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.eh, i1 true)
  %i.ej = xor i32 %i.ei, 31
  %i.ek = zext nneg i32 %i.ej to i64              ; 2 uses
  %i.el = icmp ne ptr %i.ea, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.el)
  %i.em = shl nuw nsw i64 %i.ek, 3
  %i.en = getelementptr i8, ptr %i.ea, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit127

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit127: ; preds = %thread-pre-split.i.i.i117, %bb.ax
  %.sroa.9.3 = phi i64 [ %i.ek, %bb.ax ], [ %i.dt, %thread-pre-split.i.i.i117 ]
  %.sroa.0133.1 = phi ptr [ %i.eo, %bb.ax ], [ %i.du, %thread-pre-split.i.i.i117 ] ; 2 uses
  %.not150 = icmp eq ptr %.sroa.0133.1, null
  br i1 %.not150, label %.loopexit, label %.lr.ph208

bb.ay:                                            ; preds = %.loopexit152, %.loopexit.split-lp, %.loopexit154, %.loopexit.split-lp155, %bb.au, %bb.l, %bb.v, %bb.y, %bb.ah, %bb.am
  %.pn61.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.am ], [ %i.bf, %bb.v ], [ %i.do, %bb.au ], [ %lpad.loopexit.split-lp157, %.loopexit.split-lp155 ], [ %.pn54, %bb.y ], [ %.pn52, %bb.ah ], [ %i.ag, %bb.l ], [ %lpad.loopexit156, %.loopexit154 ], [ %lpad.loopexit, %.loopexit152 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #32, !inline_history !11
  resume { ptr, i32 } %.pn61.pn.pn.pn

.loopexit:                                        ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit127, %.critedge.i.i.i.i121, %._crit_edge.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK5folly7dynamic4findIRKS0_EENSt9enable_ifIXaantsr3std14is_convertibleIT_NS_5RangeIPKcEEEE5valuesr3std14is_convertibleIS5_S0_EE5valueENS0_19const_item_iteratorEE4typeEOS5_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.a, 5
  br i1 %.not.i.not.i.i, label %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.6, i32 noundef %i.a) #12
  unreachable

_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !108  ; 2 uses
  %i.e = icmp ult i64 %i.d, 512
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.f = icmp samesign ult i64 %i.d, 256
  br i1 %i.f, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !110  ; 3 uses
  %i.i = and i64 %i.h, -8
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = shl i64 %i.h, 1
  %i.l = and i64 %i.k, 14
  %i.m = lshr i64 %i.h, 3
  %i.n = and i64 %i.m, 1
  %i.o = or disjoint i64 %i.l, %i.n
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !112
  %i.q = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.p) ; 2 uses
  %spec.select = select i1 %i.q, ptr %i.j, ptr null
  %spec.select33 = select i1 %i.q, i64 %i.o, i64 0
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

bb.e:                                             ; preds = %_ZNK5folly7dynamic3getINS0_10ObjectImplEEERKT_v.exit
  %i.r = tail call noundef i64 @_ZNK5folly7dynamic4hashEv(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.s = lshr i64 %i.r, 56
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1) ; 2 uses
  %i.t = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.u = or disjoint i64 %i.t, 1
  %i.v = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.y = load i64, ptr %i.c, align 8, !tbaa !108
  %i.z = and i64 %i.y, 255
  %i.aa = shl nuw i64 1, %i.z
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %.024.i41 = phi i64 [ %i.aa, %bb.e ], [ %i.bd, %bb.h ]
  %.026.i40 = phi i64 [ %i.r, %bb.e ], [ %i.be, %bb.h ] ; 2 uses
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !108
  %i.ac = and i64 %i.ab, 255
  %notmask.i = shl nsw i64 -1, %i.ac
  %i.ad = xor i64 %notmask.i, -1
  %i.ae = and i64 %.026.i40, %i.ad
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !116
  %i.ag = shl nuw nsw i64 %i.ae, 7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag ; 5 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.ai, i32 0, i32 3, i32 1)
  %i.aj = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.ak = icmp eq <16 x i8> %i.aj, %i.x
  %i.al = bitcast <16 x i1> %i.ak to i16
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = and i32 %i.am, 16383
  %.not = icmp eq i32 %i.an, 0
  %i.ao = extractelement <16 x i8> %i.aj, i64 15
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ap = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.ap)
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.012.0 = phi i32 [ %i.az, %.critedge.i ], [ %i.am, %.preheader ] ; 4 uses
  %i.aq = icmp ne i32 %.sroa.012.0, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.012.0, i1 true)
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = getelementptr i8, ptr %i.ah, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112
  %i.ax = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.aw)
  br i1 %i.ax, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, label %.critedge.i, !prof !70

.critedge.i:                                      ; preds = %bb.g
  %i.ay = add nuw nsw i32 %.sroa.012.0, 65535
  %i.az = and i32 %i.ay, %.sroa.012.0             ; 2 uses
  %i.ba = and i32 %i.az, 16382
  %.not34 = icmp eq i32 %i.ba, 0
  br i1 %.not34, label %.loopexit.loopexit, label %bb.g, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !119
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f
  %i.bb = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.ao, %bb.f ]
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.h, !prof !70

bb.h:                                             ; preds = %.loopexit
  %i.bd = add i64 %.024.i41, -1                   ; 2 uses
  %i.be = add i64 %i.u, %.026.i40
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit, label %bb.f, !llvm.loop !13

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit: ; preds = %bb.g
  %i.bf = getelementptr i8, ptr %i.au, i64 16
  br label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit: ; preds = %bb.h, %.loopexit, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit, %bb.d, %bb.c
  %.sroa.011.1 = phi ptr [ %spec.select, %bb.d ], [ null, %bb.c ], [ %i.bf, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ null, %.loopexit ], [ null, %bb.h ]
  %.sroa.7.1 = phi i64 [ %spec.select33, %bb.d ], [ 0, %bb.c ], [ %i.as, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findIS4_EENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.loopexit ], [ 0, %.loopexit ], [ 0, %bb.h ]
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.011.1, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.7.1, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE19tryEmplaceValueImplIS4_JRKS4_DnEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIPSD_ISB_S4_EEEEEbESD_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.111") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !108  ; 3 uses
  %.not = icmp ult i64 %i.b, 256
  br i1 %.not, label %.thread68, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl i64 %3, 1
  %i.d = or disjoint i64 %i.c, 1
  %i.e = trunc i64 %3 to i8
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.h = and i64 %i.b, 255
  %i.i = shl nuw i64 1, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.e
  %.024.i81 = phi i64 [ %i.i, %bb.b ], [ %i.al, %bb.e ]
  %.026.i80 = phi i64 [ %2, %bb.b ], [ %i.am, %bb.e ] ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !108
  %i.k = and i64 %i.j, 255
  %notmask.i = shl nsw i64 -1, %i.k
  %i.l = xor i64 %notmask.i, -1
  %i.m = and i64 %.026.i80, %i.l
  %i.n = load ptr, ptr %1, align 8, !tbaa !116
  %i.o = shl nuw nsw i64 %i.m, 7
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o ; 5 uses
  %i.q = getelementptr i8, ptr %i.p, i64 80
  tail call void @llvm.prefetch.p0(ptr %i.q, i32 0, i32 3, i32 1)
  %i.r = load <16 x i8>, ptr %i.p, align 16       ; 2 uses
  %i.s = icmp eq <16 x i8> %i.r, %i.g
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  %i.v = and i32 %i.u, 16383
  %.not70 = icmp eq i32 %i.v, 0
  %i.w = extractelement <16 x i8> %i.r, i64 15
  br i1 %.not70, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.x = icmp ne ptr %i.p, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.043.0 = phi i32 [ %i.ah, %.critedge.i ], [ %i.u, %.preheader ] ; 4 uses
  %i.y = icmp ne i32 %.sroa.043.0, 0
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.aa = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = getelementptr i8, ptr %i.p, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !112
  %i.af = tail call noundef zeroext i1 @_ZN5follyeqERKNS_7dynamicES2_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %i.ae)
  br i1 %i.af, label %bb.f, label %.critedge.i, !prof !70

.critedge.i:                                      ; preds = %bb.d
  %i.ag = add nuw nsw i32 %.sroa.043.0, 65535
  %i.ah = and i32 %i.ag, %.sroa.043.0             ; 2 uses
  %i.ai = and i32 %i.ah, 16382
  %.not71 = icmp eq i32 %i.ai, 0
  br i1 %.not71, label %.loopexit.loopexit, label %bb.d, !llvm.loop !12

.loopexit.loopexit:                               ; preds = %.critedge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !119
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %i.aj = phi i8 [ %.pre, %.loopexit.loopexit ], [ %i.w, %bb.c ]
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %.thread68.loopexit, label %bb.e, !prof !70

bb.e:                                             ; preds = %.loopexit
  %i.al = add i64 %.024.i81, -1                   ; 2 uses
  %i.am = add i64 %i.d, %.026.i80
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %.thread68.loopexit, label %bb.c, !llvm.loop !13

bb.f:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %i.ac, i64 16
  br label %bb.n

.thread68.loopexit:                               ; preds = %.loopexit, %bb.e
  %.pre88 = load i64, ptr %i.a, align 8, !tbaa !108
  br label %.thread68

.thread68:                                        ; preds = %.thread68.loopexit, %bb.a
  %i.ao = phi i64 [ %.pre88, %.thread68.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ap = lshr i64 %i.ao, 8                       ; 2 uses
  %i.aq = and i64 %i.ao, 255                      ; 3 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !116   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !44
  %i.au = and i8 %i.at, 15
  %i.av = zext nneg i8 %i.au to i64               ; 2 uses
  %i.aw = shl i64 %i.av, %i.aq                    ; 2 uses
  %.not.i31 = icmp ult i64 %i.ap, %i.aw
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit, label %bb.g

bb.g:                                             ; preds = %.thread68
  %i.ax = shl nuw i64 1, %i.aq
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.ap, i64 noundef %i.ax, i64 noundef %i.av, i64 noundef %i.aw)
  %.pre89 = load i64, ptr %i.a, align 8, !tbaa !108
  %.pre90 = load ptr, ptr %1, align 8, !tbaa !116
  %.pre91 = and i64 %.pre89, 255
  br label %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit: ; preds = %.thread68, %bb.g
  %.pre-phi = phi i64 [ %i.aq, %.thread68 ], [ %.pre91, %bb.g ]
  %i.ay = phi ptr [ %i.ar, %.thread68 ], [ %.pre90, %bb.g ] ; 4 uses
  %notmask.i32 = shl nsw i64 -1, %.pre-phi
  %i.az = xor i64 %notmask.i32, -1                ; 2 uses
  %i.ba = and i64 %2, %i.az
  %i.bb = shl nuw nsw i64 %i.ba, 7                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb ; 2 uses
  %i.bd = load <16 x i8>, ptr %i.bc, align 16, !tbaa !44
  %i.be = icmp eq <16 x i8> %i.bd, zeroinitializer
  %i.bf = bitcast <16 x i1> %i.be to i16
  %i.bg = and i16 %i.bf, 16383                    ; 2 uses
  %.not72 = icmp eq i16 %i.bg, 0
  br i1 %.not72, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %i.bh = shl i64 %3, 1
  %i.bi = or disjoint i64 %i.bh, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, %bb.h
  %i.bj = phi i64 [ %i.bb, %bb.h ], [ %i.bq, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %.029 = phi i64 [ %2, %bb.h ], [ %i.bo, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 15 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !119 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bm, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !119
  br label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit: ; preds = %bb.i, %bb.j
  %i.bo = add i64 %i.bi, %.029                    ; 2 uses
  %i.bp = and i64 %i.bo, %i.az
  %i.bq = shl nuw nsw i64 %i.bp, 7                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq
  %i.bs = load <16 x i8>, ptr %i.br, align 16     ; 2 uses
  %i.bt = icmp eq <16 x i8> %i.bs, zeroinitializer
  %i.bu = bitcast <16 x i1> %i.bt to i16
  %i.bv = and i16 %i.bu, 16383                    ; 2 uses
  %.not73 = icmp eq i16 %i.bv, 0
  br i1 %.not73, label %bb.i, label %bb.k, !llvm.loop !389

bb.k:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE25incrOutboundOverflowCountEv.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq ; 2 uses
  %i.bx = extractelement <16 x i8> %i.bs, i64 14
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  %i.bz = add i8 %i.bx, 16
  store i8 %i.bz, ptr %i.by, align 2, !tbaa !123
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit
  %.sroa.037.0.in = phi i16 [ %i.bg, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bv, %bb.k ]
  %.1 = phi ptr [ %i.bc, %_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE16reserveForInsertEm.exit ], [ %i.bw, %bb.k ] ; 3 uses
  %i.ca = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.037.0.in, i1 true)
  %i.cb = zext nneg i16 %i.ca to i64              ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.1, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !44
  %i.ce = icmp eq i8 %i.cd, 0
  br i1 %i.ce, label %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.50) #39
  unreachable

_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit: ; preds = %bb.l
  %i.cf = trunc i64 %3 to i8
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !44
  %i.cg = shl nuw nsw i64 %i.cb, 3
  %i.ch = getelementptr i8, ptr %.1, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16     ; 3 uses
  %i.cj = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cj)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  tail call void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS4_DnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISB_S4_EEEEESF_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nonnull %i.ci, i64 %i.cb, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.n

bb.n:                                             ; preds = %bb.f, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit
  %.sink108 = phi ptr [ %i.an, %bb.f ], [ %i.ci, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.lcssa103.sink = phi i64 [ %i.aa, %bb.f ], [ %i.cb, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.f ], [ 1, %_ZN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EE6setTagEmm.exit ]
  store ptr %.sink108, ptr %0, align 8, !tbaa !143
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa103.sink, ptr %.sroa.542.0..sroa_idx, align 8, !tbaa !71
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.ck, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS4_DnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISB_S4_EEEEESF_ImmEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, i64 %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #37
          to label %.noexc unwind label %bb.b     ; 5 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.a, ptr %1, align 8, !tbaa !112
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %5)
          to label %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS4_DnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISB_S4_EEEEESF_ImmEDpOT_ENKUlvE_clEv.exit unwind label %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKS5_DnEEEvOT_PPSt4pairISD_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit10.i.i

_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKS5_DnEEEvOT_PPSt4pairISD_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit10.i.i: ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #34
  br label %.body

_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS4_DnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISB_S4_EEEEESF_ImmEDpOT_ENKUlvE_clEv.exit: ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.d, align 8, !tbaa !44
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS5_DnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISC_S5_EEEEESG_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKS5_DnEEEvOT_PPSt4pairISD_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit10.i.i, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.b, %_ZN5folly6detail14ScopeGuardImplIZNS_3f146detail19NodeContainerPolicyINS_7dynamicES5_NS0_13DynamicHasherENS0_15DynamicKeyEqualEvE20constructValueAtItemIRNS3_8F14TableIS8_EEJRKS5_DnEEEvOT_PPSt4pairISD_S5_EDpOT0_EUlvE_Lb1EED2Ev.exit10.i.i ]
  %i.f = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.g = tail call ptr @__cxa_begin_catch(ptr %i.f) #32 ; 0 uses
  invoke void @_ZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE14eraseBlankColdEPS9_NS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEESD_ImmE(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i64 %3, i64 %4)
          to label %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i unwind label %bb.c, !inline_history !16

_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i: ; preds = %.body
  tail call void @__cxa_end_catch()
  br label %_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS5_DnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISC_S5_EEEEESG_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit

bb.c:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #33
  unreachable

_ZN5folly15catch_exceptionIZNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS5_DnEEEvNS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairISC_S5_EEEEESG_ImmEDpOT_EUlvE_PFvPSA_SL_SM_EJSR_RSL_RSM_EvEET2_OT_OT0_DpOT1_.exit: ; preds = %_ZZN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE13insertAtBlankIJRKS4_DnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairISB_S4_EEEEESF_ImmEDpOT_ENKUlvE_clEv.exit, %_ZN5folly11invoke_coldIPFvPNS_3f146detail8F14TableINS2_19NodeContainerPolicyINS_7dynamicES5_NS_6detail13DynamicHasherENS6_15DynamicKeyEqualEvEEEENS2_11F14ItemIterIPNS2_8F14ChunkIPSt4pairIKS5_S5_EEEEESE_ImmEEJSB_RSK_RSL_ESM_TnNSt9enable_ifIXsr3std11is_functionIT1_EE5valueEiE4typeELi0EvEET3_OT_DpOT0_.exit.i
end_hunk_4
begin_hunk_5_@_ZNKR5folly7dynamic11try_get_ptrERKNS_12json_pointerE:bb.a
  store i8 2, ptr %i.t, align 8, !tbaa !148
  br label %.thread273

bb.h:                                             ; preds = %bb.f
  %i.u = icmp eq i64 %i.o, 1
  %.pre = load ptr, ptr %.sroa.0173.0368499, align 8, !tbaa !46 ; 3 uses
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit67, label %.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit67: ; preds = %bb.h
  %i.v = load i8, ptr %.pre, align 1, !tbaa !44
  %i.w = icmp eq i8 %i.v, 45
  br i1 %i.w, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit67
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !400
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !401
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = icmp eq i64 %.sroa.7.0371496, %i.ad
  br i1 %i.ae, label %bb.j, label %.thread213

bb.j:                                             ; preds = %bb.i
  store i8 3, ptr %0, align 8, !tbaa !398
  %.sroa.5139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0371496, ptr %.sroa.5139.0..sroa_idx, align 8, !tbaa !71
  %.sroa.6140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.036376493, ptr %.sroa.6140.0..sroa_idx, align 8, !tbaa !87
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.af, align 8, !tbaa !148
  br label %.thread273

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit67, %bb.h
  %i.ag = phi ptr [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE2atEm.exit67 ], [ %.pre, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.o
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %i.ag, ptr %3, align 8, !noalias !402
  store ptr %i.ah, ptr %i.h, align 8, !noalias !402
  %i.ai = call { i64, i64 } @_ZN5folly6detail15str_to_integralImEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef nonnull %3) #32, !noalias !402 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = and i64 %i.aj, 255
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.k, label %_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit, !prof !70

bb.k:                                             ; preds = %.thread
  %i.am = extractvalue { i64, i64 } %i.ai, 1      ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !34, !noalias !403 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !34, !noalias !403 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not14.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not14.i.i.i.i.i, label %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit, label %.lr.ph.i.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0915.i.i.i.i.i, i64 1 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %bb.l
  %.0915.i.i.i.i.i = phi ptr [ %i.an, %bb.l ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.k ] ; 2 uses
  %i.ao = load i8, ptr %.0915.i.i.i.i.i, align 1, !tbaa !44
  %i.ap = sext i8 %i.ao to i32
  %i.aq = call i32 @isspace(i32 noundef %i.ap) #35
  %.not12.not.i.i.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not12.not.i.i.not.i.i.i, label %_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread207, label %bb.l

_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit: ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread207

_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread207: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit
  store i8 4, ptr %0, align 8, !tbaa !398
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0371496, ptr %.sroa.5115.0..sroa_idx, align 8, !tbaa !71
  %.sroa.6116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.036376493, ptr %.sroa.6116.0..sroa_idx, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.ar, align 8, !tbaa !148
  br label %.thread273

_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit: ; preds = %bb.l, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.036376493, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !105
  %i.au = load ptr, ptr %i.m, align 8, !tbaa !106 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = sdiv exact i64 %i.ax, 40
  %i.az = icmp ult i64 %i.am, %i.ay
  br i1 %i.az, label %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69, label %bb.m

_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69: ; preds = %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.am
  br label %.thread213

bb.m:                                             ; preds = %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit
  store i8 2, ptr %0, align 8, !tbaa !398
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0371496, ptr %.sroa.5107.0..sroa_idx, align 8, !tbaa !71
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.036376493, ptr %.sroa.6108.0..sroa_idx, align 8, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.bb, align 8, !tbaa !148
  br label %.thread273

bb.n:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %.036376493, i64 16 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !108 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 512
  br i1 %i.be, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = icmp samesign ult i64 %i.bd, 256
  br i1 %i.bf, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.036376493, i64 24
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !110
  %i.bi = and i64 %i.bh, -8
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !112 ; 5 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !31
  %i.bm = icmp eq i32 %i.bl, 6
  br i1 %i.bm, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i:       ; preds = %bb.p
  %i.bn = load ptr, ptr %.sroa.0173.0368499, align 8, !tbaa !46 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0173.0368499, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !43 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !43
  %.not.i.i.i.i = icmp eq i64 %i.bp, %i.bt
  br i1 %.not.i.i.i.i, label %bb.q, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.q:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i
  %i.bu = icmp samesign eq i64 %i.bp, 0
  br i1 %i.bu, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit: ; preds = %bb.q
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %i.bn, ptr %i.br, i64 %i.bp)
  %i.bv = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bv, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread

bb.r:                                             ; preds = %bb.n
  %i.bw = load ptr, ptr %.sroa.0173.0368499, align 8, !tbaa !46
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0173.0368499, i64 8 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i64 0, ptr %i.b, align 8, !tbaa !71
  call void @_ZN5folly4hash12SpookyHashV27Hash128EPKvmPmS4_(ptr noundef %i.bw, i64 noundef %i.by, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.bz = load i64, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ca = lshr i64 %i.bz, 56
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ca, i64 1) ; 2 uses
  %i.cb = shl nuw nsw i64 %.sroa.speculated.i.i.i, 1
  %i.cc = or disjoint i64 %i.cb, 1
  %i.cd = trunc nuw i64 %.sroa.speculated.i.i.i to i8
  %i.ce = insertelement <16 x i8> poison, i8 %i.cd, i64 0
  %i.cf = shufflevector <16 x i8> %i.ce, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cg = load i64, ptr %i.bc, align 8, !tbaa !108
  %i.ch = and i64 %i.cg, 255                      ; 2 uses
  %i.ci = shl nuw i64 1, %i.ch
  %notmask.i = shl nsw i64 -1, %i.ch
  %i.cj = xor i64 %notmask.i, -1
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !116
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.v
  %.024.i367 = phi i64 [ %i.ci, %bb.r ], [ %i.dr, %bb.v ]
  %.026.i366 = phi i64 [ %i.bz, %bb.r ], [ %i.ds, %bb.v ] ; 2 uses
  %i.cl = and i64 %.026.i366, %i.cj
  %i.cm = shl nuw nsw i64 %i.cl, 7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm ; 4 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 80
  call void @llvm.prefetch.p0(ptr %i.co, i32 0, i32 3, i32 1)
  %i.cp = load <16 x i8>, ptr %i.cn, align 16     ; 2 uses
  %i.cq = icmp eq <16 x i8> %i.cp, %i.cf
  %i.cr = bitcast <16 x i1> %i.cq to i16
  %i.cs = zext i16 %i.cr to i32                   ; 2 uses
  %i.ct = and i32 %i.cs, 16383
  %.not302 = icmp eq i32 %i.ct, 0
  %i.cu = extractelement <16 x i8> %i.cp, i64 15
  br i1 %.not302, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.s
  %i.cv = icmp ne ptr %i.cn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  call void @llvm.assume(i1 %i.cv)
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %.critedge.i
  %.sroa.0194.0 = phi i32 [ %i.cz, %.critedge.i ], [ %i.cs, %.preheader ] ; 4 uses
  %i.cw = icmp ne i32 %.sroa.0194.0, 0
  call void @llvm.assume(i1 %i.cw)
  %i.cx = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0194.0, i1 true)
  %i.cy = add nuw nsw i32 %.sroa.0194.0, 65535
  %i.cz = and i32 %i.cy, %.sroa.0194.0            ; 2 uses
  %i.da = shl nuw nsw i32 %i.cx, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr i8, ptr %i.cn, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !112 ; 5 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !31
  %i.dg = icmp eq i32 %i.df, 6
  br i1 %i.dg, label %_ZNK5folly7dynamic11stringPieceEv.exit.i.i74, label %.critedge.i, !prof !70

_ZNK5folly7dynamic11stringPieceEv.exit.i.i74:     ; preds = %bb.t
  %i.dh = load ptr, ptr %.sroa.0173.0368499, align 8, !tbaa !46 ; 3 uses
  %i.di = load i64, ptr %i.bx, align 8, !tbaa !43 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !46
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !43
  %.not.i.i.i.i75 = icmp eq i64 %i.di, %i.dm
  br i1 %.not.i.i.i.i75, label %bb.u, label %.critedge.i, !prof !140

bb.u:                                             ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i74
  %i.dn = icmp samesign eq i64 %i.di, 0
  br i1 %i.dn, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243, label %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit77

_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit77: ; preds = %bb.u
  %bcmp.i.i.i.i76 = call i32 @bcmp(ptr %i.dh, ptr %i.dk, i64 %i.di)
  %i.do = icmp eq i32 %bcmp.i.i.i.i76, 0
  br i1 %i.do, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243, label %.critedge.i, !prof !141

.critedge.i:                                      ; preds = %_ZNK5folly7dynamic11stringPieceEv.exit.i.i74, %bb.t, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit77
  %i.dp = and i32 %i.cz, 16382
  %.not303 = icmp eq i32 %i.dp, 0
  br i1 %.not303, label %.loopexit, label %bb.t, !llvm.loop !396

.loopexit:                                        ; preds = %.critedge.i, %bb.s
  %i.dq = icmp eq i8 %i.cu, 0
  br i1 %i.dq, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.v, !prof !70

bb.v:                                             ; preds = %.loopexit
  %i.dr = add i64 %.024.i367, -1                  ; 2 uses
  %i.ds = add i64 %i.cc, %.026.i366
  %.not.i = icmp eq i64 %i.dr, 0
  br i1 %.not.i, label %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, label %bb.s, !llvm.loop !397

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit, %bb.p, %_ZNK5folly7dynamic11stringPieceEv.exit.i.i, %bb.o, %.loopexit, %bb.v
  store i8 1, ptr %0, align 8, !tbaa !398
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0371496, ptr %.sroa.594.0..sroa_idx, align 8, !tbaa !71
  %.sroa.695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.036376493, ptr %.sroa.695.0..sroa_idx, align 8, !tbaa !87
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.dt, align 8, !tbaa !148
  br label %.thread273

_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243: ; preds = %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit77, %bb.u, %bb.q, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit
  %i.du = phi i64 [ 0, %bb.q ], [ %i.bp, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.di, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit77 ], [ 0, %bb.u ]
  %i.dv = phi ptr [ %i.bn, %bb.q ], [ %i.bn, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.dh, %bb.u ], [ %i.dh, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit77 ] ; 2 uses
  %i.dw = phi ptr [ %i.bk, %bb.q ], [ %i.bk, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit ], [ %i.de, %bb.u ], [ %i.de, %_ZNK5folly3f146detail19NodeContainerPolicyINS_7dynamicES3_NS_6detail13DynamicHasherENS4_15DynamicKeyEqualEvE14keyMatchesItemINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbRKT_RKPSt4pairIKS3_S3_E.exit77 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  br label %.thread213

bb.w:                                             ; preds = %bb.e
  store i8 6, ptr %0, align 8, !tbaa !398
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0371496, ptr %.sroa.584.0..sroa_idx, align 8, !tbaa !71
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.036376493, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !87
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.dz, align 8, !tbaa !148
  br label %.thread273

.thread213:                                       ; preds = %bb.i, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243
  %.sroa.5180.3 = phi ptr [ %.sroa.5180.0374495, %bb.i ], [ %.sroa.5180.0374495, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %i.dy, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 2 uses
  %.sroa.0179.3 = phi ptr [ %.sroa.0179.0375494, %bb.i ], [ %.sroa.0179.0375494, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %i.dv, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 2 uses
  %.5 = phi ptr [ null, %bb.i ], [ %i.ba, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %i.dx, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 3 uses
  %.3 = phi i64 [ %.0380492, %bb.i ], [ %i.am, %_ZNKR5folly8ExpectedImNS_14ConversionCodeEE5valueEv.exit69 ], [ %.0380492, %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread243 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0173.0368499, i64 32 ; 2 uses
  %.not301 = icmp eq ptr %i.ea, %i.f
  br i1 %.not301, label %.thread279, label %bb.c

.thread279:                                       ; preds = %.thread213
  store ptr %.036376493, ptr %0, align 8, !tbaa !87
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !87
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0179.3, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !34
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.5180.3, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !tbaa !34
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !71
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 1, ptr %i.eb, align 8, !tbaa !148
  br label %.thread273

.thread273:                                       ; preds = %_ZNK5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEE4findINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKS4_S4_EEEEERKT_.exit.thread, %bb.m, %_ZN5folly5tryToImEENSt9enable_ifIXntsr3std7is_sameINS_5RangeIPKcEET_EE5valueENS_8ExpectedIS6_NSt16remove_referenceIDTclsr6detailE11parseToWraptlS5_Eclsr3stdE7declvalIRS6_EEEEE4type10error_typeEEEE4typeES5_.exit.thread207, %bb.j, %bb.g, %bb.w, %bb.d, %.thread279, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5folly12json_pointer6tokensB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nounwind
declare { i64, i64 } @_ZN5folly6detail15str_to_integralImEENS_8ExpectedIT_NS_14ConversionCodeEEEPNS_5RangeIPKcEE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNKR5folly7dynamic7get_ptrERKNS_12json_pointerE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::Expected.141", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @_ZNKR5folly7dynamic11try_get_ptrERKNS_12json_pointerE(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.141") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !148
  switch i8 %i.b, label %bb.b [
    i8 1, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit
    i8 2, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit
  ], !prof !404

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !406
  br label %bb.l

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #12
  unreachable

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10, label %bb.c

bb.c:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31
  br label %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10

_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10: ; preds = %bb.c, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit
  %i.h = phi i32 [ %i.g, %bb.c ], [ 0, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit ]
  %i.i = load i8, ptr %2, align 8, !tbaa !409
  switch i8 %i.i, label %bb.l [
    i8 6, label %bb.j
    i8 5, label %bb.g
    i8 4, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull @.str.62)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #36
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.g:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.63)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #36
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef nonnull @.str.59, i32 noundef %i.h) #12
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.f
  %.sink = phi ptr [ %i.l, %bb.i ], [ %i.j, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.m, %bb.i ], [ %i.k, %bb.f ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit
  %.1 = phi ptr [ %i.d, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5valueEv.exit ], [ null, %_ZNR5folly8ExpectedINS_7dynamic27json_pointer_resolved_valueIKS1_EENS1_29json_pointer_resolution_errorIS3_EEE5errorEv.exit10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret ptr %.1
}

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5folly7dynamic7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
end_hunk_5
