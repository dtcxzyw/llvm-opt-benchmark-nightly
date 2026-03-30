begin_hunk_0
; Function Attrs: mustprogress uwtable
define void @_ZN4geos9algorithm9construct18LargestEmptyCircle7computeEv(ptr noundef nonnull align 8 dereferenceable(144) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.05.i.i48 = alloca { double, double, double, double }, align 8 ; 4 uses
  %1 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %.sroa.05.i.i34 = alloca { double, double, double, double }, align 8 ; 4 uses
  %2 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %.sroa.05.i.i20 = alloca { double, double, double, double }, align 8 ; 4 uses
  %3 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %.sroa.05.i.i = alloca { double, double, double, double }, align 8 ; 4 uses
  %4 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
end_hunk_0
begin_hunk_1
  %.0.lcssa.i.i.i.i.i.i80.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i80, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82 ], [ %i.dr, %bb.w ] ; 8 uses
  %i.fg = phi ptr [ %i.ev, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i82 ], [ %i.ds, %bb.w ] ; 11 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i80.pn, i64 40 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i20)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.i.i20, ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i.i.i.i.i.i80.pn, i64 32, i1 false)
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = sub i64 %i.fi, %.pre-phi338             ; 4 uses
  %i.fk = sdiv exact i64 %i.fj, 40                ; 4 uses
end_hunk_1
begin_hunk_2
.loopexit198:                                     ; preds = %bb.z, %.lr.ph.i.i.i25, %.noexc30
  %.0.lcssa.i.i.i23 = phi i64 [ %i.fl, %.noexc30 ], [ %.018.i.i.i26, %.lr.ph.i.i.i25 ], [ 0, %bb.z ]
  %i.fs = getelementptr inbounds [40 x i8], ptr %i.fg, i64 %.0.lcssa.i.i.i23 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fs, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.i.i20, i64 32, i1 false), !tbaa.struct !100
  %.sroa.4.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  store double %.sroa.410.0.copyload.i.i22, ptr %.sroa.4.0..sroa_idx.i.i24, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i20)
  %i.ft = extractelement <2 x double> %i.ak, i64 1
  %i.fu = fadd double %i.ft, %i.cm                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
end_hunk_2
begin_hunk_3
  %.0.lcssa.i.i.i.i.i.i112.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i112, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %i.gx, %bb.ag ] ; 2 uses
  %i.ik = phi ptr [ %i.hz, %_ZNSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE17_M_realloc_insertIJddRddEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i114 ], [ %i.gy, %bb.ag ] ; 4 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i112.pn, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i48)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.i.i48, ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i.i.i.i.i.i112.pn, i64 32, i1 false)
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = sub i64 %i.im, %.pre-phi342             ; 2 uses
  %i.io = sdiv exact i64 %i.in, 40
end_hunk_3
begin_hunk_4
.loopexit:                                        ; preds = %bb.aj, %.lr.ph.i.i.i53, %.noexc58
  %.0.lcssa.i.i.i51 = phi i64 [ %i.ip, %.noexc58 ], [ %.018.i.i.i54, %.lr.ph.i.i.i53 ], [ 0, %bb.aj ]
  %i.iw = getelementptr inbounds [40 x i8], ptr %i.ik, i64 %.0.lcssa.i.i.i51 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.i.i48, i64 32, i1 false), !tbaa.struct !100
  %.sroa.4.0..sroa_idx.i.i52 = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  store double %.sroa.410.0.copyload.i.i50, ptr %.sroa.4.0..sroa_idx.i.i52, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i.i48)
  br label %_ZN4geos9algorithm9construct18LargestEmptyCircle22mayContainCircleCenterERKNS2_4CellES5_.exit.thread

.loopexit200:                                     ; preds = %bb.p, %_ZNKSt6vectorIN4geos9algorithm9construct18LargestEmptyCircle4CellESaIS4_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_4
