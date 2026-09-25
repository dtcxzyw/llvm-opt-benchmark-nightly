Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISA_ERS7_:bb.a
  %i.bc = sub i64 %i.x, %i.v
  %spec.select7.i.i.i.i33 = tail call i64 @llvm.smax.i64(i64 %i.bc, i64 -2147483648)
  %.08.i.i.i.i34 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i33, i64 2147483647)
  %.0.i6.i.i.i35 = trunc nsw i64 %.08.i.i.i.i34 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32
  %.0.i.i.i31 = phi i32 [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i29 ], [ %.0.i6.i.i.i35, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i32 ]
  %i.bd = icmp slt i32 %.0.i.i.i31, 0
  br i1 %i.bd, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16112 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #62 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !9324 ; 2 uses
  %.sroa.speculated.i.i.i37 = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.v) ; 2 uses
  %i.bk = icmp eq i64 %.sroa.speculated.i.i.i37, 0
  br i1 %i.bk, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38: ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !9326
  %i.bn = load ptr, ptr %2, align 8, !tbaa !9326
  %i.bo = tail call i32 @memcmp(ptr noundef %i.bn, ptr noundef %i.bm, i64 noundef %.sroa.speculated.i.i.i37) #49 ; 2 uses
  %.not.i.i.i39 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %bb.k
  %i.bp = sub i64 %i.v, %i.bj
  %spec.select7.i.i.i.i42 = tail call i64 @llvm.smax.i64(i64 %i.bp, i64 -2147483648)
  %.08.i.i.i.i43 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i42, i64 2147483647)
  %.0.i6.i.i.i44 = trunc nsw i64 %.08.i.i.i.i43 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41
  %.0.i.i.i40 = phi i32 [ %i.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i38 ], [ %.0.i6.i.i.i44, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i41 ]
  %i.bq = icmp slt i32 %.0.i.i.i40, 0
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16113
  %i.bt = icmp eq ptr %i.bs, null                 ; 2 uses
  %spec.select74 = select i1 %i.bt, ptr null, ptr %i.bh
  %spec.select75 = select i1 %i.bt, ptr %1, ptr %i.bh
  br label %bb.n

bb.m:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit45
  %i.bu = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 2 uses
  %i.bv = extractvalue { ptr, ptr } %i.bu, 0
  %i.bw = extractvalue { ptr, ptr } %i.bu, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.h, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36, %bb.m, %bb.j, %bb.i, %bb.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit, %bb.d
  %.sroa.066.2 = phi ptr [ %i.s, %bb.d ], [ %spec.select, %bb.h ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select74, %bb.l ], [ %i.az, %bb.i ], [ %i.aj, %bb.f ], [ %1, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bv, %bb.m ], [ null, %bb.j ]
  %.sroa.12.2 = phi ptr [ %i.t, %bb.d ], [ %spec.select73, %bb.h ], [ %i.f, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %spec.select75, %bb.l ], [ %i.ba, %bb.i ], [ %i.aj, %bb.f ], [ null, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit36 ], [ %i.bw, %bb.m ], [ %i.bf, %bb.j ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.066.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N5Catch8TagAliasEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !16112 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !9324 ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9324 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9326
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #49 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !16112 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !73267

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9396
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #62
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9324 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9324 ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !9326
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !9326
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #49 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK5Catch12_GLOBAL__N_121TestInvokerAsFunction6invokeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23548
  tail call void %i.b() #49
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN5Catch12ITestInvokerD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5Catch12_GLOBAL__N_121TestInvokerAsFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #60
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Catch11ulpDistanceIfEEmT_S1_(float noundef %0, float noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = fcmp oeq float %0, %1
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = fcmp oeq float %0, 0.000000e+00
  %spec.store.select.peel = select i1 %i.b, float 0.000000e+00, float %0 ; 2 uses
  %i.c = fcmp oeq float %1, 0.000000e+00          ; 2 uses
  %spec.store.select1.peel = select i1 %i.c, float 0.000000e+00, float %1 ; 2 uses
  %i.d = bitcast float %spec.store.select.peel to i32 ; 2 uses
  %2 = bitcast float %spec.store.select1.peel to i32 ; 2 uses
  %i.e = xor i32 %2, %i.d
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %tailrecurse.peel, label %bb.b

tailrecurse.peel:                                 ; preds = %.lr.ph.preheader
  %i.g = tail call noundef float @llvm.fabs.f32(float %spec.store.select.peel)
  %i.h = tail call noundef i64 @_ZN5Catch11ulpDistanceIfEEmT_S1_(float noundef %i.g, float noundef 0.000000e+00) ; 2 uses
  br i1 %i.c, label %.loopexit, label %.loopexit34

.loopexit34:                                      ; preds = %tailrecurse.peel
  %i.i = tail call noundef float @llvm.fabs.f32(float %spec.store.select1.peel)
  %i.j = bitcast float %i.i to i32
  br label %bb.b

bb.b:                                             ; preds = %.loopexit34, %.lr.ph.preheader
  %accumulator.tr25.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %.loopexit34 ]
  %.lcssa29 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.loopexit34 ] ; 2 uses
  %.lcssa = phi i32 [ %2, %.lr.ph.preheader ], [ 0, %.loopexit34 ] ; 2 uses
  %spec.select20 = tail call i32 @llvm.umax.i32(i32 %.lcssa29, i32 %.lcssa)
  %spec.select = zext i32 %spec.select20 to i64
  %spec.select19.v = tail call i32 @llvm.umin.i32(i32 %.lcssa29, i32 %.lcssa)
  %spec.select19 = zext i32 %spec.select19.v to i64
  %i.k = sub nuw nsw i64 %spec.select, %spec.select19
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.peel, %bb.a, %bb.b
  %accumulator.tr23 = phi i64 [ %accumulator.tr25.lcssa, %bb.b ], [ 0, %bb.a ], [ %i.h, %tailrecurse.peel ]
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ], [ 0, %tailrecurse.peel ]
  %accumulator.ret.tr = add i64 %.0, %accumulator.tr23
  ret i64 %accumulator.ret.tr
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Catch11ulpDistanceIdEEmT_S1_(double noundef %0, double noundef %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = fcmp oeq double %0, %1
  br i1 %i.a, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = fcmp oeq double %0, 0.000000e+00
  %spec.store.select.peel = select i1 %i.b, double 0.000000e+00, double %0 ; 2 uses
  %i.c = fcmp oeq double %1, 0.000000e+00         ; 2 uses
  %spec.store.select1.peel = select i1 %i.c, double 0.000000e+00, double %1 ; 2 uses
  %i.d = bitcast double %spec.store.select.peel to i64 ; 2 uses
  %2 = bitcast double %spec.store.select1.peel to i64 ; 2 uses
  %i.e = xor i64 %2, %i.d
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %tailrecurse.peel, label %bb.b

tailrecurse.peel:                                 ; preds = %.lr.ph.preheader
  %i.g = tail call noundef double @llvm.fabs.f64(double %spec.store.select.peel)
  %i.h = tail call noundef i64 @_ZN5Catch11ulpDistanceIdEEmT_S1_(double noundef %i.g, double noundef 0.000000e+00) ; 2 uses
  br i1 %i.c, label %.loopexit, label %.loopexit33

.loopexit33:                                      ; preds = %tailrecurse.peel
  %i.i = tail call noundef double @llvm.fabs.f64(double %spec.store.select1.peel)
  %i.j = bitcast double %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit33, %.lr.ph.preheader
  %accumulator.tr24.lcssa = phi i64 [ 0, %.lr.ph.preheader ], [ %i.h, %.loopexit33 ]
  %.lcssa28 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.j, %.loopexit33 ] ; 2 uses
  %.lcssa = phi i64 [ %2, %.lr.ph.preheader ], [ 0, %.loopexit33 ] ; 2 uses
  %spec.select = tail call i64 @llvm.umax.i64(i64 %.lcssa28, i64 %.lcssa)
  %spec.select19 = tail call i64 @llvm.umin.i64(i64 %.lcssa28, i64 %.lcssa)
  %i.k = sub nuw i64 %spec.select, %spec.select19
  br label %.loopexit

.loopexit:                                        ; preds = %tailrecurse.peel, %bb.a, %bb.b
  %accumulator.tr22 = phi i64 [ %accumulator.tr24.lcssa, %bb.b ], [ 0, %bb.a ], [ %i.h, %tailrecurse.peel ]
  %.0 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ], [ 0, %tailrecurse.peel ]
  %accumulator.ret.tr = add i64 %.0, %accumulator.tr22
  ret i64 %accumulator.ret.tr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEEC2EPKcS6_RKSt6localeNSt15regex_constants18syntax_option_typeE(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"struct.std::__detail::_State", align 8 ; 9 uses
  %6 = alloca %"class.std::allocator.552", align 1 ; 3 uses
  %7 = alloca %"class.std::locale", align 8       ; 3 uses
  %i.a = and i32 %4, 1008
  switch i32 %i.a, label %bb.c [
    i32 16, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 32, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 64, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 128, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 256, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 512, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
    i32 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = or i32 %4, 16
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit

bb.c:                                             ; preds = %bb.a
  tail call void @abort() #58
  unreachable

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit: ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0.i = phi i32 [ %i.b, %bb.b ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ], [ %4, %bb.a ] ; 2 uses
  store i32 %.0.i, ptr %0, align 8, !tbaa !69393
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3) #49
  call void @_ZNSt8__detail8_ScannerIcEC2EPKcS3_NSt15regex_constants18syntax_option_typeESt6locale(ptr noundef nonnull align 8 dereferenceable(248) %i.c, ptr noundef %1, ptr noundef %2, i32 noundef %.0.i, ptr nofreeobj noundef nonnull align 8 dereferenceable(8) %7)
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !73276)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49, !noalias !73276
  store ptr null, ptr %i.d, align 8, !tbaa !69394, !alias.scope !73276
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2INSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEEESaIvEJRKSt6localeRNSt15regex_constants18syntax_option_typeEEEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr nonnull %6, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49, !noalias !73276
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !9321
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.h, align 8, !tbaa !9324
  store i8 0, ptr %i.g, align 8, !tbaa !9325
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 8, ptr %i.j, align 8, !tbaa !69395
  %i.k = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #59 ; 2 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !69396
  %.06.i.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.l = call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #59 ; 6 uses
  store ptr %i.l, ptr %.06.i.i.ptr.i.i.i, align 8, !tbaa !69397
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %.06.i.i.ptr.i.i.i, ptr %i.n, align 8, !tbaa !69398
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.l, ptr %i.o, align 8, !tbaa !69399
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 504 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.p, ptr %i.q, align 8, !tbaa !69400
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  store ptr %.06.i.i.ptr.i.i.i, ptr %i.s, align 8, !tbaa !69398
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  store ptr %i.l, ptr %i.t, align 8, !tbaa !69399
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  store ptr %i.p, ptr %i.u, align 8, !tbaa !69400
  store ptr %i.l, ptr %i.m, align 8, !tbaa !73277
  store ptr %i.l, ptr %i.r, align 8, !tbaa !69401
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !69394
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  store ptr %i.x, ptr %i.v, align 8, !tbaa !69402
  %i.y = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #49
  %i.z = load ptr, ptr %3, align 8, !tbaa !69403
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !69406
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69408 ; 2 uses
  %.not.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.not.i, label %bb.d, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.d:                                             ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
  call void @_ZSt16__throw_bad_castv() #58
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE11_S_validateENSt15regex_constants18syntax_option_typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !69409
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !69394 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69411
  %i.ai = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE23_M_insert_subexpr_beginEv(ptr noundef nonnull align 8 dereferenceable(88) %i.af) ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 56 ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69414
  %i.al = getelementptr inbounds nuw [48 x i8], ptr %i.ak, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %i.ai, ptr %i.am, align 8, !tbaa !69417
  call void @_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_disjunctionEv(ptr noundef nonnull align 8 dereferenceable(400) %0)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !69418
  %i.ap = icmp eq i32 %i.ao, 27
  br i1 %i.ap, label %bb.e, label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit

bb.e:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !69419
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69420
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 27, ptr %i.an, align 8, !tbaa !69418
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !69421
  switch i32 %i.ax, label %bb.k [
    i32 0, label %bb.h
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt8__detail8_ScannerIcE14_M_scan_normalEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  call void @_ZNSt8__detail8_ScannerIcE18_M_scan_in_bracketEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @_ZNSt8__detail8_ScannerIcE16_M_scan_in_braceEv(ptr noundef nonnull align 8 dereferenceable(248) %i.c)
  br label %bb.k

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE14_M_match_tokenENS_12_ScannerBase7_TokenTE.exit: ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  call void @_ZSt19__throw_regex_errorNSt15regex_constants10error_typeE(i32 noundef 5) #58
  unreachable

bb.k:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !69422, !noalias !73278 ; 4 uses
  %i.az = load ptr, ptr %i.t, align 8, !tbaa !69399, !noalias !73278 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %i.ay, i64 -24
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.ay, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !9358
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !9358
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !69398, !noalias !73278
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !69397, !noalias !73279 ; 2 uses
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.be, i64 488
  %.sroa.4.0.copyload8 = load i64, ptr %.sroa.4.0..sroa_idx7, align 8, !tbaa !9358
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.be, i64 496
  %.sroa.5.0.copyload10 = load i64, ptr %.sroa.5.0..sroa_idx9, align 8, !tbaa !9358
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef 504) #60, !noalias !73279
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !69423, !noalias !73279
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -8 ; 2 uses
  store ptr %i.bg, ptr %i.s, align 8, !tbaa !69398, !noalias !73279
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !69397, !noalias !73279 ; 3 uses
  store ptr %i.bh, ptr %i.t, align 8, !tbaa !69399, !noalias !73279
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 504
  store ptr %i.bi, ptr %i.u, align 8, !tbaa !69400, !noalias !73279
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 480
  br label %_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit

_ZNSt8__detail9_CompilerINSt7__cxx1112regex_traitsIcEEE6_M_popEv.exit: ; preds = %bb.l, %bb.m
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload10, %bb.m ], [ %.sroa.5.0.copyload, %bb.l ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.0.copyload8, %bb.m ], [ %.sroa.4.0.copyload, %bb.l ]
  %storemerge.i.i.i = phi ptr [ %i.bj, %bb.m ], [ %i.bb, %bb.l ]
  store ptr %storemerge.i.i.i, ptr %i.r, align 8, !tbaa !69401, !noalias !73279
  %i.bk = load ptr, ptr %i.aj, align 8, !tbaa !69414
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.bk, i64 %i.ai
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 %.sroa.4.0, ptr %i.bm, align 8, !tbaa !69417
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !69394
  %i.bo = call noundef i64 @_ZNSt8__detail4_NFAINSt7__cxx1112regex_traitsIcEEE21_M_insert_subexpr_endEv(ptr noundef nonnull align 8 dereferenceable(88) %i.bn) ; 2 uses
end_hunk_0
