inline.NumInlined: 223
inline.NumDeleted: 140
begin_hunk_0_@_ZN5arrow13ChunkResolverC2ERKSt6vectorISt10shared_ptrINS_11RecordBatchEESaIS4_EE:bb.a
  br i1 %i.p, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc2
  %.idx.i.i.i.i.i.i.i.i = ashr exact i64 %i.f, 1  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !45, !noalias !91
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i.preheader.i

bb.b:                                             ; preds = %.noexc2
  store ptr %i.o, ptr %i.j, align 8, !tbaa !46, !alias.scope !91
  br label %.loopexit

.lr.ph.i.preheader.i:                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i
  %.ph.i = phi ptr [ %i.l, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ] ; 2 uses
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.q, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i.i ]
  store ptr %.0.i.i.i.i.i.ph.i, ptr %i.j, align 8, !tbaa !46, !alias.scope !91
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.0.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.08.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %i.a, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.04.07.i.i = phi ptr [ %i.u, %.lr.ph.i.i ], [ %.ph.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.0.val.i.i = load ptr, ptr %.08.i.i, align 8, !tbaa !94, !noalias !91
  %i.r = getelementptr i8, ptr %.0.val.i.i, i64 24
  %.0.val.val.i.i = load i64, ptr %i.r, align 8, !tbaa !97, !noalias !91
  %i.s = add nsw i64 %.0.val.val.i.i, %.0.i       ; 2 uses
  store i64 %.0.i, ptr %.sroa.04.07.i.i, align 8, !tbaa !45, !noalias !91
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i, i64 8
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i, !llvm.loop !102

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.b
  %i.v = phi ptr [ %i.l, %bb.b ], [ %.ph.i, %.lr.ph.i.i ]
  %.1.i = phi i64 [ 0, %bb.b ], [ %i.s, %.lr.ph.i.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.g
  store i64 %.1.i, ptr %i.w, align 8, !tbaa !45, !noalias !91
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.x, align 8, !tbaa !78
  ret void

bb.c:                                             ; preds = %.noexc6.i, %.noexc.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #14
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5arrow13ChunkResolverC2EOS0_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 28)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(28) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x ptr>, ptr %1, align 8, !tbaa !103
  store <2 x ptr> %i.a, ptr %0, align 8, !tbaa !103
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  store ptr %i.d, ptr %i.b, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load atomic i32, ptr %i.f monotonic, align 8
  store i32 %i.g, ptr %i.e, align 8, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN5arrow13ChunkResolveraSEOS0_(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(28) initializes((8, 16)) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(28) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !103
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  store ptr %i.f, ptr %i.b, align 8, !tbaa !44
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIlSaIlEEaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #16
  br label %_ZNSt6vectorIlSaIlEEaSEOS1_.exit

_ZNSt6vectorIlSaIlEEaSEOS1_.exit:                 ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load atomic i32, ptr %i.k monotonic, align 8
  store atomic i32 %i.l, ptr %i.j seq_cst, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow13ChunkResolverC2ERKS0_(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(28) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %.noexc2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, !prof !104

.noexc.i.i:                                       ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #12
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #13
          to label %.noexc2 unwind label %bb.g

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !44
  %i.m = load ptr, ptr %1, align 8, !tbaa !103    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.c, label %bb.d, !prof !105

bb.c:                                             ; preds = %.noexc2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc2
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.m, align 8, !tbaa !45
  store i64 %i.t, ptr %i.i, align 8, !tbaa !45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.v, align 8, !tbaa !78
  ret void

bb.g:                                             ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #14
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(28) ptr @_ZN5arrow13ChunkResolveraSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i32 0, ptr %i.b monotonic, align 8
  ret ptr %0

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #14
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %1, align 8, !tbaa !41     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44
  %i.i = load ptr, ptr %0, align 8, !tbaa !41     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i, !prof !104

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #12
  unreachable

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #13 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !105

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.r, ptr %i.o, align 8, !tbaa !45
  br label %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit

_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #16
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit: ; preds = %_ZNSt6vectorIlSaIlEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKlS1_EEEEPlmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !44
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !46   ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !105

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.z, ptr %i.i, align 8, !tbaa !45
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !105

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !41
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !46 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !41
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !46
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !45
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !45
  br label %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit

_ZSt4copyIPlS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !105

bb.r:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPlS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !45
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !45
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !46
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPlS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ChunkResolver15ResolveManyImplElPKhPNS_18TypedChunkLocationIhEEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"struct.arrow::TypedChunkLocation.2", align 2 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = icmp sgt i64 %1, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIhEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i
  %.015.i = phi i32 [ %i.ah, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ %4, %bb.a ] ; 3 uses
  %.01314.i = phi i64 [ %i.ai, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 %.01314.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !106   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = zext i8 %i.l to i64                      ; 3 uses
  %i.n = sext i32 %.015.i to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.n ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !45   ; 3 uses
  %.not.i.i = icmp ugt i64 %i.p, %i.m
  br i1 %.not.i.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.q = icmp eq i32 %.015.i, %i.i
  br i1 %i.q, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !45
  %i.t = icmp ugt i64 %i.s, %i.m
  br i1 %i.t, label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, label %.preheader

.preheader:                                       ; preds = %bb.c, %.lr.ph.i
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.013.i.i.i = phi i32 [ %.114.i.i.i, %bb.d ], [ %i.h, %.preheader ] ; 2 uses
  %.0.i.i.i = phi i32 [ %.1.i.i.i, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.u = lshr i32 %.013.i.i.i, 1                  ; 3 uses
  %i.v = add i32 %.0.i.i.i, %i.u                  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45
  %.not.i.i.i = icmp ugt i64 %i.y, %i.m           ; 2 uses
  %i.z = sub i32 %.013.i.i.i, %i.u
  %.114.i.i.i = select i1 %.not.i.i.i, i32 %i.u, i32 %i.z ; 2 uses
  %.1.i.i.i = select i1 %.not.i.i.i, i32 %.0.i.i.i, i32 %i.v ; 3 uses
  %i.aa = icmp ugt i32 %.114.i.i.i, 1
  br i1 %i.aa, label %bb.d, label %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, !llvm.loop !107

_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i: ; preds = %bb.d
  %.pre.i.i = sext i32 %.1.i.i.i to i64
  %.phi.trans.insert.i.i = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.pre.i.i
  %.pre18.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !45
  br label %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i

_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i: ; preds = %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i, %bb.c, %bb.b
  %i.ab = phi i64 [ %.pre18.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.p, %bb.b ], [ %i.p, %bb.c ]
  %.0.i.i = phi i32 [ %.1.i.i.i, %_ZN5arrow13ChunkResolver6BisectEmPKmjj.exit.loopexit.i.i ], [ %i.i, %bb.b ], [ %.015.i, %bb.c ]
  %i.ac = trunc i32 %.0.i.i to i8
  %i.ad = trunc i64 %i.ab to i8
  %i.ae = sub i8 %i.l, %i.ad
  call void @_ZN5arrow18TypedChunkLocationIhEC1Ehh(ptr noundef nonnull align 1 dereferenceable(2) %5, i8 noundef zeroext %i.ac, i8 noundef zeroext %i.ae)
  %i.af = load i16, ptr %5, align 2               ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.01314.i
  store i16 %i.af, ptr %i.ag, align 1
  %.sroa.0.0.extract.trunc.mask.i = and i16 %i.af, 255
  %i.ah = zext nneg i16 %.sroa.0.0.extract.trunc.mask.i to i32
  %i.ai = add nuw nsw i64 %.01314.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ai, %1
  br i1 %exitcond.not.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIhEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit, label %.lr.ph.i, !llvm.loop !108

_ZN5arrow12_GLOBAL__N_117ResolveManyInlineIhEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit: ; preds = %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineIhEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow13ChunkResolver15ResolveManyImplElPKtPNS_18TypedChunkLocationItEEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %"struct.arrow::TypedChunkLocation.3", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = load ptr, ptr %0, align 8, !tbaa !41     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = add i32 %i.h, -1                         ; 2 uses
  %i.j = icmp sgt i64 %1, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN5arrow12_GLOBAL__N_117ResolveManyInlineItEEvjPKllPKT_PNS_18TypedChunkLocationIS4_EEi.exit

.lr.ph.i:                                         ; preds = %bb.a, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i
  %.015.i = phi i32 [ %i.ah, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ %4, %bb.a ] ; 3 uses
  %.01314.i = phi i64 [ %i.ai, %_ZN5arrow12_GLOBAL__N_116ResolveOneInlineItEENS_18TypedChunkLocationIT_EEjPKmS3_ii.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %.01314.i
  %i.l = load i16, ptr %i.k, align 2, !tbaa !109  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.m = zext i16 %i.l to i64                     ; 3 uses
end_hunk_0
