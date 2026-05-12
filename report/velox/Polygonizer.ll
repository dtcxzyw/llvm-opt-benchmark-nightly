inline.NumInlined: 361
inline.NumDeleted: 230
begin_hunk_0_@_ZN4geos9operation10polygonize11Polygonizer18findShellsAndHolesERKSt6vectorIPNS1_8EdgeRingESaIS5_EE:bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit
  %.sroa.019.023 = phi ptr [ %i.i, %.lr.ph ], [ %i.be, %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE9push_backERKS4_.exit ] ; 5 uses
  %i.n = load ptr, ptr %.sroa.019.023, align 8, !tbaa !83
  tail call void @_ZN4geos9operation10polygonize8EdgeRing11computeHoleEv(ptr noundef nonnull align 8 dereferenceable(77) %i.n)
  %i.o = load ptr, ptr %.sroa.019.023, align 8, !tbaa !83 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load i8, ptr %i.p, align 8, !tbaa !147, !range !67, !noundef !68
  %i.r = trunc nuw i8 %i.q to i1
end_hunk_0
begin_hunk_1_@_ZN4geos9operation10polygonize11Polygonizer18findShellsAndHolesERKSt6vectorIPNS1_8EdgeRingESaIS5_EE:bb.a
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #15 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  %2 = load ptr, ptr %.sroa.019.023, align 8, !tbaa !83
  store ptr %2, ptr %i.ah, align 8, !tbaa !83
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.g, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

end_hunk_1
begin_hunk_2_@_ZN4geos9operation10polygonize11Polygonizer18findShellsAndHolesERKSt6vectorIPNS1_8EdgeRingESaIS5_EE:bb.a
  %i.ay = shl nuw nsw i64 %i.ax, 3
  %i.az = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #15 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.ar ; 2 uses
  %3 = load ptr, ptr %.sroa.019.023, align 8, !tbaa !83
  store ptr %3, ptr %i.ba, align 8, !tbaa !83
  %i.bb = icmp sgt i64 %i.ar, 0
  br i1 %i.bb, label %bb.m, label %_ZNSt6vectorIPN4geos9operation10polygonize8EdgeRingESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i15

end_hunk_2
