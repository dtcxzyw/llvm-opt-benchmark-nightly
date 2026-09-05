Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RewriteInstance?download=true
inline.NumInlined: 27087
inline.NumDeleted: 8981
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN4llvm4bolt15RewriteInstance14disassemblePLTEv:bb.a

_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread: ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN4llvm4bolt14BinaryFunctionEESt10_Select1stIS5_ESt4lessImESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %"_ZZN4llvm4bolt15RewriteInstance14disassemblePLTEvENK3$_0clERNS0_13BinarySectionEm.exit", %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.cz = load ptr, ptr %i.bn, align 8, !tbaa !185 ; 3 uses
  %i.da = load i64, ptr %i.bp, align 8, !tbaa !332 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2387)
  %.not.i = icmp eq ptr %i.cz, null
  store ptr %i.au, ptr %6, align 8, !tbaa !453, !alias.scope !2387
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread
  store i64 0, ptr %i.av, align 8, !tbaa !332, !alias.scope !2387
  store i8 0, ptr %i.au, align 8, !tbaa !186, !alias.scope !2387
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

bb.p:                                             ; preds = %_ZNSt3mapImN4llvm4bolt14BinaryFunctionESt4lessImESaISt4pairIKmS2_EEE4findERS6_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35, !noalias !2387
  store i64 %i.da, ptr %i.a, align 8, !tbaa !444, !noalias !2387
  %i.db = icmp ugt i64 %i.da, 15
  br i1 %i.db, label %bb.q, label %._crit_edge.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #35 ; 2 uses
  store ptr %i.dc, ptr %6, align 8, !tbaa !185, !alias.scope !2387
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !444, !noalias !2387
  store i64 %i.dd, ptr %i.au, align 8, !tbaa !186, !alias.scope !2387
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.q, %bb.p
  %i.de = phi ptr [ %i.dc, %bb.q ], [ %i.au, %bb.p ] ; 2 uses
  switch i64 %i.da, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i
  %i.df = load i8, ptr %i.cz, align 1, !tbaa !186
  store i8 %i.df, ptr %i.de, align 1, !tbaa !186
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.s:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.de, ptr nonnull align 1 %i.cz, i64 %i.da, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !444, !noalias !2387 ; 2 uses
  store i64 %i.dg, ptr %i.av, align 8, !tbaa !332, !alias.scope !2387
  %i.dh = load ptr, ptr %6, align 8, !tbaa !185, !alias.scope !2387
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35, !noalias !2387
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit

_ZNK4llvm9StringRef3strB5cxx11Ev.exit:            ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2388)
  %i.dj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.227, i64 noundef 14) #35, !noalias !2388 ; 6 uses
  store ptr %i.aw, ptr %5, align 8, !tbaa !453, !alias.scope !2388
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !185 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 5 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.t:                                             ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !332 ; 3 uses
  %i.dp = icmp ult i64 %i.do, 16
  call void @llvm.assume(i1 %i.dp)
  %i.dq = add nuw nsw i64 %i.do, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.dl, i64 %i.dq, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNK4llvm9StringRef3strB5cxx11Ev.exit
  store ptr %i.dk, ptr %5, align 8, !tbaa !185, !alias.scope !2388
  %i.dr = load i64, ptr %i.dl, align 8, !tbaa !186
  store i64 %i.dr, ptr %i.aw, align 8, !tbaa !186, !alias.scope !2388
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.pre.i25 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !332
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ds = phi i64 [ %i.do, %bb.t ], [ %.pre.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %i.ds, ptr %i.ax, align 8, !tbaa !332, !alias.scope !2388
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !185
  store i64 0, ptr %i.dt, align 8, !tbaa !332
  store i8 0, ptr %i.dl, align 8, !tbaa !186
  %i.du = load i64, ptr %i.cm, align 8, !tbaa !918
  %i.dv = load i64, ptr %i.ch, align 8, !tbaa !2386
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !1077
  %i.dy = trunc i32 %i.dx to i16
  %i.dz = call noundef ptr @_ZN4llvm4bolt13BinaryContext20createBinaryFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_13BinarySectionEmmmt(ptr noundef nonnull align 8 dereferenceable(2268) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(391) %i.bm, i64 noundef %i.du, i64 noundef 0, i64 noundef %i.dv, i16 noundef zeroext %i.dy) #35
  %i.ea = load ptr, ptr %5, align 8, !tbaa !185   ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.aw
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit
  %i.ec = load i64, ptr %i.aw, align 8, !tbaa !186
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.ee = load ptr, ptr %6, align 8, !tbaa !185   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.au
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eg = load i64, ptr %i.au, align 8, !tbaa !186
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %bb.n
  %.0 = phi ptr [ %i.cy, %bb.n ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 306
  store i8 1, ptr %i.ei, align 2, !tbaa !975
  %.pre52 = load ptr, ptr %i.ap, align 8, !tbaa !916
  br label %_ZN4llvm4bolt15RewriteInstance17getPLTSectionInfoENS_9StringRefE.exit.thread

_ZN4llvm4bolt15RewriteInstance17getPLTSectionInfoENS_9StringRefE.exit.thread: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread14.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread14.us.i, %bb.i, %.lr.ph.split.split.i, %.lr.ph.split.us.split.i, %bb.u
  %i.ej = phi ptr [ %i.bk, %_ZN4llvmeqENS_9StringRefES0_.exit.thread14.us.i ], [ %.pre52, %bb.u ], [ %i.bk, %bb.i ], [ %i.bk, %.lr.ph.split.split.i ], [ %i.bk, %.lr.ph.split.us.split.i ], [ %i.bk, %_ZN4llvmeqENS_9StringRefES0_.exit.thread14.i ]
  %i.ek = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %i.ej) #39 ; 3 uses
  store ptr %i.ek, ptr %i.ap, align 8, !tbaa !916
  %i.el = load ptr, ptr %i.ay, align 8, !tbaa !916
  %.not1.i.i.i30 = icmp eq ptr %i.ek, %i.el
  br i1 %.not1.i.i.i30, label %_ZN4llvm4bolt14FilterIteratorINS_16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_13BinarySectionEES4_EESt8functionIFbRKS7_EEEppEv.exit, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZN4llvm4bolt15RewriteInstance17getPLTSectionInfoENS_9StringRefE.exit.thread, %bb.w
  %i.em = load ptr, ptr %i.az, align 8, !tbaa !171
  %.not.i.i.i.i.i32 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i32, label %bb.v, label %_ZNKSt8functionIFbRKN4llvm16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_4bolt13BinarySectionEES4_EEEEclES9_.exit.i.i.i33

bb.v:                                             ; preds = %.lr.ph.i.i.i31
  call void @_ZSt25__throw_bad_function_callv() #41
  unreachable

_ZNKSt8functionIFbRKN4llvm16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_4bolt13BinarySectionEES4_EEEEclES9_.exit.i.i.i33: ; preds = %.lr.ph.i.i.i31
  %i.en = load ptr, ptr %i.ba, align 8, !tbaa !914
  %i.eo = call noundef zeroext i1 %i.en(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #35, !inline_history !29
  %.pre53.pre = load ptr, ptr %i.ap, align 8, !tbaa !916 ; 2 uses
  br i1 %i.eo, label %_ZN4llvm4bolt14FilterIteratorINS_16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_13BinarySectionEES4_EESt8functionIFbRKS7_EEEppEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZNKSt8functionIFbRKN4llvm16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_4bolt13BinarySectionEES4_EEEEclES9_.exit.i.i.i33
  %i.ep = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.pre53.pre) #39 ; 3 uses
  store ptr %i.ep, ptr %i.ap, align 8, !tbaa !916
  %i.eq = load ptr, ptr %i.ay, align 8, !tbaa !916
  %.not.i.i.i34 = icmp eq ptr %i.ep, %i.eq
  br i1 %.not.i.i.i34, label %_ZN4llvm4bolt14FilterIteratorINS_16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_13BinarySectionEES4_EESt8functionIFbRKS7_EEEppEv.exit, label %.lr.ph.i.i.i31, !llvm.loop !24

_ZN4llvm4bolt14FilterIteratorINS_16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_13BinarySectionEES4_EESt8functionIFbRKS7_EEEppEv.exit: ; preds = %_ZNKSt8functionIFbRKN4llvm16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_4bolt13BinarySectionEES4_EEEEclES9_.exit.i.i.i33, %bb.w, %_ZN4llvm4bolt15RewriteInstance17getPLTSectionInfoENS_9StringRefE.exit.thread
  %i.er = phi ptr [ %i.ek, %_ZN4llvm4bolt15RewriteInstance17getPLTSectionInfoENS_9StringRefE.exit.thread ], [ %.pre53.pre, %_ZNKSt8functionIFbRKN4llvm16pointee_iteratorISt23_Rb_tree_const_iteratorIPNS0_4bolt13BinarySectionEES4_EEEEclES9_.exit.i.i.i33 ], [ %i.ep, %bb.w ] ; 2 uses
  %i.es = load ptr, ptr %i.ar, align 8, !tbaa !916
  %.not = icmp eq ptr %i.er, %i.es
  br i1 %.not, label %._crit_edge.loopexit, label %bb.i
}

declare noundef ptr @_ZN4llvm4bolt13BinaryContext26getBinaryFunctionAtAddressEm(ptr noundef nonnull align 8 dereferenceable(2268), i64 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm4bolt13BinaryContext34getBinaryFunctionContainingAddressEmbb(ptr noundef nonnull align 8 dereferenceable(2268), i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm4bolt15RewriteInstance24adjustFunctionBoundariesERNS_8DenseMapImNS0_13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Expected.900", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !483  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !451  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  %.not119132 = icmp eq ptr %i.d, %i.e
  br i1 %.not119132, label %._crit_edge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %.sroa.2.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit

._crit_edge:                                      ; preds = %bb.ac, %bb.a
  ret void

_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit: ; preds = %.lr.ph134, %bb.ac
  %.sroa.0109.0133 = phi ptr [ %i.d, %.lr.ph134 ], [ %i.gk, %bb.ac ] ; 11 uses
  %5 = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0109.0133) #39 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 40 ; 4 uses
  %.not120 = icmp eq ptr %5, %i.e                 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 40
  %spec.select = select i1 %.not120, ptr null, ptr %i.n ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 104 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !895
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !450  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not10.i.i.i, label %.thread.thread, label %.lr.ph.i.i.i

.thread.thread:                                   ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit
  %i.r = getelementptr inbounds nuw i8, ptr %spec.select, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1036 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load i64, ptr %i.u, align 8, !tbaa !918
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.x = load i64, ptr %i.w, align 8, !tbaa !899
  %i.y = add i64 %i.x, %i.v
  br label %bb.k

.lr.ph.i.i.i:                                     ; preds = %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.q, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.g, %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit ]
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !444
  %i.ab = icmp ult i64 %i.p, %i.aa                ; 2 uses
  %.19.i.i.i = select i1 %i.ab, ptr %.012.i.i.i, ptr %.0811.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.ab, i64 16, i64 24
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !872 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8multimapImN4llvm6object9SymbolRefESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !40

_ZNSt8multimapImN4llvm6object9SymbolRefESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit: ; preds = %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %spec.select, i64 64 ; 3 uses
  %.not121126 = icmp eq ptr %.19.i.i.i, %i.g
  br i1 %.not121126, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt8multimapImN4llvm6object9SymbolRefESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit, %bb.i
  %.sroa.096.0127 = phi ptr [ %i.cl, %bb.i ], [ %.19.i.i.i, %_ZNSt8multimapImN4llvm6object9SymbolRefESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.096.0127, i64 32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.096.0127, i64 40 ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !871
  %.sroa.092.0.copyload = load i64, ptr %i.ae, align 8
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.096.0127, i64 48 ; 2 uses
  %.sroa.493.0.copyload = load ptr, ptr %.sroa.493.0..sroa_idx, align 8 ; 2 uses
  %i.ag = load ptr, ptr %.sroa.493.0.copyload, align 8, !tbaa !168
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 456
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.493.0.copyload, i64 %.sroa.092.0.copyload) #35, !inline_history !14
  br i1 %.not120, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !895
  %.not39 = icmp ult i64 %i.af, %i.ak
  br i1 %.not39, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.al = call noundef zeroext i1 @_ZNK4llvm4bolt14BinaryFunction20isSymbolValidInScopeERKNS_6object9SymbolRefEm(ptr noundef nonnull align 8 dereferenceable(1360) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 noundef %i.aj) #35
  br i1 %i.al, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !483
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1528
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !877 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 88
  %.sroa.0.0.copyload.i49 = load ptr, ptr %i.ap, align 8, !tbaa !443
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 96
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !444 ; 3 uses
  %i.aq = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.aq, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread116, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load ptr, ptr %.sroa.493.0..sroa_idx, align 8, !tbaa !835, !noalias !2401 ; 2 uses
  %.sroa.0.0.copyload.i.i50 = load i64, ptr %i.ae, align 8, !tbaa !186, !noalias !2401
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !168, !noalias !2401
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !noalias !2401
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.900") align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 %.sroa.0.0.copyload.i.i50) #35, !inline_history !10
  %.sroa.2.0.copyload.i53 = load i64, ptr %.sroa.2.0..sroa_idx.i52, align 8, !tbaa !444
  %.not.i = icmp ult i64 %.sroa.2.0.copyload.i53, %.sroa.2.0.copyload.i
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread116, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.e
  %.sroa.0.0.copyload.i51 = load ptr, ptr %4, align 8, !tbaa !443
  %bcmp.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i51, ptr %.sroa.0.0.copyload.i49, i64 %.sroa.2.0.copyload.i)
  %i.av = icmp eq i32 %bcmp.i, 0
  br i1 %i.av, label %bb.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread116, !llvm.loop !2391

_ZNK4llvm9StringRef11starts_withES0_.exit.thread116: ; preds = %bb.e, %bb.d, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.aw = load ptr, ptr %1, align 8, !tbaa !906, !noalias !2402 ; 3 uses
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !907, !noalias !2402 ; 2 uses
  %i.ay = load i32, ptr %i.i, align 4, !tbaa !908, !noalias !2402 ; 4 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %.loopexit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread116
  %i.ba = add i32 %i.ay, -1                       ; 2 uses
  %i.bb = load i64, ptr %i.ad, align 8, !tbaa !444, !noalias !2403 ; 2 uses
  %i.bc = mul i64 %i.bb, -4658895280553007687     ; 2 uses
  %i.bd = lshr i64 %i.bc, 31
  %i.be = xor i64 %i.bd, %i.bc
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.ba, %i.bf                    ; 3 uses
  %i.bh = zext i32 %i.bg to i64                   ; 2 uses
  %i.bi = lshr i64 %i.bh, 5
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !481, !noalias !2403
  %i.bl = and i32 %i.bg, 31
  %i.bm = lshr i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i1
  br i1 %i.bn, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !1078

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %bb.g
  %i.bo = phi i64 [ %i.bu, %bb.g ], [ %i.bh, %bb.f ]
  %.017.i.i.i.i = phi i32 [ %i.bt, %bb.g ], [ %i.bg, %bb.f ]
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bo ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !444, !noalias !2403
  %i.br = icmp eq i64 %i.bb, %i.bq
  br i1 %i.br, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit, label %bb.g, !prof !839

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bs = add nuw i32 %.017.i.i.i.i, 1
  %i.bt = and i32 %i.bs, %i.ba                    ; 3 uses
  %i.bu = zext i32 %i.bt to i64                   ; 2 uses
  %i.bv = lshr i64 %i.bu, 5
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !481, !noalias !2403
  %i.by = and i32 %i.bt, 31
  %i.bz = lshr i32 %i.bx, %i.by
  %i.ca = trunc i32 %i.bz to i1
  br i1 %i.ca, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !1079

.loopexit.i.i:                                    ; preds = %bb.g, %bb.f, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread116
  %i.cb = zext i32 %i.ay to i64                   ; 2 uses
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.cb
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.ay to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit ], [ %i.cb, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.bp, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit.loopexit ], [ %i.cc, %.loopexit.i.i ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %.pre-phi
  %i.ce = icmp eq ptr %.lcssa.sink.i.i, %i.cd
  br i1 %i.ce, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !911
  %.not40 = icmp eq i8 %i.cg, 2
  br i1 %.not40, label %bb.i, label %.critedge

.critedge:                                        ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_4bolt13MarkerSymTypeENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS3_EEEEmS3_S5_S8_E4findERKm.exit, %bb.h
  %i.ch = load i64, ptr %i.ad, align 8, !tbaa !871
  %i.ci = load i64, ptr %i.o, align 8, !tbaa !895
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = call noundef ptr @_ZN4llvm4bolt14BinaryFunction21addEntryPointAtOffsetEm(ptr noundef nonnull align 8 dereferenceable(1360) %6, i64 noundef %i.cj) #35 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.cl = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.096.0127) #39 ; 3 uses
  %.not121 = icmp eq ptr %i.cl, %i.g
  br i1 %.not121, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.i, %bb.b, %bb.c, %_ZNSt8multimapImN4llvm6object9SymbolRefESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit
  %.sroa.096.0.lcssa = phi ptr [ %.19.i.i.i, %_ZNSt8multimapImN4llvm6object9SymbolRefESt4lessImESaISt4pairIKmS2_EEE11upper_boundERS6_.exit ], [ %.sroa.096.0127, %bb.b ], [ %i.cl, %bb.i ], [ %.sroa.096.0127, %bb.c ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1036 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !918
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 80
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !899
  %i.cs = add i64 %i.cr, %i.cp                    ; 2 uses
  %.not122 = icmp eq ptr %.sroa.096.0.lcssa, %i.g
  br i1 %.not122, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.096.0.lcssa, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !444
  %.sroa.speculated76 = call i64 @llvm.umin.i64(i64 %i.cs, i64 %i.cu)
  br label %bb.k

bb.k:                                             ; preds = %.thread.thread, %bb.j, %.thread
  %i.cv = phi ptr [ %i.ac, %bb.j ], [ %i.ac, %.thread ], [ %i.r, %.thread.thread ]
  %.0114 = phi i64 [ %.sroa.speculated76, %bb.j ], [ %i.cs, %.thread ], [ %i.y, %.thread.thread ] ; 2 uses
  br i1 %.not120, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !895
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0114, i64 %i.cw)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1115 = phi i64 [ %.0114, %bb.k ], [ %.sroa.speculated, %bb.l ]
  %i.cx = load i64, ptr %i.o, align 8, !tbaa !895
  %i.cy = sub i64 %.1115, %i.cx                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 112 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !898 ; 2 uses
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !483
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 1616
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !779, !nonnull !177, !align !770 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !462
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !463 ; 2 uses
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ult i64 %i.dl, 54
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.de, ptr noundef nonnull @.str.228, i64 noundef 54) #35
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.di, ptr noundef nonnull align 1 dereferenceable(54) @.str.228, i64 54, i1 false)
  %i.do = load ptr, ptr %i.dh, align 8, !tbaa !463
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 54
  store ptr %i.dp, ptr %i.dh, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.o, %bb.p
  %.0.i.i = phi ptr [ %i.dn, %bb.o ], [ %i.de, %bb.p ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1360) %6)
  %i.dq = load ptr, ptr %3, align 8, !tbaa !185
  %i.dr = load i64, ptr %i.l, align 8, !tbaa !332
  %i.ds = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef %i.dq, i64 noundef %i.dr) #35 ; 0 uses
  %i.dt = load ptr, ptr %3, align 8, !tbaa !185   ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.m
  br i1 %i.du, label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.dv = load i64, ptr %i.m, align 8, !tbaa !186
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #36
  br label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit

_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !462
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !463 ; 2 uses
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp ult i64 %i.ed, 12
  br i1 %i.ee, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit
  %i.ef = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull @.str.229, i64 noundef 12) #35 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

bb.r:                                             ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.ea, ptr noundef nonnull align 1 dereferenceable(12) @.str.229, i64 12, i1 false)
  %i.eg = load ptr, ptr %i.dz, align 8, !tbaa !463
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store ptr %i.eh, ptr %i.dz, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

_ZN4llvm11raw_ostreamlsEPKc.exit59:               ; preds = %bb.q, %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 344
  store i8 0, ptr %i.ei, align 8, !tbaa !900
  %i.ej = load i64, ptr %i.cz, align 8, !tbaa !898
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 136
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !922
  br label %bb.ac

bb.s:                                             ; preds = %bb.m
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 136 ; 3 uses
  store i64 %i.cy, ptr %i.el, align 8, !tbaa !922
  %.not42 = icmp eq i64 %i.da, 0
  br i1 %.not42, label %bb.t, label %bb.ac

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0109.0133, i64 344
  %i.en = load i8, ptr %i.em, align 8, !tbaa !900, !range !176, !noundef !177
  %i.eo = trunc nuw i8 %i.en to i1
  br i1 %i.eo, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.ep = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4opts9VerbosityE, i64 120), align 8, !tbaa !831
  %.not43 = icmp eq i32 %i.ep, 0
  br i1 %.not43, label %_ZN4llvm11raw_ostreamlsEPKc.exit71, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !483
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 1608
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !769, !nonnull !177, !align !770 ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !462
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !463 ; 2 uses
  %i.ex = ptrtoint ptr %i.eu to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ult i64 %i.ez, 36
  br i1 %i.fa, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.es, ptr noundef nonnull @.str.230, i64 noundef 36) #35
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.ew, ptr noundef nonnull align 1 dereferenceable(36) @.str.230, i64 36, i1 false)
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !463
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 36
  store ptr %i.fd, ptr %i.ev, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.w, %bb.x
  %.0.i.i61 = phi ptr [ %i.fb, %bb.w ], [ %i.es, %bb.x ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZNK4llvm4bolt14BinaryFunction12getPrintNameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(1360) %6)
  %i.fe = load ptr, ptr %2, align 8, !tbaa !185
  %i.ff = load i64, ptr %i.j, align 8, !tbaa !332
  %i.fg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i61, ptr noundef %i.fe, i64 noundef %i.ff) #35 ; 0 uses
  %i.fh = load ptr, ptr %2, align 8, !tbaa !185   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.k
  br i1 %i.fi, label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.fj = load i64, ptr %i.k, align 8, !tbaa !186
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #36
  br label %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit65

_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit65: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.fl = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !462
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i61, i64 32 ; 3 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !463 ; 2 uses
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = icmp ult i64 %i.fr, 4
  br i1 %i.fs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit65
  %i.ft = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i61, ptr noundef nonnull @.str.231, i64 noundef 4) #35
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.z:                                             ; preds = %_ZN4llvm4boltlsERNS_11raw_ostreamERKNS0_14BinaryFunctionE.exit65
  store i32 544175136, ptr %i.fo, align 1
  %i.fu = load ptr, ptr %i.fn, align 8, !tbaa !463
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store ptr %i.fv, ptr %i.fn, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

_ZN4llvm11raw_ostreamlsEPKc.exit68:               ; preds = %bb.y, %bb.z
  %.0.i.i67 = phi ptr [ %i.ft, %bb.y ], [ %.0.i.i61, %bb.z ]
  %i.fw = load i64, ptr %i.el, align 8, !tbaa !922
  %i.fx = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i67, i64 noundef %i.fw) #35 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !462
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 3 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !463 ; 2 uses
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = icmp ult i64 %i.ge, 9
  br i1 %i.gf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  %i.gg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fx, ptr noundef nonnull @.str.232, i64 noundef 9) #35 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.gb, ptr noundef nonnull align 1 dereferenceable(9) @.str.232, i64 9, i1 false)
  %i.gh = load ptr, ptr %i.ga, align 8, !tbaa !463
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 9
  store ptr %i.gi, ptr %i.ga, align 8, !tbaa !463
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit71

_ZN4llvm11raw_ostreamlsEPKc.exit71:               ; preds = %bb.ab, %bb.aa, %bb.u
  %i.gj = load i64, ptr %i.el, align 8, !tbaa !922
  store i64 %i.gj, ptr %i.cz, align 8, !tbaa !898
  br label %bb.ac

bb.ac:                                            ; preds = %bb.s, %bb.t, %_ZN4llvm11raw_ostreamlsEPKc.exit71, %_ZN4llvm11raw_ostreamlsEPKc.exit59
  %i.gk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0109.0133) #39 ; 2 uses
  %.not119 = icmp eq ptr %i.gk, %i.e
  br i1 %.not119, label %._crit_edge, label %_ZSt9__advanceISt17_Rb_tree_iteratorISt4pairIKmN4llvm4bolt14BinaryFunctionEEElEvRT_T0_St26bidirectional_iterator_tag.exit, !llvm.loop !2400
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt14BinaryFunction16markCodeAtOffsetEm(ptr noundef nonnull align 8 dereferenceable(1360) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !444
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !921  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(472) ptr @_Znwm(i64 noundef 472) #37, !noalias !2406 ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %i.d, i8 0, i64 464, i1 false), !noalias !2406
  store ptr %i.e, ptr %i.f, align 8, !tbaa !451, !noalias !2406
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.g, align 16, !tbaa !452, !noalias !2406
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.h, ptr %i.i, align 8, !tbaa !451, !noalias !2406
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.h, ptr %i.j, align 16, !tbaa !452, !noalias !2406
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.k, ptr %i.l, align 8, !tbaa !451, !noalias !2406
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.k, ptr %i.m, align 16, !tbaa !452, !noalias !2406
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr null, ptr %i.o, align 8, !tbaa !450, !noalias !2406
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr %i.n, ptr %i.p, align 16, !tbaa !451, !noalias !2406
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.n, ptr %i.q, align 8, !tbaa !452, !noalias !2406
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr %i.s, ptr %i.r, align 8, !tbaa !178, !noalias !2406
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store i32 4, ptr %i.t, align 16, !tbaa !1080, !noalias !2406
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i8 1, ptr %i.u, align 8, !tbaa !175, !noalias !2406
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 312 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.v, i8 0, i64 48, i1 false), !noalias !2406
  store ptr %i.w, ptr %i.x, align 8, !tbaa !451, !noalias !2406
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store ptr %i.w, ptr %i.y, align 16, !tbaa !452, !noalias !2406
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 360 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !451, !noalias !2406
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  store ptr %i.z, ptr %i.ab, align 16, !tbaa !452, !noalias !2406
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  store ptr %i.ad, ptr %i.ac, align 16, !tbaa !178, !noalias !2406
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  store i32 1, ptr %i.ae, align 8, !tbaa !1080, !noalias !2406
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  store i8 1, ptr %i.af, align 16, !tbaa !175, !noalias !2406
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  store ptr %i.ah, ptr %i.ag, align 16, !tbaa !180, !noalias !2406
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 444
  store i32 1, ptr %i.ai, align 4, !tbaa !347, !noalias !2406
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false), !noalias !2406
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !921 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !921
  %.not.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm4bolt14BinaryFunction10IslandInfoEEclEPS3_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm4bolt14BinaryFunction10IslandInfoEEclEPS3_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZN4llvm4bolt14BinaryFunction10IslandInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %i.ak) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef 472) #36
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !921
  br label %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4llvm4bolt14BinaryFunction10IslandInfoEEclEPS3_.exit.i.i.i.i, %bb.a
  %i.al = phi ptr [ %i.d, %bb.b ], [ %.pre, %_ZNKSt14default_deleteIN4llvm4bolt14BinaryFunction10IslandInfoEEclEPS3_.exit.i.i.i.i ], [ %i.c, %bb.a ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = call { ptr, i8 } @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE17_M_emplace_uniqueIJRmEEESt4pairISt17_Rb_tree_iteratorImEbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm4bolt14BinaryFunction16markDataAtOffsetEm(ptr noundef nonnull align 8 dereferenceable(1360) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !444
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !921  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN4llvm4bolt14BinaryFunction10IslandInfoESt14default_deleteIS3_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(472) ptr @_Znwm(i64 noundef 472) #37, !noalias !2409 ; 35 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %i.d, i8 0, i64 464, i1 false), !noalias !2409
  store ptr %i.e, ptr %i.f, align 8, !tbaa !451, !noalias !2409
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.e, ptr %i.g, align 16, !tbaa !452, !noalias !2409
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store ptr %i.h, ptr %i.i, align 8, !tbaa !451, !noalias !2409
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.h, ptr %i.j, align 16, !tbaa !452, !noalias !2409
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store ptr %i.k, ptr %i.l, align 8, !tbaa !451, !noalias !2409
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.k, ptr %i.m, align 16, !tbaa !452, !noalias !2409
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  store ptr null, ptr %i.o, align 8, !tbaa !450, !noalias !2409
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  store ptr %i.n, ptr %i.p, align 16, !tbaa !451, !noalias !2409
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  store ptr %i.n, ptr %i.q, align 8, !tbaa !452, !noalias !2409
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store ptr %i.s, ptr %i.r, align 8, !tbaa !178, !noalias !2409
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store i32 4, ptr %i.t, align 16, !tbaa !1080, !noalias !2409
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  store i8 1, ptr %i.u, align 8, !tbaa !175, !noalias !2409
end_hunk_0
