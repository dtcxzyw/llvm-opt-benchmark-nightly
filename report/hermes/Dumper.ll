inline.NumInlined: 1690
inline.NumDeleted: 895
begin_hunk_0_@_ZN6hermes9IRPrinter17printVariableNameEPNS_8VariableE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9IRPrinter19printFunctionHeaderEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZNK6hermes8Function20getDefinitionKindStrB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(304) %1, i1 noundef zeroext false) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75, !nonnull !39, !align !76
  %i.c = load ptr, ptr %2, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.b, ptr noundef %i.c, i64 noundef %i.e) #15 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.f, ptr noundef nonnull @.str.3, i64 noundef 1) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 32, ptr %i.j, align 1
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.i, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  call void @_ZN6hermes9IRPrinter17printFunctionNameEPNS_8FunctionENS0_19PrintFunctionParamsE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1, i32 noundef 1)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 18
  %.sroa.0.0.copyload.i = load i32, ptr %i.o, align 2
  %i.p = load ptr, ptr %0, align 8, !tbaa !151
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 %.sroa.0.0.copyload.i) #15
  %i.s = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !17
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

declare void @_ZNK6hermes8Function20getDefinitionKindStrB5cxx11Eb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(304), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9IRPrinter22printFunctionVariablesEPNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !182, !range !38, !noundef !39
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_ZN4llvh11raw_ostreamlsEPKc.exit27

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304) %1) #15 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !183  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !184  ; 2 uses
  %.not32 = icmp eq ptr %i.i, %i.k
  br i1 %.not32, label %_ZN4llvh11raw_ostreamlsEPKc.exit27, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.m = trunc nuw i8 %.116 to i1
  br i1 %i.m, label %_ZN4llvh11raw_ostreamlsEPKc.exit27, label %bb.n

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %.035 = phi i8 [ 0, %.lr.ph ], [ %.2, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 3 uses
  %.01534 = phi i8 [ 1, %.lr.ph ], [ %.116, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 2 uses
  %.sroa.028.033 = phi ptr [ %i.i, %.lr.ph ], [ %i.ax, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.028.033, align 8, !tbaa !187 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.p = load i8, ptr %i.o, align 8, !tbaa !189, !range !38, !noundef !39
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.c
  %i.r = trunc nuw i8 %.01534 to i1
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !75, !nonnull !39, !align !76 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !80   ; 3 uses
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %i.z, 11
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.s, ptr noundef nonnull @.str.18, i64 noundef 11) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.w, ptr noundef nonnull align 1 dereferenceable(11) @.str.18, i64 11, i1 false)
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.d
  %i.ae = icmp ult i64 %i.z, 2
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.s, ptr noundef nonnull @.str.19, i64 noundef 2) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %bb.h
  store i16 8236, ptr %i.w, align 1
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.j, %bb.i, %bb.g, %bb.f
  %.1 = phi i8 [ 1, %bb.g ], [ 1, %bb.f ], [ %.035, %bb.j ], [ %.035, %bb.i ] ; 3 uses
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !75, !nonnull !39, !align !76 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !192
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.sroa.0.0.copyload.i21 = load ptr, ptr %i.al, align 8, !tbaa !101 ; 2 uses
  %.sroa.0.0.copyload.i22 = load ptr, ptr %.sroa.0.0.copyload.i21, align 8, !tbaa !100 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i21, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !77
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !80 ; 2 uses
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ugt i64 %.sroa.2.0.copyload.i, %i.as
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.au = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ai, ptr noundef %.sroa.0.0.copyload.i22, i64 noundef %.sroa.2.0.copyload.i) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.l:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %.sroa.0.0.copyload.i22, i64 %.sroa.2.0.copyload.i, i1 false)
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sroa.2.0.copyload.i
  store ptr %i.aw, ptr %i.ao, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.m, %bb.l, %bb.k, %bb.c
  %.116 = phi i8 [ %.01534, %bb.c ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ] ; 2 uses
  %.2 = phi i8 [ %.035, %bb.c ], [ %.1, %bb.k ], [ %.1, %bb.l ], [ %.1, %bb.m ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.028.033, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

bb.n:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !75, !nonnull !39, !align !76 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !77
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !80 ; 2 uses
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bf = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.az, ptr noundef nonnull @.str.6, i64 noundef 1) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

bb.p:                                             ; preds = %bb.n
  store i8 93, ptr %i.bd, align 1
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit27

_ZN4llvh11raw_ostreamlsEPKc.exit27:               ; preds = %bb.b, %bb.p, %bb.o, %._crit_edge, %bb.a
  %.3 = phi i8 [ 0, %bb.a ], [ %.2, %._crit_edge ], [ %.2, %bb.o ], [ %.2, %bb.p ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 %.3, ptr %i.a, align 1, !tbaa !193
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !153
  call fastcc void @"_ZN6hermes8Function16forEachScopeImplIZNS_9IRPrinter22printFunctionVariablesEPS0_E3$_0EEvS3_PNS_9ScopeDescET_"(ptr noundef nonnull readonly align 8 dereferenceable(304) %1, ptr noundef %i.bj, ptr nonnull %i.a, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

declare noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes8Function10getContextEv(ptr noundef nonnull align 8 dereferenceable(304)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9IRPrinter27printInstructionDestinationEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75, !nonnull !39, !align !76 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull @.str.14, i64 noundef 1) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 37, ptr %i.g, align 1
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store ptr %i.k, ptr %i.f, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.i, %bb.b ], [ %i.c, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = icmp eq ptr %1, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %spec.select = select i1 %i.m, ptr null, ptr %i.n ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %spec.select, ptr %i.a, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i.i, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.p, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.q, %_ZN4llvh11raw_ostreamlsEPKc.exit ]
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = icmp ult ptr %i.s, %spec.select          ; 2 uses
  %.19.i.i.i.i = select i1 %i.t, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.t, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !70 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !71

_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = icmp eq ptr %.19.i.i.i.i, %i.q
  br i1 %i.u, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i

_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i: ; preds = %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.x = icmp ult ptr %spec.select, %i.w
  br i1 %i.x, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !72
  br label %_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit

_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i: ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.i, %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS4_.exit.i.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !63
  %i.ac = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_(ptr noundef nonnull align 8 dereferenceable(52) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !63 ; 2 uses
  %i.ae = add i32 %i.ad, 1
  store i32 %i.ae, ptr %i.aa, align 8, !tbaa !63
  br label %_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit

_ZN6hermes16InstructionNamer9getNumberEPNS_5ValueE.exit: ; preds = %bb.d, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i
  %.0.i = phi i32 [ %i.z, %bb.d ], [ %i.ad, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE4findERS6_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = zext i32 %.0.i to i64
  %i.ag = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, i64 noundef %i.af) #15 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9IRPrinter16printInstructionEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %3 = alloca %"struct.std::pair.208", align 8    ; 3 uses
  %4 = alloca %"struct.hermes::CodeGenerationSettings", align 8 ; 58 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.llvh::DenseSet", align 8    ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !151
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !80   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 3
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.g, ptr noundef nonnull @.str.20, i64 noundef 3) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @.str.20, i64 3, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  store ptr %i.r, ptr %i.j, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 3 uses
  %i.t = tail call { ptr, i64 } @_ZN6hermes11Instruction7getNameEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #15 ; 2 uses
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.t, 1        ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !80   ; 2 uses
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ugt i64 %i.v, %i.ac
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.ae = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.s, ptr noundef %i.u, i64 noundef %i.v) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.u, i64 %i.v, i1 false)
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.v
  store ptr %i.ag, ptr %i.y, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.d, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !81
  switch i8 %i.ai, label %_ZN4llvh11raw_ostreamlsEPKc.exit81 [
    i8 34, label %bb.g
    i8 86, label %bb.o
    i8 26, label %bb.w
  ]

bb.g:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !75, !nonnull !39, !align !76 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !80 ; 2 uses
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = icmp ult i64 %i.aq, 2
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.as = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aj, ptr noundef nonnull @.str.21, i64 noundef 2) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit75

bb.i:                                             ; preds = %bb.g
  store i16 10016, ptr %i.an, align 1
  %i.at = load ptr, ptr %i.am, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store ptr %i.au, ptr %i.am, align 8, !tbaa !80
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit75

_ZN4llvh11raw_ostreamlsEPKc.exit75:               ; preds = %bb.h, %bb.i
  %.0.i.i74 = phi ptr [ %i.as, %bb.h ], [ %i.aj, %bb.i ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !194
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr @_ZN6hermes18BinaryOperatorInst12opStringReprE, i64 %i.ax
end_hunk_0
