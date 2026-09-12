Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.01?download=true
inline.NumInlined: 1496
inline.NumDeleted: 531
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMse_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_11ChannelList4readRShECsa5QsYiPB8Gl_5image:bb.a
  %.sroa.20.0.i = phi i64 [ %.sroa.20.17.copyload185.i, %..thread85.i_crit_edge.i ], [ 13, %bb.x ]
  %.sroa.19.0.i = phi ptr [ %.sroa.19.17.copyload184.i, %..thread85.i_crit_edge.i ], [ @23, %bb.x ]
  %.sroa.10.0.i = phi i64 [ %.pr66.i.i, %..thread85.i_crit_edge.i ], [ 2, %bb.x ]
  %i.cf = phi i64 [ %.pre73.i.i, %..thread85.i_crit_edge.i ], [ %i.bz, %bb.x ]
  %i.cg = load ptr, ptr %i.ag, align 8, !alias.scope !4276, !noalias !4258, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4279
  store i64 %i.cf, ptr %i.f, align 8, !noalias !4279
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !noalias !4279
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ce, ptr %i.ci, align 8, !noalias !4279
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i62.i.i unwind label %bb.z, !noalias !4280

bb.z:                                             ; preds = %.thread85.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.thread unwind label %bb.aa, !noalias !4280

bb.aa:                                            ; preds = %bb.z
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !4280
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i62.i.i: ; preds = %.thread85.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc29 unwind label %.body.thread110.loopexit.split-lp

.noexc29:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i62.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4279
  br label %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i

_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %bb.y, %.noexc29, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image.exit.i.i
  %.sroa.14.sroa.9.sroa.0.1.ph.i = phi i56 [ %.sroa.14.sroa.9.sroa.0.0.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.14.sroa.9.sroa.0.0.i, %.noexc29 ], [ %.sroa.14.sroa.9.sroa.0.0.copyload194.i, %bb.y ]
  %.sroa.14.sroa.0.1.ph.i = phi i8 [ %.pre.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.14.sroa.0.0.i, %.noexc29 ], [ %.pre71.i.i, %bb.y ]
  %.sroa.20.1.ph.i = phi i64 [ %.sroa.20.17.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.20.0.i, %.noexc29 ], [ %.sroa.20.17.copyload185.i, %bb.y ]
  %.sroa.19.1.ph.i = phi ptr [ %.sroa.19.17.copyload.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.19.0.i, %.noexc29 ], [ %.sroa.19.17.copyload184.i, %bb.y ]
  %.sroa.10.1.ph.i = phi i64 [ %.pr.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image.exit.i.i ], [ %.sroa.10.0.i, %.noexc29 ], [ %.pr66.i.i, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4258
  %i.cl = zext i56 %.sroa.14.sroa.9.sroa.0.1.ph.i to i64
  br label %bb.ab

_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.t
  %.sroa.0.0.copyload.i = load i8, ptr %i.m, align 8, !noalias !4261 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ae, i64 7, i1 false), !noalias !4261
  %.sroa.10.0.copyload.i = load i64, ptr %i.af, align 8, !noalias !4261 ; 4 uses
  %.sroa.14.0.copyload.i = load i64, ptr %i.ag, align 8, !noalias !4261 ; 5 uses
  %.sroa.19.0.copyload.i = load ptr, ptr %.sroa.19.0..sroa_idx.i, align 8, !noalias !4261 ; 3 uses
  %.sroa.20.0.copyload.i = load i64, ptr %i.ad, align 8, !noalias !4261 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4258
  %i.cm = icmp eq i8 %.sroa.0.0.copyload.i, 2
  br i1 %i.cm, label %.loopexit, label %bb.ac

.loopexit:                                        ; preds = %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.14.sroa.0.0.extract.trunc.i.le = trunc i64 %.sroa.14.0.copyload.i to i8
  %.sroa.14.sroa.9.0.extract.shift.i.le = lshr i64 %.sroa.14.0.copyload.i, 8
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %.sroa.10.1230.i = phi i64 [ %.sroa.10.1.ph.i, %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %.sroa.10.0.copyload.i, %.loopexit ]
  %.sroa.19.1229.i = phi ptr [ %.sroa.19.1.ph.i, %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %.sroa.19.0.copyload.i, %.loopexit ]
  %.sroa.20.1228.i = phi i64 [ %.sroa.20.1.ph.i, %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %.sroa.20.0.copyload.i, %.loopexit ]
  %.sroa.14.sroa.0.1227.i = phi i8 [ %.sroa.14.sroa.0.1.ph.i, %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %.sroa.14.sroa.0.0.extract.trunc.i.le, %.loopexit ]
  %.sroa.14.sroa.9.sroa.0.1226.i = phi i64 [ %i.cl, %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %.sroa.14.sroa.9.0.extract.shift.i.le, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %.sroa.23.sroa.0.sroa.15.0.extract.trunc84 = trunc i64 %.sroa.14.sroa.9.sroa.0.1226.i to i24
  %.sroa.23.sroa.17.0.extract.shift63 = lshr i64 %.sroa.14.sroa.9.sroa.0.1226.i, 24
  %.sroa.23.sroa.17.0.extract.trunc64 = trunc nuw i64 %.sroa.23.sroa.17.0.extract.shift63 to i32
  br label %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i180.i

bb.ac:                                            ; preds = %_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text20read_null_terminatedINtNtB7_2io8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.i, i64 7, i1 false), !noalias !4257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i8 %.sroa.0.0.copyload.i, ptr %i.s, align 8, !noalias !4257
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !4257
  store i64 %.sroa.14.0.copyload.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !4257
  store ptr %.sroa.19.0.copyload.i, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !4257
  store i64 %.sroa.20.0.copyload.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !4257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4282
  store i32 0, ptr %i.d, align 4, !noalias !4282
  %i.cn = invoke noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.d, i64 noundef 4)
          to label %.noexc.i unwind label %bb.ae, !noalias !4283 ; 2 uses

.noexc.i:                                         ; preds = %bb.ac
  %.not.i.i.i169.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i169.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i: ; preds = %.noexc.i
  %i.co = load i32, ptr %i.d, align 4, !noalias !4282, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4282
  br label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4282
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noundef nonnull %i.cn)
          to label %.noexc174.i unwind label %bb.ae, !noalias !4283

.noexc174.i:                                      ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i.i
  %.pr.i170.i = load i64, ptr %i.e, align 8, !noalias !4281 ; 2 uses
  %.not.i171.i = icmp eq i64 %.pr.i170.i, -1
  %.pre.i173.i = load i32, ptr %.phi.trans.insert.i172.i, align 8, !noalias !4281 ; 3 uses
  br i1 %.not.i171.i, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i, label %bb.ad

bb.ad:                                            ; preds = %.noexc174.i
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %.sroa.8197.sroa.9.4.copyload.i = load i32, ptr %.sroa.514.0..sroa_idx.i.i, align 4, !noalias !4284
  %.sroa.15.12..sroa.514.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.12.copyload.i = load ptr, ptr %.sroa.15.12..sroa.514.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !4284
  %.sroa.16.12..sroa.514.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.16.12.copyload.i = load i64, ptr %.sroa.16.12..sroa.514.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !4284
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4281
  %.sroa.8197.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %.pre.i173.i to i8
  %.sroa.8197.sroa.0.sroa.8.0.extract.shift.i = lshr i32 %.pre.i173.i, 8
  %.sroa.8197.sroa.0.sroa.8.0.extract.trunc.i = trunc nuw i32 %.sroa.8197.sroa.0.sroa.8.0.extract.shift.i to i24
  br label %.loopexit131

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i: ; preds = %.noexc174.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i
  %i.cp = phi i32 [ %i.co, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i.i ], [ %.pre.i173.i, %.noexc174.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4281
  %i.cq = icmp ult i32 %i.cp, 3
  br i1 %i.cq, label %bb.af, label %.loopexit131

bb.ae:                                            ; preds = %bb.al, %_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i, %bb.ao, %bb.aj, %bb.ai, %bb.ag, %bb.af, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.ac
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.s) #33
          to label %.body.thread unwind label %bb.av, !noalias !4283

bb.af:                                            ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i
  %switch.idx.cast.i.i = trunc nuw nsw i32 %i.cp to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4285
  store i8 0, ptr %i.c, align 1, !noalias !4285
  %i.cs = invoke noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull dereferenceable(1) %i.c, i64 noundef 1)
          to label %.noexc175.i unwind label %bb.ae, !noalias !4283 ; 2 uses

.noexc175.i:                                      ; preds = %bb.af
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc175.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4285
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noundef nonnull %i.cs)
          to label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.ae, !noalias !4283

_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %.noexc175.i
  %i.ct = load i8, ptr %i.c, align 1, !noalias !4285, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4285
  br label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i

_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.ag
  %.pr.i = load i64, ptr %i.r, align 8, !noalias !4257 ; 2 uses
  %.not165.i = icmp eq i64 %.pr.i, -1
  %.pre247.i = load i8, ptr %.phi.trans.insert.i, align 8, !noalias !4257 ; 2 uses
  br i1 %.not165.i, label %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.5100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %.sroa.23.sroa.0.sroa.15.1.copyload = load i24, ptr %.sroa.5100.0..sroa_idx.i, align 1, !noalias !4286
  %.sroa.23.sroa.17.1..sroa.5100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.23.sroa.17.1.copyload = load i32, ptr %.sroa.23.sroa.17.1..sroa.5100.0..sroa_idx.i.sroa_idx, align 4, !noalias !4286
  %.sroa.36.17..sroa.5100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.36.17.copyload = load ptr, ptr %.sroa.36.17..sroa.5100.0..sroa_idx.i.sroa_idx, align 8, !noalias !4286
  %.sroa.41.17..sroa.5100.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.41.17.copyload = load i64, ptr %.sroa.41.17..sroa.5100.0..sroa_idx.i.sroa_idx, align 8, !noalias !4286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4257
  br label %.loopexit131

_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i: ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %i.cu = phi i8 [ %i.ct, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i ], [ %.pre247.i, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4257
  %switch.i = icmp ult i8 %i.cu, 2
  br i1 %switch.i, label %bb.ai, label %.loopexit131

bb.ai:                                            ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4257
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.q, i8 0, i64 3, i1 false), !noalias !4257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4257
  %i.cv = invoke noundef ptr @_RNvXsy_NtCslM68MWqqr2K_4lebe2ioINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShEINtB5_10ReadEndianSaE28read_from_little_endian_intoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull %i.q, i64 noundef 3)
          to label %.noexc178.i unwind label %bb.ae, !noalias !4283 ; 2 uses

.noexc178.i:                                      ; preds = %bb.ai
  %.not.i177.i = icmp eq ptr %i.cv, null
  br i1 %.not.i177.i, label %_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %.noexc178.i
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noundef nonnull %i.cv)
          to label %_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.ae, !noalias !4283

_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.aj
  %.pr245.i = load i64, ptr %i.p, align 8, !noalias !4257 ; 2 uses
  %.not166.i = icmp eq i64 %.pr245.i, -1
  br i1 %.not166.i, label %_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i, label %bb.ak

bb.ak:                                            ; preds = %_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i
  %.sroa.23.8..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.23.8.copyload41 = load i64, ptr %.sroa.23.8..sroa_idx40, align 8, !noalias !4286 ; 3 uses
  %.sroa.23.sroa.0.sroa.0.0.extract.trunc71 = trunc i64 %.sroa.23.8.copyload41 to i8
  %2 = lshr i64 %.sroa.23.8.copyload41, 8
  %.sroa.23.sroa.0.sroa.15.0.extract.trunc82 = trunc i64 %2 to i24
  %.sroa.23.sroa.17.0.extract.shift61 = lshr i64 %.sroa.23.8.copyload41, 32
  %.sroa.23.sroa.17.0.extract.trunc62 = trunc nuw i64 %.sroa.23.sroa.17.0.extract.shift61 to i32
  %.sroa.36.8..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.36.8.copyload46 = load ptr, ptr %.sroa.36.8..sroa_idx45, align 8, !noalias !4286
  %.sroa.41.8..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.41.8.copyload49 = load i64, ptr %.sroa.41.8..sroa_idx48, align 8, !noalias !4286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4257
  br label %.loopexit132

_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i: ; preds = %_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.i, %.noexc178.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4287
  store i32 0, ptr %i.a, align 4, !noalias !4287
  %i.cw = invoke noundef ptr @_RNvYINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShENtNtNtCs4wP2HXfJTCR_5alloc2io4read4Read10read_exactCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4)
          to label %.noexc37 unwind label %bb.ae  ; 2 uses

.noexc37:                                         ; preds = %_RINvXsi_NtCsdsTQD3x2eOp_3exr2ioaNtB6_4Data13read_slice_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread.i
  %.not.i.i36 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i36, label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread, label %bb.al

bb.al:                                            ; preds = %.noexc37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4287
  invoke void @_RNvXs_NtCsdsTQD3x2eOp_3exr5errorNtB4_5ErrorINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtNtBK_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull %i.cw)
          to label %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit unwind label %bb.ae

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread: ; preds = %.noexc37
  %i.cx = load i32, ptr %i.a, align 4, !noalias !4287, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4287
  br label %bb.an

_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.al
  %.pr = load i64, ptr %i.o, align 8, !noalias !4257 ; 2 uses
  %.not167.i = icmp eq i64 %.pr, -1
  %.pre = load i32, ptr %i.ah, align 8, !noalias !4257 ; 3 uses
  br i1 %.not167.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit
  %.sroa.5112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.23.sroa.17.4.copyload = load i32, ptr %.sroa.5112.0..sroa_idx.i, align 4, !noalias !4286
  %.sroa.36.20..sroa.5112.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.36.20.copyload = load ptr, ptr %.sroa.36.20..sroa.5112.0..sroa_idx.i.sroa_idx, align 8, !noalias !4286
  %.sroa.41.20..sroa.5112.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.41.20.copyload = load i64, ptr %.sroa.41.20..sroa.5112.0..sroa_idx.i.sroa_idx, align 8, !noalias !4286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4257
  %.sroa.23.sroa.0.sroa.0.0.extract.trunc = trunc i32 %.pre to i8
  %.sroa.23.sroa.0.sroa.15.0.extract.shift = lshr i32 %.pre, 8
  %.sroa.23.sroa.0.sroa.15.0.extract.trunc = trunc nuw i32 %.sroa.23.sroa.0.sroa.15.0.extract.shift to i24
  br label %.loopexit132

bb.an:                                            ; preds = %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit
  %i.cy = phi i32 [ %i.cx, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit.thread ], [ %.pre, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4257
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.ao, label %.loopexit132

bb.ao:                                            ; preds = %bb.an
  %i.da = zext nneg i32 %i.cy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4257
  invoke fastcc void @_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ap unwind label %bb.ae, !noalias !4283

bb.ap:                                            ; preds = %bb.ao
  %i.db = load i64, ptr %i.n, align 8, !range !13, !noalias !4257, !noundef !5 ; 2 uses
  %.not168.i = icmp eq i64 %i.db, -1
  %i.dc = load i32, ptr %i.ai, align 8, !noalias !4257 ; 4 uses
  br i1 %.not168.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.sroa.5139.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.sroa.23.sroa.17.4.copyload65 = load i32, ptr %.sroa.5139.0..sroa_idx.i, align 4, !noalias !4286
  %.sroa.36.20..sroa.5139.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.36.20.copyload47 = load ptr, ptr %.sroa.36.20..sroa.5139.0..sroa_idx.i.sroa_idx, align 8, !noalias !4286
  %.sroa.41.20..sroa.5139.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.41.20.copyload50 = load i64, ptr %.sroa.41.20..sroa.5139.0..sroa_idx.i.sroa_idx, align 8, !noalias !4286
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4257
  %.sroa.23.sroa.0.sroa.0.0.extract.trunc66 = trunc i32 %i.dc to i8
  %.sroa.23.sroa.0.sroa.15.0.extract.shift73 = lshr i32 %i.dc, 8
  %.sroa.23.sroa.0.sroa.15.0.extract.trunc74 = trunc nuw i32 %.sroa.23.sroa.0.sroa.15.0.extract.shift73 to i24
  br label %.loopexit132

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4257
  %i.dd = icmp sgt i32 %i.dc, -1
  br i1 %i.dd, label %bb.ax, label %.loopexit132

.loopexit132:                                     ; preds = %bb.ar, %bb.an, %bb.aq, %bb.am, %bb.ak
  %.sroa.23.sroa.0.sroa.15.2 = phi i24 [ %.sroa.23.sroa.0.sroa.15.0.extract.trunc74, %bb.aq ], [ %.sroa.23.sroa.0.sroa.15.0.extract.trunc82, %bb.ak ], [ %.sroa.23.sroa.0.sroa.15.0.extract.trunc, %bb.am ], [ -1, %bb.an ], [ -1, %bb.ar ]
  %.sroa.23.sroa.0.sroa.0.2 = phi i8 [ %.sroa.23.sroa.0.sroa.0.0.extract.trunc66, %bb.aq ], [ %.sroa.23.sroa.0.sroa.0.0.extract.trunc71, %bb.ak ], [ %.sroa.23.sroa.0.sroa.0.0.extract.trunc, %bb.am ], [ -1, %bb.an ], [ -1, %bb.ar ]
  %.sroa.23.sroa.17.2 = phi i32 [ %.sroa.23.sroa.17.4.copyload65, %bb.aq ], [ %.sroa.23.sroa.17.0.extract.trunc62, %bb.ak ], [ %.sroa.23.sroa.17.4.copyload, %bb.am ], [ -1, %bb.an ], [ -1, %bb.ar ]
  %.sroa.41.2 = phi i64 [ %.sroa.41.20.copyload50, %bb.aq ], [ %.sroa.41.8.copyload49, %bb.ak ], [ %.sroa.41.20.copyload, %bb.am ], [ 18, %bb.an ], [ 18, %bb.ar ]
  %.sroa.36.2 = phi ptr [ %.sroa.36.20.copyload47, %bb.aq ], [ %.sroa.36.8.copyload46, %bb.ak ], [ %.sroa.36.20.copyload, %bb.am ], [ @36, %bb.ar ], [ @35, %bb.an ]
  %.sroa.13.2 = phi i64 [ %i.db, %bb.aq ], [ %.pr245.i, %bb.ak ], [ %.pr, %bb.am ], [ 2, %bb.an ], [ 2, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4257
  br label %.loopexit131

.loopexit131:                                     ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i, %bb.ah, %bb.ad, %.loopexit132
  %.sroa.23.sroa.0.sroa.15.0 = phi i24 [ %.sroa.23.sroa.0.sroa.15.2, %.loopexit132 ], [ %.sroa.8197.sroa.0.sroa.8.0.extract.trunc.i, %bb.ad ], [ %.sroa.23.sroa.0.sroa.15.1.copyload, %bb.ah ], [ -1, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i ], [ -1, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i ] ; 2 uses
  %.sroa.23.sroa.0.sroa.0.0 = phi i8 [ %.sroa.23.sroa.0.sroa.0.2, %.loopexit132 ], [ %.sroa.8197.sroa.0.sroa.0.0.extract.trunc.i, %bb.ad ], [ %.pre247.i, %bb.ah ], [ -1, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i ], [ -1, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i ] ; 2 uses
  %.sroa.23.sroa.17.0 = phi i32 [ %.sroa.23.sroa.17.2, %.loopexit132 ], [ %.sroa.8197.sroa.9.4.copyload.i, %bb.ad ], [ %.sroa.23.sroa.17.1.copyload, %bb.ah ], [ -1, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i ], [ -1, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i ] ; 2 uses
  %.sroa.41.0 = phi i64 [ %.sroa.41.2, %.loopexit132 ], [ %.sroa.16.12.copyload.i, %bb.ad ], [ %.sroa.41.17.copyload, %bb.ah ], [ 33, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i ], [ 26, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i ] ; 2 uses
  %.sroa.36.0 = phi ptr [ %.sroa.36.2, %.loopexit132 ], [ %.sroa.15.12.copyload.i, %bb.ad ], [ %.sroa.36.17.copyload, %bb.ah ], [ @37, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i ], [ @34, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i ] ; 2 uses
  %.sroa.13.0 = phi i64 [ %.sroa.13.2, %.loopexit132 ], [ %.pr.i170.i, %bb.ad ], [ %.pr.i, %bb.ah ], [ 2, %_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i.i ], [ 2, %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data7read_leINtB6_8PeekReadRShEECsa5QsYiPB8Gl_5image.exit._crit_edge.i ] ; 2 uses
  %i.de = icmp ugt i64 %.sroa.20.0.copyload.i, 24
  br i1 %i.de, label %bb.as, label %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i180.i

bb.as:                                            ; preds = %.loopexit131
  %i.df = inttoptr i64 %.sroa.14.0.copyload.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4288
  store i64 %.sroa.20.0.copyload.i, ptr %i.b, align 8, !noalias !4288
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.df, ptr %i.dg, align 8, !noalias !4288
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.10.0.copyload.i, ptr %i.dh, align 8, !noalias !4288
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i182.i unwind label %bb.at, !noalias !4289

bb.at:                                            ; preds = %bb.as
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.thread unwind label %bb.au, !noalias !4289

bb.au:                                            ; preds = %bb.at
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !4289
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i182.i: ; preds = %bb.as
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc30 unwind label %.body.thread110.loopexit.split-lp

.noexc30:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i182.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4288
  br label %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i180.i

bb.av:                                            ; preds = %bb.ae
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !4283
  unreachable

bb.aw:                                            ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(336) %i.t, ptr noundef nonnull align 8 dereferenceable(336) %i.w, i64 336, i1 false)
  call void @_RNvMs8_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_11ChannelList3new(ptr noalias nofree noundef nonnull sret([352 x i8]) align 8 captures(none) dereferenceable(352) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(336) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.bf

_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i180.i: ; preds = %.loopexit131, %bb.ab, %.noexc30
  %.sroa.23.sroa.0.sroa.15.5.ph = phi i24 [ %.sroa.23.sroa.0.sroa.15.0.extract.trunc84, %bb.ab ], [ %.sroa.23.sroa.0.sroa.15.0, %.noexc30 ], [ %.sroa.23.sroa.0.sroa.15.0, %.loopexit131 ]
  %.sroa.23.sroa.0.sroa.0.5.ph = phi i8 [ %.sroa.14.sroa.0.1227.i, %bb.ab ], [ %.sroa.23.sroa.0.sroa.0.0, %.noexc30 ], [ %.sroa.23.sroa.0.sroa.0.0, %.loopexit131 ]
  %.sroa.23.sroa.17.5.ph = phi i32 [ %.sroa.23.sroa.17.0.extract.trunc64, %bb.ab ], [ %.sroa.23.sroa.17.0, %.noexc30 ], [ %.sroa.23.sroa.17.0, %.loopexit131 ]
  %.sroa.41.5.ph = phi i64 [ %.sroa.20.1228.i, %bb.ab ], [ %.sroa.41.0, %.noexc30 ], [ %.sroa.41.0, %.loopexit131 ]
  %.sroa.36.5.ph = phi ptr [ %.sroa.19.1229.i, %bb.ab ], [ %.sroa.36.0, %.noexc30 ], [ %.sroa.36.0, %.loopexit131 ]
  %.sroa.13.5.ph = phi i64 [ %.sroa.10.1230.i, %bb.ab ], [ %.sroa.13.0, %.noexc30 ], [ %.sroa.13.0, %.loopexit131 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4257
  %.sroa.23.sroa.0.sroa.15.0.insert.ext77 = zext i24 %.sroa.23.sroa.0.sroa.15.5.ph to i64
  %.sroa.23.sroa.0.sroa.15.0.insert.shift78 = shl nuw nsw i64 %.sroa.23.sroa.0.sroa.15.0.insert.ext77, 8
  %.sroa.23.sroa.0.sroa.0.0.insert.ext68 = zext i8 %.sroa.23.sroa.0.sroa.0.5.ph to i64
  %.sroa.23.sroa.0.sroa.0.0.insert.insert70 = or disjoint i64 %.sroa.23.sroa.0.sroa.15.0.insert.shift78, %.sroa.23.sroa.0.sroa.0.0.insert.ext68
  %.sroa.23.sroa.17.0.insert.ext57 = zext i32 %.sroa.23.sroa.17.5.ph to i64
  %.sroa.23.sroa.17.0.insert.shift58 = shl nuw i64 %.sroa.23.sroa.17.0.insert.ext57, 32
  %.sroa.23.sroa.0.0.insert.insert53 = or disjoint i64 %.sroa.23.sroa.17.0.insert.shift58, %.sroa.23.sroa.0.sroa.0.0.insert.insert70
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.13.5.ph, ptr %i.dl, align 8
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.23.sroa.0.0.insert.insert53, ptr %.sroa.4102.0..sroa_idx, align 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.36.5.ph, ptr %.sroa.5103.0..sroa_idx, align 8
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.41.5.ph, ptr %.sroa.6104.0..sroa_idx, align 8
  br label %bb.be

bb.ax:                                            ; preds = %bb.ar
  %i.dm = zext nneg i32 %i.dc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4257
  store i8 %.sroa.0.0.copyload.i, ptr %i.u, align 8
  store i64 %.sroa.10.0.copyload.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx8.sroa_idx, align 8
  store i64 %.sroa.14.0.copyload.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx8.sroa_idx, align 8
  store ptr %.sroa.19.0.copyload.i, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx8.sroa_idx, align 8
  store i64 %.sroa.20.0.copyload.i, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx8.sroa_idx, align 8
  store i64 %i.da, ptr %.sroa.8.0..sroa_idx10, align 8
  store i64 %i.dm, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx10.sroa_idx, align 8
  store i8 %i.cu, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx10.sroa_idx, align 8
  store i8 %switch.idx.cast.i.i, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx10.sroa_idx, align 1
  %i.dn = load i64, ptr %i.x, align 8, !alias.scope !4290, !noalias !4291, !noundef !5 ; 3 uses
  %i.do = icmp ugt i64 %i.dn, 5
  br i1 %i.do, label %bb.ay, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.dp = load ptr, ptr %i.aj, align 8, !alias.scope !4290, !noalias !4291, !nonnull !5, !noundef !5
  %.pre.i31 = load i64, ptr %.sroa.413.0..sroa_idx, align 8, !alias.scope !4292, !noalias !4293
  br label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E10triple_mutCsa5QsYiPB8Gl_5image.exit.i

bb.az:                                            ; preds = %bb.ba
  %i.dq = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a
.noexc13.i:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !5584
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EECsa5QsYiPB8Gl_5image.exit.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.thread.i.i, %_RNvXsc_NtCsdsTQD3x2eOp_3exr2ioINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EINtB5_12ResizableVechE3lenCsa5QsYiPB8Gl_5image.exit11.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !5564
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(80) %i.av, i64 80, i1 false), !noalias !5564
  %i.ei = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ei, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.az, i64 40, i1 false), !noalias !5586
  %i.ej = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  store i64 %i.bq, ptr %i.ej, align 8, !noalias !5564
  call void @llvm.experimental.noalias.scope.decl(metadata !5587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5564
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0245.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !5588
  %i.ek = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !5589, !noalias !5590, !noundef !5 ; 4 uses
  %i.em = icmp ugt i64 %i.el, 64                  ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.eo = load ptr, ptr %i.en, align 8, !nonnull !5
  %i.ep = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sink13.i.i.i = select i1 %i.em, ptr %i.eo, ptr %i.er
  %.sink12.i.i.i = select i1 %i.em, i64 %i.eq, i64 %i.el ; 2 uses
  store ptr %.sink13.i.i.i, ptr %i.ar, align 8, !noalias !5588
  %i.es = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  store i64 %.sink12.i.i.i, ptr %i.es, align 8, !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.58.i.i)
  %i.et = getelementptr inbounds nuw i8, ptr %i.au, i64 112
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !5591, !noalias !5592, !noundef !5 ; 3 uses
  %i.ev = icmp ugt i64 %i.eu, 24                  ; 118 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !5 ; 115 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.au, i64 81
  %.sink13.i893.i.i = select i1 %i.ev, ptr %i.ex, ptr %i.fa ; 10 uses
  %.sink12.i894.i.i = select i1 %i.ev, i64 %i.ez, i64 %i.eu
  switch i64 %.sink12.i894.i.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i64 5, label %bb.y
    i64 3, label %bb.be
    i64 6, label %bb.cl
    i64 8, label %bb.dt
    i64 14, label %bb.ey
    i64 11, label %bb.fp
    i64 7, label %bb.gd
    i64 9, label %bb.gw
    i64 4, label %bb.hi
    i64 12, label %bb.hu
  ]

bb.y:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.fb = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5568, !noundef !5
  switch i8 %i.fb, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 98, label %bb.ad
    i8 102, label %bb.ae
  ]

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.if, %bb.ie, %bb.id, %bb.ic, %bb.ib, %bb.ia, %bb.hz, %bb.hy, %bb.hx, %bb.hw, %bb.hv, %bb.hu, %bb.hq, %bb.hm, %bb.hl, %bb.hk, %bb.hj, %bb.hi, %bb.he, %bb.hd, %bb.hc, %bb.hb, %bb.ha, %bb.gz, %bb.gy, %bb.gx, %bb.gw, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gk, %bb.gj, %bb.gi, %bb.gh, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.fz, %bb.fy, %bb.fx, %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %bb.fr, %bb.fq, %bb.fp, %bb.fl, %bb.fk, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.eu, %bb.et, %bb.es, %bb.er, %bb.en, %bb.em, %bb.el, %bb.ek, %bb.ej, %bb.ei, %bb.eh, %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.dp, %bb.do, %bb.dn, %bb.dm, %bb.di, %bb.dh, %bb.dg, %bb.df, %bb.da, %bb.cz, %bb.cy, %bb.cx, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.cl, %bb.bm, %bb.bl, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.ba, %bb.az, %bb.ay, %bb.ar, %bb.aq, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.y, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5588
  %i.fc = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !nonnull !5
  %i.fe = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.au, i64 81
  %.sink13.i.i.i.i.i = select i1 %i.ev, ptr %i.fd, ptr %i.fg ; 2 uses
  %.sink12.i.i.i.i.i = select i1 %i.ev, i64 %i.ff, i64 %i.eu
  %i.fh = getelementptr inbounds nuw i8, ptr %.sink13.i.i.i.i.i, i64 %.sink12.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5593
  %i.fi = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 0, ptr %i.fi, align 8, !noalias !5593
  store i8 0, ptr %i.e, align 8, !noalias !5593
  invoke void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj18_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtNtBW_8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterhEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull %.sink13.i.i.i.i.i, ptr noundef nonnull %i.fh)
          to label %_RNvXst_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i unwind label %bb.z, !noalias !5594

bb.z:                                             ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj18_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.e) #33
          to label %.body15.i unwind label %bb.aa, !noalias !5594

bb.aa:                                            ; preds = %bb.z
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5594
  unreachable

_RNvXst_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !5595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5593
  %i.fl = load ptr, ptr %i.ar, align 8, !noalias !5588, !nonnull !5, !noundef !5 ; 2 uses
  %i.fm = load i64, ptr %i.es, align 8, !noalias !5588, !noundef !5
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5596
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.fo, align 8, !noalias !5596
  store i8 0, ptr %i.d, align 8, !noalias !5596
  invoke void @_RINvXss_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj10_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendhE6extendINtNtNtBW_8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterhEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fn)
          to label %bb.ik unwind label %bb.ab, !noalias !5597

bb.ab:                                            ; preds = %_RNvXst_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %i.fp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj10_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #33
          to label %.body.i.i unwind label %bb.ac, !noalias !5597

bb.ac:                                            ; preds = %bb.ab
  %i.fq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5597
  unreachable

bb.ad:                                            ; preds = %bb.y
  %.sroa.gep301 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep302 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel303 = select i1 %i.ev, ptr %.sroa.gep301, ptr %.sroa.gep302
  %i.fr = load i8, ptr %.sink13.i893.i.i.sroa.sel303, align 1, !noalias !5568, !noundef !5
  switch i8 %i.fr, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 111, label %bb.af
    i8 121, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.y
  %.sroa.gep313 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep314 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel315 = select i1 %i.ev, ptr %.sroa.gep313, ptr %.sroa.gep314
  %i.fs = load i8, ptr %.sink13.i893.i.i.sroa.sel315, align 1, !noalias !5568, !noundef !5
  %i.ft = icmp eq i8 %i.fs, 108
  br i1 %i.ft, label %bb.ay, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.af:                                            ; preds = %bb.ad
  %.sroa.gep289 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep290 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel291 = select i1 %i.ev, ptr %.sroa.gep289, ptr %.sroa.gep290
  %i.fu = load i8, ptr %.sink13.i893.i.i.sroa.sel291, align 1, !noalias !5568, !noundef !5
  %i.fv = icmp eq i8 %i.fu, 120
  br i1 %i.fv, label %bb.ah, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ag:                                            ; preds = %bb.ad
  %.sroa.gep298 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep299 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel300 = select i1 %i.ev, ptr %.sroa.gep298, ptr %.sroa.gep299
  %i.fw = load i8, ptr %.sink13.i893.i.i.sroa.sel300, align 1, !noalias !5568, !noundef !5
  %i.fx = icmp eq i8 %i.fw, 116
  br i1 %i.fx, label %bb.aq, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ah:                                            ; preds = %bb.af
  %.sroa.gep286 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep287 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel288 = select i1 %i.ev, ptr %.sroa.gep286, ptr %.sroa.gep287
  %i.fy = load i8, ptr %.sink13.i893.i.i.sroa.sel288, align 1, !noalias !5568, !noundef !5
  %i.fz = icmp eq i8 %i.fy, 50
  br i1 %i.fz, label %bb.ai, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep285 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel = select i1 %i.ev, ptr %.sroa.gep, ptr %.sroa.gep285
  %i.ga = load i8, ptr %.sink13.i893.i.i.sroa.sel, align 1, !noalias !5568, !noundef !5
  switch i8 %i.ga, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 105, label %bb.aj
    i8 102, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5588
  invoke fastcc void @_RINvMsa_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_13IntegerBounds4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aq, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc17.i unwind label %bb.il, !noalias !5568

.noexc17.i:                                       ; preds = %bb.aj
  %i.gb = load i64, ptr %i.aq, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not880.i.i = icmp eq i64 %i.gb, -1
  %i.gc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0508.0.copyload.i.i = load double, ptr %i.gc, align 8, !noalias !5588 ; 2 uses
  %.sroa.4509.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.4509.0.copyload.i.i = load i64, ptr %.sroa.4509.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  %.sroa.5510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.sroa.5510.0.copyload.i.i = load i64, ptr %.sroa.5510.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5588
  br i1 %.not880.i.i, label %bb.am, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5588
  invoke fastcc void @_RINvMsb_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_9FloatRect4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ap, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc18.i unwind label %bb.il, !noalias !5568

.noexc18.i:                                       ; preds = %bb.ak
  %i.gd = load i64, ptr %i.ap, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not879.i.i = icmp eq i64 %i.gd, -1
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.0523.0.copyload.i.i = load double, ptr %i.ge, align 8, !noalias !5588 ; 2 uses
  %.sroa.4524.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.4524.0.copyload.i.i = load i64, ptr %.sroa.4524.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  br i1 %.not879.i.i, label %bb.ap, label %bb.ao

bb.al:                                            ; preds = %.noexc17.i
  %.sroa.35.sroa.0.0.extract.trunc281.i = trunc nuw nsw i64 %i.gb to i32
  %i.gf = bitcast double %.sroa.0508.0.copyload.i.i to i64 ; 3 uses
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc195.i = trunc i64 %i.gf to i8
  %3 = lshr i64 %i.gf, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc252.i = trunc i64 %3 to i24
  %.sroa.69.sroa.37.0.extract.shift150.i = lshr i64 %i.gf, 32
  %.sroa.69.sroa.37.0.extract.trunc151.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift150.i to i32
  %i.gg = bitcast i64 %.sroa.4509.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand645 = shufflevector <4 x i16> %i.gg, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = bitcast i64 %.sroa.5510.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.8.vec.expand700 = shufflevector <4 x i16> %i.gh, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %.sroa.116.i.sroa.0.8.vecblend701 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand645, <8 x i16> %.sroa.116.i.sroa.0.8.vec.expand700, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  br label %bb.im

bb.am:                                            ; preds = %.noexc17.i
  store double %.sroa.0508.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.an:                                            ; preds = %bb.ik, %.noexc49.i, %bb.ht, %bb.hp, %bb.hh, %bb.gv, %bb.gn, %bb.gc, %bb.fo, %bb.ex, %bb.eq, %bb.eg, %bb.ds, %bb.dl, %.noexc34.i, %bb.cw, %bb.ck, %bb.ce, %bb.bw, %bb.bs, %bb.bk, %bb.bd, %bb.aw, %bb.ap, %bb.am
  %.sroa.56.sroa.21.sroa.17.sroa.0.0.i.i = phi i64 [ %.sroa.56.sroa.21.sroa.17.sroa.0.0.copyload304.i.i, %bb.ik ], [ undef, %bb.am ], [ undef, %bb.ap ], [ %.sroa.6505.0.copyload.i.i, %bb.aw ], [ undef, %bb.bd ], [ undef, %bb.bk ], [ undef, %bb.bs ], [ undef, %bb.bw ], [ undef, %bb.ce ], [ undef, %bb.ck ], [ undef, %bb.cw ], [ %.sroa.7694.0.copyload.i.i, %.noexc34.i ], [ undef, %bb.dl ], [ %.sroa.5814.0.copyload.i.i, %bb.ds ], [ undef, %bb.eg ], [ undef, %bb.eq ], [ undef, %bb.ex ], [ %.sroa.6721.0.copyload.i.i, %bb.fo ], [ undef, %bb.gc ], [ %.sroa.56.sroa.21.sroa.17.sroa.0.0.insert.ext.i.i, %bb.gn ], [ %.sroa.5792.0.copyload.i.i, %bb.gv ], [ undef, %bb.hh ], [ %.sroa.7392.0.copyload.i.i, %bb.hp ], [ %.sroa.7404.0.copyload.i.i, %bb.ht ], [ undef, %.noexc49.i ]
  %.sroa.56.sroa.21.sroa.0.0.i.i = phi i64 [ %.sroa.56.sroa.21.sroa.0.0.copyload88.i.i, %bb.ik ], [ %.sroa.5510.0.copyload.i.i, %bb.am ], [ undef, %bb.ap ], [ %.sroa.5504.0.copyload.i.i, %bb.aw ], [ undef, %bb.bd ], [ undef, %bb.bk ], [ undef, %bb.bs ], [ undef, %bb.bw ], [ undef, %bb.ce ], [ undef, %bb.ck ], [ undef, %bb.cw ], [ %.sroa.6693.0.copyload.i.i, %.noexc34.i ], [ undef, %bb.dl ], [ %.sroa.6803.0.copyload.i.i, %bb.ds ], [ undef, %bb.eg ], [ %.sroa.56.sroa.21.sroa.0.0.insert.ext.i.i, %bb.eq ], [ %.sroa.5839.0.copyload.i.i, %bb.ex ], [ %.sroa.5720.0.copyload.i.i, %bb.fo ], [ undef, %bb.gc ], [ %.sroa.5762.0.copyload.i.i, %bb.gn ], [ %.sroa.4791.0.copyload.i.i, %bb.gv ], [ undef, %bb.hh ], [ %.sroa.6391.0.copyload.i.i, %bb.hp ], [ %.sroa.6403.0.copyload.i.i, %bb.ht ], [ %.sroa.5824.0.copyload.i.i, %.noexc49.i ]
  %.sroa.56.sroa.0.0.i.i = phi i64 [ %.sroa.56.sroa.0.0.copyload63.i.i, %bb.ik ], [ %.sroa.4509.0.copyload.i.i, %bb.am ], [ %.sroa.4524.0.copyload.i.i, %bb.ap ], [ %.sroa.4503.0.copyload.i.i, %bb.aw ], [ undef, %bb.bd ], [ undef, %bb.bk ], [ undef, %bb.bs ], [ undef, %bb.bw ], [ %.sroa.56.sroa.0.0.insert.ext.i.i, %bb.ce ], [ %.sroa.56.sroa.0.0.insert.ext75.i.i, %bb.ck ], [ undef, %bb.cw ], [ %.sroa.5692.0.copyload.i.i, %.noexc34.i ], [ undef, %bb.dl ], [ %.sroa.5802.0.copyload.i.i, %bb.ds ], [ undef, %bb.eg ], [ %.sroa.4583.0.copyload.i.i, %bb.eq ], [ %.sroa.4838.0.copyload.i.i, %bb.ex ], [ %.sroa.4719.0.copyload.i.i, %bb.fo ], [ %.sroa.56.sroa.0.0.insert.ext80.i.i, %bb.gc ], [ %.sroa.4761.0.copyload.i.i, %bb.gn ], [ %.sroa.0790.0.copyload.i.i, %bb.gv ], [ undef, %bb.hh ], [ %.sroa.5390.0.copyload.i.i, %bb.hp ], [ %.sroa.5402.0.copyload.i.i, %bb.ht ], [ %.sroa.4823.0.copyload.i.i, %.noexc49.i ] ; 3 uses
  %.sroa.0.0.i.i = phi i64 [ 26, %bb.ik ], [ 19, %bb.am ], [ 20, %bb.ap ], [ 25, %bb.aw ], [ 17, %bb.bd ], [ 18, %bb.bk ], [ 21, %bb.bs ], [ 22, %bb.bw ], [ 23, %bb.ce ], [ 24, %bb.ck ], [ 16, %bb.cw ], [ %i.kj, %.noexc34.i ], [ 4, %bb.dl ], [ 15, %bb.ds ], [ 10, %bb.eg ], [ 14, %bb.eq ], [ 13, %bb.ex ], [ 2, %bb.fo ], [ 3, %bb.gc ], [ 5, %bb.gn ], [ 9, %bb.gv ], [ 6, %bb.hh ], [ 7, %bb.hp ], [ 8, %bb.ht ], [ 12, %.noexc49.i ]
  %i.gi = phi <2 x i32> [ %i.ud, %bb.ik ], [ undef, %bb.am ], [ undef, %bb.ap ], [ %i.gy, %bb.aw ], [ undef, %bb.bd ], [ undef, %bb.bk ], [ undef, %bb.bs ], [ undef, %bb.bw ], [ undef, %bb.ce ], [ undef, %bb.ck ], [ undef, %bb.cw ], [ %i.ko, %.noexc34.i ], [ undef, %bb.dl ], [ %i.ll, %bb.ds ], [ undef, %bb.eg ], [ undef, %bb.eq ], [ undef, %bb.ex ], [ undef, %bb.fo ], [ undef, %bb.gc ], [ undef, %bb.gn ], [ %i.rc, %bb.gv ], [ undef, %bb.hh ], [ %i.sk, %bb.hp ], [ %i.so, %bb.ht ], [ undef, %.noexc49.i ]
  %.sroa.0245.i.i.0..sroa.0245.i.i.0..sroa.0245.i.i.0..sroa.0245.i.0..sroa.0245.i.0..sroa.29.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload.i379464.i150236715 = load i64, ptr %.sroa.0245.i.i, align 8, !noalias !5588 ; 2 uses
  %.sroa.35.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0245.i.i.0..sroa.0245.i.i.0..sroa.0245.i.i.0..sroa.0245.i.0..sroa.0245.i.0..sroa.29.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload.i379464.i150236715 to i32
  %.sroa.35.sroa.35.0.extract.shift.i = lshr i64 %.sroa.0245.i.i.0..sroa.0245.i.i.0..sroa.0245.i.i.0..sroa.0245.i.0..sroa.0245.i.0..sroa.29.0..sroa.29.0..sroa.29.0..sroa.29.0.copyload.i379464.i150236715, 32
  %.sroa.69.sroa.0.0.extract.trunc138.i = trunc nuw i64 %.sroa.35.sroa.35.0.extract.shift.i to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc196.i = trunc i64 %.sroa.56.sroa.0.0.i.i to i8
  %4 = lshr i64 %.sroa.56.sroa.0.0.i.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc254.i = trunc i64 %4 to i24
  %.sroa.69.sroa.37.0.extract.shift152.i = lshr i64 %.sroa.56.sroa.0.0.i.i, 32
  %.sroa.69.sroa.37.0.extract.trunc153.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift152.i to i32
  %i.gj = bitcast i64 %.sroa.56.sroa.21.sroa.0.0.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand = shufflevector <4 x i16> %i.gj, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gk = bitcast i64 %.sroa.56.sroa.21.sroa.17.sroa.0.0.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.8.vec.expand685 = shufflevector <4 x i16> %i.gk, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %.sroa.116.i.sroa.0.8.vecblend686 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand, <8 x i16> %.sroa.116.i.sroa.0.8.vec.expand685, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.148.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.149.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.58.i.i, i64 272, i1 false)
  br label %bb.im

bb.ao:                                            ; preds = %.noexc18.i
  %.sroa.6532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.6532.0.copyload.i.i714 = load <4 x i16>, ptr %.sroa.6532.0..sroa_idx.i.i, align 8, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc280.i = trunc nuw nsw i64 %i.gd to i32
  %i.gl = bitcast double %.sroa.0523.0.copyload.i.i to i64 ; 3 uses
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc194.i = trunc i64 %i.gl to i8
  %5 = lshr i64 %i.gl, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc250.i = trunc i64 %5 to i24
  %.sroa.69.sroa.37.0.extract.shift148.i = lshr i64 %i.gl, 32
  %.sroa.69.sroa.37.0.extract.trunc149.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift148.i to i32
  %i.gm = bitcast i64 %.sroa.4524.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand642 = shufflevector <4 x i16> %i.gm, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.8.vec.expand697 = shufflevector <4 x i16> %.sroa.6532.0.copyload.i.i714, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %.sroa.116.i.sroa.0.8.vecblend698 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand642, <8 x i16> %.sroa.116.i.sroa.0.8.vec.expand697, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  br label %bb.im

bb.ap:                                            ; preds = %.noexc18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !5588
  store double %.sroa.0523.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.aq:                                            ; preds = %bb.ag
  %.sroa.gep295 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep296 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel297 = select i1 %i.ev, ptr %.sroa.gep295, ptr %.sroa.gep296
  %i.gn = load i8, ptr %.sink13.i893.i.i.sroa.sel297, align 1, !noalias !5568, !noundef !5
  %i.go = icmp eq i8 %i.gn, 101
  br i1 %i.go, label %bb.ar, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %.sroa.gep292 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep293 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel294 = select i1 %i.ev, ptr %.sroa.gep292, ptr %.sroa.gep293
  %i.gp = load i8, ptr %.sink13.i893.i.i.sroa.sel294, align 1, !noalias !5568, !noundef !5
  %i.gq = icmp eq i8 %i.gp, 115
  br i1 %i.gq, label %bb.as, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5588
  invoke fastcc void @_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text17read_u32_sized_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.f, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar, i64 noundef %.sink12.i.i.i)
          to label %.noexc19.i unwind label %bb.il, !noalias !5568

.noexc19.i:                                       ; preds = %bb.as
  %i.gr = load i8, ptr %i.f, align 8, !range !16, !noalias !5588, !noundef !5 ; 2 uses
  %i.gs = icmp eq i8 %i.gr, 2
  br i1 %i.gs, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.noexc19.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.35.8.copyload62.i = load i64, ptr %i.gt, align 8, !noalias !5598 ; 2 uses
  %.sroa.35.sroa.0.0.extract.trunc284.i = trunc i64 %.sroa.35.8.copyload62.i to i32
  %.sroa.35.sroa.35.0.extract.shift341.i = lshr i64 %.sroa.35.8.copyload62.i, 32
  %.sroa.35.sroa.35.0.extract.trunc342.i = trunc nuw i64 %.sroa.35.sroa.35.0.extract.shift341.i to i32
  %.sroa.69.8..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.69.8.copyload67120.i = load i32, ptr %.sroa.69.8..sroa_idx66.i, align 8, !noalias !5564 ; 2 uses
  %.sroa.69.8..sroa_idx66.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.69.8.copyload67121.i = load i32, ptr %.sroa.69.8..sroa_idx66.sroa_idx.i, align 4, !noalias !5564
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc175.i = trunc i32 %.sroa.69.8.copyload67120.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift211.i = lshr i32 %.sroa.69.8.copyload67120.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc212.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift211.i to i24
  %.sroa.116.8..sroa_idx85.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.116.i.sroa.0.0.copyload674 = load <8 x i16>, ptr %.sroa.116.8..sroa_idx85.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5588
  br label %bb.im

bb.au:                                            ; preds = %.noexc19.i
  %.sroa.4853.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.4501.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4501.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4853.0..sroa_idx.i.i, i64 39, i1 false), !noalias !5588
  store i8 %i.gr, ptr %i.i, align 8, !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5588
  %i.gu = load ptr, ptr %i.ar, align 8, !noalias !5588, !nonnull !5, !noundef !5 ; 2 uses
  %i.gv = load i64, ptr %i.es, align 8, !noalias !5588, !noundef !5
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.gv
  invoke fastcc void @_RINvXsr_Cs8zlGlznUR0G_8smallvecINtB6_8SmallVecAhj10_EINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorhE9from_iterINtNtNtBW_8adapters6cloned6ClonedINtNtNtBY_5slice4iter4IterhEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.h, ptr noundef nonnull %i.gu, ptr noundef %i.gw)
          to label %bb.aw unwind label %bb.av, !noalias !5568

bb.av:                                            ; preds = %bb.au
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.i) #33
          to label %.body15.i unwind label %bb.ax, !noalias !5568

bb.aw:                                            ; preds = %bb.au
  %.sroa.0502.0.copyload.i.i = load double, ptr %i.i, align 8, !noalias !5588
  %.sroa.4503.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4503.0.copyload.i.i = load i64, ptr %.sroa.4503.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.5504.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5504.0.copyload.i.i = load i64, ptr %.sroa.5504.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.6505.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.6505.0.copyload.i.i = load i64, ptr %.sroa.6505.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.7506.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.gy = load <2 x i32>, ptr %.sroa.7506.0..sroa_idx.i.i, align 8, !noalias !5588
  store double %.sroa.0502.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5588
  br label %bb.an

bb.ax:                                            ; preds = %.body.i.i, %bb.ig, %bb.db, %bb.av
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5568
  unreachable

bb.ay:                                            ; preds = %bb.ae
  %.sroa.gep310 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep311 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel312 = select i1 %i.ev, ptr %.sroa.gep310, ptr %.sroa.gep311
  %i.ha = load i8, ptr %.sink13.i893.i.i.sroa.sel312, align 1, !noalias !5568, !noundef !5
  %i.hb = icmp eq i8 %i.ha, 111
  br i1 %i.hb, label %bb.az, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %.sroa.gep307 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep308 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel309 = select i1 %i.ev, ptr %.sroa.gep307, ptr %.sroa.gep308
  %i.hc = load i8, ptr %.sink13.i893.i.i.sroa.sel309, align 1, !noalias !5568, !noundef !5
  %i.hd = icmp eq i8 %i.hc, 97
  br i1 %i.hd, label %bb.ba, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %.sroa.gep304 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep305 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel306 = select i1 %i.ev, ptr %.sroa.gep304, ptr %.sroa.gep305
  %i.he = load i8, ptr %.sink13.i893.i.i.sroa.sel306, align 1, !noalias !5568, !noundef !5
  %i.hf = icmp eq i8 %i.he, 116
  br i1 %i.hf, label %bb.bb, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5588
  invoke fastcc void @_RINvXsp_NtCsdsTQD3x2eOp_3exr2iofNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.an, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc20.i unwind label %bb.il, !noalias !5568

.noexc20.i:                                       ; preds = %bb.bb
  %i.hg = load i64, ptr %i.an, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not878.i.i = icmp eq i64 %i.hg, -1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  br i1 %.not878.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %.noexc20.i
  %.sroa.4550.0.copyload.i378.i = load i32, ptr %i.hh, align 8, !noalias !5588 ; 2 uses
  %.sroa.5551.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %.sroa.69.sroa.37.4.copyload167.i = load i32, ptr %.sroa.5551.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5551.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.116.i.sroa.0.0.copyload673 = load <8 x i16>, ptr %.sroa.116.20..sroa.5551.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc279.i = trunc nuw nsw i64 %i.hg to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc172.i = trunc i32 %.sroa.4550.0.copyload.i378.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift205.i = lshr i32 %.sroa.4550.0.copyload.i378.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc206.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift205.i to i24
  br label %bb.im

bb.bd:                                            ; preds = %.noexc20.i
  %i.hi = load float, ptr %i.hh, align 8, !noalias !5588, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !5588
  store float %i.hi, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.be:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.hj = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5568, !noundef !5
  switch i8 %i.hj, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 105, label %bb.bf
    i8 118, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %.sroa.gep319 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep320 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel321 = select i1 %i.ev, ptr %.sroa.gep319, ptr %.sroa.gep320
  %i.hk = load i8, ptr %.sink13.i893.i.i.sroa.sel321, align 1, !noalias !5568, !noundef !5
  %i.hl = icmp eq i8 %i.hk, 110
  br i1 %i.hl, label %bb.bh, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.bg:                                            ; preds = %bb.be
  %.sroa.gep328 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep329 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel330 = select i1 %i.ev, ptr %.sroa.gep328, ptr %.sroa.gep329
  %i.hm = load i8, ptr %.sink13.i893.i.i.sroa.sel330, align 1, !noalias !5568, !noundef !5
  switch i8 %i.hm, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 50, label %bb.bl
    i8 51, label %bb.bm
  ]

bb.bh:                                            ; preds = %bb.bf
  %.sroa.gep316 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep317 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel318 = select i1 %i.ev, ptr %.sroa.gep316, ptr %.sroa.gep317
  %i.hn = load i8, ptr %.sink13.i893.i.i.sroa.sel318, align 1, !noalias !5568, !noundef !5
  %i.ho = icmp eq i8 %i.hn, 116
  br i1 %i.ho, label %bb.bi, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5588
  invoke fastcc void @_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ao, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc21.i unwind label %bb.il, !noalias !5568

.noexc21.i:                                       ; preds = %bb.bi
  %i.hp = load i64, ptr %i.ao, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not877.i.i = icmp eq i64 %i.hp, -1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.hr = load i32, ptr %i.hq, align 8, !noalias !5588 ; 3 uses
  br i1 %.not877.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.noexc21.i
  %.sroa.5542.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.sroa.69.sroa.37.4.copyload166.i = load i32, ptr %.sroa.5542.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5542.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a
  br label %bb.im

bb.cc:                                            ; preds = %.noexc28.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !5588
  invoke fastcc void @_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ac, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc29.i unwind label %bb.il, !noalias !5568

.noexc29.i:                                       ; preds = %bb.cc
  %i.io = load i64, ptr %i.ac, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not872.i.i = icmp eq i64 %i.io, -1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.iq = load i32, ptr %i.ip, align 8, !noalias !5588 ; 3 uses
  br i1 %.not872.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.noexc29.i
  %.sroa.5659.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.sroa.69.sroa.37.4.copyload161.i = load i32, ptr %.sroa.5659.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5659.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.116.i.sroa.0.0.copyload667 = load <8 x i16>, ptr %.sroa.116.20..sroa.5659.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc273.i = trunc nuw nsw i64 %i.io to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc185.i = trunc i32 %i.iq to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift231.i = lshr i32 %i.iq, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc232.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift231.i to i24
  br label %bb.im

bb.ce:                                            ; preds = %.noexc29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !5588
  %.sroa.0213.0.insert.ext.i.i = zext i32 %i.ii to i64
  %.sroa.0213.4.insert.ext.i.i = zext i32 %i.in to i64
  %.sroa.0213.4.insert.shift.i.i = shl nuw i64 %.sroa.0213.4.insert.ext.i.i, 32
  %.sroa.0213.4.insert.insert.i.i = or disjoint i64 %.sroa.0213.4.insert.shift.i.i, %.sroa.0213.0.insert.ext.i.i
  store i64 %.sroa.0213.4.insert.insert.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.sroa.56.sroa.0.0.insert.ext.i.i = zext i32 %i.iq to i64
  br label %bb.an

bb.cf:                                            ; preds = %.noexc27.i
  %.sroa.4667.0.copyload.i373.i = load i32, ptr %i.ik, align 8, !noalias !5588 ; 2 uses
  %.sroa.5668.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.sroa.69.sroa.37.4.copyload156.i = load i32, ptr %.sroa.5668.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5668.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.116.i.sroa.0.0.copyload662 = load <8 x i16>, ptr %.sroa.116.20..sroa.5668.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc268.i = trunc nuw nsw i64 %i.ij to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.4667.0.copyload.i373.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift.i = lshr i32 %.sroa.4667.0.copyload.i373.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift.i to i24
  br label %bb.im

bb.cg:                                            ; preds = %.noexc27.i
  %i.ir = load float, ptr %i.ik, align 8, !noalias !5588, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !5588
  invoke fastcc void @_RINvXsp_NtCsdsTQD3x2eOp_3exr2iofNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc30.i unwind label %bb.il, !noalias !5568

.noexc30.i:                                       ; preds = %bb.cg
  %i.is = load i64, ptr %i.aa, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not868.i.i = icmp eq i64 %i.is, -1
  %i.it = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  br i1 %.not868.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.noexc30.i
  %.sroa.4676.0.copyload.i374.i = load i32, ptr %i.it, align 8, !noalias !5588 ; 2 uses
  %.sroa.5677.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %.sroa.69.sroa.37.4.copyload157.i = load i32, ptr %.sroa.5677.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5677.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.116.i.sroa.0.0.copyload663 = load <8 x i16>, ptr %.sroa.116.20..sroa.5677.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc269.i = trunc nuw nsw i64 %i.is to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc168.i = trunc i32 %.sroa.4676.0.copyload.i374.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift197.i = lshr i32 %.sroa.4676.0.copyload.i374.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc198.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift197.i to i24
  br label %bb.im

bb.ci:                                            ; preds = %.noexc30.i
  %i.iu = load float, ptr %i.it, align 8, !noalias !5588, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !5588
  invoke fastcc void @_RINvXsp_NtCsdsTQD3x2eOp_3exr2iofNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.z, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc31.i unwind label %bb.il, !noalias !5568

.noexc31.i:                                       ; preds = %bb.ci
  %i.iv = load i64, ptr %i.z, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not869.i.i = icmp eq i64 %i.iv, -1
  %i.iw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !noalias !5588 ; 3 uses
  br i1 %.not869.i.i, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %.noexc31.i
  %.sroa.5686.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.sroa.69.sroa.37.4.copyload158.i = load i32, ptr %.sroa.5686.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5686.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.116.i.sroa.0.0.copyload664 = load <8 x i16>, ptr %.sroa.116.20..sroa.5686.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc270.i = trunc nuw nsw i64 %i.iv to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc169.i = trunc i32 %i.ix to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift199.i = lshr i32 %i.ix, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc200.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift199.i to i24
  br label %bb.im

bb.ck:                                            ; preds = %.noexc31.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !5588
  store float %i.ir, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.sroa.0245.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0245.i.i, i64 4
  store float %i.iu, ptr %.sroa.0245.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx, align 4, !noalias !5588
  %.sroa.56.sroa.0.0.insert.ext75.i.i = zext i32 %i.ix to i64
  br label %bb.an

bb.cl:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.iy = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5568, !noundef !5
  switch i8 %i.iy, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 100, label %bb.cm
    i8 99, label %bb.cn
    i8 101, label %bb.co
    i8 115, label %bb.cp
  ]

bb.cm:                                            ; preds = %bb.cl
  %.sroa.gep343 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep344 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel345 = select i1 %i.ev, ptr %.sroa.gep343, ptr %.sroa.gep344
  %i.iz = load i8, ptr %.sink13.i893.i.i.sroa.sel345, align 1, !noalias !5568, !noundef !5
  %i.ja = icmp eq i8 %i.iz, 111
  br i1 %i.ja, label %bb.cq, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %.sroa.gep358 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep359 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel360 = select i1 %i.ev, ptr %.sroa.gep358, ptr %.sroa.gep359
  %i.jb = load i8, ptr %.sink13.i893.i.i.sroa.sel360, align 1, !noalias !5568, !noundef !5
  %i.jc = icmp eq i8 %i.jb, 104
  br i1 %i.jc, label %bb.cx, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.co:                                            ; preds = %bb.cl
  %.sroa.gep373 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep374 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel375 = select i1 %i.ev, ptr %.sroa.gep373, ptr %.sroa.gep374
  %i.jd = load i8, ptr %.sink13.i893.i.i.sroa.sel375, align 1, !noalias !5568, !noundef !5
  %i.je = icmp eq i8 %i.jd, 110
  br i1 %i.je, label %bb.df, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cp:                                            ; preds = %bb.cl
  %.sroa.gep388 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep389 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel390 = select i1 %i.ev, ptr %.sroa.gep388, ptr %.sroa.gep389
  %i.jf = load i8, ptr %.sink13.i893.i.i.sroa.sel390, align 1, !noalias !5568, !noundef !5
  %i.jg = icmp eq i8 %i.jf, 116
  br i1 %i.jg, label %bb.dm, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.cm
  %.sroa.gep340 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep341 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel342 = select i1 %i.ev, ptr %.sroa.gep340, ptr %.sroa.gep341
  %i.jh = load i8, ptr %.sink13.i893.i.i.sroa.sel342, align 1, !noalias !5568, !noundef !5
  %i.ji = icmp eq i8 %i.jh, 117
  br i1 %i.ji, label %bb.cr, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cq
  %.sroa.gep337 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep338 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel339 = select i1 %i.ev, ptr %.sroa.gep337, ptr %.sroa.gep338
  %i.jj = load i8, ptr %.sink13.i893.i.i.sroa.sel339, align 1, !noalias !5568, !noundef !5
  %i.jk = icmp eq i8 %i.jj, 98
  br i1 %i.jk, label %bb.cs, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cs:                                            ; preds = %bb.cr
  %.sroa.gep334 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep335 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel336 = select i1 %i.ev, ptr %.sroa.gep334, ptr %.sroa.gep335
  %i.jl = load i8, ptr %.sink13.i893.i.i.sroa.sel336, align 1, !noalias !5568, !noundef !5
  %i.jm = icmp eq i8 %i.jl, 108
  br i1 %i.jm, label %bb.ct, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %.sroa.gep331 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep332 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel333 = select i1 %i.ev, ptr %.sroa.gep331, ptr %.sroa.gep332
  %i.jn = load i8, ptr %.sink13.i893.i.i.sroa.sel333, align 1, !noalias !5568, !noundef !5
  %i.jo = icmp eq i8 %i.jn, 101
  br i1 %i.jo, label %bb.cu, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5588
  invoke fastcc void @_RINvXsq_NtCsdsTQD3x2eOp_3exr2iodNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.am, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc32.i unwind label %bb.il, !noalias !5568

.noexc32.i:                                       ; preds = %bb.cu
  %i.jp = load i64, ptr %i.am, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not866.i.i = icmp eq i64 %i.jp, -1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  br i1 %.not866.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.noexc32.i
  %.sroa.4559.0.copyload.i372.i = load i64, ptr %i.jq, align 8, !noalias !5588 ; 3 uses
  %.sroa.5560.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.116.i.sroa.0.0.copyload661 = load <8 x i16>, ptr %.sroa.5560.0..sroa_idx.i.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc267.i = trunc nuw nsw i64 %i.jp to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc193.i = trunc i64 %.sroa.4559.0.copyload.i372.i to i8
  %6 = lshr i64 %.sroa.4559.0.copyload.i372.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc248.i = trunc i64 %6 to i24
  %.sroa.69.sroa.37.0.extract.shift146.i = lshr i64 %.sroa.4559.0.copyload.i372.i, 32
  %.sroa.69.sroa.37.0.extract.trunc147.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift146.i to i32
  br label %bb.im

bb.cw:                                            ; preds = %.noexc32.i
  %i.jr = load double, ptr %i.jq, align 8, !noalias !5588, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !5588
  store double %i.jr, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.cx:                                            ; preds = %bb.cn
  %.sroa.gep355 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep356 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel357 = select i1 %i.ev, ptr %.sroa.gep355, ptr %.sroa.gep356
  %i.js = load i8, ptr %.sink13.i893.i.i.sroa.sel357, align 1, !noalias !5568, !noundef !5
  %i.jt = icmp eq i8 %i.js, 108
  br i1 %i.jt, label %bb.cy, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  %.sroa.gep352 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep353 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel354 = select i1 %i.ev, ptr %.sroa.gep352, ptr %.sroa.gep353
  %i.ju = load i8, ptr %.sink13.i893.i.i.sroa.sel354, align 1, !noalias !5568, !noundef !5
  %i.jv = icmp eq i8 %i.ju, 105
  br i1 %i.jv, label %bb.cz, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %.sroa.gep349 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep350 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel351 = select i1 %i.ev, ptr %.sroa.gep349, ptr %.sroa.gep350
  %i.jw = load i8, ptr %.sink13.i893.i.i.sroa.sel351, align 1, !noalias !5568, !noundef !5
  %i.jx = icmp eq i8 %i.jw, 115
  br i1 %i.jx, label %bb.da, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.da:                                            ; preds = %bb.cz
  %.sroa.gep346 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep347 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel348 = select i1 %i.ev, ptr %.sroa.gep346, ptr %.sroa.gep347
  %i.jy = load i8, ptr %.sink13.i893.i.i.sroa.sel348, align 1, !noalias !5568, !noundef !5
  %i.jz = icmp eq i8 %i.jy, 116
  br i1 %i.jz, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit899.i.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit899.i.i: ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !5588
  %i.ka = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !nonnull !5
  %i.kc = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sink13.i896.i.i = select i1 %i.em, ptr %i.kb, ptr %i.ke
  %.sink12.i897.i.i = select i1 %i.em, i64 %i.kd, i64 %i.el
  %i.kf = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sink13.i896.i.i, ptr %i.kf, align 8, !alias.scope !5599, !noalias !5600
  %i.kg = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 %.sink12.i897.i.i, ptr %i.kg, align 8, !alias.scope !5599, !noalias !5600
  store i8 2, ptr %i.x, align 8, !alias.scope !5599, !noalias !5600
  invoke fastcc void @_RINvMse_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_11ChannelList4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(352) %i.y, ptr noalias nofree noundef align 8 dereferenceable(32) %i.x)
          to label %bb.dc unwind label %bb.db, !noalias !5568

bb.db:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit899.i.i
  %i.kh = landingpad { ptr, i32 }
          cleanup
  %.val891.i.i = load i8, ptr %i.x, align 8, !range !16, !noalias !5588, !noundef !5
  %i.ki = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val892.i.i = load ptr, ptr %i.ki, align 8, !noalias !5588
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShEECsa5QsYiPB8Gl_5image(i8 %.val891.i.i, ptr %.val892.i.i) #33
          to label %.body15.i unwind label %bb.ax, !noalias !5568

bb.dc:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit899.i.i
  %i.kj = load i64, ptr %i.y, align 8, !range !23, !noalias !5588, !noundef !5 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, 2
  %i.kl = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.sroa.4702.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.kk, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %.sroa.0701.0.copyload.i371.i = load i64, ptr %i.kl, align 8, !noalias !5588 ; 2 uses
  %.sroa.4702.0.copyload.i129.i = load i32, ptr %.sroa.4702.0..sroa_idx.i.i, align 8, !noalias !5564 ; 2 uses
  %.sroa.4702.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %.sroa.4702.0.copyload.i130.i = load i32, ptr %.sroa.4702.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !5564
  %.sroa.5703.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.km = load <8 x i16>, ptr %.sroa.5703.0..sroa_idx.i.i, align 8, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5588
  %.val889.i.i = load i8, ptr %i.x, align 8, !range !16, !noalias !5588, !noundef !5
  %i.kn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val890.i.i = load ptr, ptr %i.kn, align 8, !noalias !5588
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShEECsa5QsYiPB8Gl_5image(i8 %.val889.i.i, ptr %.val890.i.i)
          to label %.noexc33.i unwind label %bb.il, !noalias !5568

.noexc33.i:                                       ; preds = %bb.dd
  %.sroa.69.sroa.0.sroa.35.0.extract.shift217.i = lshr i32 %.sroa.4702.0.copyload.i129.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc218.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift217.i to i24
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc178.i = trunc i32 %.sroa.4702.0.copyload.i129.i to i8
  %.sroa.35.sroa.35.0.extract.shift285.i = lshr i64 %.sroa.0701.0.copyload.i371.i, 32
  %.sroa.35.sroa.35.0.extract.trunc286.i = trunc nuw i64 %.sroa.35.sroa.35.0.extract.shift285.i to i32
  %.sroa.35.sroa.0.0.extract.trunc256.i = trunc i64 %.sroa.0701.0.copyload.i371.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5588
  br label %bb.im

bb.de:                                            ; preds = %bb.dc
  %.sroa.4691.0.copyload.i.i = load double, ptr %i.kl, align 8, !noalias !5588
  %.sroa.5692.0.copyload.i.i = load i64, ptr %.sroa.4702.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.6693.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.sroa.6693.0.copyload.i.i = load i64, ptr %.sroa.6693.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.7694.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.sroa.7694.0.copyload.i.i = load i64, ptr %.sroa.7694.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.8695.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.ko = load <2 x i32>, ptr %.sroa.8695.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.10.0..sroa_idx.i.i, i64 32, i1 false), !noalias !5588
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.58.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.11.0..sroa_idx.i.i, i64 272, i1 false), !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !5588
  store double %.sroa.4691.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.val887.i.i = load i8, ptr %i.x, align 8, !range !16, !noalias !5588, !noundef !5
  %i.kp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val888.i.i = load ptr, ptr %i.kp, align 8, !noalias !5588
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShEECsa5QsYiPB8Gl_5image(i8 %.val887.i.i, ptr %.val888.i.i)
          to label %.noexc34.i unwind label %bb.il, !noalias !5568

.noexc34.i:                                       ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !5588
  br label %bb.an

bb.df:                                            ; preds = %bb.co
  %.sroa.gep370 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep371 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel372 = select i1 %i.ev, ptr %.sroa.gep370, ptr %.sroa.gep371
  %i.kq = load i8, ptr %.sink13.i893.i.i.sroa.sel372, align 1, !noalias !5568, !noundef !5
  %i.kr = icmp eq i8 %i.kq, 118
  br i1 %i.kr, label %bb.dg, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.df
  %.sroa.gep367 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep368 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel369 = select i1 %i.ev, ptr %.sroa.gep367, ptr %.sroa.gep368
  %i.ks = load i8, ptr %.sink13.i893.i.i.sroa.sel369, align 1, !noalias !5568, !noundef !5
  %i.kt = icmp eq i8 %i.ks, 109
  br i1 %i.kt, label %bb.dh, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  %.sroa.gep364 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep365 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel366 = select i1 %i.ev, ptr %.sroa.gep364, ptr %.sroa.gep365
  %i.ku = load i8, ptr %.sink13.i893.i.i.sroa.sel366, align 1, !noalias !5568, !noundef !5
  %i.kv = icmp eq i8 %i.ku, 97
  br i1 %i.kv, label %bb.di, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.di:                                            ; preds = %bb.dh
  %.sroa.gep361 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep362 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel363 = select i1 %i.ev, ptr %.sroa.gep361, ptr %.sroa.gep362
  %i.kw = load i8, ptr %.sink13.i893.i.i.sroa.sel363, align 1, !noalias !5568, !noundef !5
  %i.kx = icmp eq i8 %i.kw, 112
  br i1 %i.kx, label %bb.dj, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5588
  invoke fastcc void @_RINvMsi_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_14EnvironmentMap4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.u, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc35.i unwind label %bb.il, !noalias !5568

.noexc35.i:                                       ; preds = %bb.dj
  %i.ky = load i64, ptr %i.u, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not865.i.i = icmp eq i64 %i.ky, -1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.la = load i8, ptr %i.kz, align 8, !noalias !5588 ; 2 uses
  br i1 %.not865.i.i, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.noexc35.i
  %.sroa.5747.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %.sroa.69.sroa.0.sroa.35.sroa.0.0.copyload255.i = load i24, ptr %.sroa.5747.0..sroa_idx.i.i, align 1, !noalias !5598
  %.sroa.69.sroa.37.1..sroa.5747.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %.sroa.69.sroa.37.1.copyload154.i = load i32, ptr %.sroa.69.sroa.37.1..sroa.5747.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !5598
  %.sroa.116.17..sroa.5747.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.116.i.sroa.0.0.copyload660 = load <8 x i16>, ptr %.sroa.116.17..sroa.5747.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc266.i = trunc nuw nsw i64 %i.ky to i32
  br label %bb.im

bb.dl:                                            ; preds = %.noexc35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5588
  store i8 %i.la, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.dm:                                            ; preds = %bb.cp
  %.sroa.gep385 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep386 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel387 = select i1 %i.ev, ptr %.sroa.gep385, ptr %.sroa.gep386
  %i.lb = load i8, ptr %.sink13.i893.i.i.sroa.sel387, align 1, !noalias !5568, !noundef !5
  %i.lc = icmp eq i8 %i.lb, 114
  br i1 %i.lc, label %bb.dn, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dn:                                            ; preds = %bb.dm
  %.sroa.gep382 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep383 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel384 = select i1 %i.ev, ptr %.sroa.gep382, ptr %.sroa.gep383
  %i.ld = load i8, ptr %.sink13.i893.i.i.sroa.sel384, align 1, !noalias !5568, !noundef !5
  %i.le = icmp eq i8 %i.ld, 105
  br i1 %i.le, label %bb.do, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i
end_hunk_2
begin_hunk_3_@_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a
bb.du:                                            ; preds = %bb.dt
  %.sroa.gep409 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep410 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel411 = select i1 %i.ev, ptr %.sroa.gep409, ptr %.sroa.gep410
  %i.lq = load i8, ptr %.sink13.i893.i.i.sroa.sel411, align 1, !noalias !5568, !noundef !5
  %i.lr = icmp eq i8 %i.lq, 97
  br i1 %i.lr, label %bb.dw, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dv:                                            ; preds = %bb.dt
  %.sroa.gep445 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel447 = select i1 %i.ev, ptr %.sroa.gep445, ptr %.sroa.gep446
  %i.ls = load i8, ptr %.sink13.i893.i.i.sroa.sel447, align 1, !noalias !5568, !noundef !5
  %i.lt = icmp eq i8 %i.ls, 105
  br i1 %i.lt, label %bb.eh, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dw:                                            ; preds = %bb.du
  %.sroa.gep406 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep407 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel408 = select i1 %i.ev, ptr %.sroa.gep406, ptr %.sroa.gep407
  %i.lu = load i8, ptr %.sink13.i893.i.i.sroa.sel408, align 1, !noalias !5568, !noundef !5
  %i.lv = icmp eq i8 %i.lu, 116
  br i1 %i.lv, label %bb.dx, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  %.sroa.gep403 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep404 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel405 = select i1 %i.ev, ptr %.sroa.gep403, ptr %.sroa.gep404
  %i.lw = load i8, ptr %.sink13.i893.i.i.sroa.sel405, align 1, !noalias !5568, !noundef !5
  %i.lx = icmp eq i8 %i.lw, 105
  br i1 %i.lx, label %bb.dy, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %.sroa.gep400 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep401 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel402 = select i1 %i.ev, ptr %.sroa.gep400, ptr %.sroa.gep401
  %i.ly = load i8, ptr %.sink13.i893.i.i.sroa.sel402, align 1, !noalias !5568, !noundef !5
  %i.lz = icmp eq i8 %i.ly, 111
  br i1 %i.lz, label %bb.dz, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.dz:                                            ; preds = %bb.dy
  %.sroa.gep397 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep398 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel399 = select i1 %i.ev, ptr %.sroa.gep397, ptr %.sroa.gep398
  %i.ma = load i8, ptr %.sink13.i893.i.i.sroa.sel399, align 1, !noalias !5568, !noundef !5
  %i.mb = icmp eq i8 %i.ma, 110
  br i1 %i.mb, label %bb.ea, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ea:                                            ; preds = %bb.dz
  %.sroa.gep394 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep395 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel396 = select i1 %i.ev, ptr %.sroa.gep394, ptr %.sroa.gep395
  %i.mc = load i8, ptr %.sink13.i893.i.i.sroa.sel396, align 1, !noalias !5568, !noundef !5
  %i.md = icmp eq i8 %i.mc, 97
  br i1 %i.md, label %bb.eb, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.eb:                                            ; preds = %bb.ea
  %.sroa.gep391 = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  %.sroa.gep392 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sink13.i893.i.i.sroa.sel393 = select i1 %i.ev, ptr %.sroa.gep391, ptr %.sroa.gep392
  %i.me = load i8, ptr %.sink13.i893.i.i.sroa.sel393, align 1, !noalias !5568, !noundef !5
  %i.mf = icmp eq i8 %i.me, 108
  br i1 %i.mf, label %bb.ec, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ec:                                            ; preds = %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !5588
  invoke fastcc void @_RINvXsm_NtCsdsTQD3x2eOp_3exr2iolNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.al, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc37.i unwind label %bb.il, !noalias !5568

.noexc37.i:                                       ; preds = %bb.ec
  %i.mg = load i64, ptr %i.al, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not863.i.i = icmp eq i64 %i.mg, -1
  %i.mh = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.mi = load i32, ptr %i.mh, align 8, !noalias !5588 ; 3 uses
  br i1 %.not863.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %.noexc37.i
  %.sroa.5569.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.sroa.69.sroa.37.4.copyload.i = load i32, ptr %.sroa.5569.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5569.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.sroa.116.i.sroa.0.0.copyload658 = load <8 x i16>, ptr %.sroa.116.20..sroa.5569.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc263.i = trunc nuw nsw i64 %i.mg to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc181.i = trunc i32 %i.mi to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift223.i = lshr i32 %i.mi, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc224.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift223.i to i24
  br label %bb.im

bb.ee:                                            ; preds = %.noexc37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !5588
  invoke fastcc void @_RINvXsl_NtCsdsTQD3x2eOp_3exr2iomNtB6_4Data7read_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.ak, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar) #36
          to label %.noexc38.i unwind label %bb.il, !noalias !5568

.noexc38.i:                                       ; preds = %bb.ee
  %i.mj = load i64, ptr %i.ak, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not864.i.i = icmp eq i64 %i.mj, -1
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !noalias !5588 ; 3 uses
  br i1 %.not864.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %.noexc38.i
  %.sroa.5578.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %.sroa.69.sroa.37.4.copyload155.i = load i32, ptr %.sroa.5578.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.20..sroa.5578.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.116.i.sroa.0.0.copyload659 = load <8 x i16>, ptr %.sroa.116.20..sroa.5578.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc264.i = trunc nuw nsw i64 %i.mj to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc182.i = trunc i32 %i.ml to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift225.i = lshr i32 %i.ml, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc226.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift225.i to i24
  br label %bb.im

bb.eg:                                            ; preds = %.noexc38.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !5588
  store i32 %i.mi, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.sroa.0245.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx707 = getelementptr inbounds nuw i8, ptr %.sroa.0245.i.i, i64 4
  store i32 %i.ml, ptr %.sroa.0245.i.i.4.i.i.4.i.i.4.i.4.i.4..sroa_idx707, align 4, !noalias !5588
  br label %bb.an

bb.eh:                                            ; preds = %bb.dv
  %.sroa.gep442 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep443 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel444 = select i1 %i.ev, ptr %.sroa.gep442, ptr %.sroa.gep443
  %i.mm = load i8, ptr %.sink13.i893.i.i.sroa.sel444, align 1, !noalias !5568, !noundef !5
  switch i8 %i.mm, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 109, label %bb.ei
    i8 108, label %bb.ej
  ]

bb.ei:                                            ; preds = %bb.eh
  %.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel426 = select i1 %i.ev, ptr %.sroa.gep424, ptr %.sroa.gep425
  %i.mn = load i8, ptr %.sink13.i893.i.i.sroa.sel426, align 1, !noalias !5568, !noundef !5
  %i.mo = icmp eq i8 %i.mn, 101
  br i1 %i.mo, label %bb.ek, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ej:                                            ; preds = %bb.eh
  %.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel441 = select i1 %i.ev, ptr %.sroa.gep439, ptr %.sroa.gep440
  %i.mp = load i8, ptr %.sink13.i893.i.i.sroa.sel441, align 1, !noalias !5568, !noundef !5
  %i.mq = icmp eq i8 %i.mp, 101
  br i1 %i.mq, label %bb.er, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %.sroa.gep421 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep422 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel423 = select i1 %i.ev, ptr %.sroa.gep421, ptr %.sroa.gep422
  %i.mr = load i8, ptr %.sink13.i893.i.i.sroa.sel423, align 1, !noalias !5568, !noundef !5
  %i.ms = icmp eq i8 %i.mr, 99
  br i1 %i.ms, label %bb.el, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.el:                                            ; preds = %bb.ek
  %.sroa.gep418 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep419 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel420 = select i1 %i.ev, ptr %.sroa.gep418, ptr %.sroa.gep419
  %i.mt = load i8, ptr %.sink13.i893.i.i.sroa.sel420, align 1, !noalias !5568, !noundef !5
  %i.mu = icmp eq i8 %i.mt, 111
  br i1 %i.mu, label %bb.em, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.em:                                            ; preds = %bb.el
  %.sroa.gep415 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep416 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel417 = select i1 %i.ev, ptr %.sroa.gep415, ptr %.sroa.gep416
  %i.mv = load i8, ptr %.sink13.i893.i.i.sroa.sel417, align 1, !noalias !5568, !noundef !5
  %i.mw = icmp eq i8 %i.mv, 100
  br i1 %i.mw, label %bb.en, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.en:                                            ; preds = %bb.em
  %.sroa.gep412 = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  %.sroa.gep413 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sink13.i893.i.i.sroa.sel414 = select i1 %i.ev, ptr %.sroa.gep412, ptr %.sroa.gep413
  %i.mx = load i8, ptr %.sink13.i893.i.i.sroa.sel414, align 1, !noalias !5568, !noundef !5
  %i.my = icmp eq i8 %i.mx, 101
  br i1 %i.my, label %bb.eo, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5588
  invoke fastcc void @_RINvMsf_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_8TimeCode4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.aj, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc39.i unwind label %bb.il, !noalias !5568

.noexc39.i:                                       ; preds = %bb.eo
  %i.mz = load i64, ptr %i.aj, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not862.i.i = icmp eq i64 %i.mz, -1
  %i.na = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  %.sroa.4583.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.4583.0.copyload.i.i = load i64, ptr %.sroa.4583.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  %.sroa.5584.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.sroa.5584.0.copyload.i.i = load i16, ptr %.sroa.5584.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  br i1 %.not862.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.noexc39.i
  %.sroa.4591.0.copyload.i370.i = load i64, ptr %i.na, align 8, !noalias !5588 ; 3 uses
  %.sroa.7594.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 26
  %.sroa.116.i.sroa.0.10.copyload = load <3 x i16>, ptr %.sroa.7594.0..sroa_idx.i.i, align 2, !noalias !5598
  %.sroa.116.i.sroa.0.10.vec.expand = shufflevector <3 x i16> %.sroa.116.i.sroa.0.10.copyload, <3 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc262.i = trunc nuw nsw i64 %i.mz to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc192.i = trunc i64 %.sroa.4591.0.copyload.i370.i to i8
  %7 = lshr i64 %.sroa.4591.0.copyload.i370.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc246.i = trunc i64 %7 to i24
  %.sroa.69.sroa.37.0.extract.shift144.i = lshr i64 %.sroa.4591.0.copyload.i370.i, 32
  %.sroa.69.sroa.37.0.extract.trunc145.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift144.i to i32
  %i.nb = bitcast i64 %.sroa.4583.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand636 = shufflevector <4 x i16> %i.nb, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.0.vecblend637 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand636, <8 x i16> %.sroa.116.i.sroa.0.10.vec.expand, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 13, i32 14, i32 15>
  %.sroa.116.i.sroa.0.8.vec.insert = insertelement <8 x i16> %.sroa.116.i.sroa.0.0.vecblend637, i16 %.sroa.5584.0.copyload.i.i, i64 4
  br label %bb.im

bb.eq:                                            ; preds = %.noexc39.i
  %.sroa.0582.0.copyload.i.i = load double, ptr %i.na, align 8, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !5588
  store double %.sroa.0582.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.sroa.56.sroa.21.sroa.0.0.insert.ext.i.i = zext i16 %.sroa.5584.0.copyload.i.i to i64
  br label %bb.an

bb.er:                                            ; preds = %bb.ej
  %.sroa.gep436 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep437 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel438 = select i1 %i.ev, ptr %.sroa.gep436, ptr %.sroa.gep437
  %i.nc = load i8, ptr %.sink13.i893.i.i.sroa.sel438, align 1, !noalias !5568, !noundef !5
  %i.nd = icmp eq i8 %i.nc, 100
  br i1 %i.nd, label %bb.es, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.es:                                            ; preds = %bb.er
  %.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep434 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel435 = select i1 %i.ev, ptr %.sroa.gep433, ptr %.sroa.gep434
  %i.ne = load i8, ptr %.sink13.i893.i.i.sroa.sel435, align 1, !noalias !5568, !noundef !5
  %i.nf = icmp eq i8 %i.ne, 101
  br i1 %i.nf, label %bb.et, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.et:                                            ; preds = %bb.es
  %.sroa.gep430 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep431 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel432 = select i1 %i.ev, ptr %.sroa.gep430, ptr %.sroa.gep431
  %i.ng = load i8, ptr %.sink13.i893.i.i.sroa.sel432, align 1, !noalias !5568, !noundef !5
  %i.nh = icmp eq i8 %i.ng, 115
  br i1 %i.nh, label %bb.eu, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.eu:                                            ; preds = %bb.et
  %.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  %.sroa.gep428 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sink13.i893.i.i.sroa.sel429 = select i1 %i.ev, ptr %.sroa.gep427, ptr %.sroa.gep428
  %i.ni = load i8, ptr %.sink13.i893.i.i.sroa.sel429, align 1, !noalias !5568, !noundef !5
  %i.nj = icmp eq i8 %i.ni, 99
  br i1 %i.nj, label %bb.ev, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5588
  invoke fastcc void @_RINvMsn_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_15TileDescription4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc40.i unwind label %bb.il, !noalias !5568

.noexc40.i:                                       ; preds = %bb.ev
  %i.nk = load i64, ptr %i.j, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not861.i.i = icmp eq i64 %i.nk, -1
  %i.nl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.0837.0.copyload.i.i = load double, ptr %i.nl, align 8, !noalias !5588 ; 2 uses
  %.sroa.4838.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.4838.0.copyload.i.i = load i64, ptr %.sroa.4838.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  %.sroa.5839.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.5839.0.copyload.i.i = load i64, ptr %.sroa.5839.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !5588
  br i1 %.not861.i.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %.noexc40.i
  %.sroa.35.sroa.0.0.extract.trunc261.i = trunc nuw nsw i64 %i.nk to i32
  %i.nm = bitcast double %.sroa.0837.0.copyload.i.i to i64 ; 3 uses
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc191.i = trunc i64 %i.nm to i8
  %8 = lshr i64 %i.nm, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc244.i = trunc i64 %8 to i24
  %.sroa.69.sroa.37.0.extract.shift142.i = lshr i64 %i.nm, 32
  %.sroa.69.sroa.37.0.extract.trunc143.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift142.i to i32
  %i.nn = bitcast i64 %.sroa.4838.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand633 = shufflevector <4 x i16> %i.nn, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.no = bitcast i64 %.sroa.5839.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.8.vec.expand694 = shufflevector <4 x i16> %i.no, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %.sroa.116.i.sroa.0.8.vecblend695 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand633, <8 x i16> %.sroa.116.i.sroa.0.8.vec.expand694, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  br label %bb.im

bb.ex:                                            ; preds = %.noexc40.i
  store double %.sroa.0837.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.ey:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.np = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5568, !noundef !5
  %i.nq = icmp eq i8 %i.np, 99
  br i1 %i.nq, label %bb.ez, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ez:                                            ; preds = %bb.ey
  %.sroa.gep484 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep485 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel486 = select i1 %i.ev, ptr %.sroa.gep484, ptr %.sroa.gep485
  %i.nr = load i8, ptr %.sink13.i893.i.i.sroa.sel486, align 1, !noalias !5568, !noundef !5
  %i.ns = icmp eq i8 %i.nr, 104
  br i1 %i.ns, label %bb.fa, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fa:                                            ; preds = %bb.ez
  %.sroa.gep481 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep482 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel483 = select i1 %i.ev, ptr %.sroa.gep481, ptr %.sroa.gep482
  %i.nt = load i8, ptr %.sink13.i893.i.i.sroa.sel483, align 1, !noalias !5568, !noundef !5
  %i.nu = icmp eq i8 %i.nt, 114
  br i1 %i.nu, label %bb.fb, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fb:                                            ; preds = %bb.fa
  %.sroa.gep478 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep479 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel480 = select i1 %i.ev, ptr %.sroa.gep478, ptr %.sroa.gep479
  %i.nv = load i8, ptr %.sink13.i893.i.i.sroa.sel480, align 1, !noalias !5568, !noundef !5
  %i.nw = icmp eq i8 %i.nv, 111
  br i1 %i.nw, label %bb.fc, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fc:                                            ; preds = %bb.fb
  %.sroa.gep475 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep476 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel477 = select i1 %i.ev, ptr %.sroa.gep475, ptr %.sroa.gep476
  %i.nx = load i8, ptr %.sink13.i893.i.i.sroa.sel477, align 1, !noalias !5568, !noundef !5
  %i.ny = icmp eq i8 %i.nx, 109
  br i1 %i.ny, label %bb.fd, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %.sroa.gep472 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep473 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel474 = select i1 %i.ev, ptr %.sroa.gep472, ptr %.sroa.gep473
  %i.nz = load i8, ptr %.sink13.i893.i.i.sroa.sel474, align 1, !noalias !5568, !noundef !5
  %i.oa = icmp eq i8 %i.nz, 97
  br i1 %i.oa, label %bb.fe, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %.sroa.gep469 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep470 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel471 = select i1 %i.ev, ptr %.sroa.gep469, ptr %.sroa.gep470
  %i.ob = load i8, ptr %.sink13.i893.i.i.sroa.sel471, align 1, !noalias !5568, !noundef !5
  %i.oc = icmp eq i8 %i.ob, 116
  br i1 %i.oc, label %bb.ff, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ff:                                            ; preds = %bb.fe
  %.sroa.gep466 = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  %.sroa.gep467 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sink13.i893.i.i.sroa.sel468 = select i1 %i.ev, ptr %.sroa.gep466, ptr %.sroa.gep467
  %i.od = load i8, ptr %.sink13.i893.i.i.sroa.sel468, align 1, !noalias !5568, !noundef !5
  %i.oe = icmp eq i8 %i.od, 105
  br i1 %i.oe, label %bb.fg, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fg:                                            ; preds = %bb.ff
  %.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.gep464 = getelementptr inbounds nuw i8, ptr %i.au, i64 89
  %.sink13.i893.i.i.sroa.sel465 = select i1 %i.ev, ptr %.sroa.gep463, ptr %.sroa.gep464
  %i.of = load i8, ptr %.sink13.i893.i.i.sroa.sel465, align 1, !noalias !5568, !noundef !5
  %i.og = icmp eq i8 %i.of, 99
  br i1 %i.og, label %bb.fh, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fh:                                            ; preds = %bb.fg
  %.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.ex, i64 9
  %.sroa.gep461 = getelementptr inbounds nuw i8, ptr %i.au, i64 90
  %.sink13.i893.i.i.sroa.sel462 = select i1 %i.ev, ptr %.sroa.gep460, ptr %.sroa.gep461
  %i.oh = load i8, ptr %.sink13.i893.i.i.sroa.sel462, align 1, !noalias !5568, !noundef !5
  %i.oi = icmp eq i8 %i.oh, 105
  br i1 %i.oi, label %bb.fi, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fi:                                            ; preds = %bb.fh
  %.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.ex, i64 10
  %.sroa.gep458 = getelementptr inbounds nuw i8, ptr %i.au, i64 91
  %.sink13.i893.i.i.sroa.sel459 = select i1 %i.ev, ptr %.sroa.gep457, ptr %.sroa.gep458
  %i.oj = load i8, ptr %.sink13.i893.i.i.sroa.sel459, align 1, !noalias !5568, !noundef !5
  %i.ok = icmp eq i8 %i.oj, 116
  br i1 %i.ok, label %bb.fj, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fj:                                            ; preds = %bb.fi
  %.sroa.gep454 = getelementptr inbounds nuw i8, ptr %i.ex, i64 11
  %.sroa.gep455 = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  %.sink13.i893.i.i.sroa.sel456 = select i1 %i.ev, ptr %.sroa.gep454, ptr %.sroa.gep455
  %i.ol = load i8, ptr %.sink13.i893.i.i.sroa.sel456, align 1, !noalias !5568, !noundef !5
  %i.om = icmp eq i8 %i.ol, 105
  br i1 %i.om, label %bb.fk, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fk:                                            ; preds = %bb.fj
  %.sroa.gep451 = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.au, i64 93
  %.sink13.i893.i.i.sroa.sel453 = select i1 %i.ev, ptr %.sroa.gep451, ptr %.sroa.gep452
  %i.on = load i8, ptr %.sink13.i893.i.i.sroa.sel453, align 1, !noalias !5568, !noundef !5
  %i.oo = icmp eq i8 %i.on, 101
  br i1 %i.oo, label %bb.fl, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  %.sroa.gep448 = getelementptr inbounds nuw i8, ptr %i.ex, i64 13
  %.sroa.gep449 = getelementptr inbounds nuw i8, ptr %i.au, i64 94
  %.sink13.i893.i.i.sroa.sel450 = select i1 %i.ev, ptr %.sroa.gep448, ptr %.sroa.gep449
  %i.op = load i8, ptr %.sink13.i893.i.i.sroa.sel450, align 1, !noalias !5568, !noundef !5
  %i.oq = icmp eq i8 %i.op, 115
  br i1 %i.oq, label %bb.fm, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !5588
  invoke fastcc void @_RINvMsg_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_14Chromaticities4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.w, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc41.i unwind label %bb.il, !noalias !5568

.noexc41.i:                                       ; preds = %bb.fm
  %i.or = load i32, ptr %i.w, align 8, !range !28, !noalias !5588, !noundef !5
  %i.os = trunc nuw i32 %i.or to i1
  %.sroa.4719.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 2 uses
  %.sroa.5720.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 20 ; 2 uses
  %.sroa.6721.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %.sroa.6721.0.copyload.i.i = load i64, ptr %.sroa.6721.0..sroa_idx.i.i, align 4, !noalias !5588 ; 2 uses
  br i1 %i.os, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.noexc41.i
  %.sroa.5720.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %.sroa.5720.0.copyload.i59.i711 = load <2 x i16>, ptr %.sroa.5720.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5564
  %.sroa.5720.0.copyload.i58.i = load i32, ptr %.sroa.5720.0..sroa_idx.i.i, align 4, !noalias !5564
  %.sroa.4719.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4719.0.copyload.i55.i = load i32, ptr %.sroa.4719.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5564 ; 2 uses
  %.sroa.4719.0.copyload.i54.i = load i32, ptr %.sroa.4719.0..sroa_idx.i.i, align 4, !noalias !5564
  %i.ot = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.0718.0.copyload.i.i = load i32, ptr %i.ot, align 8, !noalias !5588
  %.sroa.7722.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %.sroa.7722.0.copyload.i.i712 = load <2 x i16>, ptr %.sroa.7722.0..sroa_idx.i.i, align 4, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5588
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc180.i = trunc i32 %.sroa.4719.0.copyload.i55.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift221.i = lshr i32 %.sroa.4719.0.copyload.i55.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc222.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift221.i to i24
  %.sroa.116.i.sroa.0.0.vec.expand654 = shufflevector <2 x i16> %.sroa.5720.0.copyload.i59.i711, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ou = bitcast i64 %.sroa.6721.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.4.vec.expand = shufflevector <4 x i16> %i.ou, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.4.vecblend = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand654, <8 x i16> %.sroa.116.i.sroa.0.4.vec.expand, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.12.vec.expand = shufflevector <2 x i16> %.sroa.7722.0.copyload.i.i712, <2 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1>
  %.sroa.116.i.sroa.0.12.vecblend = shufflevector <8 x i16> %.sroa.116.i.sroa.0.4.vecblend, <8 x i16> %.sroa.116.i.sroa.0.12.vec.expand, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  br label %bb.im

bb.fo:                                            ; preds = %.noexc41.i
  %.sroa.5720.0.copyload.i.i = load i64, ptr %.sroa.5720.0..sroa_idx.i.i, align 4, !noalias !5588
  %.sroa.4719.0.copyload.i.i = load i64, ptr %.sroa.4719.0..sroa_idx.i.i, align 4, !noalias !5588
  %i.ov = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.sroa.0709.0.copyload.i.i = load double, ptr %i.ov, align 4, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !5588
  store double %.sroa.0709.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.fp:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.ow = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5568, !noundef !5
  %i.ox = icmp eq i8 %i.ow, 99
  br i1 %i.ox, label %bb.fq, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fq:                                            ; preds = %bb.fp
  %.sroa.gep514 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep515 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel516 = select i1 %i.ev, ptr %.sroa.gep514, ptr %.sroa.gep515
  %i.oy = load i8, ptr %.sink13.i893.i.i.sroa.sel516, align 1, !noalias !5568, !noundef !5
  %i.oz = icmp eq i8 %i.oy, 111
  br i1 %i.oz, label %bb.fr, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fr:                                            ; preds = %bb.fq
  %.sroa.gep511 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep512 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel513 = select i1 %i.ev, ptr %.sroa.gep511, ptr %.sroa.gep512
  %i.pa = load i8, ptr %.sink13.i893.i.i.sroa.sel513, align 1, !noalias !5568, !noundef !5
  %i.pb = icmp eq i8 %i.pa, 109
  br i1 %i.pb, label %bb.fs, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %.sroa.gep508 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep509 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel510 = select i1 %i.ev, ptr %.sroa.gep508, ptr %.sroa.gep509
  %i.pc = load i8, ptr %.sink13.i893.i.i.sroa.sel510, align 1, !noalias !5568, !noundef !5
  %i.pd = icmp eq i8 %i.pc, 112
  br i1 %i.pd, label %bb.ft, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ft:                                            ; preds = %bb.fs
  %.sroa.gep505 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep506 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel507 = select i1 %i.ev, ptr %.sroa.gep505, ptr %.sroa.gep506
  %i.pe = load i8, ptr %.sink13.i893.i.i.sroa.sel507, align 1, !noalias !5568, !noundef !5
  %i.pf = icmp eq i8 %i.pe, 114
  br i1 %i.pf, label %bb.fu, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fu:                                            ; preds = %bb.ft
  %.sroa.gep502 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep503 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel504 = select i1 %i.ev, ptr %.sroa.gep502, ptr %.sroa.gep503
  %i.pg = load i8, ptr %.sink13.i893.i.i.sroa.sel504, align 1, !noalias !5568, !noundef !5
  %i.ph = icmp eq i8 %i.pg, 101
  br i1 %i.ph, label %bb.fv, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fv:                                            ; preds = %bb.fu
  %.sroa.gep499 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep500 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel501 = select i1 %i.ev, ptr %.sroa.gep499, ptr %.sroa.gep500
  %i.pi = load i8, ptr %.sink13.i893.i.i.sroa.sel501, align 1, !noalias !5568, !noundef !5
  %i.pj = icmp eq i8 %i.pi, 115
  br i1 %i.pj, label %bb.fw, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fw:                                            ; preds = %bb.fv
  %.sroa.gep496 = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  %.sroa.gep497 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sink13.i893.i.i.sroa.sel498 = select i1 %i.ev, ptr %.sroa.gep496, ptr %.sroa.gep497
  %i.pk = load i8, ptr %.sink13.i893.i.i.sroa.sel498, align 1, !noalias !5568, !noundef !5
  %i.pl = icmp eq i8 %i.pk, 115
  br i1 %i.pl, label %bb.fx, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fx:                                            ; preds = %bb.fw
  %.sroa.gep493 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.gep494 = getelementptr inbounds nuw i8, ptr %i.au, i64 89
  %.sink13.i893.i.i.sroa.sel495 = select i1 %i.ev, ptr %.sroa.gep493, ptr %.sroa.gep494
  %i.pm = load i8, ptr %.sink13.i893.i.i.sroa.sel495, align 1, !noalias !5568, !noundef !5
  %i.pn = icmp eq i8 %i.pm, 105
  br i1 %i.pn, label %bb.fy, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fy:                                            ; preds = %bb.fx
  %.sroa.gep490 = getelementptr inbounds nuw i8, ptr %i.ex, i64 9
  %.sroa.gep491 = getelementptr inbounds nuw i8, ptr %i.au, i64 90
  %.sink13.i893.i.i.sroa.sel492 = select i1 %i.ev, ptr %.sroa.gep490, ptr %.sroa.gep491
  %i.po = load i8, ptr %.sink13.i893.i.i.sroa.sel492, align 1, !noalias !5568, !noundef !5
  %i.pp = icmp eq i8 %i.po, 111
  br i1 %i.pp, label %bb.fz, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.fz:                                            ; preds = %bb.fy
  %.sroa.gep487 = getelementptr inbounds nuw i8, ptr %i.ex, i64 10
  %.sroa.gep488 = getelementptr inbounds nuw i8, ptr %i.au, i64 91
  %.sink13.i893.i.i.sroa.sel489 = select i1 %i.ev, ptr %.sroa.gep487, ptr %.sroa.gep488
  %i.pq = load i8, ptr %.sink13.i893.i.i.sroa.sel489, align 1, !noalias !5568, !noundef !5
  %i.pr = icmp eq i8 %i.pq, 110
  br i1 %i.pr, label %bb.ga, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !5588
  invoke void @_RINvMsh_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtNtBa_11compression11Compression4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %.noexc42.i unwind label %bb.il, !noalias !5568

.noexc42.i:                                       ; preds = %bb.ga
  %i.ps = load i64, ptr %i.v, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not860.i.i = icmp eq i64 %i.ps, -1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.sroa.4729.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4729.0.copyload.i.i = load i32, ptr %.sroa.4729.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  br i1 %.not860.i.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %.noexc42.i
  %.sroa.4735.0.copyload.i369.i = load i64, ptr %i.pt, align 8, !noalias !5588 ; 3 uses
  %.sroa.6737.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %.sroa.116.i.sroa.0.4.copyload = load <6 x i16>, ptr %.sroa.6737.0..sroa_idx.i.i, align 4, !noalias !5598
  %.sroa.116.i.sroa.0.4.vec.expand679 = shufflevector <6 x i16> %.sroa.116.i.sroa.0.4.copyload, <6 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5588
  %.sroa.35.sroa.0.0.extract.trunc260.i = trunc nuw nsw i64 %i.ps to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc190.i = trunc i64 %.sroa.4735.0.copyload.i369.i to i8
  %9 = lshr i64 %.sroa.4735.0.copyload.i369.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc242.i = trunc i64 %9 to i24
  %.sroa.69.sroa.37.0.extract.shift140.i = lshr i64 %.sroa.4735.0.copyload.i369.i, 32
  %.sroa.69.sroa.37.0.extract.trunc141.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift140.i to i32
  %i.pu = bitcast i32 %.sroa.4729.0.copyload.i.i to <2 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand651 = shufflevector <2 x i16> %i.pu, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.0.vecblend652 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand651, <8 x i16> %.sroa.116.i.sroa.0.4.vec.expand679, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.im

bb.gc:                                            ; preds = %.noexc42.i
  %.sroa.0728.0.copyload.i.i = load double, ptr %i.pt, align 8, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !5588
  store double %.sroa.0728.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.sroa.56.sroa.0.0.insert.ext80.i.i = zext i32 %.sroa.4729.0.copyload.i.i to i64
  br label %bb.an

bb.gd:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.pv = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5568, !noundef !5
  switch i8 %i.pv, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i [
    i8 107, label %bb.ge
    i8 112, label %bb.gf
  ]

bb.ge:                                            ; preds = %bb.gd
  %.sroa.gep532 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep533 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel534 = select i1 %i.ev, ptr %.sroa.gep532, ptr %.sroa.gep533
  %i.pw = load i8, ptr %.sink13.i893.i.i.sroa.sel534, align 1, !noalias !5568, !noundef !5
  %i.px = icmp eq i8 %i.pw, 101
  br i1 %i.px, label %bb.gg, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gf:                                            ; preds = %bb.gd
  %.sroa.gep550 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep551 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel552 = select i1 %i.ev, ptr %.sroa.gep550, ptr %.sroa.gep551
  %i.py = load i8, ptr %.sink13.i893.i.i.sroa.sel552, align 1, !noalias !5568, !noundef !5
  %i.pz = icmp eq i8 %i.py, 114
  br i1 %i.pz, label %bb.go, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gg:                                            ; preds = %bb.ge
  %.sroa.gep529 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep530 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel531 = select i1 %i.ev, ptr %.sroa.gep529, ptr %.sroa.gep530
  %i.qa = load i8, ptr %.sink13.i893.i.i.sroa.sel531, align 1, !noalias !5568, !noundef !5
  %i.qb = icmp eq i8 %i.qa, 121
  br i1 %i.qb, label %bb.gh, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gh:                                            ; preds = %bb.gg
  %.sroa.gep526 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep527 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel528 = select i1 %i.ev, ptr %.sroa.gep526, ptr %.sroa.gep527
  %i.qc = load i8, ptr %.sink13.i893.i.i.sroa.sel528, align 1, !noalias !5568, !noundef !5
  %i.qd = icmp eq i8 %i.qc, 99
  br i1 %i.qd, label %bb.gi, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gi:                                            ; preds = %bb.gh
  %.sroa.gep523 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep524 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel525 = select i1 %i.ev, ptr %.sroa.gep523, ptr %.sroa.gep524
  %i.qe = load i8, ptr %.sink13.i893.i.i.sroa.sel525, align 1, !noalias !5568, !noundef !5
  %i.qf = icmp eq i8 %i.qe, 111
  br i1 %i.qf, label %bb.gj, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gj:                                            ; preds = %bb.gi
  %.sroa.gep520 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep521 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel522 = select i1 %i.ev, ptr %.sroa.gep520, ptr %.sroa.gep521
  %i.qg = load i8, ptr %.sink13.i893.i.i.sroa.sel522, align 1, !noalias !5568, !noundef !5
  %i.qh = icmp eq i8 %i.qg, 100
  br i1 %i.qh, label %bb.gk, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gk:                                            ; preds = %bb.gj
  %.sroa.gep517 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep518 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel519 = select i1 %i.ev, ptr %.sroa.gep517, ptr %.sroa.gep518
  %i.qi = load i8, ptr %.sink13.i893.i.i.sroa.sel519, align 1, !noalias !5568, !noundef !5
  %i.qj = icmp eq i8 %i.qi, 101
  br i1 %i.qj, label %bb.gl, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gl:                                            ; preds = %bb.gk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5588
  invoke fastcc void @_RINvMsj_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_7KeyCode4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.t, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc43.i unwind label %bb.il, !noalias !5568

.noexc43.i:                                       ; preds = %bb.gl
  %i.qk = load i32, ptr %i.t, align 8, !range !28, !noalias !5588, !noundef !5
  %i.ql = trunc nuw i32 %i.qk to i1
  %.sroa.4761.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 12 ; 2 uses
  %.sroa.5762.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %.sroa.6763.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 28
  %.sroa.6763.0.copyload.i.i = load i32, ptr %.sroa.6763.0..sroa_idx.i.i, align 4, !noalias !5588 ; 2 uses
  br i1 %i.ql, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %.noexc43.i
  %.sroa.5762.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.5762.0.copyload.i57.i709 = load <2 x i16>, ptr %.sroa.5762.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5564
  %.sroa.5762.0.copyload.i56.i = load i32, ptr %.sroa.5762.0..sroa_idx.i.i, align 4, !noalias !5564
  %.sroa.4761.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.4761.0.copyload.i53.i = load i32, ptr %.sroa.4761.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !5564 ; 2 uses
  %.sroa.4761.0.copyload.i52.i = load i32, ptr %.sroa.4761.0..sroa_idx.i.i, align 4, !noalias !5564
  %i.qm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0760.0.copyload.i.i = load i32, ptr %i.qm, align 8, !noalias !5588
  %.sroa.7764.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.7764.0.copyload.i.i710 = load <4 x i16>, ptr %.sroa.7764.0..sroa_idx.i.i, align 8, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5588
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc179.i = trunc i32 %.sroa.4761.0.copyload.i53.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift219.i = lshr i32 %.sroa.4761.0.copyload.i53.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc220.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift219.i to i24
  %.sroa.116.i.sroa.0.0.vec.expand648 = shufflevector <2 x i16> %.sroa.5762.0.copyload.i57.i709, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.qn = bitcast i32 %.sroa.6763.0.copyload.i.i to <2 x i16>
  %.sroa.116.i.sroa.0.4.vec.expand677 = shufflevector <2 x i16> %i.qn, <2 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.4.vecblend678 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand648, <8 x i16> %.sroa.116.i.sroa.0.4.vec.expand677, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.8.vec.expand691 = shufflevector <4 x i16> %.sroa.7764.0.copyload.i.i710, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %.sroa.116.i.sroa.0.8.vecblend692 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.4.vecblend678, <8 x i16> %.sroa.116.i.sroa.0.8.vec.expand691, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  br label %bb.im

bb.gn:                                            ; preds = %.noexc43.i
  %.sroa.5762.0.copyload.i.i = load i64, ptr %.sroa.5762.0..sroa_idx.i.i, align 4, !noalias !5588
  %.sroa.4761.0.copyload.i.i = load i64, ptr %.sroa.4761.0..sroa_idx.i.i, align 4, !noalias !5588
  %i.qo = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.0751.0.copyload.i.i = load double, ptr %i.qo, align 4, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !5588
  store double %.sroa.0751.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.sroa.56.sroa.21.sroa.17.sroa.0.0.insert.ext.i.i = zext i32 %.sroa.6763.0.copyload.i.i to i64
  br label %bb.an

bb.go:                                            ; preds = %bb.gf
  %.sroa.gep547 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep548 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel549 = select i1 %i.ev, ptr %.sroa.gep547, ptr %.sroa.gep548
  %i.qp = load i8, ptr %.sink13.i893.i.i.sroa.sel549, align 1, !noalias !5568, !noundef !5
  %i.qq = icmp eq i8 %i.qp, 101
  br i1 %i.qq, label %bb.gp, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gp:                                            ; preds = %bb.go
  %.sroa.gep544 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep545 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel546 = select i1 %i.ev, ptr %.sroa.gep544, ptr %.sroa.gep545
  %i.qr = load i8, ptr %.sink13.i893.i.i.sroa.sel546, align 1, !noalias !5568, !noundef !5
  %i.qs = icmp eq i8 %i.qr, 118
  br i1 %i.qs, label %bb.gq, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gq:                                            ; preds = %bb.gp
  %.sroa.gep541 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep542 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel543 = select i1 %i.ev, ptr %.sroa.gep541, ptr %.sroa.gep542
  %i.qt = load i8, ptr %.sink13.i893.i.i.sroa.sel543, align 1, !noalias !5568, !noundef !5
  %i.qu = icmp eq i8 %i.qt, 105
  br i1 %i.qu, label %bb.gr, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gr:                                            ; preds = %bb.gq
  %.sroa.gep538 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep539 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel540 = select i1 %i.ev, ptr %.sroa.gep538, ptr %.sroa.gep539
  %i.qv = load i8, ptr %.sink13.i893.i.i.sroa.sel540, align 1, !noalias !5568, !noundef !5
  %i.qw = icmp eq i8 %i.qv, 101
  br i1 %i.qw, label %bb.gs, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gs:                                            ; preds = %bb.gr
  %.sroa.gep535 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep536 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel537 = select i1 %i.ev, ptr %.sroa.gep535, ptr %.sroa.gep536
  %i.qx = load i8, ptr %.sink13.i893.i.i.sroa.sel537, align 1, !noalias !5568, !noundef !5
  %i.qy = icmp eq i8 %i.qx, 119
  br i1 %i.qy, label %bb.gt, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !5588
  invoke fastcc void @_RINvMsl_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB6_7Preview4readRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.n, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar)
          to label %.noexc44.i unwind label %bb.il, !noalias !5568

.noexc44.i:                                       ; preds = %bb.gt
  %i.qz = load i64, ptr %i.n, align 8, !range !24, !noalias !5588, !noundef !5 ; 2 uses
  %i.ra = icmp eq i64 %i.qz, -1
  %i.rb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0790.0.copyload.i.i = load i64, ptr %i.rb, align 8, !noalias !5588 ; 3 uses
  %.sroa.4791.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.4791.0.copyload.i123.i = load i32, ptr %.sroa.4791.0..sroa_idx.i.i, align 8, !noalias !5564 ; 2 uses
  %.sroa.4791.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %.sroa.4791.0.copyload.i124.i = load i32, ptr %.sroa.4791.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !5564
  %.sroa.4791.0.copyload.i.i = load i64, ptr %.sroa.4791.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.5792.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.5792.0.copyload.i.i = load i64, ptr %.sroa.5792.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  %.sroa.6793.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.rc = load <2 x i32>, ptr %.sroa.6793.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !5588
  br i1 %i.ra, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %.noexc44.i
  %.sroa.35.sroa.0.0.extract.trunc259.i = trunc i64 %.sroa.0790.0.copyload.i.i to i32
  %.sroa.35.sroa.35.0.extract.shift291.i = lshr i64 %.sroa.0790.0.copyload.i.i, 32
  %.sroa.35.sroa.35.0.extract.trunc292.i = trunc nuw i64 %.sroa.35.sroa.35.0.extract.shift291.i to i32
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc176.i = trunc i32 %.sroa.4791.0.copyload.i123.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift213.i = lshr i32 %.sroa.4791.0.copyload.i123.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc214.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift213.i to i24
  %i.rd = bitcast i64 %.sroa.5792.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand630 = shufflevector <4 x i16> %i.rd, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.re = bitcast <2 x i32> %i.rc to <4 x i16>
  %.sroa.116.i.sroa.0.8.vec.expand = shufflevector <4 x i16> %i.re, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %.sroa.116.i.sroa.0.8.vecblend = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand630, <8 x i16> %.sroa.116.i.sroa.0.8.vec.expand, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  br label %bb.im

end_hunk_3
begin_hunk_4_@_RINvNtNtCsdsTQD3x2eOp_3exr4meta9attribute4readINtNtB6_2io8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEECsa5QsYiPB8Gl_5image:bb.a

bb.hq:                                            ; preds = %bb.hl
  %.sroa.gep583 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep584 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel585 = select i1 %i.ev, ptr %.sroa.gep583, ptr %.sroa.gep584
  %i.sl = load i8, ptr %.sink13.i893.i.i.sroa.sel585, align 1, !noalias !5568, !noundef !5
  %i.sm = icmp eq i8 %i.sl, 102
  br i1 %i.sm, label %bb.hr, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5588
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5588
  invoke fastcc void @_RINvXsp_NtCsdsTQD3x2eOp_3exr2iofNtB6_4Data13read_slice_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull align 4 %i.p, i64 noundef 16) #36
          to label %.noexc47.i unwind label %bb.il, !noalias !5568

.noexc47.i:                                       ; preds = %bb.hr
  %i.sn = load i64, ptr %i.o, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not857.i.i = icmp eq i64 %i.sn, -1
  br i1 %.not857.i.i, label %bb.ht, label %bb.hs

bb.hs:                                            ; preds = %.noexc47.i
  %.sroa.35.sroa.0.0.extract.trunc282.i = trunc nuw nsw i64 %i.sn to i32
  %.sroa.69.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.69.8.copyload114.i = load i32, ptr %.sroa.69.8..sroa_idx.i, align 8, !noalias !5564 ; 2 uses
  %.sroa.69.8..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %.sroa.69.8.copyload115.i = load i32, ptr %.sroa.69.8..sroa_idx.sroa_idx.i, align 4, !noalias !5564
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc173.i = trunc i32 %.sroa.69.8.copyload114.i to i8
  %.sroa.69.sroa.0.sroa.35.0.extract.shift207.i = lshr i32 %.sroa.69.8.copyload114.i, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc208.i = trunc nuw i32 %.sroa.69.sroa.0.sroa.35.0.extract.shift207.i to i24
  %.sroa.116.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.116.i.sroa.0.0.copyload = load <8 x i16>, ptr %.sroa.116.8..sroa_idx.i, align 8, !noalias !5598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5588
  br label %bb.im

bb.ht:                                            ; preds = %.noexc47.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5588
  %.sroa.0401.0.copyload.i.i = load double, ptr %i.p, align 8, !noalias !5588
  %.sroa.5402.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.5402.0.copyload.i.i = load i64, ptr %.sroa.5402.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.6403.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.6403.0.copyload.i.i = load i64, ptr %.sroa.6403.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.7404.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.7404.0.copyload.i.i = load i64, ptr %.sroa.7404.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.8405.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.so = load <2 x i32>, ptr %.sroa.8405.0..sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.i.i, i64 24, i1 false), !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5588
  store double %.sroa.0401.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  br label %bb.an

bb.hu:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i
  %i.sp = load i8, ptr %.sink13.i893.i.i, align 1, !noalias !5568, !noundef !5
  %i.sq = icmp eq i8 %i.sp, 115
  br i1 %i.sq, label %bb.hv, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.hv:                                            ; preds = %bb.hu
  %.sroa.gep622 = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %.sroa.gep623 = getelementptr inbounds nuw i8, ptr %i.au, i64 82
  %.sink13.i893.i.i.sroa.sel624 = select i1 %i.ev, ptr %.sroa.gep622, ptr %.sroa.gep623
  %i.sr = load i8, ptr %.sink13.i893.i.i.sroa.sel624, align 1, !noalias !5568, !noundef !5
  %i.ss = icmp eq i8 %i.sr, 116
  br i1 %i.ss, label %bb.hw, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.hw:                                            ; preds = %bb.hv
  %.sroa.gep619 = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %.sroa.gep620 = getelementptr inbounds nuw i8, ptr %i.au, i64 83
  %.sink13.i893.i.i.sroa.sel621 = select i1 %i.ev, ptr %.sroa.gep619, ptr %.sroa.gep620
  %i.st = load i8, ptr %.sink13.i893.i.i.sroa.sel621, align 1, !noalias !5568, !noundef !5
  %i.su = icmp eq i8 %i.st, 114
  br i1 %i.su, label %bb.hx, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.hx:                                            ; preds = %bb.hw
  %.sroa.gep616 = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %.sroa.gep617 = getelementptr inbounds nuw i8, ptr %i.au, i64 84
  %.sink13.i893.i.i.sroa.sel618 = select i1 %i.ev, ptr %.sroa.gep616, ptr %.sroa.gep617
  %i.sv = load i8, ptr %.sink13.i893.i.i.sroa.sel618, align 1, !noalias !5568, !noundef !5
  %i.sw = icmp eq i8 %i.sv, 105
  br i1 %i.sw, label %bb.hy, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.hy:                                            ; preds = %bb.hx
  %.sroa.gep613 = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %.sroa.gep614 = getelementptr inbounds nuw i8, ptr %i.au, i64 85
  %.sink13.i893.i.i.sroa.sel615 = select i1 %i.ev, ptr %.sroa.gep613, ptr %.sroa.gep614
  %i.sx = load i8, ptr %.sink13.i893.i.i.sroa.sel615, align 1, !noalias !5568, !noundef !5
  %i.sy = icmp eq i8 %i.sx, 110
  br i1 %i.sy, label %bb.hz, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.hz:                                            ; preds = %bb.hy
  %.sroa.gep610 = getelementptr inbounds nuw i8, ptr %i.ex, i64 5
  %.sroa.gep611 = getelementptr inbounds nuw i8, ptr %i.au, i64 86
  %.sink13.i893.i.i.sroa.sel612 = select i1 %i.ev, ptr %.sroa.gep610, ptr %.sroa.gep611
  %i.sz = load i8, ptr %.sink13.i893.i.i.sroa.sel612, align 1, !noalias !5568, !noundef !5
  %i.ta = icmp eq i8 %i.sz, 103
  br i1 %i.ta, label %bb.ia, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ia:                                            ; preds = %bb.hz
  %.sroa.gep607 = getelementptr inbounds nuw i8, ptr %i.ex, i64 6
  %.sroa.gep608 = getelementptr inbounds nuw i8, ptr %i.au, i64 87
  %.sink13.i893.i.i.sroa.sel609 = select i1 %i.ev, ptr %.sroa.gep607, ptr %.sroa.gep608
  %i.tb = load i8, ptr %.sink13.i893.i.i.sroa.sel609, align 1, !noalias !5568, !noundef !5
  %i.tc = icmp eq i8 %i.tb, 118
  br i1 %i.tc, label %bb.ib, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ib:                                            ; preds = %bb.ia
  %.sroa.gep604 = getelementptr inbounds nuw i8, ptr %i.ex, i64 7
  %.sroa.gep605 = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  %.sink13.i893.i.i.sroa.sel606 = select i1 %i.ev, ptr %.sroa.gep604, ptr %.sroa.gep605
  %i.td = load i8, ptr %.sink13.i893.i.i.sroa.sel606, align 1, !noalias !5568, !noundef !5
  %i.te = icmp eq i8 %i.td, 101
  br i1 %i.te, label %bb.ic, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ic:                                            ; preds = %bb.ib
  %.sroa.gep601 = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %.sroa.gep602 = getelementptr inbounds nuw i8, ptr %i.au, i64 89
  %.sink13.i893.i.i.sroa.sel603 = select i1 %i.ev, ptr %.sroa.gep601, ptr %.sroa.gep602
  %i.tf = load i8, ptr %.sink13.i893.i.i.sroa.sel603, align 1, !noalias !5568, !noundef !5
  %i.tg = icmp eq i8 %i.tf, 99
  br i1 %i.tg, label %bb.id, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.id:                                            ; preds = %bb.ic
  %.sroa.gep598 = getelementptr inbounds nuw i8, ptr %i.ex, i64 9
  %.sroa.gep599 = getelementptr inbounds nuw i8, ptr %i.au, i64 90
  %.sink13.i893.i.i.sroa.sel600 = select i1 %i.ev, ptr %.sroa.gep598, ptr %.sroa.gep599
  %i.th = load i8, ptr %.sink13.i893.i.i.sroa.sel600, align 1, !noalias !5568, !noundef !5
  %i.ti = icmp eq i8 %i.th, 116
  br i1 %i.ti, label %bb.ie, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ie:                                            ; preds = %bb.id
  %.sroa.gep595 = getelementptr inbounds nuw i8, ptr %i.ex, i64 10
  %.sroa.gep596 = getelementptr inbounds nuw i8, ptr %i.au, i64 91
  %.sink13.i893.i.i.sroa.sel597 = select i1 %i.ev, ptr %.sroa.gep595, ptr %.sroa.gep596
  %i.tj = load i8, ptr %.sink13.i893.i.i.sroa.sel597, align 1, !noalias !5568, !noundef !5
  %i.tk = icmp eq i8 %i.tj, 111
  br i1 %i.tk, label %bb.if, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.if:                                            ; preds = %bb.ie
  %.sroa.gep592 = getelementptr inbounds nuw i8, ptr %i.ex, i64 11
  %.sroa.gep593 = getelementptr inbounds nuw i8, ptr %i.au, i64 92
  %.sink13.i893.i.i.sroa.sel594 = select i1 %i.ev, ptr %.sroa.gep592, ptr %.sroa.gep593
  %i.tl = load i8, ptr %.sink13.i893.i.i.sroa.sel594, align 1, !noalias !5568, !noundef !5
  %i.tm = icmp eq i8 %i.tl, 114
  br i1 %i.tm, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit903.i.i, label %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_E6tripleCsa5QsYiPB8Gl_5image.exit.i.i.i.i

_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit903.i.i: ; preds = %bb.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !5588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !5588
  %i.tn = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.to = load ptr, ptr %i.tn, align 8, !nonnull !5
  %i.tp = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.tq = load i64, ptr %i.tp, align 8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sink13.i900.i.i = select i1 %i.em, ptr %i.to, ptr %i.tr
  %.sink12.i901.i.i = select i1 %i.em, i64 %i.tq, i64 %i.el
  %i.ts = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sink13.i900.i.i, ptr %i.ts, align 8, !alias.scope !5601, !noalias !5602
  %i.tt = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sink12.i901.i.i, ptr %i.tt, align 8, !alias.scope !5601, !noalias !5602
  store i8 2, ptr %i.k, align 8, !alias.scope !5601, !noalias !5602
  invoke fastcc void @_RINvMNtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB3_4Text30read_vec_of_i32_sized_texts_leRShECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.l, ptr noalias nofree noundef align 8 dereferenceable(32) %i.k, i64 noundef %i.bq)
          to label %bb.ih unwind label %bb.ig, !noalias !5568

bb.ig:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit903.i.i
  %i.tu = landingpad { ptr, i32 }
          cleanup
  %.val885.i.i = load i8, ptr %i.k, align 8, !range !16, !noalias !5588, !noundef !5
  %i.tv = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val886.i.i = load ptr, ptr %i.tv, align 8, !noalias !5588
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShEECsa5QsYiPB8Gl_5image(i8 %.val885.i.i, ptr %.val886.i.i) #33
          to label %.body15.i unwind label %bb.ax, !noalias !5568

bb.ih:                                            ; preds = %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E6tripleCsa5QsYiPB8Gl_5image.exit903.i.i
  %i.tw = load i64, ptr %i.l, align 8, !range !13, !noalias !5588, !noundef !5 ; 2 uses
  %.not.i14.i = icmp eq i64 %i.tw, -1
  %i.tx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0822.0.copyload.i.i = load double, ptr %i.tx, align 8, !noalias !5588 ; 2 uses
  %.sroa.4823.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4823.0.copyload.i.i = load i64, ptr %.sroa.4823.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  %.sroa.5824.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.5824.0.copyload.i.i = load i64, ptr %.sroa.5824.0..sroa_idx.i.i, align 8, !noalias !5588 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5588
  br i1 %.not.i14.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %.val883.i.i = load i8, ptr %i.k, align 8, !range !16, !noalias !5588, !noundef !5
  %i.ty = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val884.i.i = load ptr, ptr %i.ty, align 8, !noalias !5588
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShEECsa5QsYiPB8Gl_5image(i8 %.val883.i.i, ptr %.val884.i.i)
          to label %.noexc48.i unwind label %bb.il, !noalias !5568

.noexc48.i:                                       ; preds = %bb.ii
  %i.tz = bitcast i64 %.sroa.5824.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.8.vec.expand688 = shufflevector <4 x i16> %i.tz, <4 x i16> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 3>
  %i.ua = bitcast i64 %.sroa.4823.0.copyload.i.i to <4 x i16>
  %.sroa.116.i.sroa.0.0.vec.expand627 = shufflevector <4 x i16> %i.ua, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %.sroa.116.i.sroa.0.8.vecblend689 = shufflevector <8 x i16> %.sroa.116.i.sroa.0.0.vec.expand627, <8 x i16> %.sroa.116.i.sroa.0.8.vec.expand688, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.ub = bitcast double %.sroa.0822.0.copyload.i.i to i64 ; 3 uses
  %.sroa.69.sroa.37.0.extract.shift.i = lshr i64 %i.ub, 32
  %.sroa.69.sroa.0.0.extract.trunc.i = trunc nuw i64 %.sroa.69.sroa.37.0.extract.shift.i to i32
  %10 = lshr i64 %i.ub, 8
  %.sroa.69.sroa.0.sroa.35.0.extract.trunc240.i = trunc i64 %10 to i24
  %.sroa.69.sroa.0.sroa.0.0.extract.trunc189.i = trunc i64 %i.ub to i8
  %.sroa.35.sroa.0.0.extract.trunc257.i = trunc nuw nsw i64 %i.tw to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5588
  br label %bb.im

bb.ij:                                            ; preds = %bb.ih
  store double %.sroa.0822.0.copyload.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.val.i.i = load i8, ptr %i.k, align 8, !range !16, !noalias !5588, !noundef !5
  %i.uc = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val882.i.i = load ptr, ptr %i.uc, align 8, !noalias !5588
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdsTQD3x2eOp_3exr2io8PeekReadRShEECsa5QsYiPB8Gl_5image(i8 %.val.i.i, ptr %.val882.i.i)
          to label %.noexc49.i unwind label %bb.il, !noalias !5568

.noexc49.i:                                       ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5588
  br label %bb.an

.body.i.i:                                        ; preds = %bb.ab
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #33
          to label %.body15.i unwind label %bb.ax, !noalias !5568

bb.ik:                                            ; preds = %_RNvXst_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtB5_4TextNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5596
  %.sroa.29.8.copyload7.i.i = load double, ptr %i.g, align 8, !noalias !5588
  store double %.sroa.29.8.copyload7.i.i, ptr %.sroa.0245.i.i, align 8, !noalias !5588
  %.sroa.56.8..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.56.sroa.0.0.copyload63.i.i = load i64, ptr %.sroa.56.8..sroa_idx25.i.i, align 8, !noalias !5588
  %.sroa.56.sroa.21.0..sroa.56.8..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.56.sroa.21.sroa.0.0.copyload88.i.i = load i64, ptr %.sroa.56.sroa.21.0..sroa.56.8..sroa_idx25.sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.56.sroa.21.sroa.17.0..sroa.56.sroa.21.0..sroa.56.8..sroa_idx25.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.56.sroa.21.sroa.17.sroa.0.0.copyload304.i.i = load i64, ptr %.sroa.56.sroa.21.sroa.17.0..sroa.56.sroa.21.0..sroa.56.8..sroa_idx25.sroa_idx.sroa_idx.i.i, align 8, !noalias !5588
  %.sroa.56.sroa.21.sroa.17.sroa.13.0..sroa.56.sroa.21.sroa.17.0..sroa.56.sroa.21.0..sroa.56.8..sroa_idx25.sroa_idx.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ud = load <2 x i32>, ptr %.sroa.56.sroa.21.sroa.17.sroa.13.0..sroa.56.sroa.21.sroa.17.0..sroa.56.sroa.21.0..sroa.56.8..sroa_idx25.sroa_idx.sroa_idx.sroa_idx.i.i, align 8, !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5588
  br label %bb.an

bb.il:                                            ; preds = %bb.ij, %bb.ii, %bb.hr, %bb.hn, %bb.hf, %bb.gt, %bb.gl, %bb.ga, %bb.fm, %bb.ev, %bb.eo, %bb.ee, %bb.ec, %bb.dq, %bb.dj, %bb.de, %bb.dd, %bb.cu, %bb.ci, %bb.cg, %bb.cc, %bb.ca, %bb.by, %bb.bx, %bb.bu, %bb.bq, %bb.bo, %bb.bn, %bb.bi, %bb.bb, %bb.as, %bb.ak, %bb.aj
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %.body15.i

.body15.i:                                        ; preds = %bb.il, %.body.i.i, %bb.ig, %bb.db, %bb.av, %bb.z
  %eh.lpad-body16.i = phi { ptr, i32 } [ %i.ue, %bb.il ], [ %i.fj, %bb.z ], [ %i.fp, %.body.i.i ], [ %i.gx, %bb.av ], [ %i.kh, %bb.db ], [ %i.tu, %bb.ig ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMso_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtBK_14AttributeValue4readINtNtBO_2io8TrackingINtNtNtB4_2io6cursor6CursorRShEEE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(128) %i.au) #33
          to label %.body79 unwind label %bb.in, !noalias !5568

bb.im:                                            ; preds = %.noexc48.i, %bb.hs, %bb.ho, %bb.hg, %bb.gu, %bb.gm, %bb.gb, %bb.fn, %bb.ew, %bb.ep, %bb.ef, %bb.ed, %bb.dr, %bb.dk, %.noexc33.i, %bb.cv, %bb.cj, %bb.ch, %bb.cf, %bb.cd, %bb.cb, %bb.bz, %bb.bv, %bb.bt, %bb.br, %bb.bp, %bb.bj, %bb.bc, %bb.at, %bb.ao, %bb.an, %bb.al
  %.sroa.116.i.sroa.0.0 = phi <8 x i16> [ %.sroa.116.i.sroa.0.8.vecblend686, %bb.an ], [ %.sroa.116.i.sroa.0.8.vecblend701, %bb.al ], [ %.sroa.116.i.sroa.0.8.vecblend698, %bb.ao ], [ %.sroa.116.i.sroa.0.0.copyload674, %bb.at ], [ %.sroa.116.i.sroa.0.0.copyload673, %bb.bc ], [ %.sroa.116.i.sroa.0.0.copyload672, %bb.bj ], [ %.sroa.116.i.sroa.0.0.copyload671, %bb.br ], [ %.sroa.116.i.sroa.0.0.copyload670, %bb.bp ], [ %.sroa.116.i.sroa.0.0.copyload669, %bb.bv ], [ %.sroa.116.i.sroa.0.0.copyload668, %bb.bt ], [ %.sroa.116.i.sroa.0.0.copyload667, %bb.cd ], [ %.sroa.116.i.sroa.0.0.copyload666, %bb.cb ], [ %.sroa.116.i.sroa.0.0.copyload665, %bb.bz ], [ %.sroa.116.i.sroa.0.0.copyload664, %bb.cj ], [ %.sroa.116.i.sroa.0.0.copyload663, %bb.ch ], [ %.sroa.116.i.sroa.0.0.copyload662, %bb.cf ], [ %.sroa.116.i.sroa.0.0.copyload661, %bb.cv ], [ %i.km, %.noexc33.i ], [ %.sroa.116.i.sroa.0.0.copyload660, %bb.dk ], [ %.sroa.116.i.sroa.0.8.vecblend683, %bb.dr ], [ %.sroa.116.i.sroa.0.0.copyload659, %bb.ef ], [ %.sroa.116.i.sroa.0.0.copyload658, %bb.ed ], [ %.sroa.116.i.sroa.0.8.vec.insert, %bb.ep ], [ %.sroa.116.i.sroa.0.8.vecblend695, %bb.ew ], [ %.sroa.116.i.sroa.0.12.vecblend, %bb.fn ], [ %.sroa.116.i.sroa.0.0.vecblend652, %bb.gb ], [ %.sroa.116.i.sroa.0.8.vecblend692, %bb.gm ], [ %.sroa.116.i.sroa.0.8.vecblend, %bb.gu ], [ %.sroa.116.i.sroa.0.0.copyload657, %bb.hg ], [ %.sroa.116.i.sroa.0.0.copyload656, %bb.ho ], [ %.sroa.116.i.sroa.0.0.copyload, %bb.hs ], [ %.sroa.116.i.sroa.0.8.vecblend689, %.noexc48.i ]
  %.sroa.35.sroa.35.0.i = phi i32 [ %.sroa.69.sroa.0.0.extract.trunc138.i, %bb.an ], [ 0, %bb.al ], [ 0, %bb.ao ], [ %.sroa.35.sroa.35.0.extract.trunc342.i, %bb.at ], [ 0, %bb.bc ], [ 0, %bb.bj ], [ 0, %bb.br ], [ 0, %bb.bp ], [ 0, %bb.bv ], [ 0, %bb.bt ], [ 0, %bb.cd ], [ 0, %bb.cb ], [ 0, %bb.bz ], [ 0, %bb.cj ], [ 0, %bb.ch ], [ 0, %bb.cf ], [ 0, %bb.cv ], [ %.sroa.35.sroa.35.0.extract.trunc286.i, %.noexc33.i ], [ 0, %bb.dk ], [ %.sroa.35.sroa.35.0.extract.trunc304.i, %bb.dr ], [ 0, %bb.ef ], [ 0, %bb.ed ], [ 0, %bb.ep ], [ 0, %bb.ew ], [ %.sroa.4719.0.copyload.i54.i, %bb.fn ], [ 0, %bb.gb ], [ %.sroa.4761.0.copyload.i52.i, %bb.gm ], [ %.sroa.35.sroa.35.0.extract.trunc292.i, %bb.gu ], [ 0, %bb.hg ], [ 0, %bb.ho ], [ 0, %bb.hs ], [ 0, %.noexc48.i ]
  %.sroa.35.sroa.0.0.i = phi i32 [ %.sroa.35.sroa.0.0.extract.trunc.i, %bb.an ], [ %.sroa.35.sroa.0.0.extract.trunc281.i, %bb.al ], [ %.sroa.35.sroa.0.0.extract.trunc280.i, %bb.ao ], [ %.sroa.35.sroa.0.0.extract.trunc284.i, %bb.at ], [ %.sroa.35.sroa.0.0.extract.trunc279.i, %bb.bc ], [ %.sroa.35.sroa.0.0.extract.trunc278.i, %bb.bj ], [ %.sroa.35.sroa.0.0.extract.trunc277.i, %bb.br ], [ %.sroa.35.sroa.0.0.extract.trunc276.i, %bb.bp ], [ %.sroa.35.sroa.0.0.extract.trunc275.i, %bb.bv ], [ %.sroa.35.sroa.0.0.extract.trunc274.i, %bb.bt ], [ %.sroa.35.sroa.0.0.extract.trunc273.i, %bb.cd ], [ %.sroa.35.sroa.0.0.extract.trunc272.i, %bb.cb ], [ %.sroa.35.sroa.0.0.extract.trunc271.i, %bb.bz ], [ %.sroa.35.sroa.0.0.extract.trunc270.i, %bb.cj ], [ %.sroa.35.sroa.0.0.extract.trunc269.i, %bb.ch ], [ %.sroa.35.sroa.0.0.extract.trunc268.i, %bb.cf ], [ %.sroa.35.sroa.0.0.extract.trunc267.i, %bb.cv ], [ %.sroa.35.sroa.0.0.extract.trunc256.i, %.noexc33.i ], [ %.sroa.35.sroa.0.0.extract.trunc266.i, %bb.dk ], [ %.sroa.35.sroa.0.0.extract.trunc265.i, %bb.dr ], [ %.sroa.35.sroa.0.0.extract.trunc264.i, %bb.ef ], [ %.sroa.35.sroa.0.0.extract.trunc263.i, %bb.ed ], [ %.sroa.35.sroa.0.0.extract.trunc262.i, %bb.ep ], [ %.sroa.35.sroa.0.0.extract.trunc261.i, %bb.ew ], [ %.sroa.0718.0.copyload.i.i, %bb.fn ], [ %.sroa.35.sroa.0.0.extract.trunc260.i, %bb.gb ], [ %.sroa.0760.0.copyload.i.i, %bb.gm ], [ %.sroa.35.sroa.0.0.extract.trunc259.i, %bb.gu ], [ %.sroa.35.sroa.0.0.extract.trunc258.i, %bb.hg ], [ %.sroa.35.sroa.0.0.extract.trunc283.i, %bb.ho ], [ %.sroa.35.sroa.0.0.extract.trunc282.i, %bb.hs ], [ %.sroa.35.sroa.0.0.extract.trunc257.i, %.noexc48.i ]
  %.sroa.69.sroa.0.sroa.35.sroa.0.0.i = phi i24 [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc254.i, %bb.an ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc252.i, %bb.al ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc250.i, %bb.ao ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc212.i, %bb.at ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc206.i, %bb.bc ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc238.i, %bb.bj ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc236.i, %bb.br ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc234.i, %bb.bp ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc204.i, %bb.bv ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc202.i, %bb.bt ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc232.i, %bb.cd ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc230.i, %bb.cb ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc228.i, %bb.bz ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc200.i, %bb.cj ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc198.i, %bb.ch ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc.i, %bb.cf ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc248.i, %bb.cv ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc218.i, %.noexc33.i ], [ %.sroa.69.sroa.0.sroa.35.sroa.0.0.copyload255.i, %bb.dk ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc216.i, %bb.dr ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc226.i, %bb.ef ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc224.i, %bb.ed ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc246.i, %bb.ep ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc244.i, %bb.ew ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc222.i, %bb.fn ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc242.i, %bb.gb ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc220.i, %bb.gm ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc214.i, %bb.gu ], [ %.sroa.69.sroa.0.sroa.35.sroa.0.0.copyload.i, %bb.hg ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc210.i, %bb.ho ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc208.i, %bb.hs ], [ %.sroa.69.sroa.0.sroa.35.0.extract.trunc240.i, %.noexc48.i ]
  %.sroa.69.sroa.0.sroa.0.0.i = phi i8 [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc196.i, %bb.an ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc195.i, %bb.al ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc194.i, %bb.ao ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc175.i, %bb.at ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc172.i, %bb.bc ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc188.i, %bb.bj ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc187.i, %bb.br ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc186.i, %bb.bp ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc171.i, %bb.bv ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc170.i, %bb.bt ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc185.i, %bb.cd ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc184.i, %bb.cb ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc183.i, %bb.bz ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc169.i, %bb.cj ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc168.i, %bb.ch ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc.i, %bb.cf ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc193.i, %bb.cv ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc178.i, %.noexc33.i ], [ %i.la, %bb.dk ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc177.i, %bb.dr ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc182.i, %bb.ef ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc181.i, %bb.ed ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc192.i, %bb.ep ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc191.i, %bb.ew ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc180.i, %bb.fn ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc190.i, %bb.gb ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc179.i, %bb.gm ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc176.i, %bb.gu ], [ %i.rz, %bb.hg ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc174.i, %bb.ho ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc173.i, %bb.hs ], [ %.sroa.69.sroa.0.sroa.0.0.extract.trunc189.i, %.noexc48.i ]
  %.sroa.69.sroa.37.0.i = phi i32 [ %.sroa.69.sroa.37.0.extract.trunc153.i, %bb.an ], [ %.sroa.69.sroa.37.0.extract.trunc151.i, %bb.al ], [ %.sroa.69.sroa.37.0.extract.trunc149.i, %bb.ao ], [ %.sroa.69.8.copyload67121.i, %bb.at ], [ %.sroa.69.sroa.37.4.copyload167.i, %bb.bc ], [ %.sroa.69.sroa.37.4.copyload166.i, %bb.bj ], [ %.sroa.69.sroa.37.4.copyload165.i, %bb.br ], [ %.sroa.69.sroa.37.4.copyload164.i, %bb.bp ], [ %.sroa.69.sroa.37.4.copyload163.i, %bb.bv ], [ %.sroa.69.sroa.37.4.copyload162.i, %bb.bt ], [ %.sroa.69.sroa.37.4.copyload161.i, %bb.cd ], [ %.sroa.69.sroa.37.4.copyload160.i, %bb.cb ], [ %.sroa.69.sroa.37.4.copyload159.i, %bb.bz ], [ %.sroa.69.sroa.37.4.copyload158.i, %bb.cj ], [ %.sroa.69.sroa.37.4.copyload157.i, %bb.ch ], [ %.sroa.69.sroa.37.4.copyload156.i, %bb.cf ], [ %.sroa.69.sroa.37.0.extract.trunc147.i, %bb.cv ], [ %.sroa.4702.0.copyload.i130.i, %.noexc33.i ], [ %.sroa.69.sroa.37.1.copyload154.i, %bb.dk ], [ %.sroa.4813.0.copyload.i127.i, %bb.dr ], [ %.sroa.69.sroa.37.4.copyload155.i, %bb.ef ], [ %.sroa.69.sroa.37.4.copyload.i, %bb.ed ], [ %.sroa.69.sroa.37.0.extract.trunc145.i, %bb.ep ], [ %.sroa.69.sroa.37.0.extract.trunc143.i, %bb.ew ], [ %.sroa.5720.0.copyload.i58.i, %bb.fn ], [ %.sroa.69.sroa.37.0.extract.trunc141.i, %bb.gb ], [ %.sroa.5762.0.copyload.i56.i, %bb.gm ], [ %.sroa.4791.0.copyload.i124.i, %bb.gu ], [ %.sroa.69.sroa.37.1.copyload.i, %bb.hg ], [ %.sroa.69.8.copyload65118.i, %bb.ho ], [ %.sroa.69.8.copyload115.i, %bb.hs ], [ %.sroa.69.sroa.0.0.extract.trunc.i, %.noexc48.i ]
  %.sroa.060.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.an ], [ -1, %bb.al ], [ -1, %bb.ao ], [ -1, %bb.at ], [ -1, %bb.bc ], [ -1, %bb.bj ], [ -1, %bb.br ], [ -1, %bb.bp ], [ -1, %bb.bv ], [ -1, %bb.bt ], [ -1, %bb.cd ], [ -1, %bb.cb ], [ -1, %bb.bz ], [ -1, %bb.cj ], [ -1, %bb.ch ], [ -1, %bb.cf ], [ -1, %bb.cv ], [ -1, %.noexc33.i ], [ -1, %bb.dk ], [ -1, %bb.dr ], [ -1, %bb.ef ], [ -1, %bb.ed ], [ -1, %bb.ep ], [ -1, %bb.ew ], [ -1, %bb.fn ], [ -1, %bb.gb ], [ -1, %bb.gm ], [ -1, %bb.gu ], [ -1, %bb.hg ], [ -1, %bb.ho ], [ -1, %bb.hs ], [ -1, %.noexc48.i ]
  %i.uf = phi <2 x i32> [ %i.gi, %bb.an ], [ undef, %bb.al ], [ undef, %bb.ao ], [ undef, %bb.at ], [ undef, %bb.bc ], [ undef, %bb.bj ], [ undef, %bb.br ], [ undef, %bb.bp ], [ undef, %bb.bv ], [ undef, %bb.bt ], [ undef, %bb.cd ], [ undef, %bb.cb ], [ undef, %bb.bz ], [ undef, %bb.cj ], [ undef, %bb.ch ], [ undef, %bb.cf ], [ undef, %bb.cv ], [ undef, %.noexc33.i ], [ undef, %bb.dk ], [ undef, %bb.dr ], [ undef, %bb.ef ], [ undef, %bb.ed ], [ undef, %bb.ep ], [ undef, %bb.ew ], [ undef, %bb.fn ], [ undef, %bb.gb ], [ undef, %bb.gm ], [ undef, %bb.gu ], [ undef, %bb.hg ], [ undef, %bb.ho ], [ undef, %bb.hs ], [ undef, %.noexc48.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.56.sroa.21.sroa.17.sroa.13.sroa.11.sroa.10.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.58.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !5588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5564
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0245.i.i)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCINvMso_NtNtCsdsTQD3x2eOp_3exr4meta9attributeNtBK_14AttributeValue4readINtNtBO_2io8TrackingINtNtNtB4_2io6cursor6CursorRShEEE0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(128) %i.au)
          to label %bb.it unwind label %.body

bb.in:                                            ; preds = %bb.is, %.loopexit.split-lp.i, %.body15.i
  %i.ug = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5568
  unreachable

bb.io:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.is

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.u, %.noexc13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5564
  call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  call void @llvm.experimental.noalias.scope.decl(metadata !5604)
  call void @llvm.experimental.noalias.scope.decl(metadata !5605)
  %i.ui = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.uj = load i64, ptr %i.ui, align 8, !alias.scope !5606, !noalias !5586, !noundef !5 ; 2 uses
  %i.uk = icmp ugt i64 %i.uj, 24
  br i1 %i.uk, label %bb.ip, label %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i

bb.ip:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EECsa5QsYiPB8Gl_5image.exit.i
  %i.ul = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !alias.scope !5606, !noalias !5586, !nonnull !5, !noundef !5
  %i.uo = load i64, ptr %i.ul, align 8, !alias.scope !5606, !noalias !5586, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5607
  store i64 %i.uj, ptr %i.c, align 8, !noalias !5607
  %i.up = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.un, ptr %i.up, align 8, !noalias !5607
  %i.uq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.uo, ptr %i.uq, align 8, !noalias !5607
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i unwind label %bb.iq, !noalias !5608

bb.iq:                                            ; preds = %bb.ip
  %i.ur = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body79 unwind label %bb.ir, !noalias !5608

bb.ir:                                            ; preds = %bb.iq
  %i.us = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5608
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %bb.ip
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc74 unwind label %.body

.noexc74:                                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5607
  br label %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i

.loopexit.i:                                      ; preds = %bb.p
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RINvXsh_NtCsdsTQD3x2eOp_3exr2iohNtB6_4Data13read_slice_leINtB6_8PeekReadINtB6_8TrackingINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.s, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.i.i.i.i.i
  %lpad.loopexit380.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.t, %_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj40_E11try_reserveCsa5QsYiPB8Gl_5image.exit.thread.i.i.i.i.i, %bb.m
  %lpad.loopexit.split-lp381.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit380.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp381.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(80) %i.av) #33
          to label %bb.is unwind label %bb.in, !noalias !5568

bb.is:                                            ; preds = %.loopexit.split-lp.i, %bb.io, %bb.w
  %.pn5.ph.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.uh, %bb.io ], [ %i.eg, %bb.w ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.az) #33
          to label %.body79 unwind label %bb.in, !noalias !5609

_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtCs8zlGlznUR0G_8smallvec8SmallVecAhj40_EECsa5QsYiPB8Gl_5image.exit.i, %.noexc74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <8 x i16> %.sroa.14.sroa.0.0.copyload, ptr %.sroa.6114.0..sroa_idx, align 8
  store i64 %.pr.i.i, ptr %0, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x i32> %i.dz, ptr %.sroa.4112.0..sroa_idx, align 8
  %i.ut = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -2, ptr %i.ut, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit82

bb.it:                                            ; preds = %bb.im
  %.sroa.69.sroa.0.sroa.35.0.insert.ext.i = zext i24 %.sroa.69.sroa.0.sroa.35.sroa.0.0.i to i32
  %.sroa.69.sroa.0.sroa.35.0.insert.shift.i = shl nuw i32 %.sroa.69.sroa.0.sroa.35.0.insert.ext.i, 8
  %.sroa.69.sroa.0.sroa.0.0.insert.ext.i = zext i8 %.sroa.69.sroa.0.sroa.0.0.i to i32
  %.sroa.69.sroa.0.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.69.sroa.0.sroa.35.0.insert.shift.i, %.sroa.69.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.35.sroa.35.0.insert.ext.i = zext i32 %.sroa.35.sroa.35.0.i to i64
  %.sroa.35.sroa.35.0.insert.shift.i = shl nuw i64 %.sroa.35.sroa.35.0.insert.ext.i, 32
  %.sroa.35.sroa.0.0.insert.ext.i = zext i32 %.sroa.35.sroa.0.0.i to i64
  %.sroa.35.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.35.sroa.35.0.insert.shift.i, %.sroa.35.sroa.0.0.insert.ext.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !5564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !5564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %.sroa.640.sroa.5.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.640.sroa.5.0..sroa.640.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.148.i, i64 32, i1 false)
  %.sroa.640.sroa.6.0..sroa.640.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.640.sroa.6.0..sroa.640.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %.sroa.149.i, i64 272, i1 false)
  %.sroa.539.sroa.6.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <8 x i16> %.sroa.116.i.sroa.0.0, ptr %.sroa.539.sroa.6.0..sroa.539.0..sroa_idx.sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 40, i1 false)
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.060.0.i, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.35.sroa.0.0.insert.insert.i, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.539.sroa.4.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %.sroa.69.sroa.0.sroa.0.0.insert.insert.i, ptr %.sroa.539.sroa.4.0..sroa.539.0..sroa_idx.sroa_idx, align 8
  %.sroa.539.sroa.5.0..sroa.539.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %.sroa.69.sroa.37.0.i, ptr %.sroa.539.sroa.5.0..sroa.539.0..sroa_idx.sroa_idx, align 4
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i32> %i.uf, ptr %.sroa.640.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit82, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i75, %bb.it
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit82: ; preds = %.noexc81, %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i76, %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.experimental.noalias.scope.decl(metadata !5610)
  call void @llvm.experimental.noalias.scope.decl(metadata !5611)
  call void @llvm.experimental.noalias.scope.decl(metadata !5612)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.uv = load i64, ptr %i.uu, align 8, !alias.scope !5613, !noundef !5 ; 2 uses
  %i.uw = icmp ugt i64 %i.uv, 24
  br i1 %i.uw, label %bb.iu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit

bb.iu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit82
  %i.ux = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.uy = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.uz = load ptr, ptr %i.uy, align 8, !alias.scope !5613, !nonnull !5, !noundef !5
  %i.va = load i64, ptr %i.ux, align 8, !alias.scope !5613, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5613
  store i64 %i.uv, ptr %i.b, align 8, !noalias !5613
  %i.vb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.uz, ptr %i.vb, align 8, !noalias !5613
  %i.vc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.va, ptr %i.vc, align 8, !noalias !5613
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i75 unwind label %bb.iv, !noalias !5613

bb.iv:                                            ; preds = %bb.iu
  %i.vd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.iw, !noalias !5613

bb.iw:                                            ; preds = %bb.iv
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #34, !noalias !5613
  unreachable

common.resume:                                    ; preds = %.body79, %bb.iv
  %common.resume.op = phi { ptr, i32 } [ %i.vd, %bb.iv ], [ %.pn, %.body79 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i.i.i75: ; preds = %bb.iu
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !noalias !5613
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5613
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit

bb.ix:                                            ; preds = %_RNvNtCsdsTQD3x2eOp_3exr5error12i32_to_usize.exit, %bb.i
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -2, ptr %i.vf, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !5614)
  call void @llvm.experimental.noalias.scope.decl(metadata !5615)
  call void @llvm.experimental.noalias.scope.decl(metadata !5616)
  %i.vg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.vh = load i64, ptr %i.vg, align 8, !alias.scope !5617, !noundef !5 ; 2 uses
  %i.vi = icmp ugt i64 %i.vh, 24
  br i1 %i.vi, label %bb.iy, label %_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i76

_RNvXsp_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecAhj18_EINtNtNtCsj6eKBz9Db1c_4core3ops5index8IndexMutNtNtBT_5range9RangeFullE9index_mutCsa5QsYiPB8Gl_5image.exit.i.i.i76: ; preds = %bb.ix
  %i.vj = icmp eq i8 %i.bi, 0
  call void @llvm.assume(i1 %i.vj)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextECsa5QsYiPB8Gl_5image.exit82

bb.iy:                                            ; preds = %bb.ix
  %i.vk = trunc nuw i8 %i.bi to i1
end_hunk_4
