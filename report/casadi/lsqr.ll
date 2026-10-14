Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/lsqr?download=true
inline.NumInlined: 579
inline.NumDeleted: 289
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi15PluginInterfaceINS8_14LinsolInternalEE6PluginEESt10_Select1stISD_ESt4lessIS5_ESaISD_EE24_M_get_insert_unique_posERS7_:bb.a
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
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
  %5 = ptrtoaddr ptr %1 to i64                    ; 2 uses
  %6 = ptrtoaddr ptr %4 to i64
  %i.a = load i64, ptr %3, align 8, !tbaa !47     ; 35 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47   ; 70 uses
  %i.d = getelementptr [8 x i8], ptr %4, i64 %i.a ; 43 uses
  %.not.i = icmp ne ptr %4, null                  ; 4 uses
  br i1 %.not.i, label %bb.b, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c
  %i.f = icmp sgt i64 %i.c, 0
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit280

bb.b:                                             ; preds = %bb.a
  %.not15.i = icmp eq ptr %1, null
  %i.g = icmp sgt i64 %i.a, 0                     ; 2 uses
  br i1 %.not15.i, label %.preheader.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %bb.b
  br i1 %i.g, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i.preheader:                               ; preds = %.preheader16.i
  %min.iters.check = icmp ult i64 %i.a, 8
  %i.h = sub i64 %5, %6
  %diff.check = icmp ugt i64 %i.h, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader725, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.a, 9223372036854775804      ; 4 uses
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %4, i64 %i.i
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %4, i64 %i.l  ; 2 uses
  %next.gep540 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep540, i64 16
  %wide.load = load <2 x double>, ptr %next.gep540, align 8, !tbaa !26
  %wide.load541 = load <2 x double>, ptr %i.m, align 8, !tbaa !26
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !26
  store <2 x double> %wide.load541, ptr %i.n, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i.preheader725

.lr.ph.i.preheader725:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.020.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.01019.i.ph = phi ptr [ %4, %.lr.ph.i.preheader ], [ %i.j, %middle.block ] ; 2 uses
  %.01218.i.ph = phi ptr [ %1, %.lr.ph.i.preheader ], [ %i.k, %middle.block ] ; 2 uses
  %i.p = sub nsw i64 %i.a, %.020.i.ph
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader725, %.lr.ph.i.prol
  %.020.i.prol = phi i64 [ %i.t, %.lr.ph.i.prol ], [ %.020.i.ph, %.lr.ph.i.preheader725 ]
  %.01019.i.prol = phi ptr [ %i.s, %.lr.ph.i.prol ], [ %.01019.i.ph, %.lr.ph.i.preheader725 ] ; 2 uses
  %.01218.i.prol = phi ptr [ %i.q, %.lr.ph.i.prol ], [ %.01218.i.ph, %.lr.ph.i.preheader725 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader725 ]
  %i.q = getelementptr inbounds nuw i8, ptr %.01218.i.prol, i64 8 ; 2 uses
  %i.r = load double, ptr %.01218.i.prol, align 8, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 8 ; 2 uses
  store double %i.r, ptr %.01019.i.prol, align 8, !tbaa !26
  %i.t = add nuw nsw i64 %.020.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !140

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader725
  %.020.i.unr = phi i64 [ %.020.i.ph, %.lr.ph.i.preheader725 ], [ %i.t, %.lr.ph.i.prol ]
  %.01019.i.unr = phi ptr [ %.01019.i.ph, %.lr.ph.i.preheader725 ], [ %i.s, %.lr.ph.i.prol ]
  %.01218.i.unr = phi ptr [ %.01218.i.ph, %.lr.ph.i.preheader725 ], [ %i.q, %.lr.ph.i.prol ]
  %i.u = sub nsw i64 %.020.i.ph, %i.a
  %i.v = icmp ugt i64 %i.u, -8
  br i1 %i.v, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.b
  br i1 %i.g, label %.lr.ph23.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph23.preheader.i:                             ; preds = %.preheader.i
  %i.w = shl nuw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %4, i8 0, i64 %i.w, i1 false), !tbaa !26
  br label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.01019.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01218.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.01218.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.01218.i, i64 8
  %i.y = load double, ptr %.01218.i, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  store double %i.y, ptr %.01019.i, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %.01218.i, i64 16
  %i.ab = load double, ptr %i.x, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %.01019.i, i64 16
  store double %i.ab, ptr %i.z, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw i8, ptr %.01218.i, i64 24
  %i.ae = load double, ptr %i.aa, align 8, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %.01019.i, i64 24
  store double %i.ae, ptr %i.ac, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %.01218.i, i64 32
  %i.ah = load double, ptr %i.ad, align 8, !tbaa !26
  %i.ai = getelementptr inbounds nuw i8, ptr %.01019.i, i64 32
  store double %i.ah, ptr %i.af, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %.01218.i, i64 40
  %i.ak = load double, ptr %i.ag, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %.01019.i, i64 40
  store double %i.ak, ptr %i.ai, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.01218.i, i64 48
  %i.an = load double, ptr %i.aj, align 8, !tbaa !26
  %i.ao = getelementptr inbounds nuw i8, ptr %.01019.i, i64 48
  store double %i.an, ptr %i.al, align 8, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %.01218.i, i64 56
  %i.aq = load double, ptr %i.am, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %.01019.i, i64 56
  store double %i.aq, ptr %i.ao, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %.01218.i, i64 64
  %i.at = load double, ptr %i.ap, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %.01019.i, i64 64
  store double %i.at, ptr %i.ar, align 8, !tbaa !26
  %i.av = add nuw nsw i64 %.020.i, 8              ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.av, %i.a
  br i1 %exitcond.not.i.7, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, label %.lr.ph.i, !llvm.loop !141

_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit:       ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader16.i, %.preheader.i, %.lr.ph23.preheader.i
  %i.aw = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c ; 3 uses
  %i.ax = icmp sgt i64 %i.c, 0
  br i1 %i.ax, label %.lr.ph.preheader.i279, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit280

.lr.ph.preheader.i279:                            ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit
  %i.ay = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.ay, i1 false), !tbaa !26
  %i.az = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aw, i8 0, i64 %i.az, i1 false), !tbaa !26
  %i.ba = shl nuw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.d, i8 0, i64 %i.ba, i1 false), !tbaa !26
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit280

_ZN6casadi12casadi_clearIdEEvPT_x.exit280:        ; preds = %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread, %.lr.ph.preheader.i279
  %or.cond.i516519521 = phi i1 [ true, %.lr.ph.preheader.i279 ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ]
  %i.bb = phi i1 [ true, %.lr.ph.preheader.i279 ], [ %i.f, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ false, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 5 uses
  %i.bc = phi ptr [ %i.aw, %.lr.ph.preheader.i279 ], [ %i.e, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit.thread ], [ %i.aw, %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit ] ; 3 uses
  %7 = ptrtoaddr ptr %i.bc to i64
  %i.bd = getelementptr [8 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.c ; 17 uses
  %i.bf = getelementptr [8 x i8], ptr %i.be, i64 %i.c ; 6 uses
  %i.bg = icmp sgt i64 %i.a, 0                    ; 6 uses
  br i1 %i.bg, label %.lr.ph.i.i.preheader, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph.i.i.preheader:                             ; preds = %_ZN6casadi12casadi_clearIdEEvPT_x.exit280
  %i.bh = add nsw i64 %i.a, -1
  %xtraiter726 = and i64 %i.a, 3                  ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.a, 9223372036854775804
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.012.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader.new ], [ %i.bu, %.lr.ph.i.i ]
  %.0710.i.i = phi ptr [ %4, %.lr.ph.i.i.preheader.new ], [ %i.bs, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.bj = getelementptr i8, ptr %.0710.i.i, i64 8
  %i.bk = load double, ptr %.0710.i.i, align 8, !tbaa !26 ; 2 uses
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double %i.bk, double %.012.i.i)
  %i.bm = getelementptr i8, ptr %.0710.i.i, i64 16
  %i.bn = load double, ptr %i.bj, align 8, !tbaa !26 ; 2 uses
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bn, double %i.bl)
  %i.bp = getelementptr i8, ptr %.0710.i.i, i64 24
  %i.bq = load double, ptr %i.bm, align 8, !tbaa !26 ; 2 uses
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bq, double %i.bo)
  %i.bs = getelementptr i8, ptr %.0710.i.i, i64 32 ; 2 uses
  %i.bt = load double, ptr %i.bp, align 8, !tbaa !26 ; 2 uses
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bt, double %i.br) ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod727.not = icmp eq i64 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa, %.lr.ph.i.i.preheader
  %.012.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.preheader ], [ %i.bu, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %.0710.i.i.epil.init = phi ptr [ %4, %.lr.ph.i.i.preheader ], [ %i.bs, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ]
  %lcmp.mod729 = icmp ne i64 %xtraiter726, 0
  tail call void @llvm.assume(i1 %lcmp.mod729)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.012.i.i.epil = phi double [ %i.bx, %.lr.ph.i.i.epil ], [ %.012.i.i.epil.init, %.lr.ph.i.i.epil.preheader ]
  %.0710.i.i.epil = phi ptr [ %i.bv, %.lr.ph.i.i.epil ], [ %.0710.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.bv = getelementptr i8, ptr %.0710.i.i.epil, i64 8
  %i.bw = load double, ptr %.0710.i.i.epil, align 8, !tbaa !26 ; 2 uses
  %i.bx = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bw, double %.012.i.i.epil) ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter726
  br i1 %epil.iter.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit, label %.lr.ph.i.i.epil, !llvm.loop !143

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit:       ; preds = %.lr.ph.i.i.epil, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa
  %.lcssa724 = phi double [ %i.bu, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit.unr-lcssa ], [ %i.bx, %.lr.ph.i.i.epil ]
  %i.by = tail call noundef double @sqrt(double noundef %.lcssa724) #24 ; 11 uses
  %i.bz = fcmp ogt double %i.by, 0.000000e+00
  br i1 %i.bz, label %.lr.ph, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph:                                           ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit
  %i.ca = fdiv nnan double 1.000000e+00, %i.by    ; 2 uses
  %min.iters.check545 = icmp ult i64 %i.a, 4
  br i1 %min.iters.check545, label %scalar.ph544.preheader, label %vector.ph546

vector.ph546:                                     ; preds = %.lr.ph
  %n.vec547 = and i64 %i.a, 9223372036854775804   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ca, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body548

vector.body548:                                   ; preds = %vector.body548, %vector.ph546
  %index549 = phi i64 [ 0, %vector.ph546 ], [ %index.next552, %vector.body548 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index549 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 2 uses
  %wide.load550 = load <2 x double>, ptr %i.cb, align 8, !tbaa !26
  %wide.load551 = load <2 x double>, ptr %i.cc, align 8, !tbaa !26
  %i.cd = fmul <2 x double> %broadcast.splat, %wide.load550
  %i.ce = fmul <2 x double> %broadcast.splat, %wide.load551
  store <2 x double> %i.cd, ptr %i.cb, align 8, !tbaa !26
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !26
  %index.next552 = add nuw i64 %index549, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next552, %n.vec547
  br i1 %i.cf, label %middle.block553, label %vector.body548, !llvm.loop !144

middle.block553:                                  ; preds = %vector.body548
  %cmp.n554 = icmp eq i64 %i.a, %n.vec547
  br i1 %cmp.n554, label %._crit_edge, label %scalar.ph544.preheader

scalar.ph544.preheader:                           ; preds = %.lr.ph, %middle.block553
  %.0253425.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec547, %middle.block553 ]
  br label %scalar.ph544

scalar.ph544:                                     ; preds = %scalar.ph544.preheader, %scalar.ph544
  %.0253425 = phi i64 [ %i.cj, %scalar.ph544 ], [ %.0253425.ph, %scalar.ph544.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.0253425 ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !26
  %i.ci = fmul double %i.ca, %i.ch
  store double %i.ci, ptr %i.cg, align 8, !tbaa !26
  %i.cj = add nuw nsw i64 %.0253425, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cj, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph544, !llvm.loop !145

._crit_edge:                                      ; preds = %scalar.ph544, %middle.block553
  %i.ck = icmp ne ptr %0, null
  %or.cond.i281 = and i1 %i.ck, %.not.i
  br i1 %or.cond.i281, label %bb.c, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit

bb.c:                                             ; preds = %._crit_edge
  %.not.not = icmp eq i64 %2, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.c
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 6 uses
  br i1 %.not.not, label %.preheader49.i, label %.preheader.i285

.preheader49.i:                                   ; preds = %bb.c
  br i1 %i.bb, label %.lr.ph54.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph54.preheader.i:                             ; preds = %.preheader49.i
  %.pre.i = load i64, ptr %i.cl, align 8, !tbaa !47
  br label %.lr.ph54.i

.preheader.i285:                                  ; preds = %bb.c
  br i1 %i.bb, label %.lr.ph58.preheader.i, label %_ZN6casadi11casadi_copyIdEEvPKT_xPS1_.exit304

.lr.ph58.preheader.i:                             ; preds = %.preheader.i285
  %.pre63.i = load i64, ptr %i.cl, align 8, !tbaa !47
  br label %.lr.ph58.i

.loopexit48.i:                                    ; preds = %.prol.loopexit734, %.lr.ph.i283.new, %.lr.ph54.i
  %exitcond60.not.i = icmp eq i64 %i.cp, %i.c
  br i1 %exitcond60.not.i, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, label %.lr.ph54.i, !llvm.loop !146

.lr.ph54.i:                                       ; preds = %.loopexit48.i, %.lr.ph54.preheader.i
  %i.co = phi i64 [ %i.cr, %.loopexit48.i ], [ %.pre.i, %.lr.ph54.preheader.i ] ; 7 uses
  %.04253.i = phi i64 [ %i.cp, %.loopexit48.i ], [ 0, %.lr.ph54.preheader.i ] ; 2 uses
  %i.cp = add nuw nsw i64 %.04253.i, 1            ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !47 ; 5 uses
  %i.cs = icmp slt i64 %i.co, %i.cr
  br i1 %i.cs, label %.lr.ph.i283, label %.loopexit48.i

.lr.ph.i283:                                      ; preds = %.lr.ph54.i
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.04253.i ; 4 uses
  %.promoted.i = load double, ptr %i.ct, align 8, !tbaa !26 ; 2 uses
  %i.cu = sub i64 %i.cr, %i.co
  %.neg800 = add i64 %i.co, 1
  %xtraiter735 = and i64 %i.cu, 1
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %.prol.loopexit734, label %.prol.loopexit734.unr-lcssa

.prol.loopexit734.unr-lcssa:                      ; preds = %.lr.ph.i283
  %i.cv = getelementptr inbounds [8 x i8], ptr %0, i64 %i.co
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !26
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.co
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !47
  %i.cz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !26
  %i.db = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.da, double %.promoted.i) ; 2 uses
  store double %i.db, ptr %i.ct, align 8, !tbaa !26
  %i.dc = add nsw i64 %i.co, 1
  br label %.prol.loopexit734

.prol.loopexit734:                                ; preds = %.prol.loopexit734.unr-lcssa, %.lr.ph.i283
  %.unr = phi double [ %.promoted.i, %.lr.ph.i283 ], [ %i.db, %.prol.loopexit734.unr-lcssa ]
  %.052.i.unr = phi i64 [ %i.co, %.lr.ph.i283 ], [ %i.dc, %.prol.loopexit734.unr-lcssa ]
  %i.dd = icmp eq i64 %i.cr, %.neg800
  br i1 %i.dd, label %.loopexit48.i, label %.lr.ph.i283.new

.lr.ph.i283.new:                                  ; preds = %.prol.loopexit734, %.lr.ph.i283.new
  %i.de = phi double [ %i.dt, %.lr.ph.i283.new ], [ %.unr, %.prol.loopexit734 ]
  %.052.i = phi i64 [ %i.du, %.lr.ph.i283.new ], [ %.052.i.unr, %.prol.loopexit734 ] ; 4 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %0, i64 %.052.i
  %i.dg = load double, ptr %i.df, align 8, !tbaa !26
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %.052.i
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !47
  %i.dj = getelementptr inbounds [8 x i8], ptr %4, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !26
  %i.dl = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dk, double %i.de) ; 2 uses
  store double %i.dl, ptr %i.ct, align 8, !tbaa !26
  %i.dm = add nsw i64 %.052.i, 1                  ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %0, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !26
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.dm
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !47
  %i.dr = getelementptr inbounds [8 x i8], ptr %4, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !26
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.do, double %i.ds, double %i.dl) ; 2 uses
  store double %i.dt, ptr %i.ct, align 8, !tbaa !26
  %i.du = add nsw i64 %.052.i, 2                  ; 2 uses
  %exitcond.not.i284.1 = icmp eq i64 %i.du, %i.cr
  br i1 %exitcond.not.i284.1, label %.loopexit48.i, label %.lr.ph.i283.new, !llvm.loop !147

.loopexit.i:                                      ; preds = %.prol.loopexit, %.lr.ph56.i.new, %.lr.ph58.i
  %exitcond62.not.i = icmp eq i64 %i.dw, %i.c
  br i1 %exitcond62.not.i, label %_ZN6casadi9casadi_mvIdEEvPKT_PKxS3_PS1_x.exit, label %.lr.ph58.i, !llvm.loop !148
end_hunk_0
begin_hunk_1_@_ZN6casadi24casadi_lsqr_single_solveIdEEiPKT_PS1_xPKxS4_:bb.a
  br i1 %exitcond465.not.1, label %.lr.ph447.preheader, label %.lr.ph445, !llvm.loop !172

.lr.ph447.preheader:                              ; preds = %.lr.ph445.prol.loopexit, %.lr.ph445, %middle.block622
  %brmerge831 = select i1 %min.iters.check590, i1 true, i1 %found.conflict
  br i1 %brmerge831, label %.lr.ph447.preheader714, label %vector.ph591

vector.ph591:                                     ; preds = %.lr.ph447.preheader
  %broadcast.splatinsert593 = insertelement <2 x double> poison, double %i.sm, i64 0
  %broadcast.splat594 = shufflevector <2 x double> %broadcast.splatinsert593, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body595

vector.body595:                                   ; preds = %vector.body595, %vector.ph591
  %index596 = phi i64 [ 0, %vector.ph591 ], [ %index.next601, %vector.body595 ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index596 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  %wide.load597 = load <2 x double>, ptr %i.tw, align 8, !tbaa !26, !alias.scope !188
  %wide.load598 = load <2 x double>, ptr %i.tx, align 8, !tbaa !26, !alias.scope !188
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index596 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 16 ; 2 uses
  %wide.load599 = load <2 x double>, ptr %i.ty, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %wide.load600 = load <2 x double>, ptr %i.tz, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %i.ua = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load599, <2 x double> %wide.load597)
  %i.ub = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat594, <2 x double> %wide.load600, <2 x double> %wide.load598)
  store <2 x double> %i.ua, ptr %i.ty, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  store <2 x double> %i.ub, ptr %i.tz, align 8, !tbaa !26, !alias.scope !189, !noalias !188
  %index.next601 = add nuw i64 %index596, 4       ; 2 uses
  %i.uc = icmp eq i64 %index.next601, %n.vec592
  br i1 %i.uc, label %middle.block602, label %vector.body595, !llvm.loop !176

middle.block602:                                  ; preds = %vector.body595
  br i1 %cmp.n603, label %.lr.ph.i.i375.preheader, label %.lr.ph447.preheader714

.lr.ph447.preheader714:                           ; preds = %.lr.ph447.preheader, %middle.block602
  %.8446.ph = phi i64 [ %n.vec592, %middle.block602 ], [ 0, %.lr.ph447.preheader ] ; 5 uses
  %.neg806 = or disjoint i64 %.8446.ph, 1
  br i1 %lcmp.mod788.not, label %.lr.ph447.prol.loopexit, label %.lr.ph447.prol

.lr.ph447.prol:                                   ; preds = %.lr.ph447.preheader714
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.8446.ph
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !26
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.8446.ph ; 2 uses
  %i.ug = load double, ptr %i.uf, align 8, !tbaa !26
  %i.uh = tail call double @llvm.fmuladd.f64(double %i.sm, double %i.ug, double %i.ue)
  store double %i.uh, ptr %i.uf, align 8, !tbaa !26
  %i.ui = or disjoint i64 %.8446.ph, 1
  br label %.lr.ph447.prol.loopexit

.lr.ph447.prol.loopexit:                          ; preds = %.lr.ph447.prol, %.lr.ph447.preheader714
  %.8446.unr = phi i64 [ %.8446.ph, %.lr.ph447.preheader714 ], [ %i.ui, %.lr.ph447.prol ]
  %i.uj = icmp eq i64 %i.c, %.neg806
  br i1 %i.uj, label %.lr.ph.i.i375.preheader, label %.lr.ph447

.lr.ph447:                                        ; preds = %.lr.ph447.prol.loopexit, %.lr.ph447
  %.8446 = phi i64 [ %i.uv, %.lr.ph447 ], [ %.8446.unr, %.lr.ph447.prol.loopexit ] ; 4 uses
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.8446
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !26
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.8446 ; 2 uses
  %i.un = load double, ptr %i.um, align 8, !tbaa !26
  %i.uo = tail call double @llvm.fmuladd.f64(double %i.sm, double %i.un, double %i.ul)
  store double %i.uo, ptr %i.um, align 8, !tbaa !26
  %i.up = add nuw nsw i64 %.8446, 1               ; 2 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.up
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !26
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.up ; 2 uses
  %i.ut = load double, ptr %i.us, align 8, !tbaa !26
  %i.uu = tail call double @llvm.fmuladd.f64(double %i.sm, double %i.ut, double %i.ur)
  store double %i.uu, ptr %i.us, align 8, !tbaa !26
  %i.uv = add nuw nsw i64 %.8446, 2               ; 2 uses
  %exitcond466.not.1 = icmp eq i64 %i.uv, %i.c
  br i1 %exitcond466.not.1, label %.lr.ph.i.i375.preheader, label %.lr.ph447, !llvm.loop !177

.lr.ph.i.i375.preheader:                          ; preds = %.lr.ph447.prol.loopexit, %.lr.ph447, %middle.block602
  br i1 %i.ip, label %.lr.ph.i.i375.epil.preheader, label %.lr.ph.i.i375

.lr.ph.i.i375:                                    ; preds = %.lr.ph.i.i375.preheader, %.lr.ph.i.i375
  %.012.i.i376 = phi double [ %i.vh, %.lr.ph.i.i375 ], [ 0.000000e+00, %.lr.ph.i.i375.preheader ]
  %.0710.i.i378 = phi ptr [ %i.vf, %.lr.ph.i.i375 ], [ %i.bf, %.lr.ph.i.i375.preheader ] ; 5 uses
  %niter796 = phi i64 [ %niter796.next.3, %.lr.ph.i.i375 ], [ 0, %.lr.ph.i.i375.preheader ]
  %i.uw = getelementptr i8, ptr %.0710.i.i378, i64 8
  %i.ux = load double, ptr %.0710.i.i378, align 8, !tbaa !26 ; 2 uses
  %i.uy = tail call double @llvm.fmuladd.f64(double %i.ux, double %i.ux, double %.012.i.i376)
  %i.uz = getelementptr i8, ptr %.0710.i.i378, i64 16
  %i.va = load double, ptr %i.uw, align 8, !tbaa !26 ; 2 uses
  %i.vb = tail call double @llvm.fmuladd.f64(double %i.va, double %i.va, double %i.uy)
  %i.vc = getelementptr i8, ptr %.0710.i.i378, i64 24
  %i.vd = load double, ptr %i.uz, align 8, !tbaa !26 ; 2 uses
  %i.ve = tail call double @llvm.fmuladd.f64(double %i.vd, double %i.vd, double %i.vb)
  %i.vf = getelementptr i8, ptr %.0710.i.i378, i64 32 ; 2 uses
  %i.vg = load double, ptr %i.vc, align 8, !tbaa !26 ; 2 uses
  %i.vh = tail call double @llvm.fmuladd.f64(double %i.vg, double %i.vg, double %i.ve) ; 3 uses
  %niter796.next.3 = add i64 %niter796, 4         ; 2 uses
  %niter796.ncmp.3 = icmp eq i64 %niter796.next.3, %unroll_iter795
  br i1 %niter796.ncmp.3, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, label %.lr.ph.i.i375, !llvm.loop !142

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i375
  br i1 %lcmp.mod792.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil.preheader

.lr.ph.i.i375.epil.preheader:                     ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.preheader
  %.012.i.i376.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i375.preheader ], [ %i.vh, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  %.0710.i.i378.epil.init = phi ptr [ %i.bf, %.lr.ph.i.i375.preheader ], [ %i.vf, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod794)
  br label %.lr.ph.i.i375.epil

.lr.ph.i.i375.epil:                               ; preds = %.lr.ph.i.i375.epil, %.lr.ph.i.i375.epil.preheader
  %.012.i.i376.epil = phi double [ %i.vk, %.lr.ph.i.i375.epil ], [ %.012.i.i376.epil.init, %.lr.ph.i.i375.epil.preheader ]
  %.0710.i.i378.epil = phi ptr [ %i.vi, %.lr.ph.i.i375.epil ], [ %.0710.i.i378.epil.init, %.lr.ph.i.i375.epil.preheader ] ; 2 uses
  %epil.iter791 = phi i64 [ %epil.iter791.next, %.lr.ph.i.i375.epil ], [ 0, %.lr.ph.i.i375.epil.preheader ]
  %i.vi = getelementptr i8, ptr %.0710.i.i378.epil, i64 8
  %i.vj = load double, ptr %.0710.i.i378.epil, align 8, !tbaa !26 ; 2 uses
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.vj, double %i.vj, double %.012.i.i376.epil) ; 2 uses
  %epil.iter791.next = add i64 %epil.iter791, 1   ; 2 uses
  %epil.iter791.cmp.not = icmp eq i64 %epil.iter791.next, %xtraiter790
  br i1 %epil.iter791.cmp.not, label %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380, label %.lr.ph.i.i375.epil, !llvm.loop !178

_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380:    ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa, %.lr.ph.i.i375.epil, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit
  %.0.lcssa.i.i374 = phi double [ 0.000000e+00, %_ZN6casadi21casadi_lsqr_sym_orthoIdEEvT_S1_PS1_S2_S2_.exit ], [ %i.vh, %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380.loopexit.unr-lcssa ], [ %i.vk, %.lr.ph.i.i375.epil ]
  %i.vl = tail call noundef double @sqrt(double noundef %.0.lcssa.i.i374) #24 ; 2 uses
  %i.vm = fneg double %.0245
  %i.vn = fmul double %.sink.i, %i.vm             ; 3 uses
  %i.vo = fneg double %.sink.i
  %i.vp = fmul double %.0244, %i.vo
  %i.vq = fmul double %i.se, %i.se
  %i.vr = tail call double @llvm.fmuladd.f64(double %i.vp, double %.0246, double %i.sh) ; 2 uses
  %i.vs = fdiv double %i.vr, %i.vn
  %i.vt = insertelement <2 x double> poison, double %i.vs, i64 0
  %i.vu = insertelement <2 x double> %i.vt, double %i.vn, i64 1 ; 2 uses
  %i.vv = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.vw = insertelement <2 x double> %i.vv, double %i.vq, i64 1
  %i.vx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vu, <2 x double> %i.vu, <2 x double> %i.vw) ; 2 uses
  %i.vy = extractelement <2 x double> %i.vx, i64 0
  %i.vz = tail call double @sqrt(double noundef %i.vy) #24 ; 2 uses
  %i.wa = insertelement <2 x double> poison, double %i.vr, i64 0
  %i.wb = insertelement <2 x double> %i.wa, double %i.se, i64 1
  %i.wc = tail call double @llvm.fmuladd.f64(double %i.vl, double %i.vl, double %.0249) ; 2 uses
  %i.wd = shufflevector <2 x double> %i.vx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.we = insertelement <2 x double> %i.wd, double %i.wc, i64 1
  %i.wf = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.we) ; 3 uses
  %i.wg = extractelement <2 x double> %i.wf, i64 0
  %i.wh = fdiv double %i.vn, %i.wg
  %i.wi = shufflevector <2 x double> %i.wf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wj = fdiv <2 x double> %i.wb, %i.wi          ; 3 uses
  %i.wk = extractelement <2 x double> %i.wj, i64 0
  %i.wl = fmul double %i.si, %i.si
  %i.wm = shufflevector <2 x double> %i.wj, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.wn = insertelement <2 x double> %i.wm, double %i.rd, i64 0 ; 2 uses
  %i.wo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wn, <2 x double> %i.wn, <2 x double> %i.iq) ; 2 uses
  %i.wp = extractelement <2 x double> %i.wo, i64 0
  %i.wq = fadd double %i.wp, %i.wl
  %i.wr = tail call double @sqrt(double noundef %i.wq) #24 ; 2 uses
  %i.ws = tail call double @llvm.fabs.f64(double %i.sj)
  %i.wt = extractelement <2 x double> %i.wf, i64 1
  %i.wu = fmul double %.1251, %i.wt
  %i.wv = fdiv double 1.000000e+00, %i.wu         ; 2 uses
  %i.ww = fmul double %.1251, %i.vz
  %i.wx = fdiv double %i.ww, %i.hw
  %i.wy = fmul double %.1251, 1.000000e-15
  %i.wz = fmul double %i.wy, %i.vz
  %i.xa = fdiv double %i.wz, %i.hw
  %i.xb = fadd double %i.xa, 1.000000e-15
  %i.xc = icmp ne i64 %.0238, 9999
  %i.xd = fadd double %i.wv, 1.000000e+00
  %i.xe = fcmp ugt double %i.xd, 1.000000e+00
  %i.xf = fmul double %.2243, %i.ws
  %i.xg = fdiv double %i.wr, %i.hw                ; 2 uses
  %i.xh = fmul double %.1251, %i.wr
  %i.xi = fadd double %i.wx, 1.000000e+00
  %i.xj = insertelement <2 x double> poison, double %i.xg, i64 0
  %i.xk = insertelement <2 x double> %i.xj, double %i.xf, i64 1
  %i.xl = insertelement <2 x double> poison, double %i.xi, i64 0
  %i.xm = insertelement <2 x double> %i.xl, double %i.xh, i64 1
  %i.xn = fdiv <2 x double> %i.xk, %i.xm          ; 2 uses
  %i.xo = fadd <2 x double> %i.xn, splat (double 1.000000e+00)
  %i.xp = fcmp ugt <2 x double> %i.xo, splat (double 1.000000e+00) ; 2 uses
  %i.xq = fcmp ugt double %i.wv, 1.000000e-08
  %i.xr = extractelement <2 x double> %i.xn, i64 1
  %i.xs = fcmp ugt double %i.xr, 1.000000e-15
  %i.xt = fcmp ugt double %i.xg, %i.xb
  %.not271402403404405406 = and i1 %i.xc, %i.xe
  %i.xu = select i1 %i.xt, i1 %i.xs, i1 false
  %i.xv = select i1 %i.xu, i1 %i.xq, i1 false
  %i.xw = extractelement <2 x i1> %i.xp, i64 0
  %i.xx = select i1 %i.xv, i1 %i.xw, i1 false
  %i.xy = extractelement <2 x i1> %i.xp, i64 1
  %i.xz = select i1 %i.xx, i1 %i.xy, i1 false
  %.not271 = select i1 %i.xz, i1 %.not271402403404405406, i1 false
  %i.ya = extractelement <2 x double> %i.wj, i64 1
  br i1 %.not271, label %bb.e, label %split, !llvm.loop !179

split:                                            ; preds = %_ZN6casadi13casadi_norm_2IdEET_xPKS1_.exit380
  %.not.i381 = icmp eq ptr %1, null
  br i1 %.not.i381, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %bb.n

bb.n:                                             ; preds = %split
  br i1 %.not.i, label %.preheader16.i383, label %.preheader.i390

.preheader16.i383:                                ; preds = %bb.n
  br i1 %i.bg, label %.lr.ph.i385.preheader, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

.lr.ph.i385.preheader:                            ; preds = %.preheader16.i383
  %min.iters.check697 = icmp ult i64 %i.a, 8
  %i.yb = sub i64 %7, %5
  %diff.check695 = icmp ugt i64 %i.yb, -32
  %or.cond712 = select i1 %min.iters.check697, i1 true, i1 %diff.check695
  br i1 %or.cond712, label %.lr.ph.i385.preheader713, label %vector.ph698

vector.ph698:                                     ; preds = %.lr.ph.i385.preheader
  %i.yc = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c
  %n.vec699 = and i64 %i.a, 9223372036854775804   ; 4 uses
  %i.yd = shl i64 %n.vec699, 3                    ; 2 uses
  %i.ye = getelementptr i8, ptr %1, i64 %i.yd
  %i.yf = getelementptr i8, ptr %i.yc, i64 %i.yd
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.c
  br label %vector.body700

vector.body700:                                   ; preds = %vector.body700, %vector.ph698
  %index701 = phi i64 [ 0, %vector.ph698 ], [ %index.next706, %vector.body700 ] ; 2 uses
  %i.yh = shl i64 %index701, 3                    ; 2 uses
  %next.gep702 = getelementptr i8, ptr %1, i64 %i.yh ; 2 uses
  %next.gep703 = getelementptr i8, ptr %i.yg, i64 %i.yh ; 2 uses
  %i.yi = getelementptr i8, ptr %next.gep703, i64 16
  %wide.load704 = load <2 x double>, ptr %next.gep703, align 8, !tbaa !26
  %wide.load705 = load <2 x double>, ptr %i.yi, align 8, !tbaa !26
  %i.yj = getelementptr i8, ptr %next.gep702, i64 16
  store <2 x double> %wide.load704, ptr %next.gep702, align 8, !tbaa !26
  store <2 x double> %wide.load705, ptr %i.yj, align 8, !tbaa !26
  %index.next706 = add nuw i64 %index701, 4       ; 2 uses
  %i.yk = icmp eq i64 %index.next706, %n.vec699
  br i1 %i.yk, label %middle.block707, label %vector.body700, !llvm.loop !180

middle.block707:                                  ; preds = %vector.body700
  %cmp.n708 = icmp eq i64 %i.a, %n.vec699
  br i1 %cmp.n708, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385.preheader713

.lr.ph.i385.preheader713:                         ; preds = %.lr.ph.i385.preheader, %middle.block707
  %.020.i386.ph = phi i64 [ 0, %.lr.ph.i385.preheader ], [ %n.vec699, %middle.block707 ] ; 4 uses
  %.01019.i387.ph = phi ptr [ %1, %.lr.ph.i385.preheader ], [ %i.ye, %middle.block707 ] ; 2 uses
  %.01218.i388.ph = phi ptr [ %i.bc, %.lr.ph.i385.preheader ], [ %i.yf, %middle.block707 ] ; 2 uses
  %i.yl = sub nsw i64 %i.a, %.020.i386.ph
  %xtraiter797 = and i64 %i.yl, 7                 ; 2 uses
  %lcmp.mod798.not = icmp eq i64 %xtraiter797, 0
  br i1 %lcmp.mod798.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol

.lr.ph.i385.prol:                                 ; preds = %.lr.ph.i385.preheader713, %.lr.ph.i385.prol
  %.020.i386.prol = phi i64 [ %i.yp, %.lr.ph.i385.prol ], [ %.020.i386.ph, %.lr.ph.i385.preheader713 ]
  %.01019.i387.prol = phi ptr [ %i.yo, %.lr.ph.i385.prol ], [ %.01019.i387.ph, %.lr.ph.i385.preheader713 ] ; 2 uses
  %.01218.i388.prol = phi ptr [ %i.ym, %.lr.ph.i385.prol ], [ %.01218.i388.ph, %.lr.ph.i385.preheader713 ] ; 2 uses
  %prol.iter799 = phi i64 [ %prol.iter799.next, %.lr.ph.i385.prol ], [ 0, %.lr.ph.i385.preheader713 ]
  %i.ym = getelementptr inbounds nuw i8, ptr %.01218.i388.prol, i64 8 ; 2 uses
  %i.yn = load double, ptr %.01218.i388.prol, align 8, !tbaa !26
  %i.yo = getelementptr inbounds nuw i8, ptr %.01019.i387.prol, i64 8 ; 2 uses
  store double %i.yn, ptr %.01019.i387.prol, align 8, !tbaa !26
  %i.yp = add nuw nsw i64 %.020.i386.prol, 1      ; 2 uses
  %prol.iter799.next = add i64 %prol.iter799, 1   ; 2 uses
  %prol.iter799.cmp.not = icmp eq i64 %prol.iter799.next, %xtraiter797
  br i1 %prol.iter799.cmp.not, label %.lr.ph.i385.prol.loopexit, label %.lr.ph.i385.prol, !llvm.loop !181

.lr.ph.i385.prol.loopexit:                        ; preds = %.lr.ph.i385.prol, %.lr.ph.i385.preheader713
  %.020.i386.unr = phi i64 [ %.020.i386.ph, %.lr.ph.i385.preheader713 ], [ %i.yp, %.lr.ph.i385.prol ]
  %.01019.i387.unr = phi ptr [ %.01019.i387.ph, %.lr.ph.i385.preheader713 ], [ %i.yo, %.lr.ph.i385.prol ]
  %.01218.i388.unr = phi ptr [ %.01218.i388.ph, %.lr.ph.i385.preheader713 ], [ %i.ym, %.lr.ph.i385.prol ]
  %i.yq = sub nsw i64 %.020.i386.ph, %i.a
  %i.yr = icmp ugt i64 %i.yq, -8
  br i1 %i.yr, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385

.preheader.i390:                                  ; preds = %bb.n
  br i1 %i.bg, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309

.lr.ph.i385:                                      ; preds = %.lr.ph.i385.prol.loopexit, %.lr.ph.i385
  %.020.i386 = phi i64 [ %i.zq, %.lr.ph.i385 ], [ %.020.i386.unr, %.lr.ph.i385.prol.loopexit ]
  %.01019.i387 = phi ptr [ %i.zp, %.lr.ph.i385 ], [ %.01019.i387.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %.01218.i388 = phi ptr [ %i.zn, %.lr.ph.i385 ], [ %.01218.i388.unr, %.lr.ph.i385.prol.loopexit ] ; 9 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 8
  %i.yt = load double, ptr %.01218.i388, align 8, !tbaa !26
  %i.yu = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 8
  store double %i.yt, ptr %.01019.i387, align 8, !tbaa !26
  %i.yv = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 16
  %i.yw = load double, ptr %i.ys, align 8, !tbaa !26
  %i.yx = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 16
  store double %i.yw, ptr %i.yu, align 8, !tbaa !26
  %i.yy = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 24
  %i.yz = load double, ptr %i.yv, align 8, !tbaa !26
  %i.za = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 24
  store double %i.yz, ptr %i.yx, align 8, !tbaa !26
  %i.zb = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 32
  %i.zc = load double, ptr %i.yy, align 8, !tbaa !26
  %i.zd = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 32
  store double %i.zc, ptr %i.za, align 8, !tbaa !26
  %i.ze = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 40
  %i.zf = load double, ptr %i.zb, align 8, !tbaa !26
  %i.zg = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 40
  store double %i.zf, ptr %i.zd, align 8, !tbaa !26
  %i.zh = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 48
  %i.zi = load double, ptr %i.ze, align 8, !tbaa !26
  %i.zj = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 48
  store double %i.zi, ptr %i.zg, align 8, !tbaa !26
  %i.zk = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 56
  %i.zl = load double, ptr %i.zh, align 8, !tbaa !26
  %i.zm = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 56
  store double %i.zl, ptr %i.zj, align 8, !tbaa !26
  %i.zn = getelementptr inbounds nuw i8, ptr %.01218.i388, i64 64
  %i.zo = load double, ptr %i.zk, align 8, !tbaa !26
  %i.zp = getelementptr inbounds nuw i8, ptr %.01019.i387, i64 64
  store double %i.zo, ptr %i.zm, align 8, !tbaa !26
  %i.zq = add nuw nsw i64 %.020.i386, 8           ; 2 uses
  %exitcond.not.i389.7 = icmp eq i64 %i.zq, %i.a
  br i1 %exitcond.not.i389.7, label %_ZN6casadi12casadi_clearIdEEvPT_x.exit309, label %.lr.ph.i385, !llvm.loop !182

_ZN6casadi12casadi_clearIdEEvPT_x.exit309.sink.split: ; preds = %.preheader.i390, %bb.d
  %i.zr = shl nuw i64 %i.a, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %1, i8 0, i64 %i.zr, i1 false), !tbaa !26
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
end_hunk_1
