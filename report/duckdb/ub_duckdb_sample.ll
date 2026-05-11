inline.NumInlined: 1843
inline.NumDeleted: 893
begin_hunk_0_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesFastEmm:bb.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::SelectionVectorHelper") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %4 = alloca %"class.std::unordered_map", align 8 ; 15 uses
  %5 = alloca %"struct.duckdb::SelectionVector", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !269
end_hunk_0
begin_hunk_1_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm:bb.a
  br i1 %.not71, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.v, %_ZN6duckdb15SelectionVectorC2Em.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, i8 0, i64 24, i1 false)
  %i.cn = load ptr, ptr %i.cc, align 8, !tbaa !198 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %7 = load ptr, ptr %6, align 8, !tbaa !135      ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %7, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !3
  br label %.thread

.thread:                                          ; preds = %bb.x, %._crit_edge
  %8 = load ptr, ptr %5, align 8, !tbaa !137
  store ptr %8, ptr %0, align 8, !tbaa !137
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %9, align 8, !tbaa !199
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %10, align 8, !tbaa !135
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

bb.y:                                             ; preds = %bb.w
  %11 = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4 ; 0 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !135 ; 8 uses
  %i.cs = load ptr, ptr %5, align 8, !tbaa !137
  store ptr %i.cs, ptr %0, align 8, !tbaa !137
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %12, align 8, !tbaa !199
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %7, ptr %13, align 8, !tbaa !135
  %.not.i.i.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit, label %14

14:                                               ; preds = %bb.y
  %15 = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 4 uses
  %16 = load atomic i64, ptr %15 acquire, align 8 ; 2 uses
  %17 = icmp eq i64 %16, 4294967297
  %18 = trunc i64 %16 to i32                      ; 2 uses
  br i1 %17, label %bb.z, label %24

bb.z:                                             ; preds = %14
  store i32 0, ptr %15, align 8, !tbaa !138
  %19 = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  store i32 0, ptr %19, align 4, !tbaa !140
  %20 = load ptr, ptr %.pre, align 8, !tbaa !141
  %i.ct = getelementptr inbounds nuw i8, ptr %20, i64 16
  %21 = load ptr, ptr %i.ct, align 8
  call void %21(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29, !inline_history !143
  %22 = load ptr, ptr %.pre, align 8, !tbaa !141
  %i.cu = getelementptr inbounds nuw i8, ptr %22, i64 24
  %23 = load ptr, ptr %i.cu, align 8
  call void %23(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29, !inline_history !143
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

24:                                               ; preds = %14
  %25 = load i8, ptr @__libc_single_threaded, align 1, !tbaa !144
  %.not.i.i.i.i.i.i52 = icmp eq i8 %25, 0
  br i1 %.not.i.i.i.i.i.i52, label %28, label %26

26:                                               ; preds = %24
  %27 = add nsw i32 %18, -1
  store i32 %27, ptr %15, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

28:                                               ; preds = %24
  %29 = atomicrmw volatile add ptr %15, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %28, %26
  %.0.i.i.i.i.i.i.i = phi i32 [ %18, %26 ], [ %29, %28 ]
  %30 = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %30, label %31, label %_ZN6duckdb15SelectionVectorD2Ev.exit, !prof !40

31:                                               ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit

_ZN6duckdb15SelectionVectorD2Ev.exit:             ; preds = %.thread, %31, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.z, %bb.y
  %32 = load i64, ptr %i.ca, align 8, !tbaa !279
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %33, ptr %34, align 8, !tbaa !267
  %35 = load ptr, ptr %6, align 8, !tbaa !135     ; 8 uses
  %.not.i.i.i.i55 = icmp eq ptr %35, null
  br i1 %.not.i.i.i.i55, label %_ZN6duckdb15SelectionVectorD2Ev.exit59, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 4 uses
  %i.cw = load atomic i64, ptr %i.cv acquire, align 8 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 4294967297
  %i.cy = trunc i64 %i.cw to i32                  ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm:bb.a

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.cv, align 8, !tbaa !138
  %i.cz = getelementptr inbounds nuw i8, ptr %35, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !140
  %i.da = load ptr, ptr %35, align 8, !tbaa !141
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(16) %35) #29, !inline_history !145
  %i.dd = load ptr, ptr %35, align 8, !tbaa !141
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %35) #29, !inline_history !145
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit59

bb.ac:                                            ; preds = %bb.aa
end_hunk_2
begin_hunk_3_@_ZN6duckdb15ReservoirSample25GetReplacementIndexesSlowEmm:bb.a
  br i1 %i.dj, label %bb.af, label %_ZN6duckdb15SelectionVectorD2Ev.exit59, !prof !40

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #29
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit59

_ZN6duckdb15SelectionVectorD2Ev.exit59:           ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit, %bb.ab, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i57, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.dk = load ptr, ptr %i.e, align 8, !tbaa !273 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dk, null
end_hunk_3
