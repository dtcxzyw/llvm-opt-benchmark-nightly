Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha13b10c33571e71eE":bb.a
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !222
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !222
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !222
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17ha2023540ad480d93E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #5 personality ptr @rust_eh_personality !guid !229 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !234, !noundef !25 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !234, !nonnull !25
  %i.d = ptrtoint ptr %.val4.i.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 2
  %.sroa.7.0.i.i = select i1 %.not.i.i, i64 0, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !234, !noundef !25 ; 2 uses
  %.not52.i.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val4.i58.i.i = load ptr, ptr %i.j, align 8, !alias.scope !234, !nonnull !25
  %i.k = ptrtoint ptr %.val4.i58.i.i to i64
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2
  %.sroa.8.0.i.i = select i1 %.not52.i.i, i64 0, i64 %i.n
  %i.o = load ptr, ptr %1, align 8, !alias.scope !234, !noundef !25 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val56.i.i = load ptr, ptr %i.p, align 8, !alias.scope !234, !nonnull !25
  %i.q = ptrtoint ptr %.val56.i.i to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 2
  %.sroa.870.0.i.i = select i1 %.not53.i.i, i64 0, i64 %i.t
  %i.u = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i
  %i.v = add nuw i64 %i.u, %.sroa.870.0.i.i       ; 2 uses
  store i64 %i.v, ptr %0, align 8, !alias.scope !235
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.w, align 8, !alias.scope !235
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.x, align 8, !alias.scope !235
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hbfce29eda64cb2f1E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !238 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 1                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !239
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !239
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !239
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hca010c6d81e4cfb2E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !244 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !245
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !245
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !245
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd63026408561a4e7E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !248 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 3                   ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !249
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !249
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !249
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd8ddea632adce2fdE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 !guid !252 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !253
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !253
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !253
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @"_ZN109_$LT$rand..distr..uniform..float..UniformFloat$LT$f32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$3new17h5e8e24bb33c5990aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, float noundef %1, float noundef %2) unnamed_addr #6 personality ptr @rust_eh_personality !guid !254 {
bb.a:
  %i.a = fcmp olt float %1, %2
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.b, align 1
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = fsub float %2, %1                        ; 2 uses
  %i.d = tail call float @llvm.fabs.f32(float %i.c)
  %i.e = fcmp ueq float %i.d, +inf
  br i1 %i.e, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.f = bitcast float %i.c to i32
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.f
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %bb.b ], [ 0, %bb.f ]
  store i8 %.sink, ptr %0, align 4
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0 = phi i32 [ %i.l, %.preheader ], [ %i.f, %.preheader.preheader ] ; 3 uses
  %i.h = bitcast i32 %.sroa.0.0 to float
  %i.i = fmul float %i.h, f0x3F7FFFFE
  %i.j = fadd float %1, %i.i
  %i.k = fcmp ogt float %i.j, %2
  %i.l = add i32 %.sroa.0.0, -1
  br i1 %i.k, label %.preheader, label %bb.f

bb.f:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0, ptr %i.n, align 4
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @"_ZN109_$LT$rand..distr..uniform..float..UniformFloat$LT$f32$GT$$u20$as$u20$rand..distr..uniform..UniformSampler$GT$6sample17hfcc818fa42a4184dE"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias noundef align 16 dereferenceable(320) %1) unnamed_addr #1 !guid !261 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !alias.scope !262, !noundef !25 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 63
  br i1 %i.c, label %bb.b, label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @_ZN11rand_chacha4guts11refill_wide17h810ff6e362183b46E(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.d, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %1)
  br label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit

_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.b, %bb.a ], [ 0, %bb.b ]    ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !262, !noundef !25
  %i.h = add nuw nsw i64 %i.e, 1
  store i64 %i.h, ptr %i.a, align 16, !alias.scope !262
  %i.i = lshr i32 %i.g, 9
  %i.j = or disjoint i32 %i.i, 1065353216
  %i.k = bitcast i32 %i.j to float
  %i.l = fadd nnan float %i.k, -1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !noundef !25
  %i.o = fmul float %i.n, %i.l
  %i.p = load float, ptr %0, align 4, !noundef !25
  %i.q = fadd float %i.p, %i.o
  ret float %i.q
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13missing_field17ha4b4fbf2d3d3e53fE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #7 !guid !263 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @4, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.h, align 8
  %i.i = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hac6af6750b682b74E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_ZN10serde_core2de5Error13unknown_field17h1a90eb39f31c0ce5E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #7 !guid !264 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %1, ptr %i.g, align 8
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @7, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.l, align 8
  %i.m = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hac6af6750b682b74E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %2, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.o, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN60_$LT$serde_core..de..OneOf$u20$as$u20$core..fmt..Display$GT$3fmt17h293cfb6cf05d6a6aE", ptr %.sroa.411.0..sroa_idx, align 8
  store ptr @9, ptr %i.c, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 2, ptr %i.s, align 8
  %i.t = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hac6af6750b682b74E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.m, %bb.b ], [ %i.t, %bb.c ]
  ret ptr %.sroa.0.0
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_ZN10serde_core2de5Error14invalid_length17h7ff91b7624f309d1E(i64 noundef %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #7 !guid !265 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.d, align 8
  store ptr %1, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.f, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h44a29b653b06f677E", ptr %.sroa.46.0..sroa_idx, align 8
  store ptr @12, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %i.j, align 8
  %i.k = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hac6af6750b682b74E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15duplicate_field17hd01d99523bf6430eE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #7 !guid !266 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @14, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.h, align 8
  %i.i = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hac6af6750b682b74E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_ZN10serde_core2de5Error15unknown_variant17h3ce26141dfddf83cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #7 !guid !267 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  store ptr %0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %1, ptr %i.g, align 8
  %i.h = icmp eq i64 %3, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h82beccbf362c8091E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @17, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.l, align 8
end_hunk_0
begin_hunk_1_@_ZN4http6header4name7HdrName10from_bytes17hf1124aa44f30c6c3E:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bb = load i8, ptr %i.ba, align 8, !range !75, !noalias !9442, !noundef !25
  %i.bc = icmp eq i8 %i.bb, %i.ag
  br i1 %i.bc, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

bb.k:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.be = load i64, ptr %i.bd, align 8, !noalias !9442, !noundef !25
  %.not.i.i.i.i = icmp eq i64 %i.be, %i.aa
  br i1 %.not.i.i.i.i, label %bb.l, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !9442, !noundef !25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9443
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.aa
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hd8f13022d2dcb684E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 %i.bg, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull readonly align 1 %i.ab, ptr noundef nonnull readonly %i.ah), !noalias !9442
  call void @llvm.experimental.noalias.scope.decl(metadata !9444)
  %i.bi = load i64, ptr %i.ad, align 8, !alias.scope !9445, !noalias !9443, !noundef !25 ; 3 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !9445, !noalias !9443 ; 3 uses
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !9444, !noalias !9443, !nonnull !25
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !9444, !noalias !9443, !nonnull !25
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bi, i64 %.promoted.i.i.i.i.i)
  %exitcond.not.i3.not.i.i.i.i = icmp ult i64 %.promoted.i.i.i.i.i, %i.bi
  br i1 %exitcond.not.i3.not.i.i.i.i, label %.lr.ph.i.i.i.i, label %.loopexit.sink.split.i.i

bb.m:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = add nuw i64 %i.bk, 1                    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bj, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.sink.split.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %bb.m
  %i.bk = phi i64 [ %i.bj, %bb.m ], [ %.promoted.i.i.i.i.i, %bb.l ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val2.i.i.i.i.i.i.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 %i.bk
  %.val.i.i.i.i.i = load i8, ptr %i.bl, align 1, !noalias !9446, !noundef !25
  %.val7.i.i.i.i.i = load i8, ptr %i.bm, align 1, !noalias !9446, !noundef !25
  %i.bn = zext i8 %.val7.i.i.i.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @782, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !9447, !noundef !25
  %.not.i.i.i.i.i = icmp eq i8 %.val.i.i.i.i.i, %i.bp
  br i1 %.not.i.i.i.i.i, label %bb.m, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i

_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not14.i.i = icmp ult i64 %i.bk, %i.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9443
  br i1 %.not14.i.i, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i", label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit"

bb.n:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.br = load i64, ptr %i.bq, align 8, !noalias !9442, !noundef !25
  %.not5.i.i.i = icmp eq i64 %i.br, %i.aa
  br i1 %.not5.i.i.i, label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i", label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i": ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ax, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !9442, !noundef !25
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.bt, ptr nonnull %i.ab, i64 %i.aa), !noalias !9442
  %i.bu = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bu, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", label %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.thread.i.i"

bb.o:                                             ; preds = %bb.g
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.al, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @781) #39, !noalias !9440
  unreachable

.loopexit.sink.split.i.i:                         ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9443
  br label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit"

"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit": ; preds = %.split.i.i, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i", %.loopexit, %bb.e, %.loopexit.sink.split.i.i, %bb.c
  %.sroa.5.0 = phi i64 [ undef, %bb.c ], [ %i.al, %.loopexit.sink.split.i.i ], [ %i.al, %.split.i.i ], [ %i.al, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i ], [ %i.al, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i" ], [ undef, %bb.e ], [ undef, %.loopexit ]
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %.sroa.0.0.i.i.ph.mux, %.loopexit.sink.split.i.i ], [ %.sroa.0.0.i.i.ph.mux, %bb.e ], [ %.sroa.0.0.i.i.ph.mux, %.loopexit ], [ %.sroa.0.0.i.i.ph.mux, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i" ], [ %.sroa.0.0.i.i.ph.mux, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i ], [ %.sroa.0.0.i.i.ph.mux, %.split.i.i ]
  %.sink.i.i = phi i64 [ 0, %bb.c ], [ 1, %.loopexit.sink.split.i.i ], [ 1, %.split.i.i ], [ 1, %_ZN4core4iter6traits8iterator8Iterator8try_fold17h52fee6c4043f99d8E.exit.i.i.i.i ], [ 1, %"_ZN106_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$http..header..name..HdrName$GT$$GT$2eq17h278b1a74ec4be54bE.exit.i.i" ], [ 0, %bb.e ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %.sink.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.p

bb.p:                                             ; preds = %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h4c1913cabb4e7a80E.exit", %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i32 @_ZN4rand3rng3Rng12random_range17h1e03cfde3267e85eE(ptr noalias noundef align 16 dereferenceable(320) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9466 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %.not = icmp ult i32 %1, %2
  br i1 %.not, label %bb.b, label %bb.f, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.b = sub nuw i32 %2, %1                       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.d = load i64, ptr %i.c, align 16, !alias.scope !9467, !noundef !25 ; 2 uses
  %i.e = icmp ugt i64 %i.d, 63
  br i1 %i.e, label %bb.c, label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN11rand_chacha4guts11refill_wide17h810ff6e362183b46E(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.f, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0)
  br label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i

_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ]    ; 3 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !alias.scope !9468, !noundef !25
  %i.j = add nuw nsw i64 %i.g, 1                  ; 2 uses
  store i64 %i.j, ptr %i.c, align 16, !alias.scope !9468
  %i.k = zext i32 %i.i to i64
  %i.l = zext i32 %i.b to i64
  %i.m = mul nuw i64 %i.k, %i.l                   ; 2 uses
  %i.n = lshr i64 %i.m, 32
  %i.o = trunc nuw i64 %i.n to i32                ; 2 uses
  %i.p = trunc i64 %i.m to i32                    ; 2 uses
  %i.q = sub i32 %1, %2
  %i.r = icmp ult i32 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit"

bb.d:                                             ; preds = %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i
  %i.s = icmp eq i64 %i.g, 63
  br i1 %i.s, label %bb.e, label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN11rand_chacha4guts11refill_wide17h810ff6e362183b46E(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.t, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0)
  br label %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i

_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi i64 [ %i.j, %bb.d ], [ 0, %bb.e ]    ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !9469, !noundef !25
  %i.x = add nuw nsw i64 %i.u, 1
  store i64 %i.x, ptr %i.c, align 16, !alias.scope !9469
  %i.y = tail call i32 @llvm.umulh.i32(i32 %i.w, i32 %i.b)
  %i.z = xor i32 %i.p, -1
  %.not11.i.i.i = icmp ugt i32 %i.y, %i.z
  %i.aa = zext i1 %.not11.i.i.i to i32
  %i.ab = add nuw i32 %i.aa, %i.o
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h5608f5975910b17bE.exit": ; preds = %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i, %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i
  %.sroa.04.0.i.i.i = phi i32 [ %i.ab, %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit13.i.i.i ], [ %i.o, %_ZN4rand3rng3Rng6random17h789e5d4b799b53a8E.exit12.i.i.i ]
  %i.ac = add i32 %.sroa.04.0.i.i.i, %1
  ret i32 %i.ac

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @784, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ag, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef float @_ZN4rand3rng3Rng12random_range17ha87417ecab203941E(ptr noalias noundef align 16 dereferenceable(320) %0, float noundef %1, float noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9484 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = fcmp uge float %1, %2
  br i1 %i.c, label %bb.e, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.d = fsub float %2, %1                        ; 2 uses
  %i.e = tail call float @llvm.fabs.f32(float %i.d)
  %i.f = fcmp ueq float %i.e, +inf
  br i1 %i.f, label %"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit.thread", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.h = load i64, ptr %i.g, align 16, !alias.scope !9485, !noundef !25 ; 2 uses
  %i.i = icmp ugt i64 %i.h, 63
  br i1 %i.i, label %bb.d, label %"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit"

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @_ZN11rand_chacha4guts11refill_wide17h810ff6e362183b46E(ptr noalias noundef nonnull align 16 dereferenceable(48) %i.j, i32 noundef 6, ptr noalias noundef nonnull align 16 dereferenceable(320) %0)
  br label %"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit"

"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit": ; preds = %bb.c, %bb.d
  %i.k = phi i64 [ %i.h, %bb.c ], [ 0, %bb.d ]    ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !alias.scope !9485, !noundef !25
  %i.n = add nuw nsw i64 %i.k, 1
  store i64 %i.n, ptr %i.g, align 16, !alias.scope !9485
  %i.o = lshr i32 %i.m, 9
  %i.p = or disjoint i32 %i.o, 1065353216
  %i.q = bitcast i32 %i.p to float
  %i.r = fadd nnan float %i.q, -1.000000e+00
  %i.s = fmul float %i.d, %i.r
  %i.t = fadd float %1, %i.s
  ret float %i.t

"_ZN95_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$rand..distr..uniform..SampleRange$LT$T$GT$$GT$13sample_single17h51ea87c0fb62572dE.exit.thread": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9486
  store i8 1, ptr %i.a, align 1, !noalias !9486
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @768, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @772, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #39
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @784, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.x, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h76828c3a4326c5e6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9493 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9494
  store ptr @376, ptr %i.a, align 8, !noalias !9494
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 6, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !9494
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 4, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !9494
  call void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h12bb111ace18b312E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9494
  %i.c = load i64, ptr %i.b, align 8, !range !27, !noundef !25
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.216.0.copyload = load i64, ptr %.sroa.216.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.015.0.copyload = load i64, ptr %i.e, align 8
  switch i64 %.sroa.015.0.copyload, label %bb.e [
    i64 0, label %bb.h
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %bb.a
  %.sroa.013.0.copyload = load ptr, ptr %i.e, align 8, !nonnull !25, !noundef !25
  %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.514.sroa.5.0.copyload = load i64, ptr %.sroa.514.sroa.5.0..sroa.514.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.514.sroa.6.0.copyload = load i64, ptr %.sroa.514.sroa.6.0..sroa.514.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = inttoptr i64 %.sroa.514.sroa.5.0.copyload to ptr
  %i.g = icmp ne i64 %.sroa.514.sroa.5.0.copyload, 0
  call void @llvm.assume(i1 %i.g)
  store ptr %.sroa.013.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.216.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.514.sroa.6.0.copyload, ptr %.sroa.612.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  ret void

bb.e:                                             ; preds = %bb.b
  unreachable

bb.f:                                             ; preds = %bb.b
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.518.sroa.3.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.518.sroa.0.0.copyload = load i64, ptr %.sroa.518.0..sroa_idx, align 8
  %i.i = inttoptr i64 %.sroa.518.sroa.0.0.copyload to ptr
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.g, %bb.f
  %.sroa.524.0 = phi i64 [ %.sroa.518.sroa.3.0.copyload, %bb.g ], [ 58, %bb.f ], [ 57, %bb.b ]
  %.sroa.522.0 = phi ptr [ %i.i, %bb.g ], [ undef, %bb.f ], [ undef, %bb.b ]
  %.sroa.020.0 = phi i64 [ %.sroa.216.0.copyload, %bb.g ], [ undef, %bb.f ], [ %.sroa.216.0.copyload, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.020.0, ptr %i.j, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.522.0, ptr %.sroa.253.0..sroa_idx, align 8
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.524.0, ptr %.sroa.354.0..sroa_idx, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17hd74ce9d5b5cb83bbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !9533 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [40 x i8], align 8                ; 12 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [40 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9534
  store ptr @87, ptr %i.g, align 8, !noalias !9534
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !9534
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr @87, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9534
  %.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store i64 1, ptr %.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !9534
  %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr @87, ptr %.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !9534
  %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 1, ptr %.sroa.0.sroa.5.sroa.6.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !9534
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store ptr @377, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !9534
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  store i64 6, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9534
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9535
  call void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h25c07d9a8ac56976E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3), !noalias !9536
  %i.h = load i64, ptr %i.f, align 8, !range !51, !noalias !9535, !noundef !25 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !9535 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !9535 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !9535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9535
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9535
  %.val.i.i = load ptr, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !9534, !nonnull !25, !align !34, !noundef !25
  %.val6.i.i = load i64, ptr %.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !9534, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9537
  call void @llvm.experimental.noalias.scope.decl(metadata !9538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9539
  store ptr %.val.i.i, ptr %i.c, align 8, !noalias !9539
  %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.val6.i.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !9539
  %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 4, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !9539
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !9539
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !9539
  call void @"_ZN52_$LT$F$u20$as$u20$nom..internal..Parser$LT$I$GT$$GT$7process17h12bb111ace18b312E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.l), !noalias !9540
  %i.m = load i64, ptr %i.d, align 8, !range !27, !alias.scope !9541, !noalias !9537, !noundef !25
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noalias !9537 ; 3 uses
  br i1 %i.n, label %bb.d, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  %.sroa.540.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.540.0.copyload.i.pre.i.i = load i64, ptr %.sroa.540.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !noalias !9537
  %.sroa.641.0..sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.641.sroa.0.0.copyload.i.pre.i.i = load ptr, ptr %.sroa.641.0..sroa_idx.i.phi.trans.insert.i.i, align 8, !noalias !9537
  %.sroa.641.sroa.5.0..sroa.641.0..sroa_idx.sroa_idx.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.641.sroa.5.0.copyload.i.pre.i.i = load i64, ptr %.sroa.641.sroa.5.0..sroa.641.0..sroa_idx.sroa_idx.i.phi.trans.insert.i.i, align 8, !noalias !9537
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %.val.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !9542, !noalias !9539, !nonnull !25, !align !34, !noundef !25
  %.val6.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !9542, !noalias !9539, !noundef !25
  %i.r = ptrtoint ptr %i.j to i64
  br label %bb.f

.thread:                                          ; preds = %bb.d
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9539
  %.sroa.222.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.222.0.copyload.i.i.i = load i64, ptr %.sroa.222.0..sroa_idx.i.i.i, align 8, !noalias !9537
  %.sroa.524.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9537
  %.sroa.524.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !9537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9537
  %i.s = ptrtoint ptr %.sroa.524.sroa.0.0.copyload.i.i.i to i64
  br label %_ZN4core3ops8function5FnMut8call_mut17hed83567131804448E.exit.thread

end_hunk_1
