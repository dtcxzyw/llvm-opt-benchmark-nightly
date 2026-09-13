Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.12?download=true
inline.NumInlined: 1137
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color4RgbatEtEB6_:bb.a
  %i.hm = load <4 x i16>, ptr %i.hk, align 2
  %i.hn = uitofp <4 x i16> %i.hm to <4 x float>
  %i.ho = fadd <4 x float> %i.bv, %i.hn
  %i.hp = load <4 x i16>, ptr %i.hl, align 2
  %i.hq = uitofp <4 x i16> %i.hp to <4 x float>
  %i.hr = fsub <4 x float> %i.ho, %i.hq           ; 6 uses
  %i.hs = extractelement <4 x float> %i.hr, i64 3
  %i.ht = extractelement <4 x float> %i.hr, i64 2
  %i.hu = extractelement <4 x float> %i.hr, i64 1
  %i.hv = extractelement <4 x float> %i.hr, i64 0
  %exitcond592.not.i = icmp eq i64 %i.bw, %..i216.i
  br i1 %exitcond592.not.i, label %._crit_edge457.i, label %.lr.ph456.i

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i, %.lr.ph.i.1
  %.lcssa = phi i64 [ %i.hy, %.lr.ph.i.1 ], [ %i.bi, %.lr.ph.i ], [ %i.bk, %.lr.ph.i.epil.preheader ] ; 2 uses
  %i.hw = add nuw nsw i64 %.lcssa, 4
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa, i64 noundef %i.hw, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.hx = add nuw i64 %.sroa.0243.0442.i, 1
  %..i.i.1 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.hx)
  %i.hy = shl nuw nsw i64 %..i.i.1, 2             ; 3 uses
  %or.cond184.not.i.1 = icmp ult i64 %i.hy, %invariant.op
  br i1 %or.cond184.not.i.1, label %bb.ak, label %.loopexit, !prof !20

bb.ak:                                            ; preds = %.lr.ph.i.1
  %i.hz = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bi
  %i.ia = load <4 x i16>, ptr %i.hz, align 2
  %i.ib = uitofp <4 x i16> %i.ia to <4 x float>
  %i.ic = fadd <4 x float> %i.bh, %i.ib
  %i.id = add nuw i64 %.sroa.0243.0442.i, 2       ; 2 uses
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.hy
  %i.if = load <4 x i16>, ptr %i.ie, align 2
  %i.ig = uitofp <4 x i16> %i.if to <4 x float>
  %i.ih = fadd <4 x float> %i.ic, %i.ig           ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph456.preheader.i.unr-lcssa, label %.lr.ph.i

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj4_EB6_.exit: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color5LumaAhEhEB6_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef range(i64 2, 8589934591) %2, ptr noalias nofree noundef nonnull %3, i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 2, 8589934591) %5, i32 noundef range(i32 1, 0) %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [96 x i8], align 8                ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = zext i32 %6 to i64                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !469
  %i.i = add i64 %7, %i.h                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.d, align 8, !noalias !469
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !469
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !469
  store i8 -1, ptr %i.d, align 8, !noalias !469
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !469
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 8 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.o to float
  %i.s = fdiv float 1.000000e+00, %i.r            ; 6 uses
  %i.t = add nsw i64 %i.h, -1                     ; 6 uses
  %i.u = urem i64 %4, %5                          ; 2 uses
  %i.v = sub nuw nsw i64 %4, %i.u                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.x = urem i64 %1, %2                          ; 2 uses
  %i.y = sub nuw nsw i64 %1, %i.x                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !470
  store ptr %i.w, ptr %i.c, align 8, !noalias !471
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !471
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !471
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !471
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !471
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !470
  store ptr %0, ptr %i.b, align 8, !alias.scope !472, !noalias !473
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %.sroa.4148.0..sroa_idx.i, align 8, !alias.scope !472, !noalias !473
  %.sroa.5149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.5149.0..sroa_idx.i, align 8, !alias.scope !472, !noalias !473
  %.sroa.6150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.x, ptr %.sroa.6150.0..sroa_idx.i, align 8, !alias.scope !472, !noalias !473
  %.sroa.7151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7151.0..sroa_idx.i, align 8, !alias.scope !472, !noalias !473
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !469
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !475, !noalias !476, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !475, !noalias !476, !noundef !5
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.af = uitofp i64 %i.q to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i134.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.ai = shl nuw i64 %i.p, 1                     ; 3 uses
  %i.aj = shl i64 %7, 2
  %i.ak = or disjoint i64 %i.aj, 2                ; 3 uses
  %i.al = shl nuw nsw i64 %i.ah, 1                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al)
  %i.am = icmp ult i64 %i.al, %i.ai
  %i.an = sub i64 %i.ah, %7
  %i.ao = and i64 %i.an, 9223372036854775807
  %.sroa.4172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.ar = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod447 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.v, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.as = load i64, ptr %i.aa, align 8, !alias.scope !475, !noalias !476, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !475, !noalias !476, !noundef !5
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.av = phi i64 [ %i.ac, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.as, %.loopexit.i ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !475, !noalias !476
  %i.ax = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.av), !noalias !477 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 6 uses
  %i.ba = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.av), !noalias !477 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 12 uses
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj2_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.be = load <2 x i8>, ptr %i.bb, align 1
  %i.bf = uitofp <2 x i8> %i.be to <2 x float>
  %i.bg = fmul nnan <2 x float> %i.aq, %i.bf      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i [
    i64 0, label %._crit_edge301.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.i, %bb.ae
  %.sroa.0155.0292.i = phi i64 [ %i.fs, %bb.ae ], [ 1, %bb.i ] ; 3 uses
  %i.bh = phi <2 x float> [ %i.fw, %bb.ae ], [ %i.bg, %bb.i ]
  %niter = phi i64 [ %niter.next.1, %bb.ae ], [ 0, %bb.i ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0155.0292.i)
  %i.bi = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %8 = add nuw nsw i64 %i.bi, 2                   ; 2 uses
  %.not111.i = icmp ugt i64 %8, %i.bc
  br i1 %.not111.i, label %.loopexit, label %.lr.ph.i.1, !prof !18

._crit_edge301.i:                                 ; preds = %bb.ad, %bb.i
  %i.bj = phi <2 x float> [ %i.bg, %bb.i ], [ %i.fj, %bb.ad ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bc, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.preheader, %bb.ad
  %.sroa.0.1298.i = phi float [ %i.fk, %bb.ad ], [ %.lcssa361, %.lr.ph300.i.preheader ]
  %.sroa.013.1297.i = phi float [ %i.fl, %bb.ad ], [ %.lcssa362, %.lr.ph300.i.preheader ]
  %.sroa.078.0296.i = phi i64 [ %i.bl, %bb.ad ], [ 0, %.lr.ph300.i.preheader ] ; 4 uses
  %i.bk = phi <2 x float> [ %i.fj, %bb.ad ], [ %.lcssa363, %.lr.ph300.i.preheader ]
  %i.bl = add nuw nsw i64 %.sroa.078.0296.i, 1    ; 2 uses
  %i.bm = add nuw i64 %.sroa.078.0296.i, %i.q
  %..i135.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.bm)
  %i.bn = shl nuw nsw i64 %..i135.i, 1            ; 3 uses
  %i.bo = sub nsw i64 %.sroa.078.0296.i, %i.p
  %..i136.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bo, i64 0)
  %i.bp = shl nuw i64 %..i136.i, 1                ; 3 uses
  %i.bq = shl nuw nsw i64 %.sroa.078.0296.i, 1    ; 4 uses
  %i.br = or disjoint i64 %i.bq, 1
  %or.cond115.not.i = icmp ult i64 %i.br, %i.az
  br i1 %or.cond115.not.i, label %bb.w, label %bb.z, !prof !20

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i, %bb.k, %._crit_edge301.i
  %.sroa.083.0.i = phi i64 [ %i.p, %._crit_edge301.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ] ; 2 uses
  %i.bs = phi <2 x float> [ %i.bj, %._crit_edge301.i ], [ %i.bj, %bb.k ], [ %i.dd, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ]
  %i.bt = icmp ult i64 %.sroa.083.0.i, %i.h
  br i1 %i.bt, label %.lr.ph312.i, label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge301.i
  %.not103.i = icmp ugt i64 %i.al, %i.az
  %or.cond112.i = or i1 %i.am, %.not103.i
  br i1 %or.cond112.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ak ; 2 uses
  %i.bv = sub nuw i64 %i.bc, %i.ak
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ai ; 2 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.ao
  %i.by = lshr i64 %i.bc, 1
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.by
  %i.ca = lshr i64 %i.bv, 1
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !478
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAhj2_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bz)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.cb), !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !478
  %.sroa.0170.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !469 ; 2 uses
  %.sroa.4172.0.copyload.i = load ptr, ptr %.sroa.4172.0..sroa_idx.i, align 8, !noalias !469 ; 2 uses
  %.sroa.5174.0.copyload.i = load i64, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !469
  %.sroa.6176.0.copyload.i = load ptr, ptr %.sroa.6176.0..sroa_idx.i, align 8, !noalias !469 ; 2 uses
  %.sroa.7178.0.copyload.i = load i64, ptr %.sroa.7178.0..sroa_idx.i, align 8, !noalias !469 ; 2 uses
  %.sroa.9179.0.copyload.i = load i64, ptr %.sroa.9179.0..sroa_idx.i, align 8, !noalias !469 ; 2 uses
  %i.cc = icmp ult i64 %.sroa.7178.0.copyload.i, %.sroa.9179.0.copyload.i
  br i1 %i.cc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0170.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4172.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6176.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.al, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.7178.0304.i = phi i64 [ %.sroa.7178.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.ce, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ] ; 3 uses
  %i.cd = phi <2 x float> [ %i.bj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dd, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i ] ; 3 uses
  %i.ce = add i64 %.sroa.7178.0304.i, 1           ; 2 uses
  %i.cf = add i64 %.sroa.7178.0304.i, %.sroa.5174.0.copyload.i ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0170.0.copyload.i, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %.sroa.4172.0.copyload.i, i64 %i.cf
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6176.0.copyload.i, i64 %.sroa.7178.0304.i
  %i.cj = extractelement <2 x float> %i.cd, i64 0
  %i.ck = fmul float %i.s, %i.cj
  %i.cl = call float @llvm.round.f32(float %i.ck)
  %i.cm = call nsz float @llvm.minimumnum.f32(float %i.cl, float 2.550000e+02)
  %i.cn = call nsz float @llvm.maximumnum.f32(float %i.cm, float 0.000000e+00) ; 2 uses
  %i.co = fcmp olt float %i.cn, 2.560000e+02
  br i1 %i.co, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.cp = fptoui float %i.cn to i8
  store i8 %i.cp, ptr %i.cg, align 1
  %i.cq = extractelement <2 x float> %i.cd, i64 1
  %i.cr = fmul float %i.s, %i.cq
  %i.cs = call float @llvm.round.f32(float %i.cr)
  %i.ct = call nsz float @llvm.minimumnum.f32(float %i.cs, float 2.550000e+02)
  %i.cu = call nsz float @llvm.maximumnum.f32(float %i.ct, float 0.000000e+00) ; 2 uses
  %i.cv = fcmp olt float %i.cu, 2.560000e+02
  br i1 %i.cv, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit140.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit.i
  %i.cw = fptoui float %i.cu to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = load <2 x i8>, ptr %i.ci, align 1
  %i.cz = uitofp <2 x i8> %i.cy to <2 x float>
  %i.da = fadd <2 x float> %i.cd, %i.cz
  %i.db = load <2 x i8>, ptr %i.ch, align 1
  %i.dc = uitofp <2 x i8> %i.db to <2 x float>
  %i.dd = fsub <2 x float> %i.da, %i.dc           ; 2 uses
  %exitcond400.not.i = icmp eq i64 %i.ce, %.sroa.9179.0.copyload.i
  br i1 %exitcond400.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph312.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.v
  %.sroa.083.1309.i = phi i64 [ %i.df, %bb.v ], [ %.sroa.083.0.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 4 uses
  %i.de = phi <2 x float> [ %i.el, %bb.v ], [ %i.bs, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAhj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 3 uses
  %i.df = add i64 %.sroa.083.1309.i, 1            ; 2 uses
  %i.dg = add nuw i64 %.sroa.083.1309.i, %i.q
  %..i141.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.dg)
  %i.dh = shl nuw nsw i64 %..i141.i, 1            ; 3 uses
  %i.di = sub nsw i64 %.sroa.083.1309.i, %i.p     ; 2 uses
  %..i142.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.di, i64 0)
  %i.dj = shl nuw i64 %..i142.i, 1                ; 3 uses
  %i.dk = shl nuw nsw i64 %.sroa.083.1309.i, 1    ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2                ; 2 uses
  %.not105.i = icmp ugt i64 %i.dl, %i.az
  br i1 %.not105.i, label %bb.r, label %bb.o, !prof !12

bb.o:                                             ; preds = %.lr.ph312.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.dk ; 2 uses
  %i.dn = extractelement <2 x float> %i.de, i64 0
  %i.do = fmul float %i.s, %i.dn
  %i.dp = call float @llvm.round.f32(float %i.do)
  %i.dq = call nsz float @llvm.minimumnum.f32(float %i.dp, float 2.550000e+02)
  %i.dr = call nsz float @llvm.maximumnum.f32(float %i.dq, float 0.000000e+00) ; 2 uses
  %i.ds = fcmp olt float %i.dr, 2.560000e+02
  br i1 %i.ds, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i: ; preds = %bb.o
  %i.dt = fptoui float %i.dr to i8
  store i8 %i.dt, ptr %i.dm, align 1
  %i.du = extractelement <2 x float> %i.de, i64 1
  %i.dv = fmul float %i.s, %i.du
  %i.dw = call float @llvm.round.f32(float %i.dv)
  %i.dx = call nsz float @llvm.minimumnum.f32(float %i.dw, float 2.550000e+02)
  %i.dy = call nsz float @llvm.maximumnum.f32(float %i.dx, float 0.000000e+00) ; 2 uses
  %i.dz = fcmp olt float %i.dy, 2.560000e+02
  br i1 %i.dz, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit143.i
  %i.ea = fptoui float %i.dy to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 %i.ea, ptr %i.eb, align 1
  %9 = add nuw nsw i64 %i.dh, 2                   ; 2 uses
  %.not106.i = icmp ugt i64 %9, %i.bc
  br i1 %.not106.i, label %bb.s, label %bb.t, !prof !18

bb.r:                                             ; preds = %.lr.ph312.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dk, i64 noundef %i.dl, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dh, i64 noundef %9, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.t:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit144.i
  %i.ec = add i64 %i.dj, 2                        ; 2 uses
  %i.ed = icmp eq i64 %i.di, 9223372036854775807
  %.not107.i = icmp ugt i64 %i.ec, %i.bc
  %or.cond114.i = or i1 %i.ed, %.not107.i
  br i1 %or.cond114.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dj, i64 noundef %i.ec, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.dh
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.dj
  %i.eg = load <2 x i8>, ptr %i.ee, align 1
  %i.eh = uitofp <2 x i8> %i.eg to <2 x float>
  %i.ei = fadd <2 x float> %i.de, %i.eh
  %i.ej = load <2 x i8>, ptr %i.ef, align 1
  %i.ek = uitofp <2 x i8> %i.ej to <2 x float>
  %i.el = fsub <2 x float> %i.ei, %i.ek
  %exitcond401.not.i = icmp eq i64 %i.df, %i.h
  br i1 %exitcond401.not.i, label %.loopexit.i, label %.lr.ph312.i

bb.w:                                             ; preds = %.lr.ph300.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bq ; 2 uses
  %i.en = fmul float %i.s, %.sroa.013.1297.i
  %i.eo = call float @llvm.round.f32(float %i.en)
  %i.ep = call nsz float @llvm.minimumnum.f32(float %i.eo, float 2.550000e+02)
  %i.eq = call nsz float @llvm.maximumnum.f32(float %i.ep, float 0.000000e+00) ; 2 uses
  %i.er = fcmp olt float %i.eq, 2.560000e+02
  br i1 %i.er, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i, label %bb.x, !prof !19

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i: ; preds = %bb.w
  %i.es = fptoui float %i.eq to i8
  store i8 %i.es, ptr %i.em, align 1
  %i.et = fmul float %i.s, %.sroa.0.1298.i
  %i.eu = call float @llvm.round.f32(float %i.et)
  %i.ev = call nsz float @llvm.minimumnum.f32(float %i.eu, float 2.550000e+02)
  %i.ew = call nsz float @llvm.maximumnum.f32(float %i.ev, float 0.000000e+00) ; 2 uses
  %i.ex = fcmp olt float %i.ew, 2.560000e+02
  br i1 %i.ex, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i, label %bb.y, !prof !19

bb.y:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit145.i
  %i.ey = fptoui float %i.ew to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store i8 %i.ey, ptr %i.ez, align 1
  %10 = add nuw nsw i64 %i.bn, 2                  ; 2 uses
  %.not109.i = icmp ugt i64 %10, %i.bc
  br i1 %.not109.i, label %bb.aa, label %bb.ab, !prof !18

bb.z:                                             ; preds = %.lr.ph300.i
  %i.fa = add nuw i64 %i.bq, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.fa, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.aa:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bn, i64 noundef %10, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_mulhEB6_.exit146.i
  %i.fb = add nuw i64 %i.bp, 2                    ; 2 uses
  %.not110.i = icmp ugt i64 %i.fb, %i.bc
  br i1 %.not110.i, label %bb.ac, label %bb.ad, !prof !18

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.fb, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bn
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bp
  %i.fe = load <2 x i8>, ptr %i.fc, align 1
  %i.ff = uitofp <2 x i8> %i.fe to <2 x float>
  %i.fg = fadd <2 x float> %i.bk, %i.ff
  %i.fh = load <2 x i8>, ptr %i.fd, align 1
  %i.fi = uitofp <2 x i8> %i.fh to <2 x float>
  %i.fj = fsub <2 x float> %i.fg, %i.fi           ; 4 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 1
  %i.fl = extractelement <2 x float> %i.fj, i64 0
  %exitcond399.not.i = icmp eq i64 %i.bl, %..i134.i
  br i1 %exitcond399.not.i, label %._crit_edge301.i, label %.lr.ph300.i

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i, %.lr.ph.i.1
  %.lcssa.a = phi i64 [ %i.fn, %.lr.ph.i.1 ], [ %i.bi, %.lr.ph.i ], [ %i.fz, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi i64 [ %11, %.lr.ph.i.1 ], [ %8, %.lr.ph.i ], [ %12, %.lr.ph.i.epil.preheader ]
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa.a, i64 noundef %.lcssa, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.fm = add nuw i64 %.sroa.0155.0292.i, 1
  %..i.i.1 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.fm)
  %i.fn = shl nuw nsw i64 %..i.i.1, 1             ; 3 uses
  %11 = add nuw nsw i64 %i.fn, 2                  ; 2 uses
  %.not111.i.1 = icmp ugt i64 %11, %i.bc
  br i1 %.not111.i.1, label %.loopexit, label %bb.ae, !prof !18

bb.ae:                                            ; preds = %.lr.ph.i.1
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bi
  %i.fp = load <2 x i8>, ptr %i.fo, align 1
  %i.fq = uitofp <2 x i8> %i.fp to <2 x float>
  %i.fr = fadd <2 x float> %i.bh, %i.fq
  %i.fs = add nuw i64 %.sroa.0155.0292.i, 2       ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fn
  %i.fu = load <2 x i8>, ptr %i.ft, align 1
  %i.fv = uitofp <2 x i8> %i.fu to <2 x float>
  %i.fw = fadd <2 x float> %i.fr, %i.fv           ; 5 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph300.i.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph300.i.preheader.unr-lcssa:                  ; preds = %bb.ae
  %i.fx = extractelement <2 x float> %i.fw, i64 1
  %i.fy = extractelement <2 x float> %i.fw, i64 0
  br i1 %lcmp.mod.not, label %.lr.ph300.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph300.i.preheader.unr-lcssa
  %.sroa.0155.0292.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.fs, %.lr.ph300.i.preheader.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.bg, %bb.i ], [ %i.fw, %.lr.ph300.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod447)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0155.0292.i.epil.init)
  %i.fz = shl nuw nsw i64 %..i.i.epil, 1          ; 3 uses
  %12 = add nuw nsw i64 %i.fz, 2                  ; 2 uses
  %.not111.i.epil = icmp ugt i64 %12, %i.bc
  br i1 %.not111.i.epil, label %.loopexit, label %.lr.ph300.i.preheader.epilog-lcssa, !prof !18

.lr.ph300.i.preheader.epilog-lcssa:               ; preds = %.lr.ph.i.epil.preheader
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.fz
  %i.gb = load <2 x i8>, ptr %i.ga, align 1
  %i.gc = uitofp <2 x i8> %i.gb to <2 x float>
  %i.gd = fadd <2 x float> %.epil.init, %i.gc     ; 3 uses
  %i.ge = extractelement <2 x float> %i.gd, i64 0
  %i.gf = extractelement <2 x float> %i.gd, i64 1
  br label %.lr.ph300.i.preheader

.lr.ph300.i.preheader:                            ; preds = %.lr.ph300.i.preheader.unr-lcssa, %.lr.ph300.i.preheader.epilog-lcssa
  %.lcssa363 = phi <2 x float> [ %i.fw, %.lr.ph300.i.preheader.unr-lcssa ], [ %i.gd, %.lr.ph300.i.preheader.epilog-lcssa ]
  %.lcssa362 = phi float [ %i.fy, %.lr.ph300.i.preheader.unr-lcssa ], [ %i.ge, %.lr.ph300.i.preheader.epilog-lcssa ]
  %.lcssa361 = phi float [ %i.fx, %.lr.ph300.i.preheader.unr-lcssa ], [ %i.gf, %.lr.ph300.i.preheader.epilog-lcssa ]
  br label %.lr.ph300.i

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_implhKj2_EB6_.exit: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuthEINtBZ_11ChunksExacthEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur33box_blur_horizontal_pass_strategyINtNtB6_5color5LumaAtEtEB6_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef range(i64 0, 4611686018427387904) %1, i64 noundef range(i64 2, 8589934591) %2, ptr noalias nofree noundef nonnull align 2 %3, i64 noundef range(i64 0, 4611686018427387904) %4, i64 noundef range(i64 2, 8589934591) %5, i32 noundef range(i32 1, 0) %6, i64 noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [96 x i8], align 8                ; 7 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = zext i32 %6 to i64                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !496
  %i.i = add i64 %7, %i.h                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  br i1 %i.j, label %bb.b, label %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 7, ptr %i.d, align 8, !noalias !496
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !496
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @30, ptr noundef nonnull inttoptr (i64 79 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #24
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i: ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.i, ptr %i.m, align 8, !noalias !496
  store i8 -1, ptr %i.d, align 8, !noalias !496
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !496
  %i.n = shl i64 %7, 1
  %i.o = or disjoint i64 %i.n, 1
  %i.p = and i64 %7, 9223372036854775807          ; 8 uses
  %i.q = add nuw i64 %i.p, 1                      ; 4 uses
  %i.r = uitofp i64 %i.o to float
  %i.s = fdiv float 1.000000e+00, %i.r            ; 6 uses
  %i.t = add nsw i64 %i.h, -1                     ; 6 uses
  %i.u = urem i64 %4, %5                          ; 2 uses
  %i.v = sub nuw nsw i64 %4, %i.u                 ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.v
  %i.x = urem i64 %1, %2                          ; 2 uses
  %i.y = sub nuw nsw i64 %1, %i.x                 ; 2 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !497
  store ptr %i.w, ptr %i.c, align 8, !noalias !498
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !498
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !498
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !498
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %5, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !497
  store ptr %0, ptr %i.b, align 8, !alias.scope !499, !noalias !500
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.y, ptr %.sroa.4148.0..sroa_idx.i, align 8, !alias.scope !499, !noalias !500
  %.sroa.5149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %.sroa.5149.0..sroa_idx.i, align 8, !alias.scope !499, !noalias !500
  %.sroa.6150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.x, ptr %.sroa.6150.0..sroa_idx.i, align 8, !alias.scope !499, !noalias !500
  %.sroa.7151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.7151.0..sroa_idx.i, align 8, !alias.scope !499, !noalias !500
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.b), !noalias !501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.g, i64 96, i1 false), !noalias !496
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 8, !alias.scope !502, !noalias !503, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.ab, align 8, !alias.scope !502, !noalias !503, !noundef !5
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  %i.af = uitofp i64 %i.q to float
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %..i134.i = call i64 @llvm.umin.i64(i64 %i.h, i64 %i.p)
  %i.ah = call i64 @llvm.usub.sat.i64(i64 %i.t, i64 %i.q) ; 4 uses
  %i.ai = shl nuw i64 %i.p, 1                     ; 3 uses
  %i.aj = shl i64 %7, 2
  %i.ak = or disjoint i64 %i.aj, 2                ; 3 uses
  %i.al = shl nuw nsw i64 %i.ah, 1                ; 4 uses
  %invariant.umax.i = call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.al)
  %i.am = icmp ult i64 %i.al, %i.ai
  %i.an = sub i64 %i.ah, %7
  %i.ao = and i64 %i.an, 9223372036854775807
  %.sroa.4172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.7178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.9179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ap = insertelement <2 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %xtraiter = and i64 %7, 1
  %i.ar = icmp eq i64 %i.p, 1                     ; 0 uses
  %unroll_iter = and i64 %7, 9223372036854775806
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod447 = trunc i64 %7 to i1
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.loopexit.i:                                      ; preds = %bb.v, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i
  %i.as = load i64, ptr %i.aa, align 8, !alias.scope !502, !noalias !503, !noundef !5 ; 2 uses
  %i.at = load i64, ptr %i.ab, align 8, !alias.scope !502, !noalias !503, !noundef !5
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj2_EB6_.exit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %i.av = phi i64 [ %i.ac, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.as, %.loopexit.i ] ; 3 uses
  %i.aw = add nuw i64 %i.av, 1
  store i64 %i.aw, ptr %i.aa, align 8, !alias.scope !502, !noalias !503
  %i.ax = call { ptr, i64 } @_RNvXs1y_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_14ChunksExactMuttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.f, i64 noundef %i.av), !noalias !504 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 4 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 6 uses
  %i.ba = call { ptr, i64 } @_RNvXs1q_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_11ChunksExacttENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, i64 noundef %i.av), !noalias !504 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 12 uses
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 17 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj2_EB6_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bd = icmp ugt i64 %i.bc, 1
  br i1 %i.bd, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 2, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.be = load <2 x i16>, ptr %i.bb, align 2
  %i.bf = uitofp <2 x i16> %i.be to <2 x float>
  %i.bg = fmul nnan <2 x float> %i.aq, %i.bf      ; 3 uses
  switch i64 %i.p, label %.lr.ph.i [
    i64 0, label %._crit_edge301.i
    i64 1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i:                                         ; preds = %bb.i, %bb.ae
  %.sroa.0155.0292.i = phi i64 [ %i.fs, %bb.ae ], [ 1, %bb.i ] ; 3 uses
  %i.bh = phi <2 x float> [ %i.fw, %bb.ae ], [ %i.bg, %bb.i ]
  %niter = phi i64 [ %niter.next.1, %bb.ae ], [ 0, %bb.i ]
  %..i.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0155.0292.i)
  %i.bi = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %8 = add nuw nsw i64 %i.bi, 2                   ; 2 uses
  %.not111.i = icmp ugt i64 %8, %i.bc
  br i1 %.not111.i, label %.loopexit, label %.lr.ph.i.1, !prof !18

._crit_edge301.i:                                 ; preds = %bb.ad, %bb.i
  %i.bj = phi <2 x float> [ %i.bg, %bb.i ], [ %i.fj, %bb.ad ] ; 3 uses
  %or.cond.i = icmp ugt i64 %i.bc, %invariant.umax.i
  br i1 %or.cond.i, label %bb.j, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

.lr.ph300.i:                                      ; preds = %.lr.ph300.i.preheader, %bb.ad
  %.sroa.0.1298.i = phi float [ %i.fk, %bb.ad ], [ %.lcssa361, %.lr.ph300.i.preheader ]
  %.sroa.013.1297.i = phi float [ %i.fl, %bb.ad ], [ %.lcssa362, %.lr.ph300.i.preheader ]
  %.sroa.078.0296.i = phi i64 [ %i.bl, %bb.ad ], [ 0, %.lr.ph300.i.preheader ] ; 4 uses
  %i.bk = phi <2 x float> [ %i.fj, %bb.ad ], [ %.lcssa363, %.lr.ph300.i.preheader ]
  %i.bl = add nuw nsw i64 %.sroa.078.0296.i, 1    ; 2 uses
  %i.bm = add nuw i64 %.sroa.078.0296.i, %i.q
  %..i135.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.bm)
  %i.bn = shl nuw nsw i64 %..i135.i, 1            ; 3 uses
  %i.bo = sub nsw i64 %.sroa.078.0296.i, %i.p
  %..i136.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bo, i64 0)
  %i.bp = shl nuw i64 %..i136.i, 1                ; 3 uses
  %i.bq = shl nuw nsw i64 %.sroa.078.0296.i, 1    ; 4 uses
  %i.br = or disjoint i64 %i.bq, 1
  %or.cond115.not.i = icmp ult i64 %i.br, %i.az
  br i1 %or.cond115.not.i, label %bb.w, label %bb.z, !prof !20

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i, %bb.k, %._crit_edge301.i
  %.sroa.083.0.i = phi i64 [ %i.p, %._crit_edge301.i ], [ %i.ah, %bb.k ], [ %i.ah, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ] ; 2 uses
  %i.bs = phi <2 x float> [ %i.bj, %._crit_edge301.i ], [ %i.bj, %bb.k ], [ %i.dd, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ]
  %i.bt = icmp ult i64 %.sroa.083.0.i, %i.h
  br i1 %i.bt, label %.lr.ph312.i, label %.loopexit.i

bb.j:                                             ; preds = %._crit_edge301.i
  %.not103.i = icmp ugt i64 %i.al, %i.az
  %or.cond112.i = or i1 %i.am, %.not103.i
  br i1 %or.cond112.i, label %bb.l, label %bb.k, !prof !18

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ak ; 2 uses
  %i.bv = sub nuw i64 %i.bc, %i.ak
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.ai ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.ao
  %i.by = lshr i64 %i.bc, 1
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.by
  %i.ca = lshr i64 %i.bv, 1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !505
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutAtj2_EINtBZ_4IterB1p_EEINtB5_7ZipImplBW_B1v_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bz)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.cb), !noalias !506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !505
  %.sroa.0170.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !496 ; 2 uses
  %.sroa.4172.0.copyload.i = load ptr, ptr %.sroa.4172.0..sroa_idx.i, align 8, !noalias !496 ; 2 uses
  %.sroa.5174.0.copyload.i = load i64, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !496
  %.sroa.6176.0.copyload.i = load ptr, ptr %.sroa.6176.0..sroa_idx.i, align 8, !noalias !496 ; 2 uses
  %.sroa.7178.0.copyload.i = load i64, ptr %.sroa.7178.0..sroa_idx.i, align 8, !noalias !496 ; 2 uses
  %.sroa.9179.0.copyload.i = load i64, ptr %.sroa.9179.0..sroa_idx.i, align 8, !noalias !496 ; 2 uses
  %i.cc = icmp ult i64 %.sroa.7178.0.copyload.i, %.sroa.9179.0.copyload.i
  br i1 %i.cc, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0170.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4172.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6176.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.ai, i64 noundef %i.al, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i
  %.sroa.7178.0304.i = phi i64 [ %.sroa.7178.0.copyload.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.ce, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ] ; 3 uses
  %i.cd = phi <2 x float> [ %i.bj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i ], [ %i.dd, %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i ] ; 3 uses
  %i.ce = add i64 %.sroa.7178.0304.i, 1           ; 2 uses
  %i.cf = add i64 %.sroa.7178.0304.i, %.sroa.5174.0.copyload.i ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0170.0.copyload.i, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4172.0.copyload.i, i64 %i.cf
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6176.0.copyload.i, i64 %.sroa.7178.0304.i
  %i.cj = extractelement <2 x float> %i.cd, i64 0
  %i.ck = fmul float %i.s, %i.cj
  %i.cl = call float @llvm.round.f32(float %i.ck)
  %i.cm = call nsz float @llvm.minimumnum.f32(float %i.cl, float 6.553500e+04)
  %i.cn = call nsz float @llvm.maximumnum.f32(float %i.cm, float 0.000000e+00) ; 2 uses
  %i.co = fcmp olt float %i.cn, 6.553600e+04
  br i1 %i.co, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i, label %bb.m, !prof !19

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i
  %i.cp = fptoui float %i.cn to i16
  store i16 %i.cp, ptr %i.cg, align 2
  %i.cq = extractelement <2 x float> %i.cd, i64 1
  %i.cr = fmul float %i.s, %i.cq
  %i.cs = call float @llvm.round.f32(float %i.cr)
  %i.ct = call nsz float @llvm.minimumnum.f32(float %i.cs, float 6.553500e+04)
  %i.cu = call nsz float @llvm.maximumnum.f32(float %i.ct, float 0.000000e+00) ; 2 uses
  %i.cv = fcmp olt float %i.cu, 6.553600e+04
  br i1 %i.cv, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i, label %bb.n, !prof !19

bb.n:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit140.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit.i
  %i.cw = fptoui float %i.cu to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  store i16 %i.cw, ptr %i.cx, align 2
  %i.cy = load <2 x i16>, ptr %i.ci, align 2
  %i.cz = uitofp <2 x i16> %i.cy to <2 x float>
  %i.da = fadd <2 x float> %i.cd, %i.cz
  %i.db = load <2 x i16>, ptr %i.ch, align 2
  %i.dc = uitofp <2 x i16> %i.db to <2 x float>
  %i.dd = fsub <2 x float> %i.da, %i.dc           ; 2 uses
  %exitcond400.not.i = icmp eq i64 %i.ce, %.sroa.9179.0.copyload.i
  br i1 %exitcond400.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i

.lr.ph312.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.v
  %.sroa.083.1309.i = phi i64 [ %i.df, %bb.v ], [ %.sroa.083.0.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 4 uses
  %i.de = phi <2 x float> [ %i.el, %bb.v ], [ %i.bs, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtNtBb_5slice4iter7IterMutAtj2_EINtB13_4IterB1t_EEB1z_EINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ] ; 3 uses
  %i.df = add i64 %.sroa.083.1309.i, 1            ; 2 uses
  %i.dg = add nuw i64 %.sroa.083.1309.i, %i.q
  %..i141.i = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.dg)
  %i.dh = shl nuw nsw i64 %..i141.i, 1            ; 3 uses
  %i.di = sub nsw i64 %.sroa.083.1309.i, %i.p     ; 2 uses
  %..i142.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.di, i64 0)
  %i.dj = shl nuw i64 %..i142.i, 1                ; 3 uses
  %i.dk = shl nuw nsw i64 %.sroa.083.1309.i, 1    ; 3 uses
  %i.dl = add nuw nsw i64 %i.dk, 2                ; 2 uses
  %.not105.i = icmp ugt i64 %i.dl, %i.az
  br i1 %.not105.i, label %bb.r, label %bb.o, !prof !12

bb.o:                                             ; preds = %.lr.ph312.i
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.dk ; 2 uses
  %i.dn = extractelement <2 x float> %i.de, i64 0
  %i.do = fmul float %i.s, %i.dn
  %i.dp = call float @llvm.round.f32(float %i.do)
  %i.dq = call nsz float @llvm.minimumnum.f32(float %i.dp, float 6.553500e+04)
  %i.dr = call nsz float @llvm.maximumnum.f32(float %i.dq, float 0.000000e+00) ; 2 uses
  %i.ds = fcmp olt float %i.dr, 6.553600e+04
  br i1 %i.ds, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i, label %bb.p, !prof !19

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i: ; preds = %bb.o
  %i.dt = fptoui float %i.dr to i16
  store i16 %i.dt, ptr %i.dm, align 2
  %i.du = extractelement <2 x float> %i.de, i64 1
  %i.dv = fmul float %i.s, %i.du
  %i.dw = call float @llvm.round.f32(float %i.dv)
  %i.dx = call nsz float @llvm.minimumnum.f32(float %i.dw, float 6.553500e+04)
  %i.dy = call nsz float @llvm.maximumnum.f32(float %i.dx, float 0.000000e+00) ; 2 uses
  %i.dz = fcmp olt float %i.dy, 6.553600e+04
  br i1 %i.dz, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit143.i
  %i.ea = fptoui float %i.dy to i16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  store i16 %i.ea, ptr %i.eb, align 2
  %9 = add nuw nsw i64 %i.dh, 2                   ; 2 uses
  %.not106.i = icmp ugt i64 %9, %i.bc
  br i1 %.not106.i, label %bb.s, label %bb.t, !prof !18

bb.r:                                             ; preds = %.lr.ph312.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dk, i64 noundef %i.dl, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

bb.s:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dh, i64 noundef %9, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.t:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit144.i
  %i.ec = add i64 %i.dj, 2                        ; 2 uses
  %i.ed = icmp eq i64 %i.di, 9223372036854775807
  %.not107.i = icmp ugt i64 %i.ec, %i.bc
  %or.cond114.i = or i1 %i.ed, %.not107.i
  br i1 %or.cond114.i, label %bb.u, label %bb.v, !prof !18

bb.u:                                             ; preds = %bb.t
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dj, i64 noundef %i.ec, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #20
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dh
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.dj
  %i.eg = load <2 x i16>, ptr %i.ee, align 2
  %i.eh = uitofp <2 x i16> %i.eg to <2 x float>
  %i.ei = fadd <2 x float> %i.de, %i.eh
  %i.ej = load <2 x i16>, ptr %i.ef, align 2
  %i.ek = uitofp <2 x i16> %i.ej to <2 x float>
  %i.el = fsub <2 x float> %i.ei, %i.ek
  %exitcond401.not.i = icmp eq i64 %i.df, %i.h
  br i1 %exitcond401.not.i, label %.loopexit.i, label %.lr.ph312.i

bb.w:                                             ; preds = %.lr.ph300.i
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.bq ; 2 uses
  %i.en = fmul float %i.s, %.sroa.013.1297.i
  %i.eo = call float @llvm.round.f32(float %i.en)
  %i.ep = call nsz float @llvm.minimumnum.f32(float %i.eo, float 6.553500e+04)
  %i.eq = call nsz float @llvm.maximumnum.f32(float %i.ep, float 0.000000e+00) ; 2 uses
  %i.er = fcmp olt float %i.eq, 6.553600e+04
  br i1 %i.er, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i, label %bb.x, !prof !19

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i: ; preds = %bb.w
  %i.es = fptoui float %i.eq to i16
  store i16 %i.es, ptr %i.em, align 2
  %i.et = fmul float %i.s, %.sroa.0.1298.i
  %i.eu = call float @llvm.round.f32(float %i.et)
  %i.ev = call nsz float @llvm.minimumnum.f32(float %i.eu, float 6.553500e+04)
  %i.ew = call nsz float @llvm.maximumnum.f32(float %i.ev, float 0.000000e+00) ; 2 uses
  %i.ex = fcmp olt float %i.ew, 6.553600e+04
  br i1 %i.ex, label %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i, label %bb.y, !prof !19

bb.y:                                             ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20
  unreachable

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i: ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit145.i
  %i.ey = fptoui float %i.ew to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  store i16 %i.ey, ptr %i.ez, align 2
  %10 = add nuw nsw i64 %i.bn, 2                  ; 2 uses
  %.not109.i = icmp ugt i64 %10, %i.bc
  br i1 %.not109.i, label %bb.aa, label %bb.ab, !prof !18

bb.z:                                             ; preds = %.lr.ph300.i
  %i.fa = add nuw i64 %i.bq, 2
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bq, i64 noundef %i.fa, i64 noundef %i.az, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.aa:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bn, i64 noundef %10, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20
  unreachable

bb.ab:                                            ; preds = %_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur23rounding_saturating_multEB6_.exit146.i
  %i.fb = add nuw i64 %i.bp, 2                    ; 2 uses
  %.not110.i = icmp ugt i64 %i.fb, %i.bc
  br i1 %.not110.i, label %bb.ac, label %bb.ad, !prof !18

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.bp, i64 noundef %i.fb, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bn
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bp
  %i.fe = load <2 x i16>, ptr %i.fc, align 2
  %i.ff = uitofp <2 x i16> %i.fe to <2 x float>
  %i.fg = fadd <2 x float> %i.bk, %i.ff
  %i.fh = load <2 x i16>, ptr %i.fd, align 2
  %i.fi = uitofp <2 x i16> %i.fh to <2 x float>
  %i.fj = fsub <2 x float> %i.fg, %i.fi           ; 4 uses
  %i.fk = extractelement <2 x float> %i.fj, i64 1
  %i.fl = extractelement <2 x float> %i.fj, i64 0
  %exitcond399.not.i = icmp eq i64 %i.bl, %..i134.i
  br i1 %exitcond399.not.i, label %._crit_edge301.i, label %.lr.ph300.i

.loopexit:                                        ; preds = %.lr.ph.i.epil.preheader, %.lr.ph.i, %.lr.ph.i.1
  %.lcssa.a = phi i64 [ %i.fn, %.lr.ph.i.1 ], [ %i.bi, %.lr.ph.i ], [ %i.fz, %.lr.ph.i.epil.preheader ]
  %.lcssa = phi i64 [ %11, %.lr.ph.i.1 ], [ %8, %.lr.ph.i ], [ %12, %.lr.ph.i.epil.preheader ]
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.lcssa.a, i64 noundef %.lcssa, i64 noundef %i.bc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #20
  unreachable

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.fm = add nuw i64 %.sroa.0155.0292.i, 1
  %..i.i.1 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %i.fm)
  %i.fn = shl nuw nsw i64 %..i.i.1, 1             ; 3 uses
  %11 = add nuw nsw i64 %i.fn, 2                  ; 2 uses
  %.not111.i.1 = icmp ugt i64 %11, %i.bc
  br i1 %.not111.i.1, label %.loopexit, label %bb.ae, !prof !18

bb.ae:                                            ; preds = %.lr.ph.i.1
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.bi
  %i.fp = load <2 x i16>, ptr %i.fo, align 2
  %i.fq = uitofp <2 x i16> %i.fp to <2 x float>
  %i.fr = fadd <2 x float> %i.bh, %i.fq
  %i.fs = add nuw i64 %.sroa.0155.0292.i, 2       ; 2 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.fn
  %i.fu = load <2 x i16>, ptr %i.ft, align 2
  %i.fv = uitofp <2 x i16> %i.fu to <2 x float>
  %i.fw = fadd <2 x float> %i.fr, %i.fv           ; 5 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph300.i.preheader.unr-lcssa, label %.lr.ph.i

.lr.ph300.i.preheader.unr-lcssa:                  ; preds = %bb.ae
  %i.fx = extractelement <2 x float> %i.fw, i64 1
  %i.fy = extractelement <2 x float> %i.fw, i64 0
  br i1 %lcmp.mod.not, label %.lr.ph300.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %bb.i, %.lr.ph300.i.preheader.unr-lcssa
  %.sroa.0155.0292.i.epil.init = phi i64 [ 1, %bb.i ], [ %i.fs, %.lr.ph300.i.preheader.unr-lcssa ]
  %.epil.init = phi <2 x float> [ %i.bg, %bb.i ], [ %i.fw, %.lr.ph300.i.preheader.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod447)
  %..i.i.epil = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 0, -1) %i.t, i64 %.sroa.0155.0292.i.epil.init)
  %i.fz = shl nuw nsw i64 %..i.i.epil, 1          ; 3 uses
  %12 = add nuw nsw i64 %i.fz, 2                  ; 2 uses
  %.not111.i.epil = icmp ugt i64 %12, %i.bc
  br i1 %.not111.i.epil, label %.loopexit, label %.lr.ph300.i.preheader.epilog-lcssa, !prof !18

.lr.ph300.i.preheader.epilog-lcssa:               ; preds = %.lr.ph.i.epil.preheader
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.fz
  %i.gb = load <2 x i16>, ptr %i.ga, align 2
  %i.gc = uitofp <2 x i16> %i.gb to <2 x float>
  %i.gd = fadd <2 x float> %.epil.init, %i.gc     ; 3 uses
  %i.ge = extractelement <2 x float> %i.gd, i64 0
  %i.gf = extractelement <2 x float> %i.gd, i64 1
  br label %.lr.ph300.i.preheader

.lr.ph300.i.preheader:                            ; preds = %.lr.ph300.i.preheader.unr-lcssa, %.lr.ph300.i.preheader.epilog-lcssa
  %.lcssa363 = phi <2 x float> [ %i.fw, %.lr.ph300.i.preheader.unr-lcssa ], [ %i.gd, %.lr.ph300.i.preheader.epilog-lcssa ]
  %.lcssa362 = phi float [ %i.fy, %.lr.ph300.i.preheader.unr-lcssa ], [ %i.ge, %.lr.ph300.i.preheader.epilog-lcssa ]
  %.lcssa361 = phi float [ %i.fx, %.lr.ph300.i.preheader.unr-lcssa ], [ %i.gf, %.lr.ph300.i.preheader.epilog-lcssa ]
  br label %.lr.ph300.i

_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur29box_blur_horizontal_pass_impltKj2_EB6_.exit: ; preds = %.loopexit.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter14ChunksExactMuttEINtBZ_11ChunksExacttEEINtB5_7ZipImplBW_B1z_E4nextCsa5QsYiPB8Gl_5image.exit.i, %_RNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur16test_radius_size.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !496
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur9fast_blurINtNtB6_5color3RgbfEEB6_(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, float noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [64 x i8], align 8                ; 11 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 5 uses
  %i.o = alloca [40 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [64 x i8], align 8                ; 8 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 13 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load i32, ptr %i.u, align 8, !noundef !5 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.val18 = load i32, ptr %i.v, align 4, !noundef !5 ; 6 uses
  %i.w = icmp eq i32 %.val, 0
  %i.x = icmp eq i32 %.val18, 0
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsI_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
  br label %bb.bd

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.y = fmul float %2, %2                        ; 2 uses
  %i.z = fmul float %i.y, 1.200000e+01
  %i.aa = fdiv float %i.z, 3.000000e+00
  %i.ab = fadd float %i.aa, 1.000000e+00
  %i.ac = tail call float @llvm.sqrt.f32(float %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !519
  %i.ad = tail call float @llvm.floor.f32(float %i.ac) ; 3 uses
  %i.ae = frem float %i.ad, 2.000000e+00
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  %i.ag = fadd float %i.ad, -1.000000e+00
  %storemerge.i = select i1 %i.af, float %i.ag, float %i.ad ; 4 uses
  store float %storemerge.i, ptr %i.l, align 4, !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !519
  %i.ah = fadd float %storemerge.i, 2.000000e+00
  store float %i.ah, ptr %i.k, align 4, !noalias !519
  %i.ai = fadd float %storemerge.i, 3.000000e+00
  %i.aj = fmul float %i.ai, 7.500000e-01
  %i.ak = fmul float %i.y, 3.000000e+00
  %i.al = fadd float %storemerge.i, 1.000000e+00
  %i.am = fdiv float 1.000000e+00, %i.al
  %i.an = fmul float %i.ak, %i.am
  %i.ao = fsub float %i.aj, %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !519
  %i.ap = tail call float @llvm.round.f32(float %i.ao)
  %i.aq = tail call i64 @llvm.fptoui.sat.i64.f32(float %i.ap)
  store i64 %i.aq, ptr %i.j, align 8, !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !519
  store ptr %i.j, ptr %i.i, align 8, !noalias !519
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.l, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !519
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !519
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !519
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !519
  call void @_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecjEINtB4_18SpecFromIterNestedjINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapIB1x_INtNtNtB1F_3ops5range5RangejENCNvNtNtCsa5QsYiPB8Gl_5image8imageops9fast_blur15boxes_for_gauss0ENCB2U_s_0EE9from_iterB30_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !519
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !noundef !5 ; 2 uses
  %i.at = icmp ult i64 %i.as, 1152921504606846976
  call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE15as_flat_samplesB9_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXsI_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB9_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1)
          to label %bb.bn unwind label %bb.f

.body:                                            ; preds = %bb.ay, %bb.o, %bb.f, %bb.bm, %.body26
  %.pn16 = phi { ptr, i32 } [ %.pn.pn, %.body26 ], [ %i.es, %bb.bm ], [ %i.bu, %bb.o ], [ %i.av, %bb.f ], [ %i.ef, %bb.ay ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #22
          to label %common.resume unwind label %bb.be

bb.f:                                             ; preds = %bb.az, %bb.n, %bb.m, %bb.k, %bb.i, %bb.e, %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.s, align 8, !nonnull !5, !align !21, !noundef !5
  %i.ax = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.az = zext i32 %.val to i64                   ; 8 uses
  %i.ba = zext i32 %.val18 to i64                 ; 7 uses
  %i.bb = mul nuw i64 %i.ba, %i.az
  %i.bc = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bb, i64 3) ; 2 uses
  %i.bd = extractvalue { i64, i1 } %i.bc, 1
  br i1 %i.bd, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 2, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i21, align 8, !alias.scope !520
  store i8 7, ptr %i.r, align 8, !alias.scope !520
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @22, ptr noundef nonnull inttoptr (i64 115 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #24
          to label %bb.l unwind label %bb.bm

bb.i:                                             ; preds = %bb.g
  %i.be = extractvalue { i64, i1 } %i.bc, 0       ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !alias.scope !520
  store i8 -1, ptr %i.r, align 8, !alias.scope !520
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtCsa5QsYiPB8Gl_5image5error10ImageErrorEEB12_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.r)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.ar, align 8, !noundef !5
  %.not10 = icmp eq i64 %i.bh, 0
  br i1 %.not10, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.aw, %bb.k, %bb.h
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.bg, align 8, !nonnull !5, !noundef !5
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !521
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.be, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.m
  %i.bk = load i64, ptr %i.g, align 8, !range !13, !noalias !521, !noundef !5
  %i.bl = trunc nuw i64 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !14, !noalias !521, !noundef !5 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.bl, label %bb.n, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i, !prof !12

bb.n:                                             ; preds = %.noexc
  %i.bp = load i64, ptr %i.bo, align 8, !noalias !521
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bn, i64 %i.bp) #24
          to label %.noexc22 unwind label %bb.f

.noexc22:                                         ; preds = %bb.n
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.noexc
  %i.bq = load ptr, ptr %i.bo, align 8, !noalias !521, !nonnull !5, !noundef !5
  %i.br = icmp ule i64 %i.be, %i.bn
  call void @llvm.assume(i1 %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !521
end_hunk_0
