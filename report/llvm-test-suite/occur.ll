inline.NumInlined: 76
inline.NumDeleted: 11
begin_hunk_0_@_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE:bb.a
  %.01621.i = load ptr, ptr @Thelanguages, align 8, !tbaa !52 ; 3 uses
  %i.n = load ptr, ptr %.01621.i, align 8, !tbaa !8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(24) %.01621.i), !inline_history !53
  %i.q = icmp eq i32 %i.p, 165
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

end_hunk_0
begin_hunk_1_@_ZN2kc22f_useoccurlanguagenameEPNS_18impl_languagenamesE:bb.a
  %.016.i = load ptr, ptr %i.r, align 8, !tbaa !52 ; 3 uses
  %i.s = load ptr, ptr %.016.i, align 8, !tbaa !8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(24) %.016.i), !inline_history !53
  %i.v = icmp eq i32 %i.u, 165
  br i1 %i.v, label %.lr.ph.i, label %._crit_edge.i

end_hunk_1
begin_hunk_2_@_ZN2kc5FatalEPNS_13impl_filelineEPNS_12impl_problemE
!50 = !{!"p1 _ZTSN2kc18impl_languagenamesE", !15, i64 0}
!51 = !{!48, !50, i64 16}
!52 = !{!50, !50, i64 0}
!53 = distinct !{null}
end_hunk_2
