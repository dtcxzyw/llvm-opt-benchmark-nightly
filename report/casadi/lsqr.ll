Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/lsqr?download=true
inline.NumInlined: 579
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi15PluginInterfaceINS8_14LinsolInternalEE6PluginEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE24_M_get_insert_unique_posERS7_:bb.a
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #24 ; 2 uses
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
  %.029 = load ptr, ptr %.in, align 8, !tbaa !56  ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !138

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !52
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !30   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !18
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #24 ; 2 uses
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

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !26
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !23
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #26
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #22 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !26
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !26
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #23
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %4 to i64
  %i.c = load i64, ptr %3, align 8, !tbaa !47     ; 35 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47   ; 70 uses
  %i.f = getelementptr [8 x i8], ptr %4, i64 %i.c ; 43 uses
  %.not.i = icmp ne ptr %4, null                  ; 4 uses
  br i1 %.not.i, label %bb.b, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %bb.a
  %i.g = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.h = icmp sgt i64 %i.e, 0
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit280

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %1, null
  %i.i = icmp sgt i64 %i.c, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.c, 8
  %i.j = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.j, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader725, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.c, 9223372036854775804      ; 4 uses
  %i.k = shl i64 %n.vec, 3                        ; 2 uses
  %i.l = getelementptr i8, ptr %4, i64 %i.k
  %i.m = getelementptr i8, ptr %1, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.n = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.n  ; 2 uses
  %next.gep540 = getelementptr i8, ptr %1, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep540, i64 16
  %wide.load = load <2 x double>, ptr %next.gep540, align 8, !tbaa !26
  %wide.load541 = load <2 x double>, ptr %i.o, align 8, !tbaa !26
  %i.p = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !26
  store <2 x double> %wide.load541, ptr %i.p, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader725

.lr.ph.i.preheader725:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %4, %.lr.ph.i.preheader ], [ %i.l, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.m, %middle.block ] ; 2 uses
  %i.r = sub nsw i64 %i.c, %.020.i.ph
  %xtraiter = and i64 %i.r, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader725, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.v, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader725 ]
  %.01019.i.prol = phi ptr [ %i.u, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader725 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.s, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader725 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader725 ]
  %i.s = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.t = load double, ptr %.01218.i.prol, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.t, ptr %.01019.i.prol, align 8, !tbaa !26
  %i.v = add nuw nsw i64 %.020.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !140

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader725
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader725 ], [ %i.v, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader725 ], [ %i.u, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader725 ], [ %i.s, %.lr.ph.i.prol ]
  %i.w = sub nsw i64 %.020.i.ph, %i.c
  %i.x = icmp ugt i64 %i.w, -8
  br i1 %i.x, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.y = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %i.y, i1 false), !tbaa !26
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.aa = load double, ptr %.01218.i, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.aa, ptr %.01019.i, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.ad = load double, ptr %i.z, align 8, !tbaa !26
  %i.ae = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.ad, ptr %i.ab, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ag, ptr %i.ae, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.aj = load double, ptr %i.af, align 8, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.aj, ptr %i.ah, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.am = load double, ptr %i.ai, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.am, ptr %i.ak, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.ap = load double, ptr %i.al, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.ap, ptr %i.an, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.as = load double, ptr %i.ao, align 8, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.as, ptr %i.aq, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.av = load double, ptr %i.ar, align 8, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.av, ptr %i.at, align 8, !tbaa !26
  %i.ax = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.ax, %i.c
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !141

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e ; 3 uses
  %i.az = icmp sgt i64 %i.e, 0
  br i1 %i.az, label %.lr.ph.preheader.i279, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit280

.lr.ph.preheader.i279:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.ba = shl nuw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.ba, i1 false), !tbaa !26
  %i.bb = shl nuw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.bb, i1 false), !tbaa !26
  %i.bc = shl nuw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.bc, i1 false), !tbaa !26
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit280

_ZN6casadi12casadi_clearIdEEvPT_x.exit280:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %.lr.ph.preheader.i279
  %or.cond.i516519521 = phi i1 [ true, %.lr.ph.preheader.i279 ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ]
  %5 = phi i1 [ true, %.lr.ph.preheader.i279 ], [ %i.h, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 5 uses
  %6 = phi ptr [ %i.ay, %.lr.ph.preheader.i279 ], [ %i.g, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.ay, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 3 uses
  %7 = ptrtoaddr ptr %6 to i64
  %8 = getelementptr [8 x i8], ptr %i.f, i64 %i.e ; 2 uses
  %9 = getelementptr [8 x i8], ptr %8, i64 %i.e   ; 17 uses
  %i.bd = getelementptr [8 x i8], ptr %9, i64 %i.e ; 6 uses
  %i.be = icmp sgt i64 %i.c, 0                    ; 6 uses
  br i1 %i.be, label %.lr.ph.i.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph.i.i.preheader:                             ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit280
  %i.bf = add nsw i64 %i.c, -1
  %xtraiter726 = and i64 %i.c, 3                  ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 3
  br i1 %i.bg, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.c, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ]
  %.0710.i.i = phi ptr [ %4, %.lr.ph.i.i.preheader.new ], [ %i.bq, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bh = getelementptr i8, ptr %.0710.i.i, i64 8
  %i.bi = load double, ptr %.0710.i.i, align 8, !tbaa !26 ; 2 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bi, double %.012.i.i)
  %i.bk = getelementptr i8, ptr %.0710.i.i, i64 16
  %i.bl = load double, ptr %i.bh, align 8, !tbaa !26 ; 2 uses
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bj)
  %i.bn = getelementptr i8, ptr %.0710.i.i, i64 24
  %i.bo = load double, ptr %i.bk, align 8, !tbaa !26 ; 2 uses
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bm)
  %i.bq = getelementptr i8, ptr %.0710.i.i, i64 32 ; 2 uses
  %i.br = load double, ptr %i.bn, align 8, !tbaa !26 ; 2 uses
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %i.br, double %i.bp) ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod727.not = icmp eq i64 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.bs, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %.0710.i.i.epil.init = phi ptr [ %4, %.lr.ph.i.i.preheader ], [ %i.bq, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %lcmp.mod729 = icmp ne i64 %xtraiter726, 0
  tail call void @llvm.assume(i1 %lcmp.mod729)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi double [ %i.bv, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0710.i.i.epil = phi ptr [ %i.bt, %.lr.ph.i.i.epil ], [ %.0710.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bt = getelementptr i8, ptr %.0710.i.i.epil, i64 8
  %i.bu = load double, ptr %.0710.i.i.epil, align 8, !tbaa !26 ; 2 uses
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %.012.i.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter726
  br i1 %epil.iter.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i.epil, !llvm.loop !143

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit:       ; preds = %.lr.ph.i.i.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa
  %.lcssa724 = phi double [ %i.bs, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ], [ %i.bv, %.lr.ph.i.i.epil ]
  %i.bw = tail call noundef double @sqrt(double noundef %.lcssa724) #24 ; 11 uses
  %i.bx = fcmp ogt double %i.bw, 0.000000e+00
  br i1 %i.bx, label %.lr.ph, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph:                                           ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %i.by = fdiv nnan double 1.000000e+00, %i.bw    ; 2 uses
  %min.iters.check545 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check545, label %scalar.ph544.preheader, label %vector.ph546

vector.ph546:                                     ; preds = %.lr.ph
  %n.vec547 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.by, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next552, %vector.body548 ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index549 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 2 uses
  %wide.load550 = load <2 x double>, ptr %i.bz, align 8, !tbaa !26
  %wide.load551 = load <2 x double>, ptr %i.ca, align 8, !tbaa !26
  %i.cb = fmul <2 x double> %broadcast.splat, %wide.load550
  %i.cc = fmul <2 x double> %broadcast.splat, %wide.load551
  store <2 x double> %i.cb, ptr %i.bz, align 8, !tbaa !26
  store <2 x double> %i.cc, ptr %i.ca, align 8, !tbaa !26
  %index.next552 = add nuw i64 %index549, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next552, %n.vec547
  br i1 %i.cd, label %middle.block553, label %vector.body548, !llvm.loop !144

middle.block553:                                  ; preds = %vector.body548
  %cmp.n554 = icmp eq i64 %i.c, %n.vec547
  br i1 %cmp.n554, label %._crit_edge, label %scalar.ph544.preheader

scalar.ph544.preheader:                           ; preds = %.lr.ph, %middle.block553
  %.0253425.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec547, %middle.block553 ]
  br label %scalar.ph544

scalar.ph544:                                     ; preds = %scalar.ph544.preheader, %scalar.ph544
  %.0253425 = phi i64 [ %i.ch, %scalar.ph544 ], [ %.0253425.ph, %scalar.ph544.preheader ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0253425 ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !26
  %i.cg = fmul double %i.by, %i.cf
  store double %i.cg, ptr %i.ce, align 8, !tbaa !26
  %i.ch = add nuw nsw i64 %.0253425, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph544, !llvm.loop !145

._crit_edge:                                      ; preds = %scalar.ph544, %middle.block553
  %i.ci = icmp ne ptr %0, null
  %or.cond.i281 = and i1 %i.ci, %.not.i
  br i1 %or.cond.i281, label %bb.c, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit

bb.c:                                             ; preds = %._crit_edge
  %.not.not = icmp eq i64 %2, 0
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.e
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 6 uses
  br i1 %.not.not, label %.preheader49.i, label %.preheader.i285

.preheader49.i:                                   ; preds = %bb.c
  br i1 %5, label %.lr.ph54.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph54.preheader.i:                             ; preds = %.preheader49.i
  %.pre.i = load i64, ptr %i.cj, align 8, !tbaa !47
  br label %.lr.ph54.i

.preheader.i285:                                  ; preds = %bb.c
  br i1 %5, label %.lr.ph58.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph58.preheader.i:                             ; preds = %.preheader.i285
  %.pre63.i = load i64, ptr %i.cj, align 8, !tbaa !47
  br label %.lr.ph58.i

.loopexit48.i:                                    ; preds = %.prol.loopexit734, %.lr.ph.i283.new, %.lr.ph54.i
  %exitcond60.not.i = icmp eq i64 %i.cn, %i.e
  br i1 %exitcond60.not.i, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, label %.lr.ph54.i, !llvm.loop !146

.lr.ph54.i:                                       ; preds = %.loopexit48.i, %.lr.ph54.preheader.i
  %i.cm = phi i64 [ %i.cp, %.loopexit48.i ], [ %.pre.i, %.lr.ph54.preheader.i ] ; 7 uses
  %.04253.i = phi i64 [ %i.cn, %.loopexit48.i ], [ 0, %.lr.ph54.preheader.i ] ; 2 uses
  %i.cn = add nuw nsw i64 %.04253.i, 1            ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !47 ; 5 uses
  %i.cq = icmp slt i64 %i.cm, %i.cp
  br i1 %i.cq, label %.lr.ph.i283, label %.loopexit48.i

.lr.ph.i283:                                      ; preds = %.lr.ph54.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.04253.i ; 4 uses
  %.promoted.i = load double, ptr %i.cr, align 8, !tbaa !26 ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cm
  %.neg800 = add i64 %i.cm, 1
  %xtraiter735 = and i64 %i.cs, 1
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %.prol.loopexit734, label %.prol.loopexit734.unr-lcssa

.prol.loopexit734.unr-lcssa:                      ; preds = %.lr.ph.i283
  %i.ct = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cm
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !26
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !47
  %i.cx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !26
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.cy, double %.promoted.i) ; 2 uses
  store double %i.cz, ptr %i.cr, align 8, !tbaa !26
  %i.da = add nsw i64 %i.cm, 1
  br label %.prol.loopexit734

.prol.loopexit734:                                ; preds = %.prol.loopexit734.unr-lcssa, %.lr.ph.i283
  %.unr = phi double [ %.promoted.i, %.lr.ph.i283 ], [ %i.cz, %.prol.loopexit734.unr-lcssa ]
  %.052.i.unr = phi i64 [ %i.cm, %.lr.ph.i283 ], [ %i.da, %.prol.loopexit734.unr-lcssa ]
  %i.db = icmp eq i64 %i.cp, %.neg800
  br i1 %i.db, label %.loopexit48.i, label %.lr.ph.i283.new

.lr.ph.i283.new:                                  ; preds = %.prol.loopexit734, %.lr.ph.i283.new
  %i.dc = phi double [ %i.dr, %.lr.ph.i283.new ], [ %.unr, %.prol.loopexit734 ]
  %.052.i = phi i64 [ %i.ds, %.lr.ph.i283.new ], [ %.052.i.unr, %.prol.loopexit734 ] ; 4 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %0, i64 %.052.i
  %i.de = load double, ptr %i.dd, align 8, !tbaa !26
  %i.df = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %.052.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !47
  %i.dh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !26
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.de, double %i.di, double %i.dc) ; 2 uses
  store double %i.dj, ptr %i.cr, align 8, !tbaa !26
  %i.dk = add nsw i64 %.052.i, 1                  ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !26
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dk
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !47
  %i.dp = getelementptr inbounds [8 x i8], ptr %4, i64 %i.do
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !26
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.dq, double %i.dj) ; 2 uses
  store double %i.dr, ptr %i.cr, align 8, !tbaa !26
  %i.ds = add nsw i64 %.052.i, 2                  ; 2 uses
  %exitcond.not.i284.1 = icmp eq i64 %i.ds, %i.cp
  br i1 %exitcond.not.i284.1, label %.loopexit48.i, label %.lr.ph.i283.new, !llvm.loop !147

.loopexit.i:                                      ; preds = %.prol.loopexit, %.lr.ph56.i.new, %.lr.ph58.i
  %exitcond62.not.i = icmp eq i64 %i.du, %i.e
  br i1 %exitcond62.not.i, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, label %.lr.ph58.i, !llvm.loop !148

.lr.ph58.i:                                       ; preds = %.loopexit.i, %.lr.ph58.preheader.i
  %i.dt = phi i64 [ %i.dw, %.loopexit.i ], [ %.pre63.i, %.lr.ph58.preheader.i ] ; 7 uses
  %.14357.i = phi i64 [ %i.du, %.loopexit.i ], [ 0, %.lr.ph58.preheader.i ] ; 2 uses
  %i.du = add nuw nsw i64 %.14357.i, 1            ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !47 ; 5 uses
  %i.dx = icmp slt i64 %i.dt, %i.dw
  br i1 %i.dx, label %.lr.ph56.i, label %.loopexit.i

.lr.ph56.i:                                       ; preds = %.lr.ph58.i
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.14357.i ; 3 uses
  %i.dz = sub i64 %i.dw, %i.dt
  %.neg = add i64 %i.dt, 1
  %xtraiter730 = and i64 %i.dz, 1
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph56.i
  %i.ea = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dt
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !26
  %i.ec = load double, ptr %i.dy, align 8, !tbaa !26
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.dt
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !47
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ee ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !26
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.ec, double %i.eg)
  store double %i.eh, ptr %i.ef, align 8, !tbaa !26
  %i.ei = add nsw i64 %i.dt, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph56.i
  %.155.i.unr = phi i64 [ %i.dt, %.lr.ph56.i ], [ %i.ei, %.prol.loopexit.unr-lcssa ]
  %i.ej = icmp eq i64 %i.dw, %.neg
  br i1 %i.ej, label %.loopexit.i, label %.lr.ph56.i.new

.lr.ph56.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph56.i.new
  %.155.i = phi i64 [ %i.fb, %.lr.ph56.i.new ], [ %.155.i.unr, %.prol.loopexit ] ; 4 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %0, i64 %.155.i
  %i.el = load double, ptr %i.ek, align 8, !tbaa !26
  %i.em = load double, ptr %i.dy, align 8, !tbaa !26
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %.155.i
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !47
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.eo ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !26
  %i.er = tail call double @llvm.fmuladd.f64(double %i.el, double %i.em, double %i.eq)
  store double %i.er, ptr %i.ep, align 8, !tbaa !26
  %i.es = add nsw i64 %.155.i, 1                  ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %0, i64 %i.es
  %i.eu = load double, ptr %i.et, align 8, !tbaa !26
  %i.ev = load double, ptr %i.dy, align 8, !tbaa !26
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.es
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !47
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ex ; 2 uses
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !26
  %i.fa = tail call double @llvm.fmuladd.f64(double %i.eu, double %i.ev, double %i.ez)
  store double %i.fa, ptr %i.ey, align 8, !tbaa !26
  %i.fb = add nsw i64 %.155.i, 2                  ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %i.fb, %i.dw
  br i1 %exitcond61.not.i.1, label %.loopexit.i, label %.lr.ph56.i.new, !llvm.loop !149

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit:    ; preds = %.loopexit.i, %.loopexit48.i, %._crit_edge
  br i1 %5, label %.lr.ph.i.i287.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph.i.i287.preheader:                          ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit
  %i.fc = add i64 %i.e, -1
  %xtraiter738 = and i64 %i.e, 3                  ; 3 uses
  %i.fd = icmp ult i64 %i.fc, 3
  br i1 %i.fd, label %.lr.ph.i.i287.epil.preheader, label %.lr.ph.i.i287.preheader.new

.lr.ph.i.i287.preheader.new:                      ; preds = %.lr.ph.i.i287.preheader
  %unroll_iter743 = and i64 %i.e, -4
  br label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %.lr.ph.i.i287, %.lr.ph.i.i287.preheader.new
  %.012.i.i288 = phi double [ 0.000000e+00, %.lr.ph.i.i287.preheader.new ], [ %i.fp, %.lr.ph.i.i287 ]
  %.0710.i.i290 = phi ptr [ %i.f, %.lr.ph.i.i287.preheader.new ], [ %i.fn, %.lr.ph.i.i287 ] ; 5 uses
  %niter744 = phi i64 [ 0, %.lr.ph.i.i287.preheader.new ], [ %niter744.next.3, %.lr.ph.i.i287 ]
  %i.fe = getelementptr i8, ptr %.0710.i.i290, i64 8
  %i.ff = load double, ptr %.0710.i.i290, align 8, !tbaa !26 ; 2 uses
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.ff, double %.012.i.i288)
  %i.fh = getelementptr i8, ptr %.0710.i.i290, i64 16
  %i.fi = load double, ptr %i.fe, align 8, !tbaa !26 ; 2 uses
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fi, double %i.fg)
  %i.fk = getelementptr i8, ptr %.0710.i.i290, i64 24
  %i.fl = load double, ptr %i.fh, align 8, !tbaa !26 ; 2 uses
  %i.fm = tail call double @llvm.fmuladd.f64(double %i.fl, double %i.fl, double %i.fj)
  %i.fn = getelementptr i8, ptr %.0710.i.i290, i64 32 ; 2 uses
  %i.fo = load double, ptr %i.fk, align 8, !tbaa !26 ; 2 uses
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fo, double %i.fo, double %i.fm) ; 3 uses
  %niter744.next.3 = add i64 %niter744, 4         ; 2 uses
  %niter744.ncmp.3 = icmp eq i64 %niter744.next.3, %unroll_iter743
  br i1 %niter744.ncmp.3, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa, label %.lr.ph.i.i287, !llvm.loop !142

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa: ; preds = %.lr.ph.i.i287
  %lcmp.mod740.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod740.not, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, label %.lr.ph.i.i287.epil.preheader

.lr.ph.i.i287.epil.preheader:                     ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa, %.lr.ph.i.i287.preheader
  %.012.i.i288.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i287.preheader ], [ %i.fp, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa ]
  %.0710.i.i290.epil.init = phi ptr [ %i.f, %.lr.ph.i.i287.preheader ], [ %i.fn, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa ]
  %lcmp.mod742 = icmp ne i64 %xtraiter738, 0
  tail call void @llvm.assume(i1 %lcmp.mod742)
  br label %.lr.ph.i.i287.epil

.lr.ph.i.i287.epil:                               ; preds = %.lr.ph.i.i287.epil, %.lr.ph.i.i287.epil.preheader
  %.012.i.i288.epil = phi double [ %i.fs, %.lr.ph.i.i287.epil ], [ %.012.i.i288.epil.init, %.lr.ph.i.i287.epil.preheader ]
  %.0710.i.i290.epil = phi ptr [ %i.fq, %.lr.ph.i.i287.epil ], [ %.0710.i.i290.epil.init, %.lr.ph.i.i287.epil.preheader ] ; 2 uses
  %epil.iter739 = phi i64 [ %epil.iter739.next, %.lr.ph.i.i287.epil ], [ 0, %.lr.ph.i.i287.epil.preheader ]
  %i.fq = getelementptr i8, ptr %.0710.i.i290.epil, i64 8
  %i.fr = load double, ptr %.0710.i.i290.epil, align 8, !tbaa !26 ; 2 uses
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fr, double %i.fr, double %.012.i.i288.epil) ; 2 uses
  %epil.iter739.next = add i64 %epil.iter739, 1   ; 2 uses
  %epil.iter739.cmp.not = icmp eq i64 %epil.iter739.next, %xtraiter738
  br i1 %epil.iter739.cmp.not, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, label %.lr.ph.i.i287.epil, !llvm.loop !150

_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread: ; preds = %.lr.ph.i.i287.epil, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa
  %.lcssa722 = phi double [ %i.fp, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread.unr-lcssa ], [ %i.fs, %.lr.ph.i.i287.epil ]
  %i.ft = tail call noundef double @sqrt(double noundef %.lcssa722) #24 ; 7 uses
  %i.fu = fcmp ogt double %i.ft, 0.000000e+00
  br i1 %i.fu, label %.lr.ph427, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph427:                                        ; preds = %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread
  %i.fv = fdiv nnan double 1.000000e+00, %i.ft    ; 2 uses
  %min.iters.check557 = icmp ult i64 %i.e, 4
  br i1 %min.iters.check557, label %scalar.ph556.preheader, label %vector.ph558

vector.ph558:                                     ; preds = %.lr.ph427
  %n.vec559 = and i64 %i.e, -4                    ; 3 uses
  %broadcast.splatinsert560 = insertelement <2 x double> poison, double %i.fv, i64 0
  %broadcast.splat561 = shufflevector <2 x double> %broadcast.splatinsert560, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph558
  %index563 = phi i64 [ 0, %vector.ph558 ], [ %index.next566, %vector.body562 ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index563 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %wide.load564 = load <2 x double>, ptr %i.fw, align 8, !tbaa !26
  %wide.load565 = load <2 x double>, ptr %i.fx, align 8, !tbaa !26
  %i.fy = fmul <2 x double> %broadcast.splat561, %wide.load564
  %i.fz = fmul <2 x double> %broadcast.splat561, %wide.load565
  store <2 x double> %i.fy, ptr %i.fw, align 8, !tbaa !26
  store <2 x double> %i.fz, ptr %i.fx, align 8, !tbaa !26
  %index.next566 = add nuw i64 %index563, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next566, %n.vec559
  br i1 %i.ga, label %middle.block567, label %vector.body562, !llvm.loop !151

middle.block567:                                  ; preds = %vector.body562
  %cmp.n568 = icmp eq i64 %i.e, %n.vec559
  br i1 %cmp.n568, label %._crit_edge428, label %scalar.ph556.preheader

scalar.ph556.preheader:                           ; preds = %.lr.ph427, %middle.block567
  %.1254426.ph = phi i64 [ 0, %.lr.ph427 ], [ %n.vec559, %middle.block567 ]
  br label %scalar.ph556

scalar.ph556:                                     ; preds = %scalar.ph556.preheader, %scalar.ph556
  %.1254426 = phi i64 [ %i.ge, %scalar.ph556 ], [ %.1254426.ph, %scalar.ph556.preheader ] ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.1254426 ; 2 uses
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !26
  %i.gd = fmul double %i.fv, %i.gc
  store double %i.gd, ptr %i.gb, align 8, !tbaa !26
  %i.ge = add nuw nsw i64 %.1254426, 1            ; 2 uses
  %exitcond459.not = icmp eq i64 %i.ge, %i.e
  br i1 %exitcond459.not, label %._crit_edge428, label %scalar.ph556, !llvm.loop !152

._crit_edge428:                                   ; preds = %scalar.ph556, %middle.block567
  br i1 %or.cond.i516519521, label %.lr.ph.i297.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph.i297.preheader:                            ; preds = %._crit_edge428
  %min.iters.check573 = icmp ult i64 %i.e, 8
  br i1 %min.iters.check573, label %.lr.ph.i297.preheader721, label %vector.memcheck570

vector.memcheck570:                               ; preds = %.lr.ph.i297.preheader
  %i.gf = shl i64 %i.e, 4
  %i.gg = add i64 %i.gf, -1
  %diff.check571 = icmp ult i64 %i.gg, 31
  br i1 %diff.check571, label %.lr.ph.i297.preheader721, label %vector.ph574

vector.ph574:                                     ; preds = %vector.memcheck570
  %n.vec575 = and i64 %i.e, -4                    ; 4 uses
  %i.gh = shl i64 %n.vec575, 3                    ; 2 uses
  %i.gi = getelementptr i8, ptr %9, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.f, i64 %i.gh
  br label %vector.body576

vector.body576:                                   ; preds = %vector.body576, %vector.ph574
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next582, %vector.body576 ] ; 2 uses
  %i.gk = shl i64 %index577, 3                    ; 2 uses
  %next.gep578 = getelementptr i8, ptr %9, i64 %i.gk ; 2 uses
  %next.gep579 = getelementptr i8, ptr %i.f, i64 %i.gk ; 2 uses
  %i.gl = getelementptr i8, ptr %next.gep579, i64 16
  %wide.load580 = load <2 x double>, ptr %next.gep579, align 8, !tbaa !26
  %wide.load581 = load <2 x double>, ptr %i.gl, align 8, !tbaa !26
  %i.gm = getelementptr i8, ptr %next.gep578, i64 16
  store <2 x double> %wide.load580, ptr %next.gep578, align 8, !tbaa !26
  store <2 x double> %wide.load581, ptr %i.gm, align 8, !tbaa !26
  %index.next582 = add nuw i64 %index577, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next582, %n.vec575
  br i1 %i.gn, label %middle.block583, label %vector.body576, !llvm.loop !153

middle.block583:                                  ; preds = %vector.body576
  %cmp.n584 = icmp eq i64 %i.e, %n.vec575
  br i1 %cmp.n584, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304, label %.lr.ph.i297.preheader721

.lr.ph.i297.preheader721:                         ; preds = %vector.memcheck570, %.lr.ph.i297.preheader, %middle.block583
  %.020.i298.ph = phi i64 [ 0, %vector.memcheck570 ], [ 0, %.lr.ph.i297.preheader ], [ %n.vec575, %middle.block583 ] ; 4 uses
  %.01019.i299.ph = phi ptr [ %9, %vector.memcheck570 ], [ %9, %.lr.ph.i297.preheader ], [ %i.gi, %middle.block583 ] ; 2 uses
  %.01218.i300.ph = phi ptr [ %i.f, %vector.memcheck570 ], [ %i.f, %.lr.ph.i297.preheader ], [ %i.gj, %middle.block583 ] ; 2 uses
  %i.go = sub i64 %i.e, %.020.i298.ph
  %xtraiter745 = and i64 %i.go, 7                 ; 2 uses
  %lcmp.mod746.not = icmp eq i64 %xtraiter745, 0
  br i1 %lcmp.mod746.not, label %.lr.ph.i297.prol.loopexit, label %.lr.ph.i297.prol

.lr.ph.i297.prol:                                 ; preds = %.lr.ph.i297.preheader721, %.lr.ph.i297.prol
  %.020.i298.prol = phi i64 [ %i.gs, %.lr.ph.i297.prol ], [ %.020.i298.ph, %.lr.ph.i297.preheader721 ]
  %.01019.i299.prol = phi ptr [ %i.gr, %.lr.ph.i297.prol ], [ %.01019.i299.ph, %.lr.ph.i297.preheader721 ] ; 2 uses
  %.01218.i300.prol = phi ptr [ %i.gp, %.lr.ph.i297.prol ], [ %.01218.i300.ph, %.lr.ph.i297.preheader721 ] ; 2 uses
  %prol.iter747 = phi i64 [ %prol.iter747.next, %.lr.ph.i297.prol ], [ 0, %.lr.ph.i297.preheader721 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.01218.i300.prol, i64 8 ; 2 uses
  %i.gq = load double, ptr %.01218.i300.prol, align 8, !tbaa !26
  %i.gr = getelementptr inbounds nuw i8, ptr %.01019.i299.prol, i64 8 ; 2 uses
  store double %i.gq, ptr %.01019.i299.prol, align 8, !tbaa !26
  %i.gs = add nuw nsw i64 %.020.i298.prol, 1      ; 2 uses
  %prol.iter747.next = add i64 %prol.iter747, 1   ; 2 uses
  %prol.iter747.cmp.not = icmp eq i64 %prol.iter747.next, %xtraiter745
  br i1 %prol.iter747.cmp.not, label %.lr.ph.i297.prol.loopexit, label %.lr.ph.i297.prol, !llvm.loop !154

.lr.ph.i297.prol.loopexit:                        ; preds = %.lr.ph.i297.prol, %.lr.ph.i297.preheader721
  %.020.i298.unr = phi i64 [ %.020.i298.ph, %.lr.ph.i297.preheader721 ], [ %i.gs, %.lr.ph.i297.prol ]
  %.01019.i299.unr = phi ptr [ %.01019.i299.ph, %.lr.ph.i297.preheader721 ], [ %i.gr, %.lr.ph.i297.prol ]
  %.01218.i300.unr = phi ptr [ %.01218.i300.ph, %.lr.ph.i297.preheader721 ], [ %i.gp, %.lr.ph.i297.prol ]
  %i.gt = sub i64 %.020.i298.ph, %i.e
  %i.gu = icmp ugt i64 %i.gt, -8
  br i1 %i.gu, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304, label %.lr.ph.i297

.lr.ph.i297:                                      ; preds = %.lr.ph.i297.prol.loopexit, %.lr.ph.i297
  %.020.i298 = phi i64 [ %i.ht, %.lr.ph.i297 ], [ %.020.i298.unr, %.lr.ph.i297.prol.loopexit ]
  %.01019.i299 = phi ptr [ %i.hs, %.lr.ph.i297 ], [ %.01019.i299.unr, %.lr.ph.i297.prol.loopexit ] ; 9 uses
  %.01218.i300 = phi ptr [ %i.hq, %.lr.ph.i297 ], [ %.01218.i300.unr, %.lr.ph.i297.prol.loopexit ] ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 8
  %i.gw = load double, ptr %.01218.i300, align 8, !tbaa !26
  %i.gx = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 8
  store double %i.gw, ptr %.01019.i299, align 8, !tbaa !26
  %i.gy = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 16
  %i.gz = load double, ptr %i.gv, align 8, !tbaa !26
  %i.ha = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 16
  store double %i.gz, ptr %i.gx, align 8, !tbaa !26
  %i.hb = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 24
  %i.hc = load double, ptr %i.gy, align 8, !tbaa !26
  %i.hd = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 24
  store double %i.hc, ptr %i.ha, align 8, !tbaa !26
  %i.he = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 32
  %i.hf = load double, ptr %i.hb, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 32
  store double %i.hf, ptr %i.hd, align 8, !tbaa !26
  %i.hh = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 40
  %i.hi = load double, ptr %i.he, align 8, !tbaa !26
  %i.hj = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 40
  store double %i.hi, ptr %i.hg, align 8, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 48
  %i.hl = load double, ptr %i.hh, align 8, !tbaa !26
  %i.hm = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 48
  store double %i.hl, ptr %i.hj, align 8, !tbaa !26
  %i.hn = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 56
  %i.ho = load double, ptr %i.hk, align 8, !tbaa !26
  %i.hp = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 56
  store double %i.ho, ptr %i.hm, align 8, !tbaa !26
  %i.hq = getelementptr inbounds nuw i8, ptr %.01218.i300, i64 64
  %i.hr = load double, ptr %i.hn, align 8, !tbaa !26
  %i.hs = getelementptr inbounds nuw i8, ptr %.01019.i299, i64 64
  store double %i.hr, ptr %i.hp, align 8, !tbaa !26
  %i.ht = add nuw nsw i64 %.020.i298, 8           ; 2 uses
  %exitcond.not.i301.7 = icmp eq i64 %i.ht, %i.e
  br i1 %exitcond.not.i301.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304, label %.lr.ph.i297, !llvm.loop !155

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304:    ; preds = %.lr.ph.i297.prol.loopexit, %.lr.ph.i297, %middle.block583, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, %.preheader49.i, %.preheader.i285, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread, %._crit_edge428, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %i.hu = phi double [ %i.bw, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ %i.bw, %._crit_edge428 ], [ %i.bw, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ %i.bw, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ %i.bw, %.preheader.i285 ], [ %i.bw, %.preheader49.i ], [ %i.bw, %middle.block583 ], [ %i.bw, %.lr.ph.i297 ], [ %i.bw, %.lr.ph.i297.prol.loopexit ] ; 5 uses
  %i.hv = phi i1 [ %5, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ %5, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ true, %._crit_edge428 ], [ true, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ false, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ false, %.preheader.i285 ], [ false, %.preheader49.i ], [ true, %middle.block583 ], [ true, %.lr.ph.i297 ], [ true, %.lr.ph.i297.prol.loopexit ] ; 7 uses
  %.0241401 = phi double [ 0.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit ], [ 0.000000e+00, %_ZN6casadi12casadi_clearIdEEvPT_x.exit280 ], [ %i.ft, %._crit_edge428 ], [ %i.ft, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit.thread.thread ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit ], [ 0.000000e+00, %.preheader.i285 ], [ 0.000000e+00, %.preheader49.i ], [ %i.ft, %middle.block583 ], [ %i.ft, %.lr.ph.i297 ], [ %i.ft, %.lr.ph.i297.prol.loopexit ] ; 3 uses
  %i.hw = fmul double %i.hu, %.0241401
  %i.hx = fcmp oeq double %i.hw, 0.000000e+00
  br i1 %i.hx, label %bb.d, label %.preheader417

.preheader417:                                    ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304
  %10 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %i.hy = icmp ne ptr %0, null
  %or.cond.i310 = and i1 %i.hy, %.not.i           ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %i.e
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 12 uses
  %.not.i312 = icmp eq i64 %2, 0                  ; 2 uses
  %i.ic = icmp slt i64 %i.e, 1
  %i.id = shl i64 %i.e, 3
  %scevgep.a = getelementptr i8, ptr %10, i64 %i.id
  %i.ie = add i64 %i.c, -1
  %i.if = add i64 %i.e, -1                        ; 2 uses
  %min.iters.check681 = icmp ult i64 %i.c, 4
  %n.vec683 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %cmp.n692 = icmp eq i64 %i.c, %n.vec683
  %xtraiter759 = and i64 %i.c, 3                  ; 3 uses
  %i.ig = icmp ult i64 %i.ie, 3
  %unroll_iter764 = and i64 %i.c, 9223372036854775804
  %lcmp.mod761.not = icmp eq i64 %xtraiter759, 0
  %lcmp.mod763 = icmp ne i64 %xtraiter759, 0
  %min.iters.check667 = icmp ult i64 %i.c, 4
  %n.vec669 = and i64 %i.c, 9223372036854775804   ; 3 uses
  %cmp.n678 = icmp eq i64 %i.c, %n.vec669
  %min.iters.check653 = icmp ult i64 %i.e, 4
  %n.vec655 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n664 = icmp eq i64 %i.e, %n.vec655
  %xtraiter777 = and i64 %i.e, 3                  ; 3 uses
  %i.ih = icmp ult i64 %i.if, 3
  %unroll_iter782 = and i64 %i.e, -4
  %lcmp.mod779.not = icmp eq i64 %xtraiter777, 0
  %lcmp.mod781 = icmp ne i64 %xtraiter777, 0
  %min.iters.check639 = icmp ult i64 %i.e, 4
  %n.vec641 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %cmp.n650 = icmp eq i64 %i.e, %n.vec641
  %min.iters.check626 = icmp ult i64 %i.e, 2
  %n.vec628 = and i64 %i.e, -2                    ; 3 uses
  %cmp.n636 = icmp eq i64 %i.e, %n.vec628
  %min.iters.check610 = icmp ult i64 %i.e, 4
  %bound0606 = icmp ult ptr %6, %i.bd
  %bound1607 = icmp ult ptr %9, %scevgep.a
  %found.conflict608 = and i1 %bound0606, %bound1607
  %n.vec612 = and i64 %i.e, -4                    ; 3 uses
  %11 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %cmp.n623 = icmp eq i64 %i.e, %n.vec612
  %xtraiter784 = and i64 %i.e, 1
  %lcmp.mod785.not = icmp eq i64 %xtraiter784, 0
  %12 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %13 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %14 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %min.iters.check590 = icmp ult i64 %i.e, 4
  %bound0 = icmp ult ptr %9, %8
  %bound1 = icmp ult ptr %i.f, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  %n.vec592 = and i64 %i.e, -4                    ; 3 uses
  %cmp.n603 = icmp eq i64 %i.e, %n.vec592
  %xtraiter787 = and i64 %i.e, 1
  %lcmp.mod788.not = icmp eq i64 %xtraiter787, 0
  %xtraiter790 = and i64 %i.e, 3                  ; 3 uses
  %i.ii = icmp ult i64 %i.if, 3
  %unroll_iter795 = and i64 %i.e, -4
  %lcmp.mod792.not = icmp eq i64 %xtraiter790, 0
  %lcmp.mod794 = icmp ne i64 %xtraiter790, 0
  br label %bb.e

bb.d:                                             ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304
  %.not.i305 = icmp ne ptr %1, null
  %or.cond.i306 = and i1 %.not.i305, %i.be
  br i1 %or.cond.i306, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

bb.e:                                             ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, %.preheader417
  %.0250 = phi double [ %.1251, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ] ; 4 uses
  %.0249 = phi double [ %i.vv, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ]
  %.0246 = phi double [ %i.wd, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ]
  %.0245 = phi double [ %i.wa, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ -1.000000e+00, %.preheader417 ]
  %.0244 = phi double [ %i.xt, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0.000000e+00, %.preheader417 ]
  %.1242 = phi double [ %.2243, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %.0241401, %.preheader417 ] ; 5 uses
  %.0240 = phi double [ %i.rz, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %.0241401, %.preheader417 ] ; 3 uses
  %.0239 = phi double [ %i.sb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ %i.hu, %.preheader417 ] ; 2 uses
  %.0238 = phi i64 [ %i.ik, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ 0, %.preheader417 ] ; 2 uses
  %i.ij = phi <2 x double> [ %i.wh, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380 ], [ zeroinitializer, %.preheader417 ] ; 2 uses
  %i.ik = add nuw nsw i64 %.0238, 1
  br i1 %i.be, label %.lr.ph431, label %._crit_edge432

.lr.ph431:                                        ; preds = %bb.e
  %i.il = fneg double %.1242                      ; 2 uses
  br i1 %min.iters.check681, label %scalar.ph680.preheader, label %vector.ph682

vector.ph682:                                     ; preds = %.lr.ph431
  %broadcast.splatinsert684 = insertelement <2 x double> poison, double %i.il, i64 0
  %broadcast.splat685 = shufflevector <2 x double> %broadcast.splatinsert684, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body686

vector.body686:                                   ; preds = %vector.body686, %vector.ph682
  %index687 = phi i64 [ 0, %vector.ph682 ], [ %index.next690, %vector.body686 ] ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index687 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %wide.load688 = load <2 x double>, ptr %i.im, align 8, !tbaa !26
  %wide.load689 = load <2 x double>, ptr %i.in, align 8, !tbaa !26
  %i.io = fmul <2 x double> %wide.load688, %broadcast.splat685
  %i.ip = fmul <2 x double> %wide.load689, %broadcast.splat685
  store <2 x double> %i.io, ptr %i.im, align 8, !tbaa !26
  store <2 x double> %i.ip, ptr %i.in, align 8, !tbaa !26
  %index.next690 = add nuw i64 %index687, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next690, %n.vec683
  br i1 %i.iq, label %middle.block691, label %vector.body686, !llvm.loop !156

middle.block691:                                  ; preds = %vector.body686
  br i1 %cmp.n692, label %._crit_edge432, label %scalar.ph680.preheader

scalar.ph680.preheader:                           ; preds = %.lr.ph431, %middle.block691
  %.2255429.ph = phi i64 [ 0, %.lr.ph431 ], [ %n.vec683, %middle.block691 ]
  br label %scalar.ph680

scalar.ph680:                                     ; preds = %scalar.ph680.preheader, %scalar.ph680
  %.2255429 = phi i64 [ %i.iu, %scalar.ph680 ], [ %.2255429.ph, %scalar.ph680.preheader ] ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.2255429 ; 2 uses
  %i.is = load double, ptr %i.ir, align 8, !tbaa !26
  %i.it = fmul double %i.is, %i.il
  store double %i.it, ptr %i.ir, align 8, !tbaa !26
  %i.iu = add nuw nsw i64 %.2255429, 1            ; 2 uses
  %exitcond460.not = icmp eq i64 %i.iu, %i.c
  br i1 %exitcond460.not, label %._crit_edge432, label %scalar.ph680, !llvm.loop !157

._crit_edge432:                                   ; preds = %scalar.ph680, %middle.block691, %bb.e
  br i1 %or.cond.i310, label %bb.f, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334

bb.f:                                             ; preds = %._crit_edge432
  br i1 %.not.i312, label %.preheader.i324, label %.preheader49.i313

.preheader49.i313:                                ; preds = %bb.f
  br i1 %i.hv, label %.lr.ph54.preheader.i314, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334

.lr.ph54.preheader.i314:                          ; preds = %.preheader49.i313
  %.pre.i315 = load i64, ptr %i.hz, align 8, !tbaa !47
  br label %.lr.ph54.i316

.preheader.i324:                                  ; preds = %bb.f
  br i1 %i.hv, label %.lr.ph58.preheader.i325, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334

.lr.ph58.preheader.i325:                          ; preds = %.preheader.i324
  %.pre63.i326 = load i64, ptr %i.hz, align 8, !tbaa !47
  br label %.lr.ph58.i327

.loopexit48.i318:                                 ; preds = %.prol.loopexit749, %.lr.ph.i320.new, %.lr.ph54.i316
  %exitcond60.not.i319 = icmp eq i64 %i.iw, %i.e
  br i1 %exitcond60.not.i319, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334, label %.lr.ph54.i316, !llvm.loop !146

.lr.ph54.i316:                                    ; preds = %.loopexit48.i318, %.lr.ph54.preheader.i314
  %i.iv = phi i64 [ %i.iy, %.loopexit48.i318 ], [ %.pre.i315, %.lr.ph54.preheader.i314 ] ; 7 uses
  %.04253.i317 = phi i64 [ %i.iw, %.loopexit48.i318 ], [ 0, %.lr.ph54.preheader.i314 ] ; 2 uses
  %i.iw = add nuw nsw i64 %.04253.i317, 1         ; 3 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.iw
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !47 ; 5 uses
  %i.iz = icmp slt i64 %i.iv, %i.iy
  br i1 %i.iz, label %.lr.ph.i320, label %.loopexit48.i318

.lr.ph.i320:                                      ; preds = %.lr.ph54.i316
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.04253.i317 ; 4 uses
  %.promoted.i321 = load double, ptr %i.ja, align 8, !tbaa !26 ; 2 uses
  %i.jb = sub i64 %i.iy, %i.iv
  %.neg801 = add i64 %i.iv, 1
  %xtraiter750 = and i64 %i.jb, 1
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.prol.loopexit749, label %.prol.loopexit749.unr-lcssa

.prol.loopexit749.unr-lcssa:                      ; preds = %.lr.ph.i320
  %i.jc = getelementptr inbounds [8 x i8], ptr %0, i64 %i.iv
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !26
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.iv
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !47
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jf
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !26
  %i.ji = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.jh, double %.promoted.i321) ; 2 uses
  store double %i.ji, ptr %i.ja, align 8, !tbaa !26
  %i.jj = add nsw i64 %i.iv, 1
  br label %.prol.loopexit749

.prol.loopexit749:                                ; preds = %.prol.loopexit749.unr-lcssa, %.lr.ph.i320
  %.unr753 = phi double [ %.promoted.i321, %.lr.ph.i320 ], [ %i.ji, %.prol.loopexit749.unr-lcssa ]
  %.052.i322.unr = phi i64 [ %i.iv, %.lr.ph.i320 ], [ %i.jj, %.prol.loopexit749.unr-lcssa ]
  %i.jk = icmp eq i64 %i.iy, %.neg801
  br i1 %i.jk, label %.loopexit48.i318, label %.lr.ph.i320.new

.lr.ph.i320.new:                                  ; preds = %.prol.loopexit749, %.lr.ph.i320.new
  %i.jl = phi double [ %i.ka, %.lr.ph.i320.new ], [ %.unr753, %.prol.loopexit749 ]
  %.052.i322 = phi i64 [ %i.kb, %.lr.ph.i320.new ], [ %.052.i322.unr, %.prol.loopexit749 ] ; 4 uses
  %i.jm = getelementptr inbounds [8 x i8], ptr %0, i64 %.052.i322
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !26
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %.052.i322
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !47
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jp
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !26
  %i.js = tail call double @llvm.fmuladd.f64(double %i.jn, double %i.jr, double %i.jl) ; 2 uses
  store double %i.js, ptr %i.ja, align 8, !tbaa !26
  %i.jt = add nsw i64 %.052.i322, 1               ; 2 uses
  %i.ju = getelementptr inbounds [8 x i8], ptr %0, i64 %i.jt
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !26
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.jt
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !47
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.jx
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !26
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jz, double %i.js) ; 2 uses
  store double %i.ka, ptr %i.ja, align 8, !tbaa !26
  %i.kb = add nsw i64 %.052.i322, 2               ; 2 uses
  %exitcond.not.i323.1 = icmp eq i64 %i.kb, %i.iy
  br i1 %exitcond.not.i323.1, label %.loopexit48.i318, label %.lr.ph.i320.new, !llvm.loop !147

.loopexit.i329:                                   ; preds = %.prol.loopexit755, %.lr.ph56.i331.new, %.lr.ph58.i327
  %exitcond62.not.i330 = icmp eq i64 %i.kd, %i.e
  br i1 %exitcond62.not.i330, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334, label %.lr.ph58.i327, !llvm.loop !148

.lr.ph58.i327:                                    ; preds = %.loopexit.i329, %.lr.ph58.preheader.i325
  %i.kc = phi i64 [ %i.kf, %.loopexit.i329 ], [ %.pre63.i326, %.lr.ph58.preheader.i325 ] ; 7 uses
  %.14357.i328 = phi i64 [ %i.kd, %.loopexit.i329 ], [ 0, %.lr.ph58.preheader.i325 ] ; 2 uses
  %i.kd = add nuw nsw i64 %.14357.i328, 1         ; 3 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.kd
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !47 ; 5 uses
  %i.kg = icmp slt i64 %i.kc, %i.kf
  br i1 %i.kg, label %.lr.ph56.i331, label %.loopexit.i329

.lr.ph56.i331:                                    ; preds = %.lr.ph58.i327
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.14357.i328 ; 3 uses
  %i.ki = sub i64 %i.kf, %i.kc
  %.neg802 = add i64 %i.kc, 1
  %xtraiter756 = and i64 %i.ki, 1
  %lcmp.mod757.not = icmp eq i64 %xtraiter756, 0
  br i1 %lcmp.mod757.not, label %.prol.loopexit755, label %.prol.loopexit755.unr-lcssa

.prol.loopexit755.unr-lcssa:                      ; preds = %.lr.ph56.i331
  %i.kj = getelementptr inbounds [8 x i8], ptr %0, i64 %i.kc
  %i.kk = load double, ptr %i.kj, align 8, !tbaa !26
  %i.kl = load double, ptr %i.kh, align 8, !tbaa !26
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.kc
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !47
  %i.ko = getelementptr inbounds [8 x i8], ptr %4, i64 %i.kn ; 2 uses
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !26
  %i.kq = tail call double @llvm.fmuladd.f64(double %i.kk, double %i.kl, double %i.kp)
  store double %i.kq, ptr %i.ko, align 8, !tbaa !26
  %i.kr = add nsw i64 %i.kc, 1
  br label %.prol.loopexit755

.prol.loopexit755:                                ; preds = %.prol.loopexit755.unr-lcssa, %.lr.ph56.i331
  %.155.i332.unr = phi i64 [ %i.kc, %.lr.ph56.i331 ], [ %i.kr, %.prol.loopexit755.unr-lcssa ]
  %i.ks = icmp eq i64 %i.kf, %.neg802
  br i1 %i.ks, label %.loopexit.i329, label %.lr.ph56.i331.new

.lr.ph56.i331.new:                                ; preds = %.prol.loopexit755, %.lr.ph56.i331.new
  %.155.i332 = phi i64 [ %i.lk, %.lr.ph56.i331.new ], [ %.155.i332.unr, %.prol.loopexit755 ] ; 4 uses
  %i.kt = getelementptr inbounds [8 x i8], ptr %0, i64 %.155.i332
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !26
  %i.kv = load double, ptr %i.kh, align 8, !tbaa !26
end_hunk_0
begin_hunk_1_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a
  %i.py = tail call double @llvm.fmuladd.f64(double %i.px, double %i.px, double %i.pv)
  %i.pz = getelementptr i8, ptr %.0710.i.i371, i64 32 ; 2 uses
  %i.qa = load double, ptr %i.pw, align 8, !tbaa !26 ; 2 uses
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.qa, double %i.qa, double %i.py) ; 3 uses
  %niter783.next.3 = add i64 %niter783, 4         ; 2 uses
  %niter783.ncmp.3 = icmp eq i64 %niter783.next.3, %unroll_iter782
  br i1 %niter783.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373.loopexit.unr-lcssa, label %.lr.ph.i.i368, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i368
  br i1 %lcmp.mod779.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373, label %.lr.ph.i.i368.epil.preheader

.lr.ph.i.i368.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373.loopexit.unr-lcssa, %.lr.ph.i.i368.preheader
  %.012.i.i369.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i368.preheader ], [ %i.qb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373.loopexit.unr-lcssa ]
  %.0710.i.i371.epil.init = phi ptr [ %i.f, %.lr.ph.i.i368.preheader ], [ %i.pz, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod781)
  br label %.lr.ph.i.i368.epil

.lr.ph.i.i368.epil:                               ; preds = %.lr.ph.i.i368.epil, %.lr.ph.i.i368.epil.preheader
  %.012.i.i369.epil = phi double [ %i.qe, %.lr.ph.i.i368.epil ], [ %.012.i.i369.epil.init, %.lr.ph.i.i368.epil.preheader ]
  %.0710.i.i371.epil = phi ptr [ %i.qc, %.lr.ph.i.i368.epil ], [ %.0710.i.i371.epil.init, %.lr.ph.i.i368.epil.preheader ] ; 2 uses
  %epil.iter778 = phi i64 [ %epil.iter778.next, %.lr.ph.i.i368.epil ], [ 0, %.lr.ph.i.i368.epil.preheader ]
  %i.qc = getelementptr i8, ptr %.0710.i.i371.epil, i64 8
  %i.qd = load double, ptr %.0710.i.i371.epil, align 8, !tbaa !26 ; 2 uses
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.qd, double %i.qd, double %.012.i.i369.epil) ; 2 uses
  %epil.iter778.next = add i64 %epil.iter778, 1   ; 2 uses
  %epil.iter778.cmp.not = icmp eq i64 %epil.iter778.next, %xtraiter777
  br i1 %epil.iter778.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373, label %.lr.ph.i.i368.epil, !llvm.loop !163

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373.loopexit.unr-lcssa, %.lr.ph.i.i368.epil, %.preheader.i356, %.preheader49.i345, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366
  %.0.lcssa.i.i367 = phi double [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit366 ], [ 0.000000e+00, %.preheader.i356 ], [ 0.000000e+00, %.preheader49.i345 ], [ %i.qb, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373.loopexit.unr-lcssa ], [ %i.qe, %.lr.ph.i.i368.epil ]
  %i.qf = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i367) #24 ; 5 uses
  %i.qg = fcmp ule double %i.qf, 0.000000e+00
  %brmerge451 = select i1 %i.qg, i1 true, i1 %i.ic
  br i1 %brmerge451, label %.loopexit, label %.lr.ph441

.lr.ph441:                                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373
  %i.qh = fdiv nnan double 1.000000e+00, %i.qf    ; 2 uses
  br i1 %min.iters.check639, label %scalar.ph638.preheader, label %vector.ph640

vector.ph640:                                     ; preds = %.lr.ph441
  %broadcast.splatinsert642 = insertelement <2 x double> poison, double %i.qh, i64 0
  %broadcast.splat643 = shufflevector <2 x double> %broadcast.splatinsert642, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body644

vector.body644:                                   ; preds = %vector.body644, %vector.ph640
  %index645 = phi i64 [ 0, %vector.ph640 ], [ %index.next648, %vector.body644 ] ; 2 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index645 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16 ; 2 uses
  %wide.load646 = load <2 x double>, ptr %i.qi, align 8, !tbaa !26
  %wide.load647 = load <2 x double>, ptr %i.qj, align 8, !tbaa !26
  %i.qk = fmul <2 x double> %broadcast.splat643, %wide.load646
  %i.ql = fmul <2 x double> %broadcast.splat643, %wide.load647
  store <2 x double> %i.qk, ptr %i.qi, align 8, !tbaa !26
  store <2 x double> %i.ql, ptr %i.qj, align 8, !tbaa !26
  %index.next648 = add nuw i64 %index645, 4       ; 2 uses
  %i.qm = icmp eq i64 %index.next648, %n.vec641
  br i1 %i.qm, label %middle.block649, label %vector.body644, !llvm.loop !164

middle.block649:                                  ; preds = %vector.body644
  br i1 %cmp.n650, label %.loopexit, label %scalar.ph638.preheader

scalar.ph638.preheader:                           ; preds = %.lr.ph441, %middle.block649
  %.5258440.ph = phi i64 [ 0, %.lr.ph441 ], [ %n.vec641, %middle.block649 ]
  br label %scalar.ph638

scalar.ph638:                                     ; preds = %scalar.ph638.preheader, %scalar.ph638
  %.5258440 = phi i64 [ %i.qq, %scalar.ph638 ], [ %.5258440.ph, %scalar.ph638.preheader ] ; 2 uses
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.5258440 ; 2 uses
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !26
  %i.qp = fmul double %i.qh, %i.qo
  store double %i.qp, ptr %i.qn, align 8, !tbaa !26
  %i.qq = add nuw nsw i64 %.5258440, 1            ; 2 uses
  %exitcond463.not = icmp eq i64 %i.qq, %i.e
  br i1 %exitcond463.not, label %.loopexit, label %scalar.ph638, !llvm.loop !165

.loopexit:                                        ; preds = %scalar.ph638, %middle.block649, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341
  %i.qr = phi double [ %i.ma, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341 ], [ 1.000000e+00, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373 ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334 ], [ 1.000000e+00, %middle.block649 ], [ 1.000000e+00, %scalar.ph638 ] ; 2 uses
  %i.qs = phi double [ %i.ma, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341 ], [ %i.ma, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373 ], [ 0.000000e+00, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334 ], [ %i.ma, %middle.block649 ], [ %i.ma, %scalar.ph638 ] ; 8 uses
  %.1251 = phi double [ %.0250, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341 ], [ %sqrt, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373 ], [ %.0250, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334 ], [ %sqrt, %middle.block649 ], [ %sqrt, %scalar.ph638 ] ; 5 uses
  %.2243 = phi double [ %.1242, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit341 ], [ %i.qf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit373 ], [ %.1242, %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit334 ], [ %i.qf, %middle.block649 ], [ %i.qf, %scalar.ph638 ] ; 4 uses
  %i.qt = tail call double @llvm.fmuladd.f64(double %.0240, double %.0240, double 0.000000e+00) ; 4 uses
  %sqrt408 = tail call double @llvm.sqrt.f64(double %i.qt) ; 9 uses
  %i.qu = fdiv double %.0240, %sqrt408
  %i.qv = fdiv double 0.000000e+00, %sqrt408
  %i.qw = fmul double %.0239, %i.qv
  %i.qx = fmul double %.0239, %i.qu               ; 2 uses
  %i.qy = fcmp oeq double %i.qs, 0.000000e+00
  br i1 %i.qy, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.qz = fcmp ogt double %i.qt, 0.000000e+00
  %i.ra = select i1 %i.qz, double 1.000000e+00, double %sqrt408
  %i.rb = tail call double @llvm.fabs.f64(double %sqrt408)
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.i:                                             ; preds = %.loopexit
  %i.rc = fcmp oeq double %i.qt, 0.000000e+00
  br i1 %i.rc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.rd = fcmp olt double %i.qs, 0.000000e+00
  %i.re = select i1 %i.rd, double -1.000000e+00, double %i.qr
  %i.rf = tail call double @llvm.fabs.f64(double %i.qs)
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.k:                                             ; preds = %bb.i
  %i.rg = tail call double @llvm.fabs.f64(double %i.qs)
  %i.rh = tail call double @llvm.fabs.f64(double %sqrt408)
  %i.ri = fcmp ogt double %i.rg, %i.rh
  br i1 %i.ri, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.rj = fdiv double %sqrt408, %i.qs             ; 3 uses
  %i.rk = fcmp olt double %i.qs, 0.000000e+00
  %i.rl = select i1 %i.rk, double -1.000000e+00, double %i.qr
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.rj, double %i.rj, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.rm)
  %i.rn = fdiv double %i.rl, %sqrt.i              ; 3 uses
  %i.ro = fmul double %i.rj, %i.rn
  %i.rp = fdiv double %i.qs, %i.rn
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

bb.m:                                             ; preds = %bb.k
  %i.rq = fdiv double %i.qs, %sqrt408             ; 3 uses
  %i.rr = fcmp ogt double %i.qt, 0.000000e+00
  %i.rs = select i1 %i.rr, double 1.000000e+00, double %sqrt408
  %i.rt = tail call double @llvm.fmuladd.f64(double %i.rq, double %i.rq, double 1.000000e+00)
  %sqrt39.i = tail call double @llvm.sqrt.f64(double %i.rt)
  %i.ru = fdiv double %i.rs, %sqrt39.i            ; 3 uses
  %i.rv = fmul double %i.rq, %i.ru
  %i.rw = fdiv double %sqrt408, %i.ru
  br label %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit

_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit: ; preds = %bb.h, %bb.j, %bb.l, %bb.m
  %.0399 = phi double [ %i.ra, %bb.h ], [ 0.000000e+00, %bb.j ], [ %i.ro, %bb.l ], [ %i.ru, %bb.m ] ; 2 uses
  %.0 = phi double [ 0.000000e+00, %bb.h ], [ %i.re, %bb.j ], [ %i.rn, %bb.l ], [ %i.rv, %bb.m ] ; 3 uses
  %.sink.i = phi double [ %i.rb, %bb.h ], [ %i.rf, %bb.j ], [ %i.rp, %bb.l ], [ %i.rw, %bb.m ] ; 6 uses
  %i.rx = fmul double %.2243, %.0                 ; 4 uses
  %i.ry = fneg double %.0399
  %i.rz = fmul double %.2243, %i.ry
  %i.sa = fmul double %i.qx, %.0399               ; 3 uses
  %i.sb = fmul double %i.qx, %.0                  ; 3 uses
  %i.sc = fmul double %.0, %i.sa
  %i.sd = fdiv double %i.sa, %.sink.i             ; 4 uses
  %i.se = fneg double %i.rx
  %i.sf = fdiv double %i.se, %.sink.i             ; 4 uses
  br i1 %i.hv, label %.lr.ph443.preheader, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380

.lr.ph443.preheader:                              ; preds = %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  br i1 %min.iters.check626, label %.lr.ph443.preheader716, label %vector.ph627

vector.ph627:                                     ; preds = %.lr.ph443.preheader
  %broadcast.splatinsert629 = insertelement <2 x double> poison, double %.sink.i, i64 0
  %broadcast.splat630 = shufflevector <2 x double> %broadcast.splatinsert629, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body631

vector.body631:                                   ; preds = %vector.body631, %vector.ph627
  %index632 = phi i64 [ 0, %vector.ph627 ], [ %index.next634, %vector.body631 ] ; 3 uses
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index632
  %wide.load633 = load <2 x double>, ptr %i.sg, align 8, !tbaa !26
  %i.sh = fdiv <2 x double> %wide.load633, %broadcast.splat630
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index632
  store <2 x double> %i.sh, ptr %i.si, align 8, !tbaa !26
  %index.next634 = add nuw i64 %index632, 2       ; 2 uses
  %i.sj = icmp eq i64 %index.next634, %n.vec628
  br i1 %i.sj, label %middle.block635, label %vector.body631, !llvm.loop !166

middle.block635:                                  ; preds = %vector.body631
  br i1 %cmp.n636, label %.lr.ph445.preheader, label %.lr.ph443.preheader716

.lr.ph443.preheader716:                           ; preds = %.lr.ph443.preheader, %middle.block635
  %.6259442.ph = phi i64 [ 0, %.lr.ph443.preheader ], [ %n.vec628, %middle.block635 ]
  br label %.lr.ph443

.lr.ph443:                                        ; preds = %.lr.ph443.preheader716, %.lr.ph443
  %.6259442 = phi i64 [ %i.so, %.lr.ph443 ], [ %.6259442.ph, %.lr.ph443.preheader716 ] ; 3 uses
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.6259442
  %i.sl = load double, ptr %i.sk, align 8, !tbaa !26
  %i.sm = fdiv double %i.sl, %.sink.i
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.6259442
  store double %i.sm, ptr %i.sn, align 8, !tbaa !26
  %i.so = add nuw nsw i64 %.6259442, 1            ; 2 uses
  %exitcond464.not = icmp eq i64 %i.so, %i.e
  br i1 %exitcond464.not, label %.lr.ph445.preheader, label %.lr.ph443, !llvm.loop !167

.lr.ph445.preheader:                              ; preds = %.lr.ph443, %middle.block635
  %brmerge = select i1 %min.iters.check610, i1 true, i1 %found.conflict608
  br i1 %brmerge, label %.lr.ph445.preheader715, label %vector.ph611

vector.ph611:                                     ; preds = %.lr.ph445.preheader
  %broadcast.splatinsert613 = insertelement <2 x double> poison, double %i.sd, i64 0
  %broadcast.splat614 = shufflevector <2 x double> %broadcast.splatinsert613, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph611
  %index616 = phi i64 [ 0, %vector.ph611 ], [ %index.next621, %vector.body615 ] ; 3 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index616 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %wide.load617 = load <2 x double>, ptr %i.sp, align 8, !tbaa !26, !alias.scope !186
  %wide.load618 = load <2 x double>, ptr %i.sq, align 8, !tbaa !26, !alias.scope !186
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %index616 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16 ; 2 uses
  %wide.load619 = load <2 x double>, ptr %i.sr, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %wide.load620 = load <2 x double>, ptr %i.ss, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %i.st = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat614, <2 x double> %wide.load617, <2 x double> %wide.load619)
  %i.su = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat614, <2 x double> %wide.load618, <2 x double> %wide.load620)
  store <2 x double> %i.st, ptr %i.sr, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  store <2 x double> %i.su, ptr %i.ss, align 8, !tbaa !26, !alias.scope !187, !noalias !186
  %index.next621 = add nuw i64 %index616, 4       ; 2 uses
  %i.sv = icmp eq i64 %index.next621, %n.vec612
  br i1 %i.sv, label %middle.block622, label %vector.body615, !llvm.loop !171

middle.block622:                                  ; preds = %vector.body615
  br i1 %cmp.n623, label %.lr.ph447.preheader, label %.lr.ph445.preheader715

.lr.ph445.preheader715:                           ; preds = %.lr.ph445.preheader, %middle.block622
  %.7260444.ph = phi i64 [ %n.vec612, %middle.block622 ], [ 0, %.lr.ph445.preheader ] ; 5 uses
  %.neg805 = or disjoint i64 %.7260444.ph, 1
  br i1 %lcmp.mod785.not, label %.lr.ph445.prol.loopexit, label %.lr.ph445.prol

.lr.ph445.prol:                                   ; preds = %.lr.ph445.preheader715
  %i.sw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.7260444.ph
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !26
  %i.sy = getelementptr inbounds nuw [8 x i8], ptr %12, i64 %.7260444.ph ; 2 uses
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !26
  %i.ta = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.sx, double %i.sz)
  store double %i.ta, ptr %i.sy, align 8, !tbaa !26
  %i.tb = or disjoint i64 %.7260444.ph, 1
  br label %.lr.ph445.prol.loopexit

.lr.ph445.prol.loopexit:                          ; preds = %.lr.ph445.prol, %.lr.ph445.preheader715
  %.7260444.unr = phi i64 [ %.7260444.ph, %.lr.ph445.preheader715 ], [ %i.tb, %.lr.ph445.prol ]
  %i.tc = icmp eq i64 %i.e, %.neg805
  br i1 %i.tc, label %.lr.ph447.preheader, label %.lr.ph445

.lr.ph445:                                        ; preds = %.lr.ph445.prol.loopexit, %.lr.ph445
  %.7260444 = phi i64 [ %i.to, %.lr.ph445 ], [ %.7260444.unr, %.lr.ph445.prol.loopexit ] ; 4 uses
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.7260444
  %i.te = load double, ptr %i.td, align 8, !tbaa !26
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %13, i64 %.7260444 ; 2 uses
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !26
  %i.th = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.te, double %i.tg)
  store double %i.th, ptr %i.tf, align 8, !tbaa !26
  %i.ti = add nuw nsw i64 %.7260444, 1            ; 2 uses
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ti
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !26
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %14, i64 %i.ti ; 2 uses
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !26
  %i.tn = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.tk, double %i.tm)
  store double %i.tn, ptr %i.tl, align 8, !tbaa !26
  %i.to = add nuw nsw i64 %.7260444, 2            ; 2 uses
  %exitcond465.not.1 = icmp eq i64 %i.to, %i.e
  br i1 %exitcond465.not.1, label %.lr.ph447.preheader, label %.lr.ph445, !llvm.loop !172

.lr.ph447.preheader:                              ; preds = %.lr.ph445.prol.loopexit, %.lr.ph445, %middle.block622
  %brmerge831 = select i1 %min.iters.check590, i1 true, i1 %found.conflict
  br i1 %brmerge831, label %.lr.ph447.preheader714, label %vector.ph591

vector.ph591:                                     ; preds = %.lr.ph447.preheader
  %broadcast.splatinsert593 = insertelement <2 x double> poison, double %i.sf, i64 0
  %broadcast.splat594 = shufflevector <2 x double> %broadcast.splatinsert593, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph591
  %index596 = phi i64 [ 0, %vector.ph591 ], [ %index.next601, %vector.body595 ] ; 3 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index596 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %wide.load597 = load <2 x double>, ptr %i.tp, align 8, !tbaa !26, !alias.scope !188
  %wide.load598 = load <2 x double>, ptr %i.tq, align 8, !tbaa !26, !alias.scope !188
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %index596 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16 ; 2 uses
  %wide.load599 = load <2 x double>, ptr %i.tr, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %wide.load600 = load <2 x double>, ptr %i.ts, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %i.tt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load599, <2 x double> %wide.load597)
  %i.tu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load600, <2 x double> %wide.load598)
  store <2 x double> %i.tt, ptr %i.tr, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  store <2 x double> %i.tu, ptr %i.ts, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %index.next601 = add nuw i64 %index596, 4       ; 2 uses
  %i.tv = icmp eq i64 %index.next601, %n.vec592
  br i1 %i.tv, label %middle.block602, label %vector.body595, !llvm.loop !176

middle.block602:                                  ; preds = %vector.body595
  br i1 %cmp.n603, label %.lr.ph.i.i375.preheader, label %.lr.ph447.preheader714

.lr.ph447.preheader714:                           ; preds = %.lr.ph447.preheader, %middle.block602
  %.8446.ph = phi i64 [ %n.vec592, %middle.block602 ], [ 0, %.lr.ph447.preheader ] ; 5 uses
  %.neg806 = or disjoint i64 %.8446.ph, 1
  br i1 %lcmp.mod788.not, label %.lr.ph447.prol.loopexit, label %.lr.ph447.prol

.lr.ph447.prol:                                   ; preds = %.lr.ph447.preheader714
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8446.ph
  %i.tx = load double, ptr %i.tw, align 8, !tbaa !26
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.8446.ph ; 2 uses
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !26
  %i.ua = tail call double @llvm.fmuladd.f64(double %i.sf, double %i.tz, double %i.tx)
  store double %i.ua, ptr %i.ty, align 8, !tbaa !26
  %i.ub = or disjoint i64 %.8446.ph, 1
  br label %.lr.ph447.prol.loopexit

.lr.ph447.prol.loopexit:                          ; preds = %.lr.ph447.prol, %.lr.ph447.preheader714
  %.8446.unr = phi i64 [ %.8446.ph, %.lr.ph447.preheader714 ], [ %i.ub, %.lr.ph447.prol ]
  %i.uc = icmp eq i64 %i.e, %.neg806
  br i1 %i.uc, label %.lr.ph.i.i375.preheader, label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.prol.loopexit, %.lr.ph447
  %.8446 = phi i64 [ %i.uo, %.lr.ph447 ], [ %.8446.unr, %.lr.ph447.prol.loopexit ] ; 4 uses
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.8446
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !26
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %.8446 ; 2 uses
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !26
  %i.uh = tail call double @llvm.fmuladd.f64(double %i.sf, double %i.ug, double %i.ue)
  store double %i.uh, ptr %i.uf, align 8, !tbaa !26
  %i.ui = add nuw nsw i64 %.8446, 1               ; 2 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ui
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !26
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.ui ; 2 uses
  %i.um = load double, ptr %i.ul, align 8, !tbaa !26
  %i.un = tail call double @llvm.fmuladd.f64(double %i.sf, double %i.um, double %i.uk)
  store double %i.un, ptr %i.ul, align 8, !tbaa !26
  %i.uo = add nuw nsw i64 %.8446, 2               ; 2 uses
  %exitcond466.not.1 = icmp eq i64 %i.uo, %i.e
  br i1 %exitcond466.not.1, label %.lr.ph.i.i375.preheader, label %.lr.ph447, !llvm.loop !177

.lr.ph.i.i375.preheader:                          ; preds = %.lr.ph447.prol.loopexit, %.lr.ph447, %middle.block602
  br i1 %i.ii, label %.lr.ph.i.i375.epil.preheader, label %.lr.ph.i.i375

.lr.ph.i.i375:                                    ; preds = %.lr.ph.i.i375.preheader, %.lr.ph.i.i375
  %.012.i.i376 = phi double [ %i.va, %.lr.ph.i.i375 ], [ 0.000000e+00, %.lr.ph.i.i375.preheader ]
  %.0710.i.i378 = phi ptr [ %i.uy, %.lr.ph.i.i375 ], [ %i.bd, %.lr.ph.i.i375.preheader ] ; 5 uses
  %niter796 = phi i64 [ %niter796.next.3, %.lr.ph.i.i375 ], [ 0, %.lr.ph.i.i375.preheader ]
  %i.up = getelementptr i8, ptr %.0710.i.i378, i64 8
  %i.uq = load double, ptr %.0710.i.i378, align 8, !tbaa !26 ; 2 uses
  %i.ur = tail call double @llvm.fmuladd.f64(double %i.uq, double %i.uq, double %.012.i.i376)
  %i.us = getelementptr i8, ptr %.0710.i.i378, i64 16
  %i.ut = load double, ptr %i.up, align 8, !tbaa !26 ; 2 uses
  %i.uu = tail call double @llvm.fmuladd.f64(double %i.ut, double %i.ut, double %i.ur)
  %i.uv = getelementptr i8, ptr %.0710.i.i378, i64 24
  %i.uw = load double, ptr %i.us, align 8, !tbaa !26 ; 2 uses
  %i.ux = tail call double @llvm.fmuladd.f64(double %i.uw, double %i.uw, double %i.uu)
  %i.uy = getelementptr i8, ptr %.0710.i.i378, i64 32 ; 2 uses
  %i.uz = load double, ptr %i.uv, align 8, !tbaa !26 ; 2 uses
  %i.va = tail call double @llvm.fmuladd.f64(double %i.uz, double %i.uz, double %i.ux) ; 3 uses
  %niter796.next.3 = add i64 %niter796, 4         ; 2 uses
  %niter796.ncmp.3 = icmp eq i64 %niter796.next.3, %unroll_iter795
  br i1 %niter796.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, label %.lr.ph.i.i375, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i375
  br i1 %lcmp.mod792.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil.preheader

.lr.ph.i.i375.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.preheader
  %.012.i.i376.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i375.preheader ], [ %i.va, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  %.0710.i.i378.epil.init = phi ptr [ %i.bd, %.lr.ph.i.i375.preheader ], [ %i.uy, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod794)
  br label %.lr.ph.i.i375.epil

.lr.ph.i.i375.epil:                               ; preds = %.lr.ph.i.i375.epil, %.lr.ph.i.i375.epil.preheader
  %.012.i.i376.epil = phi double [ %i.vd, %.lr.ph.i.i375.epil ], [ %.012.i.i376.epil.init, %.lr.ph.i.i375.epil.preheader ]
  %.0710.i.i378.epil = phi ptr [ %i.vb, %.lr.ph.i.i375.epil ], [ %.0710.i.i378.epil.init, %.lr.ph.i.i375.epil.preheader ] ; 2 uses
  %epil.iter791 = phi i64 [ %epil.iter791.next, %.lr.ph.i.i375.epil ], [ 0, %.lr.ph.i.i375.epil.preheader ]
  %i.vb = getelementptr i8, ptr %.0710.i.i378.epil, i64 8
  %i.vc = load double, ptr %.0710.i.i378.epil, align 8, !tbaa !26 ; 2 uses
  %i.vd = tail call double @llvm.fmuladd.f64(double %i.vc, double %i.vc, double %.012.i.i376.epil) ; 2 uses
  %epil.iter791.next = add i64 %epil.iter791, 1   ; 2 uses
  %epil.iter791.cmp.not = icmp eq i64 %epil.iter791.next, %xtraiter790
  br i1 %epil.iter791.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil, !llvm.loop !178

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.epil, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i374 = phi double [ 0.000000e+00, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.va, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ], [ %i.vd, %.lr.ph.i.i375.epil ]
  %i.ve = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i374) #24 ; 2 uses
  %i.vf = fneg double %.0245
  %i.vg = fmul double %.sink.i, %i.vf             ; 3 uses
  %i.vh = fneg double %.sink.i
  %i.vi = fmul double %.0244, %i.vh
  %i.vj = fmul double %i.rx, %i.rx
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.vi, double %.0246, double %i.sa) ; 2 uses
  %i.vl = fdiv double %i.vk, %i.vg
  %i.vm = insertelement <2 x double> poison, double %i.vl, i64 0
  %i.vn = insertelement <2 x double> %i.vm, double %i.vg, i64 1 ; 2 uses
  %i.vo = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vp = insertelement <2 x double> %i.vo, double %i.vj, i64 1
  %i.vq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vn, <2 x double> %i.vn, <2 x double> %i.vp) ; 2 uses
  %i.vr = extractelement <2 x double> %i.vq, i64 0
  %i.vs = tail call double @sqrt(double noundef %i.vr) #24 ; 2 uses
  %i.vt = insertelement <2 x double> poison, double %i.vk, i64 0
  %i.vu = insertelement <2 x double> %i.vt, double %i.rx, i64 1
  %i.vv = tail call double @llvm.fmuladd.f64(double %i.ve, double %i.ve, double %.0249) ; 2 uses
  %i.vw = shufflevector <2 x double> %i.vq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vx = insertelement <2 x double> %i.vw, double %i.vv, i64 1
  %i.vy = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.vx) ; 3 uses
  %i.vz = extractelement <2 x double> %i.vy, i64 0
  %i.wa = fdiv double %i.vg, %i.vz
  %i.wb = shufflevector <2 x double> %i.vy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wc = fdiv <2 x double> %i.vu, %i.wb          ; 3 uses
  %i.wd = extractelement <2 x double> %i.wc, i64 0
  %i.we = fmul double %i.sb, %i.sb
  %i.wf = shufflevector <2 x double> %i.wc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wg = insertelement <2 x double> %i.wf, double %i.qw, i64 0 ; 2 uses
  %i.wh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wg, <2 x double> %i.wg, <2 x double> %i.ij) ; 2 uses
  %i.wi = extractelement <2 x double> %i.wh, i64 0
  %i.wj = fadd double %i.wi, %i.we
  %i.wk = tail call double @sqrt(double noundef %i.wj) #24 ; 2 uses
  %i.wl = tail call double @llvm.fabs.f64(double %i.sc)
  %i.wm = extractelement <2 x double> %i.vy, i64 1
  %i.wn = fmul double %.1251, %i.wm
  %i.wo = fdiv double 1.000000e+00, %i.wn         ; 2 uses
  %i.wp = fmul double %.1251, %i.vs
  %i.wq = fdiv double %i.wp, %i.hu
  %i.wr = fmul double %.1251, 1.000000e-15
  %i.ws = fmul double %i.wr, %i.vs
  %i.wt = fdiv double %i.ws, %i.hu
  %i.wu = fadd double %i.wt, 1.000000e-15
  %i.wv = icmp ne i64 %.0238, 9999
  %i.ww = fadd double %i.wo, 1.000000e+00
  %i.wx = fcmp ugt double %i.ww, 1.000000e+00
  %i.wy = fmul double %.2243, %i.wl
  %i.wz = fdiv double %i.wk, %i.hu                ; 2 uses
  %i.xa = fmul double %.1251, %i.wk
  %i.xb = fadd double %i.wq, 1.000000e+00
  %i.xc = insertelement <2 x double> poison, double %i.wz, i64 0
  %i.xd = insertelement <2 x double> %i.xc, double %i.wy, i64 1
  %i.xe = insertelement <2 x double> poison, double %i.xb, i64 0
  %i.xf = insertelement <2 x double> %i.xe, double %i.xa, i64 1
  %i.xg = fdiv <2 x double> %i.xd, %i.xf          ; 2 uses
  %i.xh = fadd <2 x double> %i.xg, splat (double 1.000000e+00)
  %i.xi = fcmp ugt <2 x double> %i.xh, splat (double 1.000000e+00) ; 2 uses
  %i.xj = fcmp ugt double %i.wo, 1.000000e-08
  %i.xk = extractelement <2 x double> %i.xg, i64 1
  %i.xl = fcmp ugt double %i.xk, 1.000000e-15
  %i.xm = fcmp ugt double %i.wz, %i.wu
  %.not271402403404405406 = and i1 %i.wv, %i.wx
  %i.xn = select i1 %i.xm, i1 %i.xl, i1 false
  %i.xo = select i1 %i.xn, i1 %i.xj, i1 false
  %i.xp = extractelement <2 x i1> %i.xi, i64 0
  %i.xq = select i1 %i.xo, i1 %i.xp, i1 false
  %i.xr = extractelement <2 x i1> %i.xi, i64 1
  %i.xs = select i1 %i.xq, i1 %i.xr, i1 false
  %.not271 = select i1 %i.xs, i1 %.not271402403404405406, i1 false
  %i.xt = extractelement <2 x double> %i.wc, i64 1
  br i1 %.not271, label %bb.e, label %split, !llvm.loop !179

split:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380
  %.not.i381 = icmp eq ptr %1, null
  br i1 %.not.i381, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %bb.n

bb.n:                                             ; preds = %split
  br i1 %.not.i, label %.preheader16.i383, label %.preheader.i390

.preheader16.i383:                                ; preds = %bb.n
  br i1 %i.be, label %.lr.ph.i385.preheader, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

.lr.ph.i385.preheader:                            ; preds = %.preheader16.i383
  %min.iters.check697 = icmp ult i64 %i.c, 8
  %i.xu = sub i64 %7, %i.a
  %diff.check695 = icmp ugt i64 %i.xu, -32
  %or.cond712 = select i1 %min.iters.check697, i1 true, i1 %diff.check695
  br i1 %or.cond712, label %.lr.ph.i385.preheader713, label %vector.ph698

vector.ph698:                                     ; preds = %.lr.ph.i385.preheader
  %15 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  %n.vec699 = and i64 %i.c, 9223372036854775804   ; 4 uses
  %i.xv = shl i64 %n.vec699, 3                    ; 2 uses
  %i.xw = getelementptr i8, ptr %1, i64 %i.xv
  %i.xx = getelementptr i8, ptr %15, i64 %i.xv
  %16 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.e
  br label %vector.body700

vector.body700:                                   ; preds = %vector.body700, %vector.ph698
  %index701 = phi i64 [ 0, %vector.ph698 ], [ %index.next706, %vector.body700 ] ; 2 uses
  %i.xy = shl i64 %index701, 3                    ; 2 uses
  %next.gep702 = getelementptr i8, ptr %1, i64 %i.xy ; 2 uses
  %next.gep703 = getelementptr i8, ptr %16, i64 %i.xy ; 2 uses
  %i.xz = getelementptr i8, ptr %next.gep703, i64 16
  %wide.load704 = load <2 x double>, ptr %next.gep703, align 8, !tbaa !26
  %wide.load705 = load <2 x double>, ptr %i.xz, align 8, !tbaa !26
  %i.ya = getelementptr i8, ptr %next.gep702, i64 16
  store <2 x double> %wide.load704, ptr %next.gep702, align 8, !tbaa !26
  store <2 x double> %wide.load705, ptr %i.ya, align 8, !tbaa !26
  %index.next706 = add nuw i64 %index701, 4       ; 2 uses
  %i.yb = icmp eq i64 %index.next706, %n.vec699
  br i1 %i.yb, label %middle.block707, label %vector.body700, !llvm.loop !180

middle.block707:                                  ; preds = %vector.body700
  %cmp.n708 = icmp eq i64 %i.c, %n.vec699
  br i1 %cmp.n708, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385.preheader713

.lr.ph.i385.preheader713:                         ; preds = %.lr.ph.i385.preheader, %middle.block707
  %.020.i386.ph = phi i64 [ 0, %.lr.ph.i385.preheader ], [ %n.vec699, %middle.block707 ] ; 4 uses
  %.01019.i387.ph = phi ptr [ %1, %.lr.ph.i385.preheader ], [ %i.xw, %middle.block707 ] ; 2 uses
  %.01218.i388.ph = phi ptr [ %6, %.lr.ph.i385.preheader ], [ %i.xx, %middle.block707 ] ; 2 uses
  %i.yc = sub nsw i64 %i.c, %.020.i386.ph
  %xtraiter797 = and i64 %i.yc, 7                 ; 2 uses
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  br i1 %lcmp.mod798.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol

.lr.ph.i385.prol:                                 ; preds = %.lr.ph.i385.preheader713, %.lr.ph.i385.prol
  %.020.i386.prol = phi i64 [ %i.yg, %.lr.ph.i385.prol ], [ %.020.i386.ph, %.lr.ph.i385.preheader713 ]
  %.01019.i387.prol = phi ptr [ %i.yf, %.lr.ph.i385.prol ], [ %.01019.i387.ph, %.lr.ph.i385.preheader713 ] ; 2 uses
  %.01218.i388.prol = phi ptr [ %i.yd, %.lr.ph.i385.prol ], [ %.01218.i388.ph, %.lr.ph.i385.preheader713 ] ; 2 uses
  %prol.iter799 = phi i64 [ %prol.iter799.next, %.lr.ph.i385.prol ], [ 0, %.lr.ph.i385.preheader713 ]
  %i.yd = getelementptr inbounds nuw i8, ptr %.01218.i388.prol, i64 8 ; 2 uses
  %i.ye = load double, ptr %.01218.i388.prol, align 8, !tbaa !26
  %i.yf = getelementptr inbounds nuw i8, ptr %.01019.i387.prol, i64 8 ; 2 uses
  store double %i.ye, ptr %.01019.i387.prol, align 8, !tbaa !26
  %i.yg = add nuw nsw i64 %.020.i386.prol, 1      ; 2 uses
  %prol.iter799.next = add i64 %prol.iter799, 1   ; 2 uses
  %prol.iter799.cmp.not = icmp eq i64 %prol.iter799.next, %xtraiter797
  br i1 %prol.iter799.cmp.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol, !llvm.loop !181

.lr.ph.i385.prol.loopexit:                        ; preds = %.lr.ph.i385.prol, %.lr.ph.i385.preheader713
  %.020.i386.unr = phi i64 [ %.020.i386.ph, %.lr.ph.i385.preheader713 ], [ %i.yg, %.lr.ph.i385.prol ]
  %.01019.i387.unr = phi ptr [ %.01019.i387.ph, %.lr.ph.i385.preheader713 ], [ %i.yf, %.lr.ph.i385.prol ]
  %.01218.i388.unr = phi ptr [ %.01218.i388.ph, %.lr.ph.i385.preheader713 ], [ %i.yd, %.lr.ph.i385.prol ]
  %i.yh = sub nsw i64 %.020.i386.ph, %i.c
  %i.yi = icmp ugt i64 %i.yh, -8
  br i1 %i.yi, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385

.preheader.i390:                                  ; preds = %bb.n
  br i1 %i.be, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

.lr.ph.i385:                                      ; preds = %.lr.ph.i385.prol.loopexit, %.lr.ph.i385
  %.020.i386 = phi i64 [ %i.zh, %.lr.ph.i385 ], [ %.020.i386.unr, %.lr.ph.i385.prol.loopexit ]
  %.01019.i387 = phi ptr [ %i.zg, %.lr.ph.i385 ], [ %.01019.i387.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %.01218.i388 = phi ptr [ %i.ze, %.lr.ph.i385 ], [ %.01218.i388.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 8
  %i.yk = load double, ptr %.01218.i388, align 8, !tbaa !26
  %i.yl = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 8
  store double %i.yk, ptr %.01019.i387, align 8, !tbaa !26
  %i.ym = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 16
  %i.yn = load double, ptr %i.yj, align 8, !tbaa !26
  %i.yo = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 16
  store double %i.yn, ptr %i.yl, align 8, !tbaa !26
  %i.yp = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 24
  %i.yq = load double, ptr %i.ym, align 8, !tbaa !26
  %i.yr = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 24
  store double %i.yq, ptr %i.yo, align 8, !tbaa !26
  %i.ys = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 32
  %i.yt = load double, ptr %i.yp, align 8, !tbaa !26
  %i.yu = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 32
  store double %i.yt, ptr %i.yr, align 8, !tbaa !26
  %i.yv = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 40
  %i.yw = load double, ptr %i.ys, align 8, !tbaa !26
  %i.yx = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 40
  store double %i.yw, ptr %i.yu, align 8, !tbaa !26
  %i.yy = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 48
  %i.yz = load double, ptr %i.yv, align 8, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 48
  store double %i.yz, ptr %i.yx, align 8, !tbaa !26
  %i.zb = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 56
  %i.zc = load double, ptr %i.yy, align 8, !tbaa !26
  %i.zd = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 56
  store double %i.zc, ptr %i.za, align 8, !tbaa !26
  %i.ze = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 64
  %i.zf = load double, ptr %i.zb, align 8, !tbaa !26
  %i.zg = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 64
  store double %i.zf, ptr %i.zd, align 8, !tbaa !26
  %i.zh = add nuw nsw i64 %.020.i386, 8           ; 2 uses
  %exitcond.not.i389.7 = icmp eq i64 %i.zh, %i.c
  br i1 %exitcond.not.i389.7, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385, !llvm.loop !182

_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split: ; preds = %.preheader.i390, %bb.d
  %i.zi = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.zi, i1 false), !tbaa !26
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

_ZN6casadi12casadi_clearIdEEvPT_x.exit309:        ; preds = %.lr.ph.i385.prol.loopexit, %.lr.ph.i385, %middle.block707, %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, %.preheader.i390, %.preheader16.i383, %split, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !45}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"_ZTSN6casadi14LinsolInternal7ExposedE"}
!12 = !{!"p1 _ZTSN6casadi7OptionsE", !9, i64 0}
!13 = !{!"_ZTSN6casadi15PluginInterfaceINS_14LinsolInternalEE6PluginE", !9, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !11, i64 28, !12, i64 32, !9, i64 40}
!14 = !{!13, !10, i64 8}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !16, i64 8, !5, i64 16}
!18 = !{!17, !10, i64 0}
!19 = !{!"vtable pointer", !4, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"p1 double", !9, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!22, !21, i64 0}
!25 = !{!"double", !5, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!15, !10, i64 0}
!28 = !{!16, !16, i64 0}
!29 = !{!5, !5, i64 0}
!30 = !{!17, !16, i64 8}
!31 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!32 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!33 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !16, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!37 = !{!"_ZTSSt6locale", !36, i64 0}
!38 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !31, i64 24, !32, i64 28, !32, i64 32, !33, i64 40, !34, i64 48, !5, i64 64, !6, i64 192, !35, i64 200, !37, i64 208}
!39 = !{!38, !32, i64 32}
!40 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !37, i64 56}
!41 = !{!40, !10, i64 40}
!42 = !{!40, !10, i64 32}
!43 = !{!"_ZTSSi", !16, i64 8}
!44 = !{!43, !16, i64 8}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"long long", !5, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSSt14_Rb_tree_color", !5, i64 0}
!49 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !9, i64 0}
!50 = !{!"_ZTSSt18_Rb_tree_node_base", !48, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!51 = !{!"_ZTSSt15_Rb_tree_header", !50, i64 0, !16, i64 32}
end_hunk_1
