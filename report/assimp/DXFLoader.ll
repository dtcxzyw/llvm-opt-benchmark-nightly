Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/DXFLoader?download=true
inline.NumInlined: 1765
inline.NumDeleted: 766
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEEixERSE_:bb.a
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.75", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, label %bb.b, !llvm.loop !39

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3DXF5BlockEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESO_IJEEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11DXFImporter21ExpandBlockReferencesERNS_3DXF5BlockERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKS2_St4lessISA_ESaISt4pairIKSA_SC_EEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(92) %1, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %2) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.20", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.23", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not138 = icmp eq ptr %i.b, %i.d
  br i1 %.not138, label %._crit_edge, label %.lr.ph141

.lr.ph141:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit127, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph141, %.loopexit127
  %.sroa.0121.0139 = phi ptr [ %i.b, %.lr.ph141 ], [ %i.iq, %.loopexit127 ] ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 40
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  %i.o = load ptr, ptr %i.k, align 8              ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.q) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.t, ptr noundef %i.o, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.c
  %i.v = sub i64 %i.q, %i.n
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.w, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3DXF5BlockEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.c, !llvm.loop !40

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3DXF5BlockEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.x = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.x, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3DXF5BlockEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 %i.n) ; 2 uses
  %i.aa = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.aa, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.ac, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.d
  %i.ae = sub i64 %i.n, %i.z
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ae, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.ad, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.af = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.af, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread, label %bb.e

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit.thread: ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN6Assimp3DXF5BlockEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISD_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.b, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ag = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger5errorIJRA41_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull align 1 dereferenceable(41) @.str.22, ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 1 dereferenceable(11) @.str.23)
  br label %.loopexit127

bb.e:                                             ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN6Assimp3DXF5BlockESt4lessIS5_ESaISt4pairIKS5_SA_EEE4findERSE_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8            ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not142 = icmp eq ptr %i.ak, %i.al
  br i1 %.not142, label %.loopexit127, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.e
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 20 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0121.0139, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph137, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.034136 = phi i64 [ 0, %.lr.ph137 ], [ %i.ip, %_ZNSt12__shared_ptrIKN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.ay = load ptr, ptr %i.ai, align 8
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %.034136 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  store ptr %i.ba, ptr %3, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8            ; 3 uses
  store ptr %i.bc, ptr %i.g, align 8
  %.not.i.i.i39 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i39, label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = load i32, ptr %i.bd, align 4
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.bd, align 4
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit

bb.i:                                             ; preds = %bb.g
  %i.bh = atomicrmw volatile add ptr %i.bd, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8
  br label %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit: ; preds = %bb.f, %bb.h, %bb.i
  %i.bi = phi ptr [ %i.ba, %bb.f ], [ %i.ba, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  %.not125.a = icmp eq ptr %i.bi, null
  br i1 %.not125.a, label %bb.j, label %bb.m

bb.j:                                             ; preds = %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit
  %i.bj = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.bj, ptr noundef nonnull @.str.24)
          to label %bb.au unwind label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.m:                                             ; preds = %_ZNSt10shared_ptrIKN6Assimp3DXF8PolyLineEEC2IS2_vEERKS_IT_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.bl = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #27
          to label %bb.n unwind label %bb.ab      ; 10 uses

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN6Assimp3DXF8PolyLineC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(168) %i.bl, ptr noundef nonnull align 8 dereferenceable(168) %i.bi)
          to label %bb.o unwind label %bb.ac

bb.o:                                             ; preds = %bb.n
  store ptr %i.bl, ptr %4, align 8
  %i.bm = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.t unwind label %bb.p       ; 7 uses

bb.p:                                             ; preds = %bb.o
  %i.bn = landingpad { ptr, i32 }
          catch ptr null
  %i.bo = extractvalue { ptr, i32 } %i.bn, 0
  %i.bp = tail call ptr @__cxa_begin_catch(ptr %i.bo) #26 ; 0 uses
  tail call void @_ZN6Assimp3DXF8PolyLineD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.bl) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 168) #30
  invoke void @__cxa_rethrow() #28
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          catch ptr null
  %i.bs = extractvalue { ptr, i32 } %i.br, 0
  tail call void @__clang_call_terminate(ptr %i.bs) #29
  unreachable

bb.s:                                             ; preds = %bb.p
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 7 uses
  store i32 1, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 1, ptr %i.bu, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bm, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.bl, ptr %i.bv, align 8
  store ptr %i.bm, ptr %i.h, align 8
  %5 = load <2 x float>, ptr %i.aq, align 8       ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %5, %5
  %6 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %7 = extractelement <2 x float> %5, i64 0       ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %7, float %7, float %6)
  %i.bx = load float, ptr %i.ar, align 8          ; 4 uses
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.bx, float %i.bw)
  %i.bz = fcmp une float %i.by, 0.000000e+00
  %.pre148.a = load float, ptr %i.as, align 4     ; 3 uses
  br i1 %i.bz, label %._crit_edge149, label %bb.u

._crit_edge149:                                   ; preds = %bb.t
  %.pre150 = load float, ptr %i.at, align 8
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %8 = fcmp une float %.pre148.a, 1.000000e+00
  %.pre151 = load float, ptr %i.at, align 8       ; 2 uses
  %i.ca = fcmp une float %.pre151, 1.000000e+00
  %or.cond = select i1 %8, i1 true, i1 %i.ca
  br i1 %or.cond, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = load float, ptr %i.au, align 4
  %i.cc = fcmp une float %i.cb, 1.000000e+00
  br i1 %i.cc, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = load float, ptr %i.av, align 8
  %i.ce = fcmp une float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = load float, ptr %.sroa.0121.0139, align 8 ; 2 uses
  %i.cg = load float, ptr %i.aw, align 4          ; 2 uses
  %i.ch = fmul float %i.cg, %i.cg
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ch)
  %i.cj = load float, ptr %i.ax, align 8          ; 2 uses
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.cj, float %i.ci)
  %i.cl = fcmp une float %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %._crit_edge149, %bb.u, %bb.v, %bb.w, %bb.x
  %i.cm = phi float [ %.pre150, %._crit_edge149 ], [ %.pre151, %bb.u ], [ 1.000000e+00, %bb.x ], [ 1.000000e+00, %bb.v ], [ 1.000000e+00, %bb.w ] ; 2 uses
  %9 = fneg <2 x float> %5                        ; 3 uses
  %i.cn = fneg float %i.bx
  %i.co = load float, ptr %i.ax, align 8          ; 2 uses
  %i.cp = load float, ptr %i.au, align 4          ; 2 uses
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> zeroinitializer, <2 x float> zeroinitializer) ; 4 uses
  %i.cr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> zeroinitializer, <2 x float> <float 1.000000e+00, float 0.000000e+00>) ; 3 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float 1.000000e+00>) ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %i.co, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = load <2 x float>, ptr %.sroa.0121.0139, align 8 ; 3 uses
  %i.cw = load float, ptr %i.aw, align 4
  %i.cx = fmul float %i.cw, 0.000000e+00          ; 2 uses
  %i.cy = extractelement <2 x float> %i.cv, i64 0
  %i.cz = fadd float %i.cy, %i.cx
  %i.da = insertelement <4 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dc = insertelement <2 x float> %i.db, float %i.cn, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.de = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.df = shufflevector <4 x float> <float 0.000000e+00, float poison, float 1.000000e+00, float poison>, <4 x float> %i.de, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.dg = insertelement <4 x float> %i.df, float %i.cx, i64 3
  %i.dh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> zeroinitializer, <4 x float> %i.dg) ; 4 uses
  %i.di = shufflevector <4 x float> %i.da, <4 x float> %i.dh, <2 x i32> <i32 0, i32 5>
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> zeroinitializer, <2 x float> %i.di)
  %i.dk = fsub <2 x float> %i.dj, %5              ; 4 uses
  %i.dl = extractelement <4 x float> %i.dh, i64 3
  %i.dm = fadd float %i.co, %i.dl
  %i.dn = fsub float %i.dm, %i.bx                 ; 4 uses
  %i.do = fmul <2 x float> %i.cs, zeroinitializer ; 2 uses
  %i.dp = insertelement <2 x float> poison, float %.pre148.a, i64 0
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.cr, <2 x float> %i.do)
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> zeroinitializer, <2 x float> %i.dr)
  %i.dt = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = fmul <2 x float> %i.cs, %i.du
  %i.dw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> %i.dv)
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> zeroinitializer, <2 x float> %i.dw)
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> zeroinitializer, <2 x float> %i.do) ; 2 uses
  %i.dz = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ea, <2 x float> %i.cq, <2 x float> %i.dy)
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> zeroinitializer, <2 x float> %i.dy)
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> zeroinitializer, <2 x float> %i.ds)
  %i.ee = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> zeroinitializer, <2 x float> %i.dx)
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> zeroinitializer, <2 x float> %i.eb)
  %i.eg = fadd <2 x float> %i.ec, %i.dk
  %i.eh = extractelement <4 x float> %i.dh, i64 0 ; 5 uses
  %i.ei = fmul float %i.eh, 0.000000e+00          ; 2 uses
  %i.ej = tail call float @llvm.fmuladd.f32(float %.pre148.a, float %i.eh, float %i.ei)
  %i.ek = extractelement <4 x float> %i.dh, i64 2 ; 4 uses
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ek, float 0.000000e+00, float %i.ej)
  %i.em = tail call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.el)
  %i.en = fmul float %i.eh, %i.cm
  %i.eo = tail call float @llvm.fmuladd.f32(float %i.eh, float 0.000000e+00, float %i.en)
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.ek, float 0.000000e+00, float %i.eo)
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.ep)
  %i.er = tail call float @llvm.fmuladd.f32(float %i.eh, float 0.000000e+00, float %i.ei) ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.ek, float %i.er)
  %i.et = tail call float @llvm.fmuladd.f32(float %i.dn, float 0.000000e+00, float %i.es)
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.ek, float 0.000000e+00, float %i.er)
  %i.ev = fadd float %i.eu, %i.dn
  %i.ew = load float, ptr %i.av, align 8
  %i.ex = fcmp une float %i.ew, 0.000000e+00
  br i1 %i.ex, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.ey = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ey, ptr noundef nonnull @.str.25)
          to label %bb.ae unwind label %bb.ad

bb.ab:                                            ; preds = %bb.m
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.n
  %i.fa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 168) #30
  br label %.body

.loopexit128:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

.loopexit.split-lp:                               ; preds = %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ad:                                            ; preds = %bb.aa, %bb.z
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ae:                                            ; preds = %bb.aa, %bb.y
  %i.fc = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %.not126134 = icmp eq ptr %i.fc, %i.fe
  br i1 %.not126134, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %.lr.ph
  %.sroa.066.0135 = phi ptr [ %i.fy, %.lr.ph ], [ %i.fc, %bb.ae ] ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 8 ; 2 uses
  %i.fh = load float, ptr %.sroa.066.0135, align 4 ; 2 uses
  %i.fi = load float, ptr %i.ff, align 4          ; 2 uses
  %i.fj = load float, ptr %i.fg, align 4          ; 2 uses
  %i.fk = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.ee, %i.fl
  %i.fn = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.fo, <2 x float> %i.fm)
  %i.fq = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.fr, <2 x float> %i.fp)
  %i.ft = fadd <2 x float> %i.eg, %i.fs
  %i.fu = fmul float %i.eq, %i.fi
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.em, float %i.fh, float %i.fu)
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.et, float %i.fj, float %i.fv)
  %i.fx = fadd float %i.ev, %i.fw
  store <2 x float> %i.ft, ptr %.sroa.066.0135, align 4
  store float %i.fx, ptr %i.fg, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.066.0135, i64 12 ; 2 uses
  %.not126 = icmp eq ptr %i.fy, %i.fe
  br i1 %.not126, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.ae, %bb.x
  %i.fz = load ptr, ptr %i.i, align 8             ; 6 uses
  %i.ga = load ptr, ptr %i.j, align 8
  %.not.i = icmp eq ptr %i.fz, %i.ga
  br i1 %.not.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %.loopexit
  store ptr %i.bl, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  store ptr %i.bm, ptr %i.gb, align 8
  %i.gc = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i54 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i54, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gd = load i32, ptr %i.bt, align 8
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %i.bt, align 8
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.gf = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i

_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i: ; preds = %bb.ah, %bb.ag
  %i.gg = load ptr, ptr %i.i, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store ptr %i.gh, ptr %i.i, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit

bb.ai:                                            ; preds = %.loopexit
  %i.gi = load ptr, ptr %1, align 8               ; 5 uses
  %i.gj = ptrtoint ptr %i.fz to i64
  %i.gk = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 3 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775792
  br i1 %i.gm, label %bb.aj, label %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
          to label %.noexc64 unwind label %.loopexit.split-lp

.noexc64:                                         ; preds = %bb.aj
  unreachable

_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.ai
  %i.gn = ashr exact i64 %i.gl, 4                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = tail call i64 @llvm.umin.i64(i64 %i.go, i64 576460752303423487)
  %i.gr = select i1 %i.gp, i64 576460752303423487, i64 %i.gq ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.gr, 0
  tail call void @llvm.assume(i1 %.not.i.i60)
  %i.gs = shl nuw nsw i64 %i.gr, 4
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #27
          to label %bb.ak unwind label %.loopexit128 ; 5 uses

bb.ak:                                            ; preds = %_ZNKSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gl ; 2 uses
  store ptr %i.bl, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.bm, ptr %i.gv, align 8
  %i.gw = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i62 = icmp eq i8 %i.gw, 0
  br i1 %.not.i.i.i.i.i62, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gx = load i32, ptr %i.bt, align 8
  %i.gy = add nsw i32 %i.gx, 1
  store i32 %i.gy, ptr %i.bt, align 8
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63

bb.am:                                            ; preds = %bb.ak
  %i.gz = atomicrmw volatile add ptr %i.bt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63

_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63: ; preds = %bb.am, %bb.al
  %.not10.i.i.i.i = icmp eq ptr %i.gi, %i.fz
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.hd, %.lr.ph.i.i.i.i ], [ %i.gt, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.hc, %.lr.ph.i.i.i.i ], [ %i.gi, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.ha = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8
  %i.hb = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !alias.scope !46, !noalias !45
  store ptr null, ptr %i.ha, align 8, !alias.scope !46, !noalias !45
  store <2 x ptr> %i.hb, ptr %.012.i.i.i.i, align 8, !alias.scope !45, !noalias !46
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !46, !noalias !45
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i16.i = icmp eq ptr %i.hc, %i.fz
  br i1 %.not.i.i.i16.i, label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gt, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i63 ], [ %i.hd, %.lr.ph.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i24.i = icmp eq ptr %i.gi, null
  br i1 %.not.i24.i, label %.noexc, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i
  %i.hf = load ptr, ptr %i.j, align 8
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.gk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.hh) #30
  br label %.noexc

.noexc:                                           ; preds = %bb.an, %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i
  store ptr %i.gt, ptr %1, align 8
  store ptr %i.he, ptr %i.i, align 8
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.hi, ptr %i.j, align 8
  br label %_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorISt10shared_ptrIN6Assimp3DXF8PolyLineEESaIS4_EE9push_backERKS4_.exit: ; preds = %.noexc, %_ZNSt10shared_ptrIN6Assimp3DXF8PolyLineEEC2ERKS3_.exit.i
  %i.hj = load ptr, ptr %i.h, align 8             ; 8 uses
  %.not.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ao
end_hunk_0
begin_hunk_1_@_ZN6Assimp6Logger13formatMessageIJERA11_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_:bb.a
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !193 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !193 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !193
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #26
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3DXF8PolyLineD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIjSaIjEED2Ev.exit5, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #30
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit5

_ZNSt6vectorIjSaIjEED2Ev.exit5:                   ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #30
  br label %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit:      ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit5, %bb.d
  %i.ah = load ptr, ptr %0, align 8               ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #30
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit:    ; preds = %_ZNSt6vectorI9aiColor4tIfESaIS1_EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp3DXF8PolyLineD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %i.b) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 168) #30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN6Assimp3DXF8PolyLineELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJRA19_KcEmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(19) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i64, ptr %3, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN6Assimp6Logger13formatMessageIJERA19_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(19) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %5, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #26
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #26
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger13formatMessageIJERA19_KcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(19) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 13 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(19) %3) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %2, ptr noundef nonnull align 1 dereferenceable(19) %3, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %2)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !204)
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !alias.scope !206
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !206
  store i8 0, ptr %i.c, align 8, !alias.scope !206
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !noalias !206 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !206 ; 2 uses
  %i.i = icmp ugt ptr %i.f, %i.h
  %.08.i.i.i.i.i = select i1 %i.i, ptr %i.f, ptr %i.h ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !noalias !206 ; 2 uses
  %i.l = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.k, i64 noundef %i.n)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %0, align 8, !alias.scope !206 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !alias.scope !206
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.c

_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.b
  %i.v = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.v, ptr %4, align 8
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.x = getelementptr i8, ptr %i.v, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %4, i64 %i.y
  store ptr %i.w, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #30
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i3
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.ai) #26
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #26
  resume { ptr, i32 } %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp3DXF5BlockESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp3DXF5BlockESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.78) #28
  unreachable

_ZNKSt6vectorIN6Assimp3DXF5BlockESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 96                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 96076792050570581)
  %i.l = select i1 %i.j, i64 96076792050570581, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 96
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, i8 0, i64 96, i1 false)
  store ptr %i.s, ptr %i.r, align 8
  store i8 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 84
  store float 0.000000e+00, ptr %i.t, align 4
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN6Assimp3DXF5BlockESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN6Assimp3DXF5BlockESaIS2_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aIN6Assimp3DXF5BlockES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ax, %_ZSt19__relocate_object_aIN6Assimp3DXF5BlockES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp3DXF5BlockESaIS2_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.0911.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN6Assimp3DXF5BlockES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6Assimp3DXF5BlockESaIS2_EE12_M_check_lenEmPKc.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !alias.scope !215, !noalias !214
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !alias.scope !214, !noalias !215
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  %i.z = load ptr, ptr %i.w, align 8, !alias.scope !215, !noalias !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !215, !noalias !214
  %i.aa = load ptr, ptr %i.x, align 8, !alias.scope !215, !noalias !214
  %i.ab = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !215, !noalias !214
  %i.ac = insertelement <4 x ptr> poison, ptr %i.z, i64 0
  %i.ad = insertelement <4 x ptr> %i.ac, ptr %i.aa, i64 1
  %i.ae = shufflevector <2 x ptr> %i.ab, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.af = shufflevector <4 x ptr> %i.ad, <4 x ptr> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.af, ptr %i.v, align 8, !alias.scope !214, !noalias !215
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false), !alias.scope !215, !noalias !214
end_hunk_1
