Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/catch_amalgamated?download=true
inline.NumInlined: 19374
inline.NumDeleted: 7049
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE17_M_realloc_insertIJRNS0_9StringRefERKNS0_14SourceLineInfoERNS0_9ResultWas6OfTypeEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
bb.d:                                             ; preds = %.lr.ph.i.i.i19
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !9324, !alias.scope !71983 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false), !alias.scope !71984
  br label %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i19
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !9326, !alias.scope !71982
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !9325, !alias.scope !71983
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !9325, !alias.scope !71982
  %.phi.trans.insert.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 24
  %.pre.i.i.i.i24 = load i64, ptr %.phi.trans.insert.i.i.i.i23, align 8, !tbaa !9324, !alias.scope !71983
  br label %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i25

_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i25: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22, %bb.d
  %i.be = phi i64 [ %i.ba, %bb.d ], [ %.pre.i.i.i.i24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 24
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 24
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !9324, !alias.scope !71982
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !9326, !alias.scope !71983
  store i64 0, ptr %i.bf, align 8, !tbaa !9324, !alias.scope !71983
  store i8 0, ptr %i.ax, align 8, !tbaa !9325, !alias.scope !71983
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 48
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !alias.scope !71984
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i21, i64 72 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i20, i64 72 ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bj, %i.b
  br i1 %.not.i.i.i26, label %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, label %.lr.ph.i.i.i19, !llvm.loop !868

_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28: ; preds = %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i25, %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i27 = phi ptr [ %i.as, %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bk, %_ZSt19__relocate_object_aIN5Catch11MessageInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i25 ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIN5Catch11MessageInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16156
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bo) #60
  br label %_ZNSt12_Vector_baseIN5Catch11MessageInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5Catch11MessageInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5Catch11MessageInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit28, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !16176
  store ptr %.0.lcssa.i.i.i27, ptr %i.a, align 8, !tbaa !16155
  %i.bp = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bp, ptr %i.bl, align 8, !tbaa !16156
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #40

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #48 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3603
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #49, !call_target !16247, !inline_history !71985
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !9294 ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !9294
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !3603
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #49, !call_target !16256, !inline_history !71985
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !3603
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9326 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !9325
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #60, !inline_history !19292
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !3603
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !19197
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEED2Ev.exit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19295 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19296
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #60, !inline_history !19297
  br label %_ZN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEED2Ev.exit

_ZN5Catch5Clara6Detail11BasicResultINS1_10ParseStateEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #60
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK5Catch5Clara6Detail11BasicResultINS1_10ParseStateEE9enforceOkEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19197
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #58
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEEE, i64 16), ptr %0, align 8, !tbaa !3603
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !19197
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN5Catch5Clara6Detail10ParseStateD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19295 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZN5Catch5Clara6Detail10ParseStateD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19296
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #60
  br label %_ZN5Catch5Clara6Detail10ParseStateD2Ev.exit

_ZN5Catch5Clara6Detail10ParseStateD2Ev.exit:      ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch5Clara6Detail15ResultValueBaseINS1_10ParseStateEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #58
  unreachable
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #28

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9388 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !16114  ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9389
  %i.i = load ptr, ptr %0, align 8, !tbaa !16114  ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 4 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 136
  %i.o = icmp ugt i64 %i.n, 67818912035696880
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE11_M_allocateEm.exit.i, !prof !9356

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  tail call void @_ZN5Catch12ReporterSpecC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.04.07.i.i.i.i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 136 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 136
  %i.s = icmp eq ptr %i.q, %i.b
  br i1 %i.s, label %_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !439

_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !16114 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9388 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre47, %i.u
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ak, %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i ], [ %.pre47, %_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9390
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !9392 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9326 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !9325
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #60
  br label %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i

_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.af = load ptr, ptr %.05.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !9325
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #60
  br label %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i

_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i: ; preds = %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 136 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.ak, %i.u
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !866

_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !16114
  br label %_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exit

_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exit: ; preds = %_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exitthread-pre-split, %_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  %i.al = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exitthread-pre-split ], [ %.pre47, %_ZNSt6vectorIN5Catch12ReporterSpecESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.al, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exit
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !9389
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #60
  br label %_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN5Catch12ReporterSpecEEvT_S3_.exit, %bb.f
  store ptr %i.p, ptr %0, align 8, !tbaa !16114
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.aq, ptr %i.g, align 8, !tbaa !9389
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !9388 ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.au, %i.f
  br i1 %.not24, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = icmp sgt i64 %i.f, 0
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.h
  %i.aw = udiv exact i64 %i.f, 136
  br label %.lr.ph.i.i.i.i.i26

.lr.ph.i.i.i.i.i26:                               ; preds = %.lr.ph.i.i.i.i.i26, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i26 ], [ %i.aw, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i26 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i26 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.ax = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5Catch12ReporterSpecaSERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.0910.i.i.i.i.i) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 136
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 136 ; 3 uses
  %i.ba = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, !llvm.loop !71986

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i26
  %.pre = load ptr, ptr %i.ar, align 8, !tbaa !9384
  %.pre53 = ptrtoint ptr %i.az to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit, %bb.h
  %.pre-phi54 = phi i64 [ %.pre53, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.k, %bb.h ]
  %i.bc = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.as, %bb.h ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.az, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit.loopexit ], [ %i.i, %bb.h ]
  %i.bd = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bc
  br i1 %i.bd, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i27.preheader

.lr.ph.i.i27.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit
  %i.be = sub i64 %.pre-phi54, %i.k
  %i.bf = getelementptr inbounds i8, ptr %i.i, i64 %i.be
  br label %.lr.ph.i.i27

.lr.ph.i.i27:                                     ; preds = %.lr.ph.i.i27.preheader, %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i32
  %.sroa.01.04.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i32 ], [ %i.bf, %.lr.ph.i.i27.preheader ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 104
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !9390
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !9392 ; 3 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i30, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i27
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !9326 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i29: ; preds = %bb.i
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !9325
  %i.bp = add i64 %i.bo, 1
  tail call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #60
  br label %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i30

_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i30: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i29, %.lr.ph.i.i27
  %i.bq = load ptr, ptr %.sroa.01.04.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31: ; preds = %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i30
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !9325
  %i.bu = add i64 %i.bt, 1
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #60
  br label %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i32

_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i32: ; preds = %_ZN5Catch8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i.i30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i31
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 136 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bc
  br i1 %i.bw, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i27, !llvm.loop !71987

bb.j:                                             ; preds = %bb.g
  %i.bx = icmp sgt i64 %i.au, 0
  br i1 %i.bx, label %.lr.ph.preheader.i.i.i.i.i36, label %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit

.lr.ph.preheader.i.i.i.i.i36:                     ; preds = %bb.j
  %i.by = udiv exact i64 %i.au, 136
  br label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i.i37, %.lr.ph.preheader.i.i.i.i.i36
  %.012.i.i.i.i.i38 = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i37 ], [ %i.by, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %.0811.i.i.i.i.i39 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i37 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %.0910.i.i.i.i.i40 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i37 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i36 ] ; 2 uses
  %i.bz = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN5Catch12ReporterSpecaSERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.0811.i.i.i.i.i39, ptr noundef nonnull align 8 dereferenceable(136) %.0910.i.i.i.i.i40) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i40, i64 136
  %i.cb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i39, i64 136
  %i.cc = add nsw i64 %.012.i.i.i.i.i38, -1
  %i.cd = icmp samesign ugt i64 %.012.i.i.i.i.i38, 1
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i37, label %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit.loopexit, !llvm.loop !71988

_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i37
  %.pre43 = load ptr, ptr %1, align 8, !tbaa !16114
  %.pre44 = load ptr, ptr %i.ar, align 8, !tbaa !9388 ; 2 uses
  %.pre45 = load ptr, ptr %0, align 8, !tbaa !16114
  %.pre46 = load ptr, ptr %i.a, align 8, !tbaa !9388
  %.pre48 = ptrtoint ptr %.pre44 to i64
  %.pre49 = ptrtoint ptr %.pre45 to i64
  %.pre51 = sub i64 %.pre48, %.pre49
  br label %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit: ; preds = %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit.loopexit, %bb.j
  %.pre-phi52 = phi i64 [ %.pre51, %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.au, %bb.j ]
  %i.ce = phi ptr [ %.pre46, %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.b, %bb.j ] ; 2 uses
  %i.cf = phi ptr [ %.pre44, %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.as, %bb.j ]
  %i.cg = phi ptr [ %.pre43, %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit.loopexit ], [ %i.c, %bb.j ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.pre-phi52 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ch, %i.ce
  br i1 %.not9.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.cf, %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i ], [ %i.ch, %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @_ZN5Catch12ReporterSpecC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(136) %.0810.i.i.i.i)
  %i.ci = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 136 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 136
  %.not.i.i.i.i = icmp eq ptr %i.ci, %i.ce
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !71989

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit: ; preds = %_ZSt8_DestroyIN5Catch12ReporterSpecEEvPT_.exit.i.i32, %.lr.ph.i.i.i.i, %_ZSt4copyIPN5Catch12ReporterSpecES2_ET0_T_S4_S3_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %_ZNSt12_Vector_baseIN5Catch12ReporterSpecESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.ck = load ptr, ptr %0, align 8, !tbaa !16114
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !9388
  br label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch12ReporterSpecESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16105 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !16104  ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16103
  %i.j = load ptr, ptr %0, align 8, !tbaa !16104  ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !16104  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16105 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !9326 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !9325
  %i.w = add i64 %i.v, 1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN5Catch5Clara3OptESaIS2_EEaSERKS4_:bb.a
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 88
  %i.o = tail call noundef ptr @_ZNSt6vectorIN5Catch5Clara3OptESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !16304  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !16301 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !3603
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.05.i.i) #49, !call_target !16323, !inline_history !869
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !509

_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !16304
  br label %_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exit

_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exit:    ; preds = %_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exitthread-pre-split, %bb.c
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5Catch5Clara3OptESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exit
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !16302
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.z) #60
  br label %_ZNSt12_Vector_baseIN5Catch5Clara3OptESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5Catch5Clara3OptESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5Catch5Clara3OptEEvT_S4_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !16304
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !16302
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !16301
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.k                     ; 2 uses
  %.not24 = icmp ult i64 %i.ae, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN5Catch5Clara3OptEPS5_EET0_T_SA_S9_(ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.i) ; 2 uses
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !16319 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i25.preheader

.lr.ph.i.i25.preheader:                           ; preds = %bb.f
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ai, %i.k
  %i.ak = getelementptr inbounds i8, ptr %i.i, i64 %i.aj
  br label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %.lr.ph.i.i25.preheader, %.lr.ph.i.i25
  %.sroa.01.04.i.i = phi ptr [ %i.an, %.lr.ph.i.i25 ], [ %i.ak, %.lr.ph.i.i25.preheader ] ; 3 uses
  %i.al = load ptr, ptr %.sroa.01.04.i.i, align 8, !tbaa !3603
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %.sroa.01.04.i.i) #49, !call_target !16323, !inline_history !71999
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 88 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.ag
  br i1 %i.ao, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i25, !llvm.loop !72000

bb.g:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ae
  %i.aq = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN5Catch5Clara3OptES6_EET0_T_S8_S7_(ptr noundef %i.c, ptr noundef %i.ap, ptr noundef %i.i) ; 0 uses
  %i.ar = load ptr, ptr %1, align 8, !tbaa !16304
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !16301 ; 2 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !16304
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !16301 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not10.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt10_ConstructIN5Catch5Clara3OptEJRS2_EEvPT_DpOT0_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cj, %_ZSt10_ConstructIN5Catch5Clara3OptEJRS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.as, %bb.g ] ; 9 uses
  %.0811.i.i.i.i = phi ptr [ %i.ci, %_ZSt10_ConstructIN5Catch5Clara3OptEJRS2_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ax, %bb.g ] ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEE, i64 16), ptr %.012.i.i.i.i, align 8, !tbaa !3603
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !16241
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !16241
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !16231 ; 2 uses
  %i.bg = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !16127
  store <2 x ptr> %i.bg, ptr %i.bc, align 8, !tbaa !16127
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEC2ERKS4_.exit.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  %i.bi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !9294
  %i.bk = add nsw i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !9294
  br label %_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEC2ERKS4_.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEC2ERKS4_.exit.i.i.i.i.i.i

_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEC2ERKS4_.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch5Clara3OptE, i64 16), ptr %.012.i.i.i.i, align 8, !tbaa !3603
  %i.bo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 64 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !16299 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !16298 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i3.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i3.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEC2ERKS4_.exit.i.i.i.i.i.i
  %i.bw = icmp ugt i64 %i.bv, 9223372036854775792
  br i1 %i.bw, label %bb.l, label %_ZNSt15__new_allocatorIN5Catch9StringRefEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, !prof !9356

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt15__new_allocatorIN5Catch9StringRefEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bx = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #59
  br label %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i

_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN5Catch9StringRefEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i, %_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEC2ERKS4_.exit.i.i.i.i.i.i
  %i.by = phi ptr [ %i.bx, %_ZNSt15__new_allocatorIN5Catch9StringRefEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i ], [ null, %_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEC2ERKS4_.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !16298
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 72 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !16299
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 80
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !16300
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !16303 ; 2 uses
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !16303 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZSt10_ConstructIN5Catch5Clara3OptEJRS2_EEvPT_DpOT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.by, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cc, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.08.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !16152
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ch = icmp eq ptr %i.cf, %i.cd
  br i1 %i.ch, label %_ZSt10_ConstructIN5Catch5Clara3OptEJRS2_EEvPT_DpOT0_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !870

_ZSt10_ConstructIN5Catch5Clara3OptEJRS2_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.by, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EEC2EmRKS2_.exit.i.i.i.i.i.i.i ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bz, align 8, !tbaa !16299
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i, i64 88 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 88
  %.not.i.i.i.i = icmp eq ptr %i.ci, %i.ay
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !72001

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i25, %_ZSt10_ConstructIN5Catch5Clara3OptEJRS2_EEvPT_DpOT0_.exit.i.i.i.i, %bb.g, %bb.f, %_ZNSt12_Vector_baseIN5Catch5Clara3OptESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ck = load ptr, ptr %0, align 8, !tbaa !16304
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.f
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !16301
  br label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5Catch5Clara3ArgESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17795 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !16305  ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 6 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17796
  %i.j = load ptr, ptr %0, align 8, !tbaa !16305  ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.g, 144115188075855871
  br i1 %i.o, label %bb.d, label %_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE11_M_allocateEm.exit.i, !prof !9356

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE11_M_allocateEm.exit.i ] ; 6 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE11_M_allocateEm.exit.i ] ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch5Clara6Detail13ParserRefImplINS0_3ArgEEE, i64 16), ptr %.08.i.i.i.i.i, align 8, !tbaa !3603
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !16314
  store i32 %i.s, ptr %i.q, align 8, !tbaa !16314
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16231 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.u, align 8, !tbaa !16127
  store <2 x ptr> %i.x, ptr %i.t, align 8, !tbaa !16127
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !9294
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !9294
  br label %_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ac = atomicrmw volatile add ptr %i.y, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch5Clara3ArgE, i64 16), ptr %.08.i.i.i.i.i, align 8, !tbaa !3603
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZNSt6vectorIN5Catch5Clara3ArgESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !871

_ZNSt6vectorIN5Catch5Clara3ArgESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit: ; preds = %_ZSt10_ConstructIN5Catch5Clara3ArgEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre53 = load ptr, ptr %0, align 8, !tbaa !16305 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !17795 ; 2 uses
  %.not4.i.i = icmp eq ptr %.pre53, %i.aj
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorIN5Catch5Clara3ArgESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.pre53, %_ZNSt6vectorIN5Catch5Clara3ArgESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 3 uses
  %i.ak = load ptr, ptr %.05.i.i, align 8, !tbaa !3603
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i) #49, !call_target !17800, !inline_history !872
  %i.am = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i25 = icmp eq ptr %i.am, %i.aj
  br i1 %.not.i.i25, label %_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !513

_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !16305
  br label %_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exit

_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exit:    ; preds = %_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exitthread-pre-split, %_ZNSt6vectorIN5Catch5Clara3ArgESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit
  %i.an = phi ptr [ %.pr, %_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exitthread-pre-split ], [ %.pre53, %_ZNSt6vectorIN5Catch5Clara3ArgESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_.exit ] ; 3 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exit
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !17796
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #60
  br label %_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN5Catch5Clara3ArgESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN5Catch5Clara3ArgEEvT_S4_.exit, %bb.h
  store ptr %i.p, ptr %0, align 8, !tbaa !16305
  %i.as = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.f
  store ptr %i.as, ptr %i.h, align 8, !tbaa !17796
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !17795 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.aw, %i.f
  br i1 %.not24, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = icmp sgt i64 %i.g, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i26:                               ; preds = %bb.j, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ch, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i ], [ %i.g, %bb.j ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.cg, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i ], [ %i.j, %bb.j ] ; 5 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.cf, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i ], [ %i.c, %bb.j ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !16314
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !16314
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16242
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !16242
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !16231 ; 4 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !16231 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i26
  %.not7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i.i.i.i.i.i.i.i.i.i.i27 = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !9294
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bi, align 4, !tbaa !9294
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bm = atomicrmw volatile add ptr %i.bi, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !16231
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.bn = phi ptr [ %i.bh, %bb.k ], [ %i.bh, %bb.m ], [ %.pr.pre.i.i.i.i.i.i.i.i.i.i, %bb.n ] ; 8 uses
  %.not8.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 4 uses
  %i.bp = load atomic i64, ptr %i.bo acquire, align 8 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 4294967297
  %i.br = trunc i64 %i.bp to i32                  ; 2 uses
  br i1 %i.bq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.bo, align 8, !tbaa !16229
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %i.bs, align 4, !tbaa !16230
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !3603
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #49, !call_target !16247, !inline_history !873
  %i.bw = load ptr, ptr %i.bn, align 8, !tbaa !3603
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #49, !call_target !16256, !inline_history !873
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i9.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bz, 0
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = add nsw i32 %i.br, -1
  store i32 %i.ca, ptr %i.bo, align 8, !tbaa !9294
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.cb = atomicrmw volatile add ptr %i.bo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.br, %bb.r ], [ %i.cb, %bb.s ]
  %i.cc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cc, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, !prof !9356

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bn) #49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !16231
  br label %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i

_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i:       ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i26
  %i.cd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 3 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ci = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i26, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, !llvm.loop !874

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit: ; preds = %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !16306
  %.pre59 = ptrtoint ptr %i.cg to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit, %bb.j
  %.pre-phi60 = phi i64 [ %.pre59, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.l, %bb.j ]
  %i.cj = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.au, %bb.j ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.cg, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit.loopexit ], [ %i.j, %bb.j ]
  %i.ck = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28.preheader

.lr.ph.i.i28.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit
  %i.cl = sub i64 %.pre-phi60, %i.l
  %i.cm = getelementptr inbounds i8, ptr %i.j, i64 %i.cl
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28.preheader, %.lr.ph.i.i28
  %.sroa.01.04.i.i = phi ptr [ %i.cp, %.lr.ph.i.i28 ], [ %i.cm, %.lr.ph.i.i28.preheader ] ; 3 uses
  %i.cn = load ptr, ptr %.sroa.01.04.i.i, align 8, !tbaa !3603
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.sroa.01.04.i.i) #49, !call_target !17800, !inline_history !72002
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.01.04.i.i, i64 64 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.cj
  br i1 %i.cq, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5Catch5Clara3ArgESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i28, !llvm.loop !72003

bb.u:                                             ; preds = %bb.i
  %i.cr = ashr exact i64 %i.aw, 6                 ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i30, label %_ZSt4copyIPN5Catch5Clara3ArgES3_ET0_T_S5_S4_.exit

.lr.ph.i.i.i.i.i30:                               ; preds = %bb.u, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i43
  %.012.i.i.i.i.i31 = phi i64 [ %i.ec, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i43 ], [ %i.cr, %bb.u ] ; 2 uses
  %.0811.i.i.i.i.i32 = phi ptr [ %i.eb, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i43 ], [ %i.j, %bb.u ] ; 5 uses
  %.0910.i.i.i.i.i33 = phi ptr [ %i.ea, %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i43 ], [ %i.c, %bb.u ] ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !16314
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 8
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !16314
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16242
  store ptr %i.cy, ptr %i.cw, align 8, !tbaa !16242
  %i.cz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i32, i64 24 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i33, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !16231 ; 4 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !16231 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i34 = icmp eq ptr %i.db, %i.dc
  br i1 %.not.i.i.i.i.i.i.i.i.i.i34, label %_ZN5Catch5Clara3ArgaSERKS1_.exit.i.i.i.i.i43, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i30
  %.not7.i.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.db, null
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i35, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 8 ; 3 uses
  %i.de = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i.i.i.i.i.i.i.i.i.i.i36 = icmp eq i8 %i.de, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i36, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load i32, ptr %i.dd, align 4, !tbaa !9294
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.dd, align 4, !tbaa !9294
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i.i.i.i.i.i37

bb.y:                                             ; preds = %bb.w
  %i.dh = atomicrmw volatile add ptr %i.dd, i32 1 acq_rel, align 4 ; 0 uses
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN5Catch5Clara3OptESaIS2_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEPS2_mT_SC_:bb.a
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5Catch5Clara3OptESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5Catch5Clara3OptEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5Catch5Clara3OptESaIS2_EE11_M_allocateEm.exit
  ret ptr %i.e
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN5Catch5Clara6Detail13ParserRefImplINS0_3OptEEE, i64 16), ptr %0, align 8, !tbaa !3603
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16231 ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5Catch5Clara6Detail8BoundRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !16229
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !16230
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !3603
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #49, !call_target !16247, !inline_history !661
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !3603
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #49, !call_target !16256, !inline_history !661
  br label %_ZNSt12__shared_ptrIN5Catch5Clara6Detail8BoundRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !9294
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5Catch5Clara6Detail8BoundRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !9356

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #49
  br label %_ZNSt12__shared_ptrIN5Catch5Clara6Detail8BoundRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5Catch5Clara6Detail8BoundRefELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Catch5Clara6Detail13ParserRefImplINS0_3OptEED0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #16 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #58
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN5Catch5Clara3OptEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 88
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5Catch5Clara3OptaSERKS1_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.aq, %_ZN5Catch5Clara3OptaSERKS1_.exit ]
  ret ptr %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5Catch5Clara3OptaSERKS1_.exit
  %.012 = phi i64 [ %i.ar, %_ZN5Catch5Clara3OptaSERKS1_.exit ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0811 = phi ptr [ %i.aq, %_ZN5Catch5Clara3OptaSERKS1_.exit ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.0910 = phi ptr [ %i.ap, %_ZN5Catch5Clara3OptaSERKS1_.exit ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16241
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !16241
  %i.i = getelementptr inbounds nuw i8, ptr %.0811, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.0910, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16242
  store ptr %i.k, ptr %i.i, align 8, !tbaa !16242
  %i.l = getelementptr inbounds nuw i8, ptr %.0811, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0910, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16231 ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !16231 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN5Catch5Clara3OptaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.p, align 4, !tbaa !9294
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !9294
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !16231
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.u = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.d ], [ %.pr.pre.i.i.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.v, align 8, !tbaa !16229
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !16230
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !3603
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #49, !call_target !16247, !inline_history !876
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !3603
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #49, !call_target !16256, !inline_history !876
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !9294
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !9356

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !16231
  br label %_ZN5Catch5Clara3OptaSERKS1_.exit

_ZN5Catch5Clara3OptaSERKS1_.exit:                 ; preds = %.lr.ph, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0910, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.0910, i64 64
  %i.ao = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5Catch9StringRefESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811, i64 88 ; 2 uses
  %i.ar = add nsw i64 %.012, -1
  %i.as = icmp sgt i64 %.012, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !72007
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5Catch9StringRefESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16299
  %i.c = load ptr, ptr %1, align 8, !tbaa !16298  ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16300
  %i.i = load ptr, ptr %0, align 8, !tbaa !16298  ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !9356

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 3 uses
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #60
  br label %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !16298
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !16300
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16299
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = icmp sgt i64 %i.f, 16
  br i1 %i.x, label %bb.h, label %bb.i, !prof !21340

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = icmp eq i64 %i.f, 16
  br i1 %i.y, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !16152
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.w, 16
  br i1 %i.z, label %bb.l, label %bb.m, !prof !21340

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  br label %_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = icmp eq i64 %i.w, 16
  br i1 %i.aa, label %bb.n, label %_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !16152
  br label %_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ab = load ptr, ptr %1, align 8, !tbaa !16298
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !16299 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !16298
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !16299 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ah, %i.ai
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.ac, %_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false), !tbaa.struct !16152
  %i.aj = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !72008

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN5Catch9StringRefES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN5Catch9StringRefESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !16298
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !16299
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5Catch9StringRefESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPN5Catch5Clara3OptES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = udiv exact i64 %i.c, 88
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN5Catch5Clara3OptaSERKS1_.exit, %bb.a
  %.08.lcssa = phi ptr [ %2, %bb.a ], [ %i.aq, %_ZN5Catch5Clara3OptaSERKS1_.exit ]
  ret ptr %.08.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5Catch5Clara3OptaSERKS1_.exit
  %.012 = phi i64 [ %i.ar, %_ZN5Catch5Clara3OptaSERKS1_.exit ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.0811 = phi ptr [ %i.aq, %_ZN5Catch5Clara3OptaSERKS1_.exit ], [ %2, %.lr.ph.preheader ] ; 6 uses
  %.0910 = phi ptr [ %i.ap, %_ZN5Catch5Clara3OptaSERKS1_.exit ], [ %0, %.lr.ph.preheader ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0910, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16241
  %i.h = getelementptr inbounds nuw i8, ptr %.0811, i64 8
  store i32 %i.g, ptr %i.h, align 8, !tbaa !16241
  %i.i = getelementptr inbounds nuw i8, ptr %.0811, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %.0910, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16242
  store ptr %i.k, ptr %i.i, align 8, !tbaa !16242
  %i.l = getelementptr inbounds nuw i8, ptr %.0811, i64 24 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0910, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16231 ; 4 uses
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !16231 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN5Catch5Clara3OptaSERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not7.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not7.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.p, align 4, !tbaa !9294
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !9294
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !16231
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.u = phi ptr [ %i.o, %bb.b ], [ %i.o, %bb.d ], [ %.pr.pre.i.i.i.i.i, %bb.e ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.v, align 8, !tbaa !16229
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !16230
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !3603
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #49, !call_target !16247, !inline_history !876
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !3603
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #49, !call_target !16256, !inline_history !876
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !9325
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !9294
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.y, %bb.i ], [ %i.ai, %bb.j ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !9356

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #49
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.n, ptr %i.l, align 8, !tbaa !16231
  br label %_ZN5Catch5Clara3OptaSERKS1_.exit

_ZN5Catch5Clara3OptaSERKS1_.exit:                 ; preds = %.lr.ph, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %.0910, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0811, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %.0910, i64 64
  %i.ao = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN5Catch9StringRefESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.an) ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910, i64 88
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811, i64 88 ; 2 uses
  %i.ar = add nsw i64 %.012, -1
  %i.as = icmp sgt i64 %.012, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge, !llvm.loop !72009
}
end_hunk_2
begin_hunk_3_@_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE12_M_lookaheadEl:bb.a

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %.lr.ph.epil.preheader, %.preheader, %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EEC2EmRKSD_.exit.i
  %i.dr = load ptr, ptr %i.bt, align 8, !tbaa !69602 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  call void @_ZdaPv(ptr noundef nonnull %i.dr) #60
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %i.dt = load ptr, ptr %i.bs, align 8, !tbaa !69613 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !69614 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.dt, %i.dv
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %bb.j, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ed, %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i ], [ %i.dt, %bb.j ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.dy = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !23616
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %i.dx, i64 noundef %i.ec) #60
  br label %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.k, %.lr.ph.i.i.i.i.i9
  %i.ed = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i10 = icmp eq ptr %i.ed, %i.dv
  br i1 %.not.i.i.i.i.i10, label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !3586

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.bs, align 8, !tbaa !69613
  br label %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i, %bb.j
  %i.ee = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exitthread-pre-split.i.i.i ], [ %i.dt, %bb.j ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !69615
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ee to i64
  %i.ej = sub i64 %i.eh, %i.ei
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef %i.ej) #60
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i: ; preds = %bb.l, %_ZSt8_DestroyIPSt4pairIlSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS2_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISE_EEEEvT_SJ_.exit.i.i.i
  %i.ek = load ptr, ptr %i.ah, align 8, !tbaa !69591 ; 3 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !69592
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef %i.ep) #60
  br label %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i

_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i: ; preds = %bb.m, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EE11_State_infoISt17integral_constantIbLb0EESt6vectorISD_SE_EED2Ev.exit.i
  %i.eq = load ptr, ptr %3, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i1.i, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !23616
  %i.et = ptrtoint ptr %i.es to i64
  %i.eu = ptrtoint ptr %i.eq to i64
  %i.ev = sub i64 %i.et, %i.eu
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ev) #60
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEiESaISC_EED2Ev.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #49
  %i.ew = load ptr, ptr %2, align 8, !tbaa !23615 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit
  %i.ex = load ptr, ptr %i.s, align 8, !tbaa !23616
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.ew to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef %i.fa) #60
  br label %_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit

_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EED2Ev.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb0EED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret i1 %i.ca
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #45

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt8__detail16_Backref_matcherIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS5_12regex_traitsIcEEE8_M_applyESB_SB_SB_SB_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr %2, ptr %3, ptr %4) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 5 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !69635, !range !16139, !noundef !4070
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  %i.d = ptrtoint ptr %1 to i64
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = ptrtoint ptr %4 to i64
  %i.g = ptrtoint ptr %3 to i64
  %i.h = sub i64 %i.f, %i.g
  %.not.i = icmp eq i64 %i.e, %i.h
  br i1 %.not.i, label %bb.c, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i = icmp eq ptr %2, %1
  br i1 %.not.not.i.i.i.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %1, ptr %3, i64 %i.e)
  %.not9.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73573, !nonnull !4070, !align !19314
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.j) #49
  %i.k = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt5ctypeIcE2idE) #49
  %i.l = load ptr, ptr %5, align 8, !tbaa !69403
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69406
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.k
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !69408 ; 5 uses
  %.not.not.i = icmp eq ptr %i.p, null
  br i1 %.not.not.i, label %bb.f, label %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit

bb.f:                                             ; preds = %bb.e
  call void @_ZSt16__throw_bad_castv() #58
  unreachable

_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit:  ; preds = %bb.e
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  %i.q = ptrtoint ptr %2 to i64
  %i.r = ptrtoint ptr %1 to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ptrtoint ptr %4 to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  %.not.i15 = icmp eq i64 %i.s, %i.v
  br i1 %.not.i15, label %bb.g, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit

bb.g:                                             ; preds = %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit
  %i.w = icmp eq ptr %1, %2
  br i1 %i.w, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.05.09.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %1, %bb.g ] ; 2 uses
  %.sroa.02.08.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %3, %bb.g ] ; 2 uses
  %i.x = load i8, ptr %.sroa.05.09.i.i, align 1, !tbaa !9325
  %i.y = load i8, ptr %.sroa.02.08.i.i, align 1, !tbaa !9325
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !3603
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef signext i8 %i.ab(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.x) #49, !call_target !69479, !inline_history !73571
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !3603
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef signext i8 %i.af(ptr noundef nonnull align 8 dereferenceable(570) %i.p, i8 noundef signext %i.y) #49, !call_target !69479, !inline_history !73571
  %i.ah = icmp eq i8 %i.ac, %i.ag                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.02.08.i.i, i64 1
  %i.ak = icmp ne ptr %i.ai, %2
  %or.cond.not = select i1 %i.ah, i1 %i.ak, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit, !llvm.loop !73572

_ZSt8__equal4IN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESA_EbT_SB_T0_SC_.exit: ; preds = %.lr.ph.i.i, %bb.g, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit, %bb.d, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ %.not9.i.i.i.i.i, %bb.d ], [ false, %_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale.exit ], [ true, %bb.g ], [ %i.ah, %.lr.ph.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EEaSERKSE_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69626 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23615  ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23616
  %i.i = load ptr, ptr %0, align 8, !tbaa !23615  ; 8 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 24
  %i.o = icmp ugt i64 %i.n, 384307168202282325
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !9356

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #58
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #59 ; 4 uses
  %i.p = add i64 %i.d, -24
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 24
  %i.s = add i64 %.fr.i, 24
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.t, i1 false)
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #60
  br label %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit

_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !23615
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.u, ptr %i.g, align 8, !tbaa !23616
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69626 ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.y, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp sgt i64 %i.f, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.aa = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.ab = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !9357
  store i64 %i.ab, ptr %.0811.i.i.i.i.i, align 8, !tbaa !9357
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !9357
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !9357
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i8 %i.ag, ptr %i.ah, align 8, !tbaa !69623
  %i.ai = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ak = add nsw i64 %.012.i.i.i.i.i, -1
  %i.al = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.al, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, !llvm.loop !73574

bb.h:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y ; 2 uses
  %i.an = icmp sgt i64 %i.y, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.ao = udiv exact i64 %i.y, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.ay, %.lr.ph.i.i.i.i.i27 ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 4 uses
  %i.ap = load i64, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !9357
  store i64 %i.ap, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !9357
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 8
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !9357
  store i64 %i.as, ptr %i.ar, align 8, !tbaa !9357
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.au = load i8, ptr %i.at, align 8, !tbaa !69623, !range !16139, !noundef !4070
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i8 %i.au, ptr %i.av, align 8, !tbaa !69623
  %i.aw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.ay = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.az = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.az, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, !llvm.loop !73575

_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.am, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %i.w, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %i.am, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !73576

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !23615
  br label %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit
  %i.bc = phi ptr [ %2, %_ZNSt12_Vector_baseINSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESaISC_EE13_M_deallocateEPSC_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_ET0_T_SF_SE_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !69626
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPNSt7__cxx119sub_matchIN9__gnu_cxx17__normal_iteratorIPKcNS0_12basic_stringIcSt11char_traitsIcESaIcEEEEEEESD_SC_ET0_T_SF_SE_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 8 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge282, %bb.a
  %.tr37 = phi i64 [ %2, %bb.a ], [ %.tr37.be283, %tailrecurse.backedge282 ] ; 5 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !69636, !nonnull !4070, !align !19314 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69414
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %.tr37 ; 19 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !69424
  switch i32 %i.n, label %common.ret [
    i32 2, label %bb.b
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.u
    i32 6, label %bb.w
    i32 7, label %bb.x
    i32 11, label %bb.y
    i32 3, label %bb.ac
    i32 12, label %bb.ad
    i32 1, label %bb.am
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.p = load i8, ptr %i.o, align 8, !tbaa !9325, !range !16139, !noundef !4070
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !69591
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.tr37 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !69594 ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.sroa.029.0.copyload.pre = load i64, ptr %i.s, align 8
  %.pre = load i64, ptr %i.c, align 8, !tbaa !9357
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.x to i64
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.ab = phi i64 [ %.pre, %._crit_edge ], [ %i.aa, %bb.d ]
  %.sroa.029.0.copyload = phi i64 [ %.sroa.029.0.copyload.pre, %._crit_edge ], [ %i.z, %bb.d ]
  store i64 %i.ab, ptr %i.s, align 8, !tbaa !9357
  store i32 1, ptr %i.t, align 8, !tbaa !69594
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9325
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ad), !inline_history !73577
  store i64 %.sroa.029.0.copyload, ptr %i.s, align 8, !tbaa !9357
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp slt i32 %i.u, 2
  br i1 %i.ae, label %bb.g, label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

bb.g:                                             ; preds = %bb.f
  %i.af = add nsw i32 %i.u, 1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !69594
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !9325
  tail call void @_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE6_M_dfsENSH_11_Match_modeEl(ptr noundef nonnull align 8 dereferenceable(117) %0, i8 noundef zeroext %1, i64 noundef %i.ah), !inline_history !73577
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !69594
  %i.aj = add nsw i32 %i.ai, -1
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split: ; preds = %bb.g, %bb.e
  %.sink = phi i32 [ %i.u, %bb.e ], [ %i.aj, %bb.g ]
  store i32 %.sink, ptr %i.t, align 8, !tbaa !69594
  br label %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit

_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit: ; preds = %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit.sink.split, %bb.f
  %i.ak = load i8, ptr %i.i, align 4, !tbaa !69618, !range !16139, !noundef !4070
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %common.ret, label %tailrecurse.backedge282

tailrecurse.backedge282:                          ; preds = %bb.an, %_ZNSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE16_M_rep_once_moreENSH_11_Match_modeEl.exit, %bb.r, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE11_M_at_beginEv.exit, %.split, %_ZNKSt8__detail9_ExecutorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaINS5_9sub_matchISB_EEENS5_12regex_traitsIcEELb1EE9_M_at_endEv.exit, %bb.w, %bb.x
  %.tr37.be283.in = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.tr37.be283 = load i64, ptr %.tr37.be283.in, align 8, !tbaa !69417
  br label %tailrecurse

end_hunk_3
