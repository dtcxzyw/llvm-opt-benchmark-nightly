inline.NumInlined: 1430
inline.NumDeleted: 710
begin_hunk_0_@_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a
bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi ptr [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult ptr %i.aq, %i.w                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult ptr %i.y, %i.w
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !77 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #22 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  %i.az = icmp ult ptr %i.w, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !215
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !77 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47 ; 2 uses
  %i.bg = icmp ult ptr %i.w, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !77 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !213

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !214
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi ptr [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult ptr %i.bl, %i.w                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36), i8 noundef zeroext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(36), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #11

declare noundef i64 @_ZNK4llvh9StringRef13find_first_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIhEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 8 uses
  %i.f = ptrtoint ptr %i.e to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i64 %i.f, ptr %i.a, align 8, !tbaa !53
  %i.g = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 3 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not = icmp eq ptr %i.i, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.q = phi ptr [ null, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 4 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %.011
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i64 %.011 to i8                    ; 2 uses
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !216
  %.not.i.i = icmp eq ptr %i.q, %i.v
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.u, ptr %i.q, align 1, !tbaa !11
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !108
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.x, ptr %i.o, align 8, !tbaa !108
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.g:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !110  ; 4 uses
  %i.z = ptrtoint ptr %i.q to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 8 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i, %i.ab ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807)
  %i.ag = select i1 %i.ae, i64 9223372036854775807, i64 %i.af ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i7)
  %1 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #23 ; 4 uses
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab ; 2 uses
  store i8 %i.u, ptr %2, align 1, !tbaa !11
  %3 = icmp sgt i64 %i.ab, 0
  br i1 %3, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %1, ptr %i.e, align 8, !tbaa !110
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !216
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.aj = phi ptr [ %i.ah, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.x, %bb.f ], [ %i.q, %bb.d ]
  %i.ak = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.n
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !217

.loopexit:                                        ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit, %bb.c, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  ret ptr %.06
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsItEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i64 %i.g, ptr %i.a, align 8, !tbaa !53
  %i.h = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not = icmp eq ptr %i.j, %i.l
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 4 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 4 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.011
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.e:                                             ; preds = %bb.d
  %i.x = trunc i64 %.011 to i16                   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %i.x, ptr %i.t, align 2, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store ptr %i.y, ptr %i.p, align 8, !tbaa !111
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775806
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ad = ashr exact i64 %i.ab, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 4611686018427387903)
  %i.ah = select i1 %i.af, i64 4611686018427387903, i64 %i.ag ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #23 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store i16 %i.x, ptr %i.ak, align 2, !tbaa !90
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.aj, ptr align 2 %i.r, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !113
  store ptr %i.am, ptr %i.p, align 8, !tbaa !111
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.an, ptr %i.q, align 8, !tbaa !218
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.ao = phi ptr [ %i.aj, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.d ]
  %i.ap = phi ptr [ %i.an, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.f ], [ %i.s, %bb.d ]
  %i.aq = phi ptr [ %i.am, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ], [ %i.y, %bb.f ], [ %i.t, %bb.d ]
  %i.ar = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.o
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !219

.loopexit:                                        ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit, %bb.c, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %_ZNSt6vectorItSaItEE9push_backEOt.exit ]
  ret ptr %.06
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsIjEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !53   ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.b, 8
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %i.b, -8
  %i.d = inttoptr i64 %i.c to ptr
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23 ; 7 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = or i64 %i.f, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store i64 %i.g, ptr %i.a, align 8, !tbaa !53
  %i.h = load ptr, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !75   ; 3 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %.not = icmp eq ptr %i.j, %i.l
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 4 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.011
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.e:                                             ; preds = %bb.d
  %i.x = trunc i64 %.011 to i32                   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.x, ptr %i.t, align 4, !tbaa !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  store ptr %i.y, ptr %i.p, align 8, !tbaa !114
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.g:                                             ; preds = %bb.e
  %i.z = ptrtoint ptr %i.s to i64
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775804
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ad = ashr exact i64 %i.ab, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
end_hunk_0
