inline.NumInlined: 1843
inline.NumDeleted: 893
begin_hunk_0_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesFastEmm:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm(ptr dead_on_unwind noalias writable writeonly sret(%"struct.duckdb::SelectionVectorHelper") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 15 uses
  %5 = alloca %"struct.duckdb::SelectionVector", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !269
end_hunk_0
begin_hunk_1_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm:bb.a
  br i1 %.not71, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.v, %_ZN6duckdb15SelectionVectorC2Em.exit
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !135   ; 2 uses
  %7 = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !136
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.a, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !3
  br label %_ZN6duckdb15SelectionVectorD2Ev.exitthread-pre-split

_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i: ; preds = %bb.w
  %8 = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb15SelectionVectorD2Ev.exitthread-pre-split

_ZN6duckdb15SelectionVectorD2Ev.exitthread-pre-split: ; preds = %_ZN6duckdb10shared_ptrINS_13SelectionDataELb1EEC2ERKS2_.exit.i.i.i, %bb.x
  %.pre98.pr = load ptr, ptr %6, align 8, !tbaa !135
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.a

_ZN6duckdb15SelectionVectorD2Ev.exit.a:           ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exitthread-pre-split, %._crit_edge
  %.pre98 = phi ptr [ %.pre98.pr, %_ZN6duckdb15SelectionVectorD2Ev.exitthread-pre-split ], [ null, %._crit_edge ] ; 8 uses
  %9 = load ptr, ptr %5, align 8, !tbaa !137
  store ptr %9, ptr %0, align 8, !tbaa !137
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %7, ptr %i.cs, align 8, !tbaa !136
  %.pre = load i64, ptr %i.ca, align 8, !tbaa !279
  %10 = trunc i64 %.pre to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %10, ptr %i.ct, align 8, !tbaa !267
  %.not.i.i.i.i55 = icmp eq ptr %.pre98, null
  br i1 %.not.i.i.i.i55, label %_ZN6duckdb15SelectionVectorD2Ev.exit59, label %bb.y

bb.y:                                             ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.a
  %i.cu = getelementptr inbounds nuw i8, ptr %.pre98, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm:bb.a

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cu, align 8, !tbaa !138
  %i.cy = getelementptr inbounds nuw i8, ptr %.pre98, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !140
  %i.cz = load ptr, ptr %.pre98, align 8, !tbaa !141
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %.pre98) #29, !inline_history !145
  %i.dc = load ptr, ptr %.pre98, align 8, !tbaa !141
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %.pre98) #29, !inline_history !145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit59

bb.aa:                                            ; preds = %bb.y
end_hunk_2
begin_hunk_3_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm:bb.a
  br i1 %i.di, label %bb.ad, label %_ZN6duckdb15SelectionVectorD2Ev.exit59, !prof !40

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre98) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit59

_ZN6duckdb15SelectionVectorD2Ev.exit59:           ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.a, %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !273 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dj, null
end_hunk_3
