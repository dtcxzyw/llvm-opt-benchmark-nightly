begin_hunk_0
  %8 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  %9 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 5 uses
  %10 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  %11 = alloca %"struct.OpenImageIO::v3_1::ROI", align 16 ; 6 uses
  %12 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  store ptr @.str.20, ptr %5, align 8, !tbaa !73
end_hunk_0
begin_hunk_1
  %.sroa.gep442 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.gep444 = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 6 uses
  %.sroa.gep445 = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.sroa.gep447 = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %.sroa.gep448 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.sroa.gep450 = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 6 uses
  %.sroa.gep451 = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
end_hunk_1
begin_hunk_2
  %.sroa.2205.0.copyload = phi i32 [ %.sroa.6.0.copyload186, %bb.e ], [ %i.g, %bb.d ] ; 4 uses
  %.sroa.3.0.copyload = phi i32 [ %.sroa.7.0.copyload188, %bb.e ], [ %i.j, %bb.d ] ; 8 uses
  %.sroa.4206.0.copyload = phi i32 [ %.sroa.8.0.copyload190, %bb.e ], [ %i.m, %bb.d ] ; 8 uses
  %.sroa.5207.0.copyload = phi i32 [ %.sroa.9.0.copyload192, %bb.e ], [ %i.p, %bb.d ] ; 8 uses
  %.sroa.6208.0.copyload = phi i32 [ %.sroa.10.0.copyload194, %bb.e ], [ %i.s, %bb.d ] ; 5 uses
  %.sroa.11.0 = phi i32 [ %.sroa.11.0.copyload196, %bb.e ], [ %i.v, %bb.d ]
  %.sroa.12.0 = phi i32 [ %.sroa.12.0.copyload198, %bb.e ], [ %i.y, %bb.d ]
  store i32 %.sroa.0204.0.copyload, ptr %2, align 8, !tbaa !3
end_hunk_2
begin_hunk_3
  br i1 %i.cn, label %.lr.ph, label %.loopexit267

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit91
  %.sroa.030.0.copyload = load <2 x i32>, ptr %2, align 8 ; 4 uses
  %i.co = ptrtoint ptr %.0.i.i.i.i.i.i.i87 to i64
  %i.cp = ptrtoint ptr %.sroa.0140.0 to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
end_hunk_3
begin_hunk_4
  %i.cu = icmp eq i64 %i.cq, %i.ct
  %.not9.i.i.i.i.i.i = icmp eq ptr %.sroa.0140.0, %.0.i.i.i.i.i.i.i87
  %.fr = freeze i1 %i.cu
  %13 = extractelement <2 x i32> %.sroa.030.0.copyload, i64 1 ; 4 uses
  %14 = extractelement <2 x i32> %.sroa.030.0.copyload, i64 0 ; 4 uses
  br i1 %.fr, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.cv = add nsw i32 %.sroa.4206.0.copyload, -1
  store <2 x i32> %.sroa.030.0.copyload, ptr %7, align 8
  store i32 %i.cv, ptr %.sroa.528.0..sroa_idx29, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.gep444, i64 20, i1 false)
  %i.cw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.cr, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %3)
end_hunk_4
begin_hunk_5
.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit266.a
  %i.cy = phi i32 [ %i.cz, %.loopexit266.a ], [ %.sroa.4206.0.copyload, %.lr.ph ] ; 3 uses
  %i.cz = add nsw i32 %i.cy, -1                   ; 5 uses
  store <2 x i32> %.sroa.030.0.copyload, ptr %7, align 8
  store i32 %i.cz, ptr %.sroa.528.0..sroa_idx29, align 8, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.631.0..sroa_idx32, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.gep444, i64 20, i1 false)
  %i.da = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.cr, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %7, i32 noundef %3)
end_hunk_5
begin_hunk_6
  br i1 %i.dl, label %.lr.ph.split, label %.loopexit267, !llvm.loop !454

.loopexit267:                                     ; preds = %.loopexit266.a, %bb.u, %.lr.ph.i.i.i.i.i.i, %.lr.ph.split.us, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit91
  %.promoted = phi i32 [ %14, %.lr.ph.split.us ], [ %.sroa.0204.0.copyload, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit91 ], [ %14, %.lr.ph.i.i.i.i.i.i ], [ %14, %bb.u ], [ %14, %.loopexit266.a ] ; 6 uses
  %.sroa.6.0..sroa_idx184.promoted = phi i32 [ %13, %.lr.ph.split.us ], [ %.sroa.2205.0.copyload, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit91 ], [ %13, %.lr.ph.i.i.i.i.i.i ], [ %13, %bb.u ], [ %13, %.loopexit266.a ] ; 5 uses
  %i.dm = phi i32 [ %.sroa.4206.0.copyload, %.lr.ph.split.us ], [ %.sroa.4206.0.copyload, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit91 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i ], [ %i.cz, %.loopexit266.a ], [ %i.cy, %bb.u ] ; 2 uses
  %i.dn = icmp slt i32 %.sroa.3.0.copyload, %i.dm
  br i1 %i.dn, label %.lr.ph282, label %.loopexit264

.lr.ph282:                                        ; preds = %.loopexit267
  %.sroa.627.0.copyload = load <4 x i32>, ptr %.sroa.gep447, align 8 ; 4 uses
  %i.do = ptrtoint ptr %.0.i.i.i.i.i.i.i87 to i64
  %i.dp = ptrtoint ptr %.sroa.0140.0 to i64
  %i.dq = sub i64 %i.do, %i.dp                    ; 2 uses
end_hunk_6
begin_hunk_7
  %i.du = icmp eq i64 %i.dq, %i.dt
  %.not9.i.i.i.i.i.i92 = icmp eq ptr %.sroa.0140.0, %.0.i.i.i.i.i.i.i87
  %.fr286 = freeze i1 %i.du
  %15 = extractelement <4 x i32> %.sroa.627.0.copyload, i64 1 ; 4 uses
  %16 = extractelement <4 x i32> %.sroa.627.0.copyload, i64 0 ; 4 uses
  br i1 %.fr286, label %.lr.ph282.split, label %.lr.ph282.split.us

.lr.ph282.split.us:                               ; preds = %.lr.ph282
  %i.dv = add nsw i32 %.sroa.3.0.copyload, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  store i32 %i.dv, ptr %.sroa.522.0..sroa_idx23, align 4, !tbaa !3
  store <4 x i32> %.sroa.627.0.copyload, ptr %.sroa.625.0..sroa_idx26, align 8
  %i.dw = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.dr, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %3)
          to label %.loopexit264 unwind label %.split284.us ; 0 uses

end_hunk_7
begin_hunk_8
  %i.dz = add i32 %i.dy, 1                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %2, i64 12, i1 false)
  store i32 %i.dz, ptr %.sroa.522.0..sroa_idx23, align 4, !tbaa !3
  store <4 x i32> %.sroa.627.0.copyload, ptr %.sroa.625.0..sroa_idx26, align 8
  %i.ea = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.dr, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %3)
          to label %bb.ab unwind label %.split284

end_hunk_8
begin_hunk_9
  br i1 %exitcond.not, label %.loopexit264, label %.lr.ph282.split, !llvm.loop !455

.loopexit264:                                     ; preds = %.loopexit263, %bb.ab, %.lr.ph.i.i.i.i.i.i93, %.lr.ph282.split.us, %.loopexit267
  %.sroa.9.0..sroa_idx.promoted = phi i32 [ %16, %.lr.ph282.split.us ], [ %.sroa.5207.0.copyload, %.loopexit267 ], [ %16, %.lr.ph.i.i.i.i.i.i93 ], [ %16, %bb.ab ], [ %16, %.loopexit263 ] ; 3 uses
  %.sroa.10.0..sroa_idx.promoted = phi i32 [ %15, %.lr.ph282.split.us ], [ %.sroa.6208.0.copyload, %.loopexit267 ], [ %15, %.lr.ph.i.i.i.i.i.i93 ], [ %15, %bb.ab ], [ %15, %.loopexit263 ] ; 5 uses
  %i.eh = icmp slt i32 %.sroa.0204.0.copyload, %.sroa.6.0..sroa_idx184.promoted
  br i1 %i.eh, label %.lr.ph287, label %.loopexit261

end_hunk_9
begin_hunk_10
  br i1 %i.fy, label %.preheader, label %.loopexit252

.preheader:                                       ; preds = %_ZStneIfSaIfEEbRKSt6vectorIT_T0_ES6_.exit109.thread220
  %i.fz = icmp slt i32 %.sroa.5207.0.copyload, %.sroa.10.0..sroa_idx.promoted
  br i1 %i.fz, label %.lr.ph305, label %.loopexit255

.lr.ph305:                                        ; preds = %.preheader
  %.sroa.05.0.copyload = load <4 x i32>, ptr %2, align 8 ; 2 uses
  %i.ga = ptrtoint ptr %.0.i.i.i.i.i.i.i87 to i64
  %i.gb = ptrtoint ptr %.sroa.0140.0 to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 2 uses
end_hunk_10
begin_hunk_11
  br i1 %.fr311, label %.lr.ph305.split, label %.lr.ph305.split.us

.lr.ph305.split.us:                               ; preds = %.lr.ph305
  %i.gh = add nsw i32 %.sroa.10.0..sroa_idx.promoted, -1
  store <4 x i32> %.sroa.05.0.copyload, ptr %11, align 16
  store i32 %i.gh, ptr %.sroa.55.0..sroa_idx6, align 16, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.gep450, i64 12, i1 false)
  %i.gi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.gd, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %3)
          to label %.loopexit255 unwind label %.split308.us ; 0 uses
end_hunk_11
begin_hunk_12
  br label %bb.as

.lr.ph305.split:                                  ; preds = %.lr.ph305, %.loopexit254
  %i.gk = phi i32 [ %i.gl, %.loopexit254 ], [ %.sroa.10.0..sroa_idx.promoted, %.lr.ph305 ] ; 3 uses
  %i.gl = add nsw i32 %i.gk, -1                   ; 4 uses
  store <4 x i32> %.sroa.05.0.copyload, ptr %11, align 16
  store i32 %i.gl, ptr %.sroa.55.0..sroa_idx6, align 16, !tbaa !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.68.0..sroa_idx9, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.gep450, i64 12, i1 false)
  %i.gm = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.gd, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %11, i32 noundef %3)
          to label %bb.ak unwind label %.split308
end_hunk_12
begin_hunk_13
  br i1 %i.gt, label %.lr.ph305.split, label %.loopexit255, !llvm.loop !458

.loopexit255:                                     ; preds = %.loopexit254, %bb.ak, %.lr.ph.i.i.i.i.i.i111, %.lr.ph305.split.us, %.preheader
  %i.gu = phi i32 [ %.sroa.10.0..sroa_idx.promoted, %.lr.ph305.split.us ], [ %.sroa.10.0..sroa_idx.promoted, %.preheader ], [ %i.gk, %.lr.ph.i.i.i.i.i.i111 ], [ %.sroa.5207.0.copyload, %.loopexit254 ], [ %i.gk, %bb.ak ] ; 2 uses
  %i.gv = icmp slt i32 %.sroa.9.0..sroa_idx.promoted, %i.gu
  br i1 %i.gv, label %.lr.ph312, label %.loopexit252

.lr.ph312:                                        ; preds = %.loopexit255
  %.sroa.6.0.copyload = load <2 x i32>, ptr %.sroa.gep453, align 8 ; 2 uses
  %i.gw = ptrtoint ptr %.0.i.i.i.i.i.i.i87 to i64
  %i.gx = ptrtoint ptr %.sroa.0140.0 to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 2 uses
end_hunk_13
begin_hunk_14
  br i1 %.fr316, label %.lr.ph312.split, label %.lr.ph312.split.us

.lr.ph312.split.us:                               ; preds = %.lr.ph312
  %i.hd = add nsw i32 %.sroa.9.0..sroa_idx.promoted, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hd, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !3
  store <2 x i32> %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx3, align 8
  %i.he = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.gz, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %.loopexit252 unwind label %.split314.us ; 0 uses

end_hunk_14
begin_hunk_15
  br label %bb.as

.lr.ph312.split:                                  ; preds = %.lr.ph312, %.loopexit251
  %i.hg = phi i32 [ %i.hh, %.loopexit251 ], [ %.sroa.9.0..sroa_idx.promoted, %.lr.ph312 ]
  %i.hh = add i32 %i.hg, 1                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 20, i1 false)
  store i32 %i.hh, ptr %.sroa.5.0..sroa_idx1, align 4, !tbaa !3
  store <2 x i32> %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx3, align 8
  %i.hi = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo15isConstantColorERKNS0_8ImageBufEfNS0_4spanIfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %1, float noundef 0.000000e+00, ptr %.sroa.0140.0, i64 %i.gz, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef %3)
          to label %bb.an unwind label %.split314

end_hunk_15
begin_hunk_16
  store i32 %i.bl, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit123

_ZNSt6vectorIfSaIfEED2Ev.exit123:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit123.loopexit, %bb.ar, %_ZNSt6vectorIfSaIfEED2Ev.exit, %.lr.ph.i, %bb.g
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
end_hunk_16
begin_hunk_17
  %i.i = sdiv i64 %i.d, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2422, !nonnull !154, !align !608 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load <2 x i32>, ptr %i.k, align 4
  %.sroa.6.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload.i.i.i = load <4 x i32>, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 4
  %i.l = trunc i64 %.val3 to i32
  %i.m = trunc i64 %.val4 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
end_hunk_17
begin_hunk_18
  store ptr @.str.30, ptr %4, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !76
  store <2 x i32> %.sroa.0.0.copyload.i.i.i, ptr %5, align 8
  %.sroa.4.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.l, ptr %.sroa.4.0..sroa_idx2.i.i.i, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx1.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx1.i.i.i, align 4, !tbaa !3
  %.sroa.5.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x i32> %.sroa.6.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i, align 8
  call fastcc void @_ZN11OpenImageIO4v3_112_GLOBAL__N_119simplePixelHashSHA1B5cxx11ERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_3ROIE(ptr dead_on_unwind noalias nonnull writable align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef dead_on_return %4, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %5)
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !2423, !nonnull !154, !align !626
end_hunk_18
