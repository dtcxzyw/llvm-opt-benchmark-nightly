Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExprCXX?download=true
inline.NumInlined: 10145
inline.NumDeleted: 4656
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@"_ZSt16__merge_adaptiveIPPN5clang9NamedDeclElS3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_SL_T0_SM_T1_T2_":bb.a
  %i.bo = and i1 %i.bl, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %.0.i, i64 -8 ; 5 uses
  br i1 %i.bo, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit.i28"
  store ptr %.026.val.i, ptr %i.bp, align 8, !tbaa !840
  %i.bq = icmp eq ptr %0, %.026.i.ph
  br i1 %i.bq, label %bb.z, label %.outer, !llvm.loop !2753

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %.024.i21, i64 8
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %5 to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 1
  br i1 %i.bw, label %bb.aa, label %bb.ab, !prof !771

bb.aa:                                            ; preds = %bb.z
  %i.bx = sub nsw i64 0, %i.bv
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.by, ptr align 8 %5, i64 %i.bu, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPPN5clang9NamedDeclES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_T0_SM_T1_T2_.exit"

bb.ab:                                            ; preds = %bb.z
  %i.bz = icmp eq i64 %i.bu, 8
  br i1 %i.bz, label %bb.ac, label %"_ZSt21__move_merge_adaptiveIPPN5clang9NamedDeclES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_T0_SM_T1_T2_.exit"

bb.ac:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds i8, ptr %.0.i, i64 -16
  %i.cb = load ptr, ptr %5, align 8, !tbaa !840
  store ptr %i.cb, ptr %i.ca, align 8, !tbaa !840
  br label %"_ZSt21__move_merge_adaptiveIPPN5clang9NamedDeclES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_T0_SM_T1_T2_.exit"

bb.ad:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit.i28"
  store ptr %.024.val.i, ptr %i.bp, align 8, !tbaa !840
  %i.cc = icmp eq ptr %5, %.024.i21
  br i1 %i.cc, label %"_ZSt21__move_merge_adaptiveIPPN5clang9NamedDeclES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_T0_SM_T1_T2_.exit", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds i8, ptr %.024.i21, i64 -8
  br label %bb.v, !llvm.loop !2753

"_ZSt21__move_merge_adaptiveIPPN5clang9NamedDeclES3_S3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_T0_SM_T1_T2_.exit": ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.t, %bb.s, %bb.r, %bb.q, %bb.k, %bb.j, %bb.i, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIPPN5clang9NamedDeclEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_T0_"(ptr noundef %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #19 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader17

.preheader17:                                     ; preds = %bb.a
  %.018 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not19 = icmp eq ptr %.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit
  %.021 = phi ptr [ %.018, %.lr.ph ], [ %.0, %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit ] ; 5 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.021, %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0.val = load ptr, ptr %.021, align 8, !tbaa !840 ; 4 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !840   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 28 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = and i32 %i.d, 127
  switch i32 %i.e, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i [
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 77, label %bb.c
    i32 79, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.f = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.0.val) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i: ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 127                        ; 2 uses
  switch i32 %i.j, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" [
    i32 54, label %bb.d
    i32 55, label %bb.d
    i32 77, label %bb.d
    i32 79, label %bb.d
  ]

bb.d:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i
  %i.k = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.val) #25
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %.pre3.i.i = load i32, ptr %.phi.trans.insert2.i.i, align 4
  %.pre4.i.i = and i32 %.pre3.i.i, 127
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit": ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %bb.d
  %.pre-phi.i.i = phi i32 [ %i.j, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i ], [ %.pre4.i.i, %bb.d ]
  %i.l = and i32 %i.g, 127
  %i.m = add nsw i32 %i.l, -59
  %i.n = icmp ult i32 %i.m, 10
  %i.o = add nsw i32 %.pre-phi.i.i, -69
  %i.p = icmp ult i32 %i.o, -10
  %i.q = and i1 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %.preheader

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit"
  %i.r = ptrtoint ptr %.021 to i64
  %i.s = sub i64 %i.r, %i.b                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.g, !prof !771

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.pn20, i64 16
  %i.w = sub nsw i64 0, %i.t
  %i.x = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.e
  %i.y = icmp eq i64 %i.s, 8
  br i1 %i.y, label %bb.h, label %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  store ptr %.val, ptr %i.z, align 8, !tbaa !840
  br label %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit

.preheader:                                       ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit", %bb.k
  %i.aa = phi i32 [ %.pre, %bb.k ], [ %i.d, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ] ; 2 uses
  %.09.i = phi ptr [ %.0.i, %bb.k ], [ %.021, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ] ; 3 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -8 ; 2 uses
  %.0.val.i = load ptr, ptr %.0.i, align 8, !tbaa !840 ; 3 uses
  %i.ab = and i32 %i.aa, 127
  switch i32 %i.ab, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i [
    i32 54, label %bb.i
    i32 55, label %bb.i
    i32 77, label %bb.i
    i32 79, label %bb.i
  ]

bb.i:                                             ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %i.ac = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.0.val) #25
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 28
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i: ; preds = %bb.i, %.preheader
  %i.ad = phi i32 [ %.pre.i.i.i, %bb.i ], [ %i.aa, %.preheader ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val.i, i64 28
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 127                      ; 2 uses
  switch i32 %i.ag, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPNS2_9NamedDeclEPSJ_EEbRT_T0_.exit.i" [
    i32 54, label %bb.j
    i32 55, label %bb.j
    i32 77, label %bb.j
    i32 79, label %bb.j
  ]

bb.j:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i
  %i.ah = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.0.val.i) #25
  %.phi.trans.insert2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %.pre3.i.i.i = load i32, ptr %.phi.trans.insert2.i.i.i, align 4
  %.pre4.i.i.i = and i32 %.pre3.i.i.i, 127
  br label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPNS2_9NamedDeclEPSJ_EEbRT_T0_.exit.i"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPNS2_9NamedDeclEPSJ_EEbRT_T0_.exit.i": ; preds = %bb.j, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i
  %.pre-phi.i.i.i = phi i32 [ %i.ag, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i.i ], [ %.pre4.i.i.i, %bb.j ]
  %i.ai = and i32 %i.ad, 127
  %i.aj = add nsw i32 %i.ai, -59
  %i.ak = icmp ult i32 %i.aj, 10
  %i.al = add nsw i32 %.pre-phi.i.i.i, -69
  %i.am = icmp ult i32 %i.al, -10
  %i.an = and i1 %i.ak, %i.am
  br i1 %i.an, label %bb.k, label %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPNS2_9NamedDeclEPSJ_EEbRT_T0_.exit.i"
  store ptr %.0.val.i, ptr %.09.i, align 8, !tbaa !840
  %.pre = load i32, ptr %i.c, align 4
  br label %.preheader, !llvm.loop !2754

_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit: ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPNS2_9NamedDeclEPSJ_EEbRT_T0_.exit.i", %bb.h, %bb.g, %bb.f
  %.sink = phi ptr [ %0, %bb.h ], [ %0, %bb.f ], [ %0, %bb.g ], [ %.09.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPNS2_9NamedDeclEPSJ_EEbRT_T0_.exit.i" ]
  store ptr %.0.val, ptr %.sink, align 8, !tbaa !840
  %.0 = getelementptr inbounds nuw i8, ptr %.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !2755

.loopexit:                                        ; preds = %_ZSt13move_backwardIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit, %.preheader17, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define internal fastcc void @"_ZSt12__move_mergeIPPN5clang9NamedDeclES3_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEET0_T_SM_SM_SM_SL_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #19 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit"
  %.024 = phi ptr [ %i.s, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ], [ %4, %bb.a ] ; 2 uses
  %.01823 = phi ptr [ %.1, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ], [ %0, %bb.a ] ; 2 uses
  %.01922 = phi ptr [ %.120, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ], [ %2, %bb.a ] ; 2 uses
  %.019.val = load ptr, ptr %.01922, align 8, !tbaa !840 ; 3 uses
  %.018.val = load ptr, ptr %.01823, align 8, !tbaa !840 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.019.val, i64 28
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = and i32 %i.e, 127
  switch i32 %i.f, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i [
    i32 54, label %bb.b
    i32 55, label %bb.b
    i32 77, label %bb.b
    i32 79, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.g = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.019.val) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i: ; preds = %bb.b, %.lr.ph
  %i.h = phi i32 [ %.pre.i.i, %bb.b ], [ %i.e, %.lr.ph ]
  %i.i = getelementptr inbounds nuw i8, ptr %.018.val, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 127                        ; 2 uses
  switch i32 %i.k, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" [
    i32 54, label %bb.c
    i32 55, label %bb.c
    i32 77, label %bb.c
    i32 79, label %bb.c
  ]

bb.c:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i
  %i.l = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.018.val) #25
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %.pre3.i.i = load i32, ptr %.phi.trans.insert2.i.i, align 4
  %.pre4.i.i = and i32 %.pre3.i.i, 127
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit": ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %bb.c
  %.pre-phi.i.i = phi i32 [ %i.k, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i ], [ %.pre4.i.i, %bb.c ]
  %i.m = and i32 %i.h, 127
  %i.n = add nsw i32 %i.m, -59
  %i.o = icmp ult i32 %i.n, 10
  %i.p = add nsw i32 %.pre-phi.i.i, -69
  %i.q = icmp ult i32 %i.p, -10
  %i.r = and i1 %i.o, %i.q                        ; 3 uses
  %.018.val.sink = select i1 %i.r, ptr %.019.val, ptr %.018.val
  %.120.idx = select i1 %i.r, i64 8, i64 0
  %.120 = getelementptr inbounds nuw i8, ptr %.01922, i64 %.120.idx ; 3 uses
  %.1.idx = select i1 %i.r, i64 0, i64 8
  %.1 = getelementptr inbounds nuw i8, ptr %.01823, i64 %.1.idx ; 3 uses
  store ptr %.018.val.sink, ptr %.024, align 8, !tbaa !840
  %i.s = getelementptr inbounds nuw i8, ptr %.024, i64 8 ; 2 uses
  %i.t = icmp ne ptr %.1, %1
  %i.u = icmp ne ptr %.120, %3
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit", %bb.a
  %.019.lcssa = phi ptr [ %2, %bb.a ], [ %.120, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ] ; 3 uses
  %.018.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ] ; 3 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.s, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" ] ; 3 uses
  %i.w = ptrtoint ptr %1 to i64
  %i.x = ptrtoint ptr %.018.lcssa to i64
  %i.y = sub i64 %i.w, %i.x                       ; 4 uses
  %i.z = icmp sgt i64 %i.y, 8
  br i1 %i.z, label %bb.d, label %bb.e, !prof !771

bb.d:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa, ptr align 8 %.018.lcssa, i64 %i.y, i1 false)
  br label %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %._crit_edge
  %i.aa = icmp eq i64 %i.y, 8
  br i1 %i.aa, label %bb.f, label %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %.018.lcssa, align 8, !tbaa !840
  store ptr %i.ab, ptr %.0.lcssa, align 8, !tbaa !840
  br label %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit

_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.ac = getelementptr inbounds i8, ptr %.0.lcssa, i64 %i.y ; 2 uses
  %i.ad = ptrtoint ptr %3 to i64
  %i.ae = ptrtoint ptr %.019.lcssa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 3 uses
  %i.ag = icmp sgt i64 %i.af, 8
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !771

bb.g:                                             ; preds = %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %.019.lcssa, i64 %i.af, i1 false)
  br label %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit21

bb.h:                                             ; preds = %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit
  %i.ah = icmp eq i64 %i.af, 8
  br i1 %i.ah, label %bb.i, label %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit21

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %.019.lcssa, align 8, !tbaa !840
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !840
  br label %_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit21

_ZSt4moveIPPN5clang9NamedDeclES3_ET0_T_S5_S4_.exit21: ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIPPN5clang9NamedDeclElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS0_4Sema17getDestructorNameERKNS0_14IdentifierInfoENS0_14SourceLocationEPNS0_5ScopeERNS0_12CXXScopeSpecENS0_9OpaquePtrINS0_8QualTypeEEEbE3$_5EEEvT_SL_SL_T0_SM_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond81 = or i1 %i.a, %i.b
  br i1 %or.cond81, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7886 = phi i64 [ %4, %.lr.ph ], [ %i.cd, %tailrecurse ] ; 4 uses
  %.tr7785 = phi i64 [ %3, %.lr.ph ], [ %i.cc, %tailrecurse ] ; 4 uses
  %.tr7583 = phi ptr [ %1, %.lr.ph ], [ %.071, %tailrecurse ] ; 7 uses
  %.tr82 = phi ptr [ %0, %.lr.ph ], [ %i.cb, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr7886, %.tr7785
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %.tr7583, align 8, !tbaa !840 ; 3 uses
  %.val39 = load ptr, ptr %.tr82, align 8, !tbaa !840 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 28
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = and i32 %i.g, 127
  switch i32 %i.h, label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i [
    i32 54, label %bb.d
    i32 55, label %bb.d
    i32 77, label %bb.d
    i32 79, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.i = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.val) #25
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4
  br label %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i

_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i: ; preds = %bb.d, %bb.c
  %i.j = phi i32 [ %.pre.i.i, %bb.d ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %.val39, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 127                        ; 2 uses
  switch i32 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit" [
    i32 54, label %bb.e
    i32 55, label %bb.e
    i32 77, label %bb.e
    i32 79, label %bb.e
  ]

bb.e:                                             ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i
  %i.n = tail call noundef ptr @_ZN5clang9NamedDecl21getUnderlyingDeclImplEv(ptr noundef nonnull readonly align 8 dereferenceable(48) %.val39) #25
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %.pre3.i.i = load i32, ptr %.phi.trans.insert2.i.i, align 4
  %.pre4.i.i = and i32 %.pre3.i.i, 127
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit": ; preds = %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i, %bb.e
  %.pre-phi.i.i = phi i32 [ %i.m, %_ZN5clang9NamedDecl17getUnderlyingDeclEv.exit.i.i ], [ %.pre4.i.i, %bb.e ]
  %i.o = and i32 %i.j, 127
  %i.p = add nsw i32 %i.o, -59
  %i.q = icmp ult i32 %i.p, 10
  %i.r = add nsw i32 %.pre-phi.i.i, -69
  %i.s = icmp ult i32 %i.r, -10
  %i.t = and i1 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN5clang4Sema17getDestructorNameERKNS2_14IdentifierInfoENS2_14SourceLocationEPNS2_5ScopeERNS2_12CXXScopeSpecENS2_9OpaquePtrINS2_8QualTypeEEEbE3$_5EclIPPNS2_9NamedDeclESK_EEbT_T0_.exit"
  store ptr %.val, ptr %.tr82, align 8, !tbaa !840
  store ptr %.val39, ptr %.tr7583, align 8, !tbaa !840
  br label %.loopexit

bb.g:                                             ; preds = %bb.b
  %i.u = icmp sgt i64 %.tr7785, %.tr7886
  %i.v = ptrtoint ptr %.tr7583 to i64             ; 4 uses
  br i1 %i.u, label %_ZSt9__advanceIPPN5clang9NamedDeclElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN5clang9NamedDeclElEvRT_T0_St26random_access_iterator_tag.exit45

_ZSt9__advanceIPPN5clang9NamedDeclElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.g
  %i.w = sdiv i64 %.tr7785, 2                     ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.tr82, i64 %i.w ; 2 uses
  %.val40 = load ptr, ptr %i.x, align 8           ; 2 uses
  %i.y = sub i64 %i.c, %i.v
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
end_hunk_0
