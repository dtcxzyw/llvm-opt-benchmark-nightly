inline.NumInlined: 1537
inline.NumDeleted: 733
begin_hunk_0_@_ZNSt8_Rb_treeISt4pairIjjES0_IKS1_jESt10_Select1stIS3_ESt4lessIS1_ESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_:bb.a
  %.021.i44 = load ptr, ptr %i.dr, align 8        ; 2 uses
  %.not.i45 = icmp eq ptr %.021.i44, null
  br i1 %.not.i45, label %._crit_edge.thread.i55, label %.backedge96.backedge

.backedge96.backedge:                             ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42.thread
  %.02126.i39.be = phi ptr [ %.021.i44, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42 ], [ %.021.i4490, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42.thread ]
  br label %.backedge96, !llvm.loop !80

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42.thread: ; preds = %bb.q, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.i40
  %i.ds = getelementptr inbounds nuw i8, ptr %.02126.i39, i64 24
  %.021.i4490 = load ptr, ptr %i.ds, align 8      ; 2 uses
  %.not.i4591 = icmp eq ptr %.021.i4490, null
  br i1 %.not.i4591, label %._crit_edge.i46.thread, label %.backedge96.backedge

._crit_edge.thread.i55:                           ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit35.thread88
  %.020.lcssa34.i56 = phi ptr [ %i.a, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit35.thread88 ], [ %.02126.i39, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42 ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = icmp eq ptr %.020.lcssa34.i56, %i.du
  br i1 %i.dv, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i55
  %i.dw = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.020.lcssa34.i56) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %._crit_edge.i46.thread

._crit_edge.i46.thread:                           ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42.thread, %bb.r
  %i.dx = phi i32 [ %.pre, %bb.r ], [ %i.dl, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42.thread ] ; 2 uses
  %.020.lcssa33.i47 = phi ptr [ %.020.lcssa34.i56, %bb.r ], [ %.02126.i39, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42.thread ] ; 2 uses
  %.sroa.06.0.i48 = phi ptr [ %i.dw, %bb.r ], [ %.02126.i39, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread.i42.thread ] ; 2 uses
  %i.dy = icmp ult i32 %i.dx, %i.ar
  br i1 %i.dy, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i46.thread
  %i.dz = icmp ult i32 %i.ar, %i.dx
  br i1 %i.dz, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i50, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i49

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i49:    ; preds = %bb.s
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i48, i64 36
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = icmp ult i32 %i.eb, %i.ed
  br i1 %i.ee, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread, label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i50

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i50: ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i49, %bb.s
  br label %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread

_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit.thread:  ; preds = %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i50, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i49, %._crit_edge.i46.thread, %._crit_edge.thread.i55, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i26, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i25, %._crit_edge.i22.thread, %._crit_edge.thread.i31, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i, %._crit_edge.i.thread, %._crit_edge.thread.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit35.thread, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit11.thread, %bb.c, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit34, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit34.thread, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit10.thread, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit
  %.sroa.078.2 = phi ptr [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit34.thread ], [ %spec.select, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit11.thread ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit ], [ %spec.select93, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit35.thread ], [ %1, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit34 ], [ null, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit10.thread ], [ null, %bb.c ], [ null, %._crit_edge.i22.thread ], [ %.sroa.06.0.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i ], [ null, %._crit_edge.thread.i ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i ], [ %.sroa.06.0.i24, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i26 ], [ null, %._crit_edge.thread.i31 ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i25 ], [ %.sroa.06.0.i48, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i50 ], [ null, %._crit_edge.thread.i55 ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i49 ], [ null, %._crit_edge.i46.thread ]
  %.sroa.12.2 = phi ptr [ %i.cs, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit34.thread ], [ %spec.select92, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit11.thread ], [ %i.f, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit ], [ %spec.select94, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit35.thread ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit34 ], [ %.020.lcssa33.i, %._crit_edge.i.thread ], [ %i.bb, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit10.thread ], [ %i.f, %bb.c ], [ %.020.lcssa33.i23, %._crit_edge.i22.thread ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i ], [ %.020.lcssa34.i, %._crit_edge.thread.i ], [ %.020.lcssa33.i, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i26 ], [ %.020.lcssa34.i32, %._crit_edge.thread.i31 ], [ %.020.lcssa33.i23, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i25 ], [ null, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.thread23.i50 ], [ %.020.lcssa34.i56, %._crit_edge.thread.i55 ], [ %.020.lcssa33.i47, %_ZNKSt4lessISt4pairIjjEEclERKS1_S4_.exit5.i49 ], [ %.020.lcssa33.i47, %._crit_edge.i46.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.078.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6Assimp8TempMeshEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4 = icmp eq ptr %0, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt8_DestroyIN6Assimp8TempMeshEEvPT_.exit
  %.05 = phi ptr [ %i.ai, %_ZSt8_DestroyIN6Assimp8TempMeshEEvPT_.exit ], [ %0, %bb.a ] ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05, i64 80
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #24
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i:        ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !81

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i, %.lr.ph
  %i.i = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.b, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #24
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i:        ; preds = %bb.c, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05, i64 48
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05, i64 24
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %.not.i.i.i2.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i2.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #24
  br label %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3.i.i

_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3.i.i: ; preds = %bb.e, %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit.i.i
  %i.ac = load ptr, ptr %.05, align 8             ; 3 uses
  %.not.i.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i4.i.i, label %_ZSt8_DestroyIN6Assimp8TempMeshEEvPT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #24
  br label %_ZSt8_DestroyIN6Assimp8TempMeshEEvPT_.exit

_ZSt8_DestroyIN6Assimp8TempMeshEEvPT_.exit:       ; preds = %_ZNSt6vectorI10aiVector3tIfESaIS1_EED2Ev.exit3.i.i, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.05, i64 96 ; 2 uses
  %.not = icmp eq ptr %i.ai, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %_ZSt8_DestroyIN6Assimp8TempMeshEEvPT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorI6aiFaceSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
  unreachable

_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  store i32 0, ptr %i.q, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr null, ptr %3, align 8
  %i.r = icmp eq ptr %2, %i.q
  br i1 %i.r, label %_ZNSt16allocator_traitsISaI6aiFaceEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit, label %4

4:                                                ; preds = %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %5 = load i32, ptr %2, align 8                  ; 3 uses
  store i32 %5, ptr %i.q, align 8
  %.not.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %4
  %i.s = zext i32 %5 to i64
  %i.t = shl nuw nsw i64 %i.s, 2                  ; 2 uses
  %i.u = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #26
          to label %.noexc unwind label %.thread  ; 2 uses

.thread:                                          ; preds = %bb.c
  %lpad.thr_comm61 = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %lpad.thr_comm61, 0
  %i.w = tail call ptr @__cxa_begin_catch(ptr %i.v) #23 ; 0 uses
  br label %_ZN6aiFaceD2Ev.exit.thread

.noexc:                                           ; preds = %bb.c
  store ptr %i.u, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %i.y, i64 %i.t, i1 false)
  br label %_ZNSt16allocator_traitsISaI6aiFaceEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit

bb.d:                                             ; preds = %4
  store ptr null, ptr %3, align 8
  br label %_ZNSt16allocator_traitsISaI6aiFaceEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaI6aiFaceEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit: ; preds = %bb.d, %.noexc, %_ZNKSt6vectorI6aiFaceSaIS0_EE12_M_check_lenEmPKc.exit
  %i.z = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit unwind label %bb.g ; 2 uses

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaI6aiFaceEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = invoke noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.aa)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit30 unwind label %bb.i

_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit30, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.af, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit30 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #24
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.e, %.lr.ph.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i31, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !81

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.c, null
  br i1 %.not.i32, label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.aj) #24
  br label %_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI6aiFaceSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8
  store ptr %i.ab, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ak, ptr %i.ag, align 8
  ret void

bb.g:                                             ; preds = %_ZNSt16allocator_traitsISaI6aiFaceEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.al = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.am = tail call ptr @__cxa_begin_catch(ptr %i.al) #23 ; 0 uses
  %i.an = load ptr, ptr %3, align 8               ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN6aiFaceD2Ev.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.an) #24
  br label %_ZN6aiFaceD2Ev.exit.thread

bb.i:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIP6aiFaceS1_SaIS0_EET0_T_S4_S3_RT1_.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #23 ; 0 uses
  %.not4.i.i33 = icmp eq ptr %i.p, %i.aa
  br i1 %.not4.i.i33, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i34

.lr.ph.i.i34:                                     ; preds = %bb.i, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i36
  %.05.i.i35 = phi ptr [ %i.au, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i36 ], [ %i.p, %bb.i ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.05.i.i35, i64 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i36, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i34
  tail call void @_ZdaPv(ptr noundef nonnull %i.as) #24
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i36

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i36:            ; preds = %bb.j, %.lr.ph.i.i34
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i35, i64 16
  %.not.i.i37 = icmp eq ptr %.05.i.i35, %i.z
  br i1 %.not.i.i37, label %_ZN6aiFaceD2Ev.exit.thread, label %.lr.ph.i.i34, !llvm.loop !81

bb.k:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZN6aiFaceD2Ev.exit.thread:                       ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i36, %.thread, %bb.g, %bb.h, %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #24
  invoke void @__cxa_rethrow() #25
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.av

bb.m:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #27
  unreachable

bb.n:                                             ; preds = %_ZN6aiFaceD2Ev.exit.thread
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPK6aiFacePS0_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.j, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 7 uses
  %.01215 = phi ptr [ %i.i, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  store i32 0, ptr %.016, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = icmp eq ptr %.01215, %.016
  br i1 %i.b, label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.c = load i32, ptr %.01215, align 8           ; 3 uses
  store i32 %i.c, ptr %.016, align 8
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #26
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.f, ptr align 4 %i.h, i64 %i.e, i1 false)
  br label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit

bb.d:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8
  br label %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit

_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit:  ; preds = %bb.d, %.noexc, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.01215, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.i, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #23 ; 0 uses
  %.not4.i.i = icmp eq ptr %2, %.016
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.q, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i ], [ %2, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #24
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i:              ; preds = %bb.f, %.lr.ph.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %.016
  br i1 %.not.i.i, label %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit, label %.lr.ph.i.i, !llvm.loop !81

_ZSt8_DestroyIP6aiFaceEvT_S2_.exit:               ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i, %bb.e
  invoke void @__cxa_rethrow() #25
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.j, %_ZSt10_ConstructI6aiFaceJRKS0_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.r

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #27
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIP6aiFaceEvT_S2_.exit
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6Assimp9SIBObjectESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(1112) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775176
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6Assimp9SIBObjectESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
  unreachable

_ZNKSt6vectorIN6Assimp9SIBObjectESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 1112                ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 8294399313718323)
  %i.l = select i1 %i.j, i64 8294399313718323, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 1112
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #26 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 3 uses
  %i.r = load i32, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.s, i8 0, i64 1024, i1 false)
  %spec.select.i.i = tail call i32 @llvm.umin.i32(i32 %i.r, i32 1023) ; 2 uses
  store i32 %spec.select.i.i, ptr %i.q, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.u = zext nneg i32 %spec.select.i.i to i64    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.t, i64 %i.u, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store i8 0, ptr %i.v, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1028
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 1028
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(84) %i.w, ptr noundef nonnull align 4 dereferenceable(84) %i.x, i64 84, i1 false)
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp9SIBObjectES2_SaIS1_EET0_T_S5_S4_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN6Assimp9SIBObjectESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN6Assimp9SIBObjectESaIS1_EE12_M_check_lenEmPKc.exit ] ; 4 uses
end_hunk_0
