Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/inst_match_generator_multi?download=true
inline.NumInlined: 1803
inline.NumDeleted: 847
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS9_ERS1_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !33 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !38     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !33 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !255

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #25 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !38
  %.pre82 = load i64, ptr %2, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !38     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !38   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !38 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !33 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !255

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #25 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #25 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !81
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !33 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !33 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !255

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !23
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #25 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEESt10_Select1stIS9_ESt4lessImESaIS9_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPmS_ImSaImEEEEEEvNS4_IPjS1_EET_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not80 = icmp eq ptr %2, %3
  br i1 %.not80, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !97   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.j, %i.m                       ; 6 uses
  %i.o = ashr exact i64 %i.n, 2                   ; 3 uses
  %i.p = icmp ugt i64 %i.o, %i.d
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.q = sub nsw i64 0, %i.d
  %i.r = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %i.r to i64
  %.idx.neg = ashr exact i64 %i.c, 1              ; 2 uses
  %i.t = icmp sgt i64 %.idx.neg, 4
  br i1 %i.t, label %bb.e, label %bb.f, !prof !29

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %i.r, i64 %.idx.neg, i1 false)
  %.pre83 = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq i64 %i.c, 8
  br i1 %i.u, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.r, align 4, !tbaa !98
  store i32 %i.v, ptr %i.h, align 4, !tbaa !98
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.w = phi ptr [ %.pre83, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.d
  store ptr %i.x, ptr %i.g, align 8, !tbaa !97
  %i.y = sub i64 %i.s, %i.m                       ; 3 uses
  %i.z = ashr exact i64 %i.y, 2                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 1
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !29

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr align 4 %1, i64 %i.y, i1 false)
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.ad = icmp eq i64 %i.y, 4
  br i1 %i.ad, label %bb.j, label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.af = load i32, ptr %1, align 4, !tbaa !98
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !98
  br label %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ag = icmp sgt i64 %i.d, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit
  %min.iters.check119 = icmp ult i64 %i.d, 4
  br i1 %min.iters.check119, label %.lr.ph.i.i.i.i.i, label %vector.ph120

vector.ph120:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec121 = and i64 %i.d, 9223372036854775804   ; 4 uses
  %i.ah = and i64 %i.d, 3
  %i.ai = shl i64 %n.vec121, 2
  %i.aj = getelementptr i8, ptr %1, i64 %i.ai
  %i.ak = shl i64 %n.vec121, 3
  %i.al = getelementptr i8, ptr %2, i64 %i.ak
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next128, %vector.body122 ] ; 3 uses
  %i.am = shl i64 %index123, 2
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.am ; 2 uses
  %i.an = shl i64 %index123, 3
  %next.gep125 = getelementptr i8, ptr %2, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126 = load <2 x i64>, ptr %next.gep125, align 8, !tbaa !38
  %wide.load127 = load <2 x i64>, ptr %i.ao, align 8, !tbaa !38
  %i.ap = trunc <2 x i64> %wide.load126 to <2 x i32>
  %i.aq = trunc <2 x i64> %wide.load127 to <2 x i32>
  %i.ar = getelementptr i8, ptr %next.gep124, i64 8
  store <2 x i32> %i.ap, ptr %next.gep124, align 4, !tbaa !98
  store <2 x i32> %i.aq, ptr %i.ar, align 4, !tbaa !98
  %index.next128 = add nuw i64 %index123, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next128, %n.vec121
  br i1 %i.as, label %middle.block129, label %vector.body122, !llvm.loop !256

middle.block129:                                  ; preds = %vector.body122
  %cmp.n130 = icmp eq i64 %i.d, %n.vec121
  br i1 %cmp.n130, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %middle.block129, %.lr.ph.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block129 ] ; 2 uses
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block129 ] ; 3 uses
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.al, %middle.block129 ] ; 3 uses
  %i.at = load i64, ptr %.0910.i.i.i.i.i.ph, align 8, !tbaa !38
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %.0811.i.i.i.i.i.ph, align 4, !tbaa !98
  %i.av = icmp samesign ugt i64 %.012.i.i.i.i.i.ph, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !38
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.aw, align 4, !tbaa !98
  %i.ba = icmp eq i64 %.012.i.i.i.i.i.ph, 3
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.2, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.1
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.ph, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.ph, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !38
  %i.be = trunc i64 %i.bd to i32
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !98
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = icmp eq i64 %i.n, 4
  %i.bg = getelementptr inbounds [8 x i8], ptr %2, i64 %i.o ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.a, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 6 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %min.iters.check = icmp ult i64 %i.bj, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 9223372036854775804     ; 4 uses
  %i.bl = and i64 %i.bj, 3
  %i.bm = shl i64 %n.vec, 2
  %i.bn = getelementptr i8, ptr %i.h, i64 %i.bm
  %i.bo = shl i64 %n.vec, 3
  %i.bp = getelementptr i8, ptr %i.bg, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.bq ; 2 uses
  %i.br = shl i64 %index, 3
  %next.gep98 = getelementptr i8, ptr %i.bg, i64 %i.br ; 2 uses
  %i.bs = getelementptr i8, ptr %next.gep98, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep98, align 8, !tbaa !38
  %wide.load99 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !38
  %i.bt = trunc <2 x i64> %wide.load to <2 x i32>
  %i.bu = trunc <2 x i64> %wide.load99 to <2 x i32>
  %i.bv = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.bt, ptr %next.gep, align 4, !tbaa !98
  store <2 x i32> %i.bu, ptr %i.bv, align 4, !tbaa !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %middle.block, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.012.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bn, %middle.block ] ; 3 uses
  %.0910.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ] ; 3 uses
  %i.bx = load i64, ptr %.0910.i.i.i.i.i.i.i.i.ph, align 8, !tbaa !38
  %i.by = trunc i64 %i.bx to i32
  store i32 %i.by, ptr %.0811.i.i.i.i.i.i.i.i.ph, align 4, !tbaa !98
  %i.bz = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i.ph, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i.i.i.1, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !38
  %i.cd = trunc i64 %i.cc to i32
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !98
  %i.ce = icmp eq i64 %.012.i.i.i.i.i.i.i.i.ph, 3
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.i.2, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit

.lr.ph.i.i.i.i.i.i.i.i.2:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i.ph, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i.ph, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !38
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !98
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.2, %middle.block, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.cj = sub nuw nsw i64 %i.d, %i.o
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cj ; 5 uses
  store ptr %i.ck, ptr %i.g, align 8, !tbaa !97
  %i.cl = icmp sgt i64 %i.n, 4
  br i1 %i.cl, label %bb.k, label %bb.l, !prof !29

bb.k:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ck, ptr align 4 %1, i64 %i.n, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !97
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit51

bb.l:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit
  br i1 %i.bf, label %bb.m, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit51

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %1, align 4, !tbaa !98
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !98
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit51

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit51: ; preds = %bb.k, %bb.l, %bb.m
  %i.cn = phi ptr [ %.pre, %bb.k ], [ %i.ck, %bb.l ], [ %i.ck, %bb.m ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.n
  store ptr %i.co, ptr %i.g, align 8, !tbaa !97
  %i.cp = ashr exact i64 %i.n, 2                  ; 6 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i53.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i53.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit51
  %min.iters.check103 = icmp ult i64 %i.cp, 4
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i53, label %vector.ph104

vector.ph104:                                     ; preds = %.lr.ph.i.i.i.i.i53.preheader
  %n.vec105 = and i64 %i.cp, 9223372036854775804  ; 4 uses
  %i.cr = and i64 %i.cp, 3
  %i.cs = shl i64 %n.vec105, 2
  %i.ct = getelementptr i8, ptr %1, i64 %i.cs
  %i.cu = shl i64 %n.vec105, 3
  %i.cv = getelementptr i8, ptr %2, i64 %i.cu
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next112, %vector.body106 ] ; 3 uses
  %i.cw = shl i64 %index107, 2
  %next.gep108 = getelementptr i8, ptr %1, i64 %i.cw ; 2 uses
  %i.cx = shl i64 %index107, 3
  %next.gep109 = getelementptr i8, ptr %2, i64 %i.cx ; 2 uses
  %i.cy = getelementptr i8, ptr %next.gep109, i64 16
  %wide.load110 = load <2 x i64>, ptr %next.gep109, align 8, !tbaa !38
  %wide.load111 = load <2 x i64>, ptr %i.cy, align 8, !tbaa !38
  %i.cz = trunc <2 x i64> %wide.load110 to <2 x i32>
  %i.da = trunc <2 x i64> %wide.load111 to <2 x i32>
  %i.db = getelementptr i8, ptr %next.gep108, i64 8
  store <2 x i32> %i.cz, ptr %next.gep108, align 4, !tbaa !98
  store <2 x i32> %i.da, ptr %i.db, align 4, !tbaa !98
  %index.next112 = add nuw i64 %index107, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next112, %n.vec105
  br i1 %i.dc, label %middle.block113, label %vector.body106, !llvm.loop !258

middle.block113:                                  ; preds = %vector.body106
  %cmp.n114 = icmp eq i64 %i.cp, %n.vec105
  br i1 %cmp.n114, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i53

.lr.ph.i.i.i.i.i53:                               ; preds = %middle.block113, %.lr.ph.i.i.i.i.i53.preheader
  %.012.i.i.i.i.i54.ph = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.cr, %middle.block113 ] ; 2 uses
  %.0811.i.i.i.i.i55.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.ct, %middle.block113 ] ; 3 uses
  %.0910.i.i.i.i.i56.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i53.preheader ], [ %i.cv, %middle.block113 ] ; 3 uses
  %i.dd = load i64, ptr %.0910.i.i.i.i.i56.ph, align 8, !tbaa !38
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %.0811.i.i.i.i.i55.ph, align 4, !tbaa !98
  %i.df = icmp samesign ugt i64 %.012.i.i.i.i.i54.ph, 1
  br i1 %i.df, label %.lr.ph.i.i.i.i.i53.1, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i53.1:                             ; preds = %.lr.ph.i.i.i.i.i53
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55.ph, i64 4
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56.ph, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !38
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !98
  %i.dk = icmp eq i64 %.012.i.i.i.i.i54.ph, 3
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i53.2, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i53.2:                             ; preds = %.lr.ph.i.i.i.i.i53.1
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i55.ph, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i56.ph, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !38
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !98
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

bb.n:                                             ; preds = %bb.b
  %i.dp = load ptr, ptr %0, align 8, !tbaa !86    ; 5 uses
  %i.dq = ptrtoint ptr %i.dp to i64               ; 3 uses
  %i.dr = sub i64 %i.j, %i.dq
  %i.ds = ashr exact i64 %i.dr, 2                 ; 4 uses
  %i.dt = sub nsw i64 2305843009213693951, %i.ds
  %i.du = icmp ult i64 %i.dt, %i.d
  br i1 %i.du, label %bb.o, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #24
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ds, i64 %i.d)
  %i.dv = add nsw i64 %.sroa.speculated.i, %i.ds  ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.ds
  %i.dx = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 2305843009213693951)
  %i.dy = select i1 %i.dw, i64 2305843009213693951, i64 %i.dx ; 3 uses
  %.not.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #22
  br label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit, %bb.p
  %i.eb = phi ptr [ %i.ea, %bb.p ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.ec = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.ed = sub i64 %i.ec, %i.dq                    ; 4 uses
  %i.ee = icmp sgt i64 %i.ed, 4
  br i1 %i.ee, label %bb.q, label %bb.r, !prof !29

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.eb, ptr align 4 %i.dp, i64 %i.ed, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit
  %i.ef = icmp eq i64 %i.ed, 4
  br i1 %i.ef, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eg = load i32, ptr %i.dp, align 4, !tbaa !98
  store i32 %i.eg, ptr %i.eb, align 4, !tbaa !98
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.eh = getelementptr inbounds i8, ptr %i.eb, i64 %i.ed ; 3 uses
  %4 = tail call i64 @llvm.smax.i64(i64 %i.d, i64 1) ; 2 uses
  %min.iters.check135 = icmp slt i64 %i.d, 4
  br i1 %min.iters.check135, label %.lr.ph.i.i.i.i.i.i.i.i59.a, label %vector.ph136

vector.ph136:                                     ; preds = %bb.t
  %n.vec137 = and i64 %4, 9223372036854775804     ; 5 uses
  %5 = sub nsw i64 %i.d, %n.vec137
  %i.ei = shl i64 %n.vec137, 2
  %i.ej = getelementptr i8, ptr %i.eh, i64 %i.ei  ; 2 uses
  %i.ek = shl i64 %n.vec137, 3
  %i.el = getelementptr i8, ptr %2, i64 %i.ek
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next144, %vector.body138 ] ; 3 uses
  %i.em = shl i64 %index139, 2
  %next.gep140 = getelementptr i8, ptr %i.eh, i64 %i.em ; 2 uses
  %i.en = shl i64 %index139, 3
  %next.gep141 = getelementptr i8, ptr %2, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep141, i64 16
  %wide.load142 = load <2 x i64>, ptr %next.gep141, align 8, !tbaa !38
  %wide.load143 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !38
  %i.ep = trunc <2 x i64> %wide.load142 to <2 x i32>
  %i.eq = trunc <2 x i64> %wide.load143 to <2 x i32>
  %i.er = getelementptr i8, ptr %next.gep140, i64 8
  store <2 x i32> %i.ep, ptr %next.gep140, align 4, !tbaa !98
  store <2 x i32> %i.eq, ptr %i.er, align 4, !tbaa !98
  %index.next144 = add nuw i64 %index139, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next144, %n.vec137
  br i1 %i.es, label %middle.block145, label %vector.body138, !llvm.loop !259

middle.block145:                                  ; preds = %vector.body138
  %cmp.n146 = icmp eq i64 %4, %n.vec137
  br i1 %cmp.n146, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit63, label %.lr.ph.i.i.i.i.i.i.i.i59.a

.lr.ph.i.i.i.i.i.i.i.i59.a:                       ; preds = %bb.t, %middle.block145
  %.012.i.i.i.i.i.i.i.i60.ph = phi i64 [ %i.d, %bb.t ], [ %5, %middle.block145 ]
  %.0811.i.i.i.i.i.i.i.i61.ph = phi ptr [ %i.eh, %bb.t ], [ %i.ej, %middle.block145 ]
  %.0910.i.i.i.i.i.i.i.i62.ph = phi ptr [ %2, %bb.t ], [ %i.el, %middle.block145 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i59.1

.lr.ph.i.i.i.i.i.i.i.i59.1:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i59.a, %.lr.ph.i.i.i.i.i.i.i.i59.1
  %.012.i.i.i.i.i.i.i.i60 = phi i64 [ %7, %.lr.ph.i.i.i.i.i.i.i.i59.1 ], [ %.012.i.i.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i.i.i59.a ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.i61 = phi ptr [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i59.1 ], [ %.0811.i.i.i.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i.i.i.i59.a ] ; 2 uses
  %.0910.i.i.i.i.i.i.i.i62 = phi ptr [ %6, %.lr.ph.i.i.i.i.i.i.i.i59.1 ], [ %.0910.i.i.i.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i.i.i.i59.a ] ; 2 uses
  %i.et = load i64, ptr %.0910.i.i.i.i.i.i.i.i62, align 8, !tbaa !38
  %i.eu = trunc i64 %i.et to i32
  store i32 %i.eu, ptr %.0811.i.i.i.i.i.i.i.i61, align 4, !tbaa !98
  %6 = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i.i62, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.i61, i64 4 ; 2 uses
  %7 = add nsw i64 %.012.i.i.i.i.i.i.i.i60, -1
  %8 = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i.i60, 1
  br i1 %8, label %.lr.ph.i.i.i.i.i.i.i.i59.1, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit63, !llvm.loop !260

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit63: ; preds = %.lr.ph.i.i.i.i.i.i.i.i59.1, %middle.block145
  %.lcssa = phi ptr [ %i.ej, %middle.block145 ], [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.i59.1 ] ; 3 uses
  %i.ew = sub i64 %i.j, %i.ec                     ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, 4
  br i1 %i.ex, label %bb.u, label %bb.v, !prof !29

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit63
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.lcssa, ptr align 4 %1, i64 %i.ew, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEPjjET0_T_S9_S8_RSaIT1_E.exit63
  %i.ey = icmp eq i64 %i.ew, 4
  br i1 %i.ey, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ez = load i32, ptr %1, align 4, !tbaa !98
  store i32 %i.ez, ptr %.lcssa, align 4, !tbaa !98
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.fa = getelementptr inbounds i8, ptr %.lcssa, i64 %i.ew
  %.not.i65 = icmp eq ptr %i.dp, null
  br i1 %.not.i65, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = sub i64 %i.fc, %i.dq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.fd) #23
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.eb, ptr %0, align 8, !tbaa !86
  store ptr %i.fa, ptr %i.g, align 8, !tbaa !97
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.dy
  store ptr %i.fe, ptr %i.e, align 8, !tbaa !87
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS1_IPjS3_IjSaIjEEEEET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i53, %.lr.ph.i.i.i.i.i53.1, %.lr.ph.i.i.i.i.i53.2, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %middle.block113, %middle.block129, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit51, %_ZSt13move_backwardIPjS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::theory::quantifiers::InstMatchTrie>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::theory::quantifiers::InstMatchTrie>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !82     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #24
  unreachable

_ZNKSt6vectorIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 56                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 164703072086692425)
  %i.l = select i1 %i.j, i64 164703072086692425, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 56                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 8 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !73
  store ptr %i.r, ptr %i.q, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  store i32 0, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.u, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store ptr %i.s, ptr %i.v, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !25
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt16allocator_traitsISaIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE12_M_check_lenEmPKc.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.z, ptr %3, align 8, !tbaa !79
  %i.aa = invoke noundef ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull %i.y, ptr noundef nonnull %i.s, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i unwind label %bb.h ; 3 uses

.noexc.i.i:                                       ; preds = %bb.c, %.noexc.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.ac, %.noexc.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i, label %.noexc.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i: ; preds = %.noexc.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.u, align 8, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i
  %.0.i.i7.i.i.i = phi ptr [ %i.aa, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i ], [ %i.ae, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %.not.i.i8.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i8.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i.i, label %bb.d, !llvm.loop !2

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i.i: ; preds = %bb.d
  store ptr %.0.i.i7.i.i.i, ptr %i.v, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !25
  store i64 %i.ag, ptr %i.w, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !33
  br label %_ZNSt16allocator_traitsISaIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i.i, %_ZNKSt6vectorIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ah = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEPS4_ET0_T_S9_S8_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.p)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56 ; 2 uses
  %i.aj = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEPS4_ET0_T_S9_S8_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.ai)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit30 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvT_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit30, %_ZSt8_DestroyIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit30 ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef %i.am)
          to label %_ZSt8_DestroyIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvPT_.exit.i.i unwind label %bb.e, !inline_history !3

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #21, !inline_history !3
  unreachable

_ZSt8_DestroyIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvT_S6_.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvT_S6_.exit: ; preds = %_ZSt8_DestroyIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit30
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvT_S6_.exit
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #23
  br label %_ZNSt12_Vector_baseIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvT_S6_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !82
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !76
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %i.l
  store ptr %i.au, ptr %i.aq, align 8, !tbaa !77
  ret void

bb.g:                                             ; preds = %_ZNSt16allocator_traitsISaIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEE9constructIS4_JS4_EEEvRS5_PT_DpOT0_.exit
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.aw = call ptr @__cxa_begin_catch(ptr %i.av) #20 ; 0 uses
  call void @_ZN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.q) #20
  br label %bb.j

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %bb.c
  %.0.ph = phi ptr [ %i.p, %bb.c ], [ %i.ai, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedES5_SaIS4_EET0_T_S8_S7_RT1_.exit ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.ay = call ptr @__cxa_begin_catch(ptr %i.ax) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvT_S6_(ptr noundef nonnull %i.p, ptr noundef nonnull %.0.ph)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %bb.g, %bb.h
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.az

bb.l:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #21
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %3, align 8, !tbaa !267, !nonnull !63, !align !96
  %i.c = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22 ; 9 uses
  tail call void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a), !inline_history !263
  %i.d = load i32, ptr %1, align 8, !tbaa !268
  store i32 %i.d, ptr %i.c, align 8, !tbaa !268
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store ptr %2, ptr %i.g, align 8, !tbaa !269
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.i, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %i.f, align 8, !tbaa !81
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.a
  %.030.in37 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.03038 = load ptr, ptr %.030.in37, align 8, !tbaa !80 ; 2 uses
  %.not3239 = icmp eq ptr %.03038, null
  br i1 %.not3239, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %.03041 = phi ptr [ %.030, %bb.l ], [ %.03038, %bb.e ] ; 4 uses
  %.03140 = phi ptr [ %i.m, %bb.l ], [ %i.c, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !267, !nonnull !63, !align !96
  %i.m = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #22
          to label %.noexc unwind label %bb.i     ; 8 uses

.noexc:                                           ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %.03041, i64 32
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.n)
          to label %bb.f unwind label %bb.i, !inline_history !264

bb.f:                                             ; preds = %.noexc
  %i.o = load i32, ptr %.03041, align 8, !tbaa !268
  store i32 %i.o, ptr %i.m, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.03140, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store ptr %i.m, ptr %i.r, align 8, !tbaa !80
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.03140, ptr %i.s, align 8, !tbaa !269
  %i.t = getelementptr inbounds nuw i8, ptr %.03041, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !81   ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = invoke noundef ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.u, ptr noundef nonnull %i.m, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.v, ptr %i.q, align 8, !tbaa !81
  br label %bb.l

bb.i:                                             ; preds = %.lr.ph, %.noexc, %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.k, %bb.d ]
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.x = tail call ptr @__cxa_begin_catch(ptr %.0) #20 ; 0 uses
  invoke void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_rethrow() #24
          to label %bb.p unwind label %bb.m

bb.l:                                             ; preds = %bb.h, %bb.f
  %.030.in = getelementptr inbounds nuw i8, ptr %.03041, i64 16
  %.030 = load ptr, ptr %.030.in, align 8, !tbaa !80 ; 2 uses
  %.not32 = icmp eq ptr %.030, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph, !llvm.loop !265

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.y

._crit_edge:                                      ; preds = %bb.l, %bb.e
  ret ptr %i.c

bb.o:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #21
  unreachable

bb.p:                                             ; preds = %bb.k
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE17_M_construct_nodeIJRKS9_EEEvPSt13_Rb_tree_nodeIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(56) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::theory::quantifiers::InstMatchTrie>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::theory::quantifiers::InstMatchTrie>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Alloc_node", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !28     ; 5 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !28
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = lshr i64 %i.c, 40
  %i.e = trunc nuw nsw i64 %i.d to i32
  %i.f = and i32 %i.e, 1048575                    ; 3 uses
  %i.g = icmp samesign ult i32 %i.f, 1048574
  br i1 %i.g, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i32 %i.f, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 40
  %i.k = and i64 %i.c, -1152920405095219201
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %i.b, align 8
  br label %.noexc

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.f, 1048574
  br i1 %i.m, label %bb.d, label %.noexc, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.n = or i64 %i.c, 1152920405095219200
  store i64 %i.n, ptr %i.b, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c, %bb.b, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store i32 0, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store ptr %i.o, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %i.o, ptr %i.r, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22   ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEENS3_6theory11quantifiers13InstMatchTrieEEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.v, ptr %3, align 8, !tbaa !79
  %i.w = invoke noundef ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull %i.u, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc9 unwind label %.body6, !inline_history !270 ; 3 uses

.noexc9:                                          ; preds = %bb.e, %.noexc9
  %.0.i.i.i = phi ptr [ %i.y, %.noexc9 ], [ %i.w, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i, label %.noexc9, !llvm.loop !1

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i: ; preds = %.noexc9
  store ptr %.0.i.i.i, ptr %i.q, align 8, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i
  %.0.i.i7.i = phi ptr [ %i.w, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i7.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i8.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i, label %bb.f, !llvm.loop !2

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i: ; preds = %bb.f
  store ptr %.0.i.i7.i, ptr %i.r, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !25
  store i64 %i.ac, ptr %i.s, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr %i.w, ptr %i.p, align 8, !tbaa !33
  br label %_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEENS3_6theory11quantifiers13InstMatchTrieEEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit

.body6:                                           ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %i.a) #20, !inline_history !271
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %.body6, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %i.ad, %.body6 ]
  %i.af = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ag = call ptr @__cxa_begin_catch(ptr %i.af) #20 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 88) #23
  invoke void @__cxa_rethrow() #24
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZNSt16allocator_traitsISaISt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEENS3_6theory11quantifiers13InstMatchTrieEEEEE9constructISA_JRKSA_EEEvRSC_PT_DpOT0_.exit: ; preds = %.noexc, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i
  ret void

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ah

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #21
  unreachable

bb.k:                                             ; preds = %.body
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIPKN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEPS4_ET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::_Rb_tree<cvc5::internal::NodeTemplate<true>, std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::theory::quantifiers::InstMatchTrie>, std::_Select1st<std::pair<const cvc5::internal::NodeTemplate<true>, cvc5::internal::theory::quantifiers::InstMatchTrie>>, std::less<cvc5::internal::NodeTemplate<true>>>::_Alloc_node", align 8 ; 4 uses
  %.not14 = icmp eq ptr %0, %1
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit
  %.016 = phi ptr [ %i.r, %_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 9 uses
  %.01215 = phi ptr [ %i.q, %_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 4 uses
  %i.a = load ptr, ptr %.01215, align 8, !tbaa !73
  store ptr %i.a, ptr %.016, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %.016, i64 16 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %.016, i64 32 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %.016, i64 40 ; 2 uses
  store ptr %i.b, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %.016, i64 48 ; 2 uses
  store i64 0, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %.01215, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %.016, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr %i.i, ptr %3, align 8, !tbaa !79
  %i.j = invoke noundef ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyILb0ENSF_11_Alloc_nodeEEEPSt13_Rb_tree_nodeIS9_ESK_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %.noexc.i.i.i unwind label %bb.d ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.b, %.noexc.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.l, %.noexc.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i, ptr %i.d, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i
  %.0.i.i7.i.i.i.i = phi ptr [ %i.j, %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !81   ; 2 uses
  %.not.i.i8.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i8.i.i.i.i, label %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i.i.i, label %bb.c, !llvm.loop !2

_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i.i.i: ; preds = %bb.c
  store ptr %.0.i.i7.i.i.i.i, ptr %i.e, align 8, !tbaa !33
  %i.o = getelementptr inbounds nuw i8, ptr %.01215, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !25
  store i64 %i.p, ptr %i.f, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  store ptr %i.j, ptr %i.c, align 8, !tbaa !33
  br label %_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit

_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit: ; preds = %_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE7_M_copyERKSF_.exit.i.i.i.i, %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.01215, i64 56 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.016, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !272

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.016)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_rethrow() #24
          to label %bb.i unwind label %bb.f

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %_ZSt10_ConstructIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedEJRKS4_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #21
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS5_SaIS5_EEEEPS5_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not12 = icmp eq ptr %0, %1
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit
  %.014 = phi ptr [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %2, %bb.a ] ; 3 uses
  %.sroa.08.013 = phi ptr [ %i.n, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ], [ %0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %.sroa.08.013, align 8, !tbaa !28 ; 5 uses
  store ptr %i.a, ptr %.014, align 8, !tbaa !28
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = lshr i64 %i.b, 40
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 1048575                    ; 3 uses
  %i.f = icmp samesign ult i32 %i.e, 1048574
  br i1 %i.f, label %bb.b, label %bb.c, !prof !29

bb.b:                                             ; preds = %.lr.ph
  %i.g = add nuw nsw i32 %i.e, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 40
  %i.j = and i64 %i.b, -1152920405095219201
  %i.k = or i64 %i.i, %i.j
  store i64 %i.k, ptr %i.a, align 8
  br label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.l = icmp eq i32 %i.e, 1048574
  br i1 %i.l, label %bb.d, label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, !prof !30

bb.d:                                             ; preds = %bb.c
  %i.m = or i64 %i.b, 1152920405095219200
  store i64 %i.m, ptr %i.a, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit unwind label %bb.e

_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.013, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.n, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !273

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #20 ; 0 uses
  invoke void @_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEEEvT_S5_(ptr noundef %2, ptr noundef nonnull %.014)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

._crit_edge:                                      ; preds = %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.o, %_ZSt10_ConstructIN4cvc58internal12NodeTemplateILb1EEEJRKS3_EEvPT_DpOT0_.exit ]
  ret ptr %.0.lcssa

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #21
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = distinct !{null, null, null}
!4 = distinct !{!4, !34}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"vtable pointer", !8, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSSt14_Rb_tree_color", !9, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!18 = !{!"_ZTSSt18_Rb_tree_node_base", !15, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!19 = !{!"long", !9, i64 0}
!20 = !{!"_ZTSSt15_Rb_tree_header", !18, i64 0, !19, i64 32}
!21 = !{!20, !15, i64 0}
!22 = !{!20, !17, i64 8}
!23 = !{!20, !17, i64 16}
!24 = !{!20, !17, i64 24}
!25 = !{!20, !19, i64 32}
!26 = !{!"p1 _ZTSN4cvc58internal4expr9NodeValueE", !16, i64 0}
!27 = !{!"_ZTSN4cvc58internal12NodeTemplateILb1EEE", !26, i64 0}
!28 = !{!27, !26, i64 0}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"p1 _ZTSN4cvc58internal12NodeTemplateILb1EEE", !16, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!17, !17, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!36 = !{!35, !31, i64 8}
!37 = !{!35, !31, i64 0}
!38 = !{!19, !19, i64 0}
!39 = !{!"any p2 pointer", !16, i64 0}
!40 = !{!26, !26, i64 0}
!41 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorImSaImEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE", !16, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorImSaImEEEE", !16, i64 0}
!44 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorImSaImEEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeE", !41, i64 0, !43, i64 8}
!45 = !{!44, !43, i64 8}
!46 = !{!"p1 long", !16, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!47, !46, i64 0}
!49 = !{!47, !46, i64 16}
!50 = !{!47, !46, i64 8}
!51 = !{!"p1 _ZTSSt8_Rb_treeImSt4pairIKmSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE", !16, i64 0}
!52 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKmSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEEE", !16, i64 0}
!53 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessImESaIS9_EE10_Auto_nodeE", !51, i64 0, !52, i64 8}
!54 = !{!53, !52, i64 8}
!55 = !{!35, !31, i64 16}
!56 = !{!"p2 _ZTSN4cvc58internal6theory11quantifiers4inst18InstMatchGeneratorE", !39, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIPN4cvc58internal6theory11quantifiers4inst18InstMatchGeneratorESaIS6_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 8}
!59 = !{!57, !56, i64 16}
!60 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers4inst18InstMatchGeneratorE", !16, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!57, !56, i64 0}
!63 = !{}
!64 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderE", !16, i64 0}
!65 = !{!"p1 int", !16, i64 0}
!66 = !{!"_ZTSSt4lessIN4cvc58internal12NodeTemplateILb1EEEE"}
!67 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4cvc58internal12NodeTemplateILb1EEEEE", !66, i64 0}
!68 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !67, i64 0, !20, i64 8}
!69 = !{!"_ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE", !68, i64 0}
!70 = !{!"_ZTSSt3mapIN4cvc58internal12NodeTemplateILb1EEENS1_6theory11quantifiers13InstMatchTrieESt4lessIS3_ESaISt4pairIKS3_S6_EEE", !69, i64 0}
!71 = !{!"_ZTSN4cvc58internal6theory11quantifiers13InstMatchTrieE", !70, i64 0}
!72 = !{!"_ZTSN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedE", !64, i64 0, !71, i64 8}
!73 = !{!72, !64, i64 0}
!74 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedE", !16, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal6theory11quantifiers20InstMatchTrieOrderedESaIS4_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 8}
!77 = !{!75, !74, i64 16}
!78 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE", !16, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!18, !17, i64 16}
!81 = !{!18, !17, i64 24}
!82 = !{!75, !74, i64 0}
!83 = !{!"_ZTSSt4pairIKmPN4cvc58internal6theory11quantifiers13InstMatchTrie13ImtIndexOrderEE", !19, i64 0, !64, i64 8}
!84 = !{!83, !64, i64 8}
!85 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!86 = !{!85, !65, i64 0}
!87 = !{!85, !65, i64 16}
!88 = !{!56, !56, i64 0}
!89 = !{!"p1 _ZTSN4cvc58internal3EnvE", !16, i64 0}
!90 = !{!"_ZTSN4cvc58internal6EnvObjE", !89, i64 8}
!91 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers4inst7TriggerE", !16, i64 0}
!92 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers16QuantifiersStateE", !16, i64 0}
!93 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers12TermRegistryE", !16, i64 0}
!94 = !{!"_ZTSN4cvc58internal6theory11quantifiers4inst11IMGeneratorE", !90, i64 0, !91, i64 16, !92, i64 24, !93, i64 32}
!95 = !{!94, !92, i64 24}
!96 = !{i64 8}
!97 = !{!85, !65, i64 8}
!98 = !{!10, !10, i64 0}
!99 = !{!"branch_weights", i32 1, i32 1048575}
!100 = !{!"p1 _ZTSSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE", !16, i64 0}
!101 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKN4cvc58internal12NodeTemplateILb1EEESt6vectorIS4_SaIS4_EEEE", !16, i64 0}
!102 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE10_Auto_nodeE", !100, i64 0, !101, i64 8}
!103 = !{!102, !101, i64 8}
!104 = distinct !{!104, !34}
!105 = distinct !{!105, !"_ZNK4cvc58internal4expr4attr8AttrHashImE4findESt4pairImPNS1_9NodeValueEE"}
!106 = distinct !{!106, !105, !"_ZNK4cvc58internal4expr4attr8AttrHashImE4findESt4pairImPNS1_9NodeValueEE: argument 0"}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !34}
!109 = distinct !{!109, !34}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !"_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIKS4_NSt8__detail20_Node_const_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPKS9_ImmESt6vectorISI_SaISI_EEEEEdeEv"}
!113 = distinct !{!113, !112, !"_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIKS4_NSt8__detail20_Node_const_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPKS9_ImmESt6vectorISI_SaISI_EEEEEdeEv: argument 0"}
!114 = distinct !{!114, !"_ZSt9make_pairISt4pairImPN4cvc58internal4expr9NodeValueEERKmES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_"}
!115 = distinct !{!115, !114, !"_ZSt9make_pairISt4pairImPN4cvc58internal4expr9NodeValueEERKmES0_INSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_: argument 0"}
!116 = distinct !{!116, !34}
!117 = distinct !{!117, !34}
!118 = distinct !{!118, !34}
!119 = distinct !{!119, !34}
!120 = distinct !{!120, !34}
!121 = distinct !{!121, !34}
!122 = distinct !{!122, !34}
!123 = !{!"p1 _ZTSN4cvc58internal11NodeManagerE", !16, i64 0}
!124 = !{!"_ZTSN4cvc58internal4expr9NodeValueE", !19, i64 0, !10, i64 5, !10, i64 8, !10, i64 12, !123, i64 16, !9, i64 24}
!125 = !{!124, !123, i64 16}
!126 = !{!"p1 _ZTSN4cvc58internal13SkolemManagerE", !16, i64 0}
!127 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal13SkolemManagerELb0EE", !126, i64 0}
!128 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal13SkolemManagerESt14default_deleteIS2_EEE", !127, i64 0}
!129 = !{!"_ZTSSt5tupleIJPN4cvc58internal13SkolemManagerESt14default_deleteIS2_EEE", !128, i64 0}
!130 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal13SkolemManagerESt14default_deleteIS2_EE", !129, i64 0}
!131 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal13SkolemManagerESt14default_deleteIS2_ELb1ELb1EE", !130, i64 0}
!132 = !{!"_ZTSSt10unique_ptrIN4cvc58internal13SkolemManagerESt14default_deleteIS2_EE", !131, i64 0}
!133 = !{!"p1 _ZTSN4cvc58internal15BoundVarManagerE", !16, i64 0}
!134 = !{!"_ZTSSt10_Head_baseILm0EPN4cvc58internal15BoundVarManagerELb0EE", !133, i64 0}
!135 = !{!"_ZTSSt11_Tuple_implILm0EJPN4cvc58internal15BoundVarManagerESt14default_deleteIS2_EEE", !134, i64 0}
!136 = !{!"_ZTSSt5tupleIJPN4cvc58internal15BoundVarManagerESt14default_deleteIS2_EEE", !135, i64 0}
!137 = !{!"_ZTSSt15__uniq_ptr_implIN4cvc58internal15BoundVarManagerESt14default_deleteIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt15__uniq_ptr_dataIN4cvc58internal15BoundVarManagerESt14default_deleteIS2_ELb1ELb1EE", !137, i64 0}
!139 = !{!"_ZTSSt10unique_ptrIN4cvc58internal15BoundVarManagerESt14default_deleteIS2_EE", !138, i64 0}
!140 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !39, i64 0}
!141 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !16, i64 0}
!142 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !141, i64 0}
!143 = !{!"float", !9, i64 0}
!144 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !143, i64 0, !19, i64 8}
!145 = !{!"_ZTSSt10_HashtableIPN4cvc58internal4expr9NodeValueES4_SaIS4_ENSt8__detail9_IdentityENS2_15NodeValuePoolEqENS2_25NodeValuePoolHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE", !140, i64 0, !19, i64 8, !142, i64 16, !19, i64 24, !144, i64 32, !141, i64 48}
!146 = !{!"_ZTSSt13unordered_setIPN4cvc58internal4expr9NodeValueENS2_25NodeValuePoolHashFunctionENS2_15NodeValuePoolEqESaIS4_EE", !145, i64 0}
!147 = !{!"p1 _ZTSN4cvc58internal4expr4attr16AttributeManagerE", !16, i64 0}
!148 = !{!"bool", !9, i64 0}
!149 = !{!"_ZTSSt10_HashtableIPN4cvc58internal4expr9NodeValueES4_SaIS4_ENSt8__detail9_IdentityENS2_19NodeValueIDEqualityENS2_23NodeValueIDHashFunctionENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb1ELb1ELb1EEEE", !140, i64 0, !19, i64 8, !142, i64 16, !19, i64 24, !144, i64 32, !141, i64 48}
!150 = !{!"_ZTSSt13unordered_setIPN4cvc58internal4expr9NodeValueENS2_23NodeValueIDHashFunctionENS2_19NodeValueIDEqualityESaIS4_EE", !149, i64 0}
!151 = !{!"p2 _ZTSN4cvc58internal4expr9NodeValueE", !39, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIPN4cvc58internal4expr9NodeValueESaIS4_EE17_Vector_impl_dataE", !151, i64 0, !151, i64 8, !151, i64 16}
!153 = !{!"_ZTSNSt12_Vector_baseIPN4cvc58internal4expr9NodeValueESaIS4_EE12_Vector_implE", !152, i64 0}
!154 = !{!"_ZTSSt12_Vector_baseIPN4cvc58internal4expr9NodeValueESaIS4_EE", !153, i64 0}
!155 = !{!"_ZTSSt6vectorIPN4cvc58internal4expr9NodeValueESaIS4_EE", !154, i64 0}
!156 = !{!"_ZTSSt4lessIN4cvc58internal4kind6Kind_tEE"}
!157 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4cvc58internal4kind6Kind_tEEE", !156, i64 0}
!158 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal4kind6Kind_tESt4pairIKS3_St3mapINS1_8TypeNodeENS1_12NodeTemplateILb1EEESt4lessIS7_ESaIS4_IKS7_S9_EEEESt10_Select1stISG_ESA_IS3_ESaISG_EE13_Rb_tree_implISJ_Lb1EEE", !157, i64 0, !20, i64 8}
!159 = !{!"_ZTSSt8_Rb_treeIN4cvc58internal4kind6Kind_tESt4pairIKS3_St3mapINS1_8TypeNodeENS1_12NodeTemplateILb1EEESt4lessIS7_ESaIS4_IKS7_S9_EEEESt10_Select1stISG_ESA_IS3_ESaISG_EE", !158, i64 0}
!160 = !{!"_ZTSSt3mapIN4cvc58internal4kind6Kind_tES_INS1_8TypeNodeENS1_12NodeTemplateILb1EEESt4lessIS4_ESaISt4pairIKS4_S6_EEES7_IS3_ESaIS9_IKS3_SD_EEE", !159, i64 0}
!161 = !{!"p1 _ZTSSt10unique_ptrIN4cvc58internal5DTypeESt14default_deleteIS2_EE", !16, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4cvc58internal5DTypeESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!163 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4cvc58internal5DTypeESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !162, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4cvc58internal5DTypeESt14default_deleteIS3_EESaIS6_EE", !163, i64 0}
!165 = !{!"_ZTSSt6vectorISt10unique_ptrIN4cvc58internal5DTypeESt14default_deleteIS3_EESaIS6_EE", !164, i64 0}
!166 = !{!"p1 _ZTSSt10unique_ptrIN4cvc58internal6OracleESt14default_deleteIS2_EE", !16, i64 0}
!167 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6OracleESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !166, i64 0, !166, i64 8, !166, i64 16}
!168 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4cvc58internal6OracleESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !167, i64 0}
!169 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4cvc58internal6OracleESt14default_deleteIS3_EESaIS6_EE", !168, i64 0}
!170 = !{!"_ZTSSt6vectorISt10unique_ptrIN4cvc58internal6OracleESt14default_deleteIS3_EESaIS6_EE", !169, i64 0}
!171 = !{!"_ZTSSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEE"}
!172 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEE", !171, i64 0}
!173 = !{!"_ZTSNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES0_IKS7_N4cvc58internal8TypeNodeEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE13_Rb_tree_implISG_Lb1EEE", !172, i64 0, !20, i64 8}
!174 = !{!"_ZTSSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmES0_IKS7_N4cvc58internal8TypeNodeEESt10_Select1stISC_ESt4lessIS7_ESaISC_EE", !173, i64 0}
!175 = !{!"_ZTSSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEN4cvc58internal8TypeNodeESt4lessIS7_ESaIS0_IKS7_SA_EEE", !174, i64 0}
!176 = !{!"_ZTSSt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4cvc58internal8TypeNodeEEE"}
!177 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4cvc58internal8TypeNodeEEEE", !176, i64 0}
!178 = !{!"_ZTSNSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4cvc58internal8TypeNodeEES0_IKSA_NS8_12NodeTemplateILb1EEEESt10_Select1stISE_ESt4lessISA_ESaISE_EE13_Rb_tree_implISI_Lb1EEE", !177, i64 0, !20, i64 8}
!179 = !{!"_ZTSSt8_Rb_treeISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4cvc58internal8TypeNodeEES0_IKSA_NS8_12NodeTemplateILb1EEEESt10_Select1stISE_ESt4lessISA_ESaISE_EE", !178, i64 0}
!180 = !{!"_ZTSSt3mapISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4cvc58internal8TypeNodeEENS8_12NodeTemplateILb1EEESt4lessISA_ESaIS0_IKSA_SC_EEE", !179, i64 0}
!181 = !{!"_ZTSSt4lessIN4cvc58internal8TypeNodeEE"}
!182 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIN4cvc58internal8TypeNodeEEE", !181, i64 0}
!183 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_11NodeManager14TupleTypeCacheEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE13_Rb_tree_implISB_Lb1EEE", !182, i64 0, !20, i64 8}
!184 = !{!"_ZTSSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_NS1_11NodeManager14TupleTypeCacheEESt10_Select1stIS7_ESt4lessIS2_ESaIS7_EE", !183, i64 0}
!185 = !{!"_ZTSSt3mapIN4cvc58internal8TypeNodeENS1_11NodeManager14TupleTypeCacheESt4lessIS2_ESaISt4pairIKS2_S4_EEE", !184, i64 0}
!186 = !{!"_ZTSN4cvc58internal8TypeNodeE", !26, i64 0}
!187 = !{!"_ZTSN4cvc58internal11NodeManager14TupleTypeCacheE", !185, i64 0, !186, i64 48}
!188 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !182, i64 0, !20, i64 8}
!189 = !{!"_ZTSSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_S2_ESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE", !188, i64 0}
!190 = !{!"_ZTSSt3mapIN4cvc58internal8TypeNodeES2_St4lessIS2_ESaISt4pairIKS2_S2_EEE", !189, i64 0}
!191 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11NodeManager12RecTypeCacheESt4lessISB_ESaIS3_IKSB_SD_EEEESt10_Select1stISK_ESE_IS2_ESaISK_EE13_Rb_tree_implISN_Lb1EEE", !182, i64 0, !20, i64 8}
!192 = !{!"_ZTSSt8_Rb_treeIN4cvc58internal8TypeNodeESt4pairIKS2_St3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11NodeManager12RecTypeCacheESt4lessISB_ESaIS3_IKSB_SD_EEEESt10_Select1stISK_ESE_IS2_ESaISK_EE", !191, i64 0}
!193 = !{!"_ZTSSt3mapIN4cvc58internal8TypeNodeES_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11NodeManager12RecTypeCacheESt4lessIS8_ESaISt4pairIKS8_SA_EEESB_IS2_ESaISD_IKS2_SH_EEE", !192, i64 0}
!194 = !{!"_ZTSN4cvc58internal11NodeManager12RecTypeCacheE", !193, i64 0, !186, i64 48}
!195 = !{!"_ZTSN4cvc58internal11NodeManagerE", !132, i64 0, !139, i64 8, !146, i64 16, !19, i64 72, !147, i64 80, !26, i64 88, !148, i64 96, !150, i64 104, !155, i64 160, !9, i64 184, !160, i64 3240, !165, i64 3288, !170, i64 3312, !175, i64 3336, !180, i64 3384, !187, i64 3432, !190, i64 3488, !194, i64 3536}
!196 = !{!195, !147, i64 80}
!197 = !{!"_ZTSSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashImE5IdMapEESaISB_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSD_18_Mod_range_hashingENSD_20_Default_ranged_hashENSD_20_Prime_rehash_policyENSD_17_Hashtable_traitsILb1ELb0ELb1EEEE", !140, i64 0, !19, i64 8, !142, i64 16, !19, i64 24, !144, i64 32, !141, i64 48}
!198 = !{!197, !19, i64 24}
!199 = !{!106}
!200 = !{!142, !141, i64 0}
!201 = !{!197, !19, i64 8}
!202 = !{!197, !140, i64 0}
!203 = !{!141, !141, i64 0}
!204 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !19, i64 0}
!205 = !{!204, !19, i64 0}
!206 = !{!"p1 _ZTSSt4pairImmE", !16, i64 0}
!207 = !{!206, !206, i64 0}
!208 = !{!"_ZTSSt4pairImmE", !19, i64 0, !19, i64 8}
!209 = !{!208, !19, i64 0}
!210 = !{!115, !113}
!211 = !{!51, !51, i64 0}
!212 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE12_Vector_implE", !35, i64 0}
!213 = !{!"_ZTSSt12_Vector_baseIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !212, i64 0}
!214 = !{!"_ZTSSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE", !213, i64 0}
!215 = !{!"_ZTSSt4pairIKmSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS5_EEE", !19, i64 0, !214, i64 8}
!216 = !{!215, !19, i64 0}
!217 = !{!"_ZTSSt4pairIKmbE", !19, i64 0, !148, i64 8}
!218 = !{!217, !19, i64 0}
!219 = !{!217, !148, i64 8}
!220 = !{!148, !148, i64 0}
!221 = !{i8 0, i8 2}
!222 = !{!46, !46, i64 0}
!223 = !{!64, !64, i64 0}
!224 = !{!65, !65, i64 0}
!225 = distinct !{!225, !34}
!226 = !{!83, !19, i64 0}
!227 = distinct !{!227, !34}
!228 = distinct !{!228, !34}
!229 = distinct !{!229, !34}
!230 = distinct !{null, null, null}
!231 = distinct !{!231, !34}
!232 = !{!"p1 _ZTSN4cvc58internal6theory11quantifiers9InstMatchE", !16, i64 0}
!233 = !{!"_ZTSNSt12_Vector_baseIN4cvc58internal6theory11quantifiers9InstMatchESaIS4_EE17_Vector_impl_dataE", !232, i64 0, !232, i64 8, !232, i64 16}
!234 = !{!233, !232, i64 0}
!235 = !{!233, !232, i64 8}
!236 = !{!233, !232, i64 16}
!237 = distinct !{!237, !34}
!238 = distinct !{!238, !241}
!239 = !{!"_ZTSN4cvc58internal12NodeTemplateILb0EEE", !26, i64 0}
!240 = !{!239, !26, i64 0}
!241 = !{!"llvm.loop.peeled.count", i32 1}
!242 = distinct !{null, null, null, null, null, null}
!243 = distinct !{!243, !34}
!244 = distinct !{!244, !34}
!245 = distinct !{!245, !34}
!246 = distinct !{!246, !34}
!247 = distinct !{!247, !34}
!248 = distinct !{!248, !34}
!249 = !{!100, !100, i64 0}
!250 = distinct !{!250, !34}
!251 = distinct !{!251, !34}
!252 = distinct !{!252, !34}
!253 = distinct !{!253, !34}
!254 = distinct !{!254, !34}
!255 = distinct !{!255, !34}
!256 = distinct !{!256, !34, !261, !262}
!257 = distinct !{!257, !34, !261, !262}
!258 = distinct !{!258, !34, !261, !262}
!259 = distinct !{!259, !34, !261, !262}
!260 = distinct !{!260, !34, !262, !261}
!261 = !{!"llvm.loop.isvectorized", i32 1}
!262 = !{!"llvm.loop.unroll.runtime.disable"}
!263 = distinct !{null, null, null}
!264 = distinct !{null, null}
!265 = distinct !{!265, !34}
!266 = !{!"_ZTSNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_NS1_6theory11quantifiers13InstMatchTrieEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE11_Alloc_nodeE", !78, i64 0}
!267 = !{!266, !78, i64 0}
!268 = !{!18, !15, i64 0}
!269 = !{!18, !17, i64 8}
!270 = distinct !{null, null, null, null, null, null}
!271 = distinct !{null}
!272 = distinct !{!272, !34}
!273 = distinct !{!273, !34}
end_hunk_0
