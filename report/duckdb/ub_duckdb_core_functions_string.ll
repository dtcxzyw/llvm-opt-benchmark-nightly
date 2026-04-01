begin_hunk_0
  %i.w = alloca i64, align 8                      ; 4 uses
  %i.x = alloca i64, align 8                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %12 = alloca %"class.duckdb::vector.97", align 8 ; 15 uses
  %13 = alloca %"class.duckdb::vector.88", align 8 ; 9 uses
  %14 = alloca %"class.std::map", align 8         ; 11 uses
  %15 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
end_hunk_0
begin_hunk_1
  %i.az = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.at, ptr %i.az, align 8, !tbaa !1698
  %i.ba = add nuw nsw i64 %i.ab, 2                ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.bb = mul nuw nsw i64 %i.ba, 24
  %i.bc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bb) #27
          to label %.noexc81.i.i.i unwind label %bb.h ; 3 uses

.noexc81.i.i.i:                                   ; preds = %_ZNSt6vectorIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i.i.i.i
  store ptr %i.bc, ptr %12, align 8, !tbaa !1705
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1708
  %i.bf = invoke noundef ptr @_ZSt18__do_uninit_fill_nIPN6duckdb6vectorImLb1ESaImEEEmS3_ET_S5_T0_RKT1_(ptr noundef nonnull %i.bc, i64 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.e unwind label %bb.c

end_hunk_1
begin_hunk_2
  br label %.body.i.i.i

bb.e:                                             ; preds = %.noexc81.i.i.i
  store ptr %i.bf, ptr %17, align 8, !tbaa !1709
  %i.bi = load ptr, ptr %13, align 8, !tbaa !1695 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.f
end_hunk_2
begin_hunk_3
  %i.fb = add nuw nsw i64 %.059236.i.i.i, 1       ; 9 uses
  %.1.i.i.i = select i1 %i.fa, i64 %.060235.i.i.i, i64 %i.fb
  %.0.i.i.i = zext i1 %i.fa to i64
  %i.fc = load ptr, ptr %17, align 8, !tbaa !1709
  %i.fd = load ptr, ptr %12, align 8, !tbaa !1705 ; 4 uses
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = ptrtoint ptr %i.fd to i64
end_hunk_3
begin_hunk_4
_ZNSt3mapIcmSt4lessIcESaISt4pairIKcmEEED2Ev.exit.i.i.i: ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.ki = load ptr, ptr %12, align 8, !tbaa !1705 ; 3 uses
  %i.kj = load ptr, ptr %17, align 8, !tbaa !1709 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.ki, %i.kj
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorImLb1ESaImEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

end_hunk_4
begin_hunk_5
_ZNSt3mapIcmSt4lessIcESaISt4pairIKcmEEED2Ev.exit.i.i: ; preds = %.body86.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %i.kr = load ptr, ptr %12, align 8, !tbaa !1705 ; 3 uses
  %i.ks = load ptr, ptr %17, align 8, !tbaa !1709 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.kr, %i.ks
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorImLb1ESaImEEES3_EvT_S5_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

end_hunk_5
begin_hunk_6
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1709
  %i.e = load ptr, ptr %0, align 8, !tbaa !1705   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
end_hunk_6
begin_hunk_7
!1705 = !{!1706, !1707, i64 0}
!1706 = !{!"_ZTSNSt12_Vector_baseIN6duckdb6vectorImLb1ESaImEEESaIS3_EE17_Vector_impl_dataE", !1707, i64 0, !1707, i64 8, !1707, i64 16}
!1707 = !{!"p1 _ZTSN6duckdb6vectorImLb1ESaImEEE", !10, i64 0}
!1708 = !{!1706, !1707, i64 16}
!1709 = !{!1706, !1707, i64 8}
!1710 = !{!1711, !1713, i64 0}
!1711 = !{!"_ZTSSt15_Rb_tree_header", !1712, i64 0, !27, i64 32}
!1712 = !{!"_ZTSSt18_Rb_tree_node_base", !1713, i64 0, !1714, i64 8, !1714, i64 16, !1714, i64 24}
end_hunk_7
