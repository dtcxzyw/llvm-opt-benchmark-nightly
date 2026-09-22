Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.3?download=true
inline.NumInlined: 164
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform:bb.a
bb.w:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %.not.i47 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i47, label %bb.x, label %.preheader.split.i48, !prof !4

.preheader.split.i48:                             ; preds = %bb.w
  %i.jh = icmp ult i64 %i.fb, %i.fe
  br i1 %i.jh, label %.lr.ph.i49.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i49.preheader:                             ; preds = %.preheader.split.i48
  %i.ji = shl nuw nsw i64 %..i28, 2
  %i.jj = shl i64 %..i, 2
  %i.jk = xor i64 %i.jj, -1
  %i.jl = add i64 %i.ji, %i.jk
  %.reass4579 = add i64 %i.fb, %invariant.op4578
  %i.jm = call i64 @llvm.umax.i64(i64 %2, i64 %.reass4579)
  %.reass4581 = add i64 %i.jm, %invariant.op4580
  %i.jn = sub i64 %.reass4581, %i.fb
  %i.jo = call i64 @llvm.umin.i64(i64 %i.jl, i64 %i.jn)
  %i.jp = add i64 %i.jo, 1                        ; 3 uses
  %min.iters.check3097 = icmp ult i64 %i.jp, 17
  br i1 %min.iters.check3097, label %.lr.ph.i49.preheader3219, label %vector.memcheck3083

.lr.ph.i49.preheader3219:                         ; preds = %vector.body3100, %vector.memcheck3083, %.lr.ph.i49.preheader
  %.sroa.0.09.i50.ph = phi i64 [ %i.fb, %vector.memcheck3083 ], [ %i.fb, %.lr.ph.i49.preheader ], [ %i.kb, %vector.body3100 ]
  br label %.lr.ph.i49

vector.memcheck3083:                              ; preds = %.lr.ph.i49.preheader
  %scevgep3084 = getelementptr i8, ptr %1, i64 %i.fb
  %i.jq = shl nuw nsw i64 %..i28, 2
  %i.jr = shl i64 %..i, 2
  %i.js = xor i64 %i.jr, -1
  %i.jt = add i64 %i.jq, %i.js
  %i.ju = add i64 %i.dv, %i.fb
  %umax3086 = call i64 @llvm.umax.i64(i64 %2, i64 %i.ju)
  %i.jv = add i64 %i.du, %umax3086
  %i.jw = sub i64 %i.jv, %i.fb
  %umin3087 = call i64 @llvm.umin.i64(i64 %i.jt, i64 %i.jw)
  %i.jx = add i64 %umin3087, %i.fb                ; 2 uses
  %scevgep3088 = getelementptr i8, ptr %scevgep3085, i64 %i.jx
  %scevgep3090 = getelementptr i8, ptr %scevgep3089, i64 %i.fb
  %scevgep3092 = getelementptr i8, ptr %scevgep3091, i64 %i.jx
  %bound03093 = icmp ult ptr %scevgep3084, %scevgep3092
  %bound13094 = icmp ult ptr %scevgep3090, %scevgep3088
  %found.conflict3095 = and i1 %bound03093, %bound13094
  br i1 %found.conflict3095, label %.lr.ph.i49.preheader3219, label %vector.ph3098

vector.ph3098:                                    ; preds = %vector.memcheck3083
  %i.jy = and i64 %i.jp, 15                       ; 2 uses
  %i.jz = icmp eq i64 %i.jy, 0
  %i.ka = select i1 %i.jz, i64 16, i64 %i.jy
  %n.vec3099 = sub i64 %i.jp, %i.ka               ; 2 uses
  %i.kb = add i64 %i.fb, %n.vec3099
  br label %vector.body3100

vector.body3100:                                  ; preds = %vector.body3100, %vector.ph3098
  %index3101 = phi i64 [ 0, %vector.ph3098 ], [ %index.next3104, %vector.body3100 ] ; 2 uses
  %i.kc = add i64 %i.fb, %index3101               ; 2 uses
  %i.kd = sub i64 %i.kc, %i.bf
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 %i.kc ; 2 uses
  %wide.load3102 = load <16 x i8>, ptr %i.ke, align 1, !alias.scope !262, !noalias !263
  %i.kf = getelementptr i8, ptr %1, i64 %i.kd
  %i.kg = getelementptr i8, ptr %i.kf, i64 -4
  %wide.load3103 = load <16 x i8>, ptr %i.kg, align 1, !alias.scope !264
  %i.kh = add <16 x i8> %wide.load3103, %wide.load3102
  store <16 x i8> %i.kh, ptr %i.ke, align 1, !alias.scope !262, !noalias !263
  %index.next3104 = add nuw i64 %index3101, 16    ; 2 uses
  %i.ki = icmp eq i64 %index.next3104, %n.vec3099
  br i1 %i.ki, label %.lr.ph.i49.preheader3219, label %vector.body3100, !llvm.loop !57

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #14, !noalias !261
  unreachable

.lr.ph.i49:                                       ; preds = %.lr.ph.i49.preheader3219, %bb.z
  %.sroa.0.09.i50 = phi i64 [ %i.kp, %bb.z ], [ %.sroa.0.09.i50.ph, %.lr.ph.i49.preheader3219 ] ; 3 uses
  %.reass.reass.i52.reass.reass.reass = add i64 %.sroa.0.09.i50, %invariant.op4567 ; 3 uses
  %i.kj = icmp ult i64 %.reass.reass.i52.reass.reass.reass, %2
  br i1 %i.kj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i49
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass.reass.i52.reass.reass.reass, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #14, !noalias !261
  unreachable

bb.z:                                             ; preds = %.lr.ph.i49
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.09.i50 ; 2 uses
  %i.kl = load i8, ptr %i.kk, align 1, !alias.scope !261, !noundef !5
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 %.reass.reass.i52.reass.reass.reass
  %i.kn = load i8, ptr %i.km, align 1, !alias.scope !261, !noundef !5
  %i.ko = add i8 %i.kn, %i.kl
  store i8 %i.ko, ptr %i.kk, align 1, !alias.scope !261
  %i.kp = add i64 %.sroa.0.09.i50, 1              ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.kp, %i.fe
  br i1 %exitcond.not.i53, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i49, !llvm.loop !58

bb.aa:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.not.i54 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i54, label %bb.ad, label %bb.ab, !prof !6

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i = icmp ugt i64 %i.fb, %i.fe
  br i1 %.not.i.i, label %bb.ac, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #14, !noalias !266
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ab
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb ; 3 uses
  %i.kr = sub nuw nsw i64 %i.fe, %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !265
  %i.ks = add nsw i64 %i.fb, -4                   ; 2 uses
  %i.kt = icmp eq i64 %i.fb, 0
  br i1 %i.kt, label %bb.ae, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i, !prof !4

bb.ad:                                            ; preds = %bb.aa
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fe, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #14, !noalias !265
  unreachable

bb.ae:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ks, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #14, !noalias !265
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %i.ks
  %.sroa.01.0.copyload.i = load i32, ptr %i.ku, align 1, !alias.scope !265
  store i32 %.sroa.01.0.copyload.i, ptr %i.an, align 4, !noalias !265
  %i.kv = sub nsw i64 %i.fb, %i.bf                ; 3 uses
  %i.kw = add i64 %i.kv, 4                        ; 4 uses
  %i.kx = icmp ugt i64 %i.kw, %i.fb
  br i1 %i.kx, label %bb.ag, label %bb.af, !prof !4

bb.af:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  %i.ky = icmp samesign ugt i64 %i.bf, %i.fb
  br i1 %i.ky, label %bb.ai, label %bb.ah, !prof !4

bb.ag:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kw, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #14, !noalias !265
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.kz = getelementptr inbounds nuw i8, ptr %1, i64 %i.kw
  %i.la = sub nuw nsw i64 %i.fb, %i.kw
  %i.lb = getelementptr inbounds nuw i8, ptr %1, i64 %i.kv
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !267
  store ptr %i.lc, ptr %i.al, align 8, !noalias !268
  store i64 0, ptr %.sroa.429.0..sroa_idx.i, align 8, !noalias !268
  store ptr %i.kq, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !268
  store i64 %i.kr, ptr %.sroa.630.0..sroa_idx.i, align 8, !noalias !268
  store i64 4, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !267
  store ptr %i.kz, ptr %i.ak, align 8, !alias.scope !269, !noalias !270
  store i64 %i.la, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store ptr %i.kq, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store i64 0, ptr %.sroa.634.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  store i64 4, ptr %.sroa.735.0..sroa_idx.i, align 8, !alias.scope !269, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !271
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ak), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !267
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !271
  store ptr %i.lb, ptr %i.ai, align 8, !alias.scope !272, !noalias !273
  store i64 %i.bf, ptr %.sroa.437.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store ptr %i.kq, ptr %.sroa.538.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store i64 0, ptr %.sroa.639.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  store i64 4, ptr %.sroa.740.0..sroa_idx.i, align 8, !alias.scope !272, !noalias !273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !265
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !271
  %i.ld = load i64, ptr %i.dh, align 8, !alias.scope !274, !noalias !275, !noundef !5 ; 2 uses
  %i.le = load i64, ptr %i.di, align 8, !alias.scope !274, !noalias !275, !noundef !5
  %i.lf = icmp ult i64 %i.ld, %i.le
  br i1 %i.lf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.ai:                                            ; preds = %bb.af
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.kv, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #14, !noalias !265
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.ah, %bb.bg
  %i.lg = phi i64 [ %i.of, %bb.bg ], [ %i.ld, %bb.ah ] ; 3 uses
  %i.lh = add nuw i64 %i.lg, 1
  store i64 %i.lh, ptr %i.dh, align 8, !alias.scope !274, !noalias !275
  %i.li = load i64, ptr %i.dj, align 8, !alias.scope !276, !noalias !277, !noundef !5
  %i.lj = add i64 %i.li, %i.lg                    ; 2 uses
  %i.lk = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.am, i64 noundef %i.lj), !noalias !278 ; 2 uses
  %i.ll = extractvalue { ptr, i64 } %i.lk, 0      ; 6 uses
  %i.lm = extractvalue { ptr, i64 } %i.lk, 1      ; 5 uses
  %i.ln = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dk, i64 noundef %i.lj), !noalias !278 ; 2 uses
  %i.lo = extractvalue { ptr, i64 } %i.ln, 0      ; 5 uses
  %i.lp = extractvalue { ptr, i64 } %i.ln, 1      ; 4 uses
  %i.lq = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.dl, i64 noundef %i.lg), !noalias !279 ; 2 uses
  %i.lr = extractvalue { ptr, i64 } %i.lq, 0      ; 5 uses
  %i.ls = extractvalue { ptr, i64 } %i.lq, 1      ; 4 uses
  %.not18.i = icmp eq ptr %i.ll, null
  br i1 %.not18.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit, label %bb.aj

bb.aj:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lo) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lr) ]
  %.not19.i = icmp eq i64 %i.lm, 0
  br i1 %.not19.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lt = load i8, ptr %i.ll, align 1, !noundef !5
  %.not20.i = icmp eq i64 %i.lp, 0
  br i1 %.not20.i, label %bb.an, label %bb.am

bb.al:                                            ; preds = %bb.aj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #14
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.not21.i = icmp eq i64 %i.ls, 0
  br i1 %.not21.i, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.ak
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #14
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.lu = load i8, ptr %i.an, align 4, !noalias !265, !noundef !5 ; 2 uses
  %i.lv = load i8, ptr %i.lo, align 1, !noundef !5 ; 2 uses
  %i.lw = and i8 %i.lv, %i.lu
  %i.lx = xor i8 %i.lv, %i.lu
  %i.ly = lshr i8 %i.lx, 1
  %i.lz = add i8 %i.ly, %i.lw                     ; 2 uses
  %i.ma = load i8, ptr %i.lr, align 1, !noundef !5 ; 2 uses
  %i.mb = and i8 %i.lz, %i.ma
  %i.mc = xor i8 %i.lz, %i.ma
  %i.md = lshr i8 %i.mc, 1
  %i.me = add i8 %i.mb, %i.lt
  %i.mf = add i8 %i.me, %i.md
  %.not22.i = icmp eq i64 %i.lm, 1
  br i1 %.not22.i, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #14
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ll, i64 1
  %i.mh = load i8, ptr %i.mg, align 1, !noundef !5
  %.not23.i = icmp eq i64 %i.lp, 1
  br i1 %.not23.i, label %bb.at, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #14
  unreachable

bb.as:                                            ; preds = %bb.aq
  %.not24.i = icmp eq i64 %i.ls, 1
  br i1 %.not24.i, label %bb.av, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #14
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.mi = load i8, ptr %i.dm, align 1, !noalias !265, !noundef !5 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lo, i64 1
  %i.mk = load i8, ptr %i.mj, align 1, !noundef !5 ; 2 uses
  %i.ml = and i8 %i.mk, %i.mi
  %i.mm = xor i8 %i.mk, %i.mi
  %i.mn = lshr i8 %i.mm, 1
  %i.mo = add i8 %i.mn, %i.ml                     ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lr, i64 1
  %i.mq = load i8, ptr %i.mp, align 1, !noundef !5 ; 2 uses
  %i.mr = and i8 %i.mo, %i.mq
  %i.ms = xor i8 %i.mo, %i.mq
  %i.mt = lshr i8 %i.ms, 1
  %i.mu = add i8 %i.mr, %i.mh
  %i.mv = add i8 %i.mu, %i.mt
  %i.mw = icmp ugt i64 %i.lm, 2
  br i1 %i.mw, label %bb.aw, label %bb.ax

bb.av:                                            ; preds = %bb.as
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #14
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  %i.my = load i8, ptr %i.mx, align 1, !noundef !5
  %i.mz = icmp ugt i64 %i.lp, 2
  br i1 %i.mz, label %bb.ay, label %bb.az

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #14
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.na = icmp ugt i64 %i.ls, 2
  br i1 %i.na, label %bb.ba, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #14
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.nb = load i8, ptr %i.dn, align 2, !noalias !265, !noundef !5 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.lo, i64 2
  %i.nd = load i8, ptr %i.nc, align 1, !noundef !5 ; 2 uses
  %i.ne = and i8 %i.nd, %i.nb
  %i.nf = xor i8 %i.nd, %i.nb
  %i.ng = lshr i8 %i.nf, 1
  %i.nh = add i8 %i.ng, %i.ne                     ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.lr, i64 2
  %i.nj = load i8, ptr %i.ni, align 1, !noundef !5 ; 2 uses
  %i.nk = and i8 %i.nh, %i.nj
  %i.nl = xor i8 %i.nh, %i.nj
  %i.nm = lshr i8 %i.nl, 1
  %i.nn = add i8 %i.nk, %i.my
  %i.no = add i8 %i.nn, %i.nm
  %.not25.i = icmp eq i64 %i.lm, 3
  br i1 %.not25.i, label %bb.bd, label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #14
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.np = getelementptr inbounds nuw i8, ptr %i.ll, i64 3
  %i.nq = load i8, ptr %i.np, align 1, !noundef !5
  %.not26.i = icmp eq i64 %i.lp, 3
  br i1 %.not26.i, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.ba
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #14
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.not27.i = icmp eq i64 %i.ls, 3
  br i1 %.not27.i, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #14
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.nr = load i8, ptr %i.do, align 1, !noalias !265, !noundef !5 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lo, i64 3
  %i.nt = load i8, ptr %i.ns, align 1, !noundef !5 ; 2 uses
  %i.nu = and i8 %i.nt, %i.nr
  %i.nv = xor i8 %i.nt, %i.nr
  %i.nw = lshr i8 %i.nv, 1
  %i.nx = add i8 %i.nw, %i.nu                     ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.lr, i64 3
  %i.nz = load i8, ptr %i.ny, align 1, !noundef !5 ; 2 uses
  %i.oa = and i8 %i.nx, %i.nz
  %i.ob = xor i8 %i.nx, %i.nz
  %i.oc = lshr i8 %i.ob, 1
  %i.od = add i8 %i.oa, %i.nq
  %i.oe = add i8 %i.od, %i.oc
  store i8 %i.mf, ptr %i.an, align 4, !noalias !265
  store i8 %i.mv, ptr %i.dm, align 1, !noalias !265
  store i8 %i.no, ptr %i.dn, align 2, !noalias !265
  store i8 %i.oe, ptr %i.do, align 1, !noalias !265
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.ll, i64 noundef %i.lm, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51)
  %i.of = load i64, ptr %i.dh, align 8, !alias.scope !274, !noalias !275, !noundef !5 ; 2 uses
  %i.og = load i64, ptr %i.di, align 8, !alias.scope !274, !noalias !275, !noundef !5
  %i.oh = icmp ult i64 %i.of, %i.og
  br i1 %i.oh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit

bb.bh:                                            ; preds = %bb.be
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_5.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i, %bb.bg, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !265
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.bi:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %.not.i55 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i55, label %bb.bj, label %.preheader.split.i56, !prof !4

.preheader.split.i56:                             ; preds = %bb.bi
  %i.oi = icmp ult i64 %i.fb, %i.fe
  br i1 %i.oi, label %.lr.ph.i57.preheader, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

.lr.ph.i57.preheader:                             ; preds = %.preheader.split.i56
  %i.oj = shl nuw nsw i64 %..i28, 2
  %i.ok = shl i64 %..i, 2
  %i.ol = xor i64 %i.ok, -1
  %i.om = add i64 %i.oj, %i.ol
  %i.on = add i64 %i.fb, -4                       ; 2 uses
  %i.oo = sub i64 %i.on, %i.bf
  %i.op = call i64 @llvm.umax.i64(i64 %2, i64 %i.oo)
  %.reass4577 = add i64 %i.op, %invariant.op4576
  %i.oq = sub i64 %.reass4577, %i.fb
  %i.or = call i64 @llvm.umax.i64(i64 %2, i64 %i.on)
  %i.os = add i64 %i.or, 4
  %i.ot = sub i64 %i.os, %i.fb
  %i.ou = call i64 @llvm.umin.i64(i64 %i.oq, i64 %i.ot)
  %i.ov = call i64 @llvm.umin.i64(i64 %i.om, i64 %i.ou)
  %i.ow = add i64 %i.ov, 1                        ; 3 uses
  %min.iters.check3130 = icmp ult i64 %i.ow, 9
  br i1 %min.iters.check3130, label %.lr.ph.i57.preheader3221, label %vector.memcheck3107

end_hunk_0
begin_hunk_1_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform:bb.a
  %found.conflict3195 = and i1 %bound03193, %bound13194
  %conflict.rdx3196 = or i1 %found.conflict3192, %found.conflict3195
  br i1 %conflict.rdx3196, label %.lr.ph.i80.preheader3225, label %vector.ph3199

vector.ph3199:                                    ; preds = %vector.memcheck3174
  %i.yi = and i64 %i.xw, 15                       ; 2 uses
  %i.yj = icmp eq i64 %i.yi, 0
  %i.yk = select i1 %i.yj, i64 16, i64 %i.yi
  %n.vec3200 = sub i64 %i.xw, %i.yk               ; 2 uses
  %i.yl = add i64 %i.fb, %n.vec3200
  br label %vector.body3201

vector.body3201:                                  ; preds = %vector.body3201, %vector.ph3199
  %index3202 = phi i64 [ 0, %vector.ph3199 ], [ %index.next3206, %vector.body3201 ] ; 2 uses
  %i.ym = add i64 %i.fb, %index3202               ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %1, i64 %i.ym ; 2 uses
  %wide.load3203 = load <16 x i8>, ptr %i.yn, align 1, !alias.scope !308, !noalias !309
  %i.yo = sub nsw i64 %i.ym, %i.bf                ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 %i.yo
  %wide.load3204 = load <16 x i8>, ptr %i.yp, align 1, !alias.scope !310
  %i.yq = zext <16 x i8> %wide.load3204 to <16 x i16>
  %i.yr = getelementptr inbounds nuw i8, ptr %1, i64 %i.yo
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 4
  %wide.load3205 = load <16 x i8>, ptr %i.ys, align 1, !alias.scope !311
  %i.yt = zext <16 x i8> %wide.load3205 to <16 x i16>
  %i.yu = add nuw nsw <16 x i16> %i.yt, %i.yq
  %i.yv = lshr <16 x i16> %i.yu, splat (i16 1)
  %i.yw = trunc nuw <16 x i16> %i.yv to <16 x i8>
  %i.yx = add <16 x i8> %wide.load3203, %i.yw
  store <16 x i8> %i.yx, ptr %i.yn, align 1, !alias.scope !308, !noalias !309
  %index.next3206 = add nuw i64 %index3202, 16    ; 2 uses
  %i.yy = icmp eq i64 %index.next3206, %n.vec3200
  br i1 %i.yy, label %.lr.ph.i80.preheader3225, label %vector.body3201, !llvm.loop !134

bb.dk:                                            ; preds = %bb.dj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #14, !noalias !307
  unreachable

.lr.ph.i80:                                       ; preds = %.lr.ph.i80.preheader3225, %bb.do
  %.sroa.0.015.i81 = phi i64 [ %i.zp, %bb.do ], [ %.sroa.0.015.i81.ph, %.lr.ph.i80.preheader3225 ] ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.015.i81 ; 2 uses
  %i.za = load i8, ptr %i.yz, align 1, !alias.scope !307, !noundef !5
  %i.zb = sub nsw i64 %.sroa.0.015.i81, %i.bf     ; 4 uses
  %i.zc = icmp ult i64 %i.zb, %2
  br i1 %i.zc, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph.i80
  %i.zd = add nuw i64 %i.zb, 4                    ; 3 uses
  %i.ze = icmp ult i64 %i.zd, %2
  br i1 %i.ze, label %bb.do, label %bb.dn

bb.dm:                                            ; preds = %.lr.ph.i80
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.zb, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #14, !noalias !307
  unreachable

bb.dn:                                            ; preds = %bb.dl
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.zd, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @86) #14, !noalias !307
  unreachable

bb.do:                                            ; preds = %bb.dl
  %i.zf = getelementptr inbounds nuw i8, ptr %1, i64 %i.zb
  %i.zg = load i8, ptr %i.zf, align 1, !alias.scope !307, !noundef !5
  %i.zh = zext i8 %i.zg to i16
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 %i.zd
  %i.zj = load i8, ptr %i.zi, align 1, !alias.scope !307, !noundef !5
  %i.zk = zext i8 %i.zj to i16
  %i.zl = add nuw nsw i16 %i.zk, %i.zh
  %i.zm = lshr i16 %i.zl, 1
  %i.zn = trunc nuw i16 %i.zm to i8
  %i.zo = add i8 %i.za, %i.zn
  store i8 %i.zo, ptr %i.yz, align 1, !alias.scope !307
  %i.zp = add i64 %.sroa.0.015.i81, 1             ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.zp, %i.fe
  br i1 %exitcond.not.i82, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit, label %.lr.ph.i80, !llvm.loop !135

bb.dp:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %.not.i83 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i83, label %bb.ds, label %bb.dq, !prof !6

bb.dq:                                            ; preds = %bb.dp
  %.not.i.i84 = icmp ugt i64 %i.fb, %i.fe
  br i1 %.not.i.i84, label %bb.dr, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85, !prof !4

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #14, !noalias !313
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85: ; preds = %bb.dq
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb ; 4 uses
  %i.zr = sub nuw nsw i64 %i.fe, %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !312
  %i.zs = add nsw i64 %i.fb, -4                   ; 2 uses
  %i.zt = icmp eq i64 %i.fb, 0
  br i1 %i.zt, label %bb.dt, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86, !prof !4

bb.ds:                                            ; preds = %bb.dp
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fe, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #14
  unreachable

bb.dt:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zs, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #14
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i85
  %i.zu = getelementptr inbounds nuw i8, ptr %1, i64 %i.zs
  %.sroa.01.0.copyload.i87 = load i32, ptr %i.zu, align 1, !alias.scope !312
  store i32 %.sroa.01.0.copyload.i87, ptr %i.z, align 4, !noalias !312
  %i.zv = sub nsw i64 %i.fb, %i.bf                ; 4 uses
  %i.zw = add nsw i64 %i.zv, -4                   ; 4 uses
  %i.zx = icmp ugt i64 %i.zw, %i.fb
  br i1 %i.zx, label %bb.dv, label %bb.du, !prof !4

bb.du:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  %i.zy = add nuw i64 %i.zv, 4                    ; 3 uses
  %.not157 = icmp ult i64 %i.zv, %i.fb
  br i1 %.not157, label %bb.dw, label %bb.dx, !prof !7

bb.dv:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i86
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zw, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #14
  unreachable

bb.dw:                                            ; preds = %bb.du
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 %i.zw
  %i.aaa = sub nuw nsw i64 %i.fb, %i.zw
  %i.aab = getelementptr inbounds nuw i8, ptr %1, i64 %i.zv
  %i.aac = sub nuw nsw i64 %i.fb, %i.zy
  %i.aad = getelementptr inbounds nuw i8, ptr %1, i64 %i.zy
  %i.aae = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !314
  store ptr %i.aae, ptr %i.w, align 8, !noalias !315
  store i64 0, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !315
  store ptr %i.zq, ptr %.sroa.5.0..sroa_idx.i88, align 8, !noalias !315
  store i64 %i.zr, ptr %.sroa.637.0..sroa_idx.i, align 8, !noalias !315
  store i64 4, ptr %.sroa.7.0..sroa_idx.i89, align 8, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !314
  store ptr %i.zz, ptr %i.v, align 8, !alias.scope !316, !noalias !317
  store i64 %i.aaa, ptr %.sroa.439.0..sroa_idx.i, align 8, !alias.scope !316, !noalias !317
  store ptr %i.zq, ptr %.sroa.540.0..sroa_idx.i, align 8, !alias.scope !316, !noalias !317
  store i64 0, ptr %.sroa.641.0..sroa_idx.i, align 8, !alias.scope !316, !noalias !317
  store i64 4, ptr %.sroa.742.0..sroa_idx.i, align 8, !alias.scope !316, !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !318
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.v), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !314
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !318
  store ptr %i.aab, ptr %i.t, align 8, !alias.scope !319, !noalias !320
  store i64 %i.bf, ptr %.sroa.444.0..sroa_idx.i, align 8, !alias.scope !319, !noalias !320
  store ptr %i.zq, ptr %.sroa.545.0..sroa_idx.i, align 8, !alias.scope !319, !noalias !320
  store i64 0, ptr %.sroa.646.0..sroa_idx.i, align 8, !alias.scope !319, !noalias !320
  store i64 4, ptr %.sroa.747.0..sroa_idx.i, align 8, !alias.scope !319, !noalias !320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !321
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.t), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !321
  store ptr %i.aad, ptr %i.r, align 8, !alias.scope !322, !noalias !323
  store i64 %i.aac, ptr %.sroa.449.0..sroa_idx.i, align 8, !alias.scope !322, !noalias !323
  store ptr %i.zq, ptr %.sroa.550.0..sroa_idx.i, align 8, !alias.scope !322, !noalias !323
  store i64 0, ptr %.sroa.651.0..sroa_idx.i, align 8, !alias.scope !322, !noalias !323
  store i64 4, ptr %.sroa.752.0..sroa_idx.i, align 8, !alias.scope !322, !noalias !323
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(none) dereferenceable(208) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.r), !noalias !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.x, ptr noundef nonnull align 8 dereferenceable(208) %i.y, i64 208, i1 false), !noalias !312
  %i.aaf = load i64, ptr %i.co, align 8, !alias.scope !325, !noalias !326, !noundef !5 ; 2 uses
  %i.aag = load i64, ptr %i.cp, align 8, !alias.scope !325, !noalias !326, !noundef !5
  %i.aah = icmp ult i64 %i.aaf, %i.aag
  br i1 %i.aah, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit

bb.dx:                                            ; preds = %bb.du
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.zy, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @105) #14
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i: ; preds = %bb.dw, %bb.fd
  %i.aai = phi i64 [ %i.aeg, %bb.fd ], [ %i.aaf, %bb.dw ] ; 3 uses
  %i.aaj = add nuw i64 %i.aai, 1
  store i64 %i.aaj, ptr %i.co, align 8, !alias.scope !325, !noalias !326
  %i.aak = load i64, ptr %i.cq, align 8, !alias.scope !327, !noalias !328, !noundef !5
  %i.aal = add i64 %i.aak, %i.aai                 ; 2 uses
  %i.aam = load i64, ptr %i.cr, align 8, !alias.scope !329, !noalias !330, !noundef !5
  %i.aan = add i64 %i.aam, %i.aal                 ; 2 uses
  %i.aao = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.x, i64 noundef %i.aan), !noalias !331 ; 2 uses
  %i.aap = extractvalue { ptr, i64 } %i.aao, 0    ; 6 uses
  %i.aaq = extractvalue { ptr, i64 } %i.aao, 1    ; 5 uses
  %i.aar = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cs, i64 noundef %i.aan), !noalias !331 ; 2 uses
  %i.aas = extractvalue { ptr, i64 } %i.aar, 0    ; 5 uses
  %i.aat = extractvalue { ptr, i64 } %i.aar, 1    ; 4 uses
  %i.aau = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ct, i64 noundef %i.aal), !noalias !332 ; 2 uses
  %i.aav = extractvalue { ptr, i64 } %i.aau, 0    ; 5 uses
  %i.aaw = extractvalue { ptr, i64 } %i.aau, 1    ; 4 uses
  %i.aax = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cu, i64 noundef %i.aai), !noalias !333 ; 2 uses
  %i.aay = extractvalue { ptr, i64 } %i.aax, 0    ; 5 uses
  %i.aaz = extractvalue { ptr, i64 } %i.aax, 1    ; 4 uses
  %.not22.i90 = icmp eq ptr %i.aap, null
  br i1 %.not22.i90, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_10.exit, label %bb.dy

bb.dy:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_IBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB17_11ChunksExacthEEB1H_EB1H_EINtB5_7ZipImplBW_B1H_E4nextCsksn9slvsHfS_10image_webp.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aas) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aav) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aay) ]
  %.not23.i91 = icmp eq i64 %i.aaq, 0
  br i1 %.not23.i91, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.aba = load i8, ptr %i.aap, align 1, !noundef !5
  %.not24.i92 = icmp eq i64 %i.aat, 0
  br i1 %.not24.i92, label %bb.ec, label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #14
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.abb = load i8, ptr %i.z, align 4, !noalias !312, !noundef !5
  %i.abc = load i8, ptr %i.aas, align 1, !noundef !5
  %i.abd = zext i8 %i.abb to i16
  %i.abe = zext i8 %i.abc to i16
  %i.abf = add nuw nsw i16 %i.abe, %i.abd
  %i.abg = lshr i16 %i.abf, 1
  %.not25.i93 = icmp eq i64 %i.aaw, 0
  br i1 %.not25.i93, label %bb.ee, label %bb.ed

bb.ec:                                            ; preds = %bb.dz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #14
  unreachable

bb.ed:                                            ; preds = %bb.eb
  %.not26.i94 = icmp eq i64 %i.aaz, 0
  br i1 %.not26.i94, label %bb.eg, label %bb.ef

bb.ee:                                            ; preds = %bb.eb
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #14
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.abh = load i8, ptr %i.aav, align 1, !noundef !5
  %i.abi = load i8, ptr %i.aay, align 1, !noundef !5
  %i.abj = zext i8 %i.abh to i16
  %i.abk = zext i8 %i.abi to i16
  %i.abl = add nuw nsw i16 %i.abk, %i.abj
  %i.abm = lshr i16 %i.abl, 1
  %i.abn = add nuw nsw i16 %i.abm, %i.abg
  %i.abo = lshr i16 %i.abn, 1
  %i.abp = trunc nuw i16 %i.abo to i8
  %i.abq = add i8 %i.aba, %i.abp
  %.not27.i95 = icmp eq i64 %i.aaq, 1
  br i1 %.not27.i95, label %bb.ei, label %bb.eh

bb.eg:                                            ; preds = %bb.ed
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #14
  unreachable

bb.eh:                                            ; preds = %bb.ef
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aap, i64 1
  %i.abs = load i8, ptr %i.abr, align 1, !noundef !5
  %.not28.i96 = icmp eq i64 %i.aat, 1
  br i1 %.not28.i96, label %bb.ek, label %bb.ej

bb.ei:                                            ; preds = %bb.ef
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #14
  unreachable

bb.ej:                                            ; preds = %bb.eh
  %i.abt = load i8, ptr %i.cv, align 1, !noalias !312, !noundef !5
  %i.abu = getelementptr inbounds nuw i8, ptr %i.aas, i64 1
  %i.abv = load i8, ptr %i.abu, align 1, !noundef !5
  %i.abw = zext i8 %i.abt to i16
  %i.abx = zext i8 %i.abv to i16
  %i.aby = add nuw nsw i16 %i.abx, %i.abw
  %i.abz = lshr i16 %i.aby, 1
  %.not29.i97 = icmp eq i64 %i.aaw, 1
  br i1 %.not29.i97, label %bb.em, label %bb.el

bb.ek:                                            ; preds = %bb.eh
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #14
  unreachable

bb.el:                                            ; preds = %bb.ej
  %.not30.i98 = icmp eq i64 %i.aaz, 1
  br i1 %.not30.i98, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.ej
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #14
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aav, i64 1
  %i.acb = load i8, ptr %i.aca, align 1, !noundef !5
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aay, i64 1
  %i.acd = load i8, ptr %i.acc, align 1, !noundef !5
  %i.ace = zext i8 %i.acb to i16
  %i.acf = zext i8 %i.acd to i16
  %i.acg = add nuw nsw i16 %i.acf, %i.ace
  %i.ach = lshr i16 %i.acg, 1
  %i.aci = add nuw nsw i16 %i.ach, %i.abz
  %i.acj = lshr i16 %i.aci, 1
  %i.ack = trunc nuw i16 %i.acj to i8
  %i.acl = add i8 %i.abs, %i.ack
  %i.acm = icmp ugt i64 %i.aaq, 2
  br i1 %i.acm, label %bb.ep, label %bb.eq

bb.eo:                                            ; preds = %bb.el
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @95) #14
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.acn = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  %i.aco = load i8, ptr %i.acn, align 1, !noundef !5
  %i.acp = icmp ugt i64 %i.aat, 2
  br i1 %i.acp, label %bb.er, label %bb.es

bb.eq:                                            ; preds = %bb.en
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #14
  unreachable

bb.er:                                            ; preds = %bb.ep
  %i.acq = load i8, ptr %i.cw, align 2, !noalias !312, !noundef !5
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aas, i64 2
  %i.acs = load i8, ptr %i.acr, align 1, !noundef !5
  %i.act = zext i8 %i.acq to i16
  %i.acu = zext i8 %i.acs to i16
  %i.acv = add nuw nsw i16 %i.acu, %i.act
  %i.acw = lshr i16 %i.acv, 1
  %i.acx = icmp ugt i64 %i.aaw, 2
  br i1 %i.acx, label %bb.et, label %bb.eu

bb.es:                                            ; preds = %bb.ep
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @97) #14
  unreachable

bb.et:                                            ; preds = %bb.er
  %i.acy = icmp ugt i64 %i.aaz, 2
  br i1 %i.acy, label %bb.ev, label %bb.ew

bb.eu:                                            ; preds = %bb.er
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #14
  unreachable

bb.ev:                                            ; preds = %bb.et
  %i.acz = getelementptr inbounds nuw i8, ptr %i.aav, i64 2
  %i.ada = load i8, ptr %i.acz, align 1, !noundef !5
  %i.adb = getelementptr inbounds nuw i8, ptr %i.aay, i64 2
  %i.adc = load i8, ptr %i.adb, align 1, !noundef !5
  %i.add = zext i8 %i.ada to i16
  %i.ade = zext i8 %i.adc to i16
  %i.adf = add nuw nsw i16 %i.ade, %i.add
  %i.adg = lshr i16 %i.adf, 1
  %i.adh = add nuw nsw i16 %i.adg, %i.acw
  %i.adi = lshr i16 %i.adh, 1
  %i.adj = trunc nuw i16 %i.adi to i8
  %i.adk = add i8 %i.aco, %i.adj
  %.not31.i99 = icmp eq i64 %i.aaq, 3
  br i1 %.not31.i99, label %bb.ey, label %bb.ex

bb.ew:                                            ; preds = %bb.et
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #14
  unreachable

bb.ex:                                            ; preds = %bb.ev
  %i.adl = getelementptr inbounds nuw i8, ptr %i.aap, i64 3
  %i.adm = load i8, ptr %i.adl, align 1, !noundef !5
  %.not32.i100 = icmp eq i64 %i.aat, 3
  br i1 %.not32.i100, label %bb.fa, label %bb.ez

bb.ey:                                            ; preds = %bb.ev
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @100) #14
  unreachable

bb.ez:                                            ; preds = %bb.ex
  %i.adn = load i8, ptr %i.cx, align 1, !noalias !312, !noundef !5
  %i.ado = getelementptr inbounds nuw i8, ptr %i.aas, i64 3
  %i.adp = load i8, ptr %i.ado, align 1, !noundef !5
  %i.adq = zext i8 %i.adn to i16
  %i.adr = zext i8 %i.adp to i16
  %i.ads = add nuw nsw i16 %i.adr, %i.adq
  %i.adt = lshr i16 %i.ads, 1
  %.not33.i101 = icmp eq i64 %i.aaw, 3
  br i1 %.not33.i101, label %bb.fc, label %bb.fb

bb.fa:                                            ; preds = %bb.ex
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #14
  unreachable

bb.fb:                                            ; preds = %bb.ez
  %.not34.i102 = icmp eq i64 %i.aaz, 3
  br i1 %.not34.i102, label %bb.fe, label %bb.fd

bb.fc:                                            ; preds = %bb.ez
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #14
  unreachable

bb.fd:                                            ; preds = %bb.fb
  %i.adu = getelementptr inbounds nuw i8, ptr %i.aav, i64 3
  %i.adv = load i8, ptr %i.adu, align 1, !noundef !5
  %i.adw = getelementptr inbounds nuw i8, ptr %i.aay, i64 3
  %i.adx = load i8, ptr %i.adw, align 1, !noundef !5
  %i.ady = zext i8 %i.adv to i16
  %i.adz = zext i8 %i.adx to i16
  %i.aea = add nuw nsw i16 %i.adz, %i.ady
  %i.aeb = lshr i16 %i.aea, 1
end_hunk_1
begin_hunk_2_@_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform25apply_predictor_transform:bb.a
bb.gc:                                            ; preds = %bb.ga
  %i.agl = getelementptr inbounds nuw i8, ptr %i.afg, i64 1
  %i.agm = load i8, ptr %i.agl, align 1, !noundef !5
  %i.agn = add i8 %i.agm, %i.afo
  %i.ago = icmp ugt i64 %i.afh, 2
  br i1 %i.ago, label %bb.ge, label %bb.gf

bb.gd:                                            ; preds = %bb.ga
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #14
  unreachable

bb.ge:                                            ; preds = %bb.gc
  %.not42.i = icmp eq i64 %i.afh, 3
  br i1 %.not42.i, label %bb.gh, label %bb.gg

bb.gf:                                            ; preds = %bb.gc
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @118) #14
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.agp = getelementptr inbounds nuw i8, ptr %i.afg, i64 2
  %i.agq = load i8, ptr %i.agp, align 1, !noundef !5
  %i.agr = add i8 %i.agq, %i.afs
  %i.ags = getelementptr inbounds nuw i8, ptr %i.afg, i64 3
  %i.agt = load i8, ptr %i.ags, align 1, !noundef !5
  %i.agu = add i8 %i.agt, %i.afv
  store i8 %i.agk, ptr %i.o, align 1, !noalias !334
  store i8 %i.agn, ptr %i.ci, align 1, !noalias !334
  store i8 %i.agr, ptr %i.cj, align 1, !noalias !334
  store i8 %i.agu, ptr %i.ck, align 1, !noalias !334
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.afg, i64 noundef %i.afh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !334
  br label %bb.gq

bb.gh:                                            ; preds = %bb.ge
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #14
  unreachable

bb.gi:                                            ; preds = %bb.fz
  %i.agv = load i8, ptr %i.afg, align 1, !noundef !5
  %i.agw = extractelement <4 x i8> %i.afa, i64 0
  %i.agx = add i8 %i.agv, %i.agw
  %.not44.i = icmp eq i64 %i.afh, 1
  br i1 %.not44.i, label %bb.gl, label %bb.gk

bb.gj:                                            ; preds = %bb.fz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #14
  unreachable

bb.gk:                                            ; preds = %bb.gi
  %i.agy = getelementptr inbounds nuw i8, ptr %i.afg, i64 1
  %i.agz = load i8, ptr %i.agy, align 1, !noundef !5
  %i.aha = extractelement <4 x i8> %i.afa, i64 1
  %i.ahb = add i8 %i.agz, %i.aha
  %i.ahc = icmp ugt i64 %i.afh, 2
  br i1 %i.ahc, label %bb.gm, label %bb.gn

bb.gl:                                            ; preds = %bb.gi
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #14
  unreachable

bb.gm:                                            ; preds = %bb.gk
  %.not45.i = icmp eq i64 %i.afh, 3
  br i1 %.not45.i, label %bb.gp, label %bb.go

bb.gn:                                            ; preds = %bb.gk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #14
  unreachable

bb.go:                                            ; preds = %bb.gm
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.afg, i64 2
  %i.ahe = load <2 x i8>, ptr %i.ahd, align 1
  %i.ahf = shufflevector <4 x i8> %i.afa, <4 x i8> poison, <2 x i32> <i32 2, i32 3>
  %i.ahg = add <2 x i8> %i.ahe, %i.ahf            ; 2 uses
  store i8 %i.agx, ptr %i.p, align 1, !noalias !334
  store i8 %i.ahb, ptr %i.cl, align 1, !noalias !334
  %i.ahh = extractelement <2 x i8> %i.ahg, i64 0
  store i8 %i.ahh, ptr %i.cm, align 1, !noalias !334
  %i.ahi = extractelement <2 x i8> %i.ahg, i64 1
  store i8 %i.ahi, ptr %i.cn, align 1, !noalias !334
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.afg, i64 noundef %i.afh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !334
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gm
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @124) #14
  unreachable

bb.gq:                                            ; preds = %bb.go, %bb.gg
  %i.ahj = load <4 x i8>, ptr %i.afg, align 1
  %i.ahk = load i64, ptr %i.cf, align 8, !alias.scope !340, !noalias !341, !noundef !5 ; 2 uses
  %i.ahl = load i64, ptr %i.cg, align 8, !alias.scope !340, !noalias !341, !noundef !5
  %i.ahm = icmp ult i64 %i.ahk, %i.ahl
  %i.ahn = insertelement <4 x i8> poison, i8 %i.afl, i64 0
  %i.aho = insertelement <4 x i8> %i.ahn, i8 %i.afo, i64 1
  %i.ahp = insertelement <4 x i8> %i.aho, i8 %i.afs, i64 2
  %i.ahq = insertelement <4 x i8> %i.ahp, i8 %i.afv, i64 3
  br i1 %i.ahm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i110, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_11.exit

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_11.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsksn9slvsHfS_10image_webp.exit.i110, %bb.gq, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !334
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.gr:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %.not.i113 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i113, label %bb.gu, label %bb.gs, !prof !6

bb.gs:                                            ; preds = %bb.gr
  %.not.i.i114 = icmp ugt i64 %i.fb, %i.fe
  br i1 %.not.i.i114, label %bb.gt, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i115, !prof !4

bb.gt:                                            ; preds = %bb.gs
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #14, !noalias !344
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i115: ; preds = %bb.gs
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb ; 3 uses
  %i.ahs = sub nuw nsw i64 %i.fe, %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !343
  %i.aht = add nsw i64 %i.fb, -4                  ; 2 uses
  %i.ahu = icmp eq i64 %i.fb, 0
  br i1 %i.ahu, label %bb.gv, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i116, !prof !4

bb.gu:                                            ; preds = %bb.gr
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fe, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @144) #14, !noalias !343
  unreachable

bb.gv:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i115
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.aht, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #14, !noalias !343
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i116: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i115
  %i.ahv = getelementptr inbounds nuw i8, ptr %1, i64 %i.aht
  %.sroa.01.0.copyload.i117 = load i32, ptr %i.ahv, align 1, !alias.scope !343
  store i32 %.sroa.01.0.copyload.i117, ptr %i.l, align 4, !noalias !343
  %i.ahw = sub nsw i64 %i.fb, %i.bf               ; 2 uses
  %i.ahx = add nsw i64 %i.ahw, -4                 ; 4 uses
  %i.ahy = icmp ugt i64 %i.ahx, %i.fb
  br i1 %i.ahy, label %bb.gw, label %bb.gx, !prof !4

bb.gw:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i116
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ahx, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #14, !noalias !343
  unreachable

bb.gx:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i116
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahx
  %i.aia = sub nuw nsw i64 %i.fb, %i.ahx
  %i.aib = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahw
  %i.aic = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !345
  store ptr %i.aic, ptr %i.j, align 8, !noalias !346
  store i64 0, ptr %.sroa.432.0..sroa_idx.i118, align 8, !noalias !346
  store ptr %i.ahr, ptr %.sroa.5.0..sroa_idx.i119, align 8, !noalias !346
  store i64 %i.ahs, ptr %.sroa.633.0..sroa_idx.i, align 8, !noalias !346
  store i64 4, ptr %.sroa.7.0..sroa_idx.i120, align 8, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !345
  store ptr %i.ahz, ptr %i.i, align 8, !alias.scope !347, !noalias !348
  store i64 %i.aia, ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !347, !noalias !348
  store ptr %i.ahr, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !347, !noalias !348
  store i64 0, ptr %.sroa.637.0..sroa_idx.i121, align 8, !alias.scope !347, !noalias !348
  store i64 4, ptr %.sroa.738.0..sroa_idx.i, align 8, !alias.scope !347, !noalias !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !349
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.i), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !349
  store ptr %i.aib, ptr %i.g, align 8, !alias.scope !350, !noalias !351
  store i64 %i.bf, ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !350, !noalias !351
  store ptr %i.ahr, ptr %.sroa.541.0..sroa_idx.i, align 8, !alias.scope !350, !noalias !351
  store i64 0, ptr %.sroa.642.0..sroa_idx.i, align 8, !alias.scope !350, !noalias !351
  store i64 4, ptr %.sroa.743.0..sroa_idx.i, align 8, !alias.scope !350, !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !343
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !349
  %i.aid = load i64, ptr %i.bx, align 8, !alias.scope !352, !noalias !353, !noundef !5 ; 2 uses
  %i.aie = load i64, ptr %i.by, align 8, !alias.scope !352, !noalias !353, !noundef !5
  %i.aif = icmp ult i64 %i.aid, %i.aie
  br i1 %i.aif, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i123, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i123: ; preds = %bb.gx, %bb.hv
  %i.aig = phi i64 [ %i.alb, %bb.hv ], [ %i.aid, %bb.gx ] ; 3 uses
  %i.aih = add nuw i64 %i.aig, 1
  store i64 %i.aih, ptr %i.bx, align 8, !alias.scope !352, !noalias !353
  %i.aii = load i64, ptr %i.bz, align 8, !alias.scope !354, !noalias !355, !noundef !5
  %i.aij = add i64 %i.aii, %i.aig                 ; 2 uses
  %i.aik = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.k, i64 noundef %i.aij), !noalias !356 ; 2 uses
  %i.ail = extractvalue { ptr, i64 } %i.aik, 0    ; 6 uses
  %i.aim = extractvalue { ptr, i64 } %i.aik, 1    ; 5 uses
  %i.ain = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ca, i64 noundef %i.aij), !noalias !356 ; 2 uses
  %i.aio = extractvalue { ptr, i64 } %i.ain, 0    ; 5 uses
  %i.aip = extractvalue { ptr, i64 } %i.ain, 1    ; 4 uses
  %i.aiq = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.cb, i64 noundef %i.aig), !noalias !357 ; 2 uses
  %i.air = extractvalue { ptr, i64 } %i.aiq, 0    ; 5 uses
  %i.ais = extractvalue { ptr, i64 } %i.aiq, 1    ; 4 uses
  %.not18.i124 = icmp eq ptr %i.ail, null
  br i1 %.not18.i124, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit, label %bb.gy

bb.gy:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i123
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aio) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.air) ]
  %.not19.i125 = icmp eq i64 %i.aim, 0
  br i1 %.not19.i125, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ait = load i8, ptr %i.ail, align 1, !noundef !5
  %i.aiu = load i8, ptr %i.l, align 4, !noalias !343, !noundef !5
  %i.aiv = zext i8 %i.aiu to i16
  %.not20.i126 = icmp eq i64 %i.ais, 0
  br i1 %.not20.i126, label %bb.hc, label %bb.hb

bb.ha:                                            ; preds = %bb.gy
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #14
  unreachable

bb.hb:                                            ; preds = %bb.gz
  %.not21.i127 = icmp eq i64 %i.aip, 0
  br i1 %.not21.i127, label %bb.he, label %bb.hd

bb.hc:                                            ; preds = %bb.gz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #14
  unreachable

bb.hd:                                            ; preds = %bb.hb
  %i.aiw = load i8, ptr %i.air, align 1, !noundef !5
  %i.aix = zext i8 %i.aiw to i16
  %i.aiy = load i8, ptr %i.aio, align 1, !noundef !5
  %i.aiz = zext i8 %i.aiy to i16
  %i.aja = add nuw nsw i16 %i.aix, %i.aiv
  %i.ajb = sub nsw i16 %i.aja, %i.aiz
  %..i.i.i = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.ajb, i16 0)
  %i.ajc = call i16 @llvm.umin.i16(i16 %..i.i.i, i16 255)
  %i.ajd = trunc nuw i16 %i.ajc to i8
  %i.aje = add i8 %i.ait, %i.ajd
  %.not22.i128 = icmp eq i64 %i.aim, 1
  br i1 %.not22.i128, label %bb.hg, label %bb.hf

bb.he:                                            ; preds = %bb.hb
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #14
  unreachable

bb.hf:                                            ; preds = %bb.hd
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ail, i64 1
  %i.ajg = load i8, ptr %i.ajf, align 1, !noundef !5
  %i.ajh = load i8, ptr %i.cc, align 1, !noalias !343, !noundef !5
  %i.aji = zext i8 %i.ajh to i16
  %.not23.i129 = icmp eq i64 %i.ais, 1
  br i1 %.not23.i129, label %bb.hi, label %bb.hh

bb.hg:                                            ; preds = %bb.hd
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #14
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %.not24.i130 = icmp eq i64 %i.aip, 1
  br i1 %.not24.i130, label %bb.hk, label %bb.hj

bb.hi:                                            ; preds = %bb.hf
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @133) #14
  unreachable

bb.hj:                                            ; preds = %bb.hh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.air, i64 1
  %i.ajk = load i8, ptr %i.ajj, align 1, !noundef !5
  %i.ajl = zext i8 %i.ajk to i16
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aio, i64 1
  %i.ajn = load i8, ptr %i.ajm, align 1, !noundef !5
  %i.ajo = zext i8 %i.ajn to i16
  %i.ajp = add nuw nsw i16 %i.ajl, %i.aji
  %i.ajq = sub nsw i16 %i.ajp, %i.ajo
  %..i.i28.i = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.ajq, i16 0)
  %i.ajr = call i16 @llvm.umin.i16(i16 %..i.i28.i, i16 255)
  %i.ajs = trunc nuw i16 %i.ajr to i8
  %i.ajt = add i8 %i.ajg, %i.ajs
  %i.aju = icmp ugt i64 %i.aim, 2
  br i1 %i.aju, label %bb.hl, label %bb.hm

bb.hk:                                            ; preds = %bb.hh
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #14
  unreachable

bb.hl:                                            ; preds = %bb.hj
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ail, i64 2
  %i.ajw = load i8, ptr %i.ajv, align 1, !noundef !5
  %i.ajx = load i8, ptr %i.cd, align 2, !noalias !343, !noundef !5
  %i.ajy = zext i8 %i.ajx to i16
  %i.ajz = icmp ugt i64 %i.ais, 2
  br i1 %i.ajz, label %bb.hn, label %bb.ho

bb.hm:                                            ; preds = %bb.hj
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #14
  unreachable

bb.hn:                                            ; preds = %bb.hl
  %i.aka = icmp ugt i64 %i.aip, 2
  br i1 %i.aka, label %bb.hp, label %bb.hq

bb.ho:                                            ; preds = %bb.hl
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #14
  unreachable

bb.hp:                                            ; preds = %bb.hn
  %i.akb = getelementptr inbounds nuw i8, ptr %i.air, i64 2
  %i.akc = load i8, ptr %i.akb, align 1, !noundef !5
  %i.akd = zext i8 %i.akc to i16
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aio, i64 2
  %i.akf = load i8, ptr %i.ake, align 1, !noundef !5
  %i.akg = zext i8 %i.akf to i16
  %i.akh = add nuw nsw i16 %i.akd, %i.ajy
  %i.aki = sub nsw i16 %i.akh, %i.akg
  %..i.i29.i = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.aki, i16 0)
  %i.akj = call i16 @llvm.umin.i16(i16 %..i.i29.i, i16 255)
  %i.akk = trunc nuw i16 %i.akj to i8
  %i.akl = add i8 %i.ajw, %i.akk
  %.not25.i131 = icmp eq i64 %i.aim, 3
  br i1 %.not25.i131, label %bb.hs, label %bb.hr

bb.hq:                                            ; preds = %bb.hn
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @137) #14
  unreachable

bb.hr:                                            ; preds = %bb.hp
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ail, i64 3
  %i.akn = load i8, ptr %i.akm, align 1, !noundef !5
  %i.ako = load i8, ptr %i.ce, align 1, !noalias !343, !noundef !5
  %i.akp = zext i8 %i.ako to i16
  %.not26.i132 = icmp eq i64 %i.ais, 3
  br i1 %.not26.i132, label %bb.hu, label %bb.ht

bb.hs:                                            ; preds = %bb.hp
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #14
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %.not27.i133 = icmp eq i64 %i.aip, 3
  br i1 %.not27.i133, label %bb.hw, label %bb.hv

bb.hu:                                            ; preds = %bb.hr
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #14
  unreachable

bb.hv:                                            ; preds = %bb.ht
  %i.akq = getelementptr inbounds nuw i8, ptr %i.air, i64 3
  %i.akr = load i8, ptr %i.akq, align 1, !noundef !5
  %i.aks = zext i8 %i.akr to i16
  %i.akt = getelementptr inbounds nuw i8, ptr %i.aio, i64 3
  %i.aku = load i8, ptr %i.akt, align 1, !noundef !5
  %i.akv = zext i8 %i.aku to i16
  %i.akw = add nuw nsw i16 %i.aks, %i.akp
  %i.akx = sub nsw i16 %i.akw, %i.akv
  %..i.i30.i = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.akx, i16 0)
  %i.aky = call i16 @llvm.umin.i16(i16 %..i.i30.i, i16 255)
  %i.akz = trunc nuw i16 %i.aky to i8
  %i.ala = add i8 %i.akn, %i.akz
  store i8 %i.aje, ptr %i.l, align 4, !noalias !343
  store i8 %i.ajt, ptr %i.cc, align 1, !noalias !343
  store i8 %i.akl, ptr %i.cd, align 2, !noalias !343
  store i8 %i.ala, ptr %i.ce, align 1, !noalias !343
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.ail, i64 noundef %i.aim, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141)
  %i.alb = load i64, ptr %i.bx, align 8, !alias.scope !352, !noalias !353, !noundef !5 ; 2 uses
  %i.alc = load i64, ptr %i.by, align 8, !alias.scope !352, !noalias !353, !noundef !5
  %i.ald = icmp ult i64 %i.alb, %i.alc
  br i1 %i.ald, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i123, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit

bb.hw:                                            ; preds = %bb.ht
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @140) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_12.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i123, %bb.hv, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !343
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.hx:                                            ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %.not.i134 = icmp ugt i64 %i.fe, %2
  br i1 %.not.i134, label %bb.ia, label %bb.hy, !prof !6

bb.hy:                                            ; preds = %bb.hx
  %.not.i.i135 = icmp ugt i64 %i.fb, %i.fe
  br i1 %.not.i.i135, label %bb.hz, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i136, !prof !4

bb.hz:                                            ; preds = %bb.hy
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #14, !noalias !359
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i136: ; preds = %bb.hy
  %i.ale = getelementptr inbounds nuw i8, ptr %1, i64 %i.fb
  %i.alf = sub nuw nsw i64 %i.fe, %i.fb           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !358
  %i.alg = add nsw i64 %i.fb, -4                  ; 2 uses
  %i.alh = icmp eq i64 %i.fb, 0
  br i1 %i.alh, label %bb.ib, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i137, !prof !4

bb.ia:                                            ; preds = %bb.hx
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fe, i64 noundef range(i64 4, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @163) #14, !noalias !358
  unreachable

bb.ib:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i136
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.alg, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @162) #14, !noalias !358
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i137: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh12split_at_mutCsksn9slvsHfS_10image_webp.exit.i136
  %i.ali = getelementptr inbounds nuw i8, ptr %1, i64 %i.alg
  %.sroa.02.0.copyload.i138 = load i32, ptr %i.ali, align 1, !alias.scope !358
  store i32 %.sroa.02.0.copyload.i138, ptr %i.f, align 4, !noalias !358
  %i.alj = sub nsw i64 %i.fb, %i.bf               ; 2 uses
  %i.alk = add nsw i64 %i.alj, -4                 ; 4 uses
  %i.all = icmp ugt i64 %i.alk, %i.fb
  br i1 %i.all, label %bb.id, label %bb.ic, !prof !4

bb.ic:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i137
  %i.alm = sub nuw nsw i64 %i.fb, %i.alk
  %i.aln = getelementptr inbounds nuw i8, ptr %1, i64 %i.alk ; 2 uses
  %.not22.i139 = icmp samesign ugt i64 %i.alf, %i.alm
  br i1 %.not22.i139, label %bb.ie, label %bb.if, !prof !6

bb.id:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCsksn9slvsHfS_10image_webp.exit.i137
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.alk, i64 noundef %i.fb, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @161) #14, !noalias !358
  unreachable

bb.ie:                                            ; preds = %bb.ic
  %i.alo = add nuw nsw i64 %i.bf, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.alf, i64 noundef %i.alo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @160) #14, !noalias !358
  unreachable

bb.if:                                            ; preds = %bb.ic
  %.not23.i140 = icmp samesign ugt i64 %i.alf, %i.bf
  br i1 %.not23.i140, label %bb.ig, label %bb.ih, !prof !4

bb.ig:                                            ; preds = %bb.if
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.alf, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #14, !noalias !358
  unreachable

bb.ih:                                            ; preds = %bb.if
  %i.alp = getelementptr inbounds nuw i8, ptr %1, i64 %i.alj ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %1, i64 %i.fe
  %i.alr = getelementptr inbounds nuw i8, ptr %i.aln, i64 %i.alf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !360
  store ptr %i.alq, ptr %i.d, align 8, !noalias !361
  store i64 0, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !361
  store ptr %i.ale, ptr %.sroa.5.0..sroa_idx.i141, align 8, !noalias !361
  store i64 %i.alf, ptr %.sroa.639.0..sroa_idx.i142, align 8, !noalias !361
  store i64 4, ptr %.sroa.7.0..sroa_idx.i143, align 8, !noalias !361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !360
  store ptr %i.aln, ptr %i.c, align 8, !alias.scope !362, !noalias !363
  store i64 %i.alf, ptr %.sroa.441.0..sroa_idx.i, align 8, !alias.scope !362, !noalias !363
  store ptr %i.alr, ptr %.sroa.542.0..sroa_idx.i, align 8, !alias.scope !362, !noalias !363
  store i64 0, ptr %.sroa.643.0..sroa_idx.i, align 8, !alias.scope !362, !noalias !363
  store i64 4, ptr %.sroa.744.0..sroa_idx.i, align 8, !alias.scope !362, !noalias !363
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !364
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c), !noalias !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !360
  %i.als = getelementptr inbounds nuw i8, ptr %i.alp, i64 %i.alf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !364
  store ptr %i.alp, ptr %i.a, align 8, !alias.scope !365, !noalias !366
  store i64 %i.alf, ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !366
  store ptr %i.als, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !366
  store i64 0, ptr %.sroa.648.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !366
  store i64 4, ptr %.sroa.749.0..sroa_idx.i, align 8, !alias.scope !365, !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !358
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E3newCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !364
  %i.alt = load i64, ptr %i.bp, align 8, !alias.scope !367, !noalias !368, !noundef !5 ; 2 uses
  %i.alu = load i64, ptr %i.bq, align 8, !alias.scope !367, !noalias !368, !noundef !5
  %i.alv = icmp ult i64 %i.alt, %i.alu
  br i1 %i.alv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i145, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i145: ; preds = %bb.ih, %bb.jf
  %i.alw = phi i64 [ %i.apd, %bb.jf ], [ %i.alt, %bb.ih ] ; 3 uses
  %i.alx = add nuw i64 %i.alw, 1
  store i64 %i.alx, ptr %i.bp, align 8, !alias.scope !367, !noalias !368
  %i.aly = load i64, ptr %i.br, align 8, !alias.scope !369, !noalias !370, !noundef !5
  %i.alz = add i64 %i.aly, %i.alw                 ; 2 uses
  %i.ama = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %i.e, i64 noundef %i.alz), !noalias !371 ; 2 uses
  %i.amb = extractvalue { ptr, i64 } %i.ama, 0    ; 6 uses
  %i.amc = extractvalue { ptr, i64 } %i.ama, 1    ; 5 uses
  %i.amd = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bs, i64 noundef %i.alz), !noalias !371 ; 2 uses
  %i.ame = extractvalue { ptr, i64 } %i.amd, 0    ; 5 uses
  %i.amf = extractvalue { ptr, i64 } %i.amd, 1    ; 4 uses
  %i.amg = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.bt, i64 noundef %i.alw), !noalias !372 ; 2 uses
  %i.amh = extractvalue { ptr, i64 } %i.amg, 0    ; 5 uses
  %i.ami = extractvalue { ptr, i64 } %i.amg, 1    ; 4 uses
  %.not24.i146 = icmp eq ptr %i.amb, null
  br i1 %.not24.i146, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit, label %bb.ii

bb.ii:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i145
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ame) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amh) ]
  %.not25.i147 = icmp eq i64 %i.amc, 0
  br i1 %.not25.i147, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.amj = load i8, ptr %i.amb, align 1, !noundef !5
  %.not26.i148 = icmp eq i64 %i.ami, 0
  br i1 %.not26.i148, label %bb.im, label %bb.il

bb.ik:                                            ; preds = %bb.ii
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @147) #14
  unreachable

bb.il:                                            ; preds = %bb.ij
  %.not27.i149 = icmp eq i64 %i.amf, 0
  br i1 %.not27.i149, label %bb.io, label %bb.in

bb.im:                                            ; preds = %bb.ij
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @148) #14
  unreachable

bb.in:                                            ; preds = %bb.il
  %i.amk = load i8, ptr %i.f, align 4, !noalias !358, !noundef !5
  %i.aml = zext i8 %i.amk to i16
  %i.amm = load i8, ptr %i.amh, align 1, !noundef !5
  %i.amn = zext i8 %i.amm to i16
  %i.amo = add nuw nsw i16 %i.amn, %i.aml
  %i.amp = lshr i16 %i.amo, 1                     ; 2 uses
  %i.amq = load i8, ptr %i.ame, align 1, !noundef !5
  %i.amr = zext i8 %i.amq to i16
  %i.ams = sub nsw i16 %i.amp, %i.amr
  %i.amt = sdiv i16 %i.ams, 2
  %i.amu = add nsw i16 %i.amt, %i.amp
  %..i.i.i150 = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.amu, i16 0)
  %i.amv = call i16 @llvm.umin.i16(i16 %..i.i.i150, i16 255)
  %i.amw = trunc nuw i16 %i.amv to i8
  %i.amx = add i8 %i.amj, %i.amw
  %.not28.i151 = icmp eq i64 %i.amc, 1
  br i1 %.not28.i151, label %bb.iq, label %bb.ip

bb.io:                                            ; preds = %bb.il
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #14
  unreachable

bb.ip:                                            ; preds = %bb.in
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amb, i64 1
  %i.amz = load i8, ptr %i.amy, align 1, !noundef !5
  %.not29.i152 = icmp eq i64 %i.ami, 1
  br i1 %.not29.i152, label %bb.is, label %bb.ir

bb.iq:                                            ; preds = %bb.in
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #14
  unreachable

bb.ir:                                            ; preds = %bb.ip
  %.not30.i153 = icmp eq i64 %i.amf, 1
  br i1 %.not30.i153, label %bb.iu, label %bb.it

bb.is:                                            ; preds = %bb.ip
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #14
  unreachable

bb.it:                                            ; preds = %bb.ir
  %i.ana = load i8, ptr %i.bu, align 1, !noalias !358, !noundef !5
  %i.anb = zext i8 %i.ana to i16
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amh, i64 1
  %i.and = load i8, ptr %i.anc, align 1, !noundef !5
  %i.ane = zext i8 %i.and to i16
  %i.anf = add nuw nsw i16 %i.ane, %i.anb
  %i.ang = lshr i16 %i.anf, 1                     ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ame, i64 1
  %i.ani = load i8, ptr %i.anh, align 1, !noundef !5
  %i.anj = zext i8 %i.ani to i16
  %i.ank = sub nsw i16 %i.ang, %i.anj
  %i.anl = sdiv i16 %i.ank, 2
  %i.anm = add nsw i16 %i.anl, %i.ang
  %..i.i34.i = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.anm, i16 0)
  %i.ann = call i16 @llvm.umin.i16(i16 %..i.i34.i, i16 255)
  %i.ano = trunc nuw i16 %i.ann to i8
  %i.anp = add i8 %i.amz, %i.ano
  %i.anq = icmp ugt i64 %i.amc, 2
  br i1 %i.anq, label %bb.iv, label %bb.iw

bb.iu:                                            ; preds = %bb.ir
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #14
  unreachable

bb.iv:                                            ; preds = %bb.it
  %i.anr = getelementptr inbounds nuw i8, ptr %i.amb, i64 2
  %i.ans = load i8, ptr %i.anr, align 1, !noundef !5
  %i.ant = icmp ugt i64 %i.ami, 2
  br i1 %i.ant, label %bb.ix, label %bb.iy

bb.iw:                                            ; preds = %bb.it
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #14
  unreachable

bb.ix:                                            ; preds = %bb.iv
  %i.anu = icmp ugt i64 %i.amf, 2
  br i1 %i.anu, label %bb.iz, label %bb.ja

bb.iy:                                            ; preds = %bb.iv
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @154) #14
  unreachable

bb.iz:                                            ; preds = %bb.ix
  %i.anv = load i8, ptr %i.bv, align 2, !noalias !358, !noundef !5
  %i.anw = zext i8 %i.anv to i16
  %i.anx = getelementptr inbounds nuw i8, ptr %i.amh, i64 2
  %i.any = load i8, ptr %i.anx, align 1, !noundef !5
  %i.anz = zext i8 %i.any to i16
  %i.aoa = add nuw nsw i16 %i.anz, %i.anw
  %i.aob = lshr i16 %i.aoa, 1                     ; 2 uses
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.ame, i64 2
  %i.aod = load i8, ptr %i.aoc, align 1, !noundef !5
  %i.aoe = zext i8 %i.aod to i16
  %i.aof = sub nsw i16 %i.aob, %i.aoe
  %i.aog = sdiv i16 %i.aof, 2
  %i.aoh = add nsw i16 %i.aog, %i.aob
  %..i.i35.i = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.aoh, i16 0)
  %i.aoi = call i16 @llvm.umin.i16(i16 %..i.i35.i, i16 255)
  %i.aoj = trunc nuw i16 %i.aoi to i8
  %i.aok = add i8 %i.ans, %i.aoj
  %.not31.i154 = icmp eq i64 %i.amc, 3
  br i1 %.not31.i154, label %bb.jc, label %bb.jb

bb.ja:                                            ; preds = %bb.ix
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef 2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @155) #14
  unreachable

bb.jb:                                            ; preds = %bb.iz
  %i.aol = getelementptr inbounds nuw i8, ptr %i.amb, i64 3
  %i.aom = load i8, ptr %i.aol, align 1, !noundef !5
  %.not32.i155 = icmp eq i64 %i.ami, 3
  br i1 %.not32.i155, label %bb.je, label %bb.jd

bb.jc:                                            ; preds = %bb.iz
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #14
  unreachable

bb.jd:                                            ; preds = %bb.jb
  %.not33.i156 = icmp eq i64 %i.amf, 3
  br i1 %.not33.i156, label %bb.jg, label %bb.jf

bb.je:                                            ; preds = %bb.jb
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #14
  unreachable

bb.jf:                                            ; preds = %bb.jd
  %i.aon = load i8, ptr %i.bw, align 1, !noalias !358, !noundef !5
  %i.aoo = zext i8 %i.aon to i16
  %i.aop = getelementptr inbounds nuw i8, ptr %i.amh, i64 3
  %i.aoq = load i8, ptr %i.aop, align 1, !noundef !5
  %i.aor = zext i8 %i.aoq to i16
  %i.aos = add nuw nsw i16 %i.aor, %i.aoo
  %i.aot = lshr i16 %i.aos, 1                     ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.ame, i64 3
  %i.aov = load i8, ptr %i.aou, align 1, !noundef !5
  %i.aow = zext i8 %i.aov to i16
  %i.aox = sub nsw i16 %i.aot, %i.aow
  %i.aoy = sdiv i16 %i.aox, 2
  %i.aoz = add nsw i16 %i.aoy, %i.aot
  %..i.i36.i = call noundef range(i16 0, 511) i16 @llvm.smax.i16(i16 range(i16 -255, 511) %i.aoz, i16 0)
  %i.apa = call i16 @llvm.umin.i16(i16 %..i.i36.i, i16 255)
  %i.apb = trunc nuw i16 %i.apa to i8
  %i.apc = add i8 %i.aom, %i.apb
  store i8 %i.amx, ptr %i.f, align 4, !noalias !358
  store i8 %i.anp, ptr %i.bu, align 1, !noalias !358
  store i8 %i.aok, ptr %i.bv, align 2, !noalias !358
  store i8 %i.apc, ptr %i.bw, align 1, !noalias !358
  call void @_RINvNtCsj6eKBz9Db1c_4core5slice20copy_from_slice_implhECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull %i.amb, i64 noundef %i.amc, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef 4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @159)
  %i.apd = load i64, ptr %i.bp, align 8, !alias.scope !367, !noalias !368, !noundef !5 ; 2 uses
  %i.ape = load i64, ptr %i.bq, align 8, !alias.scope !367, !noalias !368, !noundef !5
  %i.apf = icmp ult i64 %i.apd, %i.ape
  br i1 %i.apf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i145, label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit

bb.jg:                                            ; preds = %bb.jd
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 3, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #14
  unreachable

_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform28apply_predictor_transform_13.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter14ChunksExactMuthEINtB13_11ChunksExacthEEB1D_EINtB5_7ZipImplBW_B1D_E4nextCsksn9slvsHfS_10image_webp.exit.i145, %bb.jf, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !358
  br label %_RNvNtCsksn9slvsHfS_10image_webp18lossless_transform27apply_predictor_transform_0.exit

bb.jh:                                            ; preds = %bb.jk, %bb.jj, %bb.ji, %.lr.ph
  %.lcssa1563 = phi i64 [ %i.ek, %.lr.ph ], [ %i.apl, %bb.ji ], [ %i.apt, %bb.jj ], [ %i.aqb, %bb.jk ]
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.lcssa1563, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #14
  unreachable

bb.ji:                                            ; preds = %.lr.ph
  %i.apg = getelementptr inbounds nuw i8, ptr %1, i64 %i.ek ; 2 uses
  %i.aph = load i8, ptr %i.apg, align 1, !noundef !5
  %i.api = getelementptr inbounds nuw i8, ptr %1, i64 %i.em
  %i.apj = load i8, ptr %i.api, align 1, !noundef !5
  %i.apk = add i8 %i.apj, %i.aph
  store i8 %i.apk, ptr %i.apg, align 1
  %i.apl = or disjoint i64 %i.ek, 1               ; 3 uses
  %i.apm = icmp samesign ult i64 %i.apl, %2
  br i1 %i.apm, label %bb.jj, label %bb.jh

end_hunk_2
