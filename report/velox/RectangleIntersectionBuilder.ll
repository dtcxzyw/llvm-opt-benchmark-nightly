inline.NumInlined: 915
inline.NumDeleted: 501
begin_hunk_0_@_ZN4geos9operation12intersection8distanceERKNS1_9RectangleERKSt6vectorINS_4geom10CoordinateESaIS7_EE:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %.sroa.014 = alloca { double, double }, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014)
  %i.a = icmp ult i64 %1, %2
  br i1 %i.a, label %.lr.ph, label %._crit_edge

end_hunk_0
begin_hunk_1_@_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm:bb.a
  %.01118 = phi i64 [ %i.g, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.01118 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.515.0.copyload = load double, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !99
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.019 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  store double %.sroa.5.0.copyload, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !99
  %i.e = load ptr, ptr %0, align 8, !tbaa !94
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.019 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store double %.sroa.515.0.copyload, ptr %.sroa.515.0..sroa_idx16, align 8, !tbaa !99
  %i.g = add nuw i64 %.01118, 1                   ; 2 uses
  %i.h = add i64 %.019, -1                        ; 2 uses
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014)
  ret void
}

end_hunk_1
begin_hunk_2_@llvm.memcpy.p0.p0.i64
; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4geos9operation12intersection14normalize_ringERSt6vectorINS_4geom10CoordinateESaIS4_EE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #9 {
bb.a:
  %.sroa.014.i41 = alloca { double, double }, align 8 ; 4 uses
  %.sroa.014.i31 = alloca { double, double }, align 8 ; 4 uses
  %.sroa.014.i = alloca { double, double }, align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !101    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.g, label %.lr.ph.preheader

end_hunk_2
begin_hunk_3_@_ZN4geos9operation12intersection14normalize_ringERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  %.1 = phi i64 [ %.02954, %bb.b ], [ %.055, %bb.d ], [ %.02954, %bb.c ], [ %.055, %.lr.ph ] ; 5 uses
  %i.u = add nuw i64 %.055, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

bb.f:                                             ; preds = %._crit_edge
  %i.v = add i64 %.1, -1                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i)
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit, label %.lr.ph.i

end_hunk_3
begin_hunk_4_@_ZN4geos9operation12intersection14normalize_ringERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  %.01118.i = phi i64 [ %i.ab, %.lr.ph.i ], [ 0, %bb.f ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !94     ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.01118.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %.sroa.515.0.copyload.i = load double, ptr %.sroa.515.0..sroa_idx.i, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %.019.i ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.5.0.copyload.i = load double, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !99
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  store double %.sroa.5.0.copyload.i, ptr %.sroa.515.0..sroa_idx.i, align 8, !tbaa !99
  %i.z = load ptr, ptr %0, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.019.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store double %.sroa.515.0.copyload.i, ptr %.sroa.515.0..sroa_idx16.i, align 8, !tbaa !99
  %i.ab = add nuw i64 %.01118.i, 1                ; 2 uses
  %i.ac = add i64 %.019.i, -1                     ; 2 uses
  %i.ad = icmp ult i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit, !llvm.loop !100

_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit: ; preds = %.lr.ph.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i)
  %i.ae = add nsw i64 %i.h, -2                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i31)
  %i.af = icmp ult i64 %.1, %i.ae
  br i1 %i.af, label %.lr.ph.i32, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40

end_hunk_4
begin_hunk_5_@_ZN4geos9operation12intersection14normalize_ringERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  %.01118.i34 = phi i64 [ %i.al, %.lr.ph.i32 ], [ %.1, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit ] ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.01118.i34 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i31, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.515.0.copyload.i36 = load double, ptr %.sroa.515.0..sroa_idx.i35, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.019.i33 ; 2 uses
  %.sroa.5.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.copyload.i38 = load double, ptr %.sroa.5.0..sroa_idx.i37, align 8, !tbaa !99
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  store double %.sroa.5.0.copyload.i38, ptr %.sroa.515.0..sroa_idx.i35, align 8, !tbaa !99
  %i.aj = load ptr, ptr %0, align 8, !tbaa !94
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %.019.i33 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i31, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16.i39 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store double %.sroa.515.0.copyload.i36, ptr %.sroa.515.0..sroa_idx16.i39, align 8, !tbaa !99
  %i.al = add nuw i64 %.01118.i34, 1              ; 2 uses
  %i.am = add i64 %.019.i33, -1                   ; 2 uses
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %.lr.ph.i32, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40, !llvm.loop !100

_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40: ; preds = %.lr.ph.i32, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i31)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.014.i41)
  %.not53 = icmp eq i64 %i.ae, 0
  br i1 %.not53, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50, label %.lr.ph.i42

end_hunk_5
begin_hunk_6_@_ZN4geos9operation12intersection14normalize_ringERSt6vectorINS_4geom10CoordinateESaIS4_EE:bb.a
  %.01118.i44 = phi i64 [ %i.at, %.lr.ph.i42 ], [ 0, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40 ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !94    ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.01118.i44 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i41, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.sroa.515.0.copyload.i46 = load double, ptr %.sroa.515.0..sroa_idx.i45, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.019.i43 ; 2 uses
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.5.0.copyload.i48 = load double, ptr %.sroa.5.0..sroa_idx.i47, align 8, !tbaa !99
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  store double %.sroa.5.0.copyload.i48, ptr %.sroa.515.0..sroa_idx.i45, align 8, !tbaa !99
  %i.ar = load ptr, ptr %0, align 8, !tbaa !94
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.019.i43 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.i41, i64 16, i1 false), !tbaa.struct !98
  %.sroa.515.0..sroa_idx16.i49 = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store double %.sroa.515.0.copyload.i46, ptr %.sroa.515.0..sroa_idx16.i49, align 8, !tbaa !99
  %i.at = add nuw i64 %.01118.i44, 1              ; 2 uses
  %i.au = add i64 %.019.i43, -1                   ; 2 uses
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.lr.ph.i42, label %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50, !llvm.loop !100

_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50: ; preds = %.lr.ph.i42, %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.014.i41)
  %i.aw = load ptr, ptr %0, align 8, !tbaa !94    ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.g   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  %.sroa.5.0..sroa_idx51 = getelementptr i8, ptr %i.ax, i64 -8
  store double %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx51, align 8, !tbaa !99
  br label %bb.g

bb.g:                                             ; preds = %_ZN4geos9operation12intersection14reverse_pointsERSt6vectorINS_4geom10CoordinateESaIS4_EEmm.exit50, %._crit_edge, %bb.a
end_hunk_6
begin_hunk_7_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a
  br i1 %or.cond, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ap = load double, ptr %i.i, align 8, !tbaa !103
  %i.aq = fcmp une double %.042, %i.ap
  %i.ar = fcmp ult double %5, %.041
  %or.cond47 = or i1 %i.ar, %i.aq
  br i1 %or.cond47, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.as = load double, ptr %i.c, align 8, !tbaa !104
  %i.at = fcmp une double %.041, %i.as
  %i.au = fcmp ugt double %6, %.042
  %or.cond48 = or i1 %i.au, %i.at
  br i1 %or.cond48, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.av = load double, ptr %i.f, align 8, !tbaa !105
  %i.aw = fcmp une double %.042, %i.av
  %i.ax = fcmp ugt double %5, %.041
  %or.cond49 = or i1 %i.ax, %i.aw
end_hunk_7
begin_hunk_8_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a

bb.w:                                             ; preds = %bb.v
  %i.ba = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 8 uses
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !106
  %.not.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store double %5, ptr %i.ba, align 8, !tbaa !99
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store double %6, ptr %.sroa.582.0..sroa_idx, align 8, !tbaa !99
  %.sroa.685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store double +qnan, ptr %.sroa.685.0..sroa_idx, align 8, !tbaa !99
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %i.bc, ptr %i.aj, align 8, !tbaa !91
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit
end_hunk_8
begin_hunk_9_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a
  %i.bn = mul nuw nsw i64 %i.bm, 24
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #18 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bg ; 3 uses
  store double %5, ptr %i.bp, align 8, !tbaa !99
  %.sroa.582.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store double %6, ptr %.sroa.582.0..sroa_idx83, align 8, !tbaa !99
  %.sroa.685.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store double +qnan, ptr %.sroa.685.0..sroa_idx86, align 8, !tbaa !99
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bd, %i.ba
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bo, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bd, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98, !alias.scope !107
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.ba
end_hunk_9
begin_hunk_10_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a
  store ptr %i.bo, ptr %2, align 8, !tbaa !94
  store ptr %i.bs, ptr %i.aj, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bt, ptr %i.ak, align 8, !tbaa !106
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit

bb.ab:                                            ; preds = %bb.u, %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74
end_hunk_10
begin_hunk_11_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
  %.0.i6090103 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread ], [ 8, %bb.ab ], [ 8, %bb.ab ]
  %i.bz = load double, ptr %i.i, align 8, !tbaa !103
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread: ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread
end_hunk_11
begin_hunk_12_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i609098110 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 16, %bb.ab ], [ 16, %bb.ab ]
  %i.cb = load double, ptr %i.c, align 8, !tbaa !104
  br label %bb.ac

_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread: ; preds = %bb.ab, %bb.ab, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread
  %.0.i609098106 = phi i32 [ %.0, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread ], [ 32, %bb.ab ], [ 32, %bb.ab ]
  %i.cc = load double, ptr %i.f, align 8, !tbaa !105
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92
end_hunk_12
begin_hunk_13_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a
  %.143 = phi double [ %.042, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %i.bz, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %.042, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %i.cc, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ] ; 3 uses
  %.1 = phi double [ %i.bx, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread92 ], [ %.041, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread100 ], [ %i.cb, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread107 ], [ %.041, %_ZN4geos9operation12intersection9Rectangle8nextEdgeENS2_8PositionE.exit.thread.thread.thread ] ; 3 uses
  %i.cd = load ptr, ptr %i.aj, align 8, !tbaa !91 ; 8 uses
  %i.ce = load ptr, ptr %i.ak, align 8, !tbaa !106
  %.not.i.i61 = icmp eq ptr %i.cd, %i.ce
  br i1 %.not.i.i61, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store double %.1, ptr %i.cd, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store double %.143, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !99
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.cf, ptr %i.aj, align 8, !tbaa !91
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge
end_hunk_13
begin_hunk_14_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a
  %i.cq = mul nuw nsw i64 %i.cp, 24
  %i.cr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cq) #18 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cj ; 3 uses
  store double %.1, ptr %i.cs, align 8, !tbaa !99
  %.sroa.5.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store double %.143, ptr %.sroa.5.0..sroa_idx76, align 8, !tbaa !99
  %.sroa.6.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store double +qnan, ptr %.sroa.6.0..sroa_idx78, align 8, !tbaa !99
  %.not10.i.i.i.i.i.i.i65 = icmp eq ptr %i.cg, %i.cd
  br i1 %.not10.i.i.i.i.i.i.i65, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i70, label %.lr.ph.i.i.i.i.i.i.i66

.lr.ph.i.i.i.i.i.i.i66:                           ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62, %.lr.ph.i.i.i.i.i.i.i66
  %.012.i.i.i.i.i.i.i67 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i66 ], [ %i.cr, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i68 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i.i66 ], [ %i.cg, %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i62 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i.i67, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i.i68, i64 24, i1 false), !tbaa.struct !98, !alias.scope !113
  %i.ct = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i68, i64 24 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i67, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i69 = icmp eq ptr %i.ct, %i.cd
end_hunk_14
begin_hunk_15_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder14close_boundaryERKNS1_9RectangleEPSt6vectorINS_4geom10CoordinateESaIS8_EEdddd:bb.a
  store ptr %i.cr, ptr %2, align 8, !tbaa !94
  store ptr %i.cv, ptr %i.aj, align 8, !tbaa !91
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.cp
  store ptr %i.cw, ptr %i.ak, align 8, !tbaa !106
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit74.backedge

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.x, %bb.v
end_hunk_15
begin_hunk_16_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder17reconnectPolygonsERKNS1_9RectangleE:bb.a

_ZNK4geos4geom18CoordinateSequenceixEm.exit131:   ; preds = %bb.aq
  %i.fr = load ptr, ptr %i.ai, align 8, !tbaa !91 ; 5 uses
  %i.fs = load ptr, ptr %i.fg, align 8, !tbaa !106
  %.not.i132 = icmp eq ptr %i.fr, %i.fs
  br i1 %.not.i132, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4geos4geom18CoordinateSequenceixEm.exit131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fr, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !tbaa.struct !98
  %i.ft = load ptr, ptr %i.ai, align 8, !tbaa !91
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store ptr %i.fu, ptr %i.ai, align 8, !tbaa !91
end_hunk_16
begin_hunk_17_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder17reconnectPolygonsERKNS1_9RectangleE:bb.a

.noexc134:                                        ; preds = %_ZNKSt6vectorIN4geos4geom10CoordinateESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false), !tbaa.struct !98
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.fv, %i.fr
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc134, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i.i.i.i ], [ %i.gg, %.noexc134 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i ], [ %i.fv, %.noexc134 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !98, !alias.scope !131
  %i.gi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gi, %i.fr
end_hunk_17
begin_hunk_18_@_ZN4geos9operation12intersection28RectangleIntersectionBuilder17reconnectPolygonsERKNS1_9RectangleE:bb.a
  store ptr %i.gg, ptr %.173, align 8, !tbaa !94
  store ptr %i.gk, ptr %i.ai, align 8, !tbaa !91
  %i.gl = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.gl, ptr %i.fg, align 8, !tbaa !106
  br label %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4geos4geom10CoordinateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ar
end_hunk_18
begin_hunk_19_@llvm.umin.i64
!95 = !{!96, !81, i64 0}
!96 = !{!"_ZTSN4geos4geom10CoordinateE", !81, i64 0, !81, i64 8, !81, i64 16}
!97 = !{!96, !81, i64 8}
!98 = !{i64 0, i64 8, !99, i64 8, i64 8, !99, i64 16, i64 8, !99}
!99 = !{!81, !81, i64 0}
!100 = distinct !{!100, !16}
!101 = !{!93, !93, i64 0}
!102 = distinct !{!102, !16}
!103 = !{!80, !81, i64 24}
!104 = !{!80, !81, i64 16}
!105 = !{!80, !81, i64 8}
!106 = !{!92, !93, i64 16}
!107 = !{!108, !110}
!108 = distinct !{!108, !109, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!109 = distinct !{!109, !"_ZSt19__relocate_object_aIN4geos4geom10CoordinateES2_SaIS2_EEvPT_PT0_RT1_"}
end_hunk_19
