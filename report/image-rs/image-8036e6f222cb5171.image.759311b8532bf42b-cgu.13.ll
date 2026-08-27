Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.13?download=true
inline.NumInlined: 1791
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutffEBa_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  switch i8 %.2.val, label %bb.r [
    i8 1, label %bb.s
    i8 2, label %bb.ai
    i8 4, label %bb.t
    i8 5, label %bb.u
    i8 6, label %bb.v
    i8 7, label %bb.w
    i8 8, label %bb.x
    i8 9, label %bb.y
    i8 10, label %bb.z
    i8 11, label %bb.aa
    i8 12, label %bb.ab
    i8 22, label %bb.ac
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @137, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.t:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.u:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.w:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.x:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.y:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.z:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.aa:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.ab:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.ac:                                            ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1359
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.s ], [ 3.160000e-01, %bb.t ], [ 3.290300e-01, %bb.u ], [ 3.290300e-01, %bb.v ], [ 3.290300e-01, %bb.w ], [ 3.160000e-01, %bb.x ], [ 3.290300e-01, %bb.y ], [ f0x3EAAAAAB, %bb.z ], [ 3.510000e-01, %bb.aa ], [ 3.290300e-01, %bb.ab ], [ 3.290300e-01, %bb.ac ]
  %.sroa.0.0.i = phi float [ 3.127200e-01, %bb.s ], [ 3.100000e-01, %bb.t ], [ 3.127200e-01, %bb.u ], [ 3.127200e-01, %bb.v ], [ 3.127200e-01, %bb.w ], [ 3.100000e-01, %bb.x ], [ 3.127200e-01, %bb.y ], [ f0x3EAAAAAB, %bb.z ], [ 3.140000e-01, %bb.aa ], [ 3.127200e-01, %bb.ab ], [ 3.127200e-01, %bb.ac ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.l, float noundef %.sroa.0.0.i, float noundef %.sroa.12.0.i)
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ae:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbffEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaffEBa_.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1330
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.af

bb.af:                                            ; preds = %.loopexit5, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.loopexit:                                        ; preds = %bb.an, %bb.ao, %bb.aq, %bb.ar, %bb.aw, %bb.ay, %bb.az, %bb.ba
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ai, %bb.ad, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #20
          to label %common.resume unwind label %bb.bb

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.dc, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit

bb.ai:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.r, ptr noundef nonnull %3)
          to label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit unwind label %.loopexit.split-lp

_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit: ; preds = %bb.ai, %bb.ah
  %i.dd = icmp eq i8 %4, 0
  %spec.select = select i1 %i.dd, i64 3, i64 4
  %i.de = udiv i64 %2, %spec.select
  %i.df = icmp eq i8 %5, 3
  %i.dg = zext i1 %i.df to i64
  %i.dh = shl nuw nsw i64 %i.de, %i.dg
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.dh, float noundef 0.000000e+00)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit: ; preds = %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false), !noalias !1365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1365
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false), !noalias !1365
  br i1 %trunc.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit215.i

.loopexit.loopexit215.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %i.dm = udiv i64 %2, 3
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %i.dn = lshr i64 %2, 2
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit215.i
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit.i ], [ 3, %.loopexit.loopexit215.i ]
  %.sroa.0.2.i = phi i64 [ %i.dn, %.loopexit.loopexit.i ], [ %i.dm, %.loopexit.loopexit215.i ] ; 5 uses
  %i.do = icmp eq i8 %5, 3                        ; 3 uses
  %.sroa.019.0.i = select i1 %i.do, i64 4, i64 3
  %i.dp = add nuw nsw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %i.dp, 8           ; 2 uses
  %.not211.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not211.i, label %.loopexit5, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %.loopexit.i
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.44.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.55.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.r, align 4, !alias.scope !1362, !noalias !1368 ; 6 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ds = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1362, !noalias !1368 ; 8 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.43.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i112.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %broadcast.splatinsert236 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat237 = shufflevector <4 x float> %broadcast.splatinsert236, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat239 = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat241 = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat215 = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat217 = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ax, %.lr.ph214.i
  %.sroa.041.0213.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph214.i ], [ %i.du, %bb.ax ]
  %.sroa.038.0212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.dt, %bb.ax ] ; 12 uses
  %i.dt = add nuw nsw i64 %.sroa.038.0212.i, 256  ; 2 uses
  %i.du = add nsw i64 %.sroa.041.0213.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.dt) ; 9 uses
  %i.dv = sub nsw i64 %..i.i, %.sroa.038.0212.i   ; 9 uses
  %i.dw = mul i64 %i.dv, %.sroa.017.0.i           ; 8 uses
  %i.dx = icmp ult i64 %i.dw, 1025
  br i1 %i.dx, label %bb.ak, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.av, %bb.au, %bb.at, %bb.as, %bb.ap, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.am, %bb.al, %bb.aj
  %6 = phi i64 [ %.sroa.038.0212.i, %bb.au ], [ 0, %bb.aj ], [ %i.dy, %bb.al ], [ %i.eb, %bb.am ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ap ], [ %i.ih, %bb.as ], [ %i.ik, %bb.at ], [ %i.io, %bb.av ]
  %7 = phi i64 [ %..i.i, %bb.au ], [ %i.dw, %bb.aj ], [ %i.dz, %bb.al ], [ %i.ec, %bb.am ], [ %i.hp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gy, %bb.ap ], [ %i.ii, %bb.as ], [ %i.il, %bb.at ], [ %i.ip, %bb.av ]
  %8 = phi i64 [ %i.dl, %bb.au ], [ 1024, %bb.aj ], [ %2, %bb.al ], [ %2, %bb.am ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.dw, %bb.ap ], [ %i.dl, %bb.as ], [ %i.dl, %bb.at ], [ %i.dl, %bb.av ]
  %9 = phi ptr [ @44, %bb.au ], [ @48, %bb.aj ], [ @37, %bb.al ], [ @38, %bb.am ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ap ], [ @42, %bb.as ], [ @43, %bb.at ], [ @45, %bb.av ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ak:                                            ; preds = %bb.aj
  br i1 %trunc.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dy = mul nuw nsw i64 %.sroa.038.0212.i, 3    ; 2 uses
  %i.dz = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.ea = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not73.i = icmp samesign ugt i64 %i.dz, %2
  %or.cond.i = or i1 %i.ea, %.not73.i
  br i1 %or.cond.i, label %.invoke, label %bb.an, !prof !1370

bb.am:                                            ; preds = %bb.ak
  %i.eb = shl nuw nsw i64 %.sroa.038.0212.i, 2    ; 3 uses
  %i.ec = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.ed = icmp samesign ult i64 %i.ec, %i.eb
  %.not72.i = icmp samesign ugt i64 %i.ec, %2
  %or.cond81.i = or i1 %i.ed, %.not72.i
  br i1 %or.cond81.i, label %.invoke, label %bb.ao, !prof !1370

bb.an:                                            ; preds = %bb.al
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1365
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dz
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dw
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 %i.ee, ptr noundef nonnull readonly %i.ef, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.eg)
          to label %.noexc9 unwind label %.loopexit

.noexc9:                                          ; preds = %bb.an
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !1371 ; 8 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1371 ; 8 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1371 ; 5 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1371 ; 5 uses
  %i.eh = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.eh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %.loopexit289.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc9
  %.sroa.44.0.copyload.i.i265 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i.i266 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.ei = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check269 = icmp ult i64 %i.ei, 8
  %i.ej = sub i64 %.sroa.0.0.copyload.i.i266, %.sroa.44.0.copyload.i.i265
  %diff.check267 = icmp ugt i64 %i.ej, -32
  %or.cond = select i1 %min.iters.check269, i1 true, i1 %diff.check267
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph270

vector.ph270:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec271 = and i64 %i.ei, -8                   ; 3 uses
  %i.ek = add i64 %.sroa.55.0.copyload.i.i, %n.vec271
  br label %vector.body272

vector.body272:                                   ; preds = %vector.body272, %vector.ph270
  %index273 = phi i64 [ 0, %vector.ph270 ], [ %index.next276, %vector.body272 ] ; 2 uses
  %i.el = add nuw i64 %.sroa.55.0.copyload.i.i, %index273 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.el ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load274 = load <4 x float>, ptr %i.em, align 4, !noalias !1362
  %wide.load275 = load <4 x float>, ptr %i.eo, align 4, !noalias !1362
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x float> %wide.load274, ptr %i.en, align 4, !noalias !1362
  store <4 x float> %wide.load275, ptr %i.ep, align 4, !noalias !1362
  %index.next276 = add nuw i64 %index273, 8       ; 2 uses
  %i.eq = icmp eq i64 %index.next276, %n.vec271
  br i1 %i.eq, label %middle.block277, label %vector.body272, !llvm.loop !1375

middle.block277:                                  ; preds = %vector.body272
  %cmp.n278 = icmp eq i64 %i.ei, %n.vec271
  br i1 %cmp.n278, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block277
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ek, %middle.block277 ] ; 4 uses
  %i.er = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter285 = and i64 %i.er, 3                 ; 2 uses
  %lcmp.mod286.not = icmp eq i64 %xtraiter285, 0
  br i1 %lcmp.mod286.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.eu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.eu = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.ev = load float, ptr %i.es, align 4, !noalias !1362, !noundef !7
  store float %i.ev, ptr %i.et, align 4, !noalias !1362
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter285
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1378

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.eu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.ew = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.ex = icmp ugt i64 %i.ew, -4
  br i1 %i.ex, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.fm, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.fa = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.fb = load float, ptr %i.ey, align 4, !noalias !1362, !noundef !7
  store float %i.fb, ptr %i.ez, align 4, !noalias !1362
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fa
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fa
  %i.fe = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.ff = load float, ptr %i.fc, align 4, !noalias !1362, !noundef !7
  store float %i.ff, ptr %i.fd, align 4, !noalias !1362
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fe
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fe
  %i.fi = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.fj = load float, ptr %i.fg, align 4, !noalias !1362, !noundef !7
  store float %i.fj, ptr %i.fh, align 4, !noalias !1362
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.fi
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fi
  %i.fm = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.fn = load float, ptr %i.fk, align 4, !noalias !1362, !noundef !7
  store float %i.fn, ptr %i.fl, align 4, !noalias !1362
  %exitcond.not.i.i6.3 = icmp eq i64 %i.fm, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i6.3, label %.loopexit289.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1380

bb.ao:                                            ; preds = %bb.am
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1365
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ec
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dw
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.fo, ptr noundef nonnull readonly %i.fp, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.fq)
          to label %.noexc11 unwind label %.loopexit

.noexc11:                                         ; preds = %bb.ao
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1381 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1381 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1381 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1381 ; 5 uses
  %i.fr = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.fr, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit288.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc11
  %.sroa.44.0.copyload.i88.i249 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i250 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.fs = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check253 = icmp ult i64 %i.fs, 8
  %i.ft = sub i64 %.sroa.0.0.copyload.i86.i250, %.sroa.44.0.copyload.i88.i249
  %diff.check251 = icmp ugt i64 %i.ft, -32
  %or.cond280 = select i1 %min.iters.check253, i1 true, i1 %diff.check251
  br i1 %or.cond280, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph254

vector.ph254:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec255 = and i64 %i.fs, -8                   ; 3 uses
  %i.fu = add i64 %.sroa.55.0.copyload.i90.i, %n.vec255
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next260, %vector.body256 ] ; 2 uses
  %i.fv = add nuw i64 %.sroa.55.0.copyload.i90.i, %index257 ; 2 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fv ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fv ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %wide.load258 = load <4 x float>, ptr %i.fw, align 4, !noalias !1362
  %wide.load259 = load <4 x float>, ptr %i.fy, align 4, !noalias !1362
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <4 x float> %wide.load258, ptr %i.fx, align 4, !noalias !1362
  store <4 x float> %wide.load259, ptr %i.fz, align 4, !noalias !1362
  %index.next260 = add nuw i64 %index257, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next260, %n.vec255
  br i1 %i.ga, label %middle.block261, label %vector.body256, !llvm.loop !1385

middle.block261:                                  ; preds = %vector.body256
  %cmp.n262 = icmp eq i64 %i.fs, %n.vec255
  br i1 %cmp.n262, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block261
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.fu, %middle.block261 ] ; 4 uses
  %i.gb = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter287 = and i64 %i.gb, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.ge, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.ge = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.gf = load float, ptr %i.gc, align 4, !noalias !1362, !noundef !7
  store float %i.gf, ptr %i.gd, align 4, !noalias !1362
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1386

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.ge, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.gg = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.gh = icmp ugt i64 %i.gg, -4
  br i1 %i.gh, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.gw, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.gk = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.gl = load float, ptr %i.gi, align 4, !noalias !1362, !noundef !7
  store float %i.gl, ptr %i.gj, align 4, !noalias !1362
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gk
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gk
  %i.go = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.gp = load float, ptr %i.gm, align 4, !noalias !1362, !noundef !7
  store float %i.gp, ptr %i.gn, align 4, !noalias !1362
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.go
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.go
  %i.gs = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.gt = load float, ptr %i.gq, align 4, !noalias !1362, !noundef !7
  store float %i.gt, ptr %i.gr, align 4, !noalias !1362
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.gs
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.gs
  %i.gw = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.gx = load float, ptr %i.gu, align 4, !noalias !1362, !noundef !7
  store float %i.gx, ptr %i.gv, align 4, !noalias !1362
  %exitcond.not.i96.i.3 = icmp eq i64 %i.gw, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit288.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1387

bb.ap:                                            ; preds = %.loopexit288.i, %.loopexit289.i
  %i.gy = mul i64 %i.dv, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.gy, %i.dw
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !1370

.loopexit289.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block277, %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1365
  br i1 %i.do, label %bb.aq, label %bb.ap

.loopexit288.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block261, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1365
  br i1 %i.do, label %bb.ap, label %bb.ar

bb.aq:                                            ; preds = %.loopexit289.i
  %.lhs.trunc157.i = trunc nuw nsw i64 %i.dw to i16
  %i.gz = udiv i16 %.lhs.trunc157.i, 3
  %.zext158.i = zext nneg i16 %i.gz to i64
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext158.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1365
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.ha, ptr noundef nonnull %i.i, ptr noundef nonnull %i.dq)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.aq
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1365 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1365
  %i.hb = icmp eq i64 %i.dv, 0
  br i1 %i.hb, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc12
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8133.0205.i = phi i64 [ %i.hc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dv, %.lr.ph.preheader.i ]
  %.sroa.5131.0204.i = phi i64 [ %i.hf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5131.0204.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.hc = add i64 %.sroa.8133.0205.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.hd = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5131.0204.i ; 3 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5131.0204.i ; 3 uses
  %i.hf = add i64 %.sroa.5131.0204.i, 1
  %i.hg = load float, ptr %i.hd, align 4, !noalias !1362, !noundef !7
  store float %i.hg, ptr %i.he, align 4, !noalias !1362
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hi = load float, ptr %i.hh, align 4, !noalias !1362, !noundef !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  store float %i.hi, ptr %i.hj, align 4, !noalias !1362
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hl = load float, ptr %i.hk, align 4, !noalias !1362, !noundef !7
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  %i.hn = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.hl, i64 0
  store <2 x float> %i.hn, ptr %i.hm, align 4, !noalias !1362
  %i.ho = icmp eq i64 %i.hc, 0
  br i1 %i.ho, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.hp = shl i64 %i.dv, 2                        ; 3 uses
  %i.hq = icmp ult i64 %i.hp, 1025
  br i1 %i.hq, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc14, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc12, %bb.ap
  %.sroa.7.0.i = phi i64 [ %i.ig, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.hp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gy, %bb.ap ], [ 0, %.noexc12 ], [ 0, %.noexc14 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ap ], [ %i.i, %.noexc12 ], [ %i.i, %.noexc14 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.as
    i8 1, label %bb.at
    i8 2, label %bb.au
    i8 3, label %bb.av
  ]

bb.ar:                                            ; preds = %.loopexit288.i
  %i.hr = lshr i64 %i.dw, 2
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.hr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1365
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.i, ptr noundef nonnull %i.dr)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.ar
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1365 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1365 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1365
  %i.ht = icmp eq i64 %i.dv, 0
  br i1 %i.ht, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph209.preheader.i

.lr.ph209.preheader.i:                            ; preds = %.noexc14
  %umax264.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph209.i

.lr.ph209.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph209.preheader.i
  %.sroa.8148.0208.i = phi i64 [ %i.hu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.dv, %.lr.ph209.preheader.i ]
  %.sroa.5146.0207.i = phi i64 [ %i.hx, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph209.preheader.i ] ; 4 uses
  %exitcond265.not.i = icmp eq i64 %.sroa.5146.0207.i, %umax264.i
  br i1 %exitcond265.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph209.i
  %i.hu = add i64 %.sroa.8148.0208.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5146.0207.i ; 3 uses
  %i.hw = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5146.0207.i ; 3 uses
  %i.hx = add i64 %.sroa.5146.0207.i, 1
  %i.hy = load float, ptr %i.hv, align 4, !noalias !1362, !noundef !7
  store float %i.hy, ptr %i.hw, align 4, !noalias !1362
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.ia = load float, ptr %i.hz, align 4, !noalias !1362, !noundef !7
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store float %i.ia, ptr %i.ib, align 4, !noalias !1362
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.id = load float, ptr %i.ic, align 4, !noalias !1362, !noundef !7
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store float %i.id, ptr %i.ie, align 4, !noalias !1362
  %i.if = icmp eq i64 %i.hu, 0
  br i1 %i.if, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph209.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph209.i
  %i.ig = mul nuw nsw i64 %i.dv, 3
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ih = mul nuw nsw i64 %.sroa.038.0212.i, 3    ; 2 uses
  %i.ii = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.ij = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not80.i = icmp samesign ugt i64 %i.ii, %i.dl
  %or.cond82.i = or i1 %i.ij, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.aw, !prof !1370

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ik = shl nuw nsw i64 %.sroa.038.0212.i, 2    ; 3 uses
  %i.il = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.im = icmp samesign ult i64 %i.il, %i.ik
  %.not79.i = icmp samesign ugt i64 %i.il, %i.dl
  %or.cond83.i = or i1 %i.im, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ay, !prof !1370

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.in = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0212.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.dl
  %or.cond84.i = or i1 %i.in, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.az, !prof !1370

bb.av:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.io = shl nuw nsw i64 %.sroa.038.0212.i, 1    ; 3 uses
  %i.ip = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.iq = icmp samesign ult i64 %i.ip, %i.io
  %.not77.i = icmp samesign ugt i64 %i.ip, %i.dl
  %or.cond85.i = or i1 %i.iq, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.ba, !prof !1370

bb.aw:                                            ; preds = %bb.as
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1365
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ii
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.is, ptr noundef nonnull align 4 %i.ir, ptr noundef nonnull %i.it)
          to label %.noexc17 unwind label %.loopexit

.noexc17:                                         ; preds = %bb.aw
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1389 ; 8 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1389 ; 8 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1389 ; 5 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1389 ; 5 uses
  %i.iu = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.iu, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i: ; preds = %.noexc17
  %.sroa.43.0.copyload.i.i187 = ptrtoaddr ptr %.sroa.43.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i101.i188 = ptrtoaddr ptr %.sroa.0.0.copyload.i101.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.iv = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.iv, 8
  %i.iw = sub i64 %.sroa.0.0.copyload.i101.i188, %.sroa.43.0.copyload.i.i187
  %diff.check = icmp ugt i64 %i.iw, -32
  %or.cond281 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond281, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i
  %n.vec = and i64 %i.iv, -8                      ; 3 uses
  %i.ix = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iy = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.iy ; 2 uses
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.iy ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %wide.load = load <4 x float>, ptr %i.iz, align 4, !noalias !1362
  %wide.load189 = load <4 x float>, ptr %i.jb, align 4, !noalias !1362
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store <4 x float> %wide.load, ptr %i.ja, align 4, !noalias !1362
  store <4 x float> %wide.load189, ptr %i.jc, align 4, !noalias !1362
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !1393

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.iv, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i104.i ], [ %i.ix, %middle.block ] ; 4 uses
  %i.je = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %xtraiter296 = and i64 %i.je, 3                 ; 2 uses
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol
  %.sroa.54.09.i.i.prol = phi i64 [ %i.jh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ], [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ] ; 3 uses
  %prol.iter298 = phi i64 [ %prol.iter298.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ]
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.prol
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.prol
  %i.jh = add nuw i64 %.sroa.54.09.i.i.prol, 1    ; 2 uses
  %i.ji = load float, ptr %i.jf, align 4, !noalias !1362, !noundef !7
  store float %i.ji, ptr %i.jg, align 4, !noalias !1362
  %prol.iter298.next = add i64 %prol.iter298, 1   ; 2 uses
  %prol.iter298.cmp.not = icmp eq i64 %prol.iter298.next, %xtraiter296
  br i1 %prol.iter298.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol, !llvm.loop !1394

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.preheader ], [ %i.jh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol ]
  %i.jj = sub i64 %.sroa.54.09.i.i.ph, %.sroa.7.0.copyload.i103.i
  %i.jk = icmp ugt i64 %i.jj, -4
  br i1 %i.jk, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i
  %.sroa.54.09.i.i = phi i64 [ %i.jz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit ] ; 6 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.jn = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.jo = load float, ptr %i.jl, align 4, !noalias !1362, !noundef !7
  store float %i.jo, ptr %i.jm, align 4, !noalias !1362
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jn
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jn
  %i.jr = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.js = load float, ptr %i.jp, align 4, !noalias !1362, !noundef !7
  store float %i.js, ptr %i.jq, align 4, !noalias !1362
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jr
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jr
  %i.jv = add nuw i64 %.sroa.54.09.i.i, 3         ; 2 uses
  %i.jw = load float, ptr %i.jt, align 4, !noalias !1362, !noundef !7
  store float %i.jw, ptr %i.ju, align 4, !noalias !1362
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.jv
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.jv
  %i.jz = add nuw i64 %.sroa.54.09.i.i, 4         ; 2 uses
  %i.ka = load float, ptr %i.jx, align 4, !noalias !1362, !noundef !7
  store float %i.ka, ptr %i.jy, align 4, !noalias !1362
  %exitcond.not.i106.i.3 = icmp eq i64 %i.jz, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i106.i.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i, !llvm.loop !1395

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i105.i, %middle.block, %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1365
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbfEBa_.exit.i
  %.not.i = icmp eq i64 %i.du, 0
  br i1 %.not.i, label %.loopexit5, label %bb.aj

bb.ay:                                            ; preds = %bb.at
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1365
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.il
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.kc, ptr noundef nonnull align 4 %i.kb, ptr noundef nonnull %i.kd)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.ay
  %.sroa.0.0.copyload.i107.i = load ptr, ptr %i.c, align 8, !noalias !1396 ; 8 uses
  %.sroa.43.0.copyload.i109.i = load ptr, ptr %.sroa.43.0..sroa_idx.i108.i, align 8, !noalias !1396 ; 8 uses
  %.sroa.54.0.copyload.i111.i = load i64, ptr %.sroa.54.0..sroa_idx.i110.i, align 8, !noalias !1396 ; 5 uses
  %.sroa.7.0.copyload.i113.i = load i64, ptr %.sroa.7.0..sroa_idx.i112.i, align 8, !noalias !1396 ; 5 uses
  %i.ke = icmp ult i64 %.sroa.54.0.copyload.i111.i, %.sroa.7.0.copyload.i113.i
  br i1 %i.ke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i: ; preds = %.noexc19
  %.sroa.43.0.copyload.i109.i191 = ptrtoaddr ptr %.sroa.43.0.copyload.i109.i to i64
  %.sroa.0.0.copyload.i107.i192 = ptrtoaddr ptr %.sroa.0.0.copyload.i107.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i107.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i109.i) ]
  %i.kf = sub nuw i64 %.sroa.7.0.copyload.i113.i, %.sroa.54.0.copyload.i111.i ; 3 uses
  %min.iters.check195 = icmp ult i64 %i.kf, 8
  %i.kg = sub i64 %.sroa.0.0.copyload.i107.i192, %.sroa.43.0.copyload.i109.i191
  %diff.check193 = icmp ugt i64 %i.kg, -32
  %or.cond282 = select i1 %min.iters.check195, i1 true, i1 %diff.check193
  br i1 %or.cond282, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader, label %vector.ph196

vector.ph196:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i
  %n.vec197 = and i64 %i.kf, -8                   ; 3 uses
  %i.kh = add i64 %.sroa.54.0.copyload.i111.i, %n.vec197
  br label %vector.body198

vector.body198:                                   ; preds = %vector.body198, %vector.ph196
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next202, %vector.body198 ] ; 2 uses
  %i.ki = add nuw i64 %.sroa.54.0.copyload.i111.i, %index199 ; 2 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i107.i, i64 %i.ki ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.43.0.copyload.i109.i, i64 %i.ki ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load200 = load <4 x float>, ptr %i.kj, align 4, !noalias !1362
  %wide.load201 = load <4 x float>, ptr %i.kl, align 4, !noalias !1362
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  store <4 x float> %wide.load200, ptr %i.kk, align 4, !noalias !1362
  store <4 x float> %wide.load201, ptr %i.km, align 4, !noalias !1362
  %index.next202 = add nuw i64 %index199, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.kn, label %middle.block203, label %vector.body198, !llvm.loop !1400

middle.block203:                                  ; preds = %vector.body198
  %cmp.n204 = icmp eq i64 %i.kf, %n.vec197
  br i1 %cmp.n204, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbafEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i, %middle.block203
  %.sroa.54.09.i116.i.ph = phi i64 [ %.sroa.54.0.copyload.i111.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i114.i ], [ %i.kh, %middle.block203 ] ; 4 uses
  %i.ko = sub i64 %.sroa.7.0.copyload.i113.i, %.sroa.54.09.i116.i.ph
  %xtraiter293 = and i64 %i.ko, 3                 ; 2 uses
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i115.i.prol

end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutfhEBa_:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  switch i8 %.2.val, label %bb.q [
    i8 1, label %bb.r
    i8 2, label %bb.ah
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
    i8 8, label %bb.w
    i8 9, label %bb.x
    i8 10, label %bb.y
    i8 11, label %bb.z
    i8 12, label %bb.aa
    i8 22, label %bb.ab
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @137, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.x:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.y:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.z:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.aa:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1458
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.r ], [ 3.160000e-01, %bb.s ], [ 3.290300e-01, %bb.t ], [ 3.290300e-01, %bb.u ], [ 3.290300e-01, %bb.v ], [ 3.160000e-01, %bb.w ], [ 3.290300e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.510000e-01, %bb.z ], [ 3.290300e-01, %bb.aa ], [ 3.290300e-01, %bb.ab ]
  %.sroa.0.0.i = phi float [ 3.127200e-01, %bb.r ], [ 3.100000e-01, %bb.s ], [ 3.127200e-01, %bb.t ], [ 3.127200e-01, %bb.u ], [ 3.127200e-01, %bb.v ], [ 3.100000e-01, %bb.w ], [ 3.127200e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.140000e-01, %bb.z ], [ 3.127200e-01, %bb.aa ], [ 3.127200e-01, %bb.ab ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.l, float noundef %.sroa.0.0.i, float noundef %.sroa.12.0.i)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbfhEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbafhEBa_.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit5, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.loopexit:                                        ; preds = %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.av, %bb.ax, %bb.ay, %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ah, %bb.ac, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #20
          to label %common.resume unwind label %bb.ba

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit

bb.ah:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.r, ptr noundef nonnull %3)
          to label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit unwind label %.loopexit.split-lp

_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit: ; preds = %bb.ah, %bb.ag
  %i.cg = icmp eq i8 %4, 0
  %spec.select = select i1 %i.cg, i64 3, i64 4
  %i.ch = udiv i64 %2, %spec.select
  %i.ci = icmp eq i8 %5, 3
  %i.cj = zext i1 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.ch, %i.cj
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ck, i8 noundef 0)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit: ; preds = %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false), !noalias !1464
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false), !noalias !1464
  br i1 %trunc.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit213.i

.loopexit.loopexit213.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %i.cp = udiv i64 %2, 3
  br label %.loopexit.i6

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %i.cq = lshr i64 %2, 2
  br label %.loopexit.i6

.loopexit.i6:                                     ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit213.i
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit.i ], [ 3, %.loopexit.loopexit213.i ]
  %.sroa.0.2.i = phi i64 [ %i.cq, %.loopexit.loopexit.i ], [ %i.cp, %.loopexit.loopexit213.i ] ; 5 uses
  %i.cr = icmp eq i8 %5, 3                        ; 3 uses
  %.sroa.019.0.i = select i1 %i.cr, i64 4, i64 3
  %i.cs = add nuw nsw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %i.cs, 8           ; 2 uses
  %.not209.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not209.i, label %.loopexit5, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %.loopexit.i6
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.44.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.55.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.r, align 4, !alias.scope !1461, !noalias !1467 ; 4 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.cv = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1461, !noalias !1467 ; 7 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.43.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %broadcast.splatinsert243 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat244 = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat246 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat248 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = extractelement <2 x float> %i.cv, i64 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat222 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat224 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %.lr.ph212.i
  %.sroa.041.0211.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph212.i ], [ %i.cz, %bb.aw ]
  %.sroa.038.0210.i = phi i64 [ 0, %.lr.ph212.i ], [ %i.cy, %bb.aw ] ; 12 uses
  %i.cy = add nuw nsw i64 %.sroa.038.0210.i, 256  ; 2 uses
  %i.cz = add nsw i64 %.sroa.041.0211.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.cy) ; 9 uses
  %i.da = sub nsw i64 %..i.i, %.sroa.038.0210.i   ; 9 uses
  %i.db = mul i64 %i.da, %.sroa.017.0.i           ; 8 uses
  %i.dc = icmp ult i64 %i.db, 1025
  br i1 %i.dc, label %bb.aj, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ao, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.al, %bb.ak, %bb.ai
  %6 = phi i64 [ %.sroa.038.0210.i, %bb.at ], [ 0, %bb.ai ], [ %i.dd, %bb.ak ], [ %i.dg, %bb.al ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ao ], [ %i.hm, %bb.ar ], [ %i.hp, %bb.as ], [ %i.ht, %bb.au ]
  %7 = phi i64 [ %..i.i, %bb.at ], [ %i.db, %bb.ai ], [ %i.de, %bb.ak ], [ %i.dh, %bb.al ], [ %i.gu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gd, %bb.ao ], [ %i.hn, %bb.ar ], [ %i.hq, %bb.as ], [ %i.hu, %bb.au ]
  %8 = phi i64 [ %i.co, %bb.at ], [ 1024, %bb.ai ], [ %2, %bb.ak ], [ %2, %bb.al ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.db, %bb.ao ], [ %i.co, %bb.ar ], [ %i.co, %bb.as ], [ %i.co, %bb.au ]
  %9 = phi ptr [ @44, %bb.at ], [ @48, %bb.ai ], [ @37, %bb.ak ], [ @38, %bb.al ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ao ], [ @42, %bb.ar ], [ @43, %bb.as ], [ @45, %bb.au ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ai
  br i1 %trunc.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.de = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.df = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not73.i = icmp samesign ugt i64 %i.de, %2
  %or.cond.i = or i1 %i.df, %.not73.i
  br i1 %or.cond.i, label %.invoke, label %bb.am, !prof !1370

bb.al:                                            ; preds = %bb.aj
  %i.dg = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.dh = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.di = icmp samesign ult i64 %i.dh, %i.dg
  %.not72.i = icmp samesign ugt i64 %i.dh, %2
  %or.cond81.i = or i1 %i.di, %.not72.i
  br i1 %or.cond81.i, label %.invoke, label %bb.an, !prof !1370

bb.am:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1464
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.db
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 %i.dj, ptr noundef nonnull readonly %i.dk, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.dl)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %bb.am
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !1468 ; 8 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1468 ; 8 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1468 ; 5 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1468 ; 5 uses
  %i.dm = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.dm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %.loopexit285.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10
  %.sroa.44.0.copyload.i.i271 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i.i272 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.dn = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check275 = icmp ult i64 %i.dn, 8
  %i.do = sub i64 %.sroa.0.0.copyload.i.i272, %.sroa.44.0.copyload.i.i271
  %diff.check273 = icmp ugt i64 %i.do, -32
  %or.cond = select i1 %min.iters.check275, i1 true, i1 %diff.check273
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec277 = and i64 %i.dn, -8                   ; 3 uses
  %i.dp = add i64 %.sroa.55.0.copyload.i.i, %n.vec277
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body278 ] ; 2 uses
  %i.dq = add nuw i64 %.sroa.55.0.copyload.i.i, %index279 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.dq ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load280 = load <4 x float>, ptr %i.dr, align 4, !noalias !1461
  %wide.load281 = load <4 x float>, ptr %i.dt, align 4, !noalias !1461
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x float> %wide.load280, ptr %i.ds, align 4, !noalias !1461
  store <4 x float> %wide.load281, ptr %i.du, align 4, !noalias !1461
  %index.next282 = add nuw i64 %index279, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.dv, label %middle.block283, label %vector.body278, !llvm.loop !1472

middle.block283:                                  ; preds = %vector.body278
  %cmp.n284 = icmp eq i64 %i.dn, %n.vec277
  br i1 %cmp.n284, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block283
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.dp, %middle.block283 ] ; 4 uses
  %i.dw = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter = and i64 %i.dw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.dz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dz = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.ea = load float, ptr %i.dx, align 4, !noalias !1461, !noundef !7
  store float %i.ea, ptr %i.dy, align 4, !noalias !1461
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1473

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.dz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.eb = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ef = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.eg = load float, ptr %i.ed, align 4, !noalias !1461, !noundef !7
  store float %i.eg, ptr %i.ee, align 4, !noalias !1461
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ef
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ef
  %i.ej = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.ek = load float, ptr %i.eh, align 4, !noalias !1461, !noundef !7
  store float %i.ek, ptr %i.ei, align 4, !noalias !1461
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ej
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ej
  %i.en = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !noalias !1461, !noundef !7
  store float %i.eo, ptr %i.em, align 4, !noalias !1461
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.en
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.en
  %i.er = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.es = load float, ptr %i.ep, align 4, !noalias !1461, !noundef !7
  store float %i.es, ptr %i.eq, align 4, !noalias !1461
  %exitcond.not.i.i7.3 = icmp eq i64 %i.er, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i7.3, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1474

bb.an:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1464
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.db
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.et, ptr noundef nonnull readonly %i.eu, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.ev)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.an
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1475 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1475 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1475 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1475 ; 5 uses
  %i.ew = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.ew, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit284.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc12
  %.sroa.44.0.copyload.i88.i256 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i257 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.ex = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check259 = icmp ult i64 %i.ex, 8
  %i.ey = sub i64 %.sroa.0.0.copyload.i86.i257, %.sroa.44.0.copyload.i88.i256
  %diff.check = icmp ugt i64 %i.ey, -32
  %or.cond286 = select i1 %min.iters.check259, i1 true, i1 %diff.check
  br i1 %or.cond286, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec261 = and i64 %i.ex, -8                   ; 3 uses
  %i.ez = add i64 %.sroa.55.0.copyload.i90.i, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next266, %vector.body262 ] ; 2 uses
  %i.fa = add nuw i64 %.sroa.55.0.copyload.i90.i, %index263 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fa ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load264 = load <4 x float>, ptr %i.fb, align 4, !noalias !1461
  %wide.load265 = load <4 x float>, ptr %i.fd, align 4, !noalias !1461
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x float> %wide.load264, ptr %i.fc, align 4, !noalias !1461
  store <4 x float> %wide.load265, ptr %i.fe, align 4, !noalias !1461
  %index.next266 = add nuw i64 %index263, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.ff, label %middle.block267, label %vector.body262, !llvm.loop !1479

middle.block267:                                  ; preds = %vector.body262
  %cmp.n268 = icmp eq i64 %i.ex, %n.vec261
  br i1 %cmp.n268, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block267
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.ez, %middle.block267 ] ; 4 uses
  %i.fg = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter287 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.fj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.fj = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.fk = load float, ptr %i.fh, align 4, !noalias !1461, !noundef !7
  store float %i.fk, ptr %i.fi, align 4, !noalias !1461
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1480

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.fj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.fl = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.gb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.fp = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.fq = load float, ptr %i.fn, align 4, !noalias !1461, !noundef !7
  store float %i.fq, ptr %i.fo, align 4, !noalias !1461
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fp
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fp
  %i.ft = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.fu = load float, ptr %i.fr, align 4, !noalias !1461, !noundef !7
  store float %i.fu, ptr %i.fs, align 4, !noalias !1461
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.ft
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.ft
  %i.fx = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.fy = load float, ptr %i.fv, align 4, !noalias !1461, !noundef !7
  store float %i.fy, ptr %i.fw, align 4, !noalias !1461
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fx
  %i.gb = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !noalias !1461, !noundef !7
  store float %i.gc, ptr %i.ga, align 4, !noalias !1461
  %exitcond.not.i96.i.3 = icmp eq i64 %i.gb, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1481

bb.ao:                                            ; preds = %.loopexit284.i, %.loopexit285.i
  %i.gd = mul i64 %i.da, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.gd, %i.db
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !1370

.loopexit285.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block283, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1464
  br i1 %i.cr, label %bb.ap, label %bb.ao

.loopexit284.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block267, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1464
  br i1 %i.cr, label %bb.ao, label %bb.aq

bb.ap:                                            ; preds = %.loopexit285.i
  %.lhs.trunc155.i = trunc nuw nsw i64 %i.db to i16
  %i.ge = udiv i16 %.lhs.trunc155.i, 3
  %.zext156.i = zext nneg i16 %i.ge to i64
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext156.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1464
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ct)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.ap
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1464 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1464
  %i.gg = icmp eq i64 %i.da, 0
  br i1 %i.gg, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8131.0203.i = phi i64 [ %i.gh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph.preheader.i ]
  %.sroa.5129.0202.i = phi i64 [ %i.gk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5129.0202.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.gh = add i64 %.sroa.8131.0203.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gk = add i64 %.sroa.5129.0202.i, 1
  %i.gl = load float, ptr %i.gi, align 4, !noalias !1461, !noundef !7
  store float %i.gl, ptr %i.gj, align 4, !noalias !1461
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !noalias !1461, !noundef !7
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store float %i.gn, ptr %i.go, align 4, !noalias !1461
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !noalias !1461, !noundef !7
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gs = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gq, i64 0
  store <2 x float> %i.gs, ptr %i.gr, align 4, !noalias !1461
  %i.gt = icmp eq i64 %i.gh, 0
  br i1 %i.gt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.gu = shl i64 %i.da, 2                        ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 1025
  br i1 %i.gv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc15, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc13, %bb.ao
  %.sroa.7.0.i = phi i64 [ %i.hl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gd, %bb.ao ], [ 0, %.noexc13 ], [ 0, %.noexc15 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ao ], [ %i.i, %.noexc13 ], [ %i.i, %.noexc15 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.aq:                                            ; preds = %.loopexit284.i
  %i.gw = lshr i64 %i.db, 2
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1464
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cu)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.aq
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1464 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1464 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1464
  %i.gy = icmp eq i64 %i.da, 0
  br i1 %i.gy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph207.preheader.i

.lr.ph207.preheader.i:                            ; preds = %.noexc15
  %umax262.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.preheader.i
  %.sroa.8146.0206.i = phi i64 [ %i.gz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph207.preheader.i ]
  %.sroa.5144.0205.i = phi i64 [ %i.hc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph207.preheader.i ] ; 4 uses
  %exitcond263.not.i = icmp eq i64 %.sroa.5144.0205.i, %umax262.i
  br i1 %exitcond263.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph207.i
  %i.gz = add i64 %.sroa.8146.0206.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hc = add i64 %.sroa.5144.0205.i, 1
  %i.hd = load float, ptr %i.ha, align 4, !noalias !1461, !noundef !7
  store float %i.hd, ptr %i.hb, align 4, !noalias !1461
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hf = load float, ptr %i.he, align 4, !noalias !1461, !noundef !7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %i.hf, ptr %i.hg, align 4, !noalias !1461
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !noalias !1461, !noundef !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store float %i.hi, ptr %i.hj, align 4, !noalias !1461
  %i.hk = icmp eq i64 %i.gz, 0
  br i1 %i.hk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph207.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.i
  %i.hl = mul nuw nsw i64 %i.da, 3
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i

bb.ar:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hm = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.hn = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.ho = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not80.i = icmp samesign ugt i64 %i.hn, %i.co
  %or.cond82.i = or i1 %i.ho, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !1370

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hp = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.hq = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.hr = icmp samesign ult i64 %i.hq, %i.hp
  %.not79.i = icmp samesign ugt i64 %i.hq, %i.co
  %or.cond83.i = or i1 %i.hr, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ax, !prof !1370

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hs = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.co
  %or.cond84.i = or i1 %i.hs, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ay, !prof !1370

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ht = shl nuw nsw i64 %.sroa.038.0210.i, 1    ; 3 uses
  %i.hu = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.hv = icmp samesign ult i64 %i.hu, %i.ht
  %.not77.i = icmp samesign ugt i64 %i.hu, %i.co
  %or.cond85.i = or i1 %i.hv, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.az, !prof !1370

bb.av:                                            ; preds = %bb.ar
  %i.hw = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1464
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hn
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.hx, ptr noundef nonnull %i.hw, ptr noundef nonnull %i.hy)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1482 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1482 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1482 ; 8 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1482 ; 7 uses
  %i.hz = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.hz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.ia = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ia, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.0.copyload.i.i
  %scevgep187 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.7.0.copyload.i103.i
  %i.ib = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep188 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ib
  %i.ic = shl i64 %.sroa.7.0.copyload.i103.i, 2
  %scevgep189 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ic
  %bound0 = icmp ult ptr %scevgep, %scevgep189
  %bound1 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ia, -4                      ; 3 uses
  %i.id = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ie = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ie
  %wide.load = load <4 x float>, ptr %i.if, align 4, !alias.scope !1486, !noalias !1461
  %i.ih = fmul <4 x float> %wide.load, splat (float 2.550000e+02)
  %i.ii = call <4 x float> @llvm.round.v4f32(<4 x float> %i.ih)
  %i.ij = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ii)
  store <4 x i8> %i.ij, ptr %i.ig, align 1, !alias.scope !1489, !noalias !1491
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ik = icmp eq i64 %index.next, %n.vec
  br i1 %i.ik, label %middle.block, label %vector.body, !llvm.loop !1492

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ia, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.id, %middle.block ] ; 6 uses
  %i.il = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %.neg296 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter293 = and i64 %i.il, 1
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.ph
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.io = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.ip = load float, ptr %i.im, align 4, !noalias !1461, !noundef !7
  %i.iq = fmul float %i.ip, 2.550000e+02
  %i.ir = call float @llvm.round.f32(float %i.iq)
  %i.is = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.ir)
  store i8 %i.is, ptr %i.in, align 1, !noalias !1461
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.io, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.it = icmp eq i64 %.sroa.7.0.copyload.i103.i, %.neg296
  br i1 %i.it, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.jd, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.iw = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.ix = load float, ptr %i.iu, align 4, !noalias !1461, !noundef !7
  %i.iy = fmul float %i.ix, 2.550000e+02
  %i.iz = call float @llvm.round.f32(float %i.iy)
  %i.ja = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.iz)
  store i8 %i.ja, ptr %i.iv, align 1, !noalias !1461
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.iw
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.iw
  %i.jd = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.je = load float, ptr %i.jb, align 4, !noalias !1461, !noundef !7
  %i.jf = fmul float %i.je, 2.550000e+02
  %i.jg = call float @llvm.round.f32(float %i.jf)
  %i.jh = call noundef i8 @llvm.fptoui.sat.i8.f32(float %i.jg)
  store i8 %i.jh, ptr %i.jc, align 1, !noalias !1461
  %exitcond.not.i104.i.1 = icmp eq i64 %i.jd, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i104.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1493

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1464
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbhEBa_.exit.i
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.loopexit5, label %bb.ai

bb.ax:                                            ; preds = %bb.as
  %i.ji = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1464
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.hq
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.jj, ptr noundef nonnull %i.ji, ptr noundef nonnull %i.jk)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.ax
  %.sroa.0.0.copyload.i105.i = load ptr, ptr %i.c, align 8, !noalias !1494 ; 7 uses
  %.sroa.43.0.copyload.i107.i = load ptr, ptr %.sroa.43.0..sroa_idx.i106.i, align 8, !noalias !1494 ; 7 uses
  %.sroa.54.0.copyload.i109.i = load i64, ptr %.sroa.54.0..sroa_idx.i108.i, align 8, !noalias !1494 ; 8 uses
  %.sroa.7.0.copyload.i111.i = load i64, ptr %.sroa.7.0..sroa_idx.i110.i, align 8, !noalias !1494 ; 7 uses
  %i.jl = icmp ult i64 %.sroa.54.0.copyload.i109.i, %.sroa.7.0.copyload.i111.i
  br i1 %i.jl, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i: ; preds = %.noexc20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i105.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i107.i) ]
  %i.jm = sub nuw i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.0.copyload.i109.i ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.jm, 4
  br i1 %min.iters.check199, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i
  %scevgep191 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.54.0.copyload.i109.i
  %scevgep192 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %.sroa.7.0.copyload.i111.i
  %i.jn = shl i64 %.sroa.54.0.copyload.i109.i, 2
  %scevgep193 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.jn
  %i.jo = shl i64 %.sroa.7.0.copyload.i111.i, 2
  %scevgep194 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.jo
  %bound0195 = icmp ult ptr %scevgep191, %scevgep194
  %bound1196 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck190
  %n.vec201 = and i64 %i.jm, -4                   ; 3 uses
  %i.jp = add i64 %.sroa.54.0.copyload.i109.i, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next205, %vector.body202 ] ; 2 uses
  %i.jq = add nuw i64 %.sroa.54.0.copyload.i109.i, %index203 ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i105.i, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.43.0.copyload.i107.i, i64 %i.jq
  %wide.load204 = load <4 x float>, ptr %i.jr, align 4, !alias.scope !1498, !noalias !1461
  %i.jt = fmul <4 x float> %wide.load204, splat (float 2.550000e+02)
  %i.ju = call <4 x float> @llvm.round.v4f32(<4 x float> %i.jt)
  %i.jv = call <4 x i8> @llvm.fptoui.sat.v4i8.v4f32(<4 x float> %i.ju)
  store <4 x i8> %i.jv, ptr %i.js, align 1, !alias.scope !1501, !noalias !1503
  %index.next205 = add nuw i64 %index203, 4       ; 2 uses
  %i.jw = icmp eq i64 %index.next205, %n.vec201
  br i1 %i.jw, label %middle.block206, label %vector.body202, !llvm.loop !1504

middle.block206:                                  ; preds = %vector.body202
  %cmp.n207 = icmp eq i64 %i.jm, %n.vec201
  br i1 %cmp.n207, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbahEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuthEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader

end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutftEBa_:bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  switch i8 %.2.val, label %bb.q [
    i8 1, label %bb.r
    i8 2, label %bb.ah
    i8 4, label %bb.s
    i8 5, label %bb.t
    i8 6, label %bb.u
    i8 7, label %bb.v
    i8 8, label %bb.w
    i8 9, label %bb.x
    i8 10, label %bb.y
    i8 11, label %bb.z
    i8 12, label %bb.aa
    i8 22, label %bb.ab
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @137, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.t:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.u:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.v:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.w:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.x:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.y:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.z:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.aa:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1561
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.r ], [ 3.160000e-01, %bb.s ], [ 3.290300e-01, %bb.t ], [ 3.290300e-01, %bb.u ], [ 3.290300e-01, %bb.v ], [ 3.160000e-01, %bb.w ], [ 3.290300e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.510000e-01, %bb.z ], [ 3.290300e-01, %bb.aa ], [ 3.290300e-01, %bb.ab ]
  %.sroa.0.0.i = phi float [ 3.127200e-01, %bb.r ], [ 3.100000e-01, %bb.s ], [ 3.127200e-01, %bb.t ], [ 3.127200e-01, %bb.u ], [ 3.127200e-01, %bb.v ], [ 3.100000e-01, %bb.w ], [ 3.127200e-01, %bb.x ], [ f0x3EAAAAAB, %bb.y ], [ 3.140000e-01, %bb.z ], [ 3.127200e-01, %bb.aa ], [ 3.127200e-01, %bb.ab ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.k, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.l, float noundef %.sroa.0.0.i, float noundef %.sroa.12.0.i)
          to label %bb.ag unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbftEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbaftEBa_.exit.i, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1533
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit5, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

.loopexit:                                        ; preds = %bb.am, %bb.an, %bb.ap, %bb.aq, %bb.av, %bb.ax, %bb.ay, %bb.az
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ah, %bb.ac, %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #20
          to label %common.resume unwind label %bb.ba

bb.ag:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit

bb.ah:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.r, ptr noundef nonnull %3)
          to label %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit unwind label %.loopexit.split-lp

_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit: ; preds = %bb.ah, %bb.ag
  %i.cg = icmp eq i8 %4, 0
  %spec.select = select i1 %i.cg, i64 3, i64 4
  %i.ch = udiv i64 %2, %spec.select
  %i.ci = icmp eq i8 %5, 3
  %i.cj = zext i1 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.ch, %i.cj
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ck, i16 noundef 0)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit: ; preds = %_RNvMs_NtNtCsa5QsYiPB8Gl_5image6traits7privateNtB4_15LayoutWithColor8channels.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.j, i8 0, i64 4096, i1 false), !noalias !1567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1567
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.i, i8 0, i64 4096, i1 false), !noalias !1567
  br i1 %trunc.i, label %.loopexit.loopexit.i, label %.loopexit.loopexit213.i

.loopexit.loopexit213.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %i.cp = udiv i64 %2, 3
  br label %.loopexit.i6

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %i.cq = lshr i64 %2, 2
  br label %.loopexit.i6

.loopexit.i6:                                     ; preds = %.loopexit.loopexit.i, %.loopexit.loopexit213.i
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit.i ], [ 3, %.loopexit.loopexit213.i ]
  %.sroa.0.2.i = phi i64 [ %i.cq, %.loopexit.loopexit.i ], [ %i.cp, %.loopexit.loopexit213.i ] ; 5 uses
  %i.cr = icmp eq i8 %5, 3                        ; 3 uses
  %.sroa.019.0.i = select i1 %i.cr, i64 4, i64 3
  %i.cs = add nuw nsw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %i.cs, 8           ; 2 uses
  %.not209.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not209.i, label %.loopexit5, label %.lr.ph212.i

.lr.ph212.i:                                      ; preds = %.loopexit.i6
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.44.0..sroa_idx.i87.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.55.0..sroa_idx.i89.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i91.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.r, align 4, !alias.scope !1564, !noalias !1570 ; 4 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.cv = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1564, !noalias !1570 ; 7 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.43.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.54.0..sroa_idx.i108.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i110.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i102.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %broadcast.splatinsert243 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat244 = shufflevector <4 x float> %broadcast.splatinsert243, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat246 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat248 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = extractelement <2 x float> %i.cv, i64 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat222 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat224 = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aw, %.lr.ph212.i
  %.sroa.041.0211.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph212.i ], [ %i.cz, %bb.aw ]
  %.sroa.038.0210.i = phi i64 [ 0, %.lr.ph212.i ], [ %i.cy, %bb.aw ] ; 12 uses
  %i.cy = add nuw nsw i64 %.sroa.038.0210.i, 256  ; 2 uses
  %i.cz = add nsw i64 %.sroa.041.0211.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.cy) ; 9 uses
  %i.da = sub nsw i64 %..i.i, %.sroa.038.0210.i   ; 9 uses
  %i.db = mul i64 %i.da, %.sroa.017.0.i           ; 8 uses
  %i.dc = icmp ult i64 %i.db, 1025
  br i1 %i.dc, label %bb.aj, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.ao, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.al, %bb.ak, %bb.ai
  %6 = phi i64 [ %.sroa.038.0210.i, %bb.at ], [ 0, %bb.ai ], [ %i.dd, %bb.ak ], [ %i.dg, %bb.al ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ao ], [ %i.hm, %bb.ar ], [ %i.hp, %bb.as ], [ %i.ht, %bb.au ]
  %7 = phi i64 [ %..i.i, %bb.at ], [ %i.db, %bb.ai ], [ %i.de, %bb.ak ], [ %i.dh, %bb.al ], [ %i.gu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gd, %bb.ao ], [ %i.hn, %bb.ar ], [ %i.hq, %bb.as ], [ %i.hu, %bb.au ]
  %8 = phi i64 [ %i.co, %bb.at ], [ 1024, %bb.ai ], [ %2, %bb.ak ], [ %2, %bb.al ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.db, %bb.ao ], [ %i.co, %bb.ar ], [ %i.co, %bb.as ], [ %i.co, %bb.au ]
  %9 = phi ptr [ @44, %bb.at ], [ @48, %bb.ai ], [ @37, %bb.ak ], [ @38, %bb.al ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ao ], [ @42, %bb.ar ], [ @43, %bb.as ], [ @45, %bb.au ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %6, i64 noundef %7, i64 noundef %8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %9) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.aj:                                            ; preds = %bb.ai
  br i1 %trunc.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.de = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.df = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not73.i = icmp samesign ugt i64 %i.de, %2
  %or.cond.i = or i1 %i.df, %.not73.i
  br i1 %or.cond.i, label %.invoke, label %bb.am, !prof !1370

bb.al:                                            ; preds = %bb.aj
  %i.dg = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.dh = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.di = icmp samesign ult i64 %i.dh, %i.dg
  %.not72.i = icmp samesign ugt i64 %i.dh, %2
  %or.cond81.i = or i1 %i.di, %.not72.i
  br i1 %or.cond81.i, label %.invoke, label %bb.an, !prof !1370

bb.am:                                            ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1567
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.db
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull readonly align 4 %i.dj, ptr noundef nonnull readonly %i.dk, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.dl)
          to label %.noexc10 unwind label %.loopexit

.noexc10:                                         ; preds = %bb.am
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.f, align 8, !noalias !1571 ; 8 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1571 ; 8 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1571 ; 5 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !1571 ; 5 uses
  %i.dm = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.dm, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %.loopexit285.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc10
  %.sroa.44.0.copyload.i.i271 = ptrtoaddr ptr %.sroa.44.0.copyload.i.i to i64
  %.sroa.0.0.copyload.i.i272 = ptrtoaddr ptr %.sroa.0.0.copyload.i.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.dn = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check275 = icmp ult i64 %i.dn, 8
  %i.do = sub i64 %.sroa.0.0.copyload.i.i272, %.sroa.44.0.copyload.i.i271
  %diff.check273 = icmp ugt i64 %i.do, -32
  %or.cond = select i1 %min.iters.check275, i1 true, i1 %diff.check273
  br i1 %or.cond, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph276

vector.ph276:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %n.vec277 = and i64 %i.dn, -8                   ; 3 uses
  %i.dp = add i64 %.sroa.55.0.copyload.i.i, %n.vec277
  br label %vector.body278

vector.body278:                                   ; preds = %vector.body278, %vector.ph276
  %index279 = phi i64 [ 0, %vector.ph276 ], [ %index.next282, %vector.body278 ] ; 2 uses
  %i.dq = add nuw i64 %.sroa.55.0.copyload.i.i, %index279 ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.dq ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.dq ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load280 = load <4 x float>, ptr %i.dr, align 4, !noalias !1564
  %wide.load281 = load <4 x float>, ptr %i.dt, align 4, !noalias !1564
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x float> %wide.load280, ptr %i.ds, align 4, !noalias !1564
  store <4 x float> %wide.load281, ptr %i.du, align 4, !noalias !1564
  %index.next282 = add nuw i64 %index279, 8       ; 2 uses
  %i.dv = icmp eq i64 %index.next282, %n.vec277
  br i1 %i.dv, label %middle.block283, label %vector.body278, !llvm.loop !1575

middle.block283:                                  ; preds = %vector.body278
  %cmp.n284 = icmp eq i64 %i.dn, %n.vec277
  br i1 %cmp.n284, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block283
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.dp, %middle.block283 ] ; 4 uses
  %i.dw = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter = and i64 %i.dw, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.dz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.dz = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.ea = load float, ptr %i.dx, align 4, !noalias !1564, !noundef !7
  store float %i.ea, ptr %i.dy, align 4, !noalias !1564
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1576

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.dz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.eb = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.er, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ef = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.eg = load float, ptr %i.ed, align 4, !noalias !1564, !noundef !7
  store float %i.eg, ptr %i.ee, align 4, !noalias !1564
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ef
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ef
  %i.ej = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.ek = load float, ptr %i.eh, align 4, !noalias !1564, !noundef !7
  store float %i.ek, ptr %i.ei, align 4, !noalias !1564
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.ej
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.ej
  %i.en = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.eo = load float, ptr %i.el, align 4, !noalias !1564, !noundef !7
  store float %i.eo, ptr %i.em, align 4, !noalias !1564
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %i.en
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.en
  %i.er = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.es = load float, ptr %i.ep, align 4, !noalias !1564, !noundef !7
  store float %i.es, ptr %i.eq, align 4, !noalias !1564
  %exitcond.not.i.i7.3 = icmp eq i64 %i.er, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i7.3, label %.loopexit285.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1577

bb.an:                                            ; preds = %bb.al
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1567
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.db
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, ptr noundef nonnull readonly align 4 %i.et, ptr noundef nonnull readonly %i.eu, ptr noundef nonnull align 4 %i.j, ptr noundef nonnull %i.ev)
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %bb.an
  %.sroa.0.0.copyload.i86.i = load ptr, ptr %i.e, align 8, !noalias !1578 ; 8 uses
  %.sroa.44.0.copyload.i88.i = load ptr, ptr %.sroa.44.0..sroa_idx.i87.i, align 8, !noalias !1578 ; 8 uses
  %.sroa.55.0.copyload.i90.i = load i64, ptr %.sroa.55.0..sroa_idx.i89.i, align 8, !noalias !1578 ; 5 uses
  %.sroa.7.0.copyload.i92.i = load i64, ptr %.sroa.7.0..sroa_idx.i91.i, align 8, !noalias !1578 ; 5 uses
  %i.ew = icmp ult i64 %.sroa.55.0.copyload.i90.i, %.sroa.7.0.copyload.i92.i
  br i1 %i.ew, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, label %.loopexit284.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i: ; preds = %.noexc12
  %.sroa.44.0.copyload.i88.i256 = ptrtoaddr ptr %.sroa.44.0.copyload.i88.i to i64
  %.sroa.0.0.copyload.i86.i257 = ptrtoaddr ptr %.sroa.0.0.copyload.i86.i to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i86.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i88.i) ]
  %i.ex = sub nuw i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.0.copyload.i90.i ; 3 uses
  %min.iters.check259 = icmp ult i64 %i.ex, 8
  %i.ey = sub i64 %.sroa.0.0.copyload.i86.i257, %.sroa.44.0.copyload.i88.i256
  %diff.check = icmp ugt i64 %i.ey, -32
  %or.cond286 = select i1 %min.iters.check259, i1 true, i1 %diff.check
  br i1 %or.cond286, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i
  %n.vec261 = and i64 %i.ex, -8                   ; 3 uses
  %i.ez = add i64 %.sroa.55.0.copyload.i90.i, %n.vec261
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next266, %vector.body262 ] ; 2 uses
  %i.fa = add nuw i64 %.sroa.55.0.copyload.i90.i, %index263 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fa ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %wide.load264 = load <4 x float>, ptr %i.fb, align 4, !noalias !1564
  %wide.load265 = load <4 x float>, ptr %i.fd, align 4, !noalias !1564
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <4 x float> %wide.load264, ptr %i.fc, align 4, !noalias !1564
  store <4 x float> %wide.load265, ptr %i.fe, align 4, !noalias !1564
  %index.next266 = add nuw i64 %index263, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next266, %n.vec261
  br i1 %i.ff, label %middle.block267, label %vector.body262, !llvm.loop !1582

middle.block267:                                  ; preds = %vector.body262
  %cmp.n268 = icmp eq i64 %i.ex, %n.vec261
  br i1 %cmp.n268, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i, %middle.block267
  %.sroa.55.010.i95.i.ph = phi i64 [ %.sroa.55.0.copyload.i90.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i93.i ], [ %i.ez, %middle.block267 ] ; 4 uses
  %i.fg = sub i64 %.sroa.7.0.copyload.i92.i, %.sroa.55.010.i95.i.ph
  %xtraiter287 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol
  %.sroa.55.010.i95.i.prol = phi i64 [ %i.fj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ] ; 3 uses
  %prol.iter289 = phi i64 [ %prol.iter289.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i.prol
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i.prol
  %i.fj = add nuw i64 %.sroa.55.010.i95.i.prol, 1 ; 2 uses
  %i.fk = load float, ptr %i.fh, align 4, !noalias !1564, !noundef !7
  store float %i.fk, ptr %i.fi, align 4, !noalias !1564
  %prol.iter289.next = add i64 %prol.iter289, 1   ; 2 uses
  %prol.iter289.cmp.not = icmp eq i64 %prol.iter289.next, %xtraiter287
  br i1 %prol.iter289.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, !llvm.loop !1583

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader
  %.sroa.55.010.i95.i.unr = phi i64 [ %.sroa.55.010.i95.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.preheader ], [ %i.fj, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol ]
  %i.fl = sub i64 %.sroa.55.010.i95.i.ph, %.sroa.7.0.copyload.i92.i
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i
  %.sroa.55.010.i95.i = phi i64 [ %i.gb, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i ], [ %.sroa.55.010.i95.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit ] ; 6 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %.sroa.55.010.i95.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %.sroa.55.010.i95.i
  %i.fp = add nuw i64 %.sroa.55.010.i95.i, 1      ; 2 uses
  %i.fq = load float, ptr %i.fn, align 4, !noalias !1564, !noundef !7
  store float %i.fq, ptr %i.fo, align 4, !noalias !1564
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fp
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fp
  %i.ft = add nuw i64 %.sroa.55.010.i95.i, 2      ; 2 uses
  %i.fu = load float, ptr %i.fr, align 4, !noalias !1564, !noundef !7
  store float %i.fu, ptr %i.fs, align 4, !noalias !1564
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.ft
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.ft
  %i.fx = add nuw i64 %.sroa.55.010.i95.i, 3      ; 2 uses
  %i.fy = load float, ptr %i.fv, align 4, !noalias !1564, !noundef !7
  store float %i.fy, ptr %i.fw, align 4, !noalias !1564
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i86.i, i64 %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i88.i, i64 %i.fx
  %i.gb = add nuw i64 %.sroa.55.010.i95.i, 4      ; 2 uses
  %i.gc = load float, ptr %i.fz, align 4, !noalias !1564, !noundef !7
  store float %i.gc, ptr %i.ga, align 4, !noalias !1564
  %exitcond.not.i96.i.3 = icmp eq i64 %i.gb, %.sroa.7.0.copyload.i92.i
  br i1 %exitcond.not.i96.i.3, label %.loopexit284.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, !llvm.loop !1584

bb.ao:                                            ; preds = %.loopexit284.i, %.loopexit285.i
  %i.gd = mul i64 %i.da, %.sroa.019.0.i           ; 3 uses
  %.not75.i = icmp ugt i64 %i.gd, %i.db
  br i1 %.not75.i, label %.invoke, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, !prof !1370

.loopexit285.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block283, %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1567
  br i1 %i.cr, label %bb.ap, label %bb.ao

.loopexit284.i:                                   ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i94.i, %middle.block267, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1567
  br i1 %i.cr, label %bb.ao, label %bb.aq

bb.ap:                                            ; preds = %.loopexit285.i
  %.lhs.trunc155.i = trunc nuw nsw i64 %i.db to i16
  %i.ge = udiv i16 %.lhs.trunc155.i, 3
  %.zext156.i = zext nneg i16 %i.ge to i64
  %i.gf = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %.zext156.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1567
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gf, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ct)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.ap
  %.sroa.021.sroa.0.0.copyload.i = load ptr, ptr %i.h, align 8, !noalias !1567 ; 2 uses
  %.sroa.021.sroa.3.0.copyload.i = load ptr, ptr %.sroa.021.sroa.3.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.021.sroa.5.0.copyload.i = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.021.sroa.6.0.copyload.i = load i64, ptr %.sroa.021.sroa.6.0..sroa_idx.i, align 8, !noalias !1567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1567
  %i.gg = icmp eq i64 %i.da, 0
  br i1 %i.gg, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.noexc13
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.021.sroa.5.0.copyload.i, i64 %.sroa.021.sroa.6.0.copyload.i)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.preheader.i
  %.sroa.8131.0203.i = phi i64 [ %i.gh, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph.preheader.i ]
  %.sroa.5129.0202.i = phi i64 [ %i.gk, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.021.sroa.5.0.copyload.i, %.lr.ph.preheader.i ] ; 4 uses
  %exitcond.not.i = icmp eq i64 %.sroa.5129.0202.i, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.i
  %i.gh = add i64 %.sroa.8131.0203.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.3.0.copyload.i) ]
  %i.gi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.021.sroa.0.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.021.sroa.3.0.copyload.i, i64 %.sroa.5129.0202.i ; 3 uses
  %i.gk = add i64 %.sroa.5129.0202.i, 1
  %i.gl = load float, ptr %i.gi, align 4, !noalias !1564, !noundef !7
  store float %i.gl, ptr %i.gj, align 4, !noalias !1564
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gn = load float, ptr %i.gm, align 4, !noalias !1564, !noundef !7
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store float %i.gn, ptr %i.go, align 4, !noalias !1564
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gq = load float, ptr %i.gp, align 4, !noalias !1564, !noundef !7
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gs = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.gq, i64 0
  store <2 x float> %i.gs, ptr %i.gr, align 4, !noalias !1564
  %i.gt = icmp eq i64 %i.gh, 0
  br i1 %i.gt, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %i.gu = shl i64 %i.da, 2                        ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 1025
  br i1 %i.gv, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.invoke, !prof !1388

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc15, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %.noexc13, %bb.ao
  %.sroa.7.0.i = phi i64 [ %i.hl, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gu, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.gd, %bb.ao ], [ 0, %.noexc13 ], [ 0, %.noexc15 ] ; 4 uses
  %.sroa.031.0.i = phi ptr [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.j, %bb.ao ], [ %i.i, %.noexc13 ], [ %i.i, %.noexc15 ] ; 8 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.ar
    i8 1, label %bb.as
    i8 2, label %bb.at
    i8 3, label %bb.au
  ]

bb.aq:                                            ; preds = %.loopexit284.i
  %i.gw = lshr i64 %i.db, 2
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.gw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1567
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.i, ptr noundef nonnull %i.cu)
          to label %.noexc15 unwind label %.loopexit

.noexc15:                                         ; preds = %bb.aq
  %.sroa.025.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !noalias !1567 ; 2 uses
  %.sroa.025.sroa.3.0.copyload.i = load ptr, ptr %.sroa.025.sroa.3.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.025.sroa.5.0.copyload.i = load i64, ptr %.sroa.025.sroa.5.0..sroa_idx.i, align 8, !noalias !1567 ; 2 uses
  %.sroa.025.sroa.6.0.copyload.i = load i64, ptr %.sroa.025.sroa.6.0..sroa_idx.i, align 8, !noalias !1567
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1567
  %i.gy = icmp eq i64 %i.da, 0
  br i1 %i.gy, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i, label %.lr.ph207.preheader.i

.lr.ph207.preheader.i:                            ; preds = %.noexc15
  %umax262.i = call i64 @llvm.umax.i64(i64 %.sroa.025.sroa.5.0.copyload.i, i64 %.sroa.025.sroa.6.0.copyload.i)
  br label %.lr.ph207.i

.lr.ph207.i:                                      ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.preheader.i
  %.sroa.8146.0206.i = phi i64 [ %i.gz, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %i.da, %.lr.ph207.preheader.i ]
  %.sroa.5144.0205.i = phi i64 [ %i.hc, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i ], [ %.sroa.025.sroa.5.0.copyload.i, %.lr.ph207.preheader.i ] ; 4 uses
  %exitcond263.not.i = icmp eq i64 %.sroa.5144.0205.i, %umax262.i
  br i1 %exitcond263.not.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph207.i
  %i.gz = add i64 %.sroa.8146.0206.i, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.sroa.3.0.copyload.i) ]
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %.sroa.025.sroa.0.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hb = getelementptr inbounds nuw [12 x i8], ptr %.sroa.025.sroa.3.0.copyload.i, i64 %.sroa.5144.0205.i ; 3 uses
  %i.hc = add i64 %.sroa.5144.0205.i, 1
  %i.hd = load float, ptr %i.ha, align 4, !noalias !1564, !noundef !7
  store float %i.hd, ptr %i.hb, align 4, !noalias !1564
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hf = load float, ptr %i.he, align 4, !noalias !1564, !noundef !7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %i.hf, ptr %i.hg, align 4, !noalias !1564
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hi = load float, ptr %i.hh, align 4, !noalias !1564, !noundef !7
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store float %i.hi, ptr %i.hj, align 4, !noalias !1564
  %i.hk = icmp eq i64 %i.gz, 0
  br i1 %i.hk, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, label %.lr.ph207.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.i, %.lr.ph207.i
  %i.hl = mul nuw nsw i64 %i.da, 3
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i

bb.ar:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hm = mul nuw nsw i64 %.sroa.038.0210.i, 3    ; 2 uses
  %i.hn = mul nuw nsw i64 %..i.i, 3               ; 3 uses
  %i.ho = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not80.i = icmp samesign ugt i64 %i.hn, %i.co
  %or.cond82.i = or i1 %i.ho, %.not80.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !1370

bb.as:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hp = shl nuw nsw i64 %.sroa.038.0210.i, 2    ; 3 uses
  %i.hq = shl nuw nsw i64 %..i.i, 2               ; 4 uses
  %i.hr = icmp samesign ult i64 %i.hq, %i.hp
  %.not79.i = icmp samesign ugt i64 %i.hq, %i.co
  %or.cond83.i = or i1 %i.hr, %.not79.i
  br i1 %or.cond83.i, label %.invoke, label %bb.ax, !prof !1370

bb.at:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.hs = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0210.i
  %.not78.i = icmp samesign ugt i64 %..i.i, %i.co
  %or.cond84.i = or i1 %i.hs, %.not78.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ay, !prof !1370

bb.au:                                            ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.thread.i
  %i.ht = shl nuw nsw i64 %.sroa.038.0210.i, 1    ; 3 uses
  %i.hu = shl nuw nsw i64 %..i.i, 1               ; 3 uses
  %i.hv = icmp samesign ult i64 %i.hu, %i.ht
  %.not77.i = icmp samesign ugt i64 %i.hu, %i.co
  %or.cond85.i = or i1 %i.hv, %.not77.i
  br i1 %or.cond85.i, label %.invoke, label %bb.az, !prof !1370

bb.av:                                            ; preds = %bb.ar
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1567
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.hn
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.hx, ptr noundef nonnull align 2 %i.hw, ptr noundef nonnull %i.hy)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i101.i = load ptr, ptr %i.d, align 8, !noalias !1585 ; 7 uses
  %.sroa.43.0.copyload.i.i = load ptr, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1585 ; 7 uses
  %.sroa.54.0.copyload.i.i = load i64, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1585 ; 8 uses
  %.sroa.7.0.copyload.i103.i = load i64, ptr %.sroa.7.0..sroa_idx.i102.i, align 8, !noalias !1585 ; 7 uses
  %i.hz = icmp ult i64 %.sroa.54.0.copyload.i.i, %.sroa.7.0.copyload.i103.i
  br i1 %i.hz, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i101.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i.i) ]
  %i.ia = sub nuw i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.0.copyload.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.ia, 4
  br i1 %min.iters.check, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.ib = shl i64 %.sroa.54.0.copyload.i.i, 1
  %scevgep = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ib
  %i.ic = shl i64 %.sroa.7.0.copyload.i103.i, 1
  %scevgep187 = getelementptr i8, ptr %.sroa.43.0.copyload.i.i, i64 %i.ic
  %i.id = shl i64 %.sroa.54.0.copyload.i.i, 2
  %scevgep188 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.id
  %i.ie = shl i64 %.sroa.7.0.copyload.i103.i, 2
  %scevgep189 = getelementptr i8, ptr %.sroa.0.0.copyload.i101.i, i64 %i.ie
  %bound0 = icmp ult ptr %scevgep, %scevgep189
  %bound1 = icmp ult ptr %scevgep188, %scevgep187
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ia, -4                      ; 3 uses
  %i.if = add i64 %.sroa.54.0.copyload.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ig = add nuw i64 %.sroa.54.0.copyload.i.i, %index ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.ig
  %i.ii = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.ig
  %wide.load = load <4 x float>, ptr %i.ih, align 4, !alias.scope !1589, !noalias !1564
  %i.ij = fmul <4 x float> %wide.load, splat (float 6.553500e+04)
  %i.ik = call <4 x float> @llvm.round.v4f32(<4 x float> %i.ij)
  %i.il = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.ik)
  store <4 x i16> %i.il, ptr %i.ii, align 2, !alias.scope !1592, !noalias !1594
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.im = icmp eq i64 %index.next, %n.vec
  br i1 %i.im, label %middle.block, label %vector.body, !llvm.loop !1595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ia, %n.vec
  br i1 %cmp.n, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block
  %.sroa.54.09.i.i.ph = phi i64 [ %.sroa.54.0.copyload.i.i, %vector.memcheck ], [ %.sroa.54.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.if, %middle.block ] ; 6 uses
  %i.in = sub i64 %.sroa.7.0.copyload.i103.i, %.sroa.54.09.i.i.ph
  %.neg296 = add i64 %.sroa.54.09.i.i.ph, 1
  %xtraiter293 = and i64 %i.in, 1
  %lcmp.mod294.not = icmp eq i64 %xtraiter293, 0
  br i1 %lcmp.mod294.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i.ph
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i.ph
  %i.iq = add nuw i64 %.sroa.54.09.i.i.ph, 1
  %i.ir = load float, ptr %i.io, align 4, !noalias !1564, !noundef !7
  %i.is = fmul float %i.ir, 6.553500e+04
  %i.it = call float @llvm.round.f32(float %i.is)
  %i.iu = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.it)
  store i16 %i.iu, ptr %i.ip, align 2, !noalias !1564
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.54.09.i.i.unr = phi i64 [ %.sroa.54.09.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.iq, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.iv = icmp eq i64 %.sroa.7.0.copyload.i103.i, %.neg296
  br i1 %i.iv, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.54.09.i.i = phi i64 [ %i.jf, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.54.09.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 4 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %.sroa.54.09.i.i
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %.sroa.54.09.i.i
  %i.iy = add nuw i64 %.sroa.54.09.i.i, 1         ; 2 uses
  %i.iz = load float, ptr %i.iw, align 4, !noalias !1564, !noundef !7
  %i.ja = fmul float %i.iz, 6.553500e+04
  %i.jb = call float @llvm.round.f32(float %i.ja)
  %i.jc = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.jb)
  store i16 %i.jc, ptr %i.ix, align 2, !noalias !1564
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i101.i, i64 %i.iy
  %i.je = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i.i, i64 %i.iy
  %i.jf = add nuw i64 %.sroa.54.09.i.i, 2         ; 2 uses
  %i.jg = load float, ptr %i.jd, align 4, !noalias !1564, !noundef !7
  %i.jh = fmul float %i.jg, 6.553500e+04
  %i.ji = call float @llvm.round.f32(float %i.jh)
  %i.jj = call noundef i16 @llvm.fptoui.sat.i16.f32(float %i.ji)
  store i16 %i.jj, ptr %i.je, align 2, !noalias !1564
  %exitcond.not.i104.i.1 = icmp eq i64 %i.jf, %.sroa.7.0.copyload.i103.i
  br i1 %exitcond.not.i104.i.1, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1596

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1567
  br label %bb.aw

bb.aw:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15clamp_rgba_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform14clamp_rgb_lumatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform9clamp_rgbtEBa_.exit.i
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %.loopexit5, label %bb.ai

bb.ax:                                            ; preds = %bb.as
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.hp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1567
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.031.0.i, i64 %.sroa.7.0.i
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.hq
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly align 4 %.sroa.031.0.i, ptr noundef nonnull readonly %i.jl, ptr noundef nonnull align 2 %i.jk, ptr noundef nonnull %i.jm)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.ax
  %.sroa.0.0.copyload.i105.i = load ptr, ptr %i.c, align 8, !noalias !1597 ; 7 uses
  %.sroa.43.0.copyload.i107.i = load ptr, ptr %.sroa.43.0..sroa_idx.i106.i, align 8, !noalias !1597 ; 7 uses
  %.sroa.54.0.copyload.i109.i = load i64, ptr %.sroa.54.0..sroa_idx.i108.i, align 8, !noalias !1597 ; 8 uses
  %.sroa.7.0.copyload.i111.i = load i64, ptr %.sroa.7.0..sroa_idx.i110.i, align 8, !noalias !1597 ; 7 uses
  %i.jn = icmp ult i64 %.sroa.54.0.copyload.i109.i, %.sroa.7.0.copyload.i111.i
  br i1 %i.jn, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10clamp_rgbatEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i: ; preds = %.noexc20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i105.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload.i107.i) ]
  %i.jo = sub nuw i64 %.sroa.7.0.copyload.i111.i, %.sroa.54.0.copyload.i109.i ; 3 uses
  %min.iters.check199 = icmp ult i64 %i.jo, 4
  br i1 %min.iters.check199, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.memcheck190

vector.memcheck190:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i112.i
  %i.jp = shl i64 %.sroa.54.0.copyload.i109.i, 1
  %scevgep191 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %i.jp
  %i.jq = shl i64 %.sroa.7.0.copyload.i111.i, 1
  %scevgep192 = getelementptr i8, ptr %.sroa.43.0.copyload.i107.i, i64 %i.jq
  %i.jr = shl i64 %.sroa.54.0.copyload.i109.i, 2
  %scevgep193 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.jr
  %i.js = shl i64 %.sroa.7.0.copyload.i111.i, 2
  %scevgep194 = getelementptr i8, ptr %.sroa.0.0.copyload.i105.i, i64 %i.js
  %bound0195 = icmp ult ptr %scevgep191, %scevgep194
  %bound1196 = icmp ult ptr %scevgep193, %scevgep192
  %found.conflict197 = and i1 %bound0195, %bound1196
  br i1 %found.conflict197, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEINtBZ_7IterMuttEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i113.i.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %vector.memcheck190
  %n.vec201 = and i64 %i.jo, -4                   ; 3 uses
  %i.jt = add i64 %.sroa.54.0.copyload.i109.i, %n.vec201
  br label %vector.body202

vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next205, %vector.body202 ] ; 2 uses
  %i.ju = add nuw i64 %.sroa.54.0.copyload.i109.i, %index203 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i105.i, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.0.copyload.i107.i, i64 %i.ju
  %wide.load204 = load <4 x float>, ptr %i.jv, align 4, !alias.scope !1601, !noalias !1564
  %i.jx = fmul <4 x float> %wide.load204, splat (float 6.553500e+04)
  %i.jy = call <4 x float> @llvm.round.v4f32(<4 x float> %i.jx)
  %i.jz = call <4 x i16> @llvm.fptoui.sat.v4i16.v4f32(<4 x float> %i.jy)
  store <4 x i16> %i.jz, ptr %i.jw, align 2, !alias.scope !1604, !noalias !1606
  %index.next205 = add nuw i64 %index203, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next205, %n.vec201
  br i1 %i.ka, label %middle.block206, label %vector.body202, !llvm.loop !1607

end_hunk_2
