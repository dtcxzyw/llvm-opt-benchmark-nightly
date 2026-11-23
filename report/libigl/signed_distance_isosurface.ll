Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZN3igl17WindingNumberTreeIdiED2Ev:bb.a
  %.not.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = add nsw i32 %i.v, -1
  store i32 %i.ae, ptr %i.s, align 8, !tbaa !215
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.af = atomicrmw volatile add ptr %i.s, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.v, %bb.h ], [ %i.af, %bb.i ]
  %i.ag = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ag, label %bb.j, label %_ZNSt12__shared_ptrIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !259

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r) #38
  br label %_ZNSt12__shared_ptrIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN3igl17WindingNumberTreeIdiE15delete_childrenEv.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !207
  tail call void @free(ptr noundef %i.ai) #38
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !131 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.aj, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIPN3igl17WindingNumberTreeIdiEESaIS4_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt12__shared_ptrIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %i.aj, %_ZNSt12__shared_ptrIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.ak = load ptr, ptr %.09.i.i, align 8, !tbaa !131 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 24) #43
  %.not.i.i1 = icmp eq ptr %i.ak, %i.a
  br i1 %.not.i.i1, label %_ZNSt7__cxx1110_List_baseIPN3igl17WindingNumberTreeIdiEESaIS4_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !12

_ZNSt7__cxx1110_List_baseIPN3igl17WindingNumberTreeIdiEESaIS4_EED2Ev.exit: ; preds = %.lr.ph.i.i, %_ZNSt12__shared_ptrIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl17WindingNumberTreeIdiED0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3igl17WindingNumberTreeIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) #38
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 168) #43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3igl17WindingNumberTreeIdiE4growEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3igl17WindingNumberTreeIdiE6insideERKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl17WindingNumberTreeIdiE22max_abs_winding_numberERKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret double +inf
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl17WindingNumberTreeIdiE29max_simple_abs_winding_numberERKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret double +inf
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK3igl17WindingNumberTreeIdiE21cached_winding_numberERKS1_RKN5Eigen6MatrixIdLi1ELi3ELi1ELi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple", align 8        ; 4 uses
  %4 = alloca %"class.std::tuple.224", align 1    ; 3 uses
  %5 = alloca %"class.std::tuple", align 8        ; 4 uses
  %6 = alloca %"class.std::tuple.224", align 1    ; 3 uses
  %7 = alloca %"struct.std::pair.204", align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load double, ptr %i.a, align 8, !tbaa !132 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load double, ptr %i.c, align 8, !tbaa !132 ; 2 uses
  %i.e = fcmp olt double %i.b, %i.d
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = fsub double %i.d, %i.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !89
  %i.j = load <2 x double>, ptr %i.h, align 8, !tbaa !89
  %i.k = fsub <2 x double> %i.i, %i.j             ; 2 uses
  %i.l = fmul <2 x double> %i.k, %i.k             ; 2 uses
  %shift = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.l, %shift
  %i.m = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load double, ptr %i.n, align 8, !tbaa !93
  %i.q = load double, ptr %i.o, align 8, !tbaa !93
  %i.r = fsub double %i.p, %i.q                   ; 2 uses
  %i.s = fmul double %i.r, %i.r
  %i.t = fadd double %i.m, %i.s
  %.scalar.i = tail call noundef double @llvm.sqrt.f64(double %i.t)
  %i.u = tail call double @atan2(double noundef %i.f, double noundef %.scalar.i) #38
  %i.v = fcmp olt double %i.u, f0x3FD921FB54442D18
  br i1 %i.v, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %0, ptr %7, align 8, !tbaa !315
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %1, ptr %i.w, align 8, !tbaa !316
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 16), align 8, !tbaa !175 ; 4 uses
  %.not11.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not11.i.i.i, label %bb.g, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i
  %.013.i.i.i = phi ptr [ %.1.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i ], [ %i.x, %bb.c ] ; 5 uses
  %.0812.i.i.i = phi ptr [ %.19.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8), %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !315  ; 2 uses
  %i.aa = icmp ult ptr %i.z, %0
  br i1 %i.aa, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.ab = icmp ult ptr %0, %i.z
  br i1 %i.ab, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !316
  %i.ae = icmp ult ptr %i.ad, %1
  br i1 %i.ae, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i, %bb.d
  %.sink.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i ], [ 16, %bb.d ], [ 16, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i ]
  %.19.i.i.i = phi ptr [ %.0812.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i ], [ %.013.i.i.i, %bb.d ], [ %.013.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 %.sink.i.i.i
  %.1.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !317 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !951

_ZNKSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i
  %i.ag = icmp eq ptr %.19.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8)
  br i1 %i.ag, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNKSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !315 ; 2 uses
  %i.aj = icmp ult ptr %0, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp ult ptr %i.ai, %0
  br i1 %i.ak, label %_ZNKSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE5countERS9_.exit, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i: ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !316
  %i.an = icmp ult ptr %1, %i.am
  br i1 %i.an, label %bb.g, label %_ZNKSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE5countERS9_.exit

bb.g:                                             ; preds = %bb.c, %_ZNKSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i, %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !139
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ar = tail call noundef double @_ZN3igl14winding_numberIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEENT_6ScalarERKNS1_10MatrixBaseIS6_EERKNS8_IT0_EERKNS8_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef nonnull align 1 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 16), align 8, !tbaa !175 ; 4 uses
  %.not11.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not11.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i ], [ %i.as, %bb.g ] ; 5 uses
  %.0812.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8), %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !315 ; 2 uses
  %i.av = icmp ult ptr %i.au, %0
  br i1 %i.av, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aw = icmp ult ptr %0, %i.au
  br i1 %i.aw, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !316
  %i.az = icmp ult ptr %i.ay, %1
  br i1 %i.az, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  br label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i, %bb.h
  %.sink.i.i.i.i = phi i64 [ 24, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i ], [ 16, %bb.h ], [ 16, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i ]
  %.19.i.i.i.i = phi ptr [ %.0812.i.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i ], [ %.013.i.i.i.i, %bb.h ], [ %.013.i.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i ] ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 %.sink.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %i.ba, align 8, !tbaa !317 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !952

_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i
  %i.bb = icmp eq ptr %.19.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8)
  br i1 %i.bb, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !315 ; 2 uses
  %i.be = icmp ult ptr %0, %i.bd
  br i1 %i.be, label %.critedge.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp ult ptr %i.bd, %0
  br i1 %i.bf, label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i: ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !316
  %i.bi = icmp ult ptr %1, %i.bh
  br i1 %i.bi, label %.critedge.i, label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit

.critedge.i:                                      ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i, %bb.i, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i, %bb.g
  %.08.lcssa.i.i.i11.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8), %bb.g ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i ], [ %.19.i.i.i.i, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %7, ptr %5, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.bj = call ptr @_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl17WindingNumberTreeIdiE6cachedE, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %.pre.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 16), align 8, !tbaa !175
  br label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit

_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit: ; preds = %bb.j, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i, %.critedge.i
  %.pre = phi ptr [ %.pre.pre, %.critedge.i ], [ %i.as, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i ], [ %i.as, %bb.j ]
  %.sroa.06.0.i = phi ptr [ %i.bj, %.critedge.i ], [ %.19.i.i.i.i, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i ], [ %.19.i.i.i.i, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  store double %i.ar, ptr %i.bk, align 8, !tbaa !93
  br label %_ZNKSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE5countERS9_.exit

_ZNKSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE5countERS9_.exit: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i, %bb.f, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit
  %i.bl = phi ptr [ %i.x, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i ], [ %i.x, %bb.f ], [ %.pre, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit ] ; 2 uses
  %.not11.i.i.i.i19 = icmp eq ptr %i.bl, null
  br i1 %.not11.i.i.i.i19, label %.critedge.i32, label %.lr.ph.i.i.i.i20

.lr.ph.i.i.i.i20:                                 ; preds = %_ZNKSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE5countERS9_.exit
  %i.bm = load ptr, ptr %7, align 8, !tbaa !315   ; 4 uses
  %i.bn = load ptr, ptr %i.w, align 8             ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24, %.lr.ph.i.i.i.i20
  %.013.i.i.i.i21 = phi ptr [ %i.bl, %.lr.ph.i.i.i.i20 ], [ %.1.i.i.i.i27, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24 ] ; 5 uses
  %.0812.i.i.i.i22 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8), %.lr.ph.i.i.i.i20 ], [ %.19.i.i.i.i26, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i21, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !315 ; 2 uses
  %i.bq = icmp ult ptr %i.bp, %i.bm
  br i1 %i.bq, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i34, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = icmp ult ptr %i.bm, %i.bp
  br i1 %i.br, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i23

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i23: ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i21, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !316
  %i.bu = icmp ult ptr %i.bt, %i.bn
  br i1 %i.bu, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i34, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i34: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i23, %bb.k
  br label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i34, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i23, %bb.l
  %.sink.i.i.i.i25 = phi i64 [ 24, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i34 ], [ 16, %bb.l ], [ 16, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i23 ]
  %.19.i.i.i.i26 = phi ptr [ %.0812.i.i.i.i22, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread.i.i.i.i34 ], [ %.013.i.i.i.i21, %bb.l ], [ %.013.i.i.i.i21, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i.i.i.i23 ] ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i21, i64 %.sink.i.i.i.i25
  %.1.i.i.i.i27 = load ptr, ptr %i.bv, align 8, !tbaa !317 ; 2 uses
  %.not.i.i.i.i28 = icmp eq ptr %.1.i.i.i.i27, null
  br i1 %.not.i.i.i.i28, label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i29, label %bb.k, !llvm.loop !952

_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i29: ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread10.i.i.i.i24
  %i.bw = icmp eq ptr %.19.i.i.i.i26, getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8)
  br i1 %i.bw, label %.critedge.i32, label %bb.m

bb.m:                                             ; preds = %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i29
  %i.bx = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i26, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !315 ; 2 uses
  %i.bz = icmp ult ptr %i.bm, %i.by
  br i1 %i.bz, label %.critedge.i32, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = icmp ult ptr %i.by, %i.bm
  br i1 %i.ca, label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit35, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i30

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i30: ; preds = %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i26, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !316
  %i.cd = icmp ult ptr %i.bn, %i.cc
  br i1 %i.cd, label %.critedge.i32, label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit35

.critedge.i32:                                    ; preds = %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i30, %bb.m, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i29, %_ZNKSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE5countERS9_.exit
  %.08.lcssa.i.i.i11.i33 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN3igl17WindingNumberTreeIdiE6cachedE, i64 8), %_ZNKSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE5countERS9_.exit ], [ %.19.i.i.i.i26, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i30 ], [ %.19.i.i.i.i26, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEE11lower_boundERS9_.exit.i29 ], [ %.19.i.i.i.i26, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %7, ptr %3, align 8, !tbaa !319
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.ce = call ptr @_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZN3igl17WindingNumberTreeIdiE6cachedE, ptr %.08.lcssa.i.i.i11.i33, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit35

_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit35: ; preds = %bb.n, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i30, %.critedge.i32
  %.sroa.06.0.i31 = phi ptr [ %i.ce, %.critedge.i32 ], [ %.19.i.i.i.i26, %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.i30 ], [ %.19.i.i.i.i26, %bb.n ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i31, i64 48
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %.loopexit

.thread:                                          ; preds = %bb.a, %bb.b
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !209
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.o, label %.preheader

bb.o:                                             ; preds = %.thread
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !139
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.co = tail call noundef double @_ZN3igl14winding_numberIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEENT_6ScalarERKNS1_10MatrixBaseIS6_EERKNS8_IT0_EERKNS8_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %i.cm, ptr noundef nonnull align 1 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.loopexit

.preheader:                                       ; preds = %.thread, %bb.p
  %.sroa.036.0.in = phi ptr [ %.sroa.036.0, %bb.p ], [ %i.ch, %.thread ]
  %.sroa.036.0 = load ptr, ptr %.sroa.036.0.in, align 8, !tbaa !131 ; 4 uses
  %.not = icmp eq ptr %.sroa.036.0, %i.ch
  br i1 %.not, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.preheader
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !208 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !134
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(168) %i.cq, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br i1 %i.cu, label %.thread43, label %.preheader, !llvm.loop !953

.thread43:                                        ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.036.0, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !208 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !134
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call noundef double %i.cz(ptr noundef nonnull align 8 dereferenceable(168) %i.cw, ptr noundef nonnull align 8 dereferenceable(168) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.thread43, %bb.o, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit35
  %.1 = phi double [ %i.cg, %_ZNSt3mapISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EdSt4lessIS6_ESaIS0_IKS6_dEEEixERS9_.exit35 ], [ %i.co, %bb.o ], [ %i.da, %.thread43 ], [ 0.000000e+00, %.preheader ]
  ret double %.1
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #18

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #32 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !134
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #38, !inline_history !954
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !89
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !215  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !215
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #38, !inline_history !954
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

declare noundef double @_ZN3igl14winding_numberIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEENT_6ScalarERKNS1_10MatrixBaseIS6_EERKNS8_IT0_EERKNS8_IT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #47 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !319
  %i.d = inttoptr i64 %i.c to ptr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !956
  %i.f = invoke { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE10_Auto_nodeD2Ev.exit ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.f, 1        ; 5 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp ne ptr %i.g, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.j
  br i1 %or.cond.i.i, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !315  ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !315  ; 2 uses
  %i.n = icmp ult ptr %i.l, %i.m
  br i1 %i.n, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp ult ptr %i.m, %i.l
  br i1 %i.o, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !316
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !316
  %i.t = icmp ult ptr %i.q, %i.s
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.u = phi i1 [ %i.t, %bb.f ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.u, ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i) #38
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !178
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !178
  br label %_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE10_Auto_nodeD2Ev.exit: ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #43
  resume { ptr, i32 } %i.y

bb.g:                                             ; preds = %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #43
  br label %_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE10_Auto_nodeD2Ev.exit9

_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE10_Auto_nodeD2Ev.exit9: ; preds = %.thread, %bb.g
  %.sroa.013.017 = phi ptr [ %i.a, %.thread ], [ %i.g, %bb.g ]
  ret ptr %.sroa.013.017
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeISt4pairIPKN3igl17WindingNumberTreeIdiEES5_ES0_IKS6_dESt10_Select1stIS8_ESt4lessIS6_ESaIS8_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS8_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !178
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !317  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !315  ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !315    ; 2 uses
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ult ptr %i.i, %i.h
  br i1 %i.k, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit.thread79, label %_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit

_ZNKSt4lessISt4pairIPKN3igl17WindingNumberTreeIdiEES5_EEclERKS6_S9_.exit: ; preds = %bb.d
end_hunk_0
