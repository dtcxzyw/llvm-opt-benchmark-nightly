inline.NumInlined: 8095
inline.NumDeleted: 2632
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
  %4 = alloca %"class.OpenImageIO::v3_1::pvt::LoggedTimer", align 8 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"struct.OpenImageIO::v3_1::ROI", align 4 ; 13 uses
  %7 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  %9 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
  br i1 %i.cn, label %.lr.ph, label %.loopexit267

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit91
  %i.co = load i64, ptr %2, align 8               ; 4 uses
  %i.cp = ptrtoint ptr %.0.i.i.i.i.i.i.i87 to i64
  %i.cq = ptrtoint ptr %.sroa.0140.0 to i64
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = ashr exact i64 %i.cr, 2                 ; 2 uses
  %.sroa.528.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %.sroa.631.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ct = ptrtoint ptr %.sroa.0168.0 to i64
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cz = add nsw i32 %.sroa.4206.0.copyload, -1
  store i64 %i.co, ptr %7, align 8
  store i32 %i.cz, ptr %.sroa.528.0..sroa_idx29, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.gep444, i64 20, i1 false)
  %i.da = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.cs, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %3)
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit266
  %i.dc = phi i32 [ %i.dd, %.loopexit266 ], [ %.sroa.4206.0.copyload, %.lr.ph ] ; 3 uses
  %i.dd = add nsw i32 %i.dc, -1                   ; 5 uses
  store i64 %i.co, ptr %7, align 8
  store i32 %i.dd, ptr %.sroa.528.0..sroa_idx29, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.gep444, i64 20, i1 false)
  %i.de = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.cs, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %3)
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
  br i1 %i.gz, label %.lr.ph312, label %.loopexit252

.lr.ph312:                                        ; preds = %.loopexit255
  %i.ha = load i64, ptr %.sroa.gep453, align 8    ; 2 uses
  %i.hb = ptrtoint ptr %.0.i.i.i.i.i.i.i87 to i64
  %i.hc = ptrtoint ptr %.sroa.0140.0 to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 2 uses
  %i.he = ashr exact i64 %i.hd, 2                 ; 2 uses
  %.sroa.5.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %12, i64 20 ; 2 uses
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.hf = ptrtoint ptr %.sroa.0168.0 to i64
  %i.hg = sub i64 %.0.i.i.i.i.i.i.i, %i.hf
  %i.hh = icmp eq i64 %i.hd, %i.hg
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
  %i.hi = add nsw i32 %.sroa.5207.0.copyload, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hi, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !3
  store i64 %i.ha, ptr %.sroa.6.0..sroa_idx3, align 8
  %i.hj = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.he, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %.loopexit252 unwind label %.split314.us ; 0 uses

end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_112ImageBufAlgo14nonzero_regionERKNS0_8ImageBufENS0_3ROIEi:bb.a
  %i.hm = add i32 %i.hl, 1                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hm, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !3
  store i64 %i.ha, ptr %.sroa.6.0..sroa_idx3, align 8
  %i.hn = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.he, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %bb.an unwind label %.split314

end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_112_GLOBAL__N_119simplePixelHashSHA1B5cxx11ERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_3ROIE:bb.a
  br i1 %i.ai, label %.lr.ph73.split.us, label %._crit_edge74

.lr.ph73.split.us:                                ; preds = %.lr.ph73
  br i1 %.not, label %.lr.ph.us.us, label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph73.split.us, %._crit_edge.split.us.us.us
  %.03770.us.us = phi i32 [ %i.as, %._crit_edge.split.us.us.us ], [ %i.aa, %.lr.ph73.split.us ] ; 2 uses
  %i.as = add nsw i32 %.03770.us.us, 1            ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.us.us
  %.03669.us.us.us = phi i32 [ %i.af, %.lr.ph.us.us ], [ %i.at, %bb.m ] ; 3 uses
  %i.at = add nsw i32 %.03669.us.us.us, %.sroa.speculated57 ; 3 uses
  %.sroa.speculated.us.us.us = call i32 @llvm.smin.i32(i32 %i.ah, i32 %i.at) ; 2 uses
  store i32 %i.c, ptr %5, align 8, !tbaa !77
  store i32 %i.f, ptr %i.aj, align 4, !tbaa !168
  store i32 %.03669.us.us.us, ptr %i.ak, align 8, !tbaa !104
  store i32 %.sroa.speculated.us.us.us, ptr %i.al, align 4, !tbaa !105
  store i32 %.03770.us.us, ptr %i.am, align 8, !tbaa !170
  store i32 %i.as, ptr %i.an, align 4, !tbaa !169
  store i32 0, ptr %i.ao, align 8, !tbaa !171
  store i32 10000, ptr %i.ap, align 4, !tbaa !80
  %i.au = invoke noundef nonnull align 8 dereferenceable(160) ptr @_ZNK11OpenImageIO4v3_18ImageBuf4specEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.k unwind label %.split.us.split.us.split.us

end_hunk_7
