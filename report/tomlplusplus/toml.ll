Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN4toml2v34nodeaSERKS1_:bb.a
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !7
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50, !inline_history !7
  br label %_ZN4toml2v313source_regionD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZN4toml2v313source_regionD2Ev.exit, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit

_ZN4toml2v313source_regionD2Ev.exit:              ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZN4toml2v34nodeaSEOS1_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(40) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(40) %1) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.010 = alloca { %"struct.toml::v3::source_position", %"struct.toml::v3::source_position" }, align 8 ; 4 uses
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit

_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !157, !noalias !433
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !151  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !157
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZN4toml2v313source_regionD2Ev.exit8, label %bb.b

bb.b:                                             ; preds = %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !153
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !154
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !7
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50, !inline_history !7
  br label %_ZN4toml2v313source_regionD2Ev.exit8

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !155
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN4toml2v313source_regionD2Ev.exit8, !prof !156

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #50
  br label %_ZN4toml2v313source_regionD2Ev.exit8

_ZN4toml2v313source_regionD2Ev.exit8:             ; preds = %_ZSt8exchangeIN4toml2v313source_regionES2_ET_RS3_OT0_.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010)
  br label %bb.h

bb.h:                                             ; preds = %_ZN4toml2v313source_regionD2Ev.exit8, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define ptr @_ZN4toml2v34node7at_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 dereferenceable(40) %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, ptr %2) #50
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define ptr @_ZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(40) %0) #52
  br i1 %i.e, label %bb.ah, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 4 uses
  %.not = icmp eq ptr %i.h, null                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.j = load i64, ptr %i.i, align 8, !tbaa !158
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 3 uses
  %.not13 = icmp eq ptr %i.n, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !160
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.ah, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  %i.t = icmp eq i64 %1, 0
  br i1 %i.t, label %bb.g, label %.preheader241.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 4 uses
  %.0810.i.i.i.i.i.i.i55 = load ptr, ptr %i.u, align 8, !tbaa !161 ; 2 uses
  %.not11.i.i.i.i.i.i.i56 = icmp eq ptr %.0810.i.i.i.i.i.i.i55, null
  br i1 %.not11.i.i.i.i.i.i.i56, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i57

.lr.ph.i.i.i.i.i.i.i57:                           ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i57
  %.0813.i.i.i.i.i.i.i58 = phi ptr [ %.08.i.i.i.i.i.i.i67, %.lr.ph.i.i.i.i.i.i.i57 ], [ %.0810.i.i.i.i.i.i.i55, %bb.h ] ; 3 uses
  %.012.i.i.i.i.i.i.i59 = phi ptr [ %.1.i.i.i.i.i.i.i66, %.lr.ph.i.i.i.i.i.i.i57 ], [ %i.v, %bb.h ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i58, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68
  %i.y = icmp slt i64 %i.x, 0                     ; 2 uses
  %.19.in.v.i.i.i.i.i.i.i64 = select i1 %i.y, i64 24, i64 16
  %.19.in.i.i.i.i.i.i.i65 = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i58, i64 %.19.in.v.i.i.i.i.i.i.i64
  %.1.i.i.i.i.i.i.i66 = select i1 %i.y, ptr %.012.i.i.i.i.i.i.i59, ptr %.0813.i.i.i.i.i.i.i58 ; 5 uses
  %.08.i.i.i.i.i.i.i67 = load ptr, ptr %.19.in.i.i.i.i.i.i.i65, align 8, !tbaa !161 ; 2 uses
  %.not.i.i.i.i.i.i.i68 = icmp eq ptr %.08.i.i.i.i.i.i.i67, null
  br i1 %.not.i.i.i.i.i.i.i68, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69, label %.lr.ph.i.i.i.i.i.i.i57, !llvm.loop !8

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69: ; preds = %.lr.ph.i.i.i.i.i.i.i57
  %.not.i.i.i.i.i.i70 = icmp eq ptr %.1.i.i.i.i.i.i.i66, %i.v
  br i1 %.not.i.i.i.i.i.i70, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76, label %bb.i

bb.i:                                             ; preds = %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69
  %i.z = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i66, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !68
  %notsub108 = add i64 %i.aa, -1
  %i.ab = icmp slt i64 %notsub108, 0
  %spec.select.i.i.i.i.i.i75 = select i1 %i.ab, ptr %.1.i.i.i.i.i.i.i66, ptr %i.v
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76: ; preds = %bb.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69
  %.sroa.03.0.i.i.i.i.i.i77 = phi ptr [ %.1.i.i.i.i.i.i.i66, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i69 ], [ %spec.select.i.i.i.i.i.i75, %bb.i ] ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %.sroa.03.0.i.i.i.i.i.i77, %i.v
  br i1 %.not.i.i.i78, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

.preheader241.i:                                  ; preds = %bb.f, %.backedge.i
  %i.ac = phi ptr [ %7, %.backedge.i ], [ %0, %bb.f ] ; 10 uses
  %.097284.i = phi i64 [ %.097.be.i, %.backedge.i ], [ 0, %bb.f ] ; 7 uses
  %.0106283.i = phi i1 [ %.0106.be.i, %.backedge.i ], [ false, %bb.f ]
  %.0113282.i = phi i8 [ %.0113.be.i, %.backedge.i ], [ 1, %bb.f ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %.097284.i ; 4 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !70
  switch i8 %i.ae, label %bb.y [
    i8 91, label %.preheader.i
    i8 46, label %bb.u
    i8 93, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread
  ], !prof !162

.preheader.i:                                     ; preds = %.preheader241.i
  %.0120266.i = add nuw i64 %.097284.i, 1         ; 4 uses
  %.not267.i = icmp ult i64 %.0120266.i, %1
  br i1 %.not267.i, label %.lr.ph.i.preheader, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, !prof !163

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %.0120266.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !70  ; 3 uses
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  br i1 %i.ai, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !164

.lr.ph.i:                                         ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 %.0120.i
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !70  ; 3 uses
  %i.al = add i8 %i.ak, -48
  %i.am = icmp ult i8 %i.al, 10
  br i1 %i.am, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !165

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.an = phi i8 [ %i.ak, %.lr.ph.i ], [ %i.ag, %.lr.ph.i.preheader ]
  %.0120269.i126 = phi i64 [ %.0120.i, %.lr.ph.i ], [ %.0120266.i, %.lr.ph.i.preheader ] ; 2 uses
  switch i8 %i.an, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph, %.lr.ph
  %.0120.i = add nuw i64 %.0120269.i126, 1        ; 4 uses
  %exitcond.not.i = icmp eq i64 %.0120.i, %1
  br i1 %exitcond.not.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i, !prof !166

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.0120269.i.lcssa125 = phi i64 [ %.0120266.i, %.lr.ph.i.preheader ], [ %.0120.i, %.lr.ph.i ] ; 3 uses
  %.0120.in268.i.lcssa = phi i64 [ %.097284.i, %.lr.ph.i.preheader ], [ %.0120269.i126, %.lr.ph.i ]
  %.lcssa = phi i8 [ %i.ag, %.lr.ph.i.preheader ], [ %i.ak, %.lr.ph.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %.0120269.i.lcssa125 ; 3 uses
  %i.ap = add i64 %.0120.in268.i.lcssa, 2         ; 3 uses
  %.not135271.i = icmp ult i64 %i.ap, %1
  br i1 %.not135271.i, label %.lr.ph273.i, label %.thread186.i, !prof !163

.lr.ph273.i:                                      ; preds = %.lr.ph.i._crit_edge, %bb.l
  %.0131272.i = phi i64 [ %i.at, %bb.l ], [ %i.ap, %.lr.ph.i._crit_edge ] ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %.0131272.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !70  ; 2 uses
  %i.as = add i8 %i.ar, -48
  %or.cond6.i = icmp ult i8 %i.as, 10
  br i1 %or.cond6.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph273.i
  switch i8 %i.ar, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread [
    i8 93, label %.thread186.i
    i8 91, label %.thread186.i
    i8 46, label %.thread186.i
    i8 32, label %.thread186.i
    i8 9, label %.thread186.i
  ]

bb.l:                                             ; preds = %.lr.ph273.i
  %i.at = add nuw i64 %.0131272.i, 1              ; 2 uses
  %exitcond298.not.i = icmp eq i64 %i.at, %1
  br i1 %exitcond298.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph273.i, !prof !166

.thread186.i:                                     ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k, %.lr.ph.i._crit_edge
  %.0131248.i = phi i64 [ %.0131272.i, %bb.k ], [ %.0131272.i, %bb.k ], [ %.0131272.i, %bb.k ], [ %.0131272.i, %bb.k ], [ %.0131272.i, %bb.k ], [ %i.ap, %.lr.ph.i._crit_edge ] ; 8 uses
  %.not136274.i = icmp ult i64 %.0131248.i, %1
  br i1 %.not136274.i, label %.lr.ph276.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, !prof !167

.lr.ph276.i:                                      ; preds = %.thread186.i, %bb.n
  %.198275.i = phi i64 [ %i.ax, %bb.n ], [ %.0131248.i, %.thread186.i ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %.198275.i
  %i.av = load i8, ptr %i.au, align 1, !tbaa !70
  switch i8 %i.av, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread [
    i8 93, label %bb.m
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 32, label %bb.n
    i8 9, label %bb.n
  ], !prof !168

bb.m:                                             ; preds = %.lr.ph276.i
  %i.aw = add nuw i64 %.198275.i, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.n:                                             ; preds = %.lr.ph276.i, %.lr.ph276.i
  %i.ax = add i64 %.198275.i, 1                   ; 2 uses
  %exitcond299.not.i = icmp eq i64 %i.ax, %1
  br i1 %exitcond299.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph276.i, !prof !166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.l, %bb.n, %.lr.ph276.i, %.lr.ph276.i, %bb.m, %.thread186.i
  %.0131248312.i = phi i64 [ %.0131248.i, %bb.m ], [ %.0131248.i, %.thread186.i ], [ %.0131248.i, %bb.n ], [ %.0131248.i, %.lr.ph276.i ], [ %.0131248.i, %.lr.ph276.i ], [ %1, %bb.l ]
  %.3100.i = phi i64 [ %i.aw, %bb.m ], [ %.0131248.i, %.thread186.i ], [ %1, %bb.n ], [ %.198275.i, %.lr.ph276.i ], [ %.198275.i, %.lr.ph276.i ], [ %1, %bb.l ]
  %i.ay = sub i64 %.0131248312.i, %.0120269.i.lcssa125
  %i.az = sub nuw i64 %1, %.0120269.i.lcssa125
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ay) ; 3 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i, 1
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.bb = zext nneg i8 %.lcssa to i64
  %i.bc = add nsw i64 %i.bb, -48
  br label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.speculated.i.i ; 2 uses
  %.not36.i.i.i = icmp samesign eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not36.i.i.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i36.i.i

.lr.ph.i36.i.i:                                   ; preds = %bb.p, %.critedge.i37.i.i
  %.364.i.i = phi ptr [ %i.bs, %.critedge.i37.i.i ], [ %i.ao, %bb.p ] ; 3 uses
  %.9.i.i = phi i64 [ %.10.i.i, %.critedge.i37.i.i ], [ 0, %bb.p ] ; 3 uses
  %.02237.i.i.i = phi i32 [ %i.bg, %.critedge.i37.i.i ], [ 64, %bb.p ]
  %i.be = load i8, ptr %.364.i.i, align 1, !tbaa !70
  %i.bf = add i8 %i.be, -48                       ; 3 uses
  %.not30.i.i.i = icmp ult i8 %i.bf, 10
  br i1 %.not30.i.i.i, label %bb.q, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i

bb.q:                                             ; preds = %.lr.ph.i36.i.i
  %i.bg = add i32 %.02237.i.i.i, -4               ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.r, label %bb.s, !prof !169

bb.r:                                             ; preds = %bb.q
  %i.bi = mul i64 %.9.i.i, 10
  %i.bj = zext nneg i8 %i.bf to i64
  %i.bk = add i64 %i.bi, %i.bj
  br label %.critedge.i37.i.i

bb.s:                                             ; preds = %bb.q
  %i.bl = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.9.i.i, i64 10) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 1
  br i1 %i.bm, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.split.i.i.i, !prof !170

.split.i.i.i:                                     ; preds = %bb.s
  %i.bn = extractvalue { i64, i1 } %i.bl, 0
  %i.bo = zext nneg i8 %i.bf to i64
  %i.bp = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bn, i64 %i.bo) ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  %i.br = extractvalue { i64, i1 } %i.bp, 0
  br i1 %i.bq, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.critedge.i37.i.i, !prof !156

.critedge.i37.i.i:                                ; preds = %.split.i.i.i, %bb.r
  %.10.i.i = phi i64 [ %i.bk, %bb.r ], [ %i.br, %.split.i.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.364.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bd
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i36.i.i, !llvm.loop !9

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i37.i.i, %.lr.ph.i36.i.i
  %.061.i.i = phi ptr [ %.364.i.i, %.lr.ph.i36.i.i ], [ %i.bd, %.critedge.i37.i.i ]
  %.0.i.i = phi i64 [ %.9.i.i, %.lr.ph.i36.i.i ], [ %.10.i.i, %.critedge.i37.i.i ]
  %.not234.i = icmp eq ptr %.061.i.i, %i.ao
  br i1 %.not234.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i, !prof !171

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %bb.o
  %.0.i = phi i64 [ %i.bc, %bb.o ], [ %.0.i.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i ] ; 2 uses
  %i.bt = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 152
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #52, !inline_history !434 ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i52, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.t

bb.t:                                             ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !173
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !174 ; 2 uses
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3
  %i.cf = icmp ult i64 %.0.i, %i.ce
  br i1 %i.cf, label %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit", label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread

"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit": ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.0.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !175 ; 2 uses
  %.not106 = icmp eq ptr %i.ch, null
  br i1 %.not106, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.backedge.i

bb.u:                                             ; preds = %.preheader241.i
  %3 = trunc nuw i8 %.0113282.i to i1
  br i1 %3, label %bb.v, label %4

bb.v:                                             ; preds = %bb.u
  %i.ci = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 144
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #52, !inline_history !435 ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i16, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 48 ; 4 uses
  %.0810.i.i.i.i.i.i.i17 = load ptr, ptr %i.cm, align 8, !tbaa !161 ; 2 uses
  %.not11.i.i.i.i.i.i.i18 = icmp eq ptr %.0810.i.i.i.i.i.i.i17, null
  br i1 %.not11.i.i.i.i.i.i.i18, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i.i19:                           ; preds = %bb.w, %.lr.ph.i.i.i.i.i.i.i19
  %.0813.i.i.i.i.i.i.i20 = phi ptr [ %.08.i.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i.i19 ], [ %.0810.i.i.i.i.i.i.i17, %bb.w ] ; 3 uses
  %.012.i.i.i.i.i.i.i21 = phi ptr [ %.1.i.i.i.i.i.i.i28, %.lr.ph.i.i.i.i.i.i.i19 ], [ %i.cn, %bb.w ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i20, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !68
  %i.cq = icmp slt i64 %i.cp, 0                   ; 2 uses
  %.19.in.v.i.i.i.i.i.i.i26 = select i1 %i.cq, i64 24, i64 16
  %.19.in.i.i.i.i.i.i.i27 = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i20, i64 %.19.in.v.i.i.i.i.i.i.i26
  %.1.i.i.i.i.i.i.i28 = select i1 %i.cq, ptr %.012.i.i.i.i.i.i.i21, ptr %.0813.i.i.i.i.i.i.i20 ; 5 uses
  %.08.i.i.i.i.i.i.i29 = load ptr, ptr %.19.in.i.i.i.i.i.i.i27, align 8, !tbaa !161 ; 2 uses
  %.not.i.i.i.i.i.i.i30 = icmp eq ptr %.08.i.i.i.i.i.i.i29, null
  br i1 %.not.i.i.i.i.i.i.i30, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31, label %.lr.ph.i.i.i.i.i.i.i19, !llvm.loop !8

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i.i19
  %.not.i.i.i.i.i.i32 = icmp eq ptr %.1.i.i.i.i.i.i.i28, %i.cn
  br i1 %.not.i.i.i.i.i.i32, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38, label %bb.x

bb.x:                                             ; preds = %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i28, i64 40
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !68
  %notsub = add i64 %i.cs, -1
  %i.ct = icmp slt i64 %notsub, 0
  %spec.select.i.i.i.i.i.i37 = select i1 %i.ct, ptr %.1.i.i.i.i.i.i.i28, ptr %i.cn
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38: ; preds = %bb.x, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31
  %.sroa.03.0.i.i.i.i.i.i39 = phi ptr [ %.1.i.i.i.i.i.i.i28, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i31 ], [ %spec.select.i.i.i.i.i.i37, %bb.x ] ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.sroa.03.0.i.i.i.i.i.i39, %i.cn
  br i1 %.not.i.i.i40, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51"

"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51": ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i39, i64 96
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !175 ; 2 uses
  %.not105 = icmp eq ptr %i.cv, null
  br i1 %.not105, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %4

4:                                                ; preds = %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51", %bb.u
  %5 = phi ptr [ %i.cv, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51" ], [ %i.ac, %bb.u ]
  %6 = add nuw i64 %.097284.i, 1
  br label %.backedge.i

bb.y:                                             ; preds = %.preheader241.i
  %i.cw = add nuw i64 %.097284.i, 1               ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %1
  br i1 %i.cx, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.y, %bb.z
  %.01116.i.i.i = phi i64 [ %i.da, %bb.z ], [ %i.cw, %bb.y ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %.01116.i.i.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !70
  switch i8 %i.cz, label %bb.z [
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 93, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
  ]

bb.z:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.da = add i64 %.01116.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.da, %1
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !10

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i: ; preds = %bb.z, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.2.i.i.ph.i = phi i64 [ -1, %bb.z ], [ %.01116.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.01116.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.01116.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ]
  %i.db = tail call i64 @llvm.umin.i64(i64 %.2.i.i.ph.i, i64 %1)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, %bb.y
  %.2.i.i.i = phi i64 [ %1, %bb.y ], [ %i.db, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i ] ; 5 uses
  %i.dc = sub i64 %.2.i.i.i, %.097284.i
  %i.dd = sub nuw i64 %1, %.097284.i
  %.sroa.speculated.i143.i = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.dc) ; 6 uses
  br i1 %.0106283.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  %.not235.i = icmp eq i64 %.sroa.speculated.i143.i, 0
  br i1 %.not235.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i: ; preds = %bb.aa, %bb.ab
  %.0710.i.i.i = phi i64 [ %i.dg, %bb.ab ], [ 0, %bb.aa ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.0710.i.i.i
  %i.df = load i8, ptr %i.de, align 1, !tbaa !70
  switch i8 %i.df, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i [
    i8 32, label %bb.ab
    i8 9, label %bb.ab
  ]

bb.ab:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i
  %i.dg = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i149.i = icmp eq i64 %i.dg, %.sroa.speculated.i143.i
  br i1 %exitcond.not.i.i149.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i, !llvm.loop !11

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i
  %i.dh = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.dh, label %.backedge.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread

bb.ac:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  %i.di = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call noundef ptr %i.dk(ptr noundef nonnull align 8 dereferenceable(40) %i.ac) #52, !inline_history !435 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 4 uses
  %.0810.i.i.i.i.i.i.i = load ptr, ptr %i.dm, align 8, !tbaa !161 ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq ptr %.0810.i.i.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i.i.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.ad, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i
  %.0813.i.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i ], [ %.0810.i.i.i.i.i.i.i, %bb.ad ] ; 4 uses
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i ], [ %i.dn, %bb.ad ]
  %i.do = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i, i64 40
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated.i143.i, i64 %i.dp) ; 2 uses
  %i.dq = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dq, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !67
  %i.dt = tail call i32 @memcmp(ptr noundef %i.ds, ptr noundef nonnull readonly %i.ad, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i) #50 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.dv = sub i64 %i.dp, %.sroa.speculated.i143.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.dv, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dt, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dw = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.19.in.v.i.i.i.i.i.i.i = select i1 %i.dw, i64 24, i64 16
  %.19.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i.i.i, i64 %.19.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = select i1 %i.dw, ptr %.012.i.i.i.i.i.i.i, ptr %.0813.i.i.i.i.i.i.i ; 6 uses
  %.08.i.i.i.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i.i.i.i, align 8, !tbaa !161 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !8

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i, %i.dn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 40
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 %.sroa.speculated.i143.i) ; 2 uses
  %i.dz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.ea = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 32
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !67
  %i.ec = tail call i32 @memcmp(ptr noundef nonnull readonly %i.ad, ptr noundef %i.eb, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #50 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.ae
  %i.ee = sub i64 %.sroa.speculated.i143.i, %i.dy
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ee, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ], [ %i.ec, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ]
  %i.ef = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %i.ef, ptr %i.dn, ptr %.1.i.i.i.i.i.i.i
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i
  %.sroa.03.0.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %.sroa.03.0.i.i.i.i.i.i, %i.dn
  br i1 %.not.i.i.i14, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit"

"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit": ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i, i64 96
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !175 ; 2 uses
  %.not107 = icmp eq ptr %i.eh, null
  br i1 %.not107, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %.backedge.i

.backedge.i:                                      ; preds = %bb.ab, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit", %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.aa, %4, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit"
  %7 = phi ptr [ %i.ac, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ %i.eh, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit" ], [ %i.ac, %bb.aa ], [ %i.ch, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit" ], [ %5, %4 ], [ %i.ac, %bb.ab ] ; 3 uses
  %.0113.be.i = phi i8 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ 0, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit" ], [ 0, %bb.aa ], [ 0, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit" ], [ 1, %4 ], [ 0, %bb.ab ] ; 2 uses
  %.0106.be.i = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ false, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit" ], [ false, %bb.aa ], [ true, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit" ], [ false, %4 ], [ false, %bb.ab ]
  %.097.be.i = phi i64 [ %.2.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ %.2.i.i.i, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit" ], [ %.2.i.i.i, %bb.aa ], [ %.3100.i, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit" ], [ %6, %4 ], [ %.2.i.i.i, %bb.ab ] ; 2 uses
  %i.ei = icmp ult i64 %.097.be.i, %1
  br i1 %i.ei, label %.preheader241.i, label %bb.af, !llvm.loop !12

bb.af:                                            ; preds = %.backedge.i
  store ptr %7, ptr %i.a, align 8
  %8 = trunc nuw i8 %.0113.be.i to i1
  br i1 %8, label %bb.ag, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101

bb.ag:                                            ; preds = %bb.af
  %i.ej = call fastcc noundef zeroext i1 @"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_"(ptr noundef nonnull %i.a, i64 0, ptr nonnull @.str.7), !inline_history !436
  br i1 %i.ej, label %._ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101_crit_edge, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread

._ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101_crit_edge: ; preds = %bb.ag
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !175
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101

_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit: ; preds = %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i77, i64 96
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !175 ; 2 uses
  %.not109 = icmp eq ptr %i.el, null
  br i1 %.not109, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101

_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread: ; preds = %bb.ac, %bb.v, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit", %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.p, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %bb.k, %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_18__invokeEPvm.exit", %"_ZZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEEEN3$_08__invokeEPvS6_.exit51", %.preheader.i, %.preheader241.i, %bb.ad, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i, %bb.w, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i38, %bb.t, %.lr.ph, %bb.j, %.lr.ph276.i, %.split.i.i.i, %bb.s, %bb.h, %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i.i.i76, %bb.g, %bb.ag, %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101

_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101: ; preds = %._ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101_crit_edge, %bb.af, %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread, %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit
  %i.em = phi ptr [ %.pre, %._ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101_crit_edge ], [ %7, %bb.af ], [ null, %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread ], [ %i.el, %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ah

bb.ah:                                            ; preds = %bb.e, %bb.c, %bb.a, %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101
  %.sroa.0.2 = phi ptr [ null, %bb.a ], [ %i.em, %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit.thread101 ], [ null, %bb.c ], [ null, %bb.e ]
  ret ptr %.sroa.0.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define ptr @_ZNK4toml2v34node7at_pathESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 dereferenceable(40) %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 %1, ptr readonly %2) #50
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define ptr @_ZN4toml2v37at_pathERKNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr nofree noundef nonnull readonly align 8 dereferenceable(40) %0, i64 %1, ptr nofree readonly captures(address) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @_ZN4toml2v37at_pathERNS0_4nodeESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, ptr %2) #50
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define ptr @_ZN4toml2v34node7at_pathERKNS0_4pathE(ptr nofree noundef nonnull readonly align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = tail call ptr @_ZN4toml2v37at_pathERNS0_4nodeERKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #50
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define ptr @_ZN4toml2v37at_pathERNS0_4nodeERKNS0_4pathE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !75     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(40) %0) #52
  br i1 %i.d, label %.thread73, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !158
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.thread73, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(40) %0) #52 ; 3 uses
  %.not45 = icmp eq ptr %i.m, null
  br i1 %.not45, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !160
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !160
  %i.r = icmp eq ptr %i.o, %i.q
  br i1 %i.r, label %.thread73, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = load ptr, ptr %1, align 8, !tbaa !177    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !177  ; 2 uses
  %.not8687 = icmp eq ptr %i.s, %i.u
  br i1 %.not8687, label %.thread73, label %.lr.ph

bb.g:                                             ; preds = %_ZN4toml2v35array3getEm.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.049.088, i64 40 ; 2 uses
  %.not86 = icmp eq ptr %i.v, %i.u
  br i1 %.not86, label %.thread73, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.03489 = phi ptr [ %.337, %bb.g ], [ %0, %bb.f ] ; 4 uses
  %.sroa.049.088 = phi ptr [ %i.v, %bb.g ], [ %i.s, %bb.f ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.049.088, i64 32
  %i.x = load i8, ptr %i.w, align 8, !tbaa !181
  switch i8 %i.x, label %.thread73 [
    i8 2, label %bb.h
    i8 1, label %bb.k
  ]

bb.h:                                             ; preds = %.lr.ph
  %i.y = load ptr, ptr %.03489, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 152
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %.03489) #52, !inline_history !437 ; 3 uses
  %.not47.not = icmp eq ptr %i.ab, null
  br i1 %.not47.not, label %.thread73, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %.sroa.049.088, align 8, !tbaa !124 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !173
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !174 ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3
  %i.al = icmp ult i64 %i.ac, %i.ak
  br i1 %i.al, label %bb.j, label %.thread73

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ac
  br label %_ZN4toml2v35array3getEm.exit.thread

bb.k:                                             ; preds = %.lr.ph
  %i.an = load ptr, ptr %.03489, align 8, !tbaa !75
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef ptr %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %.03489) #52, !inline_history !438 ; 3 uses
  %.not46.not = icmp eq ptr %i.aq, null
  br i1 %.not46.not, label %.thread73, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %.sroa.049.088, align 8, !tbaa !67 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.049.088, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !68 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 4 uses
  %.0810.i.i.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !161 ; 2 uses
  %.not11.i.i.i.i.i = icmp eq ptr %.0810.i.i.i.i.i, null
  br i1 %.not11.i.i.i.i.i, label %.thread73, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.l, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i
  %.0813.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i ], [ %.0810.i.i.i.i.i, %bb.l ] ; 4 uses
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i ], [ %i.av, %bb.l ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.at, i64 %i.ax) ; 2 uses
  %i.ay = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ay, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67
  %i.bb = tail call i32 @memcmp(ptr noundef %i.ba, ptr noundef readonly %i.ar, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #50 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bd = sub i64 %i.ax, %i.at
  %spec.select7.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i

_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.bb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ]
  %i.be = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0   ; 2 uses
  %.19.in.v.i.i.i.i.i = select i1 %i.be, i64 24, i64 16
  %.19.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 %.19.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = select i1 %i.be, ptr %.012.i.i.i.i.i, ptr %.0813.i.i.i.i.i ; 6 uses
  %.08.i.i.i.i.i = load ptr, ptr %.19.in.i.i.i.i.i, align 8, !tbaa !161 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !8

_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKN4toml2v33keyERKSt17basic_string_viewIcSt11char_traitsIcEEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, %i.av
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 40
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !68 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.at) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.bh, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !67
  %i.bk = tail call i32 @memcmp(ptr noundef readonly %i.ar, ptr noundef %i.bj, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #50 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.m
  %i.bm = sub i64 %i.at, %i.bg
  %spec.select7.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.bm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i

_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ], [ %i.bk, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ]
  %i.bn = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i = select i1 %i.bn, ptr %i.av, ptr %.1.i.i.i.i.i
  br label %_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i

_ZNSt3mapIN4toml2v33keyESt10unique_ptrINS1_4nodeESt14default_deleteIS4_EESt4lessIvESaISt4pairIKS2_S7_EEE4findISt17basic_string_viewIcSt11char_traitsIcEEEEDTcldtdtdefpT4_M_t10_M_find_trfp_EERKT_.exit.i: ; preds = %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i
  %.sroa.03.0.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %_ZNKSt8_Rb_treeIN4toml2v33keyESt4pairIKS2_St10unique_ptrINS1_4nodeESt14default_deleteIS6_EEESt10_Select1stISA_ESt4lessIvESaISA_EE17_M_lower_bound_trISt17basic_string_viewIcSt11char_traitsIcEEvEESt23_Rb_tree_const_iteratorISA_ERKT_.exit.i.i.i.i ], [ %spec.select.i.i.i.i, %_ZNKSt4lessIvEclIRKSt17basic_string_viewIcSt11char_traitsIcEERKN4toml2v33keyEEEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSD_OSE_.exit.i.i.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl18node_deep_equalityEPKNS0_4nodeES4_:bb.a
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !184
  %i.ak = icmp eq i64 %.val25.i.i, %i.aj
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.j:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val27.i.i = load i64, ptr %i.al, align 8      ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !445
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !187 ; 2 uses
  %i.ar = and i64 %.val27.i.i, 9218868437227405312
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ar, 9218868437227405312
  %i.as = and i64 %.val27.i.i, 4503599627370495
  %.not4.i.i.i.i.i.i = icmp ne i64 %i.as, 0
  %.0.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i, %.not4.i.i.i.i.i.i ; 2 uses
  %or.cond.i.i.i.i.i = fcmp ord double %i.aq, 0.000000e+00
  %i.at = bitcast i64 %.val27.i.i to double
  br i1 %or.cond.i.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i, label %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i

_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i: ; preds = %bb.j
  br i1 %.0.i.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.k

_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i: ; preds = %bb.j
  br i1 %.0.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit", label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.k:                                             ; preds = %_ZN4toml2v34impl10fpclassifyERKd.exit13.thr_comm.i.i.i.i.i
  %i.au = fcmp oeq double %i.aq, %i.at
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.l:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val29.i.i = load i8, ptr %i.av, align 8, !tbaa !189, !range !105, !noundef !106
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef ptr %i.ax(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !446
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !189, !range !105, !noundef !106
  %i.bb = icmp eq i8 %.val29.i.i, %i.ba
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.m:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !447 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load i16, ptr %i.bg, align 8, !tbaa !93
  %i.bi = load i16, ptr %i.bf, align 2, !tbaa !93
  %i.bj = icmp eq i16 %i.bh, %i.bi
  br i1 %i.bj, label %bb.n, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !94
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 42
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !94
  %i.bo = icmp eq i8 %i.bl, %i.bn
  br i1 %i.bo, label %bb.o, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !95
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 43
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !95
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.p:                                             ; preds = %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 272
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef ptr %i.bv(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !448 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !97
  %i.ca = load i8, ptr %i.bx, align 4, !tbaa !97
  %i.cb = icmp eq i8 %i.bz, %i.ca
  br i1 %i.cb, label %bb.q, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !98
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bw, i64 41
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !98
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.r, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !99
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 42
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !99
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.s, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !100
  %i.co = getelementptr inbounds nuw i8, ptr %i.bw, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !100
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.t:                                             ; preds = %bb.d
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call noundef ptr %i.cs(ptr noundef nonnull readonly align 8 dereferenceable(40) %1) #52, !inline_history !449 ; 9 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cw = load i16, ptr %i.cv, align 8, !tbaa !93
  %i.cx = load i16, ptr %i.cu, align 2, !tbaa !93
  %i.cy = icmp eq i16 %i.cw, %i.cx
  br i1 %i.cy, label %bb.u, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !94
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 42
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !94
  %i.dd = icmp eq i8 %i.da, %i.dc
  br i1 %i.dd, label %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i:   ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.df = load i8, ptr %i.de, align 1, !tbaa !95
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 43
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !95
  %i.di = icmp eq i8 %i.df, %i.dh
  br i1 %i.di, label %bb.v, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.v:                                             ; preds = %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  %i.dl = load i8, ptr %i.dj, align 4, !tbaa !97
  %i.dm = load i8, ptr %i.dk, align 4, !tbaa !97
  %i.dn = icmp eq i8 %i.dl, %i.dm
  br i1 %i.dn, label %bb.w, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.w:                                             ; preds = %bb.v
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !98
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ct, i64 45
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !98
  %i.ds = icmp eq i8 %i.dp, %i.dr
  br i1 %i.ds, label %bb.x, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.du = load i8, ptr %i.dt, align 2, !tbaa !99
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 46
  %i.dw = load i8, ptr %i.dv, align 2, !tbaa !99
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i:   ; preds = %bb.x
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !100
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 48
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !100
  %i.ec = icmp eq i32 %i.dz, %i.eb
  br i1 %i.ec, label %bb.y, label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.y:                                             ; preds = %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ct, i64 52
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !104, !range !105, !noundef !106 ; 2 uses
  %i.eh = trunc nuw i8 %i.eg to i1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ct, i64 54
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !104, !range !105, !noundef !106
  %i.ek = icmp eq i8 %i.eg, %i.ej                 ; 2 uses
  %brmerge.not.i.i.i.i.i.i.i = and i1 %i.ek, %i.eh
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ed, align 4
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i16, ptr %i.ee, align 4
  %i.el = icmp eq i16 %.sroa.01.0.copyload.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i
  %i.em = select i1 %brmerge.not.i.i.i.i.i.i.i, i1 %i.el, i1 %i.ek
  br label %"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit"

bb.z:                                             ; preds = %bb.d
  unreachable

"_ZNKR4toml2v34node5visitIZNS0_4impl18node_deep_equalityEPKS1_S5_E3$_0EEDcOT_.exit": ; preds = %bb.y, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i, %bb.x, %bb.w, %bb.v, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.thread.i.i.i.i.i, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i, %bb.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e, %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ false, %bb.c ], [ %i.n, %bb.e ], [ %i.r, %bb.f ], [ %i.cq, %bb.s ], [ %i.ak, %bb.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %i.bb, %bb.l ], [ false, %.thread.i.i.i.i.i ], [ %i.bt, %bb.o ], [ false, %bb.g ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ], [ true, %_ZN4toml2v34impl10fpclassifyERKd.exit13.i.i.i.i.i ], [ %i.au, %bb.k ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %_ZN4toml2v3eqERKNS0_4timeES3_.exit.i.i.i.i.i.i ], [ false, %_ZN4toml2v3eqERKNS0_4dateES3_.exit.i.i.i.i.i.i ], [ %i.em, %bb.y ], [ false, %bb.t ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE(i64 %0, ptr %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader241

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br label %.thread203

.preheader241:                                    ; preds = %bb.a, %.backedge
  %.097284 = phi i64 [ %.097.be, %.backedge ], [ 0, %bb.a ] ; 7 uses
  %.0106283 = phi i1 [ %.0106.be, %.backedge ], [ false, %bb.a ]
  %.0113282 = phi i8 [ %.0113.be, %.backedge ], [ 1, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.097284 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !70
  switch i8 %i.d, label %bb.o [
    i8 91, label %.preheader
    i8 46, label %bb.m
    i8 93, label %.thread203
  ], !prof !162

.preheader:                                       ; preds = %.preheader241
  %.0120266 = add nuw i64 %.097284, 1             ; 4 uses
  %.not267 = icmp ult i64 %.0120266, %0
  br i1 %.not267, label %.lr.ph.preheader, label %.thread203, !prof !163

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.0120266
  %i.f = load i8, ptr %i.e, align 1, !tbaa !70    ; 3 uses
  %i.g = add i8 %i.f, -48
  %i.h = icmp ult i8 %i.g, 10
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph344, !prof !164

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.0120
  %i.j = load i8, ptr %i.i, align 1, !tbaa !70    ; 3 uses
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %.lr.ph._crit_edge, label %.lr.ph344, !prof !165

.lr.ph344:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.m = phi i8 [ %i.j, %.lr.ph ], [ %i.f, %.lr.ph.preheader ]
  %.0120269343 = phi i64 [ %.0120, %.lr.ph ], [ %.0120266, %.lr.ph.preheader ] ; 2 uses
  switch i8 %i.m, label %.thread203 [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph344, %.lr.ph344
  %.0120 = add nuw i64 %.0120269343, 1            ; 4 uses
  %exitcond.not = icmp eq i64 %.0120, %0
  br i1 %exitcond.not, label %.thread203, label %.lr.ph, !prof !166

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.0120269.lcssa = phi i64 [ %.0120266, %.lr.ph.preheader ], [ %.0120, %.lr.ph ] ; 3 uses
  %.0120.in268.lcssa = phi i64 [ %.097284, %.lr.ph.preheader ], [ %.0120269343, %.lr.ph ]
  %.lcssa = phi i8 [ %i.f, %.lr.ph.preheader ], [ %i.j, %.lr.ph ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.0120269.lcssa ; 3 uses
  %i.o = add i64 %.0120.in268.lcssa, 2            ; 3 uses
  %.not135271 = icmp ult i64 %i.o, %0
  br i1 %.not135271, label %.lr.ph273, label %.thread186, !prof !163

.lr.ph273:                                        ; preds = %.lr.ph._crit_edge, %bb.e
  %.0131272 = phi i64 [ %i.s, %bb.e ], [ %i.o, %.lr.ph._crit_edge ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0131272
  %i.q = load i8, ptr %i.p, align 1, !tbaa !70    ; 2 uses
  %i.r = add i8 %i.q, -48
  %or.cond6 = icmp ult i8 %i.r, 10
  br i1 %or.cond6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph273
  switch i8 %i.q, label %.thread203 [
    i8 93, label %.thread186
    i8 91, label %.thread186
    i8 46, label %.thread186
    i8 32, label %.thread186
    i8 9, label %.thread186
  ]

bb.e:                                             ; preds = %.lr.ph273
  %i.s = add nuw i64 %.0131272, 1                 ; 2 uses
  %exitcond298.not = icmp eq i64 %i.s, %0
  br i1 %exitcond298.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.lr.ph273, !prof !166

.thread186:                                       ; preds = %.lr.ph._crit_edge, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.0131248 = phi i64 [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %.0131272, %bb.d ], [ %i.o, %.lr.ph._crit_edge ] ; 8 uses
  %.not136274 = icmp ult i64 %.0131248, %0
  br i1 %.not136274, label %.lr.ph276, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, !prof !167

.lr.ph276:                                        ; preds = %.thread186, %bb.g
  %.198275 = phi i64 [ %i.w, %bb.g ], [ %.0131248, %.thread186 ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.198275
  %i.u = load i8, ptr %i.t, align 1, !tbaa !70
  switch i8 %i.u, label %.thread203 [
    i8 93, label %bb.f
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
    i8 32, label %bb.g
    i8 9, label %bb.g
  ], !prof !168

bb.f:                                             ; preds = %.lr.ph276
  %i.v = add nuw i64 %.198275, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.g:                                             ; preds = %.lr.ph276, %.lr.ph276
  %i.w = add i64 %.198275, 1                      ; 2 uses
  %exitcond299.not = icmp eq i64 %i.w, %0
  br i1 %exitcond299.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit, label %.lr.ph276, !prof !166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.e, %.lr.ph276, %.lr.ph276, %bb.g, %bb.f, %.thread186
  %.0131248312 = phi i64 [ %.0131248, %bb.f ], [ %.0131248, %.thread186 ], [ %.0131248, %.lr.ph276 ], [ %.0131248, %bb.g ], [ %.0131248, %.lr.ph276 ], [ %0, %bb.e ]
  %.3100 = phi i64 [ %i.v, %bb.f ], [ %.0131248, %.thread186 ], [ %.198275, %.lr.ph276 ], [ %.198275, %.lr.ph276 ], [ %0, %bb.g ], [ %0, %bb.e ]
  %i.x = sub i64 %.0131248312, %.0120269.lcssa
  %i.y = sub nuw i64 %0, %.0120269.lcssa
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.x) ; 3 uses
  %i.z = icmp eq i64 %.sroa.speculated.i, 1
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.aa = zext nneg i8 %.lcssa to i64
  %i.ab = add nsw i64 %i.aa, -48
  br label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit

bb.i:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.speculated.i ; 2 uses
  %.not36.i.i = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %.not36.i.i, label %.thread203, label %.lr.ph.i36.i

.lr.ph.i36.i:                                     ; preds = %bb.i, %.critedge.i37.i
  %.364.i = phi ptr [ %i.ar, %.critedge.i37.i ], [ %i.n, %bb.i ] ; 3 uses
  %.9.i = phi i64 [ %.10.i, %.critedge.i37.i ], [ 0, %bb.i ] ; 3 uses
  %.02237.i.i = phi i32 [ %i.af, %.critedge.i37.i ], [ 64, %bb.i ]
  %i.ad = load i8, ptr %.364.i, align 1, !tbaa !70
  %i.ae = add i8 %i.ad, -48                       ; 3 uses
  %.not30.i.i = icmp ult i8 %i.ae, 10
  br i1 %.not30.i.i, label %bb.j, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i

bb.j:                                             ; preds = %.lr.ph.i36.i
  %i.af = add i32 %.02237.i.i, -4                 ; 2 uses
  %i.ag = icmp sgt i32 %i.af, -1
  br i1 %i.ag, label %bb.k, label %bb.l, !prof !169

bb.k:                                             ; preds = %bb.j
  %i.ah = mul i64 %.9.i, 10
  %i.ai = zext nneg i8 %i.ae to i64
  %i.aj = add i64 %i.ah, %i.ai
  br label %.critedge.i37.i

bb.l:                                             ; preds = %bb.j
  %i.ak = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.9.i, i64 10) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %.thread203, label %.split.i.i, !prof !170

.split.i.i:                                       ; preds = %bb.l
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %i.an = zext nneg i8 %i.ae to i64
  %i.ao = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.am, i64 %i.an) ; 2 uses
  %i.ap = extractvalue { i64, i1 } %i.ao, 1
  %i.aq = extractvalue { i64, i1 } %i.ao, 0
  br i1 %i.ap, label %.thread203, label %.critedge.i37.i, !prof !156

.critedge.i37.i:                                  ; preds = %.split.i.i, %bb.k
  %.10.i = phi i64 [ %i.aj, %bb.k ], [ %i.aq, %.split.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.364.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.ac
  br i1 %.not.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, label %.lr.ph.i36.i, !llvm.loop !9

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i: ; preds = %.critedge.i37.i, %.lr.ph.i36.i
  %.061.i = phi ptr [ %.364.i, %.lr.ph.i36.i ], [ %i.ac, %.critedge.i37.i ]
  %.0.i = phi i64 [ %.9.i, %.lr.ph.i36.i ], [ %.10.i, %.critedge.i37.i ]
  %.not234 = icmp eq ptr %.061.i, %i.n
  br i1 %.not234, label %.thread203, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, !prof !171

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, %bb.h
  %.0 = phi i64 [ %i.ab, %bb.h ], [ %.0.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i ]
  %i.as = tail call noundef zeroext i1 %4(ptr noundef %2, i64 noundef %.0)
  br i1 %i.as, label %.backedge, label %.thread203

bb.m:                                             ; preds = %.preheader241
  %5 = trunc nuw i8 %.0113282 to i1
  br i1 %5, label %bb.n, label %6

bb.n:                                             ; preds = %bb.m
  %i.at = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br i1 %i.at, label %6, label %.thread203

6:                                                ; preds = %bb.n, %bb.m
  %7 = add nuw i64 %.097284, 1
  br label %.backedge

bb.o:                                             ; preds = %.preheader241
  %i.au = add nuw i64 %.097284, 1                 ; 2 uses
  %i.av = icmp ult i64 %i.au, %0
  br i1 %i.av, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.o, %bb.p
  %.01116.i.i = phi i64 [ %i.ay, %bb.p ], [ %i.au, %bb.o ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.01116.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !70
  switch i8 %i.ax, label %bb.p [
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit
    i8 93, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit
  ]

bb.p:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.ay = add i64 %.01116.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ay, %0
  br i1 %exitcond.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !10

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.p
  %.2.i.i.ph = phi i64 [ -1, %bb.p ], [ %.01116.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.01116.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.01116.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ]
  %i.az = tail call i64 @llvm.umin.i64(i64 %.2.i.i.ph, i64 %0)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit, %bb.o
  %.2.i.i = phi i64 [ %0, %bb.o ], [ %i.az, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit ] ; 5 uses
  %i.ba = sub i64 %.2.i.i, %.097284
  %i.bb = sub nuw i64 %0, %.097284
  %.sroa.speculated.i143 = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.ba) ; 3 uses
  br i1 %.0106283, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit
  %.not235 = icmp eq i64 %.sroa.speculated.i143, 0
  br i1 %.not235, label %.backedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147:  ; preds = %bb.q, %bb.r
  %.0710.i.i = phi i64 [ %i.be, %bb.r ], [ 0, %bb.q ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0710.i.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !70
  switch i8 %i.bd, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit [
    i8 32, label %bb.r
    i8 9, label %bb.r
  ]

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147
  %i.be = add nuw i64 %.0710.i.i, 1               ; 2 uses
  %exitcond.not.i.i149 = icmp eq i64 %i.be, %.sroa.speculated.i143
  br i1 %exitcond.not.i.i149, label %.backedge, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147, !llvm.loop !11

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147
  %i.bf = icmp eq i64 %.0710.i.i, -1
  br i1 %i.bf, label %.backedge, label %.thread203

bb.s:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit
  %i.bg = tail call noundef zeroext i1 %3(ptr noundef %2, i64 %.sroa.speculated.i143, ptr nonnull %i.c)
  br i1 %i.bg, label %.backedge, label %.thread203

.backedge:                                        ; preds = %bb.r, %6, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, %bb.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %bb.q
  %.0113.be = phi i8 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ 0, %bb.s ], [ 0, %bb.q ], [ 0, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ 1, %6 ], [ 0, %bb.r ] ; 2 uses
  %.0106.be = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ false, %bb.s ], [ false, %bb.q ], [ true, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ false, %6 ], [ false, %bb.r ]
  %.097.be = phi i64 [ %.2.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ %.2.i.i, %bb.s ], [ %.2.i.i, %bb.q ], [ %.3100, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ %7, %6 ], [ %.2.i.i, %bb.r ] ; 2 uses
  %i.bh = icmp ult i64 %.097.be, %0
  br i1 %i.bh, label %.preheader241, label %bb.t, !llvm.loop !12

bb.t:                                             ; preds = %.backedge
  %8 = trunc nuw i8 %.0113.be to i1
  br i1 %8, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bi = tail call noundef zeroext i1 %3(ptr noundef %2, i64 0, ptr nonnull @.str.7)
  br i1 %i.bi, label %bb.v, label %.thread203

bb.v:                                             ; preds = %bb.u, %bb.t
  br label %.thread203

.thread203:                                       ; preds = %.preheader241, %bb.s, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit, %bb.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i, %bb.d, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit, %bb.n, %.preheader, %bb.c, %.lr.ph344, %.lr.ph276, %bb.l, %.split.i.i, %bb.v, %bb.u, %bb.b
  %.18 = phi i1 [ %i.b, %bb.b ], [ false, %bb.u ], [ false, %.lr.ph276 ], [ false, %bb.c ], [ false, %bb.l ], [ true, %bb.v ], [ false, %.split.i.i ], [ false, %.lr.ph344 ], [ false, %.preheader ], [ false, %bb.n ], [ false, %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit ], [ false, %bb.d ], [ false, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i ], [ false, %bb.i ], [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit ], [ false, %bb.s ], [ false, %.preheader241 ]
  ret i1 %.18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #50 ; 0 uses
  tail call void @_ZSt9terminatev() #53
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v314path_componentC2Ev(ptr noundef nonnull align 8 dereferenceable(33) initializes((32, 33)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i.i.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.a, align 8, !tbaa !181
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !87
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !68
  store i8 0, ptr %i.b, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4toml2v314path_componentC2Em(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(33) initializes((0, 8), (32, 33)) %0, i64 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %i.a, align 8, !tbaa !181
  store i64 %1, ptr %0, align 8, !tbaa !124
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314path_componentC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) initializes((32, 33)) %0, i64 %1, ptr nofree readonly captures(address_is_null) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.b, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !87
  %i.d = icmp eq ptr %2, null
  %i.e = icmp ne i64 %1, 0
  %or.cond.i.i.i.i = and i1 %i.e, %i.d
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %1, ptr %i.a, align 8, !tbaa !124
  %i.f = icmp ugt i64 %1, 15
  br i1 %i.f, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !67
  %i.h = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.h, ptr %i.c, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %1, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.j = load i8, ptr %2, align 1, !tbaa !70
  store i8 %i.j, ptr %i.i, align 1, !tbaa !70
  br label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %2, i64 %1, i1 false)
  br label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit

_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.c, %bb.d
  %i.k = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !68
  %i.m = load ptr, ptr %0, align 8, !tbaa !67
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v314path_componentC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(33) initializes((32, 33)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !181   ; 3 uses
  store i8 %i.d, ptr %i.b, align 8, !tbaa !181
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !124
  store i64 %i.f, ptr %0, align 8, !tbaa !124
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.d, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !67     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68   ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !87
  %i.l = icmp eq ptr %i.h, null
  %i.m = icmp ne i64 %i.j, 0
  %or.cond.i.i.i.i = and i1 %i.l, %i.m
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
  unreachable

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  store i64 %i.j, ptr %i.a, align 8, !tbaa !124
  %i.n = icmp ugt i64 %i.j, 15
  br i1 %i.n, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !67
  %i.p = load i64, ptr %i.a, align 8, !tbaa !124
  store i64 %i.p, ptr %i.k, align 8, !tbaa !70
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i.i.i, %bb.d
  %i.q = phi ptr [ %i.o, %.noexc.i.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  switch i64 %i.j, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = load i8, ptr %i.h, align 1, !tbaa !70
  store i8 %i.r, ptr %i.q, align 1, !tbaa !70
  br label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit

_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.e, %bb.f
  %i.s = load i64, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !68
  %i.u = load ptr, ptr %0, align 8, !tbaa !67
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.g

bb.g:                                             ; preds = %_ZN4toml2v314path_component9store_keyESt17basic_string_viewIcSt11char_traitsIcEERNS1_9storage_tE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4toml2v314path_componentC2EOS1_(ptr noundef nonnull align 8 dereferenceable(33) initializes((32, 33)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !181   ; 3 uses
  store i8 %i.d, ptr %i.b, align 8, !tbaa !181
  %i.e = icmp eq i8 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8, !tbaa !124
  store i64 %i.f, ptr %0, align 8, !tbaa !124
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.d, 1
  tail call void @llvm.assume(i1 %i.g)
  %i.h = load ptr, ptr %1, align 8, !tbaa !67     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68   ; 5 uses
end_hunk_1
begin_hunk_2_@_ZNK4toml2v34path8print_toERSo:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !70
  %i.al = zext i32 %.01819.i.i.i to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !70
  %i.an = load i8, ptr %i.ai, align 2, !tbaa !70
  %i.ao = add i32 %.01819.i.i.i, -1
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ap
  store i8 %i.an, ptr %i.aq, align 1, !tbaa !70
  %i.ar = add i32 %.01819.i.i.i, -2
  %i.as = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.as, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !14

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.n
  %.0.lcssa.i.i.i = phi i64 [ %i.p, %bb.n ], [ %i.ah, %.lr.ph.i9.i.i ] ; 3 uses
  %i.at = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.at, label %bb.o, label %._crit_edge.i.i.i.thread

bb.o:                                             ; preds = %._crit_edge.i.i.i
  %i.au = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.av = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !70
  store i8 %i.ax, ptr %i.f, align 1, !tbaa !70
  %i.ay = load i8, ptr %i.av, align 2, !tbaa !70
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.g, %._crit_edge.i.i.i
  %.0.lcssa.i.i.i34 = phi i64 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.p, %bb.g ]
  %i.az = phi i64 [ %i.ab, %._crit_edge.i.i.i ], [ 1, %bb.g ]
  %i.ba = trunc nuw nsw i64 %.0.lcssa.i.i.i34 to i8
  %i.bb = or disjoint i8 %i.ba, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i: ; preds = %._crit_edge.i.i.i.thread, %bb.o
  %i.bc = phi i64 [ %i.az, %._crit_edge.i.i.i.thread ], [ %i.ab, %bb.o ]
  %.sink109.i = phi i8 [ %i.bb, %._crit_edge.i.i.i.thread ], [ %i.ay, %bb.o ]
  store i8 %.sink109.i, ptr %i.a, align 16, !tbaa !70
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bc
  br label %_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit

_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit: ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i
  %.pn63.i = phi ptr [ %i.e, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i ], [ %i.bd, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split.i ]
  %i.be = ptrtoint ptr %.pn63.i to i64
  %i.bf = sub i64 %i.be, %i.g
  %i.bg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %i.bf) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZN4toml2v34impl15print_to_streamERSomNS0_11value_flagsEm.exit

_ZN4toml2v34impl15print_to_streamERSomNS0_11value_flagsEm.exit: ; preds = %.preheader, %_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i.exit
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 93) ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %_ZN4toml2v34impl15print_to_streamERSomNS0_11value_flagsEm.exit, %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.021, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bi, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4toml2v34path5equalERKS1_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !191  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !192    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191
  %i.i = load ptr, ptr %1, align 8, !tbaa !192    ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp eq i64 %i.f, %i.l
  br i1 %i.m, label %bb.b, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.b:                                             ; preds = %bb.a
  %.not12.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not12.i.i.i.i.i, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i
  %.014.i.i.i.i.i = phi ptr [ %i.ag, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i ], [ %i.i, %bb.b ] ; 5 uses
  %.0813.i.i.i.i.i = phi ptr [ %i.af, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i ], [ %i.c, %bb.b ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 32
  %i.o = load i8, ptr %i.n, align 8, !tbaa !181   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !181
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, %i.q
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.r = icmp eq i8 %i.o, 2
  br i1 %i.r, label %_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i8 %i.o, 1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !68   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.e, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i64 %i.u, 0
  br i1 %i.y, label %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.e
  %i.z = load ptr, ptr %.014.i.i.i.i.i, align 8, !tbaa !67
  %i.aa = load ptr, ptr %.0813.i.i.i.i.i, align 8, !tbaa !67
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.aa, ptr %i.z, i64 %i.u)
  %i.ab = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ac = load i64, ptr %.0813.i.i.i.i.i, align 8, !tbaa !124
  %i.ad = load i64, ptr %.014.i.i.i.i.i, align 8, !tbaa !124
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit

_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i: ; preds = %_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0813.i.i.i.i.i, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !450

_ZSteqIN4toml2v314path_componentESaIS2_EEbRKSt6vectorIT_T0_ES9_.exit: ; preds = %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i, %bb.b, %bb.a
  %i.ah = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.i.i.i.i.i ], [ true, %_ZN4toml2v314path_component5equalERKS1_S3_.exit.thread10.i.i.i.i.i ], [ false, %.split.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i ], [ false, %bb.d ]
  ret i1 %i.ah
}

; Function Attrs: mustprogress uwtable
define void @_ZN4toml2v34pathC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) initializes((0, 24)) %0, i64 %1, ptr %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EE(i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #50
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 17 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 4 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !192
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = sdiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = icmp eq i64 %0, 0
  br i1 %i.i, label %bb.b, label %.preheader241.i.preheader

.preheader241.i.preheader:                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %.preheader241.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 0, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.7, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !193
  %.not.i.i.i12 = icmp eq ptr %i.c, %i.o
  br i1 %.not.i.i.i12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i64 0, ptr nonnull @.str.7)
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %i.q, ptr %i.b, align 8, !tbaa !191
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit13"

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit13"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit13": ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

.preheader241.i:                                  ; preds = %.preheader241.i.preheader, %.backedge.i
  %.097284.i = phi i64 [ %.097.be.i, %.backedge.i ], [ 0, %.preheader241.i.preheader ] ; 7 uses
  %.0106283.i = phi i1 [ %.0106.be.i, %.backedge.i ], [ false, %.preheader241.i.preheader ]
  %.0113282.i = phi i8 [ %.0113.be.i, %.backedge.i ], [ 1, %.preheader241.i.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.097284.i ; 4 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !70
  switch i8 %i.s, label %bb.u [
    i8 91, label %.preheader.i
    i8 46, label %bb.q
    i8 93, label %.loopexit
  ], !prof !162

.preheader.i:                                     ; preds = %.preheader241.i
  %.0120266.i = add nuw i64 %.097284.i, 1         ; 4 uses
  %.not267.i = icmp ult i64 %.0120266.i, %0
  br i1 %.not267.i, label %.lr.ph.i.preheader, label %.loopexit, !prof !163

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.0120266.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !70    ; 3 uses
  %i.v = add i8 %i.u, -48
  %i.w = icmp ult i8 %i.v, 10
  br i1 %i.w, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !164

.lr.ph.i:                                         ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.0120.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !70    ; 3 uses
  %i.z = add i8 %i.y, -48
  %i.aa = icmp ult i8 %i.z, 10
  br i1 %i.aa, label %.lr.ph.i._crit_edge, label %.lr.ph, !prof !165

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ab = phi i8 [ %i.y, %.lr.ph.i ], [ %i.u, %.lr.ph.i.preheader ]
  %.0120269.i33 = phi i64 [ %.0120.i, %.lr.ph.i ], [ %.0120266.i, %.lr.ph.i.preheader ] ; 2 uses
  switch i8 %i.ab, label %.loopexit [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %.0120.i = add nuw i64 %.0120269.i33, 1         ; 4 uses
  %exitcond.not.i = icmp eq i64 %.0120.i, %0
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !prof !166

.lr.ph.i._crit_edge:                              ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %.0120269.i.lcssa32 = phi i64 [ %.0120266.i, %.lr.ph.i.preheader ], [ %.0120.i, %.lr.ph.i ] ; 3 uses
  %.0120.in268.i.lcssa = phi i64 [ %.097284.i, %.lr.ph.i.preheader ], [ %.0120269.i33, %.lr.ph.i ]
  %.lcssa = phi i8 [ %i.u, %.lr.ph.i.preheader ], [ %i.y, %.lr.ph.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %.0120269.i.lcssa32 ; 3 uses
  %i.ad = add i64 %.0120.in268.i.lcssa, 2         ; 3 uses
  %.not135271.i = icmp ult i64 %i.ad, %0
  br i1 %.not135271.i, label %.lr.ph273.i, label %.thread186.i, !prof !163

.lr.ph273.i:                                      ; preds = %.lr.ph.i._crit_edge, %bb.g
  %.0131272.i = phi i64 [ %i.ah, %bb.g ], [ %i.ad, %.lr.ph.i._crit_edge ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.0131272.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !70  ; 2 uses
  %i.ag = add i8 %i.af, -48
  %or.cond6.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond6.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph273.i
  switch i8 %i.af, label %.loopexit [
    i8 93, label %.thread186.i
    i8 91, label %.thread186.i
    i8 46, label %.thread186.i
    i8 32, label %.thread186.i
    i8 9, label %.thread186.i
  ]

bb.g:                                             ; preds = %.lr.ph273.i
  %i.ah = add nuw i64 %.0131272.i, 1              ; 2 uses
  %exitcond298.not.i = icmp eq i64 %i.ah, %0
  br i1 %exitcond298.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph273.i, !prof !166

.thread186.i:                                     ; preds = %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %.lr.ph.i._crit_edge
  %.0131248.i = phi i64 [ %.0131272.i, %bb.f ], [ %.0131272.i, %bb.f ], [ %.0131272.i, %bb.f ], [ %.0131272.i, %bb.f ], [ %.0131272.i, %bb.f ], [ %i.ad, %.lr.ph.i._crit_edge ] ; 8 uses
  %.not136274.i = icmp ult i64 %.0131248.i, %0
  br i1 %.not136274.i, label %.lr.ph276.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, !prof !167

.lr.ph276.i:                                      ; preds = %.thread186.i, %bb.i
  %.198275.i = phi i64 [ %i.al, %bb.i ], [ %.0131248.i, %.thread186.i ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %.198275.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !70
  switch i8 %i.aj, label %.loopexit [
    i8 93, label %bb.h
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 32, label %bb.i
    i8 9, label %bb.i
  ], !prof !168

bb.h:                                             ; preds = %.lr.ph276.i
  %i.ak = add nuw i64 %.198275.i, 1
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i

bb.i:                                             ; preds = %.lr.ph276.i, %.lr.ph276.i
  %i.al = add i64 %.198275.i, 1                   ; 2 uses
  %exitcond299.not.i = icmp eq i64 %i.al, %0
  br i1 %exitcond299.not.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i, label %.lr.ph276.i, !prof !166

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %bb.g, %bb.i, %.lr.ph276.i, %.lr.ph276.i, %bb.h, %.thread186.i
  %.0131248312.i = phi i64 [ %.0131248.i, %bb.h ], [ %.0131248.i, %.thread186.i ], [ %.0131248.i, %bb.i ], [ %.0131248.i, %.lr.ph276.i ], [ %.0131248.i, %.lr.ph276.i ], [ %0, %bb.g ]
  %.3100.i = phi i64 [ %i.ak, %bb.h ], [ %.0131248.i, %.thread186.i ], [ %0, %bb.i ], [ %.198275.i, %.lr.ph276.i ], [ %.198275.i, %.lr.ph276.i ], [ %0, %bb.g ]
  %i.am = sub i64 %.0131248312.i, %.0120269.i.lcssa32
  %i.an = sub nuw i64 %0, %.0120269.i.lcssa32
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.an, i64 %i.am) ; 3 uses
  %i.ao = icmp eq i64 %.sroa.speculated.i.i, 1
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ap = zext nneg i8 %.lcssa to i64
  %i.aq = add nsw i64 %i.ap, -48
  br label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i

bb.k:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.speculated.i.i ; 2 uses
  %.not36.i.i.i = icmp samesign eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not36.i.i.i, label %.loopexit, label %.lr.ph.i36.i.i

.lr.ph.i36.i.i:                                   ; preds = %bb.k, %.critedge.i37.i.i
  %.364.i.i = phi ptr [ %i.bg, %.critedge.i37.i.i ], [ %i.ac, %bb.k ] ; 3 uses
  %.9.i.i = phi i64 [ %.10.i.i, %.critedge.i37.i.i ], [ 0, %bb.k ] ; 3 uses
  %.02237.i.i.i = phi i32 [ %i.au, %.critedge.i37.i.i ], [ 64, %bb.k ]
  %i.as = load i8, ptr %.364.i.i, align 1, !tbaa !70
  %i.at = add i8 %i.as, -48                       ; 3 uses
  %.not30.i.i.i = icmp ult i8 %i.at, 10
  br i1 %.not30.i.i.i, label %bb.l, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i

bb.l:                                             ; preds = %.lr.ph.i36.i.i
  %i.au = add i32 %.02237.i.i.i, -4               ; 2 uses
  %i.av = icmp sgt i32 %i.au, -1
  br i1 %i.av, label %bb.m, label %bb.n, !prof !169

bb.m:                                             ; preds = %bb.l
  %i.aw = mul i64 %.9.i.i, 10
  %i.ax = zext nneg i8 %i.at to i64
  %i.ay = add i64 %i.aw, %i.ax
  br label %.critedge.i37.i.i

bb.n:                                             ; preds = %bb.l
  %i.az = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.9.i.i, i64 10) ; 2 uses
  %i.ba = extractvalue { i64, i1 } %i.az, 1
  br i1 %i.ba, label %.loopexit, label %.split.i.i.i, !prof !170

.split.i.i.i:                                     ; preds = %bb.n
  %i.bb = extractvalue { i64, i1 } %i.az, 0
  %i.bc = zext nneg i8 %i.at to i64
  %i.bd = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bb, i64 %i.bc) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  br i1 %i.be, label %.loopexit, label %.critedge.i37.i.i, !prof !156

.critedge.i37.i.i:                                ; preds = %.split.i.i.i, %bb.m
  %.10.i.i = phi i64 [ %i.ay, %bb.m ], [ %i.bf, %.split.i.i.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.364.i.i, i64 1 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bg, %i.ar
  br i1 %.not.i.i.i, label %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, label %.lr.ph.i36.i.i, !llvm.loop !9

_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i: ; preds = %.critedge.i37.i.i, %.lr.ph.i36.i.i
  %.061.i.i = phi ptr [ %.364.i.i, %.lr.ph.i36.i.i ], [ %i.ar, %.critedge.i37.i.i ]
  %.0.i.i = phi i64 [ %.9.i.i, %.lr.ph.i36.i.i ], [ %.10.i.i, %.critedge.i37.i.i ]
  %.not234.i = icmp eq ptr %.061.i.i, %i.ac
  br i1 %.not234.i, label %.loopexit, label %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i, !prof !171

_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i: ; preds = %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %bb.j
  %.0.i = phi i64 [ %i.aq, %bb.j ], [ %.0.i.i, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.0.i, ptr %i.a, align 8, !tbaa !124
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !191 ; 3 uses
  %i.bi = load ptr, ptr %i.k, align 8, !tbaa !193
  %.not.i.i.i11 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i11, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i
  call void @_ZN4toml2v314path_componentC1Em(ptr noundef nonnull align 8 dereferenceable(33) %i.bh, i64 noundef %.0.i) #50
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr %i.bk, ptr %i.b, align 8, !tbaa !191
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit"

bb.p:                                             ; preds = %_ZSt10from_charsImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt17from_chars_resultE4typeEPKcSQ_RS4_i.exit.i
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit": ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.backedge.i

bb.q:                                             ; preds = %.preheader241.i
  %7 = trunc nuw i8 %.0113282.i to i1
  br i1 %7, label %bb.r, label %8

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %4, align 8
  store ptr @.str.7, ptr %i.j, align 8
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !191 ; 3 uses
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !193
  %.not.i.i.i9 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i.i.i9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.bl, i64 0, ptr nonnull @.str.7)
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !191
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10"

bb.t:                                             ; preds = %bb.r
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %4)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10": ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %8

8:                                                ; preds = %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit10", %bb.q
  %9 = add nuw i64 %.097284.i, 1
  br label %.backedge.i

bb.u:                                             ; preds = %.preheader241.i
  %i.bp = add nuw i64 %.097284.i, 1               ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %0
  br i1 %i.bq, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.u, %bb.v
  %.01116.i.i.i = phi i64 [ %i.bt, %bb.v ], [ %i.bp, %bb.u ] ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.01116.i.i.i
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !70
  switch i8 %i.bs, label %bb.v [
    i8 46, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 91, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
    i8 93, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i
  ]

bb.v:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.bt = add i64 %.01116.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bt, %0
  br i1 %exitcond.not.i.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !10

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i: ; preds = %bb.v, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.2.i.i.ph.i = phi i64 [ -1, %bb.v ], [ %.01116.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.01116.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ], [ %.01116.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i ]
  %i.bu = call i64 @llvm.umin.i64(i64 %.2.i.i.ph.i, i64 %0)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i, %bb.u
  %.2.i.i.i = phi i64 [ %0, %bb.u ], [ %i.bu, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.loopexit.i ] ; 5 uses
  %i.bv = sub i64 %.2.i.i.i, %.097284.i
  %i.bw = sub nuw i64 %0, %.097284.i
  %.sroa.speculated.i143.i = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bv) ; 4 uses
  br i1 %.0106283.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  %.not235.i = icmp eq i64 %.sroa.speculated.i143.i, 0
  br i1 %.not235.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i: ; preds = %bb.w, %bb.x
  %.0710.i.i.i = phi i64 [ %i.bz, %bb.x ], [ 0, %bb.w ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 %.0710.i.i.i
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !70
  switch i8 %i.by, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i [
    i8 32, label %bb.x
    i8 9, label %bb.x
  ]

bb.x:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i
  %i.bz = add nuw i64 %.0710.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i149.i = icmp eq i64 %i.bz, %.sroa.speculated.i143.i
  br i1 %exitcond.not.i.i149.i, label %.backedge.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i, !llvm.loop !11

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i147.i
  %i.ca = icmp eq i64 %.0710.i.i.i, -1
  br i1 %i.ca, label %.backedge.i, label %.loopexit

bb.y:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofES2_m.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %.sroa.speculated.i143.i, ptr %5, align 8
  store ptr %i.r, ptr %i.l, align 8
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !191 ; 3 uses
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !193
  %.not.i.i.i7 = icmp eq ptr %i.cb, %i.cc
  br i1 %.not.i.i.i7, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.cb, i64 %.sroa.speculated.i143.i, ptr nonnull %i.r)
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store ptr %i.ce, ptr %i.b, align 8, !tbaa !191
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8"

bb.aa:                                            ; preds = %bb.y
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %5)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8": ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.x, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8", %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit", %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %bb.w, %8
  %.0113.be.i = phi i8 [ 0, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ 0, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8" ], [ 0, %bb.w ], [ 0, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit" ], [ 1, %8 ], [ 0, %bb.x ] ; 2 uses
  %.0106.be.i = phi i1 [ false, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ false, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8" ], [ false, %bb.w ], [ true, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit" ], [ false, %8 ], [ false, %bb.x ]
  %.097.be.i = phi i64 [ %.2.i.i.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i ], [ %.2.i.i.i, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit8" ], [ %.2.i.i.i, %bb.w ], [ %.3100.i, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_18__invokeEPvm.exit" ], [ %9, %8 ], [ %.2.i.i.i, %bb.x ] ; 2 uses
  %i.cf = icmp ult i64 %.097.be.i, %0
  br i1 %i.cf, label %.preheader241.i, label %bb.ab, !llvm.loop !12

bb.ab:                                            ; preds = %.backedge.i
  %10 = trunc nuw i8 %.0113.be.i to i1
  br i1 %10, label %bb.ac, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 0, ptr %6, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.7, ptr %i.cg, align 8
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !191 ; 3 uses
  %i.ci = load ptr, ptr %i.k, align 8, !tbaa !193
  %.not.i.i.i6 = icmp eq ptr %i.ch, %i.ci
  br i1 %.not.i.i.i6, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN4toml2v314path_componentC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(33) %i.ch, i64 0, ptr nonnull @.str.7)
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !191
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store ptr %i.ck, ptr %i.b, align 8, !tbaa !191
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit"

bb.ae:                                            ; preds = %bb.ac
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_realloc_insertIJRSt17basic_string_viewIcSt11char_traitsIcEEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %6)
  br label %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit"

"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit": ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

.loopexit:                                        ; preds = %bb.k, %_ZNSt8__detail22__from_chars_pow2_baseILb1EmEEbRPKcS2_RT0_i.exit.i.i, %.preheader.i, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE17find_first_not_ofEPKcm.exit.i, %.preheader241.i, %bb.f, %bb.e, %.lr.ph, %.lr.ph276.i, %bb.n, %.split.i.i.i
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !191 ; 3 uses
  %i.cm = load ptr, ptr %2, align 8, !tbaa !192   ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 40                ; 3 uses
  %i.cr = icmp ugt i64 %i.h, %i.cq
  br i1 %i.cr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.loopexit
  %i.cs = sub nuw nsw i64 %i.h, %i.cq
  call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cs)
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

bb.ag:                                            ; preds = %.loopexit
  %i.ct = icmp ult i64 %i.h, %i.cq
  br i1 %i.ct, label %bb.ah, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

bb.ah:                                            ; preds = %bb.ag
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.g ; 3 uses
  %.not.i.i = icmp eq ptr %i.cl, %i.cu
  br i1 %.not.i.i, label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ah, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.dd, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i ], [ %i.cu, %bb.ah ] ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !181
  %i.cx = icmp eq i8 %i.cw, 1
  br i1 %i.cx, label %bb.ai, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i
  %i.cy = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !70
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #51
  br label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dd, %i.cl
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i
  store ptr %i.cu, ptr %i.b, align 8, !tbaa !191
  br label %_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit

_ZN4toml2v34impl10parse_pathESt17basic_string_viewIcSt11char_traitsIcEEPvPFbS6_S5_EPFbS6_mE.exit: ; preds = %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.ah, %bb.ag, %bb.af, %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit13", %"_ZZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EEEN3$_08__invokeEPvS3_.exit", %bb.ab
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !181
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = load ptr, ptr %.05.i.i, align 8, !tbaa !67 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #51
  br label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i

_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !15

_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !192
  br label %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !193
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #51
  br label %_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIN4toml2v314path_componentESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4toml2v34pathaSESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull returned align 8 dereferenceable(24) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !192    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !191  ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !181
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %bb.b, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.h, align 8, !tbaa !70
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #51
  br label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !15

_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !191
  br label %_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE5clearEv.exit

_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit.i.i
  tail call fastcc void @_ZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EE(i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4toml2v34pathpLERKS1_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = load ptr, ptr %1, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.f = load ptr, ptr %0, align 8, !tbaa !177    ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.j, ptr %i.c, ptr %i.e)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4toml2v34pathpLEOS1_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177
  %i.c = load ptr, ptr %1, align 8, !tbaa !177
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !177
  %i.f = load ptr, ptr %0, align 8, !tbaa !177    ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  tail call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEEvSA_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.j, ptr %i.c, ptr %i.e)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4toml2v34pathpLESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull returned align 8 dereferenceable(24) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call fastcc void @_ZN12_GLOBAL__N_115parse_path_intoESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorIN4toml2v314path_componentESaIS7_EE(i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4toml2v34path7prependERKS1_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !177
  %i.b = load ptr, ptr %1, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  tail call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.a, ptr %i.b, ptr %i.d)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4toml2v34path7prependEOS1_(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !177
  %i.b = load ptr, ptr %1, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  tail call void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEEvSA_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.a, ptr %i.b, ptr %i.d)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN4toml2v34path7prependESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull returned align 8 dereferenceable(24) %0, i64 %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.toml::v3::path", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN4toml2v34pathC1ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 %1, ptr %2)
  %i.a = load ptr, ptr %0, align 8, !tbaa !177
  %i.b = load ptr, ptr %3, align 8, !tbaa !177
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177
  invoke void @_ZNSt6vectorIN4toml2v314path_componentESaIS2_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS2_S4_EEEEEvSA_T_SC_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.a, ptr %i.b, ptr %i.d)
          to label %_ZN4toml2v34path7prependEOS1_.exit unwind label %bb.d

_ZN4toml2v34path7prependEOS1_.exit:               ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !192    ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !191  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4toml2v314path_componentES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN4toml2v34path7prependEOS1_.exit, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i ], [ %i.e, %_ZN4toml2v34path7prependEOS1_.exit ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !181
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.b, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.j = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8, !tbaa !70
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #51
  br label %_ZSt8_DestroyIN4toml2v314path_componentEEvPT_.exit.i.i.i.i
end_hunk_2
