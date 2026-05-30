inline.NumInlined: 1430
inline.NumDeleted: 710
begin_hunk_0_@_ZL15printSourceLineRN4llvh11raw_ostreamENS_9StringRefE:bb.a
  %.pre-phi118 = phi i64 [ %.pre, %_ZNK4llvh9StringRef4findEcm.exit.thread.thread ], [ %i.h, %_ZNK4llvh9StringRef4findEcm.exit.thread ]
  %i.aa = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.z, i64 noundef %.pre-phi118) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread

bb.e:                                             ; preds = %_ZNK4llvh9StringRef4findEcm.exit.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.l, i64 %i.h, i1 false)
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.h
  store ptr %i.ac, ptr %i.d, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread

bb.f:                                             ; preds = %bb.c
  %.sroa.speculated74 = tail call i64 @llvm.umax.i64(i64 %.sroa.speculated61, i64 %i.k)
  %.sroa.speculated55 = tail call i64 @llvm.umin.i64(i64 %2, i64 %.sroa.speculated74) ; 2 uses
  %i.ad = sub i64 %.sroa.speculated55, %.sroa.speculated61 ; 4 uses
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !124 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ugt i64 %i.ad, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %i.g, i64 noundef %i.ad) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit39

bb.h:                                             ; preds = %bb.f
  %.not.i37 = icmp eq i64 %.sroa.speculated55, %.sroa.speculated61
  br i1 %.not.i37, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit39, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.g, i64 %i.ad, i1 false)
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !124
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  store ptr %i.am, ptr %i.d, align 8, !tbaa !124
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit39

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit39:    ; preds = %bb.g, %bb.h, %bb.i
  %i.an = trunc i64 %i.k to i32                   ; 2 uses
  %i.ao = sub i32 %.020105, %.0106
  %i.ap = add i32 %i.ao, %i.an
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEc.exit, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit39
  %.121 = phi i32 [ %i.ap, %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit39 ], [ %i.au, %_ZN4llvh11raw_ostreamlsEc.exit ]
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !124 ; 3 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !121
  %.not.i40 = icmp ult ptr %i.aq, %i.ar
  br i1 %.not.i40, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 32) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit

bb.l:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.at, ptr %i.d, align 8, !tbaa !124
  store i8 32, ptr %i.aq, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.k, %bb.l
  %i.au = add i32 %.121, 1                        ; 3 uses
  %i.av = and i32 %i.au, 7
  %.not24 = icmp eq i32 %i.av, 0
  br i1 %.not24, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.j, !llvm.loop !205

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.aw = add i32 %i.an, 1                        ; 2 uses
  %.not = icmp eq i32 %i.aw, %i.a
  br i1 %.not, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread, label %bb.b, !llvm.loop !206

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread: ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, %_ZNK4llvh9StringRef4findEcm.exit.thread.thread, %bb.a, %bb.e, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !124 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !121
  %.not.i42 = icmp ult ptr %i.ay, %i.ba
  br i1 %.not.i42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread
  %i.bb = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(36) %0, i8 noundef zeroext 10) #19 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEc.exit44

bb.n:                                             ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.thread
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !124
  store i8 10, ptr %i.ay, align 1, !tbaa !11
  br label %_ZN4llvh11raw_ostreamlsEc.exit44

_ZN4llvh11raw_ostreamlsEc.exit44:                 ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16find_last_not_ofEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i8 } @_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE7emplaceIJRS1_RjEEES4_ISt17_Rb_tree_iteratorIS6_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  %.pre = load ptr, ptr %1, align 8, !tbaa !47    ; 3 uses
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.f = icmp ult ptr %i.e, %.pre                 ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !77 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !207

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit: ; preds = %.lr.ph.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !208
  %i.j = icmp ult ptr %.pre, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit, %bb.b
  %.08.lcssa.i.i.i20 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  store ptr %.pre, ptr %i.l, align 8, !tbaa !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.n = load i32, ptr %2, align 4, !tbaa !3
  store i32 %i.n, ptr %i.m, align 8, !tbaa !79
  %i.o = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i20, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.o, 0        ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.o, 1        ; 4 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i.i = icmp ne ptr %i.p, null
  %i.r = icmp eq ptr %i.q, %i.c
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !47
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = icmp ult ptr %i.s, %i.u
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d, %bb.c
  %i.w = phi i1 [ %i.v, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.w, ptr noundef nonnull %i.k, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !209
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !tbaa !209
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #21
  br label %_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit

_ZNSt3mapIPKcjSt4lessIS1_ESaISt4pairIKS1_jEEE12emplace_hintIJRS1_RjEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_.exit: ; preds = %bb.b, %bb.e, %.thread.i.i
  %.sroa.018.0 = phi ptr [ %i.p, %bb.e ], [ %i.k, %.thread.i.i ], [ %.19.i.i.i, %bb.b ]
  %.sroa.3.0 = phi i8 [ 1, %bb.e ], [ 1, %.thread.i.i ], [ 0, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.018.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #23 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x i64>, ptr %2, align 8, !tbaa !11
  store ptr null, ptr %2, align 8, !tbaa !34
  store <2 x i64> %i.s, ptr %i.q, align 8, !tbaa !11
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !47
  store i64 %i.v, ptr %i.t, align 8, !tbaa !47
  store i64 0, ptr %i.r, align 8, !tbaa !53
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not7.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8
  %i.x = load <2 x i64>, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !11
  store <2 x i64> %i.x, ptr %.09.i.i.i.i.i, align 8, !tbaa !11
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !34
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !47
  store i64 0, ptr %i.w, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !210

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN4llvh9SourceMgr9SrcBufferESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %.lr.ph.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 24 ; 2 uses
  %.not7.i.i.i.i.i18 = icmp eq ptr %1, %i.b
  br i1 %.not7.i.i.i.i.i18, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19

.lr.ph.i.i.i.i.i19:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %.lr.ph.i.i.i.i.i19
  %.09.i.i.i.i.i20 = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i19 ], [ %i.ad, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i21 = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i19 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i21, i64 8
  %i.af = load <2 x i64>, ptr %.sroa.04.08.i.i.i.i.i21, align 8, !tbaa !11
  store <2 x i64> %i.af, ptr %.09.i.i.i.i.i20, align 8, !tbaa !11
  store ptr null, ptr %.sroa.04.08.i.i.i.i.i21, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i20, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i21, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !47
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !47
  store i64 0, ptr %i.ae, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i21, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i20, i64 24 ; 2 uses
  %.not.i.i.i.i.i22 = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i.i.i.i22, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, label %.lr.ph.i.i.i.i.i19, !llvm.loop !210

_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24: ; preds = %.lr.ph.i.i.i.i.i19, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i23 = phi ptr [ %i.ad, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ak, %.lr.ph.i.i.i.i.i19 ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24, %_ZSt8_DestroyIN4llvh9SourceMgr9SrcBufferEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.az, %_ZSt8_DestroyIN4llvh9SourceMgr9SrcBufferEEvPT_.exit.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !53 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %i.am, 8
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.an = and i64 %i.am, -8
  %i.ao = inttoptr i64 %i.an to ptr               ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i.i.i.i: ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #21
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i

_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i:            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.sink.split.i.i.i.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef 24) #21
  store i64 0, ptr %i.al, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit.i.i.i.i, %.lr.ph.i.i
  %i.av = load ptr, ptr %.05.i.i, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i.i25 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i25, label %_ZSt8_DestroyIN4llvh9SourceMgr9SrcBufferEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.av) #19, !inline_history !211
  br label %_ZSt8_DestroyIN4llvh9SourceMgr9SrcBufferEEvPT_.exit.i.i

_ZSt8_DestroyIN4llvh9SourceMgr9SrcBufferEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvh12MemoryBufferEEclEPS1_.exit.i.i.i.i.i, %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !212

_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit: ; preds = %_ZSt8_DestroyIN4llvh9SourceMgr9SrcBufferEEvPT_.exit.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN4llvh9SourceMgr9SrcBufferES3_SaIS2_EET0_T_S6_S5_RT1_.exit24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #21
  br label %_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvh9SourceMgr9SrcBufferESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN4llvh9SourceMgr9SrcBufferEEvT_S4_.exit, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i.i.i23, ptr %i.a, align 8, !tbaa !48
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !51
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !209
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = load ptr, ptr %2, align 8, !tbaa !47
  %i.j = icmp ult ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !77 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !47     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = icmp ult ptr %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !77 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !213

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !214
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #22 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load ptr, ptr %.phi.trans.insert80, align 8, !tbaa !47
  %.pre82 = load ptr, ptr %2, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi ptr [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi ptr [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult ptr %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_.exit
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIPKcSt4pairIKS1_jESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_:bb.a

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
  %.not.i.i.i.i7 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i7, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i, label %1

1:                                                ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #23
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i: ; preds = %1, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %3 = phi ptr [ %2, %1 ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i ] ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab ; 2 uses
  store i8 %i.u, ptr %4, align 1, !tbaa !11
  %5 = icmp sgt i64 %i.ab, 0
  br i1 %5, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %3, ptr align 1 %i.y, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  store ptr %3, ptr %i.e, align 8, !tbaa !110
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !108
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
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
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 2305843009213693951)
  %i.ah = select i1 %i.af, i64 2305843009213693951, i64 %i.ag ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #23 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 %i.ab ; 2 uses
  store i32 %i.x, ptr %i.ak, align 4, !tbaa !3
  %i.al = icmp sgt i64 %i.ab, 0
  br i1 %i.al, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aj, ptr align 4 %i.r, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ab) #21
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aj, ptr %i.e, align 8, !tbaa !116
  store ptr %i.am, ptr %i.p, align 8, !tbaa !114
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.an, ptr %i.q, align 8, !tbaa !220
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.ao = phi ptr [ %i.aj, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.d ]
  %i.ap = phi ptr [ %i.an, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.f ], [ %i.s, %bb.d ]
  %i.aq = phi ptr [ %i.am, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.y, %bb.f ], [ %i.t, %bb.d ]
  %i.ar = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.o
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !221

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.c, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ]
  ret ptr %.06
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvh9SourceMgr9SrcBuffer10getOffsetsImEEPSt6vectorIT_SaIS4_EEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 {
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
  %i.g = or i64 %i.f, 6
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

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.r = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 6 uses
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 4 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 4 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %_ZNSt6vectorImSaImEE9push_backEOm.exit ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %.011
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %.011, ptr %i.t, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.p, align 8, !tbaa !117
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.g:                                             ; preds = %bb.e
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.r to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i.i7 = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i7)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #23 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i64 %.011, ptr %i.aj, align 8, !tbaa !52
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %i.r, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.aa) #21
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ai, ptr %i.e, align 8, !tbaa !119
  store ptr %i.al, ptr %i.p, align 8, !tbaa !117
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.am, ptr %i.q, align 8, !tbaa !222
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.f, %bb.d
  %i.an = phi ptr [ %i.ai, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.r, %bb.f ], [ %i.r, %bb.d ]
  %i.ao = phi ptr [ %i.am, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.s, %bb.f ], [ %i.s, %bb.d ]
  %i.ap = phi ptr [ %i.al, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.x, %bb.f ], [ %i.t, %bb.d ]
  %i.aq = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.o
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !223

.loopexit:                                        ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit, %bb.c, %bb.b
  %.06 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  ret ptr %.06
}

declare void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE4growEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !128
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = add nuw nsw i64 %i.c, 2                  ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = add nuw nsw i64 %i.p, 1
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %1) ; 2 uses
  %i.r = and i64 %.sroa.speculated, 4294967295    ; 3 uses
  %.not = icmp samesign ule i64 %i.r, %i.c
  %i.s = icmp ult i64 %i.r, %1
  %or.cond = or i1 %.not, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.16, i1 noundef zeroext true) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.t = mul nuw nsw i64 %i.r, 48
  %i.u = tail call noalias ptr @malloc(i64 noundef %i.t) #24 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %_ZN4llvh11safe_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef nonnull @.str.17, i1 noundef zeroext true) #19
  br label %_ZN4llvh11safe_mallocEm.exit

_ZN4llvh11safe_mallocEm.exit:                     ; preds = %bb.c, %bb.d
  %i.w = load ptr, ptr %0, align 8, !tbaa !125    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !127  ; 2 uses
  %i.z = zext i32 %i.y to i64
  %.idx = mul nuw nsw i64 %i.z, 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not7.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.aq, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.u, %_ZN4llvh11safe_mallocEm.exit ] ; 5 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ap, %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.04.08.i.i.i.i, i64 16, i1 false), !tbaa.struct !202
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !26
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !20 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 16
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !20
  %i.al = load i64, ptr %i.af, align 8, !tbaa !11
  store i64 %i.al, ptr %i.ad, align 8, !tbaa !11
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.e
  %i.am = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ai, %bb.e ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 24
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !25
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !20
  store i64 0, ptr %i.an, align 8, !tbaa !25
  store i8 0, ptr %i.af, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 48 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 48
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.aa
  br i1 %.not.i.i.i.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !224

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit: ; preds = %_ZSt10_ConstructIN4llvh7SMFixItEJS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !125 ; 3 uses
  %.pre16 = load i32, ptr %i.x, align 8, !tbaa !127 ; 2 uses
  %.not4.i = icmp eq i32 %.pre16, 0
  br i1 %.not4.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.ar = zext i32 %.pre16 to i64
  %.idx14 = mul nuw nsw i64 %i.ar, 48
  %i.as = getelementptr inbounds nuw i8, ptr %.pre15, i64 %.idx14
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvh7SMFixItD2Ev.exit.i
  %.05.i = phi ptr [ %i.at, %_ZN4llvh7SMFixItD2Ev.exit.i ], [ %i.as, %.lr.ph.i.preheader ] ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %.05.i, i64 -48 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.05.i, i64 -32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.05.i, i64 -16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4llvh7SMFixItD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph.i
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.az = add i64 %i.ay, 1
  tail call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #21
  br label %_ZN4llvh7SMFixItD2Ev.exit.i

_ZN4llvh7SMFixItD2Ev.exit.i:                      ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.not.i = icmp eq ptr %.pre15, %i.at
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit, label %.lr.ph.i, !llvm.loop !170

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit: ; preds = %_ZN4llvh7SMFixItD2Ev.exit.i
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !125
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit: ; preds = %_ZN4llvh11safe_mallocEm.exit, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit
  %i.ba = phi ptr [ %.pre17, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit.loopexit ], [ %.pre15, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit ], [ %i.w, %_ZN4llvh11safe_mallocEm.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit
  tail call void @free(ptr noundef %i.ba) #19
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4llvh23SmallVectorTemplateBaseINS_7SMFixItELb0EE13destroy_rangeEPS1_S3_.exit
  store ptr %i.u, ptr %0, align 8, !tbaa !125
  %i.bd = trunc i64 %.sroa.speculated to i32
  store i32 %i.bd, ptr %i.a, align 4, !tbaa !128
  ret void
}

declare void @_ZN4llvh22report_bad_alloc_errorEPKcb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIPN4llvh7SMFixItElN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S6_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
end_hunk_1
