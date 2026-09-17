Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.00?download=true
inline.NumInlined: 2098
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNCNvNtNtCsf3Ta7LF998c_4core3str7pattern13simd_containss0_0Cs1qcNTItuk7F_13glyphs_reader:bb.a
  %umax.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.619.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us17.not = icmp ult i64 %.sroa.619.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us17.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us.preheader, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread5

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us.preheader: ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.518.0.copyload.i.us) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us
  %i.p = add i64 %.sroa.619.0.i.us18, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread5, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us.preheader, %bb.b
  %.sroa.619.0.i.us18 = phi i64 [ %i.p, %bb.b ], [ %.sroa.619.0.copyload.i.us, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.518.0.copyload.i.us, i64 %.sroa.619.0.i.us18
  %i.s = load i8, ptr %i.q, align 1, !noundef !6
  %i.t = load i8, ptr %i.r, align 1, !noundef !6
  %.not17.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not17.i.us, label %bb.b, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E4nextCs1qcNTItuk7F_13glyphs_reader.exit.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.08.us, %i.v             ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.08 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.08, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.026.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.025.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.011.0.copyload.i = load i32, ptr %.sroa.04.026.i, align 1, !alias.scope !1011, !noalias !1012
  %.sroa.012.0.copyload.i = load i32, ptr %.sroa.08.025.i, align 1, !alias.scope !1012, !noalias !1011
  %.not.i = icmp eq i32 %.sroa.011.0.copyload.i, %.sroa.012.0.copyload.i
  br i1 %.not.i, label %bb.c, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit7

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread5: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit7: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit: ; preds = %bb.c, %.preheader.split
  %.sroa.013.0.copyload.i = load i32, ptr %i.ad, align 1, !alias.scope !1011, !noalias !1012
  %.sroa.014.0.copyload.i = load i32, ptr %i.j, align 1, !alias.scope !1012, !noalias !1011
  %i.ai = icmp eq i32 %.sroa.013.0.copyload.i, %.sroa.014.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread5, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread5 ], [ false, %bb.a ], [ false, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit.us ], [ true, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit.thread.loopexit7, %_RNvNtNtCsf3Ta7LF998c_4core3str7pattern14small_slice_eq.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.08, %i.ak              ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs5Xr050g3D4S_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockINtNtNtBf_6poison5mutex5MutexINtNtNtNtBh_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEE5force0E0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs1qcNTItuk7F_13glyphs_reader(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !noalias !1017, !align !12, !noundef !6 ; 3 uses
  store ptr null, ptr %i.b, align 8, !noalias !1017
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !13, !noalias !1017, !noundef !6
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs5Xr050g3D4S_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexINtNtNtNtBf_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEE5force0E0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs1qcNTItuk7F_13glyphs_reader.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std4sync9lazy_lock14panic_poisoned() #37, !noalias !1017
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !1017
  unreachable

_RNvYNCINvMs0_NtNtCs5Xr050g3D4S_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockINtNtNtBd_6poison5mutex5MutexINtNtNtNtBf_11collections4hash3set7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEEE5force0E0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !1017, !nonnull !6, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1017
  call void %i.f(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.a), !noalias !1017, !inline_history !1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1017
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtNtNtCs1qcNTItuk7F_13glyphs_reader4font5Shape4Path0(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 176)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(168) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.a, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false)
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtNtNtCs1qcNTItuk7F_13glyphs_reader4font5Shape9Component0(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) initializes((0, 256)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(256) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i64 256, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMNtCs1qcNTItuk7F_13glyphs_reader16smart_componentsNtNtB4_4font5Shape12apply_affine(ptr noalias nofree noundef align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !6
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.c = load <2 x double>, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load double, ptr %i.e, align 8, !alias.scope !1026, !noalias !1027, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <2 x double>, ptr %i.b, align 8     ; 2 uses
  %i.i = load <2 x double>, ptr %i.d, align 8, !alias.scope !1026, !noalias !1027 ; 3 uses
  %i.j = fmul <2 x double> %i.h, %i.i
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.l = insertelement <2 x double> %i.c, double %i.f, i64 1 ; 3 uses
  %i.m = fmul <2 x double> %i.h, %i.l
  %i.n = fadd <2 x double> %i.k, %i.m
  store <2 x double> %i.n, ptr %i.b, align 8
  %i.o = load <2 x double>, ptr %.sroa.53.0..sroa_idx, align 8 ; 2 uses
  %i.p = fmul <2 x double> %i.o, %i.l
  %i.q = fmul <2 x double> %i.o, %i.i
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.s = fadd <2 x double> %i.r, %i.p
  store <2 x double> %i.s, ptr %.sroa.53.0..sroa_idx, align 8
  %i.t = load <2 x double>, ptr %.sroa.75.0..sroa_idx, align 8 ; 2 uses
  %i.u = fmul <2 x double> %i.t, %i.l
  %i.v = load <2 x double>, ptr %i.g, align 8, !alias.scope !1026, !noalias !1027
  %i.w = fmul <2 x double> %i.t, %i.i
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = fadd <2 x double> %i.x, %i.u
  %i.z = fadd <2 x double> %i.y, %i.v
  store <2 x double> %i.z, ptr %.sroa.75.0..sroa_idx, align 8
  br label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtBX_16smart_componentsNtBV_5Shape12apply_affine0EBX_.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6 ; 2 uses
  %.idx = mul i64 %i.ad, 24                       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtBX_16smart_componentsNtBV_5Shape12apply_affine0EBX_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %.sroa.0.0.copyload.i.i = load double, ptr %1, align 8, !noalias !1028 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload.i.i = load double, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !1028 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ag = load <2 x double>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1028 ; 3 uses
  %i.ah = load <2 x double>, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1028 ; 3 uses
  %i.ai = add i64 %.idx, -24                      ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 48
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %i.aj = udiv i64 %i.ai, 24
  %n.vec = and i64 %i.aj, 1152921504606846974     ; 2 uses
  %2 = mul i64 %n.vec, 24
  %3 = getelementptr i8, ptr %i.ab, i64 %2
  %broadcast.splatinsert = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i.i, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat8 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat10 = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %.sroa.6.0.copyload.i.i, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat14 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splat16 = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = mul i64 %index, 24                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ak ; 3 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak  ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.al, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.am = load double, ptr %next.gep, align 8, !alias.scope !1028, !noundef !6
  %i.an = load double, ptr %next.gep17, align 8, !alias.scope !1028, !noundef !6
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.al, i64 32
  %i.as = load double, ptr %i.aq, align 8, !alias.scope !1028, !noundef !6
  %i.at = load double, ptr %i.ar, align 8, !alias.scope !1028, !noundef !6
  %i.au = insertelement <2 x double> poison, double %i.as, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.at, i64 1 ; 2 uses
  %i.aw = fmul <2 x double> %broadcast.splat, %i.ap
  %i.ax = fmul <2 x double> %broadcast.splat10, %i.av
  %i.ay = fadd <2 x double> %i.aw, %i.ax
  %i.az = fadd <2 x double> %broadcast.splat14, %i.ay ; 2 uses
  %i.ba = fmul <2 x double> %broadcast.splat8, %i.ap
  %i.bb = fmul <2 x double> %broadcast.splat12, %i.av
  %i.bc = fadd <2 x double> %i.ba, %i.bb
  %i.bd = fadd <2 x double> %broadcast.splat16, %i.bc ; 2 uses
  %i.be = extractelement <2 x double> %i.az, i64 0
  store double %i.be, ptr %next.gep, align 8, !alias.scope !1028
  %i.bf = extractelement <2 x double> %i.bd, i64 0
  store double %i.bf, ptr %i.aq, align 8, !alias.scope !1028
  %i.bg = shufflevector <2 x double> %i.az, <2 x double> %i.bd, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.bg, ptr %next.gep17, align 8, !alias.scope !1028
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1024

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.i
  %.sroa.0.02.i.ph = phi ptr [ %i.ab, %.lr.ph.i ], [ %3, %vector.body ]
  %i.bi = insertelement <2 x double> poison, double %.sroa.0.0.copyload.i.i, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %.sroa.6.0.copyload.i.i, i64 1
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.0.02.i = phi ptr [ %i.bk, %scalar.ph ], [ %.sroa.0.02.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.bl = load <2 x double>, ptr %.sroa.0.02.i, align 8, !alias.scope !1028 ; 2 uses
  %i.bm = fmul <2 x double> %i.ag, %i.bl
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = fmul <2 x double> %i.bj, %i.bl
  %i.bp = fadd <2 x double> %i.bn, %i.bo
  %i.bq = fadd <2 x double> %i.ah, %i.bp
  store <2 x double> %i.bq, ptr %.sroa.0.02.i, align 8, !alias.scope !1028
  %i.br = icmp eq ptr %i.bk, %i.ae
  br i1 %i.br, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtBX_16smart_componentsNtBV_5Shape12apply_affine0EBX_.exit, label %scalar.ph, !llvm.loop !1025

_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtCs1qcNTItuk7F_13glyphs_reader4font4NodeENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvMNtBX_16smart_componentsNtBV_5Shape12apply_affine0EBX_.exit: ; preds = %scalar.ph, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCs1qcNTItuk7F_13glyphs_reader4fontNtB2_15MetaTableValues10from_plist(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [72 x i8], align 8                ; 14 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 9 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  store i64 0, ptr %.sroa.527.0..sroa_idx, align 8
  %i.r = load i64, ptr %1, align 8, !range !25, !noundef !6
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !6 ; 2 uses
  %.idx = shl nuw nsw i64 %i.w, 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.533.sroa.7.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %.sroa.533.sroa.8.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 52
  %.sroa.533.sroa.9.0..sroa.533.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 65
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.bk

bb.d:                                             ; preds = %.lr.ph, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit83
  %.sroa.03.0110 = phi ptr [ %i.u, %.lr.ph ], [ %i.ag, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit83 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.0110, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ah = invoke noundef align 8 ptr @_RNvMNtCs1qcNTItuk7F_13glyphs_reader5plistNtB2_5Plist3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0110, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 3)
          to label %bb.f unwind label %bb.e       ; 4 uses

._crit_edge.loopexit:                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEECs1qcNTItuk7F_13glyphs_reader.exit83
  %.pre = load i64, ptr %.sroa.524.0..sroa_idx, align 8
  %.pre116 = load i64, ptr %.sroa.527.0..sroa_idx, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ai = phi i64 [ %.pre116, %._crit_edge.loopexit ], [ 0, %bb.b ] ; 2 uses
  %i.aj = phi i64 [ %.pre, %._crit_edge.loopexit ], [ 0, %bb.b ] ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 384307168202282326
  call void @llvm.assume(i1 %i.ak)
  %i.al = icmp ult i64 %i.ai, 384307168202282326
  call void @llvm.assume(i1 %i.al)
  %i.am = or i64 %i.ai, %i.aj
  %.not54 = icmp eq i64 %i.am, 0
  br i1 %.not54, label %bb.bl, label %bb.bp

.body81:                                          ; preds = %bb.bc, %.body67, %.body64, %bb.e, %bb.bi
  %.pn51.pn = phi { ptr, i32 } [ %.pn51.ph, %bb.bi ], [ %eh.lpad-body68, %.body67 ], [ %i.an, %bb.e ], [ %eh.lpad-body65, %.body64 ], [ %i.dc, %bb.bc ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs1qcNTItuk7F_13glyphs_reader4font15MetaTableValuesEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p) #33
          to label %common.resume unwind label %bb.bf

bb.e:                                             ; preds = %bb.bd, %bb.k, %bb.h, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body81

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.bj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load i64, ptr %i.ah, align 8, !range !25, !noundef !6
  %i.ap = icmp eq i64 %i.ao, 2
  br i1 %i.ap, label %bb.h, label %bb.bj

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  store ptr %i.ar, ptr %i.o, align 8, !captures !27
  store i64 %i.at, ptr %i.z, align 8
  %i.au = invoke noundef align 8 ptr @_RNvMNtCs1qcNTItuk7F_13glyphs_reader5plistNtB2_5Plist3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.03.0110, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 4)
          to label %bb.i unwind label %bb.e       ; 4 uses

bb.i:                                             ; preds = %bb.h
  %.not48 = icmp eq ptr %i.au, null
  br i1 %.not48, label %bb.bj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load i64, ptr %i.au, align 8, !range !25, !noundef !6
  %i.aw = icmp eq i64 %i.av, 2
  br i1 %i.aw, label %bb.k, label %bb.bj

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !noundef !6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  store i64 %i.ba, ptr %.sroa.432.0..sroa_idx, align 8
  store ptr %i.ay, ptr %.sroa.533.0..sroa_idx, align 8
  store i64 %i.ba, ptr %.sroa.533.sroa.4.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  store i64 0, ptr %.sroa.533.sroa.5.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  store i64 %i.ba, ptr %.sroa.533.sroa.6.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  store i32 44, ptr %.sroa.533.sroa.7.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  store i32 44, ptr %.sroa.533.sroa.8.0..sroa.533.0..sroa_idx.sroa_idx, align 4
  store i8 1, ptr %.sroa.533.sroa.9.0..sroa.533.0..sroa_idx.sroa_idx, align 8
  store i8 1, ptr %.sroa.634.0..sroa_idx, align 8
  store i8 0, ptr %.sroa.735.0..sroa_idx, align 1
  invoke void @_RNvXNtNtCsgCecv3eZDcN_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsf3Ta7LF998c_4core4iter8adapters3map3MapINtNtNtB2c_3str4iter5SplitcEINvMB13_B11_3newReEEE9from_iterCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.m)
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %cond = icmp eq i64 %i.at, 4
  br i1 %cond, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.l
  %i.bb = load i32, ptr %i.ar, align 1
  %i.bc = icmp ne i32 %i.bb, 1735289956
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %bb.p unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body64 unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
end_hunk_0
begin_hunk_1_@_RNvXsQ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_4FontINtNtCsf3Ta7LF998c_4core7convert7TryFromNtB5_7RawFontE8try_from:bb.a
.noexc101.i:                                      ; preds = %bb.ps
  %.pre.i.i96.i = load ptr, ptr %i.btq, align 8, !alias.scope !4145, !noalias !4119
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8push_mutCs1qcNTItuk7F_13glyphs_reader.exit.i.i95.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8push_mutCs1qcNTItuk7F_13glyphs_reader.exit.i.i95.i: ; preds = %.noexc101.i, %._crit_edge2108
  %i.buq = phi ptr [ %i.btw, %._crit_edge2108 ], [ %.pre.i.i96.i, %.noexc101.i ]
  %i.bur = getelementptr inbounds nuw [16 x i8], ptr %i.buq, i64 %i.btx
  store <2 x double> %i.btv, ptr %i.bur, align 8, !noalias !4119
  %i.bus = add i64 %i.btx, 1
  store i64 %i.bus, ptr %i.btr, align 8, !alias.scope !4145, !noalias !4119
  br label %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap14add_or_replace.exit.thread.i.i

._crit_edge.i94.i:                                ; preds = %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap14add_or_replace.exit.thread.i.i, %.noexc100.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !4141
  %i.but = invoke { ptr, ptr } @_RNvXsk_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cm)
          to label %.noexc102.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4119 ; 2 uses

.noexc102.i:                                      ; preds = %._crit_edge.i94.i
  %i.buu = extractvalue { ptr, ptr } %i.but, 0    ; 2 uses
  %.not63.i.i = icmp eq ptr %i.buu, null
  br i1 %.not63.i.i, label %._crit_edge81.i.i, label %bb.pp

bb.pt:                                            ; preds = %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBU_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2D_19AxisUserToDesignMap14add_or_replace0EB2F_.exit.i.i92.i
  store double %i.bul, ptr %i.bui, align 8, !noalias !4144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !4141
  store double %i.buj, ptr %i.cg, align 8, !noalias !4141
  %i.buv = load atomic i64, ptr @_RNvCsksibNCz2yVN_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !4141 ; 2 uses
  %i.buw = icmp ult i64 %i.buv, 6
  call void @llvm.assume(i1 %i.buw)
  %i.bux = icmp samesign ugt i64 %i.buv, 1
  br i1 %i.bux, label %bb.pu, label %bb.pv

bb.pu:                                            ; preds = %bb.pt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !4141
  store ptr %i.cl, ptr %i.cf, align 8, !noalias !4141
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.445.0..sroa_idx.i.i, align 8, !noalias !4141
  store ptr %i.btf, ptr %i.bsg, align 8, !noalias !4141
  store ptr @_RNvXsq_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !4141
  store ptr %i.ci, ptr %i.bsh, align 8, !noalias !4141
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtB6_7Display3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.453.0..sroa_idx.i.i449, align 8, !noalias !4141
  store ptr %i.cg, ptr %i.bsi, align 8, !noalias !4141
  store ptr @_RNvXs8_CsidwnrrI1Awe_13ordered_floatINtB5_12OrderedFloatdENtNtCsf3Ta7LF998c_4core3fmt7Display3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.457.0..sroa_idx.i.i450, align 8, !noalias !4141
  store ptr %i.ch, ptr %i.bsj, align 8, !noalias !4141
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdENtB6_7Display3fmtCs1qcNTItuk7F_13glyphs_reader, ptr %.sroa.461.0..sroa_idx.i.i, align 8, !noalias !4141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !4141
  store ptr @26, ptr %i.ce, align 8, !noalias !4141
  store i64 19, ptr %i.bsk, align 8, !noalias !4141
  store ptr @26, ptr %i.bsl, align 8, !noalias !4141
  store i64 19, ptr %i.bsm, align 8, !noalias !4141
  store ptr @157, ptr %i.bsn, align 8, !noalias !4141
  invoke void @_RINvNtCsksibNCz2yVN_3log13___private_api3loguNtB2_12GlobalLoggerECs1qcNTItuk7F_13glyphs_reader(ptr noundef nonnull @156, ptr noundef nonnull %i.cf, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ce)
          to label %.noexc103.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4119

.noexc103.i:                                      ; preds = %bb.pu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !4141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !4141
  br label %bb.pv

bb.pv:                                            ; preds = %.noexc103.i, %bb.pt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !4141
  br label %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap14add_or_replace.exit.thread.i.i

_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap14add_or_replace.exit.thread.i.i: ; preds = %bb.pv, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8push_mutCs1qcNTItuk7F_13glyphs_reader.exit.i.i95.i, %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBU_EENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2D_19AxisUserToDesignMap14add_or_replace0EB2F_.exit.i.i92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !4141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !4141
  %i.buy = icmp eq ptr %i.btt, %i.bto
  br i1 %i.buy, label %._crit_edge.i94.i, label %bb.pq

.loopexit.i453:                                   ; preds = %bb.qa, %.noexc124.i, %.noexc123.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.pz
  %lpad.loopexit149.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkRNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapNCNvMsJ_B1e_NtB1e_19UserToDesignMapping3new0E0B1g_.exit.loopexit.i.i
  %lpad.loopexit152.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.pu, %bb.ps
  %lpad.loopexit155.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %._crit_edge.i94.i, %.noexc99.i, %.noexc98.i, %bb.pp
  %lpad.loopexit158.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.po
  %lpad.loopexit160.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.pw
  %lpad.loopexit.split-lp161.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i453
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i453 ], [ %lpad.loopexit149.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit152.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit155.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit158.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit160.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp161.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.ahn unwind label %bb.qc, !noalias !4119

_RNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19UserToDesignMapping21add_instance_mappings.exit.i: ; preds = %._crit_edge81.i.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtBW_19UserToDesignMapping21add_instance_mappings0INtB7_5FnMutTRRNtBW_8InstanceEE8call_mutBY_.exit.thread.i.i.i, %bb.pm
  %i.buz = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.bva = load i64, ptr %i.buz, align 8, !noalias !4080, !noundef !6 ; 2 uses
  %i.bvb = icmp eq i64 %i.bva, 0
  br i1 %i.bvb, label %bb.py, label %bb.pw

bb.pw:                                            ; preds = %_RNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19UserToDesignMapping21add_instance_mappings.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !4080
  %i.bvc = load ptr, ptr %i.do, align 8, !noalias !4080, !noundef !6 ; 3 uses
  %.not60.i = icmp ne ptr %i.bvc, null            ; 3 uses
  %i.bvd = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.bve = load i64, ptr %i.bvd, align 8, !noalias !4080
  %.sroa.024.sroa.5.sroa.6.0.i = select i1 %.not60.i, i64 %i.bve, i64 undef ; 2 uses
  %.sroa.024.sroa.0.0.i = zext i1 %.not60.i to i64 ; 2 uses
  %.sroa.5.0.i = select i1 %.not60.i, i64 %i.bva, i64 0
  store i64 %.sroa.024.sroa.0.0.i, ptr %i.dn, align 8, !noalias !4080
  %.sroa.024.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr null, ptr %.sroa.024.sroa.5.0..sroa_idx.i, align 8, !noalias !4080
  %.sroa.024.sroa.5.sroa.5.0..sroa.024.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store ptr %i.bvc, ptr %.sroa.024.sroa.5.sroa.5.0..sroa.024.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !4080
  %.sroa.024.sroa.5.sroa.6.0..sroa.024.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store i64 %.sroa.024.sroa.5.sroa.6.0.i, ptr %.sroa.024.sroa.5.sroa.6.0..sroa.024.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !4080
  %.sroa.024.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  store i64 %.sroa.024.sroa.0.0.i, ptr %.sroa.024.sroa.6.0..sroa_idx.i, align 8, !noalias !4080
  %.sroa.024.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  store ptr null, ptr %.sroa.024.sroa.7.0..sroa_idx.i, align 8, !noalias !4080
  %.sroa.024.sroa.7.sroa.5.0..sroa.024.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  store ptr %i.bvc, ptr %.sroa.024.sroa.7.sroa.5.0..sroa.024.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !4080
  %.sroa.024.sroa.7.sroa.6.0..sroa.024.sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  store i64 %.sroa.024.sroa.5.sroa.6.0.i, ptr %.sroa.024.sroa.7.sroa.6.0..sroa.024.sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !4080
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  store i64 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4080
  %i.bvf = invoke noundef align 8 ptr @_RNvXsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_6ValuesNtNtBb_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dn)
          to label %.noexc109.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !4119 ; 2 uses

.noexc109.i:                                      ; preds = %bb.pw
  %.not9.not.i.i = icmp eq ptr %i.bvf, null
  br i1 %.not9.not.i.i, label %.loopexit154.i, label %.lr.ph.i105.i

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkRNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapNCNvMsJ_B1e_NtB1e_19UserToDesignMapping3new0E0B1g_.exit.loopexit.i.i: ; preds = %bb.px, %.lr.ph.i105.i
  %i.bvg = invoke noundef align 8 ptr @_RNvXsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_6ValuesNtNtBb_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.dn)
          to label %.noexc110.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !4119 ; 2 uses

.noexc110.i:                                      ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkRNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapNCNvMsJ_B1e_NtB1e_19UserToDesignMapping3new0E0B1g_.exit.loopexit.i.i
  %.not.not.i108.i = icmp eq ptr %i.bvg, null
  br i1 %.not.not.i108.i, label %.loopexit154.i, label %.lr.ph.i105.i

.lr.ph.i105.i:                                    ; preds = %.noexc109.i, %.noexc110.i
  %i.bvh = phi ptr [ %i.bvg, %.noexc110.i ], [ %i.bvf, %.noexc109.i ] ; 2 uses
  %i.bvi = getelementptr i8, ptr %i.bvh, i64 8
  %.val.i106.i = load ptr, ptr %i.bvi, align 8, !alias.scope !4146, !noalias !4119, !nonnull !6, !noundef !6 ; 2 uses
  %i.bvj = getelementptr i8, ptr %i.bvh, i64 16
  %.val5.i.i = load i64, ptr %i.bvj, align 8, !alias.scope !4146, !noalias !4119, !noundef !6 ; 2 uses
  %.idx2117 = shl nuw nsw i64 %.val5.i.i, 4
  %i.bvk = getelementptr inbounds nuw i8, ptr %.val.i106.i, i64 %.idx2117
  %.not.not.not.i.not.i.i4512109 = icmp eq i64 %.val5.i.i, 0
  br i1 %.not.not.not.i.not.i.i4512109, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkRNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapNCNvMsJ_B1e_NtB1e_19UserToDesignMapping3new0E0B1g_.exit.loopexit.i.i, label %.lr.ph2110

bb.px:                                            ; preds = %.lr.ph2110
  %i.bvl = getelementptr inbounds nuw i8, ptr %i.bvm, i64 16 ; 2 uses
  %.not.not.not.i.not.i.i451 = icmp eq ptr %i.bvl, %i.bvk
  br i1 %.not.not.not.i.not.i.i451, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator3all5checkRNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapNCNvMsJ_B1e_NtB1e_19UserToDesignMapping3new0E0B1g_.exit.loopexit.i.i, label %.lr.ph2110

.lr.ph2110:                                       ; preds = %.lr.ph.i105.i, %bb.px
  %i.bvm = phi ptr [ %i.bvl, %bb.px ], [ %.val.i106.i, %.lr.ph.i105.i ] ; 3 uses
  %.val.i.i.i.i.i.i452 = load double, ptr %i.bvm, align 8, !noalias !4147, !noundef !6 ; 2 uses
  %i.bvn = getelementptr i8, ptr %i.bvm, i64 8
  %.val2.i.i.i.i.i.i = load double, ptr %i.bvn, align 8, !noalias !4147 ; 2 uses
  %i.bvo = fcmp uno double %.val.i.i.i.i.i.i452, 0.000000e+00
  %i.bvp = fcmp uno double %.val2.i.i.i.i.i.i, 0.000000e+00
  %i.bvq = fcmp oeq double %.val.i.i.i.i.i.i452, %.val2.i.i.i.i.i.i
  %.sroa.0.0.in.i.i.i.i.i.i.i = select i1 %i.bvo, i1 %i.bvp, i1 %i.bvq
  br i1 %.sroa.0.0.in.i.i.i.i.i.i.i, label %bb.px, label %bb.qb

bb.py:                                            ; preds = %.loopexit154.i, %_RNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19UserToDesignMapping21add_instance_mappings.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !4080
  %i.bvr = icmp eq i64 %i.bmq, 0
  br i1 %i.bvr, label %_RNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19UserToDesignMapping26add_master_mappings_if_new.exit.i, label %.lr.ph.i112.i

.lr.ph.i112.i:                                    ; preds = %bb.py
  %i.bvs = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bvt = load ptr, ptr %i.bvs, align 8, !alias.scope !4149, !noalias !4150, !nonnull !6, !noundef !6 ; 2 uses
  %i.bvu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bvv = load i64, ptr %i.bvu, align 8, !alias.scope !4149, !noalias !4150, !noundef !6
  %i.bvw = getelementptr inbounds nuw [56 x i8], ptr %i.bvt, i64 %i.bvv
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.sroa.7.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  br label %bb.pz

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.thread.loopexit.i.i: ; preds = %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i, %.noexc122.i
  %i.bvx = icmp eq ptr %2, %i.bmr
  br i1 %i.bvx, label %_RNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19UserToDesignMapping26add_master_mappings_if_new.exit.i, label %bb.pz

bb.pz:                                            ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.thread.loopexit.i.i, %.lr.ph.i112.i
  %.sroa.0.015.i.i = phi ptr [ %i.bmp, %.lr.ph.i112.i ], [ %2, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.thread.loopexit.i.i ] ; 3 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.0.015.i.i, i64 544 ; 2 uses
  %i.bvy = getelementptr i8, ptr %.sroa.0.015.i.i, i64 288
  %.val.i114.i = load ptr, ptr %i.bvy, align 8, !noalias !4151, !nonnull !6, !noundef !6 ; 2 uses
  %i.bvz = getelementptr i8, ptr %.sroa.0.015.i.i, i64 296
  %.val5.i115.i = load i64, ptr %i.bvz, align 8, !noalias !4151, !noundef !6
  %i.bwa = getelementptr inbounds nuw [8 x i8], ptr %.val.i114.i, i64 %.val5.i115.i
  invoke void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E3newB1q_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cd, ptr noundef nonnull %i.bvt, ptr noundef nonnull %i.bvw, ptr noundef nonnull %.val.i114.i, ptr noundef nonnull %i.bwa)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !4119

.noexc122.i:                                      ; preds = %bb.pz
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.cd, align 8, !noalias !4152 ; 2 uses
  %.sroa.46.0.copyload.i.i = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !4152 ; 2 uses
  %.sroa.57.0.copyload.i.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !4152 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i113.i, align 8, !noalias !4152 ; 2 uses
  %i.bwb = icmp ult i64 %.sroa.57.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.bwb, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.lr.ph.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.thread.loopexit.i.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.lr.ph.i.i: ; preds = %.noexc122.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.i.i

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.i.i: ; preds = %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.lr.ph.i.i
  %.sroa.57.014.i.i = phi i64 [ %.sroa.57.0.copyload.i.i, %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.lr.ph.i.i ], [ %i.bwc, %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i ] ; 3 uses
  %i.bwc = add i64 %.sroa.57.014.i.i, 1           ; 2 uses
  %i.bwd = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.57.014.i.i
  %i.bwe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.46.0.copyload.i.i, i64 %.sroa.57.014.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !4152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !4152
  invoke void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bwd)
          to label %.noexc123.i unwind label %.loopexit.i453, !noalias !4119

.noexc123.i:                                      ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.i.i
  invoke void @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapE5entryB1w_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.cc, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cb)
          to label %.noexc124.i unwind label %.loopexit.i453, !noalias !4119

.noexc124.i:                                      ; preds = %.noexc123.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !4152
  %i.bwf = invoke noundef nonnull align 8 ptr @_RNvMs3_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_5EntryNtNtBd_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapE10or_defaultB1B_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.cc)
          to label %.noexc125.i unwind label %.loopexit.i453, !noalias !4119 ; 4 uses

.noexc125.i:                                      ; preds = %.noexc124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !4152
  %i.bwg = load double, ptr %i.bwe, align 8, !noalias !4151, !noundef !6 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4153)
  %i.bwh = getelementptr inbounds nuw i8, ptr %i.bwf, i64 8 ; 2 uses
  %i.bwi = load ptr, ptr %i.bwh, align 8, !alias.scope !4153, !noalias !4151, !nonnull !6, !noundef !6 ; 4 uses
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.bwf, i64 16 ; 2 uses
  %i.bwk = load i64, ptr %i.bwj, align 8, !alias.scope !4153, !noalias !4151, !noundef !6 ; 5 uses
  %.idx.i.i116.i = shl nuw nsw i64 %i.bwk, 4
  %i.bwl = getelementptr inbounds nuw i8, ptr %i.bwi, i64 %.idx.i.i116.i ; 2 uses
  %.not.i.i.i.i454 = icmp eq i64 %i.bwk, 0
  br i1 %.not.i.i.i.i454, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2z_19AxisUserToDesignMap16add_identity_map0EB2B_.exit.i.i.i, label %.lr.ph.i.i.i117.i

.lr.ph.i.i.i117.i:                                ; preds = %.noexc125.i
  %i.bwm = fcmp uno double %i.bwg, 0.000000e+00
  br i1 %i.bwm, label %.lr.ph.split.us.split.us.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i

.lr.ph.split.us.split.us.i.i.i.i.preheader:       ; preds = %.lr.ph.i.i.i117.i
  %i.bwn = insertelement <4 x double> <double poison, double poison, double 0.000000e+00, double 0.000000e+00>, double %i.bwg, i64 0
  %i.bwo = shufflevector <4 x double> %i.bwn, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  br label %.lr.ph.split.us.split.us.i.i.i.i

.lr.ph.split.us.split.us.i.i.i.i:                 ; preds = %.lr.ph.split.us.split.us.i.i.i.i.preheader, %.backedge.us.us.i.i.i.i
  %i.bwp = phi ptr [ %i.bwx, %.backedge.us.us.i.i.i.i ], [ %i.bwi, %.lr.ph.split.us.split.us.i.i.i.i.preheader ] ; 2 uses
  %i.bwq = load <2 x double>, ptr %i.bwp, align 8, !noalias !4154
  %i.bwr = shufflevector <2 x double> %i.bwq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.bws = fcmp oeq <4 x double> %i.bwr, %i.bwo
  %i.bwt = fcmp uno <4 x double> %i.bwr, %i.bwo
  %i.bwu = shufflevector <4 x i1> %i.bws, <4 x i1> %i.bwt, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bwv = freeze <4 x i1> %i.bwu
  %i.bww = bitcast <4 x i1> %i.bwv to i4
  %.not2119 = icmp eq i4 %i.bww, 0
  br i1 %.not2119, label %.backedge.us.us.i.i.i.i, label %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i

.backedge.us.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.split.us.i.i.i.i
  %i.bwx = getelementptr inbounds nuw i8, ptr %i.bwp, i64 16 ; 2 uses
  %.not88.i.i.i.i = icmp eq ptr %i.bwx, %i.bwl
  br i1 %.not88.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2z_19AxisUserToDesignMap16add_identity_map0EB2B_.exit.i.i.i, label %.lr.ph.split.us.split.us.i.i.i.i

.lr.ph.split.split.i.i.i.i:                       ; preds = %.lr.ph.i.i.i117.i, %.backedge.i.i.i119.i
  %i.bwy = phi ptr [ %i.bwz, %.backedge.i.i.i119.i ], [ %i.bwi, %.lr.ph.i.i.i117.i ] ; 3 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwy, i64 16 ; 2 uses
  %.val2.i.i.i118.i = load double, ptr %i.bwy, align 8, !noalias !4154, !noundef !6
  %i.bxa = fcmp oeq double %.val2.i.i.i118.i, %i.bwg
  br i1 %i.bxa, label %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.split.split.i.i.i.i
  %i.bxb = getelementptr i8, ptr %i.bwy, i64 8
  %.val3.i.i.i.i = load double, ptr %i.bxb, align 8, !noalias !4154
  %i.bxc = fcmp oeq double %.val3.i.i.i.i, %i.bwg
  br i1 %i.bxc, label %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i, label %.backedge.i.i.i119.i

.backedge.i.i.i119.i:                             ; preds = %.split.i.i.i.i.i
  %.not87.i.i.i.i = icmp eq ptr %i.bwz, %i.bwl
  br i1 %.not87.i.i.i.i, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2z_19AxisUserToDesignMap16add_identity_map0EB2B_.exit.i.i.i, label %.lr.ph.split.split.i.i.i.i

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2z_19AxisUserToDesignMap16add_identity_map0EB2B_.exit.i.i.i: ; preds = %.backedge.i.i.i119.i, %.backedge.us.us.i.i.i.i, %.noexc125.i
  %i.bxd = load i64, ptr %i.bwf, align 8, !range !14, !alias.scope !4155, !noalias !4151, !noundef !6
  %i.bxe = icmp eq i64 %i.bwk, %i.bxd
  br i1 %i.bxe, label %bb.qa, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8push_mutCs1qcNTItuk7F_13glyphs_reader.exit.i.i120.i

bb.qa:                                            ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2z_19AxisUserToDesignMap16add_identity_map0EB2B_.exit.i.i.i
  invoke void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBN_EE8grow_oneCsgdm2QMcbaeA_10fontdrasil(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bwf) #35
          to label %.noexc126.i unwind label %.loopexit.i453, !noalias !4119

.noexc126.i:                                      ; preds = %bb.qa
  %.pre.i.i121.i = load ptr, ptr %i.bwh, align 8, !alias.scope !4155, !noalias !4151
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8push_mutCs1qcNTItuk7F_13glyphs_reader.exit.i.i120.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8push_mutCs1qcNTItuk7F_13glyphs_reader.exit.i.i120.i: ; preds = %.noexc126.i, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2z_19AxisUserToDesignMap16add_identity_map0EB2B_.exit.i.i.i
  %i.bxf = phi ptr [ %i.bwi, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBR_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB2z_19AxisUserToDesignMap16add_identity_map0EB2B_.exit.i.i.i ], [ %.pre.i.i121.i, %.noexc126.i ]
  %i.bxg = getelementptr inbounds nuw [16 x i8], ptr %i.bxf, i64 %i.bwk ; 2 uses
  store double %i.bwg, ptr %i.bxg, align 8, !noalias !4151
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxg, i64 8
  store double %i.bwg, ptr %i.bxh, align 8, !noalias !4151
  %i.bxi = add i64 %i.bwk, 1
  store i64 %i.bxi, ptr %i.bwj, align 8, !alias.scope !4155, !noalias !4151
  br label %_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i

_RNvMsI_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19AxisUserToDesignMap16add_identity_map.exit.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i, %.lr.ph.split.us.split.us.i.i.i.i, %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEBG_EE8push_mutCs1qcNTItuk7F_13glyphs_reader.exit.i.i120.i
  %exitcond.not.i.i = icmp eq i64 %i.bwc, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.thread.loopexit.i.i, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.i.i

_RNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19UserToDesignMapping26add_master_mappings_if_new.exit.i: ; preds = %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font4AxisEIBX_INtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEEINtB5_7ZipImplBW_B24_E4nextB1q_.exit.thread.loopexit.i.i, %bb.py
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !4080
  br label %bb.qi

bb.qb:                                            ; preds = %.lr.ph2110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !4080
  br label %bb.qi

.loopexit154.i:                                   ; preds = %.noexc110.i, %.noexc109.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !4080
  br label %bb.py

bb.qc:                                            ; preds = %bb.qg, %bb.qe, %bb.qd, %.loopexit.split-lp.i, %bb.pi
  %i.bxj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #34, !noalias !4119
  unreachable

bb.qd:                                            ; preds = %bb.pl
  %i.bxk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ds)
          to label %bb.ahn unwind label %bb.qc, !noalias !4119

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapEEB1Z_.exit.i: ; preds = %bb.pi
  %i.bxl = load i64, ptr %i.brm, align 8, !range !7, !noalias !4080, !noundef !6
  %.not.i = icmp eq i64 %i.bxl, 0
  br i1 %.not.i, label %bb.ahn, label %bb.qe

bb.qe:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapEEB1Z_.exit.i
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx133.i)
          to label %bb.ahn unwind label %bb.qc, !noalias !4119

bb.qf:                                            ; preds = %bb.pd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapEEB1Z_.exit.thread.i.i, %bb.oy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB2w_3VecNtB1B_12AxisLocationEEEEB1D_.exit.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.brl, %bb.pd ], [ %i.bra, %bb.oy ], [ %i.brc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapEEB1Z_.exit.thread.i.i ], [ %.pn.pn.i74.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCs1qcNTItuk7F_13glyphs_reader4font13RawFontMasterEINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterINtB2w_3VecNtB1B_12AxisLocationEEEEB1D_.exit.i.i ] ; 2 uses
  br i1 %i.bmo, label %bb.ahn, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bxm)
          to label %bb.ahn unwind label %bb.qc, !noalias !4119

bb.qh:                                            ; preds = %bb.agu, %bb.nn, %_RNvMsm_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19RawCustomParameters18take_axis_mappings.exit.i.i, %bb.na
  %.sroa.0178.5 = phi i8 [ %.sroa.0178.19, %bb.agu ], [ 1, %bb.nn ], [ 1, %bb.na ], [ 1, %_RNvMsm_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19RawCustomParameters18take_axis_mappings.exit.i.i ] ; 2 uses
  %.sroa.0180.5 = phi i8 [ %.sroa.0180.17, %bb.agu ], [ 1, %bb.nn ], [ 1, %bb.na ], [ 1, %_RNvMsm_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19RawCustomParameters18take_axis_mappings.exit.i.i ] ; 2 uses
  %.sroa.0186.5 = phi i8 [ %.sroa.0186.14, %bb.agu ], [ 1, %bb.nn ], [ 1, %bb.na ], [ 1, %_RNvMsm_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19RawCustomParameters18take_axis_mappings.exit.i.i ]
  %.sroa.0189.5 = phi i8 [ %.sroa.0189.10, %bb.agu ], [ 1, %bb.nn ], [ 1, %bb.na ], [ 1, %_RNvMsm_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19RawCustomParameters18take_axis_mappings.exit.i.i ]
  %i.bxn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ahn

bb.qi:                                            ; preds = %bb.qb, %_RNvMsJ_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19UserToDesignMapping26add_master_mappings_if_new.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapEEB1Z_.exit86.thread.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCs1qcNTItuk7F_13glyphs_reader4font19AxisUserToDesignMapEEB1Z_.exit86.i.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.do, i64 24, i1 false), !noalias !4156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !4080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ds), !noalias !4080
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dt), !noalias !4080
  call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !4157
  %.val.i500 = load ptr, ptr %i.bhu, align 8, !alias.scope !4157, !nonnull !6, !noundef !6
  %.val25.i = load i64, ptr %i.bhv, align 8, !alias.scope !4157, !noundef !6
  invoke fastcc void @_RNvMsm_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB5_19RawCustomParameters11take_string(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ca, ptr nonnull %.val.i500, i64 %.val25.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 20)
          to label %.noexc516 unwind label %bb.rt

.noexc516:                                        ; preds = %bb.qi
  %i.bxo = load i64, ptr %i.ca, align 8, !range !5, !noalias !4157, !noundef !6
  %.not.i501 = icmp eq i64 %i.bxo, -1
  br i1 %.not.i501, label %bb.qo, label %bb.qj

bb.qj:                                            ; preds = %.noexc516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !4157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i64 24, i1 false), !noalias !4157
  %.val26.i = load ptr, ptr %i.bff, align 8, !alias.scope !4157, !nonnull !6, !noundef !6 ; 3 uses
  %.val27.i = load i64, ptr %i.bfh, align 8, !alias.scope !4157, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4158)
  %.idx.i.i502 = mul nuw nsw i64 %.val27.i, 544
  %i.bxp = getelementptr inbounds nuw i8, ptr %.val26.i, i64 %.idx.i.i502
end_hunk_1
