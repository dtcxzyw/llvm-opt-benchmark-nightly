inline.NumInlined: 1791
inline.NumDeleted: 554
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthfEBa_:switch.lookup

bb.v:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.x:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.y:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.z:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.aa:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.ab:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.ad:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.ae:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1672
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.u ], [ 3.160000e-01, %bb.v ], [ 3.290300e-01, %bb.w ], [ 3.290300e-01, %bb.x ], [ 3.290300e-01, %bb.y ], [ 3.160000e-01, %bb.z ], [ 3.290300e-01, %bb.aa ], [ f0x3EAAAAAB, %bb.ab ], [ 3.510000e-01, %bb.ac ], [ 3.290300e-01, %bb.ad ], [ 3.290300e-01, %bb.ae ]
  %.sroa.0.0.i1 = phi float [ 3.127200e-01, %bb.u ], [ 3.100000e-01, %bb.v ], [ 3.127200e-01, %bb.w ], [ 3.127200e-01, %bb.x ], [ 3.127200e-01, %bb.y ], [ 3.100000e-01, %bb.z ], [ 3.127200e-01, %bb.aa ], [ f0x3EAAAAAB, %bb.ab ], [ 3.140000e-01, %bb.ac ], [ 3.127200e-01, %bb.ad ], [ 3.127200e-01, %bb.ae ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.o, float noundef %.sroa.0.0.i1, float noundef %.sroa.12.0.i)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb32subpixel_cast_luma_alpha_to_lumahfEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb32subpixel_cast_luma_to_luma_alphahfEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbhfEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbahfEBa_.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit4, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

.loopexit:                                        ; preds = %bb.at, %bb.av, %bb.aw, %bb.ax, %bb.bb, %bb.bc, %bb.bh, %bb.bj, %bb.bk, %bb.bl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ak, %bb.af, %switch.lookup345
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #20
          to label %common.resume unwind label %bb.bm

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %switch.lookup345

bb.ak:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.w, ptr noundef nonnull %3)
          to label %switch.lookup345 unwind label %.loopexit.split-lp

switch.lookup345:                                 ; preds = %bb.aj, %bb.ak
  %i.cs = zext nneg i8 %4 to i64
  %switch.gep346 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.cs
  %switch.load347 = load i8, ptr %switch.gep346, align 1
  %switch.ext348 = zext i8 %switch.load347 to i64
  %i.ct = udiv i64 %2, %switch.ext348
  %i.cu = zext nneg i8 %5 to i64
  %switch.gep355 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.cu
  %switch.load356 = load i8, ptr %switch.gep355, align 1
  %switch.ext357 = zext i8 %switch.load356 to i64
  %i.cv = mul i64 %i.ct, %switch.ext357
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.cv, float noundef 0.000000e+00)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit: ; preds = %switch.lookup345
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.m, i8 0, i64 4096, i1 false), !noalias !1678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.l, i8 0, i64 4096, i1 false), !noalias !1678
  switch i8 %4, label %default.unreachable [
    i8 0, label %.loopexit.loopexit.i
    i8 1, label %.loopexit.loopexit228.i
    i8 2, label %.loopexit.i6
    i8 3, label %.loopexit.loopexit230.i
  ]

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %i.da = udiv i64 %2, 3
  br label %.loopexit.i6

.loopexit.loopexit228.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %i.db = lshr i64 %2, 2
  br label %.loopexit.i6

.loopexit.i6:                                     ; preds = %.loopexit.loopexit230.i, %.loopexit.loopexit228.i, %.loopexit.loopexit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %i.dc = phi i1 [ false, %.loopexit.loopexit230.i ], [ true, %.loopexit.loopexit.i ], [ false, %.loopexit.loopexit228.i ], [ true, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit ]
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit230.i ], [ 3, %.loopexit.loopexit.i ], [ 4, %.loopexit.loopexit228.i ], [ 3, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit ]
  %.sroa.0.2.i = phi i64 [ %i.dd, %.loopexit.loopexit230.i ], [ %i.da, %.loopexit.loopexit.i ], [ %i.db, %.loopexit.loopexit228.i ], [ %2, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit ] ; 4 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.am
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.al
  ]

.loopexit.loopexit230.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputfEBa_.exit
  %i.dd = lshr i64 %2, 1
  br label %.loopexit.i6

bb.al:                                            ; preds = %.loopexit.i6, %.loopexit.i6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit.i6, %.loopexit.i6
  %i.de = phi i1 [ false, %bb.al ], [ true, %.loopexit.i6 ], [ true, %.loopexit.i6 ]
  %i.df = phi i1 [ true, %bb.al ], [ false, %.loopexit.i6 ], [ false, %.loopexit.i6 ]
  %.sroa.019.0.i = phi i64 [ 4, %bb.al ], [ 3, %.loopexit.i6 ], [ 3, %.loopexit.i6 ]
  %i.dg = add nuw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %i.dg, 8           ; 2 uses
  %.not224.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not224.i, label %.loopexit4, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.am
  %.sroa.410.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.511.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.712.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.44.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.55.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7.0..sroa_idx.i94.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.7.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.w, align 4, !alias.scope !1675, !noalias !1681 ; 6 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.dj = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1675, !noalias !1681 ; 8 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i107.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %broadcast.splatinsert250 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat251 = shufflevector <4 x float> %broadcast.splatinsert250, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat253 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat255 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat229 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat231 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.an

bb.an:                                            ; preds = %bb.bi, %.lr.ph227.i
  %.sroa.041.0226.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph227.i ], [ %i.dl, %bb.bi ]
  %.sroa.038.0225.i = phi i64 [ 0, %.lr.ph227.i ], [ %i.dk, %bb.bi ] ; 14 uses
  %i.dk = add nuw i64 %.sroa.038.0225.i, 256      ; 2 uses
  %i.dl = add nsw i64 %.sroa.041.0226.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.dk) ; 12 uses
  %i.dm = sub i64 %..i.i, %.sroa.038.0225.i       ; 10 uses
  %i.dn = mul i64 %i.dm, %.sroa.017.0.i           ; 10 uses
  %i.do = icmp ult i64 %i.dn, 1025
  br i1 %i.do, label %bb.ao, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.ay, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an
  %i.dp = phi i64 [ %.sroa.038.0225.i, %bb.bf ], [ 0, %bb.an ], [ %i.dt, %bb.ap ], [ %i.dw, %bb.aq ], [ %.sroa.038.0225.i, %bb.ar ], [ %i.ea, %bb.as ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ay ], [ %i.oi, %bb.bd ], [ %i.ol, %bb.be ], [ %i.op, %bb.bg ]
  %i.dq = phi i64 [ %..i.i, %bb.bf ], [ %i.dn, %bb.an ], [ %i.du, %bb.ap ], [ %i.dx, %bb.aq ], [ %..i.i, %bb.ar ], [ %i.eb, %bb.as ], [ %i.np, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.og, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.my, %bb.ay ], [ %i.oj, %bb.bd ], [ %i.om, %bb.be ], [ %i.oq, %bb.bg ]
  %i.dr = phi i64 [ %i.cz, %bb.bf ], [ 1024, %bb.an ], [ %2, %bb.ap ], [ %2, %bb.aq ], [ %2, %bb.ar ], [ %2, %bb.as ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.dn, %bb.ay ], [ %i.cz, %bb.bd ], [ %i.cz, %bb.be ], [ %i.cz, %bb.bg ]
  %i.ds = phi ptr [ @44, %bb.bf ], [ @48, %bb.an ], [ @37, %bb.ap ], [ @38, %bb.aq ], [ @39, %bb.ar ], [ @47, %bb.as ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @41, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ay ], [ @42, %bb.bd ], [ @43, %bb.be ], [ @45, %bb.bg ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dp, i64 noundef %i.dq, i64 noundef %i.dr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ds) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ao:                                            ; preds = %bb.an
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.ap
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.as
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dt = mul i64 %.sroa.038.0225.i, 3            ; 3 uses
  %i.du = mul i64 %..i.i, 3                       ; 4 uses
  %i.dv = icmp ult i64 %i.du, %i.dt
  %.not74.i = icmp ugt i64 %i.du, %2
  %or.cond.i = or i1 %i.dv, %.not74.i
  br i1 %or.cond.i, label %.invoke, label %bb.at, !prof !1370

bb.aq:                                            ; preds = %bb.ao
  %i.dw = shl i64 %.sroa.038.0225.i, 2            ; 3 uses
  %i.dx = shl i64 %..i.i, 2                       ; 4 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %.not73.i = icmp ugt i64 %i.dx, %2
  %or.cond82.i = or i1 %i.dy, %.not73.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !1370

bb.ar:                                            ; preds = %bb.ao
  %i.dz = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  br i1 %i.dz, label %.invoke, label %bb.aw, !prof !1370

bb.as:                                            ; preds = %bb.ao
  %i.ea = shl nuw i64 %.sroa.038.0225.i, 1        ; 3 uses
  %i.eb = shl nuw i64 %..i.i, 1                   ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %i.ea
  %.not71.i = icmp ugt i64 %i.eb, %2
  %or.cond84.i = or i1 %i.ec, %.not71.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ax, !prof !1370

bb.at:                                            ; preds = %bb.ap
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %i.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1678
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %i.du
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dn
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull readonly %i.ed, ptr noundef nonnull readonly %i.ee, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.ef)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.at
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !noalias !1682 ; 9 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1682 ; 9 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1682 ; 8 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i10, align 8, !noalias !1682 ; 7 uses
  %i.eg = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.eg, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.eh = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check271 = icmp ult i64 %i.eh, 8
  br i1 %min.iters.check271, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck262

vector.memcheck262:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.ei = shl i64 %.sroa.55.0.copyload.i.i, 2
  %scevgep263 = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ei
  %i.ej = shl i64 %.sroa.7.0.copyload.i.i, 2
  %scevgep264 = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ej
  %scevgep265 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.0.copyload.i.i
  %scevgep266 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.7.0.copyload.i.i
  %bound0267 = icmp ult ptr %scevgep263, %scevgep266
  %bound1268 = icmp ult ptr %scevgep265, %scevgep264
  %found.conflict269 = and i1 %bound0267, %bound1268
  br i1 %found.conflict269, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph272

vector.ph272:                                     ; preds = %vector.memcheck262
  %n.vec273 = and i64 %i.eh, -8                   ; 3 uses
  %i.ek = add i64 %.sroa.55.0.copyload.i.i, %n.vec273
  br label %vector.body274

vector.body274:                                   ; preds = %vector.body274, %vector.ph272
  %index275 = phi i64 [ 0, %vector.ph272 ], [ %index.next278, %vector.body274 ] ; 2 uses
  %i.el = add nuw i64 %.sroa.55.0.copyload.i.i, %index275 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.el ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %wide.load276 = load <4 x i8>, ptr %i.em, align 1, !alias.scope !1686, !noalias !1675
  %wide.load277 = load <4 x i8>, ptr %i.eo, align 1, !alias.scope !1686, !noalias !1675
  %i.ep = uitofp <4 x i8> %wide.load276 to <4 x float>
  %i.eq = uitofp <4 x i8> %wide.load277 to <4 x float>
  %i.er = fmul nnan <4 x float> %i.ep, splat (float f0x3B808081)
  %i.es = fmul nnan <4 x float> %i.eq, splat (float f0x3B808081)
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <4 x float> %i.er, ptr %i.en, align 4, !alias.scope !1689, !noalias !1691
  store <4 x float> %i.es, ptr %i.et, align 4, !alias.scope !1689, !noalias !1691
  %index.next278 = add nuw i64 %index275, 8       ; 2 uses
  %i.eu = icmp eq i64 %index.next278, %n.vec273
  br i1 %i.eu, label %middle.block279, label %vector.body274, !llvm.loop !1692

middle.block279:                                  ; preds = %vector.body274
  %cmp.n280 = icmp eq i64 %i.eh, %n.vec273
  br i1 %cmp.n280, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck262, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block279
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %vector.memcheck262 ], [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.ek, %middle.block279 ] ; 4 uses
  %i.ev = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter362 = and i64 %i.ev, 3                 ; 2 uses
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  br i1 %lcmp.mod363.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.ey, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter364 = phi i64 [ %prol.iter364.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ey = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.ez = load i8, ptr %i.ew, align 1, !noalias !1675, !noundef !7
  %i.fa = uitofp i8 %i.ez to float
  %i.fb = fmul nnan float %i.fa, f0x3B808081
  store float %i.fb, ptr %i.ex, align 4, !noalias !1675
  %prol.iter364.next = add i64 %prol.iter364, 1   ; 2 uses
  %prol.iter364.cmp.not = icmp eq i64 %prol.iter364.next, %xtraiter362
  br i1 %prol.iter364.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1693

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.ey, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.fc = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.fy, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.fg = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.fh = load i8, ptr %i.fe, align 1, !noalias !1675, !noundef !7
  %i.fi = uitofp i8 %i.fh to float
  %i.fj = fmul nnan float %i.fi, f0x3B808081
  store float %i.fj, ptr %i.ff, align 4, !noalias !1675
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fg
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fg
  %i.fm = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.fn = load i8, ptr %i.fk, align 1, !noalias !1675, !noundef !7
  %i.fo = uitofp i8 %i.fn to float
  %i.fp = fmul nnan float %i.fo, f0x3B808081
  store float %i.fp, ptr %i.fl, align 4, !noalias !1675
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fm
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fm
  %i.fs = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.ft = load i8, ptr %i.fq, align 1, !noalias !1675, !noundef !7
  %i.fu = uitofp i8 %i.ft to float
  %i.fv = fmul nnan float %i.fu, f0x3B808081
  store float %i.fv, ptr %i.fr, align 4, !noalias !1675
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fs
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fs
  %i.fy = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.fz = load i8, ptr %i.fw, align 1, !noalias !1675, !noundef !7
  %i.ga = uitofp i8 %i.fz to float
  %i.gb = fmul nnan float %i.ga, f0x3B808081
  store float %i.gb, ptr %i.fx, align 4, !noalias !1675
  %exitcond.not.i.i16.3 = icmp eq i64 %i.fy, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i16.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1694

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block279, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1678
  br label %bb.au

bb.au:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform11expand_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i
  br i1 %i.dc, label %bb.az, label %bb.ba

bb.av:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1678
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dx
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dn
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull readonly %i.gc, ptr noundef nonnull readonly %i.gd, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.ge)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i89.i = load ptr, ptr %i.h, align 8, !noalias !1695 ; 9 uses
  %.sroa.44.0.copyload.i91.i = load ptr, ptr %.sroa.44.0..sroa_idx.i90.i, align 8, !noalias !1695 ; 9 uses
  %.sroa.55.0.copyload.i93.i = load i64, ptr %.sroa.55.0..sroa_idx.i92.i, align 8, !noalias !1695 ; 8 uses
  %.sroa.7.0.copyload.i95.i = load i64, ptr %.sroa.7.0..sroa_idx.i94.i, align 8, !noalias !1695 ; 7 uses
  %i.gf = icmp ult i64 %.sroa.55.0.copyload.i93.i, %.sroa.7.0.copyload.i95.i
  br i1 %i.gf, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i96.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform11expand_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i96.i: ; preds = %.noexc21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i89.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i91.i) ]
end_hunk_0
begin_hunk_1_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthhEBa_:switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.x:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.y:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.z:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.aa:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.ab:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.ac:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.ad:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.ae:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.af:                                            ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1808
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.v ], [ 3.160000e-01, %bb.w ], [ 3.290300e-01, %bb.x ], [ 3.290300e-01, %bb.y ], [ 3.290300e-01, %bb.z ], [ 3.160000e-01, %bb.aa ], [ 3.290300e-01, %bb.ab ], [ f0x3EAAAAAB, %bb.ac ], [ 3.510000e-01, %bb.ad ], [ 3.290300e-01, %bb.ae ], [ 3.290300e-01, %bb.af ]
  %.sroa.0.0.i1 = phi float [ 3.127200e-01, %bb.v ], [ 3.100000e-01, %bb.w ], [ 3.127200e-01, %bb.x ], [ 3.127200e-01, %bb.y ], [ 3.127200e-01, %bb.z ], [ 3.100000e-01, %bb.aa ], [ 3.127200e-01, %bb.ab ], [ f0x3EAAAAAB, %bb.ac ], [ 3.140000e-01, %bb.ad ], [ 3.127200e-01, %bb.ae ], [ 3.127200e-01, %bb.af ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.o, float noundef %.sroa.0.0.i1, float noundef %.sroa.12.0.i)
          to label %bb.ak unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb32subpixel_cast_luma_alpha_to_lumahhEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb32subpixel_cast_luma_to_luma_alphahhEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbhhEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbahhEBa_.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit4, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

.loopexit:                                        ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.bc, %bb.bd, %bb.bi, %bb.bk, %bb.bl, %bb.bm
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp:                               ; preds = %.invoke, %bb.al, %bb.ag, %switch.lookup348
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #20
          to label %common.resume unwind label %bb.bn

bb.ak:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.eg, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %switch.lookup348

bb.al:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.w, ptr noundef nonnull %3)
          to label %switch.lookup348 unwind label %.loopexit.split-lp

switch.lookup348:                                 ; preds = %bb.ak, %bb.al
  %i.eh = zext nneg i8 %4 to i64
  %switch.gep349 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.eh
  %switch.load350 = load i8, ptr %switch.gep349, align 1
  %switch.ext351 = zext i8 %switch.load350 to i64
  %i.ei = udiv i64 %2, %switch.ext351
  %i.ej = zext nneg i8 %5 to i64
  %switch.gep357 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.ej
  %switch.load358 = load i8, ptr %switch.gep357, align 1
  %switch.ext359 = zext i8 %switch.load358 to i64
  %i.ek = mul i64 %i.ei, %switch.ext359
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.ek, i8 noundef 0)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit: ; preds = %switch.lookup348
  %i.el = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.m, i8 0, i64 4096, i1 false), !noalias !1814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1814
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.l, i8 0, i64 4096, i1 false), !noalias !1814
  switch i8 %4, label %default.unreachable [
    i8 0, label %.loopexit.loopexit.i
    i8 1, label %.loopexit.loopexit228.i
    i8 2, label %.loopexit.i
    i8 3, label %.loopexit.loopexit230.i
  ]

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %i.ep = udiv i64 %2, 3
  br label %.loopexit.i

.loopexit.loopexit228.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %i.eq = lshr i64 %2, 2
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit230.i, %.loopexit.loopexit228.i, %.loopexit.loopexit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %i.er = phi i1 [ false, %.loopexit.loopexit230.i ], [ true, %.loopexit.loopexit.i ], [ false, %.loopexit.loopexit228.i ], [ true, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit ]
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit230.i ], [ 3, %.loopexit.loopexit.i ], [ 4, %.loopexit.loopexit228.i ], [ 3, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit ]
  %.sroa.0.2.i = phi i64 [ %i.es, %.loopexit.loopexit230.i ], [ %i.ep, %.loopexit.loopexit.i ], [ %i.eq, %.loopexit.loopexit228.i ], [ %2, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit ] ; 4 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.an
    i8 1, label %bb.am
    i8 2, label %bb.an
    i8 3, label %bb.am
  ]

.loopexit.loopexit230.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputhEBa_.exit
  %i.es = lshr i64 %2, 1
  br label %.loopexit.i

bb.am:                                            ; preds = %.loopexit.i, %.loopexit.i
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.loopexit.i, %.loopexit.i
  %i.et = phi i1 [ false, %bb.am ], [ true, %.loopexit.i ], [ true, %.loopexit.i ]
  %i.eu = phi i1 [ true, %bb.am ], [ false, %.loopexit.i ], [ false, %.loopexit.i ]
  %.sroa.019.0.i = phi i64 [ 4, %bb.am ], [ 3, %.loopexit.i ], [ 3, %.loopexit.i ]
  %i.ev = add nuw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %i.ev, 8           ; 2 uses
  %.not224.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not224.i, label %.loopexit4, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.an
  %.sroa.410.0..sroa_idx.i.i6 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.511.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.712.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.44.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.55.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7.0..sroa_idx.i94.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.7.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ew = getelementptr inbounds nuw i8, ptr %i.l, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.w, align 4, !alias.scope !1811, !noalias !1817 ; 4 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ey = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1811, !noalias !1817 ; 7 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i107.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %broadcast.splatinsert253 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat254 = shufflevector <4 x float> %broadcast.splatinsert253, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat256 = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat258 = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ez = extractelement <2 x float> %i.ey, i64 0
  %i.fa = extractelement <2 x float> %i.ey, i64 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat232 = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat234 = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.ao

bb.ao:                                            ; preds = %bb.bj, %.lr.ph227.i
  %.sroa.041.0226.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph227.i ], [ %i.fc, %bb.bj ]
  %.sroa.038.0225.i = phi i64 [ 0, %.lr.ph227.i ], [ %i.fb, %bb.bj ] ; 14 uses
  %i.fb = add nuw i64 %.sroa.038.0225.i, 256      ; 2 uses
  %i.fc = add nsw i64 %.sroa.041.0226.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.fb) ; 12 uses
  %i.fd = sub i64 %..i.i, %.sroa.038.0225.i       ; 10 uses
  %i.fe = mul i64 %i.fd, %.sroa.017.0.i           ; 10 uses
  %i.ff = icmp ult i64 %i.fe, 1025
  br i1 %i.ff, label %bb.ap, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.az, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %i.fg = phi i64 [ %.sroa.038.0225.i, %bb.bg ], [ 0, %bb.ao ], [ %i.fk, %bb.aq ], [ %i.fn, %bb.ar ], [ %.sroa.038.0225.i, %bb.as ], [ %i.fr, %bb.at ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.az ], [ %i.pz, %bb.be ], [ %i.qc, %bb.bf ], [ %i.qg, %bb.bh ]
  %i.fh = phi i64 [ %..i.i, %bb.bg ], [ %i.fe, %bb.ao ], [ %i.fl, %bb.aq ], [ %i.fo, %bb.ar ], [ %..i.i, %bb.as ], [ %i.fs, %bb.at ], [ %i.pg, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.px, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.op, %bb.az ], [ %i.qa, %bb.be ], [ %i.qd, %bb.bf ], [ %i.qh, %bb.bh ]
  %i.fi = phi i64 [ %i.eo, %bb.bg ], [ 1024, %bb.ao ], [ %2, %bb.aq ], [ %2, %bb.ar ], [ %2, %bb.as ], [ %2, %bb.at ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.fe, %bb.az ], [ %i.eo, %bb.be ], [ %i.eo, %bb.bf ], [ %i.eo, %bb.bh ]
  %i.fj = phi ptr [ @44, %bb.bg ], [ @48, %bb.ao ], [ @37, %bb.aq ], [ @38, %bb.ar ], [ @39, %bb.as ], [ @47, %bb.at ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @41, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.az ], [ @42, %bb.be ], [ @43, %bb.bf ], [ @45, %bb.bh ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.fg, i64 noundef %i.fh, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fj) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ap:                                            ; preds = %bb.ao
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.aq
    i8 1, label %bb.ar
    i8 2, label %bb.as
    i8 3, label %bb.at
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.fk = mul i64 %.sroa.038.0225.i, 3            ; 3 uses
  %i.fl = mul i64 %..i.i, 3                       ; 4 uses
  %i.fm = icmp ult i64 %i.fl, %i.fk
  %.not74.i = icmp ugt i64 %i.fl, %2
  %or.cond.i = or i1 %i.fm, %.not74.i
  br i1 %or.cond.i, label %.invoke, label %bb.au, !prof !1370

bb.ar:                                            ; preds = %bb.ap
  %i.fn = shl i64 %.sroa.038.0225.i, 2            ; 3 uses
  %i.fo = shl i64 %..i.i, 2                       ; 4 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %.not73.i = icmp ugt i64 %i.fo, %2
  %or.cond82.i = or i1 %i.fp, %.not73.i
  br i1 %or.cond82.i, label %.invoke, label %bb.aw, !prof !1370

bb.as:                                            ; preds = %bb.ap
  %i.fq = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  br i1 %i.fq, label %.invoke, label %bb.ax, !prof !1370

bb.at:                                            ; preds = %bb.ap
  %i.fr = shl nuw i64 %.sroa.038.0225.i, 1        ; 3 uses
  %i.fs = shl nuw i64 %..i.i, 1                   ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %i.fr
  %.not71.i = icmp ugt i64 %i.fs, %2
  %or.cond84.i = or i1 %i.ft, %.not71.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ay, !prof !1370

bb.au:                                            ; preds = %bb.aq
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1814
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 %i.fl
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fe
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull readonly %i.fu, ptr noundef nonnull readonly %i.fv, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.fw)
          to label %.noexc18 unwind label %.loopexit

.noexc18:                                         ; preds = %bb.au
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !noalias !1818 ; 9 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1818 ; 9 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1818 ; 8 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i9, align 8, !noalias !1818 ; 7 uses
  %i.fx = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.fx, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc18
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.fy = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check274 = icmp ult i64 %i.fy, 8
  br i1 %min.iters.check274, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck265

vector.memcheck265:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.fz = shl i64 %.sroa.55.0.copyload.i.i, 2
  %scevgep266 = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.fz
  %i.ga = shl i64 %.sroa.7.0.copyload.i.i, 2
  %scevgep267 = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ga
  %scevgep268 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.0.copyload.i.i
  %scevgep269 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.7.0.copyload.i.i
  %bound0270 = icmp ult ptr %scevgep266, %scevgep269
  %bound1271 = icmp ult ptr %scevgep268, %scevgep267
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph275

vector.ph275:                                     ; preds = %vector.memcheck265
  %n.vec276 = and i64 %i.fy, -8                   ; 3 uses
  %i.gb = add i64 %.sroa.55.0.copyload.i.i, %n.vec276
  br label %vector.body277

vector.body277:                                   ; preds = %vector.body277, %vector.ph275
  %index278 = phi i64 [ 0, %vector.ph275 ], [ %index.next281, %vector.body277 ] ; 2 uses
  %i.gc = add nuw i64 %.sroa.55.0.copyload.i.i, %index278 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.gc ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %wide.load279 = load <4 x i8>, ptr %i.gd, align 1, !alias.scope !1822, !noalias !1811
  %wide.load280 = load <4 x i8>, ptr %i.gf, align 1, !alias.scope !1822, !noalias !1811
  %i.gg = uitofp <4 x i8> %wide.load279 to <4 x float>
  %i.gh = uitofp <4 x i8> %wide.load280 to <4 x float>
  %i.gi = fmul nnan <4 x float> %i.gg, splat (float f0x3B808081)
  %i.gj = fmul nnan <4 x float> %i.gh, splat (float f0x3B808081)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  store <4 x float> %i.gi, ptr %i.ge, align 4, !alias.scope !1825, !noalias !1827
  store <4 x float> %i.gj, ptr %i.gk, align 4, !alias.scope !1825, !noalias !1827
  %index.next281 = add nuw i64 %index278, 8       ; 2 uses
  %i.gl = icmp eq i64 %index.next281, %n.vec276
  br i1 %i.gl, label %middle.block282, label %vector.body277, !llvm.loop !1828

middle.block282:                                  ; preds = %vector.body277
  %cmp.n283 = icmp eq i64 %i.fy, %n.vec276
  br i1 %cmp.n283, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck265, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block282
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %vector.memcheck265 ], [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.gb, %middle.block282 ] ; 4 uses
  %i.gm = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter368 = and i64 %i.gm, 3                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.gp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter370 = phi i64 [ %prol.iter370.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.gp = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.gq = load i8, ptr %i.gn, align 1, !noalias !1811, !noundef !7
  %i.gr = uitofp i8 %i.gq to float
  %i.gs = fmul nnan float %i.gr, f0x3B808081
  store float %i.gs, ptr %i.go, align 4, !noalias !1811
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1829

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.gp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.gt = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.gu = icmp ugt i64 %i.gt, -4
  br i1 %i.gu, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.hp, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.gx = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.gy = load i8, ptr %i.gv, align 1, !noalias !1811, !noundef !7
  %i.gz = uitofp i8 %i.gy to float
  %i.ha = fmul nnan float %i.gz, f0x3B808081
  store float %i.ha, ptr %i.gw, align 4, !noalias !1811
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.gx
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.gx
  %i.hd = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.he = load i8, ptr %i.hb, align 1, !noalias !1811, !noundef !7
  %i.hf = uitofp i8 %i.he to float
  %i.hg = fmul nnan float %i.hf, f0x3B808081
  store float %i.hg, ptr %i.hc, align 4, !noalias !1811
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.hd
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.hd
  %i.hj = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.hk = load i8, ptr %i.hh, align 1, !noalias !1811, !noundef !7
  %i.hl = uitofp i8 %i.hk to float
  %i.hm = fmul nnan float %i.hl, f0x3B808081
  store float %i.hm, ptr %i.hi, align 4, !noalias !1811
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.hj
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.hj
  %i.hp = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.hq = load i8, ptr %i.hn, align 1, !noalias !1811, !noundef !7
  %i.hr = uitofp i8 %i.hq to float
  %i.hs = fmul nnan float %i.hr, f0x3B808081
  store float %i.hs, ptr %i.ho, align 4, !noalias !1811
  %exitcond.not.i.i15.3 = icmp eq i64 %i.hp, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i15.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1830

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block282, %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1814
  br label %bb.av

bb.av:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform11expand_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i
  br i1 %i.er, label %bb.ba, label %bb.bb

bb.aw:                                            ; preds = %bb.ar
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1814
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 %i.fo
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.fe
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull readonly %i.ht, ptr noundef nonnull readonly %i.hu, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.hv)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.aw
  %.sroa.0.0.copyload.i89.i = load ptr, ptr %i.h, align 8, !noalias !1831 ; 9 uses
  %.sroa.44.0.copyload.i91.i = load ptr, ptr %.sroa.44.0..sroa_idx.i90.i, align 8, !noalias !1831 ; 9 uses
  %.sroa.55.0.copyload.i93.i = load i64, ptr %.sroa.55.0..sroa_idx.i92.i, align 8, !noalias !1831 ; 8 uses
  %.sroa.7.0.copyload.i95.i = load i64, ptr %.sroa.7.0..sroa_idx.i94.i, align 8, !noalias !1831 ; 7 uses
  %i.hw = icmp ult i64 %.sroa.55.0.copyload.i93.i, %.sroa.7.0.copyload.i95.i
  br i1 %i.hw, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i96.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform11expand_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i96.i: ; preds = %.noexc20
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i89.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i91.i) ]
end_hunk_1
begin_hunk_2_@_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layouthtEBa_:switch.lookup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @138, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @139, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.x:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.y:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @140, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.z:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @141, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.aa:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @142, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.ab:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @143, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.ac:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.ad:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @144, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.ae:                                            ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.o, ptr noundef nonnull align 4 dereferenceable(24) @145, i64 24, i1 false), !noalias !1953
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.12.0.i = phi float [ 3.290300e-01, %bb.u ], [ 3.160000e-01, %bb.v ], [ 3.290300e-01, %bb.w ], [ 3.290300e-01, %bb.x ], [ 3.290300e-01, %bb.y ], [ 3.160000e-01, %bb.z ], [ 3.290300e-01, %bb.aa ], [ f0x3EAAAAAB, %bb.ab ], [ 3.510000e-01, %bb.ac ], [ 3.290300e-01, %bb.ad ], [ 3.290300e-01, %bb.ae ]
  %.sroa.0.0.i1 = phi float [ 3.127200e-01, %bb.u ], [ 3.100000e-01, %bb.v ], [ 3.127200e-01, %bb.w ], [ 3.127200e-01, %bb.x ], [ 3.127200e-01, %bb.y ], [ 3.100000e-01, %bb.z ], [ 3.127200e-01, %bb.aa ], [ f0x3EAAAAAB, %bb.ab ], [ 3.140000e-01, %bb.ac ], [ 3.127200e-01, %bb.ad ], [ 3.127200e-01, %bb.ae ]
  invoke void @_RINvMs0_NtCshGoo8nsRtFZ_6moxcms4cicpNtB6_14ColorPrimaries16transform_to_xyzNtNtB8_12chromaticity12ChromaticityECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([36 x i8]) align 4 captures(address) dereferenceable(36) %i.n, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %i.o, float noundef %.sroa.0.0.i1, float noundef %.sroa.12.0.i)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.ag:                                            ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb32subpixel_cast_luma_alpha_to_lumahtEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb32subpixel_cast_luma_to_luma_alphahtEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgba_to_rgbhtEBa_.exit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb25subpixel_cast_rgb_to_rgbahtEBa_.exit.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 16 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1952
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1917
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit4, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  ret void

.loopexit:                                        ; preds = %bb.at, %bb.av, %bb.aw, %bb.ax, %bb.bb, %bb.bc, %bb.bh, %bb.bj, %bb.bk, %bb.bl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %.invoke, %bb.ak, %bb.af, %switch.lookup350
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #20
          to label %common.resume unwind label %bb.bm

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %i.cr, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %switch.lookup350

bb.ak:                                            ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void %.40.val(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.w, ptr noundef nonnull %3)
          to label %switch.lookup350 unwind label %.loopexit.split-lp

switch.lookup350:                                 ; preds = %bb.aj, %bb.ak
  %i.cs = zext nneg i8 %4 to i64
  %switch.gep351 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.cs
  %switch.load352 = load i8, ptr %switch.gep351, align 1
  %switch.ext353 = zext i8 %switch.load352 to i64
  %i.ct = udiv i64 %2, %switch.ext353
  %i.cu = zext nneg i8 %5 to i64
  %switch.gep359 = getelementptr inbounds nuw i8, ptr @switch.table._RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb21cast_pixels_by_layoutttEBa_.210, i64 %i.cu
  %switch.load360 = load i8, ptr %switch.gep359, align 1
  %switch.ext361 = zext i8 %switch.load360 to i64
  %i.cv = mul i64 %i.ct, %switch.ext361
  invoke void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectE6resizeCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, i64 noundef %i.cv, i16 noundef 0)
          to label %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit unwind label %.loopexit.split-lp

_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit: ; preds = %switch.lookup350
  %i.cw = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !7, !noundef !7 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !7 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1959
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.m, i8 0, i64 4096, i1 false), !noalias !1959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1959
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %i.l, i8 0, i64 4096, i1 false), !noalias !1959
  switch i8 %4, label %default.unreachable [
    i8 0, label %.loopexit.loopexit.i
    i8 1, label %.loopexit.loopexit228.i
    i8 2, label %.loopexit.i6
    i8 3, label %.loopexit.loopexit230.i
  ]

.loopexit.loopexit.i:                             ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %i.da = udiv i64 %2, 3
  br label %.loopexit.i6

.loopexit.loopexit228.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %i.db = lshr i64 %2, 2
  br label %.loopexit.i6

.loopexit.i6:                                     ; preds = %.loopexit.loopexit230.i, %.loopexit.loopexit228.i, %.loopexit.loopexit.i, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %i.dc = phi i1 [ false, %.loopexit.loopexit230.i ], [ true, %.loopexit.loopexit.i ], [ false, %.loopexit.loopexit228.i ], [ true, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit ]
  %.sroa.017.0.i = phi i64 [ 4, %.loopexit.loopexit230.i ], [ 3, %.loopexit.loopexit.i ], [ 4, %.loopexit.loopexit228.i ], [ 3, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit ]
  %.sroa.0.2.i = phi i64 [ %i.dd, %.loopexit.loopexit230.i ], [ %i.da, %.loopexit.loopexit.i ], [ %i.db, %.loopexit.loopexit228.i ], [ %2, %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit ] ; 4 uses
  switch i8 %5, label %default.unreachable [
    i8 0, label %bb.am
    i8 1, label %bb.al
    i8 2, label %bb.am
    i8 3, label %bb.al
  ]

.loopexit.loopexit230.i:                          ; preds = %_RINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_7CicpRgb13create_outputtEBa_.exit
  %i.dd = lshr i64 %2, 1
  br label %.loopexit.i6

bb.al:                                            ; preds = %.loopexit.i6, %.loopexit.i6
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.loopexit.i6, %.loopexit.i6
  %i.de = phi i1 [ false, %bb.al ], [ true, %.loopexit.i6 ], [ true, %.loopexit.i6 ]
  %i.df = phi i1 [ true, %bb.al ], [ false, %.loopexit.i6 ], [ false, %.loopexit.i6 ]
  %.sroa.019.0.i = phi i64 [ 4, %bb.al ], [ 3, %.loopexit.i6 ], [ 3, %.loopexit.i6 ]
  %i.dg = add nuw i64 %.sroa.0.2.i, 255
  %.sroa.05.0.i.i.i = lshr i64 %i.dg, 8           ; 2 uses
  %.not224.i = icmp eq i64 %.sroa.05.0.i.i.i, 0
  br i1 %.not224.i, label %.loopexit4, label %.lr.ph227.i

.lr.ph227.i:                                      ; preds = %bb.am
  %.sroa.410.0..sroa_idx.i.i7 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.511.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.712.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.78.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.44.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.55.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.7.0..sroa_idx.i94.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.7.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 4092
  %.sroa.025.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.025.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.025.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 4096
  %.sroa.021.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.021.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.021.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.525.sroa.0.0.copyload.pre.i.i = load float, ptr %i.w, align 4, !alias.scope !1956, !noalias !1962 ; 4 uses
  %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.dj = load <2 x float>, ptr %.sroa.525.sroa.2.0..sroa_idx.phi.trans.insert.i.i, align 4, !alias.scope !1956, !noalias !1962 ; 7 uses
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.717.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.43.0..sroa_idx.i111.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.54.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7.0..sroa_idx.i115.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i107.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %broadcast.splatinsert255 = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat256 = shufflevector <4 x float> %broadcast.splatinsert255, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat258 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat260 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dk = extractelement <2 x float> %i.dj, i64 0
  %i.dl = extractelement <2 x float> %i.dj, i64 1
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.sroa.525.sroa.0.0.copyload.pre.i.i, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat234 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splat236 = shufflevector <2 x float> %i.dj, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %bb.an

bb.an:                                            ; preds = %bb.bi, %.lr.ph227.i
  %.sroa.041.0226.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph227.i ], [ %i.dn, %bb.bi ]
  %.sroa.038.0225.i = phi i64 [ 0, %.lr.ph227.i ], [ %i.dm, %bb.bi ] ; 14 uses
  %i.dm = add nuw i64 %.sroa.038.0225.i, 256      ; 2 uses
  %i.dn = add nsw i64 %.sroa.041.0226.i, -1       ; 2 uses
  %..i.i = call noundef range(i64 0, -8589934590) i64 @llvm.umin.i64(i64 range(i64 0, -8589934590) %.sroa.0.2.i, i64 %i.dm) ; 12 uses
  %i.do = sub i64 %..i.i, %.sroa.038.0225.i       ; 10 uses
  %i.dp = mul i64 %i.do, %.sroa.017.0.i           ; 10 uses
  %i.dq = icmp ult i64 %i.dp, 1025
  br i1 %i.dq, label %bb.ao, label %.invoke, !prof !1369

.invoke:                                          ; preds = %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.ay, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.an
  %i.dr = phi i64 [ %.sroa.038.0225.i, %bb.bf ], [ 0, %bb.an ], [ %i.dv, %bb.ap ], [ %i.dy, %bb.aq ], [ %.sroa.038.0225.i, %bb.ar ], [ %i.ec, %bb.as ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 0, %bb.ay ], [ %i.ok, %bb.bd ], [ %i.on, %bb.be ], [ %i.or, %bb.bg ]
  %i.ds = phi i64 [ %..i.i, %bb.bf ], [ %i.dp, %bb.an ], [ %i.dw, %bb.ap ], [ %i.dz, %bb.aq ], [ %..i.i, %bb.ar ], [ %i.ed, %bb.as ], [ %i.nr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.oi, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.na, %bb.ay ], [ %i.ol, %bb.bd ], [ %i.oo, %bb.be ], [ %i.os, %bb.bg ]
  %i.dt = phi i64 [ %i.cz, %bb.bf ], [ 1024, %bb.an ], [ %2, %bb.ap ], [ %2, %bb.aq ], [ %2, %bb.ar ], [ %2, %bb.as ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ 1024, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ %i.dp, %bb.ay ], [ %i.cz, %bb.bd ], [ %i.cz, %bb.be ], [ %i.cz, %bb.bg ]
  %i.du = phi ptr [ @44, %bb.bf ], [ @48, %bb.an ], [ @37, %bb.ap ], [ @38, %bb.aq ], [ @39, %bb.ar ], [ @47, %bb.as ], [ @40, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj3_EINtBZ_7IterMutAfj4_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @41, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAfj4_EINtBZ_7IterMutAfj3_EEINtB5_7ZipImplBW_B1s_E4nextCsa5QsYiPB8Gl_5image.exit.thread.i ], [ @46, %bb.ay ], [ @42, %bb.bd ], [ @43, %bb.be ], [ @45, %bb.bg ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.dr, i64 noundef %i.ds, i64 noundef %i.dt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.du) #26
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ao:                                            ; preds = %bb.an
  switch i8 %4, label %default.unreachable [
    i8 0, label %bb.ap
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.as
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.dv = mul i64 %.sroa.038.0225.i, 3            ; 3 uses
  %i.dw = mul i64 %..i.i, 3                       ; 4 uses
  %i.dx = icmp ult i64 %i.dw, %i.dv
  %.not74.i = icmp ugt i64 %i.dw, %2
  %or.cond.i = or i1 %i.dx, %.not74.i
  br i1 %or.cond.i, label %.invoke, label %bb.at, !prof !1370

bb.aq:                                            ; preds = %bb.ao
  %i.dy = shl i64 %.sroa.038.0225.i, 2            ; 3 uses
  %i.dz = shl i64 %..i.i, 2                       ; 4 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %.not73.i = icmp ugt i64 %i.dz, %2
  %or.cond82.i = or i1 %i.ea, %.not73.i
  br i1 %or.cond82.i, label %.invoke, label %bb.av, !prof !1370

bb.ar:                                            ; preds = %bb.ao
  %i.eb = icmp samesign ult i64 %.sroa.0.2.i, %.sroa.038.0225.i
  br i1 %i.eb, label %.invoke, label %bb.aw, !prof !1370

bb.as:                                            ; preds = %bb.ao
  %i.ec = shl nuw i64 %.sroa.038.0225.i, 1        ; 3 uses
  %i.ed = shl nuw i64 %..i.i, 1                   ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %i.ec
  %.not71.i = icmp ugt i64 %i.ed, %2
  %or.cond84.i = or i1 %i.ee, %.not71.i
  br i1 %or.cond84.i, label %.invoke, label %bb.ax, !prof !1370

bb.at:                                            ; preds = %bb.ap
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1959
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %i.dw
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dp
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.i, ptr noundef nonnull readonly %i.ef, ptr noundef nonnull readonly %i.eg, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.eh)
          to label %.noexc19 unwind label %.loopexit

.noexc19:                                         ; preds = %bb.at
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.i, align 8, !noalias !1963 ; 9 uses
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !noalias !1963 ; 9 uses
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !noalias !1963 ; 8 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i10, align 8, !noalias !1963 ; 7 uses
  %i.ei = icmp ult i64 %.sroa.55.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.ei, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i: ; preds = %.noexc19
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i.i) ]
  %i.ej = sub nuw i64 %.sroa.7.0.copyload.i.i, %.sroa.55.0.copyload.i.i ; 3 uses
  %min.iters.check276 = icmp ult i64 %i.ej, 8
  br i1 %min.iters.check276, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.memcheck267

vector.memcheck267:                               ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i
  %i.ek = shl i64 %.sroa.55.0.copyload.i.i, 2
  %scevgep268 = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.ek
  %i.el = shl i64 %.sroa.7.0.copyload.i.i, 2
  %scevgep269 = getelementptr i8, ptr %.sroa.44.0.copyload.i.i, i64 %i.el
  %scevgep270 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.0.copyload.i.i
  %scevgep271 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.7.0.copyload.i.i
  %bound0272 = icmp ult ptr %scevgep268, %scevgep271
  %bound1273 = icmp ult ptr %scevgep270, %scevgep269
  %found.conflict274 = and i1 %bound0272, %bound1273
  br i1 %found.conflict274, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, label %vector.ph277

vector.ph277:                                     ; preds = %vector.memcheck267
  %n.vec278 = and i64 %i.ej, -8                   ; 3 uses
  %i.em = add i64 %.sroa.55.0.copyload.i.i, %n.vec278
  br label %vector.body279

vector.body279:                                   ; preds = %vector.body279, %vector.ph277
  %index280 = phi i64 [ 0, %vector.ph277 ], [ %index.next283, %vector.body279 ] ; 2 uses
  %i.en = add nuw i64 %.sroa.55.0.copyload.i.i, %index280 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %wide.load281 = load <4 x i8>, ptr %i.eo, align 1, !alias.scope !1967, !noalias !1956
  %wide.load282 = load <4 x i8>, ptr %i.eq, align 1, !alias.scope !1967, !noalias !1956
  %i.er = uitofp <4 x i8> %wide.load281 to <4 x float>
  %i.es = uitofp <4 x i8> %wide.load282 to <4 x float>
  %i.et = fmul nnan <4 x float> %i.er, splat (float f0x3B808081)
  %i.eu = fmul nnan <4 x float> %i.es, splat (float f0x3B808081)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <4 x float> %i.et, ptr %i.ep, align 4, !alias.scope !1970, !noalias !1972
  store <4 x float> %i.eu, ptr %i.ev, align 4, !alias.scope !1970, !noalias !1972
  %index.next283 = add nuw i64 %index280, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next283, %n.vec278
  br i1 %i.ew, label %middle.block284, label %vector.body279, !llvm.loop !1973

middle.block284:                                  ; preds = %vector.body279
  %cmp.n285 = icmp eq i64 %i.ej, %n.vec278
  br i1 %cmp.n285, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader: ; preds = %vector.memcheck267, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i, %middle.block284
  %.sroa.55.010.i.i.ph = phi i64 [ %.sroa.55.0.copyload.i.i, %vector.memcheck267 ], [ %.sroa.55.0.copyload.i.i, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i.i ], [ %i.em, %middle.block284 ] ; 4 uses
  %i.ex = sub i64 %.sroa.7.0.copyload.i.i, %.sroa.55.010.i.i.ph
  %xtraiter366 = and i64 %i.ex, 3                 ; 2 uses
  %lcmp.mod367.not = icmp eq i64 %xtraiter366, 0
  br i1 %lcmp.mod367.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol
  %.sroa.55.010.i.i.prol = phi i64 [ %i.fa, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ] ; 3 uses
  %prol.iter368 = phi i64 [ %prol.iter368.next, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ], [ 0, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i.prol
  %i.fa = add nuw i64 %.sroa.55.010.i.i.prol, 1   ; 2 uses
  %i.fb = load i8, ptr %i.ey, align 1, !noalias !1956, !noundef !7
  %i.fc = uitofp i8 %i.fb to float
  %i.fd = fmul nnan float %i.fc, f0x3B808081
  store float %i.fd, ptr %i.ez, align 4, !noalias !1956
  %prol.iter368.next = add i64 %prol.iter368, 1   ; 2 uses
  %prol.iter368.cmp.not = icmp eq i64 %prol.iter368.next, %xtraiter366
  br i1 %prol.iter368.cmp.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, !llvm.loop !1974

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader
  %.sroa.55.010.i.i.unr = phi i64 [ %.sroa.55.010.i.i.ph, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.preheader ], [ %i.fa, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol ]
  %i.fe = sub i64 %.sroa.55.010.i.i.ph, %.sroa.7.0.copyload.i.i
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.55.010.i.i = phi i64 [ %i.ga, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.55.010.i.i.unr, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit ] ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.010.i.i
  %i.fi = add nuw i64 %.sroa.55.010.i.i, 1        ; 2 uses
  %i.fj = load i8, ptr %i.fg, align 1, !noalias !1956, !noundef !7
  %i.fk = uitofp i8 %i.fj to float
  %i.fl = fmul nnan float %i.fk, f0x3B808081
  store float %i.fl, ptr %i.fh, align 4, !noalias !1956
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fi
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fi
  %i.fo = add nuw i64 %.sroa.55.010.i.i, 2        ; 2 uses
  %i.fp = load i8, ptr %i.fm, align 1, !noalias !1956, !noundef !7
  %i.fq = uitofp i8 %i.fp to float
  %i.fr = fmul nnan float %i.fq, f0x3B808081
  store float %i.fr, ptr %i.fn, align 4, !noalias !1956
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fo
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fo
  %i.fu = add nuw i64 %.sroa.55.010.i.i, 3        ; 2 uses
  %i.fv = load i8, ptr %i.fs, align 1, !noalias !1956, !noundef !7
  %i.fw = uitofp i8 %i.fv to float
  %i.fx = fmul nnan float %i.fw, f0x3B808081
  store float %i.fx, ptr %i.ft, align 4, !noalias !1956
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %i.fu
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %i.fu
  %i.ga = add nuw i64 %.sroa.55.010.i.i, 4        ; 2 uses
  %i.gb = load i8, ptr %i.fy, align 1, !noalias !1956, !noundef !7
  %i.gc = uitofp i8 %i.gb to float
  %i.gd = fmul nnan float %i.gc, f0x3B808081
  store float %i.gd, ptr %i.fz, align 4, !noalias !1956
  %exitcond.not.i.i16.3 = icmp eq i64 %i.ga, %.sroa.7.0.copyload.i.i
  br i1 %exitcond.not.i.i16.3, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, !llvm.loop !1975

_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i.prol.loopexit, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.i.i, %middle.block284, %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1959
  br label %bb.au

bb.au:                                            ; preds = %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform16expand_luma_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform15expand_luma_rgbhEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform11expand_rgbahEBa_.exit.i, %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform10expand_rgbhEBa_.exit.i
  br i1 %i.dc, label %bb.az, label %bb.ba

bb.av:                                            ; preds = %bb.aq
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 %i.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1959
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %i.dz
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dp
  invoke void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E3newCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noundef nonnull readonly %i.ge, ptr noundef nonnull readonly %i.gf, ptr noundef nonnull align 4 %i.m, ptr noundef nonnull %i.gg)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.av
  %.sroa.0.0.copyload.i89.i = load ptr, ptr %i.h, align 8, !noalias !1976 ; 9 uses
  %.sroa.44.0.copyload.i91.i = load ptr, ptr %.sroa.44.0..sroa_idx.i90.i, align 8, !noalias !1976 ; 9 uses
  %.sroa.55.0.copyload.i93.i = load i64, ptr %.sroa.55.0..sroa_idx.i92.i, align 8, !noalias !1976 ; 8 uses
  %.sroa.7.0.copyload.i95.i = load i64, ptr %.sroa.7.0..sroa_idx.i94.i, align 8, !noalias !1976 ; 7 uses
  %i.gh = icmp ult i64 %.sroa.55.0.copyload.i93.i, %.sroa.7.0.copyload.i95.i
  br i1 %i.gh, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i96.i, label %_RINvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB6_13CicpTransform11expand_rgbahEBa_.exit.i

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEINtBZ_7IterMutfEEINtB5_7ZipImplBW_B1o_E4nextCsa5QsYiPB8Gl_5image.exit.lr.ph.i96.i: ; preds = %.noexc21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i89.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.44.0.copyload.i91.i) ]
end_hunk_2
