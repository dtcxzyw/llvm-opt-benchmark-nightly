Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaLookup?download=true
inline.NumInlined: 15494
inline.NumDeleted: 5921
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_:bb.a
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !1131
  %.pre82 = load i32, ptr %2, align 4, !tbaa !1131
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !1131   ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !1131 ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1825 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !1131
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !2813
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !1825 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !1131 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !1825 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !3194

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #29 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !1131
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1825 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #29 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !1131
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2813
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !1825 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !1131 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !1825 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !3194

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1822
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #29 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !1131
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELb1EE15growAndPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"struct.clang::TypoCorrectionConsumer::NamespaceSpecifierSet::SpecifierInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !3195
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1098
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #28
  %i.f = load ptr, ptr %0, align 8, !tbaa !1089
  %i.g = load i32, ptr %i.a, align 8, !tbaa !1098
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !1098
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !1098
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN4llvm25ComputeMappedEditDistanceIPKN5clang14IdentifierInfoEZNS_19ComputeEditDistanceIS4_EEjNS_8ArrayRefIT_EES8_bjEUlRKS4_E_EEjS8_S8_T0_bj(ptr %0, i64 %1, ptr %2, i64 %3, i1 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #0 comdat {
bb.a:
  %6 = alloca %"class.llvm::SmallVector.2590", align 8 ; 8 uses
  %.not = icmp eq i32 %5, 0                       ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, %3
  %i.b = sub nuw i64 %1, %3
  %i.c = sub nuw i64 %3, %1
  %i.d = select i1 %i.a, i64 %i.b, i64 %i.c
  %i.e = zext i32 %5 to i64
  %.not65 = icmp ugt i64 %i.d, %i.e
  %i.f = add i32 %5, 1
  br i1 %.not65, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.g = add i64 %3, 1                            ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.h, ptr %6, align 8, !tbaa !1089
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !1098
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 64, ptr %i.j, align 4, !tbaa !1100
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %.preheader.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp ugt i64 %i.g, 64
  br i1 %i.l, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, label %.lr.ph.preheader.i.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i: ; preds = %bb.d
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(272) %6, ptr noundef nonnull %i.h, i64 noundef %i.g, i64 noundef 4) #28
  %.pre.i.i.i = load i32, ptr %i.i, align 8, !tbaa !1098
  %.pre13.i.i.i = zext i32 %.pre.i.i.i to i64     ; 2 uses
  %.not11.i.i.i = icmp samesign eq i64 %i.g, %.pre13.i.i.i
  %.pre.pre.pre.pre = load ptr, ptr %6, align 8, !tbaa !1089 ; 2 uses
  br i1 %.not11.i.i.i, label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %bb.d
  %i.m = phi ptr [ %i.h, %bb.d ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %.pre-phi.i.i3.i = phi i64 [ 0, %bb.d ], [ %.pre13.i.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 2 uses
  %i.n = getelementptr [4 x i8], ptr %i.m, i64 %.pre-phi.i.i3.i
  %i.o = sub i64 %i.g, %.pre-phi.i.i3.i
  %i.p = shl i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 0, i64 %i.p, i1 false), !tbaa !1131
  br label %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit

_ZN4llvm11SmallVectorIjLj64EEC2Em.exit:           ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.pre.pre.pre = phi ptr [ %i.m, %.lr.ph.preheader.i.i.i ], [ %.pre.pre.pre.pre, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i.i ] ; 7 uses
  %i.q = trunc i64 %i.g to i32                    ; 2 uses
  store i32 %i.q, ptr %i.i, align 8, !tbaa !1098
  %i.r = icmp ugt i32 %i.q, 1
  br i1 %i.r, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit
  %.not6691 = icmp eq i64 %1, 0
  br i1 %.not6691, label %.thread, label %.lr.ph94

.preheader.thread:                                ; preds = %bb.c
  %.not6691154 = icmp eq i64 %1, 0
  br i1 %.not6691154, label %.thread, label %.lr.ph94.thread

.lr.ph94.thread:                                  ; preds = %.preheader.thread
  %i.s = add i32 %5, 1
  br label %.lr.ph94.split

.lr.ph94:                                         ; preds = %.preheader
  %.not6786 = icmp eq i64 %3, 0
  %i.t = add i32 %5, 1                            ; 2 uses
  br i1 %.not6786, label %.lr.ph94.split.us, label %.lr.ph94.split

.lr.ph94.split.us:                                ; preds = %.lr.ph94
  br i1 %.not, label %.lr.ph94.split.us.split.us.preheader, label %.lr.ph94.split.us.split

.lr.ph94.split.us.split.us.preheader:             ; preds = %.lr.ph94.split.us
  %i.u = add i64 %1, 1
  %umax135 = call i64 @llvm.umax.i64(i64 %i.u, i64 2)
  %i.v = trunc i64 %umax135 to i32
  %i.w = add i32 %i.v, -1
  br label %..thread_crit_edge.split.us

.lr.ph94.split.us.split:                          ; preds = %.lr.ph94.split.us, %bb.e
  %.05392.us = phi i64 [ %i.y, %bb.e ], [ 1, %.lr.ph94.split.us ] ; 2 uses
  %i.x = trunc i64 %.05392.us to i32              ; 3 uses
  %.not116 = icmp ult i32 %5, %i.x
  br i1 %.not116, label %.loopexit.split.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph94.split.us.split
  %i.y = add i64 %.05392.us, 1                    ; 2 uses
  %.not66.us = icmp ugt i64 %i.y, %1
  br i1 %.not66.us, label %..thread_crit_edge.split.us, label %.lr.ph94.split.us.split, !llvm.loop !3196

..thread_crit_edge.split.us:                      ; preds = %bb.e, %.lr.ph94.split.us.split.us.preheader
  %.us-phi = phi i32 [ %i.w, %.lr.ph94.split.us.split.us.preheader ], [ %i.x, %bb.e ]
  store i32 %.us-phi, ptr %.pre.pre.pre, align 4, !tbaa !1131
  br label %.thread

.loopexit.split.us:                               ; preds = %.lr.ph94.split.us.split
  store i32 %i.x, ptr %.pre.pre.pre, align 4, !tbaa !1131
  br label %.loopexit

.lr.ph94.split:                                   ; preds = %.lr.ph94.thread, %.lr.ph94
  %i.z = phi i32 [ %i.s, %.lr.ph94.thread ], [ %i.t, %.lr.ph94 ] ; 2 uses
  %.pre.pre152155160 = phi ptr [ %i.h, %.lr.ph94.thread ], [ %.pre.pre.pre, %.lr.ph94 ] ; 22 uses
  %umax131 = call i64 @llvm.umax.i64(i64 %i.g, i64 2) ; 4 uses
  br i1 %4, label %.lr.ph94.split.split.us, label %.lr.ph94.split.split

.lr.ph94.split.split.us:                          ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us.us.preheader, label %.lr.ph90.us

.lr.ph90.us.us.preheader:                         ; preds = %.lr.ph94.split.split.us
  %i.aa = add i64 %1, 1
  %umax133 = call i64 @llvm.umax.i64(i64 %i.aa, i64 2)
  %i.ab = add i64 %umax131, -1                    ; 3 uses
  %xtraiter185 = and i64 %i.ab, 1
  %i.ac = icmp ult i64 %i.g, 3
  %unroll_iter190 = and i64 %i.ab, -2
  %lcmp.mod188.not = icmp eq i64 %xtraiter185, 0
  %lcmp.mod189 = trunc i64 %i.ab to i1
  br label %.lr.ph90.us.us

.lr.ph90.us.us:                                   ; preds = %.lr.ph90.us.us.preheader, %._crit_edge.split.us.us.us
  %.05392.us97.us = phi i64 [ %i.bp, %._crit_edge.split.us.us.us ], [ 1, %.lr.ph90.us.us.preheader ] ; 3 uses
  %i.ad = trunc i64 %.05392.us97.us to i32        ; 3 uses
  %i.ae = add i64 %.05392.us97.us, -1             ; 2 uses
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1216 ; 3 uses
  br i1 %i.ac, label %.epil.preheader184, label %.lr.ph90.us.us.new

.lr.ph90.us.us.new:                               ; preds = %.lr.ph90.us.us, %.lr.ph90.us.us.new
  %i.ai = phi i32 [ %.sroa.speculated.us.us.us.1, %.lr.ph90.us.us.new ], [ %i.ad, %.lr.ph90.us.us ]
  %.05189.us.us.us = phi i64 [ %i.be, %.lr.ph90.us.us.new ], [ 1, %.lr.ph90.us.us ] ; 4 uses
  %.05288.us.us.us = phi i32 [ %i.av, %.lr.ph90.us.us.new ], [ %i.af, %.lr.ph90.us.us ]
  %niter191 = phi i64 [ %niter191.next.1, %.lr.ph90.us.us.new ], [ 0, %.lr.ph90.us.us ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us.us ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !1131 ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us.us
  %i.am = getelementptr i8, ptr %i.al, i64 -8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1216
  %i.ao = icmp ne ptr %i.ah, %i.an
  %i.ap = zext i1 %i.ao to i32
  %i.aq = add i32 %.05288.us.us.us, %i.ap
  %i.ar = call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.ai)
  %i.as = add i32 %i.ar, 1
  %.sroa.speculated.us.us.us = call i32 @llvm.umin.i32(i32 %i.as, i32 %i.aq) ; 2 uses
  store i32 %.sroa.speculated.us.us.us, ptr %i.aj, align 4, !tbaa !1131
  %i.at = add nuw i64 %.05189.us.us.us, 1         ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1131 ; 3 uses
  %i.aw = getelementptr [8 x i8], ptr %2, i64 %i.at
  %i.ax = getelementptr i8, ptr %i.aw, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1216
  %i.az = icmp ne ptr %i.ah, %i.ay
  %i.ba = zext i1 %i.az to i32
  %i.bb = add i32 %i.ak, %i.ba
  %i.bc = call i32 @llvm.umin.i32(i32 %i.av, i32 %.sroa.speculated.us.us.us)
  %i.bd = add i32 %i.bc, 1
  %.sroa.speculated.us.us.us.1 = call i32 @llvm.umin.i32(i32 %i.bd, i32 %i.bb) ; 3 uses
  store i32 %.sroa.speculated.us.us.us.1, ptr %i.au, align 4, !tbaa !1131
  %i.be = add nuw i64 %.05189.us.us.us, 2         ; 2 uses
  %niter191.next.1 = add nuw i64 %niter191, 2     ; 2 uses
  %niter191.ncmp.1 = icmp eq i64 %niter191.next.1, %unroll_iter190
  br i1 %niter191.ncmp.1, label %._crit_edge.split.us.us.us.unr-lcssa, label %.lr.ph90.us.us.new, !llvm.loop !3197

._crit_edge.split.us.us.us.unr-lcssa:             ; preds = %.lr.ph90.us.us.new
  br i1 %lcmp.mod188.not, label %._crit_edge.split.us.us.us, label %.epil.preheader184

.epil.preheader184:                               ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.lr.ph90.us.us
  %.epil.init187 = phi i32 [ %i.ad, %.lr.ph90.us.us ], [ %.sroa.speculated.us.us.us.1, %._crit_edge.split.us.us.us.unr-lcssa ]
  %.05189.us.us.us.epil.init = phi i64 [ 1, %.lr.ph90.us.us ], [ %i.be, %._crit_edge.split.us.us.us.unr-lcssa ] ; 2 uses
  %.05288.us.us.us.epil.init = phi i32 [ %i.af, %.lr.ph90.us.us ], [ %i.av, %._crit_edge.split.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod189)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us.us.epil.init ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1131
  %i.bh = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us.us.epil.init
  %i.bi = getelementptr i8, ptr %i.bh, i64 -8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1216
  %i.bk = icmp ne ptr %i.ah, %i.bj
  %i.bl = zext i1 %i.bk to i32
  %i.bm = add i32 %.05288.us.us.us.epil.init, %i.bl
  %i.bn = call i32 @llvm.umin.i32(i32 %i.bg, i32 %.epil.init187)
  %i.bo = add i32 %i.bn, 1
  %.sroa.speculated.us.us.us.epil = call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bm)
  store i32 %.sroa.speculated.us.us.us.epil, ptr %i.bf, align 4, !tbaa !1131
  br label %._crit_edge.split.us.us.us

._crit_edge.split.us.us.us:                       ; preds = %._crit_edge.split.us.us.us.unr-lcssa, %.epil.preheader184
  %i.bp = add nuw i64 %.05392.us97.us, 1          ; 2 uses
  %exitcond134 = icmp eq i64 %i.bp, %umax133
  br i1 %exitcond134, label %.thread.loopexit, label %.lr.ph90.us.us, !llvm.loop !3196

.lr.ph90.us:                                      ; preds = %.lr.ph94.split.split.us, %bb.f
  %.05392.us97 = phi i64 [ %i.bv, %bb.f ], [ 1, %.lr.ph94.split.split.us ] ; 3 uses
  %i.bq = trunc i64 %.05392.us97 to i32           ; 4 uses
  %i.br = add i64 %.05392.us97, -1                ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1216
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.split.us.us
  %i.bv = add i64 %.05392.us97, 1                 ; 2 uses
  %.not66.us98 = icmp ugt i64 %i.bv, %1
  br i1 %.not66.us98, label %.thread.loopexit161, label %.lr.ph90.us, !llvm.loop !3196

bb.g:                                             ; preds = %bb.g, %.lr.ph90.us
  %i.bw = phi i32 [ %i.bq, %.lr.ph90.us ], [ %.sroa.speculated.us.us, %bb.g ]
  %.05189.us.us = phi i64 [ 1, %.lr.ph90.us ], [ %i.ch, %bb.g ] ; 3 uses
  %.05288.us.us = phi i32 [ %i.bs, %.lr.ph90.us ], [ %i.by, %bb.g ]
  %.08287.us.us = phi i32 [ %i.bq, %.lr.ph90.us ], [ %.sroa.speculated76.us.us, %bb.g ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.us ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !1131 ; 2 uses
  %i.bz = getelementptr [8 x i8], ptr %2, i64 %.05189.us.us
  %i.ca = getelementptr i8, ptr %i.bz, i64 -8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !1216
  %i.cc = icmp ne ptr %i.bu, %i.cb
  %i.cd = zext i1 %i.cc to i32
  %i.ce = add i32 %.05288.us.us, %i.cd
  %i.cf = call i32 @llvm.umin.i32(i32 %i.by, i32 %i.bw)
  %i.cg = add i32 %i.cf, 1
  %.sroa.speculated.us.us = call i32 @llvm.umin.i32(i32 %i.cg, i32 %i.ce) ; 3 uses
  store i32 %.sroa.speculated.us.us, ptr %i.bx, align 4, !tbaa !1131
  %.sroa.speculated76.us.us = call i32 @llvm.umin.i32(i32 %.sroa.speculated.us.us, i32 %.08287.us.us) ; 2 uses
  %i.ch = add nuw i64 %.05189.us.us, 1            ; 2 uses
  %exitcond130 = icmp eq i64 %i.ch, %umax131
  br i1 %exitcond130, label %._crit_edge.split.us.us, label %bb.g, !llvm.loop !3197

._crit_edge.split.us.us:                          ; preds = %bb.g
  %.not113.a = icmp ugt i32 %.sroa.speculated76.us.us, %5
  br i1 %.not113.a, label %.loopexit.loopexit, label %bb.f

.lr.ph94.split.split:                             ; preds = %.lr.ph94.split
  br i1 %.not, label %.lr.ph90.us103.preheader, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %.lr.ph94.split.split
  %7 = add i64 %umax131, -1                       ; 3 uses
  %xtraiter = and i64 %7, 1
  %8 = icmp ult i64 %i.g, 3
  %unroll_iter = and i64 %7, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod187 = trunc i64 %7 to i1
  br label %.lr.ph90

.lr.ph90.us103.preheader:                         ; preds = %.lr.ph94.split.split
  %i.ci = add i64 %1, 1
  %umax127 = call i64 @llvm.umax.i64(i64 %i.ci, i64 2)
  %i.cj = add i64 %umax131, -1                    ; 3 uses
  %xtraiter.a = and i64 %i.cj, 1
  %i.ck = icmp ult i64 %i.g, 3
  %unroll_iter.a = and i64 %i.cj, -2
  %lcmp.mod.not.a = icmp eq i64 %xtraiter.a, 0
  %lcmp.mod183 = trunc i64 %i.cj to i1
  br label %.lr.ph90.us103

.lr.ph90.us103:                                   ; preds = %.lr.ph90.us103.preheader, %._crit_edge.split.us
  %.05392.us105 = phi i64 [ %i.db, %._crit_edge.split.us ], [ 1, %.lr.ph90.us103.preheader ] ; 3 uses
  %i.cl = trunc i64 %.05392.us105 to i32          ; 3 uses
  %i.cm = add i64 %.05392.us105, -1               ; 2 uses
  %i.cn = trunc i64 %i.cm to i32                  ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !1216 ; 3 uses
  br i1 %i.ck, label %.epil.preheader.a, label %.lr.ph90.us103.new

.lr.ph90.us103.new:                               ; preds = %.lr.ph90.us103, %.lr.ph90.us103.new
  %i.cq = phi i32 [ %storemerge114.1, %.lr.ph90.us103.new ], [ %i.cl, %.lr.ph90.us103 ]
  %.05189.us = phi i64 [ %21, %.lr.ph90.us103.new ], [ 1, %.lr.ph90.us103 ] ; 4 uses
  %.05288.us = phi i32 [ %16, %.lr.ph90.us103.new ], [ %i.cn, %.lr.ph90.us103 ]
  %niter.a = phi i64 [ %niter195.next.1, %.lr.ph90.us103.new ], [ 0, %.lr.ph90.us103 ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !1131 ; 2 uses
  %9 = getelementptr [8 x i8], ptr %2, i64 %.05189.us
  %10 = getelementptr i8, ptr %9, i64 -8
  %11 = load ptr, ptr %10, align 8, !tbaa !1216
  %12 = icmp eq ptr %i.cp, %11
  %13 = call i32 @llvm.umin.i32(i32 %i.cs, i32 %i.cq)
  %14 = add i32 %13, 1
  %storemerge114 = select i1 %12, i32 %.05288.us, i32 %14 ; 2 uses
  store i32 %storemerge114, ptr %i.cr, align 4, !tbaa !1131
  %i.ct = add nuw i64 %.05189.us, 1               ; 2 uses
  %15 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %i.ct ; 2 uses
  %16 = load i32, ptr %15, align 4, !tbaa !1131   ; 3 uses
  %i.cu = getelementptr [8 x i8], ptr %2, i64 %i.ct
  %17 = getelementptr i8, ptr %i.cu, i64 -8
  %i.cv = load ptr, ptr %17, align 8, !tbaa !1216
  %18 = icmp eq ptr %i.cp, %i.cv
  %19 = call i32 @llvm.umin.i32(i32 %16, i32 %storemerge114)
  %20 = add i32 %19, 1
  %storemerge114.1 = select i1 %18, i32 %i.cs, i32 %20 ; 3 uses
  store i32 %storemerge114.1, ptr %15, align 4, !tbaa !1131
  %21 = add nuw i64 %.05189.us, 2                 ; 2 uses
  %niter195.next.1 = add nuw i64 %niter.a, 2      ; 2 uses
  %i.cw = icmp eq i64 %niter195.next.1, %unroll_iter.a
  br i1 %i.cw, label %._crit_edge.split.us.unr-lcssa, label %.lr.ph90.us103.new, !llvm.loop !3197

._crit_edge.split.us.unr-lcssa:                   ; preds = %.lr.ph90.us103.new
  br i1 %lcmp.mod.not.a, label %._crit_edge.split.us, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %._crit_edge.split.us.unr-lcssa, %.lr.ph90.us103
  %.epil.init.a = phi i32 [ %i.cl, %.lr.ph90.us103 ], [ %storemerge114.1, %._crit_edge.split.us.unr-lcssa ]
  %.05189.us.epil.init = phi i64 [ 1, %.lr.ph90.us103 ], [ %21, %._crit_edge.split.us.unr-lcssa ] ; 2 uses
  %.05288.us.epil.init = phi i32 [ %i.cn, %.lr.ph90.us103 ], [ %16, %._crit_edge.split.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189.us.epil.init ; 2 uses
  %22 = load i32, ptr %i.cx, align 4, !tbaa !1131
  %i.cy = getelementptr [8 x i8], ptr %2, i64 %.05189.us.epil.init
  %23 = getelementptr i8, ptr %i.cy, i64 -8
  %i.cz = load ptr, ptr %23, align 8, !tbaa !1216
  %i.da = icmp eq ptr %i.cp, %i.cz
  %24 = call i32 @llvm.umin.i32(i32 %22, i32 %.epil.init.a)
  %25 = add i32 %24, 1
  %storemerge114.epil = select i1 %i.da, i32 %.05288.us.epil.init, i32 %25
  store i32 %storemerge114.epil, ptr %i.cx, align 4, !tbaa !1131
  br label %._crit_edge.split.us

._crit_edge.split.us:                             ; preds = %._crit_edge.split.us.unr-lcssa, %.epil.preheader.a
  %i.db = add nuw i64 %.05392.us105, 1            ; 2 uses
  %exitcond128 = icmp eq i64 %i.db, %umax127
  br i1 %exitcond128, label %.thread.loopexit.a, label %.lr.ph90.us103, !llvm.loop !3196

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit, %.lr.ph
  %.05485 = phi i32 [ %i.de, %.lr.ph ], [ 1, %_ZN4llvm11SmallVectorIjLj64EEC2Em.exit ] ; 3 uses
  %i.dc = zext i32 %.05485 to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre.pre, i64 %i.dc
  store i32 %.05485, ptr %i.dd, align 4, !tbaa !1131
  %i.de = add nuw i32 %.05485, 1                  ; 2 uses
  %i.df = load i32, ptr %i.i, align 8, !tbaa !1098
  %i.dg = icmp ugt i32 %i.df, %i.de
  br i1 %i.dg, label %.lr.ph, label %.preheader, !llvm.loop !3198

bb.h:                                             ; preds = %bb.j
  %i.dh = add i64 %.05392, 1                      ; 2 uses
  %.not66 = icmp ugt i64 %i.dh, %1
  br i1 %.not66, label %.thread.loopexit161.a, label %.lr.ph90, !llvm.loop !3196

.lr.ph90:                                         ; preds = %.lr.ph93.preheader, %bb.h
  %.05392 = phi i64 [ %i.dh, %bb.h ], [ 1, %.lr.ph93.preheader ] ; 3 uses
  %i.di = trunc i64 %.05392 to i32                ; 6 uses
  %i.dj = add i64 %.05392, -1                     ; 2 uses
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dj
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !1216 ; 3 uses
  br i1 %8, label %bb.i, label %bb.k

._crit_edge.split.a:                              ; preds = %bb.k
  br i1 %lcmp.mod.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge.split.a, %.lr.ph90
  %i.dn = phi i32 [ %i.di, %.lr.ph90 ], [ %storemerge.1, %._crit_edge.split.a ]
  %.05189 = phi i64 [ 1, %.lr.ph90 ], [ %48, %._crit_edge.split.a ] ; 2 uses
  %.05288 = phi i32 [ %i.dk, %.lr.ph90 ], [ %41, %._crit_edge.split.a ]
  %.08287 = phi i32 [ %i.di, %.lr.ph90 ], [ %.sroa.speculated76.a, %._crit_edge.split.a ]
  call void @llvm.assume(i1 %lcmp.mod187)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05189 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !1131
  %26 = getelementptr [8 x i8], ptr %2, i64 %.05189
  %27 = getelementptr i8, ptr %26, i64 -8
  %i.dq = load ptr, ptr %27, align 8, !tbaa !1216
  %i.dr = icmp eq ptr %i.dm, %i.dq
  %28 = call i32 @llvm.umin.i32(i32 %i.dp, i32 %i.dn)
  %29 = add i32 %28, 1
  %storemerge.epil = select i1 %i.dr, i32 %.05288, i32 %29 ; 2 uses
  store i32 %storemerge.epil, ptr %i.do, align 4, !tbaa !1131
  %.sroa.speculated76.epil = call i32 @llvm.umin.i32(i32 %storemerge.epil, i32 %.08287)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.split.a, %bb.i
  %.sroa.speculated76.lcssa = phi i32 [ %.sroa.speculated76.a, %._crit_edge.split.a ], [ %.sroa.speculated76.epil, %bb.i ]
  %.not113 = icmp ugt i32 %.sroa.speculated76.lcssa, %5
  br i1 %.not113, label %.loopexit.loopexit.a, label %bb.h

bb.k:                                             ; preds = %.lr.ph90, %bb.k
  %30 = phi i32 [ %storemerge.1, %bb.k ], [ %i.di, %.lr.ph90 ]
  %.05192 = phi i64 [ %48, %bb.k ], [ 1, %.lr.ph90 ] ; 4 uses
  %.05291 = phi i32 [ %41, %bb.k ], [ %i.dk, %.lr.ph90 ]
  %storemerge.a = phi i32 [ %.sroa.speculated76.a, %bb.k ], [ %i.di, %.lr.ph90 ]
  %niter = phi i64 [ %i.ds, %bb.k ], [ 0, %.lr.ph90 ]
  %31 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %.05192 ; 2 uses
  %32 = load i32, ptr %31, align 4, !tbaa !1131   ; 2 uses
  %33 = getelementptr [8 x i8], ptr %2, i64 %.05192
  %34 = getelementptr i8, ptr %33, i64 -8
  %35 = load ptr, ptr %34, align 8, !tbaa !1216
  %36 = icmp eq ptr %i.dm, %35
  %37 = call i32 @llvm.umin.i32(i32 %32, i32 %30)
  %38 = add i32 %37, 1
  %storemerge = select i1 %36, i32 %.05291, i32 %38 ; 3 uses
  store i32 %storemerge, ptr %31, align 4, !tbaa !1131
  %.sroa.speculated76 = call i32 @llvm.umin.i32(i32 %storemerge, i32 %storemerge.a)
  %39 = add nuw i64 %.05192, 1                    ; 2 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152155160, i64 %39 ; 2 uses
  %41 = load i32, ptr %40, align 4, !tbaa !1131   ; 3 uses
  %42 = getelementptr [8 x i8], ptr %2, i64 %39
  %43 = getelementptr i8, ptr %42, i64 -8
  %44 = load ptr, ptr %43, align 8, !tbaa !1216
  %45 = icmp eq ptr %i.dm, %44
  %46 = call i32 @llvm.umin.i32(i32 %41, i32 %storemerge)
  %47 = add i32 %46, 1
  %storemerge.1 = select i1 %45, i32 %32, i32 %47 ; 4 uses
  store i32 %storemerge.1, ptr %40, align 4, !tbaa !1131
  %.sroa.speculated76.a = call i32 @llvm.umin.i32(i32 %storemerge.1, i32 %.sroa.speculated76) ; 3 uses
  %48 = add nuw i64 %.05192, 2                    ; 2 uses
  %i.ds = add nuw i64 %niter, 2                   ; 2 uses
  %exitcond = icmp eq i64 %i.ds, %unroll_iter
  br i1 %exitcond, label %._crit_edge.split.a, label %bb.k, !llvm.loop !3197

.thread.loopexit:                                 ; preds = %._crit_edge.split.us.us.us
  store i32 %i.ad, ptr %.pre.pre152155160, align 4, !tbaa !1131
  br label %.thread

.thread.loopexit161:                              ; preds = %bb.f
  store i32 %i.bq, ptr %.pre.pre152155160, align 4, !tbaa !1131
  br label %.thread

.thread.loopexit.a:                               ; preds = %._crit_edge.split.us
  store i32 %i.cl, ptr %.pre.pre152155160, align 4, !tbaa !1131
  br label %.thread

.thread.loopexit161.a:                            ; preds = %bb.h
  store i32 %i.di, ptr %.pre.pre152155160, align 4, !tbaa !1131
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit161.a, %.thread.loopexit.a, %.thread.loopexit161, %.thread.loopexit, %.preheader.thread, %..thread_crit_edge.split.us, %.preheader
  %.pre.pre152156 = phi ptr [ %i.h, %.preheader.thread ], [ %.pre.pre152155160, %.thread.loopexit161 ], [ %.pre.pre152155160, %.thread.loopexit ], [ %.pre.pre152155160, %.thread.loopexit.a ], [ %.pre.pre.pre, %.preheader ], [ %.pre.pre.pre, %..thread_crit_edge.split.us ], [ %.pre.pre152155160, %.thread.loopexit161.a ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.pre.pre152156, i64 %3
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !1131
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %._crit_edge.split.us.us
  store i32 %i.bq, ptr %.pre.pre152155160, align 4, !tbaa !1131
  br label %.loopexit

.loopexit.loopexit.a:                             ; preds = %bb.j
  store i32 %i.di, ptr %.pre.pre152155160, align 4, !tbaa !1131
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.a, %.loopexit.loopexit, %.loopexit.split.us, %.thread
  %.pre.pre152157 = phi ptr [ %.pre.pre152156, %.thread ], [ %.pre.pre.pre, %.loopexit.split.us ], [ %.pre.pre152155160, %.loopexit.loopexit ], [ %.pre.pre152155160, %.loopexit.loopexit.a ] ; 2 uses
  %.5 = phi i32 [ %i.du, %.thread ], [ %i.t, %.loopexit.split.us ], [ %i.z, %.loopexit.loopexit ], [ %i.z, %.loopexit.loopexit.a ]
  %i.dv = icmp eq ptr %.pre.pre152157, %i.h
  br i1 %i.dv, label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %.loopexit
  call void @free(ptr noundef %.pre.pre152157) #28
  br label %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit

_ZN4llvm11SmallVectorIjLj64EED2Ev.exit:           ; preds = %.loopexit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit
  %.6 = phi i32 [ %.5, %_ZN4llvm11SmallVectorIjLj64EED2Ev.exit ], [ %i.f, %bb.b ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(440) ptr @_Znwm(i64 noundef 440) #32 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !1441
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1131
  store i32 %i.e, ptr %i.b, align 8, !tbaa !3187
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !1089
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 0, ptr %i.h, align 8, !tbaa !1098
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store i32 16, ptr %i.i, align 4, !tbaa !1100
  %i.j = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 4 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.k, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.p = load i32, ptr %i.b, align 8, !tbaa !1131
  %i.q = load i32, ptr %i.o, align 4, !tbaa !1131
  %i.r = icmp ult i32 %i.p, %i.q
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.s = phi i1 [ %i.r, %bb.c ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.s, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.m) #28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !1824
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !1824
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE10_Auto_nodeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !1089 ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.g
  br i1 %i.x, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.w) #28
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 440) #30
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.k, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm11SmallVectorIN5clang22TypoCorrectionConsumer21NamespaceSpecifierSet13SpecifierInfoELj16EEEESt10_Select1stIS9_ESt4lessIjESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit.i ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang22TypoCorrectionConsumerC2ERNS_4SemaERKNS_19DeclarationNameInfoENS1_14LookupNameKindEPNS_5ScopeEPNS_12CXXScopeSpecESt10unique_ptrINS_27CorrectionCandidateCallbackESt14default_deleteISC_EEPNS_11DeclContextEb(ptr noundef nonnull align 8 dereferenceable(1082) %0, ptr noundef nonnull align 8 dereferenceable(18640) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef align 8 dereferenceable(8) %6, ptr noundef %7, i1 noundef zeroext %8) unnamed_addr #0 comdat align 2 {
bb.a:
  %9 = alloca %"class.clang::TypoCorrection", align 8 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5clang22TypoCorrectionConsumerE, i64 16), ptr %0, align 8, !tbaa !1108
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !718 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i, 7
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %.sroa.0.0.copyload.i, -8
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i = select i1 %i.c, ptr %i.e, ptr null
  store ptr %.0.i, ptr %i.a, align 8, !tbaa !2151
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !1820
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.g, align 8, !tbaa !1821
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.f, ptr %i.h, align 8, !tbaa !1822
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.f, ptr %i.i, align 8, !tbaa !1823
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.j, align 8, !tbaa !1824
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.l, ptr %i.k, align 8, !tbaa !1089
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.m, align 8, !tbaa !1098
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 4, ptr %i.n, align 4, !tbaa !1100
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store ptr %1, ptr %i.p, align 8, !tbaa !1366
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %4, ptr %i.q, align 8, !tbaa !2262
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32, !noalias !3199 ; 4 uses
  %i.t = load i64, ptr %5, align 8, !noalias !3199
  store i64 %i.t, ptr %i.s, align 8, !noalias !3199
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  tail call void @_ZN5clang29NestedNameSpecifierLocBuilderC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.v) #28, !noalias !3199
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !3202, !noalias !3199
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi ptr [ %i.s, %bb.b ], [ null, %bb.a ]
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !2201
  %i.y = zext i1 %8 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aa = load i64, ptr %6, align 8, !tbaa !2172
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !2172
  store ptr null, ptr %6, align 8, !tbaa !2172
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %7, ptr %i.ab, align 8, !tbaa !2259
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !1099
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 492
  store i32 0, ptr %i.ad, align 4, !tbaa !1159
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 512
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !1089
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 0, ptr %i.ag, align 8, !tbaa !1098
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 508
  store i32 8, ptr %i.ah, align 4, !tbaa !1100
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 600
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.aj, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !1426
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 0, ptr %i.al, align 8, !tbaa !1427
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 636
  store i32 0, ptr %i.am, align 4, !tbaa !1427
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 640
  store i32 %3, ptr %i.an, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 644
  store i32 0, ptr %i.ao, align 4, !tbaa !717
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 651
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 652
  store <8 x i8> <i8 0, i8 0, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0>, ptr %i.ap, align 8, !tbaa !1322
  tail call void @_ZN5clang12LookupResult9configureEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ac)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !722, !nonnull !713, !align !714
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !2102
  tail call void @_ZN5clang22TypoCorrectionConsumer21NamespaceSpecifierSetC1ERNS_10ASTContextEPNS_11DeclContextEPNS_12CXXScopeSpecE(ptr noundef nonnull align 8 dereferenceable(232) %i.as, ptr noundef nonnull align 8 dereferenceable(23904) %i.au, ptr noundef %i.aw, ptr noundef %5) #28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !1089
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 0, ptr %i.az, align 8, !tbaa !1098
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 900
  store i32 2, ptr %i.ba, align 4, !tbaa !1100
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1080
  store i8 %i.y, ptr %i.bb, align 8, !tbaa !2263
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1081
  store i8 0, ptr %i.bc, align 1, !tbaa !2200
  store i8 0, ptr %i.aq, align 1, !tbaa !1323
  store i8 0, ptr %i.ar, align 4, !tbaa !1324
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %9, i8 0, i64 64, i1 false)
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !1089
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 28
  store i32 1, ptr %i.bf, align 4, !tbaa !1100
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
end_hunk_0
