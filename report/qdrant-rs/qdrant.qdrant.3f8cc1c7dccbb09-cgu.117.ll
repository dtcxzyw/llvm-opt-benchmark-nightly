Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.117?download=true
inline.NumInlined: 249
inline.NumDeleted: 156
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc7cluster27BrotliCompareAndPushToQueueNtNtB4_9histogram17HistogramDistanceECsl8OoimOLbh_6qdrant:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load69.1 = load <4 x i32>, ptr %i.bm, align 8
  %wide.load70.1 = load <4 x i32>, ptr %i.bn, align 8
  %i.bo = add <4 x i32> %wide.load69.1, %wide.load.1
  %i.bp = add <4 x i32> %wide.load70.1, %wide.load68.1
  store <4 x i32> %i.bo, ptr %i.bk, align 8
  store <4 x i32> %i.bp, ptr %i.bl, align 8
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, 544
  br i1 %i.bq, label %_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsl8OoimOLbh_6qdrant.exit, label %vector.body, !llvm.loop !421

_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsl8OoimOLbh_6qdrant.exit: ; preds = %vector.body
  %i.br = call noundef float @_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc8bit_cost20BrotliPopulationCostNtNtB4_9histogram17HistogramDistanceECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.a, ptr noalias nofree noundef nonnull %7) ; 2 uses
  %i.bs = fsub float %.sroa.030.0, %i.ar
  %i.bt = fcmp olt float %i.br, %i.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.bt, label %bb.s, label %bb.al

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !noundef !5
  %i.bw = tail call nsz float @llvm.maximumnum.f32(float %i.bv, float 0.000000e+00)
  br label %vector.ph

bb.x:                                             ; preds = %bb.v
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #19
  unreachable

bb.y:                                             ; preds = %bb.s
  %.not48 = icmp eq i64 %9, 0
  br i1 %.not48, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %.split, %bb.s, %bb.ac
  %i.bx = icmp ult i64 %i.av, %6
  br i1 %i.bx, label %bb.ae, label %bb.al

bb.aa:                                            ; preds = %bb.y
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !noundef !5 ; 2 uses
  %i.ca = fcmp une float %i.bz, %i.aw
  br i1 %i.ca, label %.split, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #19
  unreachable

.split:                                           ; preds = %bb.aa
  %i.cb = fcmp ogt float %i.bz, %i.aw
  br i1 %i.cb, label %bb.ad, label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !noundef !5
  %i.ce = load i32, ptr %8, align 4, !noundef !5
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = sub nuw i32 %spec.select, %spec.select49
  %i.ch = icmp ugt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.ad, label %bb.z

bb.ad:                                            ; preds = %.split, %bb.ac
  %i.ci = icmp ult i64 %i.av, %6
  br i1 %i.ci, label %bb.ah, label %bb.ak

bb.ae:                                            ; preds = %bb.z
  %i.cj = icmp ult i64 %i.av, %9
  br i1 %i.cj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.av ; 4 uses
  store i32 %spec.select49, ptr %i.ck, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  store float %i.aw, ptr %.sroa.11.0..sroa_idx, align 4
  %i.cl = add nuw nsw i64 %i.av, 1
  store i64 %i.cl, ptr %10, align 8
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #19
  unreachable

bb.ah:                                            ; preds = %bb.ad
  %i.cm = icmp ult i64 %i.av, %9
  br i1 %i.cm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %i.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cn, ptr noundef nonnull align 4 dereferenceable(16) %8, i64 16, i1 false)
  %i.co = add nuw nsw i64 %i.av, 1
  store i64 %i.co, ptr %10, align 8
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %9, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #19
  unreachable

bb.ak:                                            ; preds = %bb.ai, %bb.ad
  store i32 %spec.select49, ptr %8, align 4
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %spec.select, ptr %.sroa.5.0..sroa_idx20, align 4
  %.sroa.7.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx22, align 4
  store float %i.aw, ptr %i.by, align 4
  br label %bb.al

bb.al:                                            ; preds = %_RINvNtNtCs4GWW6M5ZWyU_6brotli3enc9histogram21HistogramAddHistogramNtB2_17HistogramDistanceECsl8OoimOLbh_6qdrant.exit, %bb.ak, %bb.z, %bb.af, %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SBT_20sort_unstable_by_keyNtBV_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2J_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = icmp samesign ult i64 %1, 2
  br i1 %i.g, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !484
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !485, !noalias !486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !484
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !487, !noalias !488
  tail call void @llvm.experimental.noalias.scope.decl(metadata !489)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !492)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.j = load i8, ptr %i.f, align 8, !range !11, !alias.scope !495, !noalias !496, !noundef !5 ; 2 uses
  %i.k = load i8, ptr %i.e, align 8, !range !11, !alias.scope !497, !noalias !498, !noundef !5 ; 3 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = sub nsw i8 %i.j, %i.k                    ; 2 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.c, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nuw i8 %i.j to i1
  br i1 %i.o, label %loadbb, label %bb.d

loadbb:                                           ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.r = load i64, ptr %i.p, align 1
  %i.s = load i64, ptr %i.q, align 1
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.r)  ; 2 uses
  %i.u = tail call i64 @llvm.bswap.i64(i64 %i.s)  ; 2 uses
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %loadbb39, label %res_block

res_block:                                        ; preds = %loadbb39, %loadbb
  %phi.src1 = phi i64 [ %i.t, %loadbb ], [ %i.ac, %loadbb39 ]
  %phi.src2 = phi i64 [ %i.u, %loadbb ], [ %i.ad, %loadbb39 ]
  %i.w = icmp ult i64 %phi.src1, %phi.src2
  %i.x = select i1 %i.w, i32 -1, i32 1
  br label %endblock

loadbb39:                                         ; preds = %loadbb
  %i.y = getelementptr i8, ptr %i.p, i64 8
  %i.z = getelementptr i8, ptr %i.q, i64 8
  %i.aa = load i64, ptr %i.y, align 1
  %i.ab = load i64, ptr %i.z, align 1
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.aa) ; 2 uses
  %i.ad = tail call i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb39
  %phi.res = phi i32 [ 0, %loadbb39 ], [ %i.x, %res_block ]
  %i.af = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i8 %i.k, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !495, !noalias !496, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !497, !noalias !498, !noundef !5
  %i.al = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ai, i64 %i.ak)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit

_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %endblock, %bb.d
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.af, %endblock ], [ %i.al, %bb.d ], [ %i.m, %bb.b ]
  %i.am = icmp slt i8 %.sroa.0.0.i.i.i.i, 0       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !484
  %.not18 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.am, label %.preheader, label %.preheader10

.preheader10:                                     ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit
  br i1 %.not18, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SB12_20sort_unstable_by_keyNtB14_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2U_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader10
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br label %bb.e

.preheader:                                       ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit
  br i1 %.not18, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SB12_20sort_unstable_by_keyNtB14_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2U_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.01.0.i12 = phi i64 [ 2, %.lr.ph ], [ %i.bz, %bb.h ] ; 4 uses
  %i.av = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.01.0.i12
  %i.aw = getelementptr [208 x i8], ptr %0, i64 %.sroa.01.0.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !499
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !alias.scope !500, !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !499
  %i.ay = getelementptr i8, ptr %i.aw, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !alias.scope !502, !noalias !503
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.az = load i8, ptr %i.d, align 8, !range !11, !alias.scope !510, !noalias !511, !noundef !5 ; 2 uses
  %i.ba = load i8, ptr %i.c, align 8, !range !11, !alias.scope !512, !noalias !513, !noundef !5 ; 3 uses
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sub nsw i8 %i.az, %i.ba                 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit3

bb.f:                                             ; preds = %bb.e
  %i.be = trunc nuw i8 %i.az to i1
  br i1 %i.be, label %loadbb45, label %bb.g

loadbb45:                                         ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.bb)
  %i.bf = load i64, ptr %i.ap, align 1
  %i.bg = load i64, ptr %i.aq, align 1
  %i.bh = tail call i64 @llvm.bswap.i64(i64 %i.bf) ; 2 uses
  %i.bi = tail call i64 @llvm.bswap.i64(i64 %i.bg) ; 2 uses
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %loadbb46, label %res_block42

res_block42:                                      ; preds = %loadbb46, %loadbb45
  %phi.src143 = phi i64 [ %i.bh, %loadbb45 ], [ %i.bq, %loadbb46 ]
  %phi.src244 = phi i64 [ %i.bi, %loadbb45 ], [ %i.br, %loadbb46 ]
  %i.bk = icmp ult i64 %phi.src143, %phi.src244
  %i.bl = select i1 %i.bk, i32 -1, i32 1
  br label %endblock40

loadbb46:                                         ; preds = %loadbb45
  %i.bm = getelementptr i8, ptr %i.ap, i64 8
  %i.bn = getelementptr i8, ptr %i.aq, i64 8
  %i.bo = load i64, ptr %i.bm, align 1
  %i.bp = load i64, ptr %i.bn, align 1
  %i.bq = tail call i64 @llvm.bswap.i64(i64 %i.bo) ; 2 uses
  %i.br = tail call i64 @llvm.bswap.i64(i64 %i.bp) ; 2 uses
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %endblock40, label %res_block42

endblock40:                                       ; preds = %res_block42, %loadbb46
  %phi.res41 = phi i32 [ 0, %loadbb46 ], [ %i.bl, %res_block42 ]
  %i.bt = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res41, i32 0)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit3

bb.g:                                             ; preds = %bb.f
  %i.bu = icmp eq i8 %i.ba, 0
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load i64, ptr %i.an, align 8, !alias.scope !510, !noalias !511, !noundef !5
  %i.bw = load i64, ptr %i.ao, align 8, !alias.scope !512, !noalias !513, !noundef !5
  %i.bx = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bv, i64 %i.bw)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit3

_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit3: ; preds = %bb.e, %endblock40, %bb.g
  %.sroa.0.0.i.i.i.i2 = phi i8 [ %i.bt, %endblock40 ], [ %i.bx, %bb.g ], [ %i.bc, %bb.e ]
  %i.by = icmp slt i8 %.sroa.0.0.i.i.i.i2, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !499
  br i1 %i.by, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SB12_20sort_unstable_by_keyNtB14_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2U_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit3
  %i.bz = add nuw nsw i64 %.sroa.01.0.i12, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %1
  br i1 %exitcond.not, label %bb.m, label %bb.e

bb.i:                                             ; preds = %.lr.ph15, %bb.l
  %.sroa.01.1.i14 = phi i64 [ 2, %.lr.ph15 ], [ %i.de, %bb.l ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.01.1.i14
  %i.cb = getelementptr [208 x i8], ptr %0, i64 %.sroa.01.1.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !514
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !515, !noalias !516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !514
  %i.cd = getelementptr i8, ptr %i.cb, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !alias.scope !517, !noalias !518
  tail call void @llvm.experimental.noalias.scope.decl(metadata !519)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ce = load i8, ptr %i.b, align 8, !range !11, !alias.scope !525, !noalias !526, !noundef !5 ; 2 uses
  %i.cf = load i8, ptr %i.a, align 8, !range !11, !alias.scope !527, !noalias !528, !noundef !5 ; 3 uses
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = sub nsw i8 %i.ce, %i.cf                 ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.j, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit5

bb.j:                                             ; preds = %bb.i
  %i.cj = trunc nuw i8 %i.ce to i1
  br i1 %i.cj, label %loadbb52, label %bb.k

loadbb52:                                         ; preds = %bb.j
  tail call void @llvm.assume(i1 %i.cg)
  %i.ck = load i64, ptr %i.at, align 1
  %i.cl = load i64, ptr %i.au, align 1
  %i.cm = tail call i64 @llvm.bswap.i64(i64 %i.ck) ; 2 uses
  %i.cn = tail call i64 @llvm.bswap.i64(i64 %i.cl) ; 2 uses
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %loadbb53, label %res_block49

res_block49:                                      ; preds = %loadbb53, %loadbb52
  %phi.src150 = phi i64 [ %i.cm, %loadbb52 ], [ %i.cv, %loadbb53 ]
  %phi.src251 = phi i64 [ %i.cn, %loadbb52 ], [ %i.cw, %loadbb53 ]
  %i.cp = icmp ult i64 %phi.src150, %phi.src251
  %i.cq = select i1 %i.cp, i32 -1, i32 1
  br label %endblock47

loadbb53:                                         ; preds = %loadbb52
  %i.cr = getelementptr i8, ptr %i.at, i64 8
  %i.cs = getelementptr i8, ptr %i.au, i64 8
  %i.ct = load i64, ptr %i.cr, align 1
  %i.cu = load i64, ptr %i.cs, align 1
  %i.cv = tail call i64 @llvm.bswap.i64(i64 %i.ct) ; 2 uses
  %i.cw = tail call i64 @llvm.bswap.i64(i64 %i.cu) ; 2 uses
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %endblock47, label %res_block49

endblock47:                                       ; preds = %res_block49, %loadbb53
  %phi.res48 = phi i32 [ 0, %loadbb53 ], [ %i.cq, %res_block49 ]
  %i.cy = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res48, i32 0)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit5

bb.k:                                             ; preds = %bb.j
  %i.cz = icmp eq i8 %i.cf, 0
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = load i64, ptr %i.ar, align 8, !alias.scope !525, !noalias !526, !noundef !5
  %i.db = load i64, ptr %i.as, align 8, !alias.scope !527, !noalias !528, !noundef !5
  %i.dc = tail call i8 @llvm.ucmp.i8.i64(i64 %i.da, i64 %i.db)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit5

_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit5: ; preds = %bb.i, %endblock47, %bb.k
  %.sroa.0.0.i.i.i.i4 = phi i8 [ %i.cy, %endblock47 ], [ %i.dc, %bb.k ], [ %i.ch, %bb.i ]
  %i.dd = icmp slt i8 %.sroa.0.0.i.i.i.i4, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !514
  br i1 %i.dd, label %bb.l, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SB12_20sort_unstable_by_keyNtB14_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2U_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit5
  %i.de = add nuw nsw i64 %.sroa.01.1.i14, 1      ; 2 uses
  %exitcond22.not = icmp eq i64 %i.de, %1
  br i1 %exitcond22.not, label %bb.m, label %bb.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SB12_20sort_unstable_by_keyNtB14_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2U_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit3, %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit5, %.preheader10, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader10 ], [ 2, %.preheader ], [ %.sroa.01.1.i14, %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit5 ], [ %.sroa.01.0.i12, %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit3 ] ; 2 uses
  %i.df = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.l, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SB12_20sort_unstable_by_keyNtB14_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2U_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit
  br i1 %i.am, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB6_SB12_20sort_unstable_by_keyNtB14_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2U_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %i.dh = or i64 %1, 1
  %i.di = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB8_SB17_20sort_unstable_by_keyNtB19_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2Z_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(208) null, i32 noundef %i.dl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant.exit.i.i, %bb.a, %bb.m, %bb.n
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.dm = lshr i64 %1, 1
  %i.dn = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ds, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.do = xor i64 %.sroa.0.017.i.i, -1
  %i.dp = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.dq = getelementptr [208 x i8], ptr %i.dn, i64 %i.do
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dq, i64 noundef 26)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ds = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ds, %i.dm
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint7reverseCsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SBT_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3u_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 48038396025285291) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = icmp samesign ult i64 %1, 2
  br i1 %i.g, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal7reverseCsl8OoimOLbh_6qdrant.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !583
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !584, !noalias !585
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !583
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !586, !noalias !587
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  %i.j = load i8, ptr %i.f, align 8, !range !11, !alias.scope !594, !noalias !595, !noundef !5 ; 2 uses
  %i.k = load i8, ptr %i.e, align 8, !range !11, !alias.scope !596, !noalias !597, !noundef !5 ; 3 uses
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = sub nsw i8 %i.j, %i.k                    ; 2 uses
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.c, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit

bb.c:                                             ; preds = %bb.b
  %i.o = trunc nuw i8 %i.j to i1
  br i1 %i.o, label %loadbb, label %bb.d

loadbb:                                           ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.r = load i64, ptr %i.p, align 1
  %i.s = load i64, ptr %i.q, align 1
  %i.t = tail call i64 @llvm.bswap.i64(i64 %i.r)  ; 2 uses
  %i.u = tail call i64 @llvm.bswap.i64(i64 %i.s)  ; 2 uses
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %loadbb39, label %res_block

res_block:                                        ; preds = %loadbb39, %loadbb
  %phi.src1 = phi i64 [ %i.t, %loadbb ], [ %i.ac, %loadbb39 ]
  %phi.src2 = phi i64 [ %i.u, %loadbb ], [ %i.ad, %loadbb39 ]
  %i.w = icmp ult i64 %phi.src1, %phi.src2
  %i.x = select i1 %i.w, i32 -1, i32 1
  br label %endblock

loadbb39:                                         ; preds = %loadbb
  %i.y = getelementptr i8, ptr %i.p, i64 8
  %i.z = getelementptr i8, ptr %i.q, i64 8
  %i.aa = load i64, ptr %i.y, align 1
  %i.ab = load i64, ptr %i.z, align 1
  %i.ac = tail call i64 @llvm.bswap.i64(i64 %i.aa) ; 2 uses
  %i.ad = tail call i64 @llvm.bswap.i64(i64 %i.ab) ; 2 uses
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb39
  %phi.res = phi i32 [ 0, %loadbb39 ], [ %i.x, %res_block ]
  %i.af = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp eq i8 %i.k, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !594, !noalias !595, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !596, !noalias !597, !noundef !5
  %i.al = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ai, i64 %i.ak)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit

_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.b, %endblock, %bb.d
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.af, %endblock ], [ %i.al, %bb.d ], [ %i.m, %bb.b ]
  %i.am = icmp slt i8 %.sroa.0.0.i.i.i.i, 0       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !583
  %.not18 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.am, label %.preheader, label %.preheader10

.preheader10:                                     ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit
  br i1 %.not18, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3E_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader10
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  br label %bb.e

.preheader:                                       ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit
  br i1 %.not18, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3E_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant.exit, label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %bb.i

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.01.0.i12 = phi i64 [ 2, %.lr.ph ], [ %i.bz, %bb.h ] ; 4 uses
  %i.av = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.sroa.01.0.i12
  %i.aw = getelementptr [192 x i8], ptr %0, i64 %.sroa.01.0.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !598
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !alias.scope !599, !noalias !600
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !598
  %i.ay = getelementptr i8, ptr %i.aw, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !alias.scope !601, !noalias !602
  tail call void @llvm.experimental.noalias.scope.decl(metadata !603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !608)
  %i.az = load i8, ptr %i.d, align 8, !range !11, !alias.scope !609, !noalias !610, !noundef !5 ; 2 uses
  %i.ba = load i8, ptr %i.c, align 8, !range !11, !alias.scope !611, !noalias !612, !noundef !5 ; 3 uses
  %i.bb = trunc nuw i8 %i.ba to i1
  %i.bc = sub nsw i8 %i.az, %i.ba                 ; 2 uses
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit3

bb.f:                                             ; preds = %bb.e
  %i.be = trunc nuw i8 %i.az to i1
  br i1 %i.be, label %loadbb45, label %bb.g

loadbb45:                                         ; preds = %bb.f
  tail call void @llvm.assume(i1 %i.bb)
  %i.bf = load i64, ptr %i.ap, align 1
  %i.bg = load i64, ptr %i.aq, align 1
  %i.bh = tail call i64 @llvm.bswap.i64(i64 %i.bf) ; 2 uses
  %i.bi = tail call i64 @llvm.bswap.i64(i64 %i.bg) ; 2 uses
  %i.bj = icmp eq i64 %i.bh, %i.bi
  br i1 %i.bj, label %loadbb46, label %res_block42

res_block42:                                      ; preds = %loadbb46, %loadbb45
  %phi.src143 = phi i64 [ %i.bh, %loadbb45 ], [ %i.bq, %loadbb46 ]
  %phi.src244 = phi i64 [ %i.bi, %loadbb45 ], [ %i.br, %loadbb46 ]
  %i.bk = icmp ult i64 %phi.src143, %phi.src244
  %i.bl = select i1 %i.bk, i32 -1, i32 1
  br label %endblock40

loadbb46:                                         ; preds = %loadbb45
  %i.bm = getelementptr i8, ptr %i.ap, i64 8
  %i.bn = getelementptr i8, ptr %i.aq, i64 8
  %i.bo = load i64, ptr %i.bm, align 1
  %i.bp = load i64, ptr %i.bn, align 1
  %i.bq = tail call i64 @llvm.bswap.i64(i64 %i.bo) ; 2 uses
  %i.br = tail call i64 @llvm.bswap.i64(i64 %i.bp) ; 2 uses
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %endblock40, label %res_block42

endblock40:                                       ; preds = %res_block42, %loadbb46
  %phi.res41 = phi i32 [ 0, %loadbb46 ], [ %i.bl, %res_block42 ]
  %i.bt = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res41, i32 0)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit3

bb.g:                                             ; preds = %bb.f
  %i.bu = icmp eq i8 %i.ba, 0
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = load i64, ptr %i.an, align 8, !alias.scope !609, !noalias !610, !noundef !5
  %i.bw = load i64, ptr %i.ao, align 8, !alias.scope !611, !noalias !612, !noundef !5
  %i.bx = tail call i8 @llvm.ucmp.i8.i64(i64 %i.bv, i64 %i.bw)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit3

_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit3: ; preds = %bb.e, %endblock40, %bb.g
  %.sroa.0.0.i.i.i.i2 = phi i8 [ %i.bt, %endblock40 ], [ %i.bx, %bb.g ], [ %i.bc, %bb.e ]
  %i.by = icmp slt i8 %.sroa.0.0.i.i.i.i2, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !598
  br i1 %i.by, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3E_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant.exit, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit3
  %i.bz = add nuw nsw i64 %.sroa.01.0.i12, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.bz, %1
  br i1 %exitcond.not, label %bb.m, label %bb.e

bb.i:                                             ; preds = %.lr.ph15, %bb.l
  %.sroa.01.1.i14 = phi i64 [ 2, %.lr.ph15 ], [ %i.de, %bb.l ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.sroa.01.1.i14
  %i.cb = getelementptr [192 x i8], ptr %0, i64 %.sroa.01.1.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !613
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !614, !noalias !615
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !613
  %i.cd = getelementptr i8, ptr %i.cb, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !alias.scope !616, !noalias !617
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %i.ce = load i8, ptr %i.b, align 8, !range !11, !alias.scope !624, !noalias !625, !noundef !5 ; 2 uses
  %i.cf = load i8, ptr %i.a, align 8, !range !11, !alias.scope !626, !noalias !627, !noundef !5 ; 3 uses
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = sub nsw i8 %i.ce, %i.cf                 ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.j, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit5

bb.j:                                             ; preds = %bb.i
  %i.cj = trunc nuw i8 %i.ce to i1
  br i1 %i.cj, label %loadbb52, label %bb.k

loadbb52:                                         ; preds = %bb.j
  tail call void @llvm.assume(i1 %i.cg)
  %i.ck = load i64, ptr %i.at, align 1
  %i.cl = load i64, ptr %i.au, align 1
  %i.cm = tail call i64 @llvm.bswap.i64(i64 %i.ck) ; 2 uses
  %i.cn = tail call i64 @llvm.bswap.i64(i64 %i.cl) ; 2 uses
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %loadbb53, label %res_block49

res_block49:                                      ; preds = %loadbb53, %loadbb52
  %phi.src150 = phi i64 [ %i.cm, %loadbb52 ], [ %i.cv, %loadbb53 ]
  %phi.src251 = phi i64 [ %i.cn, %loadbb52 ], [ %i.cw, %loadbb53 ]
  %i.cp = icmp ult i64 %phi.src150, %phi.src251
  %i.cq = select i1 %i.cp, i32 -1, i32 1
  br label %endblock47

loadbb53:                                         ; preds = %loadbb52
  %i.cr = getelementptr i8, ptr %i.at, i64 8
  %i.cs = getelementptr i8, ptr %i.au, i64 8
  %i.ct = load i64, ptr %i.cr, align 1
  %i.cu = load i64, ptr %i.cs, align 1
  %i.cv = tail call i64 @llvm.bswap.i64(i64 %i.ct) ; 2 uses
  %i.cw = tail call i64 @llvm.bswap.i64(i64 %i.cu) ; 2 uses
  %i.cx = icmp eq i64 %i.cv, %i.cw
  br i1 %i.cx, label %endblock47, label %res_block49

endblock47:                                       ; preds = %res_block49, %loadbb53
  %phi.res48 = phi i32 [ 0, %loadbb53 ], [ %i.cq, %res_block49 ]
  %i.cy = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res48, i32 0)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit5

bb.k:                                             ; preds = %bb.j
  %i.cz = icmp eq i8 %i.cf, 0
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = load i64, ptr %i.ar, align 8, !alias.scope !624, !noalias !625, !noundef !5
  %i.db = load i64, ptr %i.as, align 8, !alias.scope !626, !noalias !627, !noundef !5
  %i.dc = tail call i8 @llvm.ucmp.i8.i64(i64 %i.da, i64 %i.db)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit5

_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit5: ; preds = %bb.i, %endblock47, %bb.k
  %.sroa.0.0.i.i.i.i4 = phi i8 [ %i.cy, %endblock47 ], [ %i.dc, %bb.k ], [ %i.ch, %bb.i ]
  %i.dd = icmp slt i8 %.sroa.0.0.i.i.i.i4, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !613
  br i1 %i.dd, label %bb.l, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3E_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant.exit

bb.l:                                             ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit5
  %i.de = add nuw nsw i64 %.sroa.01.1.i14, 1      ; 2 uses
  %exitcond22.not = icmp eq i64 %i.de, %1
  br i1 %exitcond22.not, label %bb.m, label %bb.i

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3E_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant.exit: ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit3, %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit5, %.preheader10, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader10 ], [ 2, %.preheader ], [ %.sroa.01.1.i14, %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit5 ], [ %.sroa.01.0.i12, %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB2V_10Collection9scroll_by0s0_0E0Csl8OoimOLbh_6qdrant.exit3 ] ; 2 uses
  %i.df = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.dg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.h, %bb.l, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3E_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  br i1 %i.am, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal7reverseCsl8OoimOLbh_6qdrant.exit

bb.n:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB6_SB12_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3E_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant.exit
  %i.dh = or i64 %1, 1
  %i.di = tail call range(i64 8, 64) i64 @llvm.ctlz.i64(i64 %i.dh, i1 true)
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 1
  %i.dl = xor i32 %i.dk, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalNCINvMB8_SB17_20sort_unstable_by_keyNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3J_10Collection9scroll_by0s0_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(192) null, i32 noundef %i.dl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal7reverseCsl8OoimOLbh_6qdrant.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal7reverseCsl8OoimOLbh_6qdrant.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsl8OoimOLbh_6qdrant.exit.i.i, %bb.a, %bb.m, %bb.n
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.m
  %i.dm = lshr i64 %1, 1
  %i.dn = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsl8OoimOLbh_6qdrant.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ds, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsl8OoimOLbh_6qdrant.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.do = xor i64 %.sroa.0.017.i.i, -1
  %i.dp = getelementptr inbounds nuw [192 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.dq = getelementptr [192 x i8], ptr %i.dn, i64 %i.do
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsl8OoimOLbh_6qdrant(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.dq, i64 noundef 24)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsl8OoimOLbh_6qdrant.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalECsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ds = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ds, %i.dm
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternal7reverseCsl8OoimOLbh_6qdrant.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB8_SB15_20sort_unstable_by_keyNtB17_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2X_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 44343134792571038) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = lshr i64 %1, 1
  %i.f = add nuw nsw i64 %i.e, %1                 ; 2 uses
  %.not15 = icmp eq i64 %i.f, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph17

.lr.ph17:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB8_SB16_20sort_unstable_by_keyNtB18_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2Y_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph17, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB8_SB16_20sort_unstable_by_keyNtB18_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2Y_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit
  %.sroa.2.016 = phi i64 [ %i.f, %.lr.ph17 ], [ %i.o, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB8_SB16_20sort_unstable_by_keyNtB18_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2Y_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit ]
  %i.o = add nsw i64 %.sroa.2.016, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.o, %1
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = sub nuw nsw i64 %i.o, %1
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint14swap_uncheckedCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.04.0 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.d ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.o) ; 4 uses
  %i.q = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.q)
  %i.r = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.s = or disjoint i64 %i.r, 1                  ; 2 uses
  %.not.i13 = icmp samesign ult i64 %i.s, %..i
  br i1 %.not.i13, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downNtNtCs607s0NAIaWN_7segment5types11ScoredPointNCINvMB8_SB16_20sort_unstable_by_keyNtB18_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2Y_10Collection20search_points_matrix0s_0E0ECsl8OoimOLbh_6qdrant.exit

.lr.ph:                                           ; preds = %bb.e, %bb.l
  %i.t = phi i64 [ %i.ch, %bb.l ], [ %i.s, %bb.e ] ; 3 uses
  %i.u = phi i64 [ %i.cg, %bb.l ], [ %i.r, %bb.e ]
  %.sroa.0.0.i14 = phi i64 [ %.sroa.04.0.i, %bb.l ], [ %.sroa.04.0, %bb.e ]
  %i.v = add nuw nsw i64 %i.u, 2                  ; 2 uses
  %i.w = icmp samesign ult i64 %i.v, %..i
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.t
  %i.y = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !664
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.z, i64 24, i1 false), !alias.scope !665, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !664
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !alias.scope !667, !noalias !668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  %i.ab = load i8, ptr %i.d, align 8, !range !11, !alias.scope !675, !noalias !676, !noundef !5 ; 2 uses
  %i.ac = load i8, ptr %i.c, align 8, !range !11, !alias.scope !677, !noalias !678, !noundef !5 ; 3 uses
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = sub nsw i8 %i.ab, %i.ac                 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = trunc nuw i8 %i.ab to i1
  br i1 %i.ag, label %loadbb, label %bb.h

loadbb:                                           ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.ad)
  %i.ah = load i64, ptr %i.i, align 1
  %i.ai = load i64, ptr %i.j, align 1
  %i.aj = tail call i64 @llvm.bswap.i64(i64 %i.ah) ; 2 uses
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.ai) ; 2 uses
  %i.al = icmp eq i64 %i.aj, %i.ak
  br i1 %i.al, label %loadbb27, label %res_block

res_block:                                        ; preds = %loadbb27, %loadbb
  %phi.src1 = phi i64 [ %i.aj, %loadbb ], [ %i.as, %loadbb27 ]
  %phi.src2 = phi i64 [ %i.ak, %loadbb ], [ %i.at, %loadbb27 ]
  %i.am = icmp ult i64 %phi.src1, %phi.src2
  %i.an = select i1 %i.am, i32 -1, i32 1
  br label %endblock

loadbb27:                                         ; preds = %loadbb
  %i.ao = getelementptr i8, ptr %i.i, i64 8
  %i.ap = getelementptr i8, ptr %i.j, i64 8
  %i.aq = load i64, ptr %i.ao, align 1
  %i.ar = load i64, ptr %i.ap, align 1
  %i.as = tail call i64 @llvm.bswap.i64(i64 %i.aq) ; 2 uses
  %i.at = tail call i64 @llvm.bswap.i64(i64 %i.ar) ; 2 uses
  %i.au = icmp eq i64 %i.as, %i.at
  br i1 %i.au, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb27
  %phi.res = phi i32 [ 0, %loadbb27 ], [ %i.an, %res_block ]
  %i.av = tail call i8 @llvm.scmp.i8.i32(i32 %phi.res, i32 0)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = icmp eq i8 %i.ac, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = load i64, ptr %i.g, align 8, !alias.scope !675, !noalias !676, !noundef !5
  %i.ay = load i64, ptr %i.h, align 8, !alias.scope !677, !noalias !678, !noundef !5
  %i.az = tail call i8 @llvm.ucmp.i8.i64(i64 %i.ax, i64 %i.ay)
  br label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit

_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit: ; preds = %bb.f, %endblock, %bb.h
  %.sroa.0.0.i.i.i.i = phi i8 [ %i.av, %endblock ], [ %i.az, %bb.h ], [ %i.ae, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !664
  %.sroa.0.0.i.i.i.i.lobit = lshr i8 %.sroa.0.0.i.i.i.i, 7
  %i.ba = zext nneg i8 %.sroa.0.0.i.i.i.i.lobit to i64
  %i.bb = add nuw nsw i64 %i.t, %i.ba
  br label %bb.i

bb.i:                                             ; preds = %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.bb, %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit ], [ %i.t, %.lr.ph ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.0.0.i14 ; 2 uses
  %i.bd = getelementptr inbounds nuw [208 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !679
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.be, i64 24, i1 false), !alias.scope !680, !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !679
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !alias.scope !682, !noalias !683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.bg = load i8, ptr %i.b, align 8, !range !11, !alias.scope !690, !noalias !691, !noundef !5 ; 2 uses
  %i.bh = load i8, ptr %i.a, align 8, !range !11, !alias.scope !692, !noalias !693, !noundef !5 ; 3 uses
  %i.bi = trunc nuw i8 %i.bh to i1
  %i.bj = sub nsw i8 %i.bg, %i.bh                 ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %_RNCINvMNtCskKLDkoKarTP_4core5sliceSNtNtCs607s0NAIaWN_7segment5types11ScoredPoint20sort_unstable_by_keyNtBz_15ExtendedPointIdNCNCNvMs4_NtNtCsPYQCUnoTxQ_10collection10collection15distance_matrixNtB2a_10Collection20search_points_matrix0s_0E0Csl8OoimOLbh_6qdrant.exit12

bb.j:                                             ; preds = %bb.i
  %i.bl = trunc nuw i8 %i.bg to i1
  br i1 %i.bl, label %loadbb33, label %bb.k

loadbb33:                                         ; preds = %bb.j
  tail call void @llvm.assume(i1 %i.bi)
  %i.bm = load i64, ptr %i.m, align 1
  %i.bn = load i64, ptr %i.n, align 1
  %i.bo = tail call i64 @llvm.bswap.i64(i64 %i.bm) ; 2 uses
  %i.bp = tail call i64 @llvm.bswap.i64(i64 %i.bn) ; 2 uses
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %loadbb34, label %res_block30

res_block30:                                      ; preds = %loadbb34, %loadbb33
  %phi.src131 = phi i64 [ %i.bo, %loadbb33 ], [ %i.bx, %loadbb34 ]
  %phi.src232 = phi i64 [ %i.bp, %loadbb33 ], [ %i.by, %loadbb34 ]
  %i.br = icmp ult i64 %phi.src131, %phi.src232
  %i.bs = select i1 %i.br, i32 -1, i32 1
  br label %endblock28

loadbb34:                                         ; preds = %loadbb33
end_hunk_0
