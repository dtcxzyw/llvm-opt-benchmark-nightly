Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/storage?download=true
inline.NumInlined: 52093
inline.NumDeleted: 9229
loop-unroll.NumCompletelyUnrolled: 226
loop-unroll.NumRuntimeUnrolled: 69
loop-unroll.NumUnrolled: 295
begin_hunk_0_@fflush
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #12

declare noundef ptr @_ZN7testing8internal9DeathTest11LastMessageEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE7compactEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !261  ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !185  ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !262  ; 2 uses
  store i64 1048575, ptr %i.l, align 8, !tbaa !262
  %.not37 = icmp eq ptr %i.f, %i.g
  br i1 %.not37, label %.critedge, label %.lr.ph40

bb.c:                                             ; preds = %.lr.ph40
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %.critedge, label %.lr.ph40, !llvm.loop !12

.lr.ph40:                                         ; preds = %bb.b, %bb.c
  %.038 = phi i64 [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = add i64 %.038, -1                        ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !198
  %i.q = icmp ugt i32 %i.p, -1048577
  br i1 %i.q, label %bb.c, label %..critedge_crit_edge41, !llvm.loop !12

..critedge_crit_edge41:                           ; preds = %.lr.ph40
  br label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %bb.c, %..critedge_crit_edge41, %bb.b
  %.0.lcssa = phi i64 [ %i.k, %bb.b ], [ %.038, %..critedge_crit_edge41 ], [ %i.n, %bb.c ] ; 2 uses
  %.not2131 = icmp eq i64 %i.m, 1048575
  br i1 %.not2131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.critedge2
  %i.s = phi ptr [ %i.g, %.lr.ph ], [ %i.aw, %.critedge2 ] ; 2 uses
  %.133 = phi i64 [ %.0.lcssa, %.lr.ph ], [ %.3, %.critedge2 ] ; 3 uses
  %.03032 = phi i64 [ %i.m, %.lr.ph ], [ %i.w, %.critedge2 ] ; 5 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.03032
  %i.u = load i32, ptr %i.t, align 4, !tbaa !198
  %i.v = and i32 %i.u, 1048575                    ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = icmp ult i64 %.03032, %.133
  br i1 %i.x, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %i.y = add i64 %.133, -1                        ; 4 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !131
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %i.y, i64 noundef %.03032)
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !185 ; 6 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.y
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !198 ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %.03032
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !198
  %i.ag = trunc i64 %.03032 to i32
  %i.ah = and i32 %i.ag, 1048575
  %i.ai = and i32 %i.ae, -1048576
  %i.aj = or disjoint i32 %i.ai, %i.ah
  %i.ak = and i32 %i.ae, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 12
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183
  %i.aq = and i64 %i.al, 4095
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.aq
  store i32 %i.aj, ptr %i.ar, align 4, !tbaa !198
  %.not2243 = icmp eq i64 %i.y, 0
  br i1 %.not2243, label %.critedge2, label %.lr.ph46

bb.f:                                             ; preds = %.lr.ph46
  %.not22 = icmp eq i64 %i.as, 0
  br i1 %.not22, label %.critedge2, label %.lr.ph46, !llvm.loop !13

.lr.ph46:                                         ; preds = %bb.e, %bb.f
  %.244 = phi i64 [ %i.as, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %i.as = add i64 %.244, -1                       ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198
  %i.av = icmp ugt i32 %i.au, -1048577
  br i1 %i.av, label %bb.f, label %..critedge2.loopexit_crit_edge48, !llvm.loop !13

..critedge2.loopexit_crit_edge48:                 ; preds = %.lr.ph46
  br label %.critedge2, !llvm.loop !13

.critedge2:                                       ; preds = %bb.f, %bb.e, %..critedge2.loopexit_crit_edge48, %bb.d
  %i.aw = phi ptr [ %i.s, %bb.d ], [ %i.ac, %bb.e ], [ %i.ac, %..critedge2.loopexit_crit_edge48 ], [ %i.ac, %bb.f ]
  %.3 = phi i64 [ %.133, %bb.d ], [ 0, %bb.e ], [ %.244, %..critedge2.loopexit_crit_edge48 ], [ 0, %bb.f ] ; 2 uses
  %.not21 = icmp eq i32 %i.v, 1048575
  br i1 %.not21, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !14

._crit_edge.loopexit:                             ; preds = %.critedge2
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !183
  %.pre34 = load ptr, ptr %i.e, align 8, !tbaa !183
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %i.ax = phi ptr [ %i.f, %.critedge ], [ %.pre34, %._crit_edge.loopexit ]
  %i.ay = phi ptr [ %i.g, %.critedge ], [ %.pre, %._crit_edge.loopexit ]
  %.1.lcssa = phi i64 [ %.0.lcssa, %.critedge ], [ %.3, %._crit_edge.loopexit ]
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %.1.lcssa ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ax
  br i1 %i.ba, label %_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit, label %_ZSt8_DestroyIPN11StorageBase9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN11StorageBase9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge
  store ptr %i.az, ptr %i.e, align 8, !tbaa !261
  br label %_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit

_ZNSt6vectorIN11StorageBase9my_entityESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EES8_.exit: ; preds = %_ZSt8_DestroyIPN11StorageBase9my_entityES1_EvT_S3_RSaIT0_E.exit.i.i.i, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE4sortIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvT_T0_DpOT1_"(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::reverse_iterator.921", align 8 ; 5 uses
  %2 = alloca %"class.std::reverse_iterator.921", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !157
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !158
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !183, !noalias !1311
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !261
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !185  ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %.pre, %bb.b ], [ %i.i, %bb.c ] ; 4 uses
  %i.o = phi i64 [ %i.e, %bb.b ], [ %i.m, %bb.c ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.idx.i = shl i64 %i.o, 2                       ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %.idx.i ; 6 uses
  %i.r = ptrtoint ptr %i.q to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %"_ZNK4entt8std_sortclIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS8_SaIS8_EEEEETkSt22random_access_iteratorSE_EEvT1_T2_T_DpOT0_.exit.thread.i", label %bb.e

"_ZNK4entt8std_sortclIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS8_SaIS8_EEEEETkSt22random_access_iteratorSE_EEvT1_T2_T_DpOT0_.exit.thread.i": ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %"_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE6sort_nIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit"

bb.e:                                             ; preds = %bb.d
  %i.t = ptrtoint ptr %i.n to i64
  store i64 %i.r, ptr %1, align 8, !tbaa !183
  store i64 %i.t, ptr %2, align 8, !tbaa !183
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = sub nuw nsw i64 126, %i.v
  call fastcc void @"_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_T0_T1_"(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, i64 noundef %i.w)
  %i.x = icmp sgt i64 %i.o, 16
  %.ptr50.i.i.i.i.i = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 5 uses
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i, label %bb.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %bb.h
  %.sroa.07.012.i.idx.i.i.i.i.i = phi i64 [ %.sroa.07.012.i.add.i.i.i.i.i, %bb.h ], [ -4, %bb.e ] ; 3 uses
  %.sroa.07.012.i.ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %i.q, i64 %.sroa.07.012.i.idx.i.i.i.i.i ; 4 uses
  %.sroa.07.012.i.add.i.i.i.i.i = add nsw i64 %.sroa.07.012.i.idx.i.i.i.i.i, -4 ; 3 uses
  %.ptr.i.i.i.i.i = getelementptr inbounds i8, ptr %i.q, i64 %.sroa.07.012.i.add.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i.i = load i32, ptr %.ptr.i.i.i.i.i, align 4, !tbaa !198 ; 5 uses
  %.val1.i.i.i.i.i.i.i = load i32, ptr %.ptr50.i.i.i.i.i, align 4, !tbaa !198
  %i.y = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %gepdiff.i.i.i.i.i = sub nsw i64 0, %.sroa.07.012.i.idx.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.07.012.i.ptr.i.i.i.i.i, i64 %gepdiff.i.i.i.i.i, i1 false), !tbaa !198, !noalias !1312
  store i32 %.val.i.i.i.i.i.i.i, ptr %.ptr50.i.i.i.i.i, align 4, !tbaa !198
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %.val2.i7.i.i.i.i.i.i.i = load i32, ptr %.sroa.07.012.i.ptr.i.i.i.i.i, align 4, !tbaa !198 ; 2 uses
  %i.z = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i.i
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %.val2.i9.i.i.i.i.i.i.i = phi i32 [ %.val2.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.val2.i7.i.i.i.i.i.i.i, %bb.g ]
  %.pn8.i.i.i.i.i.i.i = phi ptr [ %.sroa.02.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.012.i.ptr.i.i.i.i.i, %bb.g ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i.i.i.i.i.i, i64 4 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.pn8.i.i.i.i.i.i.i, i64 -4
  store i32 %.val2.i9.i.i.i.i.i.i.i, ptr %i.aa, align 4, !tbaa !198
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.02.0.i.i.i.i.i.i.i, align 4, !tbaa !198 ; 2 uses
  %i.ab = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !1295

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.g
  %.pre-phi.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.012.i.ptr.i.i.i.i.i, %bb.g ], [ %.sroa.02.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ac = getelementptr inbounds i8, ptr %.pre-phi.i.i.i.i.i.i.i, i64 -4
  store i32 %.val.i.i.i.i.i.i.i, ptr %i.ac, align 4, !tbaa !198
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %bb.f
  %i.ad = icmp eq i64 %.sroa.07.012.i.add.i.i.i.i.i, -64
  br i1 %i.ad, label %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1296

"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i": ; preds = %bb.h
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 -64 ; 4 uses
  %i.af = add i64 %.idx.i, -68                    ; 2 uses
  %i.ag = and i64 %i.af, 4
  %lcmp.mod.not.not = icmp eq i64 %i.ag, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i9.i.i.i.i.i.prol, label %.lr.ph.i9.i.i.i.i.i.prol.loopexit

.lr.ph.i9.i.i.i.i.i.prol:                         ; preds = %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i"
  %i.ah = getelementptr inbounds i8, ptr %i.q, i64 -68 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198 ; 3 uses
  %.val2.i7.i.i10.i.i.i.i.i.prol = load i32, ptr %i.ae, align 4, !tbaa !198 ; 2 uses
  %i.aj = icmp ult i32 %i.ai, %.val2.i7.i.i10.i.i.i.i.i.prol
  br i1 %i.aj, label %.lr.ph.i.i13.i.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.prol"

.lr.ph.i.i13.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i9.i.i.i.i.i.prol, %.lr.ph.i.i13.i.i.i.i.i.prol
  %.val2.i9.i.i14.i.i.i.i.i.prol = phi i32 [ %.val2.i.i.i17.i.i.i.i.i.prol, %.lr.ph.i.i13.i.i.i.i.i.prol ], [ %.val2.i7.i.i10.i.i.i.i.i.prol, %.lr.ph.i9.i.i.i.i.i.prol ]
  %.pn8.i.i15.i.i.i.i.i.prol = phi ptr [ %.sroa.02.0.i.i16.i.i.i.i.i.prol, %.lr.ph.i.i13.i.i.i.i.i.prol ], [ %i.ae, %.lr.ph.i9.i.i.i.i.i.prol ] ; 2 uses
  %.sroa.02.0.i.i16.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.pn8.i.i15.i.i.i.i.i.prol, i64 4 ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %.pn8.i.i15.i.i.i.i.i.prol, i64 -4
  store i32 %.val2.i9.i.i14.i.i.i.i.i.prol, ptr %i.ak, align 4, !tbaa !198
  %.val2.i.i.i17.i.i.i.i.i.prol = load i32, ptr %.sroa.02.0.i.i16.i.i.i.i.i.prol, align 4, !tbaa !198 ; 2 uses
  %i.al = icmp ult i32 %i.ai, %.val2.i.i.i17.i.i.i.i.i.prol
  br i1 %i.al, label %.lr.ph.i.i13.i.i.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.prol", !llvm.loop !1295

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.prol": ; preds = %.lr.ph.i.i13.i.i.i.i.i.prol, %.lr.ph.i9.i.i.i.i.i.prol
  %.pre-phi.i.i12.i.i.i.i.i.prol = phi ptr [ %i.ae, %.lr.ph.i9.i.i.i.i.i.prol ], [ %.sroa.02.0.i.i16.i.i.i.i.i.prol, %.lr.ph.i.i13.i.i.i.i.i.prol ]
  %i.am = getelementptr inbounds i8, ptr %.pre-phi.i.i12.i.i.i.i.i.prol, i64 -4
  store i32 %i.ai, ptr %i.am, align 4, !tbaa !198
  br label %.lr.ph.i9.i.i.i.i.i.prol.loopexit

.lr.ph.i9.i.i.i.i.i.prol.loopexit:                ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.prol", %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i"
  %.sroa.03.04.i.i.i.i.i.i.unr = phi ptr [ %i.ae, %"_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_SG_T0_.exit.i.i.i.i.i" ], [ %i.ah, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.prol" ]
  %i.an = icmp eq i64 %i.af, 0
  br i1 %i.an, label %.lr.ph27.i, label %.lr.ph.i9.i.i.i.i.i

.lr.ph.i9.i.i.i.i.i:                              ; preds = %.lr.ph.i9.i.i.i.i.i.prol.loopexit, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.1"
  %.sroa.03.04.i.i.i.i.i.i = phi ptr [ %i.au, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.1" ], [ %.sroa.03.04.i.i.i.i.i.i.unr, %.lr.ph.i9.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.ao = getelementptr inbounds i8, ptr %.sroa.03.04.i.i.i.i.i.i, i64 -4 ; 4 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !198 ; 3 uses
  %.val2.i7.i.i10.i.i.i.i.i = load i32, ptr %.sroa.03.04.i.i.i.i.i.i, align 4, !tbaa !198 ; 2 uses
  %i.aq = icmp ult i32 %i.ap, %.val2.i7.i.i10.i.i.i.i.i
  br i1 %i.aq, label %.lr.ph.i.i13.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i"

.lr.ph.i.i13.i.i.i.i.i:                           ; preds = %.lr.ph.i9.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i
  %.val2.i9.i.i14.i.i.i.i.i = phi i32 [ %.val2.i.i.i17.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i ], [ %.val2.i7.i.i10.i.i.i.i.i, %.lr.ph.i9.i.i.i.i.i ]
  %.pn8.i.i15.i.i.i.i.i = phi ptr [ %.sroa.02.0.i.i16.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i ], [ %.sroa.03.04.i.i.i.i.i.i, %.lr.ph.i9.i.i.i.i.i ] ; 2 uses
  %.sroa.02.0.i.i16.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i15.i.i.i.i.i, i64 4 ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.pn8.i.i15.i.i.i.i.i, i64 -4
  store i32 %.val2.i9.i.i14.i.i.i.i.i, ptr %i.ar, align 4, !tbaa !198
  %.val2.i.i.i17.i.i.i.i.i = load i32, ptr %.sroa.02.0.i.i16.i.i.i.i.i, align 4, !tbaa !198 ; 2 uses
  %i.as = icmp ult i32 %i.ap, %.val2.i.i.i17.i.i.i.i.i
  br i1 %i.as, label %.lr.ph.i.i13.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i", !llvm.loop !1295

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i": ; preds = %.lr.ph.i.i13.i.i.i.i.i, %.lr.ph.i9.i.i.i.i.i
  %.pre-phi.i.i12.i.i.i.i.i = phi ptr [ %.sroa.03.04.i.i.i.i.i.i, %.lr.ph.i9.i.i.i.i.i ], [ %.sroa.02.0.i.i16.i.i.i.i.i, %.lr.ph.i.i13.i.i.i.i.i ]
  %i.at = getelementptr inbounds i8, ptr %.pre-phi.i.i12.i.i.i.i.i, i64 -4
  store i32 %i.ap, ptr %i.at, align 4, !tbaa !198
  %i.au = getelementptr inbounds i8, ptr %.sroa.03.04.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198 ; 3 uses
  %.val2.i7.i.i10.i.i.i.i.i.1 = load i32, ptr %i.ao, align 4, !tbaa !198 ; 2 uses
  %i.aw = icmp ult i32 %i.av, %.val2.i7.i.i10.i.i.i.i.i.1
  br i1 %i.aw, label %.lr.ph.i.i13.i.i.i.i.i.1, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.1"

.lr.ph.i.i13.i.i.i.i.i.1:                         ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i", %.lr.ph.i.i13.i.i.i.i.i.1
  %.val2.i9.i.i14.i.i.i.i.i.1 = phi i32 [ %.val2.i.i.i17.i.i.i.i.i.1, %.lr.ph.i.i13.i.i.i.i.i.1 ], [ %.val2.i7.i.i10.i.i.i.i.i.1, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i" ]
  %.pn8.i.i15.i.i.i.i.i.1 = phi ptr [ %.sroa.02.0.i.i16.i.i.i.i.i.1, %.lr.ph.i.i13.i.i.i.i.i.1 ], [ %i.ao, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i" ] ; 2 uses
  %.sroa.02.0.i.i16.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.pn8.i.i15.i.i.i.i.i.1, i64 4 ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %.pn8.i.i15.i.i.i.i.i.1, i64 -4
  store i32 %.val2.i9.i.i14.i.i.i.i.i.1, ptr %i.ax, align 4, !tbaa !198
  %.val2.i.i.i17.i.i.i.i.i.1 = load i32, ptr %.sroa.02.0.i.i16.i.i.i.i.i.1, align 4, !tbaa !198 ; 2 uses
  %i.ay = icmp ult i32 %i.av, %.val2.i.i.i17.i.i.i.i.i.1
  br i1 %i.ay, label %.lr.ph.i.i13.i.i.i.i.i.1, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.1", !llvm.loop !1295

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.1": ; preds = %.lr.ph.i.i13.i.i.i.i.i.1, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i"
  %.pre-phi.i.i12.i.i.i.i.i.1 = phi ptr [ %i.ao, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i" ], [ %.sroa.02.0.i.i16.i.i.i.i.i.1, %.lr.ph.i.i13.i.i.i.i.i.1 ]
  %i.az = getelementptr inbounds i8, ptr %.pre-phi.i.i12.i.i.i.i.i.1, i64 -4
  store i32 %i.av, ptr %i.az, align 4, !tbaa !198
  %i.ba = icmp eq ptr %i.au, %i.n
  br i1 %i.ba, label %.lr.ph27.i, label %.lr.ph.i9.i.i.i.i.i, !llvm.loop !1297

bb.i:                                             ; preds = %bb.e
  %i.bb = icmp eq i64 %i.o, 1
  br i1 %i.bb, label %.lr.ph27.i, label %.lr.ph.i19.i.i.i.i.i

.lr.ph.i19.i.i.i.i.i:                             ; preds = %bb.i, %bb.l
  %.sroa.07.012.i20.i.i.i.i.i = phi ptr [ %i.bc, %bb.l ], [ %.ptr50.i.i.i.i.i, %bb.i ] ; 6 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.07.012.i20.i.i.i.i.i, i64 -4 ; 4 uses
  %.val.i.i21.i.i.i.i.i = load i32, ptr %i.bc, align 4, !tbaa !198 ; 5 uses
  %.val1.i.i22.i.i.i.i.i = load i32, ptr %.ptr50.i.i.i.i.i, align 4, !tbaa !198
  %i.bd = icmp ult i32 %.val.i.i21.i.i.i.i.i, %.val1.i.i22.i.i.i.i.i
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i19.i.i.i.i.i
  %i.be = ptrtoint ptr %.sroa.07.012.i20.i.i.i.i.i to i64
  %i.bf = sub i64 %i.r, %i.be                     ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.preheader.i32.i.i.i.i.i, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i31.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i32.i.i.i.i.i:         ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bc, ptr nonnull align 4 %.sroa.07.012.i20.i.i.i.i.i, i64 %i.bf, i1 false), !tbaa !198, !noalias !1313
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i31.i.i.i.i.i

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i31.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.preheader.i32.i.i.i.i.i, %bb.j
  store i32 %.val.i.i21.i.i.i.i.i, ptr %.ptr50.i.i.i.i.i, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i19.i.i.i.i.i
  %.val2.i7.i.i23.i.i.i.i.i = load i32, ptr %.sroa.07.012.i20.i.i.i.i.i, align 4, !tbaa !198 ; 2 uses
  %i.bh = icmp ult i32 %.val.i.i21.i.i.i.i.i, %.val2.i7.i.i23.i.i.i.i.i
  br i1 %i.bh, label %.lr.ph.i.i26.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i24.i.i.i.i.i"

.lr.ph.i.i26.i.i.i.i.i:                           ; preds = %bb.k, %.lr.ph.i.i26.i.i.i.i.i
  %.val2.i9.i.i27.i.i.i.i.i = phi i32 [ %.val2.i.i.i30.i.i.i.i.i, %.lr.ph.i.i26.i.i.i.i.i ], [ %.val2.i7.i.i23.i.i.i.i.i, %bb.k ]
  %.pn8.i.i28.i.i.i.i.i = phi ptr [ %.sroa.02.0.i.i29.i.i.i.i.i, %.lr.ph.i.i26.i.i.i.i.i ], [ %.sroa.07.012.i20.i.i.i.i.i, %bb.k ] ; 2 uses
  %.sroa.02.0.i.i29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn8.i.i28.i.i.i.i.i, i64 4 ; 3 uses
  %i.bi = getelementptr inbounds i8, ptr %.pn8.i.i28.i.i.i.i.i, i64 -4
  store i32 %.val2.i9.i.i27.i.i.i.i.i, ptr %i.bi, align 4, !tbaa !198
  %.val2.i.i.i30.i.i.i.i.i = load i32, ptr %.sroa.02.0.i.i29.i.i.i.i.i, align 4, !tbaa !198 ; 2 uses
  %i.bj = icmp ult i32 %.val.i.i21.i.i.i.i.i, %.val2.i.i.i30.i.i.i.i.i
  br i1 %i.bj, label %.lr.ph.i.i26.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i24.i.i.i.i.i", !llvm.loop !1295

"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i24.i.i.i.i.i": ; preds = %.lr.ph.i.i26.i.i.i.i.i, %bb.k
  %.pre-phi.i.i25.i.i.i.i.i = phi ptr [ %.sroa.07.012.i20.i.i.i.i.i, %bb.k ], [ %.sroa.02.0.i.i29.i.i.i.i.i, %.lr.ph.i.i26.i.i.i.i.i ]
  %i.bk = getelementptr inbounds i8, ptr %.pre-phi.i.i25.i.i.i.i.i, i64 -4
  store i32 %.val.i.i21.i.i.i.i.i, ptr %i.bk, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i24.i.i.i.i.i", %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i31.i.i.i.i.i
  %i.bl = icmp eq ptr %i.bc, %i.n
  br i1 %i.bl, label %.lr.ph27.i, label %.lr.ph.i19.i.i.i.i.i, !llvm.loop !1296

.lr.ph27.i:                                       ; preds = %bb.l, %.lr.ph.i9.i.i.i.i.i.prol.loopexit, %"_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0EEEvT_T0_.exit.i11.i.i.i.i.i.1", %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre.i = load ptr, ptr %i.p, align 8, !tbaa !185
  %.pre31.i = load ptr, ptr %i.bm, align 8, !tbaa !187
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i, %.lr.ph27.i
  %i.bn = phi ptr [ %.pre31.i, %.lr.ph27.i ], [ %i.dj, %._crit_edge.i ] ; 3 uses
  %i.bo = phi ptr [ %.pre.i, %.lr.ph27.i ], [ %i.dk, %._crit_edge.i ] ; 3 uses
  %.026.i = phi i64 [ 0, %.lr.ph27.i ], [ %i.dl, %._crit_edge.i ] ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.026.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !198
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %.not23.i = icmp eq i64 %.026.i, %i.ca
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.cb = phi ptr [ %i.de, %.lr.ph.i ], [ %i.bn, %bb.m ]
  %i.cc = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.bo, %bb.m ] ; 2 uses
  %.01225.i = phi i64 [ %.02124.i, %.lr.ph.i ], [ %.026.i, %bb.m ] ; 3 uses
  %.02124.i = phi i64 [ %i.co, %.lr.ph.i ], [ %i.ca, %bb.m ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.02124.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  %i.cf = and i32 %i.ce, 1048575
  %i.cg = zext nneg i32 %i.cf to i64              ; 2 uses
  %i.ch = lshr i64 %i.cg, 12
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = and i64 %i.cg, 4095
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198
  %i.cn = and i32 %i.cm, 1048575
  %i.co = zext nneg i32 %i.cn to i64              ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.01225.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !198
  %i.cr = load ptr, ptr %0, align 8, !tbaa !131
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  tail call void %i.ct(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %.02124.i, i64 noundef %i.co), !inline_history !1308
  %i.cu = trunc i64 %.01225.i to i32
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !185 ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.01225.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !198
  %i.cy = and i32 %i.cu, 1048575
  %i.cz = and i32 %i.cx, -1048576
  %i.da = or disjoint i32 %i.cz, %i.cy
  %i.db = and i32 %i.cq, 1048575
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = lshr i64 %i.dc, 12
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !187 ; 3 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dd
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !183
  %i.dh = and i64 %i.dc, 4095
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh
  store i32 %i.da, ptr %i.di, align 4, !tbaa !198
  %.not.i = icmp eq i64 %.02124.i, %i.co
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1309

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.m
  %i.dj = phi ptr [ %i.bn, %bb.m ], [ %i.de, %.lr.ph.i ]
  %i.dk = phi ptr [ %i.bo, %bb.m ], [ %i.cv, %.lr.ph.i ]
  %i.dl = add nuw i64 %.026.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dl, %i.o
  br i1 %exitcond.not.i, label %"_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE6sort_nIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit", label %bb.m, !llvm.loop !1310

"_ZN4entt16basic_sparse_setIN11StorageBase9my_entityESaIS2_EE6sort_nIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0NS_8std_sortEJEEEvmT_T0_DpOT1_.exit": ; preds = %._crit_edge.i, %"_ZNK4entt8std_sortclIZN50StorageDeathTest_DISABLED_NonMovableComponent_Test8TestBodyEvE3$_0JETkSt22random_access_iteratorSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS8_SaIS8_EEEEETkSt22random_access_iteratorSE_EEvT1_T2_T_DpOT0_.exit.thread.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestI7StorageNS0_11TemplateSelI37Storage_CanModifyDuringIteration_TestEENS0_5TypesIiJN4test8internal20pointer_stable_mixinINS8_10value_typeIiEEEENS8_32non_trivially_destructible_mixinISB_EENS9_ISE_EEEEEE8RegisterEPKcRKNS0_12CodeLocationESJ_SJ_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !117
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.196) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.197) #30
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !118

.noexc11.i:                                       ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 2 uses
  store ptr %i.h, ptr %10, align 8, !tbaa !121
  store i64 %i.c, ptr %i.a, align 8, !tbaa !122
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.b ] ; 3 uses
  switch i64 %i.c, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %thread-pre-split
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %0, align 1, !tbaa !122     ; 2 uses
  store i8 %i.j, ptr %i.i, align 1, !tbaa !122
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %0, i64 %i.c, i1 false)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge.i.i, %bb.f
  %.pr = load i8, ptr %0, align 1, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.e
  %i.k = phi i8 [ %.pr, %thread-pre-split ], [ %i.j, %bb.e ]
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  store i64 %i.c, ptr %i.l, align 8, !tbaa !123
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.m, align 1, !tbaa !122
  %i.n = icmp ne i8 %i.k, 0                       ; 3 uses
  %i.o = select i1 %i.n, ptr @.str.216, ptr @.str
  call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  %i.p = zext i1 %i.n to i64                      ; 3 uses
  %i.q = load i64, ptr %i.l, align 8, !tbaa !123, !noalias !1324 ; 5 uses
  %i.r = sub i64 9223372036854775807, %i.q
  %i.s = icmp ult i64 %i.r, %i.p
  br i1 %i.s, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit, !llvm.loop !7760

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !7772
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !7773, !noalias !7772
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !7772
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !7774, !noalias !7772
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !7772
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !7775 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !341, !noalias !7775 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !7775
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !7775
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !7775
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 7
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211, !noalias !7775
  %i.at = and i64 %i.ap, 127
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !194, !noalias !7775 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !7775 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !7775
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !7775
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 7
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !211, !noalias !7775
  %i.bm = and i64 %i.bi, 127
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !194, !noalias !7775
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !7769

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !7775 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !7775
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !7775
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !211, !noalias !7775
  %i.ce = and i64 %i.ca, 127
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !194, !noalias !7775
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !7770

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !7775
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !7775
  br label %bb.c, !llvm.loop !7771

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !7759

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !341  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 7
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  %i.y = and i64 %i.u, 127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !194
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 7
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211
  %i.ao = and i64 %i.ak, 127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.ar = icmp slt i32 %i.aa, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !7799
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !211
  %i.ba = and i64 %i.aw, 127
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !194
  %i.bd = and i32 %i.au, 1048575
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 12
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.bi = and i64 %i.be, 4095
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !198
  %i.bl = and i32 %i.bk, 1048575
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = lshr i64 %i.bm, 7
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !211
  %i.bq = and i64 %i.bm, 127
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !194
  %i.bt = icmp slt i32 %i.bc, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !7786

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.b, !llvm.loop !7787

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !341 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 7
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !211
  %i.ct = and i64 %i.cp, 127
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !194
  %i.cw = and i32 %i.cm, 1048575
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = lshr i64 %i.cx, 12
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = and i64 %i.cx, 4095
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !198
  %i.de = and i32 %i.dd, 1048575
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = lshr i64 %i.df, 7
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !211
  %i.dj = and i64 %i.df, 127
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !194
  %i.dm = icmp slt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !7786

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.e, !llvm.loop !7788

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !341 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 7
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !211
  %i.en = and i64 %i.ej, 127
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !194
  %i.eq = and i32 %i.dz, 1048575
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = lshr i64 %i.er, 12
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !183
  %i.ev = and i64 %i.er, 4095
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !198
  %i.ey = and i32 %i.ex, 1048575
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = lshr i64 %i.ez, 7
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !211
  %i.fd = and i64 %i.ez, 127
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !194
  %i.fg = icmp slt i32 %i.ep, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !7800
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 7
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !211
  %i.fs = and i64 %i.fo, 127
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !194
  %i.fv = and i32 %i.fm, 1048575
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !183
  %i.ga = and i64 %i.fw, 4095
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !198
  %i.gd = and i32 %i.gc, 1048575
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = lshr i64 %i.ge, 7
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !211
  %i.gi = and i64 %i.ge, 127
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !194
  %i.gl = icmp slt i32 %i.fu, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !7786

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.j, !llvm.loop !7787

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit, label %bb.c, !llvm.loop !7801

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !341 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211
  %i.am = and i64 %i.ah, 127
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = and i32 %i.w, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 12
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.au = and i64 %i.aq, 4095
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !7802
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7809 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_1
begin_hunk_2_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit, !llvm.loop !7832

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !7844
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !7845, !noalias !7844
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !7844
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !7846, !noalias !7844
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !7844
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !7847 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !350, !noalias !7847 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !7847
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !7847
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !7847
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !352, !noalias !7847
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !354, !noalias !7847 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !7847 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !7847
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !7847
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !352, !noalias !7847
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !354, !noalias !7847
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !7841

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !7847 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !7847
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !7847
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 10
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !352, !noalias !7847
  %i.ce = and i64 %i.ca, 1023
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !354, !noalias !7847
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !7842

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !7847
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !7847
  br label %bb.c, !llvm.loop !7843

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !7831

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !352
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = and i32 %i.k, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = and i64 %i.ab, 4095
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ai = and i32 %i.ah, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352
  %i.an = and i64 %i.aj, 1023
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !354
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !7871
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !352
  %i.ba = and i64 %i.aw, 1023
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = and i32 %i.au, 1048575
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = lshr i64 %i.bd, 12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !183
  %i.bh = and i64 %i.bd, 4095
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !198
  %i.bk = and i32 %i.bj, 1048575
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = lshr i64 %i.bl, 10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !352
  %i.bp = and i64 %i.bl, 1023
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !354
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !354
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !7858

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.b, !llvm.loop !7859

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !350 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !352
  %i.ct = and i64 %i.cp, 1023
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = and i32 %i.cm, 1048575
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !183
  %i.da = and i64 %i.cw, 4095
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !198
  %i.dd = and i32 %i.dc, 1048575
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !352
  %i.di = and i64 %i.de, 1023
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !354
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !354
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !7858

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.e, !llvm.loop !7860

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !350 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 10
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !352
  %i.en = and i64 %i.ej, 1023
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = and i32 %i.dz, 1048575
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = lshr i64 %i.eq, 12
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !183
  %i.eu = and i64 %i.eq, 4095
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !198
  %i.ex = and i32 %i.ew, 1048575
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = lshr i64 %i.ey, 10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !352
  %i.fc = and i64 %i.ey, 1023
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.eo, align 4, !tbaa !354
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !354
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !7872
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 10
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !352
  %i.fs = and i64 %i.fo, 1023
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = and i32 %i.fm, 1048575
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = lshr i64 %i.fv, 12
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !183
  %i.fz = and i64 %i.fv, 4095
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !198
  %i.gc = and i32 %i.gb, 1048575
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = lshr i64 %i.gd, 10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !352
  %i.gh = and i64 %i.gd, 1023
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.ft, align 4, !tbaa !354
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !354
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !7858

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.j, !llvm.loop !7859

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit, label %bb.c, !llvm.loop !7873

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 10
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !350 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352
  %i.am = and i64 %i.ah, 1023
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = and i32 %i.w, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !183
  %i.at = and i64 %i.ap, 4095
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !7874
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !7881 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_2
begin_hunk_3_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !7948
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !361
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !361
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !49

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !7947

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINS1_32non_trivially_destructible_mixinINS1_10value_typeIiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !131
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
end_hunk_3
begin_hunk_4_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SN_SO_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !7999
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !369
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !50

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortOrdered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !7998

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortReverse_TestIiEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortReverse_TestIiEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestI7StorageNS0_11TemplateSelI24Storage_SortReverse_TestEENS0_5TypesIN4test8internal20pointer_stable_mixinINS8_10value_typeIiEEEEJNS8_32non_trivially_destructible_mixinISB_EENS9_ISE_EEEEEE8RegisterEPKcRKNS0_12CodeLocationESJ_SJ_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !117
end_hunk_4
begin_hunk_5_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit, !llvm.loop !8021

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !8033
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !8034, !noalias !8033
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !8033
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !8035, !noalias !8033
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !8033
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !8036 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !341, !noalias !8036 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !8036
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !8036
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !8036
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 7
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211, !noalias !8036
  %i.at = and i64 %i.ap, 127
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !194, !noalias !8036 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !8036 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !8036
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !8036
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 7
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !211, !noalias !8036
  %i.bm = and i64 %i.bi, 127
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !194, !noalias !8036
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !8030

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8036 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !8036
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !8036
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !211, !noalias !8036
  %i.ce = and i64 %i.ca, 127
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !194, !noalias !8036
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !8031

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !8036
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8036
  br label %bb.c, !llvm.loop !8032

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !8020

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !341  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 7
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  %i.y = and i64 %i.u, 127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !194
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 7
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211
  %i.ao = and i64 %i.ak, 127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.ar = icmp slt i32 %i.aa, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !8060
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !211
  %i.ba = and i64 %i.aw, 127
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !194
  %i.bd = and i32 %i.au, 1048575
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 12
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.bi = and i64 %i.be, 4095
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !198
  %i.bl = and i32 %i.bk, 1048575
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = lshr i64 %i.bm, 7
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !211
  %i.bq = and i64 %i.bm, 127
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !194
  %i.bt = icmp slt i32 %i.bc, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !8047

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.b, !llvm.loop !8048

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !341 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 7
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !211
  %i.ct = and i64 %i.cp, 127
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !194
  %i.cw = and i32 %i.cm, 1048575
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = lshr i64 %i.cx, 12
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = and i64 %i.cx, 4095
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !198
  %i.de = and i32 %i.dd, 1048575
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = lshr i64 %i.df, 7
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !211
  %i.dj = and i64 %i.df, 127
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !194
  %i.dm = icmp slt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !8047

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.e, !llvm.loop !8049

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !341 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 7
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !211
  %i.en = and i64 %i.ej, 127
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !194
  %i.eq = and i32 %i.dz, 1048575
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = lshr i64 %i.er, 12
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !183
  %i.ev = and i64 %i.er, 4095
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !198
  %i.ey = and i32 %i.ex, 1048575
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = lshr i64 %i.ez, 7
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !211
  %i.fd = and i64 %i.ez, 127
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !194
  %i.fg = icmp slt i32 %i.ep, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !8061
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 7
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !211
  %i.fs = and i64 %i.fo, 127
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !194
  %i.fv = and i32 %i.fm, 1048575
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !183
  %i.ga = and i64 %i.fw, 4095
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !198
  %i.gd = and i32 %i.gc, 1048575
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = lshr i64 %i.ge, 7
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !211
  %i.gi = and i64 %i.ge, 127
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !194
  %i.gl = icmp slt i32 %i.fu, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !8047

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.j, !llvm.loop !8048

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit, label %bb.c, !llvm.loop !8062

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !341 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211
  %i.am = and i64 %i.ah, 127
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = and i32 %i.w, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 12
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.au = and i64 %i.aq, 4095
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8063
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8070 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_5
begin_hunk_6_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit, !llvm.loop !8093

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !8105
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !8106, !noalias !8105
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !8105
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !8107, !noalias !8105
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !8105
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !8108 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !350, !noalias !8108 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !8108
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !8108
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !8108
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !352, !noalias !8108
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !354, !noalias !8108 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !8108 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !8108
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !8108
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !352, !noalias !8108
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !354, !noalias !8108
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !8102

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8108 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !8108
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !8108
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 10
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !352, !noalias !8108
  %i.ce = and i64 %i.ca, 1023
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !354, !noalias !8108
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !8103

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !8108
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8108
  br label %bb.c, !llvm.loop !8104

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !8092

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !352
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = and i32 %i.k, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = and i64 %i.ab, 4095
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ai = and i32 %i.ah, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352
  %i.an = and i64 %i.aj, 1023
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !354
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !8132
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !352
  %i.ba = and i64 %i.aw, 1023
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = and i32 %i.au, 1048575
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = lshr i64 %i.bd, 12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !183
  %i.bh = and i64 %i.bd, 4095
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !198
  %i.bk = and i32 %i.bj, 1048575
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = lshr i64 %i.bl, 10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !352
  %i.bp = and i64 %i.bl, 1023
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !354
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !354
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !8119

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.b, !llvm.loop !8120

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !350 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !352
  %i.ct = and i64 %i.cp, 1023
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = and i32 %i.cm, 1048575
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !183
  %i.da = and i64 %i.cw, 4095
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !198
  %i.dd = and i32 %i.dc, 1048575
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !352
  %i.di = and i64 %i.de, 1023
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !354
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !354
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !8119

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.e, !llvm.loop !8121

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !350 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 10
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !352
  %i.en = and i64 %i.ej, 1023
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = and i32 %i.dz, 1048575
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = lshr i64 %i.eq, 12
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !183
  %i.eu = and i64 %i.eq, 4095
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !198
  %i.ex = and i32 %i.ew, 1048575
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = lshr i64 %i.ey, 10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !352
  %i.fc = and i64 %i.ey, 1023
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.eo, align 4, !tbaa !354
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !354
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !8133
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 10
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !352
  %i.fs = and i64 %i.fo, 1023
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = and i32 %i.fm, 1048575
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = lshr i64 %i.fv, 12
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !183
  %i.fz = and i64 %i.fv, 4095
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !198
  %i.gc = and i32 %i.gb, 1048575
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = lshr i64 %i.gd, 10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !352
  %i.gh = and i64 %i.gd, 1023
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.ft, align 4, !tbaa !354
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !354
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !8119

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.j, !llvm.loop !8120

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit, label %bb.c, !llvm.loop !8134

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 10
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !350 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352
  %i.am = and i64 %i.ah, 1023
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = and i32 %i.w, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !183
  %i.at = and i64 %i.ap, 4095
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8135
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8142 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_6
begin_hunk_7_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !8209
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !361
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !361
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !51

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !8208

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINS1_32non_trivially_destructible_mixinINS1_10value_typeIiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !131
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
end_hunk_7
begin_hunk_8_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SN_SO_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !8260
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !369
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !52

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN24Storage_SortReverse_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !8259

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI26Storage_SortUnordered_TestIiEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI26Storage_SortUnordered_TestIiEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestI7StorageNS0_11TemplateSelI26Storage_SortUnordered_TestEENS0_5TypesIN4test8internal20pointer_stable_mixinINS8_10value_typeIiEEEEJNS8_32non_trivially_destructible_mixinISB_EENS9_ISE_EEEEEE8RegisterEPKcRKNS0_12CodeLocationESJ_SJ_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !117
end_hunk_8
begin_hunk_9_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit, !llvm.loop !8337

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !8349
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !8350, !noalias !8349
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !8349
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !8351, !noalias !8349
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !8349
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !8352 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !341, !noalias !8352 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !8352
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !8352
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !8352
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 7
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211, !noalias !8352
  %i.at = and i64 %i.ap, 127
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !194, !noalias !8352 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !8352 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !8352
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !8352
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 7
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !211, !noalias !8352
  %i.bm = and i64 %i.bi, 127
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !194, !noalias !8352
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !8346

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8352 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !8352
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !8352
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !211, !noalias !8352
  %i.ce = and i64 %i.ca, 127
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !194, !noalias !8352
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !8347

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !8352
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8352
  br label %bb.c, !llvm.loop !8348

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !8336

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEESF_SF_SF_SG_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !341  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 7
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  %i.y = and i64 %i.u, 127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !194
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 7
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211
  %i.ao = and i64 %i.ak, 127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.ar = icmp slt i32 %i.aa, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !8376
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !211
  %i.ba = and i64 %i.aw, 127
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !194
  %i.bd = and i32 %i.au, 1048575
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 12
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.bi = and i64 %i.be, 4095
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !198
  %i.bl = and i32 %i.bk, 1048575
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = lshr i64 %i.bm, 7
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !211
  %i.bq = and i64 %i.bm, 127
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !194
  %i.bt = icmp slt i32 %i.bc, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !8363

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.b, !llvm.loop !8364

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !341 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 7
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !211
  %i.ct = and i64 %i.cp, 127
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !194
  %i.cw = and i32 %i.cm, 1048575
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = lshr i64 %i.cx, 12
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = and i64 %i.cx, 4095
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !198
  %i.de = and i32 %i.dd, 1048575
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = lshr i64 %i.df, 7
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !211
  %i.dj = and i64 %i.df, 127
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !194
  %i.dm = icmp slt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !8363

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.e, !llvm.loop !8365

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !341 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 7
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !211
  %i.en = and i64 %i.ej, 127
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !194
  %i.eq = and i32 %i.dz, 1048575
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = lshr i64 %i.er, 12
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !183
  %i.ev = and i64 %i.er, 4095
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !198
  %i.ey = and i32 %i.ex, 1048575
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = lshr i64 %i.ez, 7
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !211
  %i.fd = and i64 %i.ez, 127
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !194
  %i.fg = icmp slt i32 %i.ep, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !8377
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 7
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !211
  %i.fs = and i64 %i.fo, 127
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !194
  %i.fv = and i32 %i.fm, 1048575
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !183
  %i.ga = and i64 %i.fw, 4095
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !198
  %i.gd = and i32 %i.gc, 1048575
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = lshr i64 %i.ge, 7
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !211
  %i.gi = and i64 %i.ge, 127
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !194
  %i.gl = icmp slt i32 %i.fu, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !8363

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit, label %bb.j, !llvm.loop !8364

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit, label %bb.c, !llvm.loop !8378

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SF_RSG_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !341 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211
  %i.am = and i64 %i.ah, 127
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = and i32 %i.w, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 12
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.au = and i64 %i.aq, 4095
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8379
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIiE8TestBodyEvEUlT_T0_E_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8386 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_9
begin_hunk_10_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit, !llvm.loop !8464

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !8476
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !8477, !noalias !8476
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !8476
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !8478, !noalias !8476
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !8476
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !8479 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !350, !noalias !8479 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !8479
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !8479
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !8479
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !352, !noalias !8479
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !354, !noalias !8479 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !8479 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !8479
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !8479
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !352, !noalias !8479
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !354, !noalias !8479
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !8473

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8479 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !8479
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !8479
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 10
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !352, !noalias !8479
  %i.ce = and i64 %i.ca, 1023
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !354, !noalias !8479
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !8474

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !8479
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8479
  br label %bb.c, !llvm.loop !8475

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !8463

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEESL_SL_SL_SM_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !352
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = and i32 %i.k, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = and i64 %i.ab, 4095
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ai = and i32 %i.ah, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352
  %i.an = and i64 %i.aj, 1023
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !354
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !8503
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !352
  %i.ba = and i64 %i.aw, 1023
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = and i32 %i.au, 1048575
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = lshr i64 %i.bd, 12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !183
  %i.bh = and i64 %i.bd, 4095
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !198
  %i.bk = and i32 %i.bj, 1048575
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = lshr i64 %i.bl, 10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !352
  %i.bp = and i64 %i.bl, 1023
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !354
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !354
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !8490

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.b, !llvm.loop !8491

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !350 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !352
  %i.ct = and i64 %i.cp, 1023
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = and i32 %i.cm, 1048575
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !183
  %i.da = and i64 %i.cw, 4095
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !198
  %i.dd = and i32 %i.dc, 1048575
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !352
  %i.di = and i64 %i.de, 1023
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !354
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !354
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !8490

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.e, !llvm.loop !8492

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !350 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 10
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !352
  %i.en = and i64 %i.ej, 1023
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = and i32 %i.dz, 1048575
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = lshr i64 %i.eq, 12
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !183
  %i.eu = and i64 %i.eq, 4095
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !198
  %i.ex = and i32 %i.ew, 1048575
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = lshr i64 %i.ey, 10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !352
  %i.fc = and i64 %i.ey, 1023
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.eo, align 4, !tbaa !354
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !354
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !8504
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 10
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !352
  %i.fs = and i64 %i.fo, 1023
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = and i32 %i.fm, 1048575
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = lshr i64 %i.fv, 12
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !183
  %i.fz = and i64 %i.fv, 4095
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !198
  %i.gc = and i32 %i.gb, 1048575
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = lshr i64 %i.gd, 10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !352
  %i.gh = and i64 %i.gd, 1023
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.ft, align 4, !tbaa !354
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !354
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !8490

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit, label %bb.j, !llvm.loop !8491

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit, label %bb.c, !llvm.loop !8505

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_RSM_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 10
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !350 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352
  %i.am = and i64 %i.ah, 1023
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = and i32 %i.w, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !183
  %i.at = and i64 %i.ap, 4095
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8506
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8513 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_10
begin_hunk_11_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SL_SL_SM_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !8635
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !361
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !361
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !53

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E_EEEvSL_SM_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !8634

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINS1_32non_trivially_destructible_mixinINS1_10value_typeIiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !131
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SN_SN_SO_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !8741
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !369
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !54

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN26Storage_SortUnordered_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E_EEEvSN_SO_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !8740

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI18Storage_SortN_TestIiEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI18Storage_SortN_TestIiEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestI7StorageNS0_11TemplateSelI18Storage_SortN_TestEENS0_5TypesIN4test8internal20pointer_stable_mixinINS8_10value_typeIiEEEEJNS8_32non_trivially_destructible_mixinISB_EENS9_ISE_EEEEEE8RegisterEPKcRKNS0_12CodeLocationESJ_SJ_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !117
end_hunk_12
begin_hunk_13_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SF_SG_.exit, !llvm.loop !8828

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SF_SG_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !8840
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !8841, !noalias !8840
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !8840
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !8842, !noalias !8840
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !8840
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !8843 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !341, !noalias !8843 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !8843
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !8843
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !8843
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 7
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211, !noalias !8843
  %i.at = and i64 %i.ap, 127
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !194, !noalias !8843 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !8843 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !8843
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !8843
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 7
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !211, !noalias !8843
  %i.bm = and i64 %i.bi, 127
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !194, !noalias !8843
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !8837

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8843 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !8843
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !8843
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !211, !noalias !8843
  %i.ce = and i64 %i.ca, 127
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !194, !noalias !8843
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !8838

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEESF_SF_SF_SG_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !8843
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8843
  br label %bb.c, !llvm.loop !8839

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEESF_SF_SF_SG_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !8827

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEESF_SF_SF_SG_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !341  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 7
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  %i.y = and i64 %i.u, 127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !194
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 7
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211
  %i.ao = and i64 %i.ak, 127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.ar = icmp slt i32 %i.aa, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !8867
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !211
  %i.ba = and i64 %i.aw, 127
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !194
  %i.bd = and i32 %i.au, 1048575
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 12
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.bi = and i64 %i.be, 4095
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !198
  %i.bl = and i32 %i.bk, 1048575
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = lshr i64 %i.bm, 7
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !211
  %i.bq = and i64 %i.bm, 127
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !194
  %i.bt = icmp slt i32 %i.bc, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !8854

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit, label %bb.b, !llvm.loop !8855

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !341 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 7
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !211
  %i.ct = and i64 %i.cp, 127
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !194
  %i.cw = and i32 %i.cm, 1048575
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = lshr i64 %i.cx, 12
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = and i64 %i.cx, 4095
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !198
  %i.de = and i32 %i.dd, 1048575
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = lshr i64 %i.df, 7
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !211
  %i.dj = and i64 %i.df, 127
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !194
  %i.dm = icmp slt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !8854

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit, label %bb.e, !llvm.loop !8856

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !341 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 7
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !211
  %i.en = and i64 %i.ej, 127
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !194
  %i.eq = and i32 %i.dz, 1048575
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = lshr i64 %i.er, 12
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !183
  %i.ev = and i64 %i.er, 4095
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !198
  %i.ey = and i32 %i.ex, 1048575
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = lshr i64 %i.ez, 7
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !211
  %i.fd = and i64 %i.ez, 127
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !194
  %i.fg = icmp slt i32 %i.ep, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !8868
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 7
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !211
  %i.fs = and i64 %i.fo, 127
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !194
  %i.fv = and i32 %i.fm, 1048575
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !183
  %i.ga = and i64 %i.fw, 4095
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !198
  %i.gd = and i32 %i.gc, 1048575
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = lshr i64 %i.ge, 7
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !211
  %i.gi = and i64 %i.ge, 127
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !194
  %i.gl = icmp slt i32 %i.fu, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !8854

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit, label %bb.j, !llvm.loop !8855

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit.loopexit, label %bb.c, !llvm.loop !8869

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SF_RSG_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !341 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211
  %i.am = and i64 %i.ah, 127
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = and i32 %i.w, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 12
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.au = and i64 %i.aq, 4095
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8870
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E0_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8877 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_13
begin_hunk_14_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SG_.exit, !llvm.loop !8880

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SG_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !8892
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !8893, !noalias !8892
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !8892
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !8894, !noalias !8892
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SF_SG_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !8892
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !8895 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !341, !noalias !8895 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !8895
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !8895
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !8895
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 7
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !211, !noalias !8895
  %i.at = and i64 %i.ap, 127
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !194, !noalias !8895 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !8895 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !8895
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !8895
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 7
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !211, !noalias !8895
  %i.bm = and i64 %i.bi, 127
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !194, !noalias !8895
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !8889

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8895 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !8895
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !8895
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 7
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !211, !noalias !8895
  %i.ce = and i64 %i.ca, 127
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !194, !noalias !8895
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !8890

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEESF_SF_SF_SG_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !8895
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !8895
  br label %bb.c, !llvm.loop !8891

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEESF_SF_SF_SG_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !8879

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEESF_SF_SF_SG_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !341  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 7
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !211
  %i.y = and i64 %i.u, 127
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !194
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 7
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !211
  %i.ao = and i64 %i.ak, 127
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !194
  %i.ar = icmp slt i32 %i.aa, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !8919
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 7
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !211
  %i.ba = and i64 %i.aw, 127
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !194
  %i.bd = and i32 %i.au, 1048575
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 12
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.bi = and i64 %i.be, 4095
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !198
  %i.bl = and i32 %i.bk, 1048575
  %i.bm = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.bn = lshr i64 %i.bm, 7
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bn
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !211
  %i.bq = and i64 %i.bm, 127
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !194
  %i.bt = icmp slt i32 %i.bc, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !8906

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit, label %bb.b, !llvm.loop !8907

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !341 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 7
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !211
  %i.ct = and i64 %i.cp, 127
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !194
  %i.cw = and i32 %i.cm, 1048575
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = lshr i64 %i.cx, 12
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !183
  %i.db = and i64 %i.cx, 4095
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !198
  %i.de = and i32 %i.dd, 1048575
  %i.df = zext nneg i32 %i.de to i64              ; 2 uses
  %i.dg = lshr i64 %i.df, 7
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !211
  %i.dj = and i64 %i.df, 127
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !194
  %i.dm = icmp slt i32 %i.cv, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !8906

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit, label %bb.e, !llvm.loop !8908

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !341 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 7
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !211
  %i.en = and i64 %i.ej, 127
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !194
  %i.eq = and i32 %i.dz, 1048575
  %i.er = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.es = lshr i64 %i.er, 12
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !183
  %i.ev = and i64 %i.er, 4095
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !198
  %i.ey = and i32 %i.ex, 1048575
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = lshr i64 %i.ez, 7
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !211
  %i.fd = and i64 %i.ez, 127
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !194
  %i.fg = icmp slt i32 %i.ep, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !8920
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 7
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !211
  %i.fs = and i64 %i.fo, 127
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !194
  %i.fv = and i32 %i.fm, 1048575
  %i.fw = zext nneg i32 %i.fv to i64              ; 2 uses
  %i.fx = lshr i64 %i.fw, 12
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fx
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !183
  %i.ga = and i64 %i.fw, 4095
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !198
  %i.gd = and i32 %i.gc, 1048575
  %i.ge = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gf = lshr i64 %i.ge, 7
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !211
  %i.gi = and i64 %i.ge, 127
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !194
  %i.gl = icmp slt i32 %i.fu, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !8906

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit, label %bb.j, !llvm.loop !8907

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SG_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_SF_SG_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit.loopexit, label %bb.c, !llvm.loop !8921

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SF_RSG_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 7
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !341 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211
  %i.am = and i64 %i.ah, 127
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !194
  %i.ap = and i32 %i.w, 1048575
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = lshr i64 %i.aq, 12
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !183
  %i.au = and i64 %i.aq, 4095
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !198
  %i.ax = and i32 %i.aw, 1048575
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !211
  %i.bc = and i64 %i.ay, 127
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !194
  %i.bf = icmp slt i32 %i.ao, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !8922
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIiE8TestBodyEvEUlT_T0_E1_EEEvSF_SG_SG_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !8929 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !341  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_14
begin_hunk_15_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SM_.exit, !llvm.loop !9017

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SM_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !9029
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !9030, !noalias !9029
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !9029
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !9031, !noalias !9029
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !9029
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !9032 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !350, !noalias !9032 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !9032
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !9032
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !9032
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !352, !noalias !9032
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !354, !noalias !9032 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !9032 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !9032
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !9032
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !352, !noalias !9032
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !354, !noalias !9032
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !9026

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !9032 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !9032
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !9032
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 10
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !352, !noalias !9032
  %i.ce = and i64 %i.ca, 1023
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !354, !noalias !9032
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !9027

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEESL_SL_SL_SM_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !9032
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !9032
  br label %bb.c, !llvm.loop !9028

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEESL_SL_SL_SM_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !9016

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEESL_SL_SL_SM_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !352
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = and i32 %i.k, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = and i64 %i.ab, 4095
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ai = and i32 %i.ah, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352
  %i.an = and i64 %i.aj, 1023
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !354
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !9056
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !352
  %i.ba = and i64 %i.aw, 1023
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = and i32 %i.au, 1048575
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = lshr i64 %i.bd, 12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !183
  %i.bh = and i64 %i.bd, 4095
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !198
  %i.bk = and i32 %i.bj, 1048575
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = lshr i64 %i.bl, 10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !352
  %i.bp = and i64 %i.bl, 1023
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !354
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !354
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !9043

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit, label %bb.b, !llvm.loop !9044

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !350 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !352
  %i.ct = and i64 %i.cp, 1023
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = and i32 %i.cm, 1048575
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !183
  %i.da = and i64 %i.cw, 4095
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !198
  %i.dd = and i32 %i.dc, 1048575
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !352
  %i.di = and i64 %i.de, 1023
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !354
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !354
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !9043

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit, label %bb.e, !llvm.loop !9045

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !350 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 10
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !352
  %i.en = and i64 %i.ej, 1023
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = and i32 %i.dz, 1048575
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = lshr i64 %i.eq, 12
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !183
  %i.eu = and i64 %i.eq, 4095
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !198
  %i.ex = and i32 %i.ew, 1048575
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = lshr i64 %i.ey, 10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !352
  %i.fc = and i64 %i.ey, 1023
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.eo, align 4, !tbaa !354
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !354
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !9057
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 10
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !352
  %i.fs = and i64 %i.fo, 1023
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = and i32 %i.fm, 1048575
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = lshr i64 %i.fv, 12
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !183
  %i.fz = and i64 %i.fv, 4095
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !198
  %i.gc = and i32 %i.gb, 1048575
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = lshr i64 %i.gd, 10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !352
  %i.gh = and i64 %i.gd, 1023
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.ft, align 4, !tbaa !354
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !354
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !9043

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit, label %bb.j, !llvm.loop !9044

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit.loopexit, label %bb.c, !llvm.loop !9058

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_RSM_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 10
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !350 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352
  %i.am = and i64 %i.ah, 1023
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = and i32 %i.w, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !183
  %i.at = and i64 %i.ap, 4095
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9059
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9066 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_15
begin_hunk_16_@_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_T1_:bb.a
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_.exit, !llvm.loop !9069

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.ci, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.cl, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cj, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !9081
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !9082, !noalias !9081
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !9081
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !9083, !noalias !9081
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !9081
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !9084 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !350, !noalias !9084 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ax, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !9084
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !9084
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !9084
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !352, !noalias !9084
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !354, !noalias !9084 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.aw = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ax, %bb.d ] ; 3 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198, !noalias !9084 ; 2 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183, !noalias !9084
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198, !noalias !9084
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !352, !noalias !9084
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !354, !noalias !9084
  %i.bp = icmp slt i32 %i.bo, %i.av
  br i1 %i.bp, label %bb.d, label %.preheader.i.i, !llvm.loop !9078

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.pn.i.i = phi ptr [ %storemerge.i.i, %.preheader.i.i ], [ %.sroa.04.0.i, %bb.d ] ; 3 uses
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 4 ; 3 uses
  %i.bq = load i32, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !9084 ; 2 uses
  %i.br = and i32 %i.bq, 1048575
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = lshr i64 %i.bs, 12
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bt
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !183, !noalias !9084
  %i.bw = and i64 %i.bs, 4095
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !198, !noalias !9084
  %i.bz = and i32 %i.by, 1048575
  %i.ca = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.cb = lshr i64 %i.ca, 10
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !352, !noalias !9084
  %i.ce = and i64 %i.ca, 1023
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !354, !noalias !9084
  %i.ch = icmp slt i32 %i.av, %i.cg
  br i1 %i.ch, label %.preheader.i.i, label %bb.e, !llvm.loop !9079

bb.e:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %storemerge.i.i, %i.aw
  br i1 %.not.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEESL_SL_SL_SM_.exit

bb.f:                                             ; preds = %bb.e
  store i32 %i.bq, ptr %i.ax, align 4, !tbaa !198, !noalias !9084
  store i32 %i.ay, ptr %.pn.i.i, align 4, !tbaa !198, !noalias !9084
  br label %bb.c, !llvm.loop !9080

_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEESL_SL_SL_SM_.exit: ; preds = %bb.e
  %i.ci = add nsw i64 %.01938, -1                 ; 3 uses
  %i.cj = ptrtoint ptr %i.aw to i64               ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store i64 %i.cj, ptr %12, align 8, !tbaa !183
  %i.ck = load i64, ptr %1, align 8, !tbaa !183
  store i64 %i.ck, ptr %13, align 8, !tbaa !183
  call void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_T1_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %13, i64 noundef %i.ci, ptr %3)
  store i64 %i.cj, ptr %1, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8
  %i.cl = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.cm = sub i64 %i.cl, %i.cj
  %i.cn = icmp sgt i64 %i.cm, 64
  br i1 %i.cn, label %bb.b, label %.loopexit, !llvm.loop !9068

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEESL_SL_SL_SM_.exit, %bb.a, %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 7 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8 ; 6 uses
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 2 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -64 ; 2 uses
  %.ptr38 = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !350  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.010.016.i.idx = phi i64 [ -4, %.lr.ph.i ], [ %.sroa.010.016.i.add, %bb.d ] ; 3 uses
  %.sroa.010.016.i.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.idx ; 2 uses
  %.sroa.010.016.i.add = add nsw i64 %.sroa.010.016.i.idx, -4 ; 3 uses
  %.ptr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.010.016.i.add ; 2 uses
  %i.j = load i32, ptr %.ptr, align 4, !tbaa !198 ; 3 uses
  %i.k = load i32, ptr %.ptr38, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !352
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = and i32 %i.k, 1048575
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = lshr i64 %i.ab, 12
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = and i64 %i.ab, 4095
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !198
  %i.ai = and i32 %i.ah, 1048575
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = lshr i64 %i.aj, 10
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !352
  %i.an = and i64 %i.aj, 1023
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i32, ptr %i.z, align 4, !tbaa !354
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !354
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.preheader.i, label %.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.b
  %gepdiff = sub nsw i64 0, %.sroa.010.016.i.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.ptr, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.010.016.i.ptr, i64 %gepdiff, i1 false), !tbaa !198, !noalias !9108
  store i32 %i.j, ptr %.ptr38, align 4, !tbaa !198
  br label %bb.d

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.as = phi i32 [ %.pre.i, %bb.c ], [ %i.s, %bb.b ]
  %i.at = phi ptr [ %.sroa.01.0.i.i, %bb.c ], [ %.sroa.010.016.i.ptr, %bb.b ] ; 4 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !198 ; 2 uses
  %i.av = and i32 %i.as, 1048575
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = lshr i64 %i.aw, 10
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ax
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !352
  %i.ba = and i64 %i.aw, 1023
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ba
  %i.bc = and i32 %i.au, 1048575
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = lshr i64 %i.bd, 12
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !183
  %i.bh = and i64 %i.bd, 4095
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !198
  %i.bk = and i32 %i.bj, 1048575
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = lshr i64 %i.bl, 10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !352
  %i.bp = and i64 %i.bl, 1023
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !354
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !354
  %i.bt = icmp slt i32 %i.br, %i.bs
  br i1 %i.bt, label %bb.c, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i

bb.c:                                             ; preds = %.preheader.i
  %.sroa.01.0.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.bu = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.au, ptr %i.bu, align 4, !tbaa !198
  %.pre.i = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader.i, !llvm.loop !9095

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i: ; preds = %.preheader.i
  %i.bv = getelementptr inbounds i8, ptr %i.at, i64 -4
  store i32 %i.j, ptr %i.bv, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i, %.lr.ph.i.i.i.i.i.preheader.i
  %i.bw = icmp eq i64 %.sroa.010.016.i.add, -64
  br i1 %i.bw, label %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit, label %bb.b, !llvm.loop !9096

_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit: ; preds = %bb.d
  %i.bx = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !187 ; 2 uses
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !350 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i6, %.lr.ph.i5
  %.sroa.03.04.i = phi ptr [ %i.e, %.lr.ph.i5 ], [ %i.cc, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i6 ] ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %.sroa.03.04.i, i64 -4 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !198 ; 2 uses
  %i.ce = and i32 %i.cd, 1048575
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cg = lshr i64 %i.cf, 12
  %i.ch = and i64 %i.cf, 4095
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !183
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.ch
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.cl = phi ptr [ %.sroa.03.04.i, %bb.e ], [ %.sroa.01.0.i.i7, %bb.g ] ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !198 ; 2 uses
  %i.cn = load i32, ptr %i.ck, align 4, !tbaa !198
  %i.co = and i32 %i.cn, 1048575
  %i.cp = zext nneg i32 %i.co to i64              ; 2 uses
  %i.cq = lshr i64 %i.cp, 10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !352
  %i.ct = and i64 %i.cp, 1023
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = and i32 %i.cm, 1048575
  %i.cw = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cx = lshr i64 %i.cw, 12
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !183
  %i.da = and i64 %i.cw, 4095
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !198
  %i.dd = and i32 %i.dc, 1048575
  %i.de = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.df = lshr i64 %i.de, 10
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.df
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !352
  %i.di = and i64 %i.de, 1023
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.cu, align 4, !tbaa !354
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !354
  %i.dm = icmp slt i32 %i.dk, %i.dl
  br i1 %i.dm, label %bb.g, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i6

bb.g:                                             ; preds = %bb.f
  %.sroa.01.0.i.i7 = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.dn = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cm, ptr %i.dn, align 4, !tbaa !198
  br label %bb.f, !llvm.loop !9095

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i6: ; preds = %bb.f
  %i.do = getelementptr inbounds i8, ptr %i.cl, i64 -4
  store i32 %i.cd, ptr %i.do, align 4, !tbaa !198
  %i.dp = icmp eq ptr %i.cc, %.sroa.0.0.copyload.i2.i
  br i1 %i.dp, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit, label %bb.e, !llvm.loop !9097

bb.h:                                             ; preds = %bb.a
  %i.dq = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.dq, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dr = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, %.sroa.0.0.copyload.i2.i
  br i1 %i.ds, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %bb.i
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !350 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i10
  %.sroa.010.016.i11 = phi ptr [ %i.dr, %.lr.ph.i10 ], [ %i.dx, %bb.m ] ; 4 uses
  %i.dx = getelementptr inbounds i8, ptr %.sroa.010.016.i11, i64 -4 ; 4 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !198 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !198
  %i.ea = and i32 %i.dy, 1048575
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = lshr i64 %i.eb, 12
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !183
  %i.ef = and i64 %i.eb, 4095
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !198 ; 2 uses
  %i.ei = and i32 %i.eh, 1048575
  %i.ej = zext nneg i32 %i.ei to i64              ; 2 uses
  %i.ek = lshr i64 %i.ej, 10
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !352
  %i.en = and i64 %i.ej, 1023
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.en
  %i.ep = and i32 %i.dz, 1048575
  %i.eq = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.er = lshr i64 %i.eq, 12
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !183
  %i.eu = and i64 %i.eq, 4095
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !198
  %i.ex = and i32 %i.ew, 1048575
  %i.ey = zext nneg i32 %i.ex to i64              ; 2 uses
  %i.ez = lshr i64 %i.ey, 10
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !352
  %i.fc = and i64 %i.ey, 1023
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load i32, ptr %i.eo, align 4, !tbaa !354
  %i.ff = load i32, ptr %i.fd, align 4, !tbaa !354
  %i.fg = icmp slt i32 %i.fe, %i.ff
  br i1 %i.fg, label %bb.k, label %.preheader.i12

bb.k:                                             ; preds = %bb.j
  %i.fh = ptrtoint ptr %.sroa.010.016.i11 to i64
  %i.fi = sub i64 %i.a, %i.fh                     ; 2 uses
  %i.fj = icmp sgt i64 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader.i17, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

.lr.ph.i.i.i.i.i.preheader.i17:                   ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dx, ptr nonnull align 4 %.sroa.010.016.i11, i64 %i.fi, i1 false), !tbaa !198, !noalias !9109
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16: ; preds = %.lr.ph.i.i.i.i.i.preheader.i17, %bb.k
  store i32 %i.dy, ptr %i.dr, align 4, !tbaa !198
  br label %bb.m

.preheader.i12:                                   ; preds = %bb.j, %bb.l
  %i.fk = phi i32 [ %.pre.i15, %bb.l ], [ %i.eh, %bb.j ]
  %i.fl = phi ptr [ %.sroa.01.0.i.i14, %bb.l ], [ %.sroa.010.016.i11, %bb.j ] ; 4 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !198 ; 2 uses
  %i.fn = and i32 %i.fk, 1048575
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = lshr i64 %i.fo, 10
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fp
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !352
  %i.fs = and i64 %i.fo, 1023
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = and i32 %i.fm, 1048575
  %i.fv = zext nneg i32 %i.fu to i64              ; 2 uses
  %i.fw = lshr i64 %i.fv, 12
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !183
  %i.fz = and i64 %i.fv, 4095
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !198
  %i.gc = and i32 %i.gb, 1048575
  %i.gd = zext nneg i32 %i.gc to i64              ; 2 uses
  %i.ge = lshr i64 %i.gd, 10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ge
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !352
  %i.gh = and i64 %i.gd, 1023
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = load i32, ptr %i.ft, align 4, !tbaa !354
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !354
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %bb.l, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i13

bb.l:                                             ; preds = %.preheader.i12
  %.sroa.01.0.i.i14 = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.gm = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.fm, ptr %i.gm, align 4, !tbaa !198
  %.pre.i15 = load i32, ptr %i.eg, align 4, !tbaa !198
  br label %.preheader.i12, !llvm.loop !9095

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i13: ; preds = %.preheader.i12
  %i.gn = getelementptr inbounds i8, ptr %i.fl, i64 -4
  store i32 %i.dy, ptr %i.gn, align 4, !tbaa !198
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i13, %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit.i16
  %i.go = icmp eq ptr %i.dx, %.sroa.0.0.copyload.i2.i
  br i1 %i.go, label %_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit, label %bb.j, !llvm.loop !9096

_ZSt26__unguarded_insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit: ; preds = %bb.m, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit.i6, %bb.i, %bb.h, %_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !183    ; 3 uses
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %1, align 8, !tbaa !183    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.d = sub i64 %i.a, %i.c
  %i.e = ashr exact i64 %i.d, 2                   ; 3 uses
  %i.f = icmp slt i64 %i.e, 2
  br i1 %i.f, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -2
  %i.h = lshr i64 %i.g, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.08.i = phi i64 [ %i.h, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.i = sub i64 0, %.08.i
  %i.j = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !198
  store i64 %i.a, ptr %5, align 8, !tbaa !183
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, i64 noundef %.08.i, i64 noundef %i.e, i32 noundef %i.l, ptr %3)
  %.not.i = icmp eq i64 %.08.i, 0
  %i.m = add nsw i64 %.08.i, -1
  br i1 %.not.i, label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit.loopexit, label %bb.c, !llvm.loop !9110

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit.loopexit: ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8, !tbaa !183
  br label %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit

_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit: ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit.loopexit, %bb.a
  %i.n = phi i64 [ %.pre, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit.loopexit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %.sroa.0.0.copyload.i.i13 = load ptr, ptr %2, align 8, !tbaa !183 ; 2 uses
  %.not14 = icmp ult ptr %.sroa.0.0.copyload.i.i13, %i.o
  br i1 %.not14, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.pre17 = load i64, ptr %0, align 8, !tbaa !183
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f, %_ZSt11__make_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_RSM_.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.0.0.copyload.i.i18 = phi ptr [ %.sroa.0.0.copyload.i.i13, %.lr.ph ], [ %.sroa.0.0.copyload.i.i, %bb.f ]
  %i.r = phi i64 [ %.pre17, %.lr.ph ], [ %i.bk, %bb.f ] ; 4 uses
  %.sroa.08.015 = phi ptr [ %i.o, %.lr.ph ], [ %i.s, %bb.f ]
  %i.s = getelementptr inbounds i8, ptr %.sroa.08.015, i64 -4 ; 4 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !198  ; 2 uses
  %i.u = inttoptr i64 %i.r to ptr
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !198
  %i.x = and i32 %i.t, 1048575
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = lshr i64 %i.y, 12
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !187 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = and i64 %i.y, 4095
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !198
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 10
  %i.aj = load ptr, ptr %i.q, align 8, !tbaa !350 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !352
  %i.am = and i64 %i.ah, 1023
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = and i32 %i.w, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 12
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !183
  %i.at = and i64 %i.ap, 4095
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !198
  %i.aw = and i32 %i.av, 1048575
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.ax, 10
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !352
  %i.bb = and i64 %i.ax, 1023
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load i32, ptr %i.an, align 4, !tbaa !354
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !354
  %i.bf = icmp slt i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bg = load i64, ptr %1, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.bh = load i32, ptr %i.v, align 4, !tbaa !198
  store i32 %i.bh, ptr %i.s, align 4, !tbaa !198
  store i64 %i.r, ptr %4, align 8, !tbaa !183
  %i.bi = sub i64 %i.r, %i.bg
  %i.bj = ashr exact i64 %i.bi, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, i64 noundef 0, i64 noundef %i.bj, i32 noundef %i.t, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.pre16 = load i64, ptr %0, align 8, !tbaa !183
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %2, align 8, !tbaa !183
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0.copyload.i.i = phi ptr [ %.sroa.0.0.copyload.i.i18, %bb.d ], [ %.sroa.0.0.copyload.i.i.pre, %bb.e ] ; 2 uses
  %i.bk = phi i64 [ %i.r, %bb.d ], [ %.pre16, %bb.e ]
  %.not = icmp ult ptr %.sroa.0.0.copyload.i.i, %i.s
  br i1 %.not, label %bb.d, label %._crit_edge, !llvm.loop !9111
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !453, !noalias !9118 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !350  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.i = shl i64 %.031, 1                         ; 4 uses
  %i.j = add i64 %i.i, 2
  %i.k = sub nuw nsw i64 -2, %i.i
  %i.l = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.k
  %i.m = or disjoint i64 %i.i, 1
  %i.n = xor i64 %i.i, -1
end_hunk_16
begin_hunk_17_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SL_SL_SM_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !9250
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !361
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !361
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !55

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E0_EEEvSL_SM_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !9249

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_T1_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %9 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %10 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %11 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %12 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i18 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i17 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i18 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEESL_SL_SL_SM_.exit
  %i.h = icmp eq i64 %i.cl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph39, !llvm.loop !9251

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa36 = phi i64 [ %i.b, %.lr.ph ], [ %i.cm, %bb.b ] ; 4 uses
  %.lcssa34 = phi i64 [ %i.a, %.lr.ph ], [ %i.co, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.lcssa34, ptr %9, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %10, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %11, align 8, !tbaa !183
  call void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr %3)
  %i.i = sub i64 %.lcssa34, %.lcssa36
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph.i.preheader.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_.exit

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge
  %i.k = inttoptr i64 %.lcssa36 to ptr
  %i.l = inttoptr i64 %.lcssa34 to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.o = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198
  %i.p = load i32, ptr %i.m, align 4, !tbaa !198
  store i32 %i.p, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198
  store i64 %.lcssa34, ptr %8, align 8, !tbaa !183
  %i.q = sub i64 %.lcssa34, %.cast.i.i            ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_SM_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_.exit, !llvm.loop !9252

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SM_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.cl, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.co, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cm, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !9264
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !9265, !noalias !9264
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !9264
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !9266, !noalias !9264
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SL_SM_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !9264
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !9267 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !359, !noalias !9267 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ay, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !9267
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !9267
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !9267
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !361, !noalias !9267
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !354, !noalias !9267 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.ax = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ay, %bb.d ] ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198, !noalias !9267 ; 2 uses
  %i.ba = and i32 %i.az, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 12
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !183, !noalias !9267
  %i.bf = and i64 %i.bb, 4095
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !198, !noalias !9267
  %i.bi = and i32 %i.bh, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 10
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !361, !noalias !9267
  %i.bn = and i64 %i.bj, 1023
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bn
end_hunk_17
begin_hunk_18_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SL_SL_SM_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !359  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !361
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !361
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !361
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SL_SM_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !359  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !361
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !361
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !9296
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !361
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !361
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !56

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal32non_trivially_destructible_mixinINSF_10value_typeIiEEEEE8TestBodyEvEUlT_T0_E1_EEEvSL_SM_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !9295

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINS4_32non_trivially_destructible_mixinINS4_10value_typeIiEEEEEEEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINS1_32non_trivially_destructible_mixinINS1_10value_typeIiEEEEEEE, i64 16), ptr %i.a, align 8, !tbaa !131
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
end_hunk_18
begin_hunk_19_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SN_SN_SN_SO_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !9412
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !369
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !57

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E0_EEEvSN_SO_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !9411

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElNS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SO_T1_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %5 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %7 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %9 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %10 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %11 = alloca %"class.std::reverse_iterator.921", align 8 ; 4 uses
  %12 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %13 = alloca %"class.std::reverse_iterator.921", align 8 ; 2 uses
  %.sroa.0.0.copyload.i.i17 = load ptr, ptr %0, align 8
  %.sroa.0.0.copyload.i2.i18 = load ptr, ptr %1, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i17 to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i18 to i64 ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph39

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEESN_SN_SN_SO_.exit
  %i.h = icmp eq i64 %i.cl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph39, !llvm.loop !9413

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa36 = phi i64 [ %i.b, %.lr.ph ], [ %i.cm, %bb.b ] ; 4 uses
  %.lcssa34 = phi i64 [ %i.a, %.lr.ph ], [ %i.co, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %.lcssa34, ptr %9, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %10, align 8, !tbaa !183
  store i64 %.lcssa36, ptr %11, align 8, !tbaa !183
  call void @_ZSt13__heap_selectISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SO_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %9, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %10, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr %3)
  %i.i = sub i64 %.lcssa34, %.lcssa36
  %i.j = icmp sgt i64 %i.i, 4
  br i1 %i.j, label %.lr.ph.i.preheader.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SO_.exit

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge
  %i.k = inttoptr i64 %.lcssa36 to ptr
  %i.l = inttoptr i64 %.lcssa34 to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.sroa.0.0.copyload.i2.i5.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.k, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i2.i5.i.i, i64 4 ; 2 uses
  %.cast.i.i = ptrtoint ptr %i.n to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.o = load i32, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198
  %i.p = load i32, ptr %i.m, align 4, !tbaa !198
  store i32 %i.p, ptr %.sroa.0.0.copyload.i2.i5.i.i, align 4, !tbaa !198
  store i64 %.lcssa34, ptr %8, align 8, !tbaa !183
  %i.q = sub i64 %.lcssa34, %.cast.i.i            ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  call void @_ZSt13__adjust_heapISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEElS4_NS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_SO_T1_T2_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %8, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.o, ptr %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i.i, label %_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SO_.exit, !llvm.loop !9414

_ZSt14__partial_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SO_.exit: ; preds = %.lr.ph.i.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  br label %.loopexit

.lr.ph39:                                         ; preds = %.lr.ph, %bb.b
  %.01938 = phi i64 [ %i.cl, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.co, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cm, %bb.b ], [ %i.b, %.lr.ph ] ; 2 uses
  %i.v = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.w = inttoptr i64 %i.u to ptr                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.x = sub i64 %i.t, %i.u
  %i.y = ashr exact i64 %i.x, 2
  %.neg.i = sdiv i64 %i.y, -2
  %i.z = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.neg.i
  store i64 %i.t, ptr %4, align 8, !tbaa !183, !noalias !9426
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !183, !alias.scope !9427, !noalias !9426
  %i.ab = ptrtoint ptr %i.z to i64
  store i64 %i.ab, ptr %6, align 8, !tbaa !183, !noalias !9426
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store ptr %i.ac, ptr %7, align 8, !tbaa !183, !alias.scope !9428, !noalias !9426
  call void @_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SN_SO_(ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %4, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %6, ptr nofreeobj noundef nonnull align 8 dead_on_return dereferenceable(8) %7, ptr %3), !noalias !9426
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !187, !noalias !9429 ; 3 uses
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !367, !noalias !9429 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph39
  %.sroa.05.0.i = phi ptr [ %i.aa, %.lr.ph39 ], [ %i.ay, %bb.f ]
  %.sroa.04.0.i = phi ptr [ %i.w, %.lr.ph39 ], [ %storemerge.i.i, %bb.f ]
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !198, !noalias !9429
  %i.ag = and i32 %i.af, 1048575
  %i.ah = zext nneg i32 %i.ag to i64              ; 2 uses
  %i.ai = lshr i64 %i.ah, 12
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !183, !noalias !9429
  %i.al = and i64 %i.ah, 4095
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !198, !noalias !9429
  %i.ao = and i32 %i.an, 1048575
  %i.ap = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.aq = lshr i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !369, !noalias !9429
  %i.at = and i64 %i.ap, 1023
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !354, !noalias !9429 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.ax = phi ptr [ %.sroa.05.0.i, %bb.c ], [ %i.ay, %bb.d ] ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198, !noalias !9429 ; 2 uses
  %i.ba = and i32 %i.az, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 12
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !183, !noalias !9429
  %i.bf = and i64 %i.bb, 4095
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !198, !noalias !9429
  %i.bi = and i32 %i.bh, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 10
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !369, !noalias !9429
  %i.bn = and i64 %i.bj, 1023
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bn
end_hunk_19
begin_hunk_20_@_ZSt22__move_median_to_firstISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SN_SN_SO_:bb.a
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !198  ; 3 uses
  %i.i = and i32 %i.e, 1048575
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = lshr i64 %i.j, 12
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !187  ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !183
  %i.p = and i64 %i.j, 4095
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !198
  %i.s = and i32 %i.r, 1048575
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.v = lshr i64 %i.t, 10
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !367  ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.v
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !369
  %i.z = and i64 %i.t, 1023
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = and i32 %i.h, 1048575
  %i.ad = zext nneg i32 %i.ac to i64              ; 2 uses
  %i.ae = lshr i64 %i.ad, 12
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !183
  %i.ah = and i64 %i.ad, 4095
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !198
  %i.ak = and i32 %i.aj, 1048575
  %i.al = zext nneg i32 %i.ak to i64              ; 2 uses
  %i.am = lshr i64 %i.al, 10
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !369
  %i.ap = and i64 %i.al, 1023
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ab, align 4, !tbaa !354 ; 3 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !354 ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = load i64, ptr %3, align 8, !tbaa !183
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -4 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !198 ; 3 uses
  %i.az = and i32 %i.ay, 1048575
  %i.ba = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bb = lshr i64 %i.ba, 12
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !183
  %i.be = and i64 %i.ba, 4095
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !198
  %i.bh = and i32 %i.bg, 1048575
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = lshr i64 %i.bi, 10
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !369
  %i.bm = and i64 %i.bi, 1023
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !354 ; 4 uses
  br i1 %i.au, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.bq = icmp slt i32 %i.at, %i.bp
  br i1 %i.bq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.br = load i64, ptr %0, align 8, !tbaa !183
  %i.bs = inttoptr i64 %i.br to ptr
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.h, ptr %i.bt, align 4, !tbaa !198
  store i32 %i.bu, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.bv = icmp slt i32 %i.as, %i.bp
  %i.bw = load i64, ptr %0, align 8, !tbaa !183
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !198 ; 2 uses
  br i1 %i.bv, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ay, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  store i32 %i.e, ptr %i.by, align 4, !tbaa !198
  store i32 %i.bz, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ca = icmp slt i32 %i.as, %i.bp
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cb = load i64, ptr %0, align 8, !tbaa !183
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.e, ptr %i.cd, align 4, !tbaa !198
  store i32 %i.ce, ptr %i.d, align 4, !tbaa !198
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.cf = icmp slt i32 %i.at, %i.bp
  %i.cg = load i64, ptr %0, align 8, !tbaa !183
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -4 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !198 ; 2 uses
  br i1 %i.cf, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ay, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.ax, align 4, !tbaa !198
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  store i32 %i.h, ptr %i.ci, align 4, !tbaa !198
  store i32 %i.cj, ptr %i.g, align 4, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops15_Iter_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SN_SO_(ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %0, ptr nofreeobj noundef align 8 dead_on_return dereferenceable(8) %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %1, align 8, !tbaa !183 ; 3 uses
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i, i64 -4 ; 4 uses
  %i.d = icmp eq ptr %i.c, %.sroa.0.0.copyload.i2.i
  br i1 %i.d, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !367  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.010.016 = phi ptr [ %i.c, %.lr.ph ], [ %i.i, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.010.016, i64 -4 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !198  ; 3 uses
  %i.k = load i32, ptr %i.c, align 4, !tbaa !198
  %i.l = and i32 %i.j, 1048575
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = lshr i64 %i.m, 12
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !183
  %i.q = and i64 %i.m, 4095
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !198  ; 2 uses
  %i.t = and i32 %i.s, 1048575
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.u, 10
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !369
  %i.y = and i64 %i.u, 1023
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = and i32 %i.k, 1048575
  %i.ac = zext nneg i32 %i.ab to i64              ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !183
  %i.ag = and i64 %i.ac, 4095
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !198
  %i.aj = and i32 %i.ai, 1048575
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = lshr i64 %i.ak, 10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.al
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !369
  %i.ao = and i64 %i.ak, 1023
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i32, ptr %i.aa, align 4, !tbaa !354
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !354
  %i.at = icmp slt i32 %i.ar, %i.as
  br i1 %i.at, label %bb.d, label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.au = ptrtoint ptr %.sroa.010.016 to i64
  %i.av = sub i64 %i.b, %i.au                     ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.i, ptr nonnull align 4 %.sroa.010.016, i64 %i.av, i1 false), !tbaa !198, !noalias !9458
  br label %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.d
  store i32 %i.j, ptr %i.c, align 4, !tbaa !198
  br label %bb.f

.preheader:                                       ; preds = %bb.c, %bb.e
  %i.ax = phi i32 [ %.pre, %bb.e ], [ %i.s, %bb.c ]
  %i.ay = phi ptr [ %.sroa.01.0.i, %bb.e ], [ %.sroa.010.016, %bb.c ] ; 4 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !198 ; 2 uses
  %i.ba = and i32 %i.ax, 1048575
  %i.bb = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bc = lshr i64 %i.bb, 10
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !369
  %i.bf = and i64 %i.bb, 1023
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = and i32 %i.az, 1048575
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = lshr i64 %i.bj, 12
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !183
  %i.bn = and i64 %i.bj, 4095
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !198
  %i.bq = and i32 %i.bp, 1048575
  %i.br = zext nneg i32 %i.bq to i64              ; 2 uses
  %i.bs = lshr i64 %i.br, 10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !369
  %i.bv = and i64 %i.br, 1023
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bu, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bh, align 4, !tbaa !354
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !354
  %i.ca = icmp slt i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.e, label %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_.exit

bb.e:                                             ; preds = %.preheader
  %.sroa.01.0.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.cb = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.az, ptr %i.cb, align 4, !tbaa !198
  %.pre = load i32, ptr %i.r, align 4, !tbaa !198
  br label %.preheader, !llvm.loop !58

_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_.exit: ; preds = %.preheader
  %i.cc = getelementptr inbounds i8, ptr %i.ay, i64 -4
  store i32 %i.j, ptr %i.cc, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %_ZSt13move_backwardISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEESA_ET0_T_SC_SB_.exit, %_ZSt25__unguarded_linear_insertISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPN11StorageBase9my_entityESt6vectorIS4_SaIS4_EEEEENS1_5__ops14_Val_comp_iterIZN18Storage_SortN_TestIN4test8internal20pointer_stable_mixinINSF_32non_trivially_destructible_mixinINSF_10value_typeIiEEEEEEE8TestBodyEvEUlT_T0_E1_EEEvSN_SO_.exit
  %i.cd = icmp eq ptr %i.i, %.sroa.0.0.copyload.i2.i
  br i1 %i.cd, label %.loopexit, label %bb.c, !llvm.loop !9457

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI27Storage_SortAsDisjoint_TestIiEE19GetSetUpCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 514)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.219, i64 noundef 106)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal16SuiteApiResolverI27Storage_SortAsDisjoint_TestIiEE22GetTearDownCaseOrSuiteEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 3, ptr noundef nonnull @.str.217, i32 noundef 535)
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.218, i64 noundef 50)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.221, i64 noundef 111)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.d = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !131
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !142
  %i.j = or i32 %i.i, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.g, i32 noundef %i.j)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
  %i.k = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %0, i64 noundef %i.k)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.c, %bb.d
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.220, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %1)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11, %bb.d, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit13
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.a, %bb.e
  ret ptr null
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7testing8internal21TypeParameterizedTestI7StorageNS0_11TemplateSelI27Storage_SortAsDisjoint_TestEENS0_5TypesIN4test8internal20pointer_stable_mixinINS8_10value_typeIiEEEEJNS8_32non_trivially_destructible_mixinISB_EENS9_ISE_EEEEEE8RegisterEPKcRKNS0_12CodeLocationESJ_SJ_iRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIST_EE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !117
end_hunk_20
