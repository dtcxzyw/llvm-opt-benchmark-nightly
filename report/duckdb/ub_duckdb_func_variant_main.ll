inline.NumInlined: 1983
inline.NumDeleted: 978
begin_hunk_0_@_ZN6duckdb12VariantUtils19FinalizeVariantKeysERNS_6VectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS5_ESaISt4pairIKS5_jEEEEERNS_15SelectionVectorEm:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !86   ; 5 uses
  %i.g = icmp ugt i64 %i.f, 2305843009213693951
  br i1 %i.g, label %.noexc, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN6duckdb12VariantUtils19FinalizeVariantKeysERNS_6VectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS5_ESaISt4pairIKS5_jEEEEERNS_15SelectionVectorEm:bb.a

.lr.ph.preheader.a:                               ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc41
  %.0.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.noexc41 ], [ %i.o, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ]
  %.pr = load i64, ptr %i.e, align 8, !tbaa !86
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i.i.ph, ptr %5, align 8, !tbaa !62
  %.not54 = icmp eq i64 %.pr, 0
  br i1 %.not54, label %.loopexitthread-pre-split, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.a
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  br label %.lr.ph
end_hunk_1
begin_hunk_2_@_ZN6duckdb12VariantUtils19FinalizeVariantKeysERNS_6VectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS5_ESaISt4pairIKS5_jEEEEERNS_15SelectionVectorEm:bb.a
._crit_edge:                                      ; preds = %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit
  %i.p = icmp eq i64 %3, 0
  %or.cond.not = or i1 %i.p, %spec.select
  br i1 %or.cond.not, label %.loopexitthread-pre-split, label %.lr.ph53

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit
  %i.q = phi i64 [ %i.aj, %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit ], [ 0, %.lr.ph.preheader ]
  %.051 = phi i1 [ %spec.select, %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit ], [ true, %.lr.ph.preheader ]
  %.03650 = phi i32 [ %i.ai, %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.049 = phi ptr [ %i.ah, %_ZN6duckdb8string_t18SetSizeAndFinalizeEjm.exit ], [ %7, %.lr.ph.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.049, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !92   ; 2 uses
  %.not = icmp eq i32 %i.s, %.03650
end_hunk_2
begin_hunk_3_@_ZN6duckdb12VariantUtils19FinalizeVariantKeysERNS_6VectorERNS_15OwningStringMapIjSt3mapINS_8string_tEjSt4lessIS5_ESaISt4pairIKS5_jEEEEERNS_15SelectionVectorEm:bb.a
  store i32 %i.at, ptr %i.ap, align 4, !tbaa !3
  %i.au = add nuw i64 %.03252, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %3
  br i1 %exitcond.not, label %.loopexitthread-pre-split, label %.lr.ph53, !llvm.loop !97

bb.f:                                             ; preds = %.lr.ph53
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexitthread-pre-split:                        ; preds = %bb.e, %._crit_edge, %.lr.ph.preheader.a
  %.pr67 = load ptr, ptr %4, align 8, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i, %.loopexitthread-pre-split
  %8 = phi ptr [ %.pr67, %.loopexitthread-pre-split ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %8, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.g

end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm:bb.a
bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !469
  %i.d = load ptr, ptr %0, align 8, !tbaa !471
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm:bb.a
  br i1 %i.i, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit, label %bb.e

_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !472
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 6
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 4 uses
  %2 = load ptr, ptr %0, align 8, !tbaa !471      ; 3 uses
  %3 = load ptr, ptr %i.j, align 8, !tbaa !472    ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit ] ; 3 uses
  tail call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i) #28
  tail call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.0911.i.i.i.i) #28
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64
  %.not.i.i.i.i = icmp eq ptr %i.p, %3
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !476

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6duckdb5ValueESaIS1_EE7reserveEm:bb.a
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit, %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit
  %i.r = phi ptr [ %.pre, %_ZNSt6vectorIN6duckdb5ValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.loopexit ], [ %2, %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE11_M_allocateEm.exit ] ; 2 uses
  %.not.i8 = icmp eq ptr %i.r, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN6duckdb5ValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

end_hunk_6
