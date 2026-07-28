inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdNS1_11DisplayUnitE:bb.a
bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.bx = load i64, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.by = load i64, ptr %i.ag, align 8, !tbaa !14
  %i.bz = sub i64 4611686018427387903, %i.by
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit40

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit40: ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.cc, i64 noundef %i.bx) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2025051212_GLOBAL__N_116AppendNumberUnitEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEElNS1_11DisplayUnitE(ptr noundef %0, i64 noundef %1, i64 %.0.val, ptr %.8.val) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 17 ; 3 uses
  %scevgep15.i = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv17.i = phi i32 [ %indvars.iv.next.i, %bb.b ], [ -2, %bb.a ] ; 2 uses
  %indvars.iv.i = phi ptr [ %scevgep16.i, %bb.b ], [ %scevgep15.i, %bb.a ] ; 2 uses
  %.07.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.06.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]  ; 3 uses
  %.0.i = phi i64 [ %i.h, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.c = add i32 %.06.i, -1                       ; 2 uses
  %i.d = srem i64 %.0.i, 10
  %i.e = trunc nsw i64 %i.d to i8
  %i.f = add nsw i8 %i.e, 48                      ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.07.i, i64 -1 ; 3 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !17
  %i.h = sdiv i64 %.0.i, 10
  %.0.off.i = add i64 %.0.i, 9
  %.not.i = icmp ult i64 %.0.off.i, 19
  %scevgep16.i = getelementptr i8, ptr %indvars.iv.i, i64 -1
  %indvars.iv.next.i = add i32 %indvars.iv17.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.b, !llvm.loop !23

.preheader.i:                                     ; preds = %bb.b
  %i.i = icmp sgt i32 %.06.i, 1
  br i1 %i.i, label %.lr.ph.preheader.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = getelementptr i8, ptr %.07.i, i64 -2
  %i.k = add nsw i32 %.06.i, -2
  %i.l = zext nneg i32 %i.k to i64
  %i.m = sub nsw i64 0, %i.l
  %scevgep.i = getelementptr i8, ptr %i.j, i64 %i.m
  %i.n = zext nneg i32 %i.c to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 48, i64 %i.n, i1 false), !tbaa !17
  %i.o = zext i32 %indvars.iv17.i to i64
  %i.p = sub nsw i64 0, %i.o
  %scevgep18.i = getelementptr i8, ptr %indvars.iv.i, i64 %i.p ; 2 uses
  %.pre = load i8, ptr %scevgep18.i, align 1, !tbaa !17
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit

_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit: ; preds = %.preheader.i, %.lr.ph.preheader.i
  %i.q = phi i8 [ %i.f, %.preheader.i ], [ %.pre, %.lr.ph.preheader.i ]
  %.18.lcssa.i = phi ptr [ %i.g, %.preheader.i ], [ %scevgep18.i, %.lr.ph.preheader.i ] ; 3 uses
  %.not = icmp eq i8 %i.q, 48
  %i.r = getelementptr inbounds nuw i8, ptr %.18.lcssa.i, i64 1
  %.not9 = icmp eq ptr %i.r, %i.b
  %or.cond = select i1 %.not, i1 %.not9, i1 false
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %.18.lcssa.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = sub i64 4611686018427387903, %i.w
  %i.y = icmp ult i64 %i.x, %i.u
  br i1 %i.y, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.c
  %i.z = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.18.lcssa.i, i64 noundef %i.u) ; 0 uses
  %i.aa = load i64, ptr %i.v, align 8, !tbaa !14
  %i.ab = sub i64 4611686018427387903, %i.aa
  %i.ac = icmp ult i64 %i.ab, %.0.val
  br i1 %i.ac, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit10

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %.8.val, i64 noundef %.0.val) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_18Format64EPcil.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051213ParseDurationESt17basic_string_viewIcSt11char_traitsIcEEPNS0_8DurationE(i64 %0, ptr %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
  %4 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::Duration", align 8 ; 6 uses
  %cond = icmp eq i64 %0, 0
  br i1 %cond, label %.critedge, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i: ; preds = %bb.a
  %lhsc = load i8, ptr %1, align 1
  switch i8 %lhsc, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread [
    i8 45, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75
    i8 43, label %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i74
  ]

_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i74: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i
  br label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i74
  %.061 = phi i32 [ 1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread.i74 ], [ -1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = add i64 %0, -1                           ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.critedge, label %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread

_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread: ; preds = %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75
  %.061154 = phi i32 [ %.061, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ 1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 2 uses
  %.sroa.9.0151 = phi ptr [ %i.a, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ %1, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 6 uses
  %.sroa.0123.0148 = phi i64 [ %i.b, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75 ], [ %0, %_ZN4absl12lts_2025051210StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i ] ; 3 uses
  %.sroa.9.0151224 = ptrtoaddr ptr %.sroa.9.0151 to i64
  switch i64 %.sroa.0123.0148, label %.lr.ph.i.preheader.lr.ph [
    i64 1, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
    i64 3, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread
  %lhsc234 = load i8, ptr %.sroa.9.0151, align 1
  %i.d = icmp eq i8 %lhsc234, 48
  br i1 %i.d, label %.critedge.sink.split, label %.lr.ph.i.preheader.lr.ph

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76: ; preds = %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread
  %i.e = load i16, ptr %.sroa.9.0151, align 1
  %i.f = xor i16 %i.e, 28265
  %i.g = getelementptr i8, ptr %.sroa.9.0151, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = zext i8 %i.h to i16
  %i.j = xor i16 %i.i, 102
  %i.k = or i16 %i.f, %i.j
  %i.l = icmp ne i16 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit79, label %.lr.ph.i.preheader.lr.ph

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit79: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 9223372036854775807, ptr %5, align 8
  %.sroa.22.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 -1, ptr %.sroa.22.0..sroa_idx.i80, align 8
  %i.o = sext i32 %.061154 to i64
  %i.p = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationmLEl(ptr noundef nonnull align 4 dereferenceable(12) %5, i64 noundef %i.o) ; 0 uses
  %.sroa.03.0.copyload.i = load i64, ptr %5, align 8
  %.sroa.24.0.copyload.i = load i32, ptr %.sroa.22.0..sroa_idx.i80, align 8, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.critedge.sink.split

.lr.ph.i.preheader.lr.ph:                         ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i76, %_ZN4absl12lts_2025051213ConsumePrefixEPSt17basic_string_viewIcSt11char_traitsIcEES4_.exit75.thread, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.9.0151, i64 %.sroa.0123.0148 ; 5 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sext i32 %.061154 to i64                 ; 2 uses
  %.sroa.22.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.22.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.i.preheader.lr.ph, %_ZN4absl12lts_202505128DurationpLES1_.exit97
  %.sroa.0107.0213 = phi i64 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.0107.2, %_ZN4absl12lts_202505128DurationpLES1_.exit97 ] ; 5 uses
  %.sroa.12109.0212 = phi i32 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %.sroa.12109.2, %_ZN4absl12lts_202505128DurationpLES1_.exit97 ] ; 5 uses
  %.0136211 = phi ptr [ %.sroa.9.0151, %.lr.ph.i.preheader.lr.ph ], [ %i.ax, %_ZN4absl12lts_202505128DurationpLES1_.exit97 ] ; 4 uses
  %i.t = getelementptr i8, ptr %.0136211, i64 %.sroa.0123.0148
  %scevgep = getelementptr i8, ptr %i.t, i64 %.sroa.9.0151224
  %.0136211225 = ptrtoaddr ptr %.0136211 to i64
  %i.u = sub i64 0, %.0136211225
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.u ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.d
  %.1137 = phi ptr [ %i.ab, %bb.d ], [ %.0136211, %.lr.ph.i.preheader ] ; 5 uses
  %.0134 = phi i64 [ %i.aa, %bb.d ], [ 0, %.lr.ph.i.preheader ] ; 5 uses
  %i.v = load i8, ptr %.1137, align 1, !tbaa !17  ; 3 uses
  %6 = sext i8 %i.v to i64                        ; 2 uses
  %i.w = add i8 %i.v, -58
  %or.cond.i = icmp ult i8 %i.w, -10
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.x = icmp sgt i64 %.0134, 922337203685477580
  br i1 %i.x, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = mul nsw i64 %.0134, 10                   ; 2 uses
  %7 = sub nuw i64 -9223372036854775761, %6
  %i.z = icmp sgt i64 %i.y, %7
  br i1 %i.z, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %8 = add i64 %i.y, -48
  %i.aa = add i64 %8, %6                          ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.1137, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.ab, %i.q
  br i1 %.not.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread, label %.lr.ph.i, !llvm.loop !28

bb.e:                                             ; preds = %.lr.ph.i
  %i.ac = icmp ne ptr %.1137, %.0136211           ; 3 uses
  %.not51.i = icmp eq i8 %i.v, 46
  br i1 %.not51.i, label %.preheader.i, label %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit

.preheader.i:                                     ; preds = %bb.e
  %storemerge63.i = getelementptr inbounds nuw i8, ptr %.1137, i64 1 ; 3 uses
  %.not5264.i = icmp eq ptr %storemerge63.i, %i.q
  br i1 %.not5264.i, label %._crit_edge.i.thread, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %.preheader.i, %bb.h
  %.2138 = phi ptr [ %storemerge.i, %bb.h ], [ %storemerge63.i, %.preheader.i ] ; 3 uses
  %.0130 = phi i64 [ %.1131, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %.0 = phi i64 [ %.1, %bb.h ], [ 1, %.preheader.i ] ; 4 uses
  %i.ad = load i8, ptr %.2138, align 1, !tbaa !17 ; 2 uses
  %9 = sext i8 %i.ad to i64
  %i.ae = add i8 %i.ad, -58
  %or.cond3.i = icmp ult i8 %i.ae, -10
  br i1 %or.cond3.i, label %._crit_edge.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph66.i
  %i.af = icmp slt i64 %.0, 922337203685477581
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = mul nsw i64 %.0130, 10
  %10 = add i64 %i.ag, -48
  %i.ah = add i64 %10, %9
  %i.ai = mul nsw i64 %.0, 10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1131 = phi i64 [ %i.ah, %bb.g ], [ %.0130, %bb.f ] ; 2 uses
  %.1 = phi i64 [ %i.ai, %bb.g ], [ %.0, %bb.f ]  ; 2 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.2138, i64 1 ; 2 uses
  %.not52.i = icmp eq ptr %storemerge.i, %i.q
  br i1 %.not52.i, label %._crit_edge.i, label %.lr.ph66.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph66.i
  %.3139 = phi ptr [ %scevgep226, %bb.h ], [ %.2138, %.lr.ph66.i ]
  %.2132 = phi i64 [ %.1131, %bb.h ], [ %.0130, %.lr.ph66.i ]
  %.2 = phi i64 [ %.1, %bb.h ], [ %.0, %.lr.ph66.i ] ; 2 uses
  %i.aj = icmp ne i64 %.2, 1
  %or.cond = select i1 %i.ac, i1 true, i1 %i.aj
  br i1 %or.cond, label %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread, label %.critedge

._crit_edge.i.thread:                             ; preds = %.preheader.i
  br i1 %i.ac, label %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread, label %.critedge

_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit: ; preds = %bb.e
  br i1 %i.ac, label %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread, label %.critedge

_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread: ; preds = %bb.d, %._crit_edge.i.thread, %._crit_edge.i, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit
  %.3129171 = phi i64 [ 1, %._crit_edge.i.thread ], [ 1, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.2, %._crit_edge.i ], [ 1, %bb.d ] ; 6 uses
  %.3133170 = phi i64 [ 0, %._crit_edge.i.thread ], [ 0, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.2132, %._crit_edge.i ], [ 0, %bb.d ] ; 2 uses
  %.1135169 = phi i64 [ %.0134, %._crit_edge.i.thread ], [ %.0134, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.0134, %._crit_edge.i ], [ %i.aa, %bb.d ] ; 2 uses
  %.4168 = phi ptr [ %storemerge63.i, %._crit_edge.i.thread ], [ %.1137, %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit ], [ %.3139, %._crit_edge.i ], [ %scevgep226, %bb.d ] ; 7 uses
  %i.ak = ptrtoint ptr %.4168 to i64
  %i.al = sub i64 %i.r, %i.ak
  switch i64 %i.al, label %bb.i [
    i64 0, label %.critedge
    i64 1, label %thread-pre-split.i
  ]

bb.i:                                             ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread
  %i.am = load i8, ptr %.4168, align 1, !tbaa !17 ; 2 uses
  switch i8 %i.am, label %bb.m [
    i8 110, label %bb.j
    i8 117, label %bb.k
    i8 109, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.4168, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  %i.ap = icmp eq i8 %i.ao, 115
  br i1 %i.ap, label %bb.o, label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.4168, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = icmp eq i8 %i.ar, 115
  br i1 %i.as, label %bb.o, label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.4168, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = icmp eq i8 %i.au, 115
  br i1 %i.av, label %bb.o, label %.thread51.i

thread-pre-split.i:                               ; preds = %_ZN4absl12lts_2025051212_GLOBAL__N_121ConsumeDurationNumberEPPKcS3_PlS5_S5_.exit.thread
  %.pr.i = load i8, ptr %.4168, align 1, !tbaa !17
  br label %bb.m

bb.m:                                             ; preds = %thread-pre-split.i, %bb.i
  %i.aw = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.am, %bb.i ]
  switch i8 %i.aw, label %.critedge [
    i8 115, label %bb.o
    i8 109, label %.thread51.i
    i8 104, label %bb.n
  ]

.thread51.i:                                      ; preds = %bb.m, %bb.l
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %.thread51.i, %bb.n
  %.sink = phi i64 [ 2, %bb.l ], [ 1, %.thread51.i ], [ 1, %bb.n ], [ 2, %bb.k ], [ 2, %bb.j ], [ 1, %bb.m ]
  %.sroa.12.0.ph = phi i32 [ 4000000, %bb.l ], [ 0, %.thread51.i ], [ 0, %bb.n ], [ 4000, %bb.k ], [ 4, %bb.j ], [ 0, %bb.m ] ; 2 uses
  %.sroa.0.0.ph = phi i64 [ 0, %bb.l ], [ 60, %.thread51.i ], [ 3600, %bb.n ], [ 0, %bb.k ], [ 0, %bb.j ], [ 1, %bb.m ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.4168, i64 %.sink ; 2 uses
  %.not66 = icmp eq i64 %.1135169, 0
  br i1 %.not66, label %_ZN4absl12lts_202505128DurationpLES1_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = mul nsw i64 %.1135169, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.ph, ptr %4, align 8
  store i32 %.sroa.12.0.ph, ptr %.sroa.22.0..sroa_idx.i81, align 8
  %i.az = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationmLEl(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 noundef %i.ay) #15 ; 0 uses
  %.sroa.03.0.copyload.i82 = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.24.0.copyload.i83 = load i32, ptr %.sroa.22.0..sroa_idx.i81, align 8, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ba = icmp eq i32 %.sroa.12109.0212, -1
  br i1 %i.ba, label %_ZN4absl12lts_202505128DurationpLES1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = icmp eq i32 %.sroa.24.0.copyload.i83, -1
  br i1 %i.bb, label %.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = add i64 %.sroa.03.0.copyload.i82, %.sroa.0107.0213
  %i.bd = zext i32 %.sroa.12109.0212 to i64
  %i.be = zext i32 %.sroa.24.0.copyload.i83 to i64
  %i.bf = sub nsw i64 4000000000, %i.be
  %.not.i86 = icmp sle i64 %i.bf, %i.bd           ; 2 uses
  %i.bg = add i32 %.sroa.12109.0212, 294967296
  %i.bh = zext i1 %.not.i86 to i64
  %.sroa.0107.3 = add i64 %i.bc, %i.bh            ; 4 uses
  %i.bi = select i1 %.not.i86, i32 %i.bg, i32 %.sroa.12109.0212
  %i.bj = add i32 %i.bi, %.sroa.24.0.copyload.i83 ; 2 uses
  %i.bk = icmp slt i64 %.sroa.03.0.copyload.i82, 0
  br i1 %i.bk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp sgt i64 %.sroa.0107.3, %.sroa.0107.0213
  br i1 %i.bl, label %.sink.split.i, label %_ZN4absl12lts_202505128DurationpLES1_.exit

bb.t:                                             ; preds = %bb.r
  %i.bm = icmp slt i64 %.sroa.0107.3, %.sroa.0107.0213
  br i1 %i.bm, label %.sink.split.i, label %_ZN4absl12lts_202505128DurationpLES1_.exit

.sink.split.i:                                    ; preds = %bb.t, %bb.s, %bb.q
  %.pn.sink.i = phi i64 [ %.sroa.03.0.copyload.i82, %bb.q ], [ -9223372036854775808, %bb.s ], [ 9223372036854775807, %bb.t ]
  br label %_ZN4absl12lts_202505128DurationpLES1_.exit

_ZN4absl12lts_202505128DurationpLES1_.exit:       ; preds = %.sink.split.i, %bb.t, %bb.s, %bb.p, %bb.o
  %.sroa.12109.1 = phi i32 [ %.sroa.12109.0212, %bb.o ], [ -1, %bb.p ], [ -1, %.sink.split.i ], [ %i.bj, %bb.s ], [ %i.bj, %bb.t ] ; 5 uses
  %.sroa.0107.1 = phi i64 [ %.sroa.0107.0213, %bb.o ], [ %.sroa.0107.0213, %bb.p ], [ %.pn.sink.i, %.sink.split.i ], [ %.sroa.0107.3, %bb.s ], [ %.sroa.0107.3, %bb.t ] ; 5 uses
  %.not67 = icmp eq i64 %.3133170, 0
  br i1 %.not67, label %_ZN4absl12lts_202505128DurationpLES1_.exit97, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_202505128DurationpLES1_.exit
  %i.bn = mul nsw i64 %.3133170, %i.s
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 %.sroa.0.0.ph, ptr %3, align 8
  store i32 %.sroa.12.0.ph, ptr %.sroa.22.0..sroa_idx.i87, align 8
  %i.bo = call noundef nonnull align 4 dereferenceable(12) ptr @_ZN4absl12lts_202505128DurationmLEl(ptr noundef nonnull align 4 dereferenceable(12) %3, i64 noundef %i.bn) #15 ; 0 uses
  %.sroa.03.0.copyload.i88 = load i64, ptr %3, align 8 ; 5 uses
  %.sroa.24.0.copyload.i89 = load i32, ptr %.sroa.22.0..sroa_idx.i87, align 8, !tbaa !3 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bp = icmp eq i32 %.sroa.24.0.copyload.i89, -1
  %i.bq = icmp eq i64 %.3129171, 0
  %or.cond.i.i = or i1 %i.bq, %i.bp
  br i1 %or.cond.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not.unshifted.i.i = xor i64 %.sroa.03.0.copyload.i88, %.3129171
  %.not.i.i = icmp sgt i64 %.not.unshifted.i.i, -1
  %spec.select.i.i = select i1 %.not.i.i, { i64, i32 } { i64 9223372036854775807, i32 -1 }, { i64, i32 } { i64 -9223372036854775808, i32 -1 }
  br label %_ZN4absl12lts_20250512dvIlEENS0_8DurationES2_T_.exit

bb.w:                                             ; preds = %bb.u
  %i.br = icmp slt i64 %.sroa.03.0.copyload.i88, 0
  %i.bs = sub i32 -294967296, %.sroa.24.0.copyload.i89
  %.017.i.i.i.i = select i1 %i.br, i32 %i.bs, i32 %.sroa.24.0.copyload.i89
  %.lobit.i.i.i.i = ashr i64 %.sroa.03.0.copyload.i88, 63
  %.0.i.i.i.i = xor i64 %.lobit.i.i.i.i, %.sroa.03.0.copyload.i88
  %i.bt = zext i64 %.0.i.i.i.i to i128
  %i.bu = mul nuw nsw i128 %i.bt, 4000000000
  %i.bv = zext i32 %.017.i.i.i.i to i128
  %i.bw = add nuw nsw i128 %i.bu, %i.bv
  %.lobit.i24.i.i.i = lshr i64 %.3129171, 63
  %.lobit11.i.i.i.i = ashr i64 %.3129171, 63
  %spec.select10.i.i.i.i = xor i64 %.lobit11.i.i.i.i, %.3129171
  %i.bx = add i64 %spec.select10.i.i.i.i, %.lobit.i24.i.i.i
  %i.by = zext i64 %i.bx to i128
  %i.bz = udiv i128 %i.bw, %i.by                  ; 3 uses
  %i.ca = trunc i128 %i.bz to i64                 ; 3 uses
  %i.cb = lshr i128 %i.bz, 64                     ; 3 uses
  %.unshifted.i.i.i = xor i64 %.sroa.03.0.copyload.i88, %.3129171
  %i.cc = icmp sgt i64 %.unshifted.i.i.i, -1      ; 3 uses
  %i.cd = icmp eq i128 %i.cb, 0
  br i1 %i.cd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ce = udiv i64 %i.ca, 4000000000
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.cf = trunc nuw nsw i128 %i.cb to i64
  %i.cg = icmp samesign ult i64 %i.cf, 2000000000
  br i1 %i.cg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = icmp ne i128 %i.cb, 2000000000
  %i.ci = icmp ne i64 %i.ca, 0
  %.not34.i.i.i = or i1 %i.ci, %i.ch
  %or.cond3.i.not.i.i.i = or i1 %i.cc, %.not34.i.i.i
  %spec.select.i.i37.i.i = select i1 %i.cc, i64 9223372036854775807, i64 -9223372036854775808
  %spec.select96.i.i.i.i = sext i1 %or.cond3.i.not.i.i.i to i32
  br label %_ZN4absl12lts_2025051212_GLOBAL__N_110ScaleFixedISt7dividesEENS0_8DurationES4_l.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cj = udiv i128 %i.bz, 4000000000
  %i.ck = trunc nuw nsw i128 %i.cj to i64
end_hunk_0
