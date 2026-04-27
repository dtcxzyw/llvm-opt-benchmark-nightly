inline.NumInlined: 716
inline.NumDeleted: 392
begin_hunk_0_@_ZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmb:bb.a

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %._crit_edge
  %.04482 = phi i64 [ %i.fk, %._crit_edge ], [ 0, %.lr.ph84.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.04482 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ey) ]
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !45 ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04482
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !31 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmb:bb.a
  %i.gb = phi ptr [ %i.fy, %.lr.ph.i ], [ %i.mv, %.loopexit.i ] ; 3 uses
  %.095.i = phi i32 [ 0, %.lr.ph.i ], [ %.3.i, %.loopexit.i ] ; 3 uses
  %.06694.i = phi i64 [ 0, %.lr.ph.i ], [ %i.mw, %.loopexit.i ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.06694.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !45 ; 5 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.06694.i
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !31 ; 6 uses
end_hunk_1
begin_hunk_2_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit
  %i.de = phi i16 [ %i.cz, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ], [ %.sroa.13.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.07.0.lcssa = phi ptr [ null, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EED2Ev.exit ], [ %.sroa.07.1, %._crit_edge.loopexit ] ; 18 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 156168 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18) %i.df, i8 0, i64 18, i1 false)
  %.not.i64 = icmp eq i16 %i.de, 0
end_hunk_2
begin_hunk_3_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  br i1 %i.eh, label %.critedge, label %.lr.ph54

.lr.ph54:                                         ; preds = %_ZN7libfsst11SymbolTable5clearEv.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.07.0.lcssa) ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.07.0.lcssa, i64 8
  %i.ei = ptrtoint ptr %.sroa.07.0.lcssa to i64   ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 131072
end_hunk_3
begin_hunk_4_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  %.010.i.i.i = phi i64 [ %.0911.i1718.i.i, %bb.y ], [ %i.fg, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i ] ; 3 uses
  %.0911.in.i.i.i = add nsw i64 %.010.i.i.i, -1
  %.0911.i1718.i.i = lshr i64 %.0911.in.i.i.i, 1  ; 3 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.07.1, i64 %.0911.i1718.i.i ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fi) ]
  %.val.i.i.i.i = load i64, ptr %i.fi, align 8
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %.val2.i.i.i.i = load i32, ptr %i.fj, align 8, !tbaa !75 ; 2 uses
end_hunk_4
begin_hunk_5_@"_ZZN7libfsst16buildSymbolTableERNS_8CountersESt6vectorIPKhSaIS4_EEPKmbENK3$_2clEPNS_11SymbolTableES1_":bb.a
  br i1 %i.fn, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.lr.ph.i.i.i
  %i.fo = getelementptr inbounds [24 x i8], ptr %.sroa.07.1, i64 %.010.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fo) ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fo, ptr noundef nonnull align 8 dereferenceable(20) %i.fi, i64 20, i1 false), !tbaa.struct !69
  %.not.i3.i = icmp eq i64 %.0911.i1718.i.i, 0
  br i1 %.not.i3.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !77

.loopexit:                                        ; preds = %bb.y, %.lr.ph.i.i.i, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i
  %.0.lcssa.i.i.i = phi i64 [ %i.fg, %_ZNSt6vectorIN7libfsst7QSymbolESaIS1_EE9push_backERKS1_.exit.i ], [ %.010.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.y ]
  %i.fp = getelementptr inbounds [24 x i8], ptr %.sroa.07.1, i64 %.0.lcssa.i.i.i ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  store i64 %.sroa.013.0.copyload.i.i, ptr %i.fp, align 8, !tbaa !10
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store i64 %.sroa.414.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 8, !tbaa !31
end_hunk_5
begin_hunk_6_@_ZN7libfsst13_compressImplEPNS_7EncoderEmPmPPhmS3_S2_S4_bbi
define linkonce_odr hidden noundef i64 @_ZN7libfsst13_compressImplEPNS_7EncoderEmPmPPhmS3_S2_S4_bbi(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = alloca [520 x i8], align 16              ; 12 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !118, !nonnull !122, !noundef !122 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 156162
  %i.d = load i16, ptr %i.c, align 2, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 156160
end_hunk_6
