Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biassharing?download=true
inline.NumInlined: 844
inline.NumDeleted: 436
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNSt6vectorIiSaIiEE17_M_default_appendEm:bb.a
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !26
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !53
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #24 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !26
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !26
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !65
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #25
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !54
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !53
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx11BiasSharingD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(104) dereferenceable(104) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !162  ; 2 uses
  %.not11 = icmp eq ptr %i.c, %i.e
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.f
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.f = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #25
  br label %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit

_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit:      ; preds = %._crit_edge, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit4, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #25
  br label %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit4

_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit4:     ; preds = %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIP10tmpi_comm_SaIS1_EED2Ev.exit4, %bb.d
  %i.z = load ptr, ptr %0, align 8, !tbaa !54     ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIiSaIiEED2Ev.exit7, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit7

_ZNSt6vectorIiSaIiEED2Ev.exit7:                   ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.e
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.sroa.08.012 = phi ptr [ %i.ah, %bb.f ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.af = load ptr, ptr %.sroa.08.012, align 8, !tbaa !16
  store ptr %i.af, ptr %i.a, align 8, !tbaa !16
  %i.ag = invoke noundef i32 @_Z14tMPI_Comm_freePP10tmpi_comm_(ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %i.e
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #26
  unreachable
}

declare noundef i32 @_Z14tMPI_Comm_freePP10tmpi_comm_(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx11BiasSharing23sumOverSharingMainRanksENS_8ArrayRefIiEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = sext i32 %3 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ult i64 %i.n, 2147483647
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommEENKUlvE_clEv, ptr noundef nonnull @.str.1, i32 noundef 238) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %i.n to i32
  %i.q = load ptr, ptr @TMPI_INT, align 8, !tbaa !28
  %i.r = tail call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef %1, i32 noundef %i.p, ptr noundef %i.q, i32 noundef 2, ptr noundef %i.e) ; 0 uses
  br label %_ZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

_ZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit: ; preds = %bb.a, %bb.d
  ret void
}

declare void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx11BiasSharing23sumOverSharingMainRanksENS_8ArrayRefIlEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = sext i32 %3 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN3gmx18sumOverSimulationsIlEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.n, 2147483647
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx18sumOverSimulationsIlEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommEENKUlvE_clEv, ptr noundef nonnull @.str.1, i32 noundef 238) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %i.n to i32
  %i.q = load ptr, ptr @TMPI_LONG, align 8, !tbaa !28
  %i.r = tail call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef %1, i32 noundef %i.p, ptr noundef %i.q, i32 noundef 2, ptr noundef %i.e) ; 0 uses
  br label %_ZN3gmx18sumOverSimulationsIlEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

_ZN3gmx18sumOverSimulationsIlEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx11BiasSharing23sumOverSharingMainRanksENS_8ArrayRefIdEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = sext i32 %3 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !25
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %_ZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %2 to i64
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.n, 2147483647
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommEENKUlvE_clEv, ptr noundef nonnull @.str.1, i32 noundef 238) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %i.n to i32
  %i.q = load ptr, ptr @TMPI_DOUBLE, align 8, !tbaa !28
  %i.r = tail call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef %1, i32 noundef %i.p, ptr noundef %i.q, i32 noundef 2, ptr noundef %i.e) ; 0 uses
  br label %_ZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

_ZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit: ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx11BiasSharing25sumOverSharingSimulationsENS_8ArrayRefIiEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = ptrtoint ptr %2 to i64
  %i.a = ptrtoint ptr %1 to i64
  %5 = sub i64 %4, %i.a                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = sext i32 %3 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86, !nonnull !87, !align !88 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = ashr exact i64 %5, 2                     ; 2 uses
  %i.m = icmp ult i64 %i.l, 2147483647
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommEENKUlvE_clEv, ptr noundef nonnull @.str.1, i32 noundef 238) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = trunc nuw nsw i64 %i.l to i32
  %i.o = load ptr, ptr @TMPI_INT, align 8, !tbaa !28
  %i.p = tail call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef %1, i32 noundef %i.n, ptr noundef %i.o, i32 noundef 2, ptr noundef %i.f) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !63
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %_ZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !64
  tail call void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef %5, ptr noundef %1, ptr noundef %i.t)
  br label %_ZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

_ZN3gmx18sumOverSimulationsIiEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3gmx11BiasSharing25sumOverSharingSimulationsENS_8ArrayRefIdEEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr %1, ptr %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = ptrtoint ptr %2 to i64
  %i.a = ptrtoint ptr %1 to i64
  %5 = sub i64 %4, %i.a                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = sext i32 %3 to i64
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !86, !nonnull !87, !align !88 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = ashr exact i64 %5, 3                     ; 2 uses
  %i.m = icmp ult i64 %i.l, 2147483647
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommEENKUlvE_clEv, ptr noundef nonnull @.str.1, i32 noundef 238) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = trunc nuw nsw i64 %i.l to i32
  %i.o = load ptr, ptr @TMPI_DOUBLE, align 8, !tbaa !28
  %i.p = tail call noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef %1, i32 noundef %i.n, ptr noundef %i.o, i32 noundef 2, ptr noundef %i.f) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !63
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %bb.f, label %_ZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !64
  tail call void @_Z9gmx_bcastmPvP10tmpi_comm_(i64 noundef %5, ptr noundef %1, ptr noundef %i.t)
  br label %_ZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit

_ZN3gmx18sumOverSimulationsIdEEvNS_8ArrayRefIT_EEP10tmpi_comm_bRKNS_7MpiCommE.exit: ; preds = %bb.e, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN3gmx31haveBiasSharingWithinSimulationERKNS_9AwhParamsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = load ptr, ptr %0, align 8, !tbaa !14     ; 8 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 104                 ; 3 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph21.preheader, label %._crit_edge

.lr.ph21.preheader:                               ; preds = %bb.a
  %i.j = and i64 %i.g, 2147483647
  %wide.trip.count27 = and i64 %i.g, 2147483647   ; 3 uses
  br label %.lr.ph21

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.014.lcssa = phi i1 [ false, %bb.a ], [ %.3, %.loopexit ]
  ret i1 %.014.lcssa

.lr.ph21:                                         ; preds = %.lr.ph21.preheader, %.loopexit
  %indvars.iv25 = phi i64 [ 0, %.lr.ph21.preheader ], [ %indvars.iv.next26, %.loopexit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph21.preheader ], [ %indvars.iv.next, %.loopexit ] ; 6 uses
  %.01419 = phi i1 [ false, %.lr.ph21.preheader ], [ %.3, %.loopexit ] ; 6 uses
  %i.k = xor i64 %indvars.iv25, -1
  %i.l = add nsw i64 %wide.trip.count27, %i.k     ; 7 uses
  %i.m = getelementptr inbounds nuw [104 x i8], ptr %i.c, i64 %indvars.iv25
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46   ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 3 uses
  %i.q = icmp samesign ult i64 %indvars.iv.next26, %i.j
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.lr.ph21
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check30 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.l, 28
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.s = add i64 %indvars.iv, %n.vec              ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert31 = insertelement <8 x i64> poison, i64 %indvars.iv, i64 0
  %broadcast.splat32 = shufflevector <8 x i64> %broadcast.splatinsert31, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = add nuw nsw <8 x i64> %broadcast.splat32, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi33 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi34 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %vec.phi35 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %step.add = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw nsw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw nsw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %vec.ind
  %wide.gep36 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %step.add
  %wide.gep37 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %step.add.2
  %wide.gep38 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <8 x i64> %step.add.3
  %wide.gep39 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 88
  %wide.gep40 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep36, i64 88
  %wide.gep41 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep37, i64 88
  %wide.gep42 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep38, i64 88
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep39, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %wide.masked.gather43 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep40, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %wide.masked.gather44 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep41, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %wide.masked.gather45 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep42, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !46
  %i.t = icmp eq <8 x i32> %wide.masked.gather, %broadcast.splat
  %i.u = icmp eq <8 x i32> %wide.masked.gather43, %broadcast.splat
  %i.v = icmp eq <8 x i32> %wide.masked.gather44, %broadcast.splat
  %i.w = icmp eq <8 x i32> %wide.masked.gather45, %broadcast.splat
  %i.x = or <8 x i1> %vec.phi, %i.t               ; 2 uses
  %i.y = or <8 x i1> %vec.phi33, %i.u             ; 2 uses
  %i.z = or <8 x i1> %vec.phi34, %i.v             ; 2 uses
  %i.aa = or <8 x i1> %vec.phi35, %i.w            ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 32)
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !163

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.y, %i.x
  %bin.rdx46 = or <8 x i1> %i.z, %bin.rdx
  %bin.rdx47 = or <8 x i1> %i.aa, %bin.rdx46
  %bin.rdx47.fr = freeze <8 x i1> %bin.rdx47
  %i.ac = bitcast <8 x i1> %bin.rdx47.fr to i8
  %i.ad = icmp ne i8 %i.ac, 0
  %rdx.select = select i1 %i.ad, i1 true, i1 %.01419 ; 3 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.r, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.s, %vec.epilog.iter.check ], [ %indvars.iv, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %rdx.select, %vec.epilog.iter.check ], [ %.01419, %vector.main.loop.iter.check ]
  %i.ae = xor i1 %bc.merge.rdx, %.01419
  %n.vec48 = and i64 %i.l, -4                     ; 3 uses
  %i.af = add i64 %indvars.iv, %n.vec48
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert51 = insertelement <4 x i1> poison, i1 %i.ae, i64 0
  %broadcast.splat52 = shufflevector <4 x i1> %broadcast.splatinsert51, <4 x i1> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert53 = insertelement <4 x i64> poison, i64 %bc.resume.val, i64 0
  %broadcast.splat54 = shufflevector <4 x i64> %broadcast.splatinsert53, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction55 = add nuw nsw <4 x i64> %broadcast.splat54, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ]
  %vec.ind57 = phi <4 x i64> [ %induction55, %vec.epilog.ph ], [ %vec.ind.next63, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi58 = phi <4 x i1> [ %broadcast.splat52, %vec.epilog.ph ], [ %.fr68, %vec.epilog.vector.body ]
  %wide.gep59 = getelementptr inbounds nuw [104 x i8], ptr %i.c, <4 x i64> %vec.ind57
  %wide.gep60 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep59, i64 88
  %wide.masked.gather61 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep60, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !46
  %i.ag = icmp eq <4 x i32> %wide.masked.gather61, %broadcast.splat50
  %i.ah = or <4 x i1> %vec.phi58, %i.ag
  %.fr68 = freeze <4 x i1> %i.ah                  ; 2 uses
  %index.next62 = add nuw i64 %index56, 4         ; 2 uses
  %vec.ind.next63 = add nuw nsw <4 x i64> %vec.ind57, splat (i64 4)
  %i.ai = icmp eq i64 %index.next62, %n.vec48
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !164

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aj = bitcast <4 x i1> %.fr68 to i4
  %i.ak = icmp ne i4 %i.aj, 0
  %rdx.select64 = select i1 %i.ak, i1 true, i1 %.01419 ; 2 uses
  %cmp.n65 = icmp eq i64 %i.l, %n.vec48
  br i1 %cmp.n65, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv23.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.s, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.117.ph = phi i1 [ %.01419, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select64, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.lr.ph ], [ %indvars.iv23.ph, %.lr.ph.preheader ] ; 2 uses
  %.117 = phi i1 [ %spec.select, %.lr.ph ], [ %.117.ph, %.lr.ph.preheader ]
  %i.al = getelementptr inbounds nuw [104 x i8], ptr %i.c, i64 %indvars.iv23
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load i32, ptr %i.am, align 8, !tbaa !46
  %i.ao = icmp eq i32 %i.an, %i.o
  %spec.select = select i1 %i.ao, i1 true, i1 %.117 ; 2 uses
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count27
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !165

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.lr.ph21
  %.3 = phi i1 [ %.01419, %.lr.ph21 ], [ %rdx.select64, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge, label %.lr.ph21, !llvm.loop !166
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %0, ptr nofree readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %5 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %6 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %7 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %8 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %9 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %10 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %11 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph223, label %._crit_edge

.lr.ph223:                                        ; preds = %bb.a
  %i.h = udiv exact i64 %i.f, 104
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.n = load ptr, ptr @TMPI_INT, align 8
  %i.o = load ptr, ptr @TMPI_LONG, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph223, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv265 = phi i64 [ 0, %.lr.ph223 ], [ %indvars.iv.next266, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.a, i64 %indvars.iv265
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %i.r = load i32, ptr %i.q, align 8, !tbaa !46
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %3, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv265
  %i.v = load i32, ptr %i.u, align 4, !tbaa !26   ; 8 uses
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i32 %i.v, 0
  br i1 %i.x, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %i.y = shl nuw nsw i32 %i.v, 1                  ; 2 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv265
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !26 ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ad = shl nuw nsw i64 %i.z, 2                 ; 4 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #24 ; 11 uses
  store i32 0, ptr %i.ae, align 4, !tbaa !26
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ad, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.af, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !26
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !176
  %i.ah = sext i32 %i.ac to i64                   ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !26
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !177
  %i.ak = add nsw i32 %i.ac, %i.v
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.al
  store i32 %i.aj, ptr %i.am, align 4, !tbaa !26
  %i.an = load ptr, ptr %i.m, align 8, !tbaa !86, !nonnull !87, !align !88
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ar = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv265
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !16
  %i.au = invoke noundef i32 @_Z14tMPI_AllreducePKvPviP14tmpi_datatype_7tMPI_OpP10tmpi_comm_(ptr noundef null, ptr noundef nonnull %i.ae, i32 noundef %i.y, ptr noundef %i.n, i32 noundef 2, ptr noundef %i.at)
          to label %.lr.ph unwind label %.loopexit ; 0 uses

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %i.av = load i32, ptr %i.ae, align 4, !tbaa !26
  %i.aw = zext nneg i32 %i.v to i64               ; 6 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aw
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aw
  br label %bb.g

bb.f:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.aw
  br i1 %exitcond.not, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i, label %bb.g, !llvm.loop !168

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.f
  %i.ay = shl nuw nsw i64 %i.aw, 3                ; 4 uses
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #24
          to label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit unwind label %bb.y ; 9 uses

.loopexit:                                        ; preds = %bb.e
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !26
  %.not73 = icmp eq i32 %i.bb, %i.av
  br i1 %.not73, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bc = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull @.str.11)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(56) %5)
          to label %bb.j unwind label %.thread141

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %6, align 8, !tbaa !48
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE, ptr %i.bd, align 8, !tbaa !50
  %.sroa.4118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.1, ptr %.sroa.4118.0..sroa_idx, align 8, !tbaa !50
  %.sroa.5119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 329, ptr %.sroa.5119.0..sroa_idx, align 8, !tbaa !26
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bc, ptr noundef nonnull align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr %i.bc, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.ak unwind label %bb.l

.thread:                                          ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread141:                                       ; preds = %bb.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #22
  br label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.k
  %.045 = phi i1 [ false, %bb.k ], [ true, %bb.j ]
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #22
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.045, label %bb.m, label %_ZNSt6vectorIiSaIiEED2Ev.exit103

.sink.split:                                      ; preds = %.thread, %.thread141
  %.pn78.pn140.ph = phi { ptr, i32 } [ %i.bf, %.thread141 ], [ %i.be, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l
  %.pn78.pn140 = phi { ptr, i32 } [ %i.bg, %bb.l ], [ %.pn78.pn140.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.bc) #22
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit103

bb.n:                                             ; preds = %bb.g
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bh = load i32, ptr %gep, align 4, !tbaa !26
  %i.bi = load i32, ptr %i.ax, align 4, !tbaa !26
  %.not74 = icmp eq i32 %i.bh, %i.bi
  br i1 %.not74, label %bb.f, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 24) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull @.str.12)
          to label %bb.p unwind label %.thread144

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
          to label %bb.q unwind label %.thread148

bb.q:                                             ; preds = %bb.p
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %7, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %9, align 8, !tbaa !48
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE, ptr %i.bk, align 8, !tbaa !50
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.1, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !50
  %.sroa.5115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 335, ptr %.sroa.5115.0..sroa_idx, align 8, !tbaa !26
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.bj, ptr noundef nonnull align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr %i.bj, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.ak unwind label %bb.s

.thread144:                                       ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
end_hunk_0
