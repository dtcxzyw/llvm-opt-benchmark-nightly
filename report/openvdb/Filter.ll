Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/Filter?download=true
inline.NumInlined: 20337
inline.NumDeleted: 7408
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !214  ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIfLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !35
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #27
  br label %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIfLj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #27
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !138 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS6_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #27
  br label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !115  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #27
  br label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i

_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !118  ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i: ; preds = %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i, %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 56) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit

_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1232) dereferenceable(1272) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1272) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools6FilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE8gaussianEiiPKSE_(ptr noundef nonnull align 8 dereferenceable(70) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.std::function", align 16    ; 9 uses
  %6 = alloca %"class.std::function", align 16    ; 9 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %8 = alloca %"class.openvdb::v13_0::tree::LeafManager", align 8 ; 19 uses
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.b, align 8, !tbaa !45
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %1, i32 1) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46
  %i.e = icmp eq i32 %i.d, 0                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !62
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.l = load i8, ptr %i.k, align 1, !tbaa !49, !range !52, !noundef !53
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61

bb.e:                                             ; preds = %bb.d
  %i.n = invoke noalias noundef nonnull dereferenceable(1272) ptr @_Znwm(i64 noundef 1272) #28
          to label %bb.f unwind label %bb.j       ; 13 uses

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !37
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.r = load i32, ptr %i.c, align 8, !tbaa !46
  invoke void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(1272) %i.n)
          to label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit unwind label %bb.k

_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit: ; preds = %bb.f
  %i.s = sext i32 %i.r to i64
  %.not130 = icmp eq i32 %2, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1232 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1240
  store i64 %i.s, ptr %i.u, align 8, !tbaa !73
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 1248
  %i.w = select i1 %.not130, i64 6, i64 26
  store ptr %i.q, ptr %i.v, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1256
  store ptr %i.n, ptr %i.x, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 1264
  store i64 %i.w, ptr %i.y, align 8, !tbaa !112
  store ptr %i.n, ptr %7, align 8, !tbaa !113
  %i.z = shl nuw nsw i32 %.sroa.speculated, 2
  %i.aa = invoke noundef i32 @_ZN7openvdb5v13_05tools15filter_internal9VoxelizerINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE3runEi(ptr noundef nonnull align 8 dereferenceable(1272) %i.n, i32 noundef %i.z)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit
  %.not43 = icmp eq i32 %i.aa, 0
  br i1 %.not43, label %bb.h, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %7, align 8, !tbaa !113
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !114 ; 4 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i53, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i54 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i54, label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i55

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i55: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #27
  br label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56

_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i55, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !118 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i57 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i57, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i58

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59

_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i58, %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 56) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60

_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59, %bb.h
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1232) dereferenceable(1272) %i.n) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 1272) #27
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.k:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 1272) #27
  br label %bb.ba

_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60, %bb.g, %bb.d
  %i.ai = phi ptr [ null, %bb.d ], [ null, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60 ], [ %i.n, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.aj = load ptr, ptr %0, align 8, !tbaa !37
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !65
  store ptr %i.al, ptr %8, align 8, !tbaa !120
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.an, align 8, !tbaa !137
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i8 0, i64 64, i1 false)
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14initAuxBuffersEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %.lr.ph unwind label %bb.l

bb.l:                                             ; preds = %.noexc.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.at, null
  br i1 %.not.i.i62, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.m, %bb.l
  call void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIfLj3EEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #19
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !138 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ax, null
  br i1 %.not.i6.i, label %.body, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIfLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #27
  br label %.body

.lr.ph:                                           ; preds = %.noexc.i
  %i.ay = shl nuw nsw i32 %.sroa.speculated, 2    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.o

._crit_edge:                                      ; preds = %.critedge
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !44  ; 3 uses
  %.not44 = icmp eq ptr %i.bh, null
  br i1 %.not44, label %bb.av, label %bb.at

bb.o:                                             ; preds = %.lr.ph, %.critedge
  %i.bi = phi ptr [ %i.ai, %.lr.ph ], [ %i.bz, %.critedge ] ; 8 uses
  %i.bj = phi ptr [ %i.ai, %.lr.ph ], [ %i.ca, %.critedge ] ; 5 uses
  %.026135 = phi i32 [ 0, %.lr.ph ], [ %i.cn, %.critedge ] ; 2 uses
  %.027134 = phi i32 [ %i.ay, %.lr.ph ], [ %i.co, %.critedge ] ; 2 uses
  %.028133 = phi i32 [ 1, %.lr.ph ], [ %.2, %.critedge ] ; 5 uses
  %.not45 = icmp eq i32 %.026135, 0
  br i1 %.not45, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not131 = icmp eq ptr %i.bj, null
  br i1 %.not131, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = shl nsw i32 %.028133, 3
  %i.bl = sub nsw i32 %.027134, %i.bk             ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef i32 @_ZN7openvdb5v13_05tools15filter_internal9VoxelizerINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE3runEi(ptr noundef nonnull align 8 dereferenceable(1272) %i.bj, i32 noundef %i.bl)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %7, align 8, !tbaa !113
  %.not.i.i63 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i63, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 1232
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !114 ; 4 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i64, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !115 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i65 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i65, label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i66

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i66: ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #27
  br label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67

_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIfLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i66, %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !118 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i68 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i68, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i69: ; preds = %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70

_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i69, %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIfLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 56) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71

_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIfLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70, %bb.u
  call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1232) dereferenceable(1272) %i.bi) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 1272) #27
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72

bb.w:                                             ; preds = %.noexc, %bb.x, %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.x:                                             ; preds = %bb.s
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.x
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEE14initAuxBuffersEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 unwind label %bb.w

_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72: ; preds = %.noexc, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71, %bb.t
  %i.bw = phi ptr [ %i.bi, %.noexc ], [ null, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71 ], [ null, %bb.t ]
  %i.bx = phi ptr [ %i.bj, %.noexc ], [ null, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71 ], [ null, %bb.t ]
  %i.by = add nsw i32 %i.bn, %.028133
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72, %bb.p, %bb.o
  %i.bz = phi ptr [ %i.bi, %bb.o ], [ %i.bi, %bb.p ], [ %i.bw, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 ], [ %i.bi, %bb.q ] ; 5 uses
  %i.ca = phi ptr [ %i.bj, %bb.o ], [ null, %bb.p ], [ %i.bx, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 ], [ %i.bj, %bb.q ]
  %.2 = phi i32 [ %.028133, %bb.o ], [ %.028133, %bb.p ], [ %i.by, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 ], [ %.028133, %bb.q ]
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ap
  %.0132 = phi i32 [ 0, %bb.y ], [ %i.dk, %bb.ap ]
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !44  ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i74, label %bb.ad, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.z
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef -1)
          to label %.noexc75 unwind label %.loopexit, !inline_history !139

.noexc75:                                         ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  br i1 %i.cf, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.noexc75
  %i.cg = invoke noundef ptr @_ZN3tbb6detail2r115current_contextEv()
          to label %.noexc76 unwind label %.loopexit.split-lp ; 4 uses

.noexc76:                                         ; preds = %bb.aa
  %.not.i2.i = icmp eq ptr %i.cg, null
  br i1 %.not.i2.i, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.noexc76
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 15
  %i.ci = load atomic i8, ptr %i.ch monotonic, align 1
  %i.cj = icmp eq i8 %i.ci, -1
  br i1 %i.cj, label %bb.ac, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi ptr [ %i.cl, %bb.ac ], [ %i.cg, %bb.ab ]
  %i.cm = invoke noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i)
          to label %.critedge unwind label %.loopexit.split-lp ; 0 uses

.critedge:                                        ; preds = %bb.ap, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i, %.noexc76
  %i.cn = add nuw nsw i32 %.026135, 1             ; 2 uses
  %i.co = add nuw nsw i32 %.027134, %i.ay
  %exitcond136.not = icmp eq i32 %i.cn, %2
  br i1 %exitcond136.not, label %._crit_edge, label %bb.o, !llvm.loop !215

.loopexit:                                        ; preds = %bb.ag, %bb.ak, %bb.ao, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp:                               ; preds = %bb.aa, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ad:                                            ; preds = %.noexc75, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %i.ba, align 8
  %i.cp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc80 unwind label %bb.aq  ; 3 uses

.noexc80:                                         ; preds = %bb.ad
  store <2 x i64> <i64 ptrtoint (ptr @_ZN7openvdb5v13_05tools6FilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE6doBoxXERKNS4_11LeafManagerISD_E9LeafRangeEi to i64), i64 0>, ptr %i.cp, align 8, !tbaa !140
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 %.sroa.speculated, ptr %i.cq, align 8, !tbaa !8
  store ptr %i.cp, ptr %6, align 16, !tbaa !147
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 16, i1 false), !tbaa.struct !149
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.az, align 8, !tbaa !35
  %i.cr = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !51
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !51 ; 2 uses
  store <2 x ptr> %i.cr, ptr %i.bb, align 16, !tbaa !51
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools6FilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSI_FvSO_iESt12_PlaceholderILi1EEST_ILi2EEiEEE10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools6FilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESF_NS1_4util15NullInterrupterEEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSI_FvSO_iESt12_PlaceholderILi1EEST_ILi2EEiEEE9_M_invokeERKSt9_Any_dataOSJ_SO_>, ptr %i.bc, align 8, !tbaa !51
  %.not.i.i78 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i78, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.noexc80
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.ag unwind label %bb.af     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #26
  unreachable

bb.ag:                                            ; preds = %bb.ae, %.noexc80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  invoke void @_ZN7openvdb5v13_05tools6FilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIfLj3EEELj4EEELj5EEEEEEEEESE_NS0_4util15NullInterrupterEE4cookERNS4_11LeafManagerISD_EE(ptr noundef nonnull align 8 dereferenceable(70) %0, ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.ah unwind label %.loopexit

end_hunk_0
begin_hunk_1_@_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEED2Ev:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !554  ; 4 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx.i.i = shl i64 %i.j, 4                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.m = phi ptr [ %i.n, %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i ], [ %i.l, %.preheader.preheader.i.i ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -16 ; 5 uses
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load atomic i32, ptr %i.o seq_cst, align 4
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i
  %i.q = invoke noundef zeroext i1 @_ZN7openvdb5v13_04tree10LeafBufferIdLj3EE14detachFromFileEv(ptr noundef nonnull align 8 dereferenceable(13) %i.n)
          to label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i unwind label %bb.j ; 0 uses

bb.f:                                             ; preds = %.preheader.i.i
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !35
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load atomic i32, ptr %i.o seq_cst, align 8
  %.not3.i.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not3.i.i.i.i, label %bb.h, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #27
  br label %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #26
  unreachable

_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.x = icmp eq ptr %i.n, %i.h
  br i1 %i.x, label %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i, label %.preheader.i.i

_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i: ; preds = %_ZN7openvdb5v13_04tree10LeafBufferIdLj3EED2Ev.exit.i.i, %bb.d
  %i.y = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.y) #27
  br label %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %_ZNKSt14default_deleteIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEEEclIS4_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS5_EE5valueEvE4typeEPS9_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !511 ; 2 uses
  %.not.i2 = icmp eq ptr %i.aa, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS6_EED2Ev.exit, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.aa) #27
  br label %_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS6_EED2Ev.exit

_ZNSt10unique_ptrIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEESt14default_deleteIS6_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev.exit, %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !487    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !488  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !489  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #27
  br label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i

_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !491  ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i: ; preds = %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i

_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i, %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 56) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit

_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1232) dereferenceable(1272) %i.a) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 1272) #27
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN7openvdb5v13_05tools6FilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE8gaussianEiiPKSK_(ptr noundef nonnull align 8 dereferenceable(70) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.130", align 16 ; 9 uses
  %5 = alloca %"class.std::function.130", align 16 ; 9 uses
  %6 = alloca %"class.std::function.130", align 16 ; 9 uses
  %7 = alloca %"class.std::unique_ptr.138", align 8 ; 8 uses
  %8 = alloca %"class.openvdb::v13_0::tree::LeafManager.172", align 8 ; 19 uses
  %i.a = icmp slt i32 %2, 1
  br i1 %i.a, label %bb.ay, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %3, ptr %i.b, align 8, !tbaa !462
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %1, i32 1) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !463
  %i.e = icmp eq i32 %i.d, 0                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !461  ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull @.str.4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr null, ptr %7, align 8, !tbaa !468
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 69
  %i.l = load i8, ptr %i.k, align 1, !tbaa !465, !range !52, !noundef !53
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61

bb.e:                                             ; preds = %bb.d
  %i.n = invoke noalias noundef nonnull dereferenceable(1272) ptr @_Znwm(i64 noundef 1272) #28
          to label %bb.f unwind label %bb.j       ; 13 uses

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !457
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !471
  %i.r = load i32, ptr %i.c, align 8, !tbaa !463
  invoke void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(1272) %i.n)
          to label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit unwind label %bb.k

_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit: ; preds = %bb.f
  %i.s = sext i32 %i.r to i64
  %.not130 = icmp eq i32 %2, 1
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 1232 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !474
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 1240
  store i64 %i.s, ptr %i.u, align 8, !tbaa !477
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 1248
  %i.w = select i1 %.not130, i64 6, i64 26
  store ptr %i.q, ptr %i.v, align 8, !tbaa !485
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 1256
  store ptr %i.n, ptr %i.x, align 8, !tbaa !111
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 1264
  store i64 %i.w, ptr %i.y, align 8, !tbaa !486
  store ptr %i.n, ptr %7, align 8, !tbaa !487
  %i.z = shl nuw nsw i32 %.sroa.speculated, 2
  %i.aa = invoke noundef i32 @_ZN7openvdb5v13_05tools15filter_internal9VoxelizerINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE3runEi(ptr noundef nonnull align 8 dereferenceable(1272) %i.n, i32 noundef %i.z)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit
  %.not43 = icmp eq i32 %i.aa, 0
  br i1 %.not43, label %bb.h, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %7, align 8, !tbaa !487
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !488 ; 4 uses
  %.not.i.i.i.i.i53 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i53, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i54 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i.i.i.i54, label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i55

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i55: ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #27
  br label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56

_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i55, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !491 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i57 = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i57, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i58

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i58: ; preds = %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59

_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i58, %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i56
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 56) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60

_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i59, %bb.h
  tail call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1232) dereferenceable(1272) %i.n) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 1272) #27
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.k:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 1272) #27
  br label %bb.ba

_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60, %bb.g, %bb.d
  %i.ai = phi ptr [ null, %bb.d ], [ null, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i60 ], [ %i.n, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.aj = load ptr, ptr %0, align 8, !tbaa !457
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !471
  store ptr %i.al, ptr %8, align 8, !tbaa !493
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.an, align 8, !tbaa !510
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, i8 0, i64 64, i1 false)
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14initAuxBuffersEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %.lr.ph unwind label %bb.l

bb.l:                                             ; preds = %.noexc.i, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit61
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !50 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.at, null
  br i1 %.not.i.i62, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = invoke noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(32) %i.aq, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.n ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  call void @__clang_call_terminate(ptr %i.aw) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.m, %bb.l
  call void @_ZNSt10unique_ptrIA_N7openvdb5v13_04tree10LeafBufferIdLj3EEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ap) #19
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !511 ; 2 uses
  %.not.i6.i = icmp eq ptr %i.ax, null
  br i1 %.not.i6.i, label %.body, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree8LeafNodeIdLj3EEEEclIS5_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS6_EE5valueEvE4typeEPSA_.exit.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #27
  br label %.body

.lr.ph:                                           ; preds = %.noexc.i
  %i.ay = shl nuw nsw i32 %.sroa.speculated, 2    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.o

._crit_edge:                                      ; preds = %.critedge
  %i.bh = load ptr, ptr %i.f, align 8, !tbaa !461 ; 3 uses
  %.not44 = icmp eq ptr %i.bh, null
  br i1 %.not44, label %bb.av, label %bb.at

bb.o:                                             ; preds = %.lr.ph, %.critedge
  %i.bi = phi ptr [ %i.ai, %.lr.ph ], [ %i.bz, %.critedge ] ; 8 uses
  %i.bj = phi ptr [ %i.ai, %.lr.ph ], [ %i.ca, %.critedge ] ; 5 uses
  %.026135 = phi i32 [ 0, %.lr.ph ], [ %i.cn, %.critedge ] ; 2 uses
  %.027134 = phi i32 [ %i.ay, %.lr.ph ], [ %i.co, %.critedge ] ; 2 uses
  %.028133 = phi i32 [ 1, %.lr.ph ], [ %.2, %.critedge ] ; 5 uses
  %.not45 = icmp eq i32 %.026135, 0
  br i1 %.not45, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not131 = icmp eq ptr %i.bj, null
  br i1 %.not131, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = shl nsw i32 %.028133, 3
  %i.bl = sub nsw i32 %.027134, %i.bk             ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.bn = invoke noundef i32 @_ZN7openvdb5v13_05tools15filter_internal9VoxelizerINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE3runEi(ptr noundef nonnull align 8 dereferenceable(1272) %i.bj, i32 noundef %i.bl)
          to label %bb.s unwind label %bb.w       ; 2 uses

bb.s:                                             ; preds = %bb.r
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %7, align 8, !tbaa !487
  %.not.i.i63 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i63, label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 1232
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !488 ; 4 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i64, label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !489 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i65 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i65, label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i66

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i66: ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.bs) #27
  br label %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67

_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS2_8LeafNodeIdLj3EEELj4EEEEclIS7_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS8_EE5valueEvE4typeEPSC_.exit.i.i.i.i.i.i.i.i.i66, %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !491 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i68 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i68, label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70, label %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i69

_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i69: ; preds = %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70

_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70: ; preds = %_ZNKSt14default_deleteIA_PN7openvdb5v13_04tree12InternalNodeINS3_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEclIS8_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS9_EE5valueEvE4typeEPSD_.exit.i.i.i.i.i.i.i.i.i69, %_ZN7openvdb5v13_04tree8NodeListINS1_12InternalNodeINS1_8LeafNodeIdLj3EEELj4EEEED2Ev.exit.i.i.i.i.i.i.i67
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef 56) #27
  br label %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71

_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71: ; preds = %_ZNKSt14default_deleteIN7openvdb5v13_04tree11NodeManagerINS2_4TreeINS2_8RootNodeINS2_12InternalNodeINS6_INS2_8LeafNodeIdLj3EEELj4EEELj5EEEEEEELj2EEEEclEPSD_.exit.i.i.i.i.i70, %bb.u
  call void @_ZN7openvdb5v13_04tree4TreeINS1_8RootNodeINS1_12InternalNodeINS4_INS1_8LeafNodeINS0_9ValueMaskELj3EEELj4EEELj5EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(1232) dereferenceable(1272) %i.bi) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef 1272) #27
  br label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72

bb.w:                                             ; preds = %.noexc, %bb.x, %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.x:                                             ; preds = %bb.s
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE13initLeafArrayEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.x
  invoke void @_ZN7openvdb5v13_04tree11LeafManagerINS1_4TreeINS1_8RootNodeINS1_12InternalNodeINS5_INS1_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEE14initAuxBuffersEb(ptr noundef nonnull align 8 dereferenceable(96) %8, i1 noundef zeroext %i.e)
          to label %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 unwind label %bb.w

_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72: ; preds = %.noexc, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71, %bb.t
  %i.bw = phi ptr [ %i.bi, %.noexc ], [ null, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71 ], [ null, %bb.t ]
  %i.bx = phi ptr [ %i.bj, %.noexc ], [ null, %_ZNKSt14default_deleteIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEEEclEPSF_.exit.i.i71 ], [ null, %bb.t ]
  %i.by = add nsw i32 %i.bn, %.028133
  br label %bb.y

bb.y:                                             ; preds = %bb.q, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72, %bb.p, %bb.o
  %i.bz = phi ptr [ %i.bi, %bb.o ], [ %i.bi, %bb.p ], [ %i.bw, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 ], [ %i.bi, %bb.q ] ; 5 uses
  %i.ca = phi ptr [ %i.bj, %bb.o ], [ null, %bb.p ], [ %i.bx, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 ], [ %i.bj, %bb.q ]
  %.2 = phi i32 [ %.028133, %bb.o ], [ %.028133, %bb.p ], [ %i.by, %_ZNSt10unique_ptrIN7openvdb5v13_05tools15filter_internal9VoxelizerINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEESt14default_deleteISF_EE5resetEPSF_.exit72 ], [ %.028133, %bb.q ]
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.ap
  %.0132 = phi i32 [ 0, %bb.y ], [ %i.dk, %bb.ap ]
  %i.cb = load ptr, ptr %i.f, align 8, !tbaa !461 ; 3 uses
  %.not.i.i74 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i74, label %bb.ad, label %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i

_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i: ; preds = %bb.z
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i32 noundef -1)
          to label %.noexc75 unwind label %.loopexit, !inline_history !512

.noexc75:                                         ; preds = %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  br i1 %i.cf, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %.noexc75
  %i.cg = invoke noundef ptr @_ZN3tbb6detail2r115current_contextEv()
          to label %.noexc76 unwind label %.loopexit.split-lp ; 4 uses

.noexc76:                                         ; preds = %bb.aa
  %.not.i2.i = icmp eq ptr %i.cg, null
  br i1 %.not.i2.i, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %.noexc76
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 15
  %i.ci = load atomic i8, ptr %i.ch monotonic, align 1
  %i.cj = icmp eq i8 %i.ci, -1
  br i1 %i.cj, label %bb.ac, label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !35
  br label %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i

_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i = phi ptr [ %i.cl, %bb.ac ], [ %i.cg, %bb.ab ]
  %i.cm = invoke noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i)
          to label %.critedge unwind label %.loopexit.split-lp ; 0 uses

.critedge:                                        ; preds = %bb.ap, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i, %.noexc76
  %i.cn = add nuw nsw i32 %.026135, 1             ; 2 uses
  %i.co = add nuw nsw i32 %.027134, %i.ay
  %exitcond136.not = icmp eq i32 %i.cn, %2
  br i1 %exitcond136.not, label %._crit_edge, label %bb.o, !llvm.loop !555

.loopexit:                                        ; preds = %bb.ag, %bb.ak, %bb.ao, %_ZN7openvdb5v13_04util14wasInterruptedINS1_15NullInterrupterEEEbPT_i.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

.loopexit.split-lp:                               ; preds = %bb.aa, %_ZN3tbb6detail2d118task_group_context22cancel_group_executionEv.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ad:                                            ; preds = %.noexc75, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %i.ba, align 8
  %i.cp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc80 unwind label %bb.aq  ; 3 uses

.noexc80:                                         ; preds = %bb.ad
  store <2 x i64> <i64 ptrtoint (ptr @_ZN7openvdb5v13_05tools6FilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE6doBoxXERKNS4_11LeafManagerISD_E9LeafRangeEi to i64), i64 0>, ptr %i.cp, align 8, !tbaa !513
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i32 %.sroa.speculated, ptr %i.cq, align 8, !tbaa !8
  store ptr %i.cp, ptr %6, align 16, !tbaa !515
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %6, align 16, !tbaa !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 16, i1 false), !tbaa.struct !149
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.az, align 8, !tbaa !35
  %i.cr = load <2 x ptr>, ptr %i.bc, align 8, !tbaa !51
  %i.cs = load ptr, ptr %i.bc, align 8, !tbaa !51 ; 2 uses
  store <2 x ptr> %i.cr, ptr %i.bb, align 16, !tbaa !51
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools6FilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_IfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_iESt12_PlaceholderILi1EESZ_ILi2EEiEEE10_M_managerERSt9_Any_dataRKS15_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvPN7openvdb5v13_05tools6FilterINS1_4GridINS1_4tree4TreeINS5_8RootNodeINS5_12InternalNodeINS8_INS5_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS4_INS6_INS7_INS8_INS8_INS9_IfLj3EEELj4EEELj5EEEEEEEEENS1_4util15NullInterrupterEEERKNS5_11LeafManagerISE_E9LeafRangeEESt5_BindIFMSO_FvSU_iESt12_PlaceholderILi1EESZ_ILi2EEiEEE9_M_invokeERKSt9_Any_dataOSP_SU_>, ptr %i.bc, align 8, !tbaa !51
  %.not.i.i78 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i78, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.noexc80
  %i.ct = invoke noundef zeroext i1 %i.cs(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef 3)
          to label %bb.ag unwind label %bb.af     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  %i.cu = landingpad { ptr, i32 }
          catch ptr null
  %i.cv = extractvalue { ptr, i32 } %i.cu, 0
  call void @__clang_call_terminate(ptr %i.cv) #26
  unreachable

bb.ag:                                            ; preds = %bb.ae, %.noexc80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  invoke void @_ZN7openvdb5v13_05tools6FilterINS0_4GridINS0_4tree4TreeINS4_8RootNodeINS4_12InternalNodeINS7_INS4_8LeafNodeIdLj3EEELj4EEELj5EEEEEEEEENS3_INS5_INS6_INS7_INS7_INS8_IfLj3EEELj4EEELj5EEEEEEEEENS0_4util15NullInterrupterEE4cookERNS4_11LeafManagerISD_EE(ptr noundef nonnull align 8 dereferenceable(70) %0, ptr noundef nonnull align 8 dereferenceable(96) %8)
          to label %bb.ah unwind label %.loopexit

end_hunk_1
