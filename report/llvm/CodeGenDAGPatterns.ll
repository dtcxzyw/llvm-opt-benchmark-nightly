Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CodeGenDAGPatterns?download=true
inline.NumInlined: 10200
inline.NumDeleted: 3855
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a
  %i.ac = icmp slt i32 %.fr.i.i.i33, 0
  br i1 %i.ac, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread100, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread100: ; preds = %.thread.i.i.i38, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !148
  %i.af = icmp eq ptr %i.ae, null                 ; 2 uses
  %spec.select = select i1 %i.af, ptr null, ptr %1
  %spec.select112 = select i1 %i.af, ptr %i.x, ptr %1
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread: ; preds = %.thread.i.i.i38, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39
  %i.ag = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.ah = extractvalue { ptr, ptr } %i.ag, 0
  %i.ai = extractvalue { ptr, ptr } %i.ag, 1
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92

._ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge: ; preds = %.thread.i.i.i23.thread
  %.sroa.0.0.copyload.i46.pre = load ptr, ptr %2, align 8, !tbaa !192
  %.sroa.01.0.copyload.i47.pre = load ptr, ptr %i.o, align 8, !tbaa !192
  br label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45: ; preds = %._ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit24
  %.sroa.01.0.copyload.i47 = phi ptr [ %.sroa.01.0.copyload.i47.pre, %._ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge ], [ %.sroa.0.0.copyload.i16, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit24 ]
  %.sroa.0.0.copyload.i46 = phi ptr [ %.sroa.0.0.copyload.i46.pre, %._ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45_crit_edge ], [ %.sroa.01.0.copyload.i17, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit24 ]
  %i.aj = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i47, ptr noundef %.sroa.0.0.copyload.i46, i64 noundef %.sroa.speculated.i.i.i14) #30
  %.fr.i.i.i48 = freeze i32 %i.aj                 ; 2 uses
  %.not.not.i.i.i49 = icmp eq i32 %.fr.i.i.i48, 0
  br i1 %.not.not.i.i.i49, label %.thread.i.i.i53, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54

.thread.i.i.i53:                                  ; preds = %.thread.i.i.i23, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45
  %i.ak = icmp ult i64 %.sroa.2.0.copyload.i13, %.sroa.22.0.copyload.i11
  br i1 %i.ak, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54.thread104, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i45
  %i.al = icmp slt i32 %.fr.i.i.i48, 0
  br i1 %i.al, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54.thread104, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54.thread104: ; preds = %.thread.i.i.i53, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !95 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %1
  br i1 %i.ao, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92, label %bb.f

bb.f:                                             ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54.thread104
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 4 uses
  %.sroa.2.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.2.0.copyload.i58 = load i64, ptr %.sroa.2.0..sroa_idx.i57, align 8, !tbaa !46 ; 2 uses
  %.sroa.speculated.i.i.i59 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i58, i64 %.sroa.22.0.copyload.i11) ; 2 uses
  %i.aq = icmp eq i64 %.sroa.speculated.i.i.i59, 0
  br i1 %i.aq, label %.thread.i.i.i68, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60: ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.sroa.0.0.copyload.i61 = load ptr, ptr %i.ar, align 8, !tbaa !192
  %.sroa.01.0.copyload.i62 = load ptr, ptr %2, align 8, !tbaa !192
  %i.as = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i62, ptr noundef %.sroa.0.0.copyload.i61, i64 noundef %.sroa.speculated.i.i.i59) #30
  %.fr.i.i.i63 = freeze i32 %i.as                 ; 2 uses
  %.not.not.i.i.i64 = icmp eq i32 %.fr.i.i.i63, 0
  br i1 %.not.not.i.i.i64, label %.thread.i.i.i68, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69

.thread.i.i.i68:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60, %bb.f
  %i.at = icmp ult i64 %.sroa.22.0.copyload.i11, %.sroa.2.0.copyload.i58
  br i1 %i.at, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread108, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i60
  %i.au = icmp slt i32 %.fr.i.i.i63, 0
  br i1 %i.au, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread108, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread108: ; preds = %.thread.i.i.i68, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !148
  %i.ax = icmp eq ptr %i.aw, null                 ; 2 uses
  %spec.select115 = select i1 %i.ax, ptr null, ptr %i.ap
  %spec.select116 = select i1 %i.ax, ptr %1, ptr %i.ap
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread: ; preds = %.thread.i.i.i68, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69
  %i.ay = tail call { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.az = extractvalue { ptr, ptr } %i.ay, 0
  %i.ba = extractvalue { ptr, ptr } %i.ay, 1
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread92: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread108, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread100, %.thread.i.i.i, %.thread.i.i.i53, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54.thread104, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit24.thread96, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread
  %.sroa.090.2 = phi ptr [ %i.m, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread ], [ null, %.thread.i.i.i ], [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ], [ %spec.select115, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread108 ], [ %1, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54 ], [ %i.ah, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread ], [ %i.v, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit24.thread96 ], [ %1, %.thread.i.i.i53 ], [ %i.az, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread ], [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54.thread104 ], [ %spec.select, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread100 ]
  %.sroa.12.2 = phi ptr [ %i.n, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread ], [ %i.f, %.thread.i.i.i ], [ %i.f, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ], [ %spec.select116, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread108 ], [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54 ], [ %i.ai, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread ], [ %i.v, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit24.thread96 ], [ null, %.thread.i.i.i53 ], [ %i.ba, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit69.thread ], [ %i.an, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit54.thread104 ], [ %spec.select112, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit39.thread100 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.090.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIN4llvm9StringRefESt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.03544 = load ptr, ptr %i.a, align 8, !tbaa !95 ; 2 uses
  %.not45 = icmp eq ptr %.03544, null
  br i1 %.not45, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !46 ; 2 uses
  %.sroa.01.0.copyload.i = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread37
  %.03546 = phi ptr [ %.03544, %.lr.ph ], [ %.035, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread37 ] ; 6 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.03546, i64 40
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !46 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i, i64 %.sroa.22.0.copyload.i) ; 2 uses
  %i.c = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.c, label %.thread.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.03546, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.d, align 8, !tbaa !192
  %i.e = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i, i64 noundef %.sroa.speculated.i.i.i) #30
  %.fr.i.i.i = freeze i32 %i.e                    ; 2 uses
  %.not.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  br i1 %.not.not.i.i.i, label %.thread.i.i.i, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit

.thread.i.i.i:                                    ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i, %bb.b
  %i.f = icmp ult i64 %.sroa.22.0.copyload.i, %.sroa.2.0.copyload.i
  br i1 %i.f, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread37, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit:   ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i
  %i.g = icmp slt i32 %.fr.i.i.i, 0
  br i1 %i.g, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread37, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread: ; preds = %.thread.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread37

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread37: ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit, %.thread.i.i.i, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread
  %.sink = phi i64 [ 24, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread ], [ 16, %.thread.i.i.i ], [ 16, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ]
  %i.h = phi i1 [ false, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread ], [ true, %.thread.i.i.i ], [ true, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %.03546, i64 %.sink
  %.035 = load ptr, ptr %i.i, align 8, !tbaa !95  ; 2 uses
  %.not = icmp eq ptr %.035, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1742

._crit_edge:                                      ; preds = %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit.thread37
  br i1 %i.h, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.034.lcssa51 = phi ptr [ %.03546, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  %i.l = icmp eq ptr %.034.lcssa51, %i.k
  br i1 %i.l, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread41, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.m = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.034.lcssa51) #30
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.034.lcssa50 = phi ptr [ %.034.lcssa51, %bb.c ], [ %.03546, %._crit_edge ] ; 2 uses
  %.sroa.020.0 = phi ptr [ %i.m, %bb.c ], [ %.03546, %._crit_edge ] ; 3 uses
  %.sroa.22.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 40
  %.sroa.22.0.copyload.i6 = load i64, ptr %.sroa.22.0..sroa_idx.i5, align 8, !tbaa !46 ; 2 uses
  %.sroa.2.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i8 = load i64, ptr %.sroa.2.0..sroa_idx.i7, align 8, !tbaa !46 ; 2 uses
  %.sroa.speculated.i.i.i9 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i8, i64 %.sroa.22.0.copyload.i6) ; 2 uses
  %i.n = icmp eq i64 %.sroa.speculated.i.i.i9, 0
  br i1 %i.n, label %.thread.i.i.i18, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 32
  %.sroa.0.0.copyload.i11 = load ptr, ptr %1, align 8, !tbaa !192
  %.sroa.01.0.copyload.i12 = load ptr, ptr %i.o, align 8, !tbaa !192
  %i.p = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i12, ptr noundef %.sroa.0.0.copyload.i11, i64 noundef %.sroa.speculated.i.i.i9) #30
  %.fr.i.i.i13 = freeze i32 %i.p                  ; 2 uses
  %.not.not.i.i.i14 = icmp eq i32 %.fr.i.i.i13, 0
  br i1 %.not.not.i.i.i14, label %.thread.i.i.i18, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19

.thread.i.i.i18:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10, %bb.d
  %i.q = icmp ult i64 %.sroa.22.0.copyload.i6, %.sroa.2.0.copyload.i8
  br i1 %i.q, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread41, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i10
  %i.r = icmp slt i32 %.fr.i.i.i13, 0
  br i1 %i.r, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread41, label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread: ; preds = %.thread.i.i.i18, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19
  br label %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread41

_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread41: ; preds = %.thread.i.i.i18, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19, %._crit_edge.thread, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread
  %.sroa.033.0 = phi ptr [ %.sroa.020.0, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread ], [ null, %._crit_edge.thread ], [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19 ], [ null, %.thread.i.i.i18 ]
  %.sroa.4.0 = phi ptr [ null, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19.thread ], [ %.034.lcssa51, %._crit_edge.thread ], [ %.034.lcssa50, %_ZNKSt4lessIN4llvm9StringRefEEclERKS1_S4_.exit19 ], [ %.034.lcssa50, %.thread.i.i.i18 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.033.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJOS2_EESC_IJRS5_EEEEERS6_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef 0, i64 noundef 24, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !106
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.f ; 2 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !327
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load i64, ptr %3, align 8, !tbaa !227
  %i.k = inttoptr i64 %i.j to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !552
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !230  ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !230
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEEC2IJOS1_EJRS4_EEESt21piecewise_construct_tSt5tupleIJDpT_EESA_IJDpT0_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.m, align 4, !tbaa !316
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !316
  br label %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEEC2IJOS1_EJRS4_EEESt21piecewise_construct_tSt5tupleIJDpT_EESA_IJDpT0_EE.exit

_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEEC2IJOS1_EJRS4_EEESt21piecewise_construct_tSt5tupleIJDpT_EESA_IJDpT0_EE.exit: ; preds = %bb.a, %bb.b
  %i.p = load ptr, ptr %0, align 8, !tbaa !105    ; 6 uses
  %i.q = load i32, ptr %i.d, align 8, !tbaa !106  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %.idx.i = mul nuw nsw i64 %i.r, 24              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEEC2IJOS1_EJRS4_EEESt21piecewise_construct_tSt5tupleIJDpT_EESA_IJDpT0_EE.exit
  %4 = add nsw i64 %.idx.i, -24                   ; 2 uses
  %5 = udiv i64 %4, 24
  %6 = and i64 %5, 1
  %lcmp.mod.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 16, i1 false), !tbaa.struct !552
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %8 = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !230
  store ptr %9, ptr %7, align 8, !tbaa !230
  store ptr null, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %11 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi ptr [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %11, %.lr.ph.i.i.i.i.i.i.prol ]
  %.sroa.04.08.i.i.i.i.i.i.unr = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.preheader ], [ %10, %.lr.ph.i.i.i.i.i.i.prol ]
  %12 = icmp ult i64 %4, 24
  br i1 %12, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !552
  %13 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  %14 = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %15 = load ptr, ptr %14, align 8, !tbaa !230
  store ptr %15, ptr %13, align 8, !tbaa !230
  store ptr null, ptr %14, align 8, !tbaa !230
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 24
  %17 = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 16, i1 false), !tbaa.struct !552
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !230
  store ptr %i.v, ptr %i.t, align 8, !tbaa !230
  store ptr null, ptr %i.u, align 8, !tbaa !230
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 48
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %i.w, %i.s
  br i1 %.not.i.i.i.i.i.i.1, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1743

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !105 ; 3 uses
  %.pre4.i = load i32, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre4.i, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.y = zext i32 %.pre4.i to i64
  %.idx3.i = mul nuw nsw i64 %i.y, 24
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.idx3.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.aa, %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEED2Ev.exit.i.i ], [ %i.z, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !230 ; 5 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !316
  %i.ae = add i32 %i.ad, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !316
  %.not.i.i.i.i.i2.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.d, label %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEED2Ev.exit.i.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN4llvm15TreePatternNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.ac) #29, !inline_history !13
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.ac, i64 noundef 168) #33, !inline_history !13
  br label %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEED2Ev.exit.i.i

_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEED2Ev.exit.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre.i, %i.aa
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !25

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit: ; preds = %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !105
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit, %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEEC2IJOS1_EJRS4_EEESt21piecewise_construct_tSt5tupleIJDpT_EESA_IJDpT0_EE.exit, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i
  %i.af = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit.loopexit ], [ %i.p, %_ZNSt4pairIN4llvm9StringRefENS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEEEC2IJOS1_EJRS4_EEESt21piecewise_construct_tSt5tupleIJDpT_EESA_IJDpT0_EE.exit ], [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE18uninitialized_moveIPS6_S9_EEvT_SA_T0_.exit.i ] ; 2 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !46
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE21takeAllocationForGrowEPS6_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit
  call void @free(ptr noundef %i.af) #29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE21takeAllocationForGrowEPS6_m.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE21takeAllocationForGrowEPS6_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefENS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEEELb0EE19moveElementsForGrowEPS6_.exit, %bb.e
  store ptr %i.c, ptr %0, align 8, !tbaa !105
  %i.ai = trunc i64 %i.ag to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !107
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !106
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.d, align 8, !tbaa !106
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %i.ao
}

declare noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = call noundef ptr @_ZN4llvm15SmallVectorBaseIjE13mallocForGrowEPvmmRm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %1, i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #29 ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !105    ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !106  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %.idx.i = shl nuw nsw i64 %i.g, 3               ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %.idx.i  ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.f, 0
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.a
  %i.i = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.j = lshr exact i64 %i.i, 3
  %i.k = add nuw nsw i64 %i.j, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.i, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader9, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.c, i64 %.idx.i
  %bound0 = icmp ult ptr %i.c, %i.h
  %bound1 = icmp ult ptr %i.d, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.k, 4611686018427387900      ; 3 uses
  %i.l = shl i64 %n.vec, 3                        ; 2 uses
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.d, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.o = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %i.o ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.d, i64 %i.o ; 3 uses
  %i.p = getelementptr i8, ptr %next.gep6, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep6, align 8, !tbaa !230, !alias.scope !1749
  %wide.load7 = load <2 x ptr>, ptr %i.p, align 8, !tbaa !230, !alias.scope !1749
  %i.q = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !230, !alias.scope !1750, !noalias !1749
  store <2 x ptr> %wide.load7, ptr %i.q, align 8, !tbaa !230, !alias.scope !1750, !noalias !1749
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !230, !alias.scope !1749
  store <2 x ptr> splat (ptr null), ptr %i.p, align 8, !tbaa !230, !alias.scope !1749
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !1747

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.i.preheader9:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.m, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.n, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 3 uses
  %i.s = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !230
  store ptr %i.s, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !230
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !230
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1748

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit.i.i
  %.05.i.i = phi ptr [ %i.v, %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit.i.i ], [ %i.h, %.lr.ph.i.i.preheader ]
  %i.v = getelementptr inbounds i8, ptr %.05.i.i, i64 -8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !230  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.x = load i32, ptr %i.w, align 4, !tbaa !316
  %i.y = add i32 %i.x, -1                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 4, !tbaa !316
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm15TreePatternNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.w) #29, !inline_history !13
  call void @_ZdlPvm(ptr noundef nonnull align 4 dereferenceable(4) %i.w, i64 noundef 168) #33, !inline_history !13
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.d, %i.v
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !29

_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit.loopexit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_15TreePatternNodeEED2Ev.exit.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !105
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit.loopexit, %bb.a
  %i.z = phi ptr [ %.pre, %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit.loopexit ], [ %i.d, %bb.a ] ; 2 uses
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !46
  %i.ab = icmp eq ptr %i.z, %i.b
  br i1 %i.ab, label %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE21takeAllocationForGrowEPS3_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit
  call void @free(ptr noundef %i.z) #29
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE21takeAllocationForGrowEPS3_m.exit

_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE21takeAllocationForGrowEPS3_m.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_18IntrusiveRefCntPtrINS_15TreePatternNodeEEELb0EE19moveElementsForGrowEPS3_.exit, %bb.d
  store ptr %i.c, ptr %0, align 8, !tbaa !105
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_NS0_14DAGInstructionEESt10_Select1stIS7_ENS0_14LessRecordByIDESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS3_EESH_IJOSt6vectorIS3_SaIS3_EESN_SN_RNS0_18IntrusiveRefCntPtrINS0_15TreePatternNodeEEESR_EEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::tuple.976", align 8    ; 4 uses
  %6 = alloca %"class.std::tuple.979", align 16   ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #32 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
end_hunk_0
