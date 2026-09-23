Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.15?download=true
inline.NumInlined: 578
inline.NumDeleted: 359
begin_hunk_0_@_RNvMs3_NtCs1qcNTItuk7F_13glyphs_reader17corner_componentsNtB5_15CornerComponent18align_to_main_path:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs1qcNTItuk7F_13glyphs_reader17corner_componentsNtB5_15CornerComponent37recompute_instroke_intersection_point(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(224) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = icmp ugt i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load <2 x double>, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = load <2 x double>, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsG_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_4Path20get_previous_segment(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %2, i64 noundef %3)
  %i.l = load i64, ptr %i.b, align 8, !range !16, !noundef !4
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store <2 x double> %i.i, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x double> %i.k, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.a, align 8
  call fastcc void @_RNvNtCs1qcNTItuk7F_13glyphs_reader17corner_components30unbounded_seg_seg_intersection(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs3_NtCs1qcNTItuk7F_13glyphs_reader17corner_componentsNtB5_15CornerComponent38recompute_outstroke_intersection_point(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(224) %1, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(72) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(64) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 5 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = load double, ptr %3, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load double, ptr %i.d, align 8, !noundef !4
  %i.f = fmul double %i.c, %i.e
  %i.g = fcmp olt double %i.f, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val1 = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %.val1, 0
  br i1 %.not.i, label %bb.c, label %_RNvMs3_NtCs1qcNTItuk7F_13glyphs_reader17corner_componentsNtB5_15CornerComponent10last_point.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #33
  unreachable

_RNvMs3_NtCs1qcNTItuk7F_13glyphs_reader17corner_componentsNtB5_15CornerComponent10last_point.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr [24 x i8], ptr %.val, i64 %.val1 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %i.l = load double, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr i8, ptr %i.j, i64 -16
  %i.n = load double, ptr %i.m, align 8, !noundef !4
  %i.o = tail call { double, double } @_RNvXsh_NtCscDfuDmzQoJe_5kurbo7bezpathNtB5_7PathSegNtNtB7_11param_curve17ParamCurveNearest7nearest(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, double noundef %i.l, double noundef %i.n, double noundef f0x3EB0C6F7A0B5ED8D)
  %i.p = extractvalue { double, double } %i.o, 1
  %i.q = tail call { double, double } @_RNvXse_NtCscDfuDmzQoJe_5kurbo7bezpathNtB5_7PathSegNtNtB7_11param_curve10ParamCurve4eval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2, double noundef %i.p) ; 2 uses
  %i.r = extractvalue { double, double } %i.q, 0
  %i.s = extractvalue { double, double } %i.q, 1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.s, ptr %i.u, align 8
  store i64 1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.x = icmp ult i64 %i.w, 384307168202282326
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nsw i64 %i.w, -1
  call void @_RNvMsG_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_4Path20get_previous_segment(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %1, i64 noundef %i.y)
  %i.z = load i64, ptr %i.a, align 8, !range !16, !noundef !4
  %.not = icmp eq i64 %i.z, -1
  br i1 %.not, label %bb.g, label %bb.f, !prof !13

bb.e:                                             ; preds = %bb.f, %_RNvMs3_NtCs1qcNTItuk7F_13glyphs_reader17corner_componentsNtB5_15CornerComponent10last_point.exit
  ret void

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCs1qcNTItuk7F_13glyphs_reader17corner_components30unbounded_seg_seg_intersection(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB12_5boxed3BoxNtNtNtCs8hFumjqO1Bi_14regex_automata4meta5regex5CacheEEE8try_lockCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.c = extractvalue { i32, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #28
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ]
  %i.k = load atomic i8, ptr %i.d monotonic, align 4
  %.not.i = icmp ne i8 %i.k, 0
  call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1s_5boxed3BoxNtNtNtCs8hFumjqO1Bi_14regex_automata4meta5regex5CacheEEENCNvMs9_B10_BX_3new0ECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  %i.l = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !align !9, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !14, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.q, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink3 = phi i8 [ %i.p, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.l, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink3, ptr %i.r, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtNtBb_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEE4lockCs1qcNTItuk7F_13glyphs_reader(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #28
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCs5Xr050g3D4S_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtNtNtB6_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEENCNvMs9_B10_BX_3new0ECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs1qcNTItuk7F_13glyphs_reader17corner_components30unbounded_seg_seg_intersection(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = load i64, ptr %1, align 8, !range !18, !noundef !4
  %i.e = icmp eq i64 %i.d, 0
  %i.f = load i64, ptr %2, align 8, !range !18, !noundef !4
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = load <2 x double>, ptr %i.h, align 8       ; 3 uses
  %4 = load <2 x double>, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %5 = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.g, label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %shift = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %3 ; 2 uses
  %shift21 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop22 = fsub <2 x double> %shift21, %4 ; 2 uses
  %i.j = load <2 x double>, ptr %i.i, align 8     ; 4 uses
  %i.k = load <2 x double>, ptr %.sroa.517.0..sroa_idx, align 8
  %i.l = fsub <2 x double> %i.k, %i.j             ; 3 uses
  %shift24 = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop25 = fmul <2 x double> %foldExtExtBinop, %shift24
  %foldExtExtBinop27 = fmul <2 x double> %foldExtExtBinop22, %i.l
  %foldExtExtBinop29 = fsub <2 x double> %foldExtExtBinop25, %foldExtExtBinop27
  %6 = extractelement <2 x double> %foldExtExtBinop29, i64 0 ; 2 uses
  %i.m = fcmp oeq double %6, 0.000000e+00
  br i1 %i.m, label %_RNvMNtCscDfuDmzQoJe_5kurbo4lineNtB2_4Line14crossing_point.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %foldExtExtBinop31 = fsub <2 x double> %3, %i.j
  %shift33 = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop34 = fsub <2 x double> %4, %shift33
  %foldExtExtBinop36 = fmul <2 x double> %foldExtExtBinop, %foldExtExtBinop34
  %foldExtExtBinop38 = fmul <2 x double> %foldExtExtBinop22, %foldExtExtBinop31
  %foldExtExtBinop40 = fsub <2 x double> %foldExtExtBinop36, %foldExtExtBinop38
  %7 = extractelement <2 x double> %foldExtExtBinop40, i64 0
  %i.n = fdiv double %7, %6
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = insertelement <2 x double> poison, double %i.n, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x double> %i.l, %i.q
  %i.s = fadd <2 x double> %i.j, %i.r
  store <2 x double> %i.s, ptr %i.o, align 8, !alias.scope !999, !noalias !1000
  br label %_RNvMNtCscDfuDmzQoJe_5kurbo4lineNtB2_4Line14crossing_point.exit

_RNvMNtCscDfuDmzQoJe_5kurbo4lineNtB2_4Line14crossing_point.exit: ; preds = %bb.d, %bb.e
  %storemerge.i = phi i64 [ 1, %bb.e ], [ 0, %bb.d ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !999, !noalias !1000
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3dv1BS8YMnV_8arrayvec8arrayvec8ArrayVecNtNtCscDfuDmzQoJe_5kurbo7bezpath16LineIntersectionKj3_EECs1qcNTItuk7F_13glyphs_reader.exit, %bb.j, %_RNvMNtCscDfuDmzQoJe_5kurbo4lineNtB2_4Line14crossing_point.exit
  ret void

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %10 = load <2 x double>, ptr %i.t, align 8
  %11 = load <2 x double>, ptr %8, align 8
  %12 = load <2 x double>, ptr %9, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %13 = phi <2 x double> [ %11, %bb.g ], [ %4, %bb.h ] ; 2 uses
  %14 = phi <2 x double> [ %12, %bb.g ], [ %5, %bb.h ] ; 2 uses
  %15 = phi <2 x double> [ %10, %bb.g ], [ %3, %bb.h ] ; 2 uses
  %i.u = fsub <2 x double> %14, %15               ; 3 uses
  %i.v = fmul <2 x double> %i.u, %i.u
  %i.w = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.v)
  %i.x = tail call double @llvm.sqrt.f64(double %i.w)
  %i.y = fdiv double 1.000000e+00, %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %16 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %17 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %18 = fmul <2 x double> %i.u, %17
  %19 = fmul <2 x double> %18, splat (double 1.000000e+09) ; 2 uses
  %20 = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %foldExtExtBinop43 = fsub <2 x double> %15, %19
  %21 = extractelement <2 x double> %foldExtExtBinop43, i64 0
  %22 = fsub <2 x double> %13, %20
  %23 = fadd <2 x double> %13, %20
  %24 = shufflevector <2 x double> %22, <2 x double> %23, <2 x i32> <i32 0, i32 3>
  %shift45 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop46 = fadd <2 x double> %shift45, %20
  %25 = extractelement <2 x double> %foldExtExtBinop46, i64 0
  store double %21, ptr %i.b, align 8, !alias.scope !1001
  store <2 x double> %24, ptr %16, align 8, !alias.scope !1001
  %26 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %25, ptr %26, align 8, !alias.scope !1001
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsj_NtCscDfuDmzQoJe_5kurbo7bezpathNtB5_7PathSeg14intersect_line(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
  %i.aa = load i32, ptr %i.a, align 8, !noundef !4
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3dv1BS8YMnV_8arrayvec8arrayvec8ArrayVecNtNtCscDfuDmzQoJe_5kurbo7bezpath16LineIntersectionKj3_EECs1qcNTItuk7F_13glyphs_reader.exit, label %bb.k

bb.j:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  br label %bb.f

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ac = load double, ptr %i.ab, align 8, !noundef !4
  %i.ad = call { double, double } @_RNvXse_NtCscDfuDmzQoJe_5kurbo7bezpathNtB5_7PathSegNtNtB7_11param_curve10ParamCurve4eval(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c, double noundef %i.ac) ; 2 uses
  %i.ae = extractvalue { double, double } %i.ad, 0
  %i.af = extractvalue { double, double } %i.ad, 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.ae, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.af, ptr %i.ah, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3dv1BS8YMnV_8arrayvec8arrayvec8ArrayVecNtNtCscDfuDmzQoJe_5kurbo7bezpath16LineIntersectionKj3_EECs1qcNTItuk7F_13glyphs_reader.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs3dv1BS8YMnV_8arrayvec8arrayvec8ArrayVecNtNtCscDfuDmzQoJe_5kurbo7bezpath16LineIntersectionKj3_EECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.i, %bb.k
  %.sink = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtCs1qcNTItuk7F_13glyphs_reader17corner_components34insert_corner_components_for_layer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(256) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [168 x i8], align 8               ; 10 uses
  %.sroa.016.i.sroa.12 = alloca [136 x i8], align 8 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [168 x i8], align 8               ; 20 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 16               ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 3 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.14 = alloca [7 x i8], align 1            ; 5 uses
  %i.s = alloca [224 x i8], align 8               ; 14 uses
  %.sroa.17.sroa.5 = alloca [7 x i8], align 1     ; 5 uses
  %.sroa.17.sroa.8 = alloca [136 x i8], align 8   ; 5 uses
  %.sroa.613.sroa.7 = alloca [7 x i8], align 1    ; 5 uses
  %.sroa.613.sroa.10.sroa.7 = alloca [7 x i8], align 1 ; 5 uses
  %.sroa.68.sroa.7 = alloca [7 x i8], align 1     ; 5 uses
  %.sroa.68.sroa.11 = alloca [7 x i8], align 1    ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [64 x i8], align 8                ; 10 uses
  %.sroa.0 = alloca [57 x i8], align 8            ; 7 uses
  %.sroa.9 = alloca [6 x i8], align 2             ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 10 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.aa, i64 %i.ac
  call void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6cloned6ClonedINtNtB2i_6filter6FilterINtNtNtB2m_5slice4iter4IterB11_ENCNvNtB15_17corner_components34insert_corner_components_for_layer0EEE9from_iterB15_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1069
  store ptr %i.a, ptr %i.o, align 8, !noalias !1070
  %i.ai = icmp samesign ult i64 %i.ah, 2
  br i1 %i.ai, label %bb.e, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.aj = icmp samesign ult i64 %i.ah, 21
  br i1 %i.aj, label %bb.d, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable14driftsort_mainNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintNCINvMNtCsgCecv3eZDcN_5alloc5sliceSBZ_11sort_by_keyTjjENCNvNtB13_17corner_components34insert_corner_components_for_layers_0E0INtNtB1O_3vec3VecBZ_EEB13_(ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef range(i64 0, 144115188075855872) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #28
          to label %thread-pre-split unwind label %bb.bc

bb.d:                                             ; preds = %bb.b
  invoke void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_11sort_by_keyTjjENCNvNtB1q_17corner_components34insert_corner_components_for_layers_0E0EB1q_(ptr noalias nofree noundef nonnull align 8 %i.af, i64 noundef range(i64 0, 144115188075855872) %i.ah, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %thread-pre-split unwind label %bb.bc

thread-pre-split:                                 ; preds = %bb.d, %bb.c
  %.pr = load i64, ptr %i.ag, align 8
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split, %bb.a
  %i.ak = phi i64 [ %.pr, %thread-pre-split ], [ %i.ah, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1069
  %i.al = icmp ult i64 %i.ak, 144115188075855872
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %bb.f, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %bb.e
  %i.an = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ao = load i64, ptr %i.x, align 8, !range !1071, !noundef !4
  %.idx245 = shl nuw nsw i64 %i.ak, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.an, ptr %i.w, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  store ptr %i.ap, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.7.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.v, i64 57
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 58
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.441.sroa.4.0..sroa.441.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.643.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %.sroa.744.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 9 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %.sroa.016.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.016.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.016.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 33
  %.sroa.016.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.016.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.016.i.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.016.i.sroa.12.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.016.i.sroa.12, i64 112
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.68.sroa.7.0..sroa.68.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %.sroa.68.sroa.8.0..sroa.68.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.68.sroa.9.0..sroa.68.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.68.sroa.10.0..sroa.68.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.68.sroa.11.0..sroa.68.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 33
  %.sroa.68.sroa.12.0..sroa.68.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.68.sroa.13.0..sroa.68.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.8.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 8 uses
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.f:                                             ; preds = %bb.e
  store i8 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEEB1c_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.bc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEBF_.exit, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.g ], [ %.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEBF_.exit ], [ %lpad.thr_comm.split-lp, %bb.bc ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEEB1c_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %bb.j

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintEBF_.exit: ; preds = %.loopexit214, %.loopexit.split-lp215, %bb.k, %.body, %bb.l
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %bb.k ], [ %eh.lpad-body, %bb.l ], [ %eh.lpad-body, %.body ], [ %lpad.loopexit216, %.loopexit214 ], [ %lpad.loopexit.split-lp217, %.loopexit.split-lp215 ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font4HintENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w)
          to label %common.resume unwind label %bb.bb

end_hunk_0
