Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RNCNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB6_24StructuralReadProjectionNtB8_14ReadProjection7prepare0Ba_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !29352
  %.val76.i = load ptr, ptr %i.ps, align 8, !noalias !29352
  %.val77.i = load ptr, ptr %i.pt, align 8, !noalias !29352, !nonnull !58, !align !59, !noundef !58
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file(ptr %.val76.i, ptr nonnull %.val77.i) #50
          to label %.body117.i unwind label %bb.cj, !noalias !29355

bb.de:                                            ; preds = %bb.da, %bb.am
  %i.pq = phi ptr [ %i.gb, %bb.da ], [ %i.ew, %bb.am ] ; 6 uses
  %i.pr = phi ptr [ %i.gc, %bb.da ], [ %i.ev, %bb.am ] ; 5 uses
  %.val93.i = phi ptr [ %i.on, %bb.da ], [ %.val93.pre.i, %bb.am ]
  %.val92.i = phi ptr [ %i.om, %bb.da ], [ %.val92.pre.i, %bb.am ]
  %.sroa.11233.0.i = phi ptr [ %i.mt, %bb.da ], [ undef, %bb.am ] ; 4 uses
  %.sroa.0232.0.i = phi i64 [ %.val87.i, %bb.da ], [ undef, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !29352
  %i.ps = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.pt = getelementptr i8, ptr %1, i64 192       ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.val93.i, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8, !invariant.load !58, !noalias !29397, !nonnull !58
  invoke void %i.pv(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.az, ptr noundef nonnull %.val92.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.dd, !noalias !29355, !inline_history !29049

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.de
  %i.pw = load i8, ptr %i.az, align 8, !range !90, !noalias !29352, !noundef !58 ; 3 uses
  %i.px = icmp eq i8 %i.pw, -2
  br i1 %i.px, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !29352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !29352
  br label %.thread

bb.dg:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB10_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit.i
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.0..sroa_idx.i, i64 31, i1 false), !noalias !29352
  %.sroa.5243.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5243.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5243.0..sroa_idx.i, i64 24, i1 false), !noalias !29352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !29352
  %.val74.i = load ptr, ptr %i.ps, align 8, !noalias !29352 ; 5 uses
  %.val75.i = load ptr, ptr %i.pt, align 8, !noalias !29352, !nonnull !58, !align !59, !noundef !58 ; 5 uses
  %i.py = load ptr, ptr %.val75.i, align 8, !invariant.load !58, !noalias !29355 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.py, null
  br i1 %.not.i.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val74.i) ]
  invoke void %i.py(ptr noundef nonnull %.val74.i)
          to label %bb.di unwind label %bb.dj, !noalias !29355

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.pz = getelementptr inbounds nuw i8, ptr %.val75.i, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !range !61, !invariant.load !58, !noalias !29355 ; 2 uses
  %i.qb = icmp eq i64 %i.qa, 0
  br i1 %i.qb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.di
  %i.qc = getelementptr inbounds nuw i8, ptr %.val75.i, i64 16
  %i.qd = load i64, ptr %i.qc, align 8, !range !88, !invariant.load !58, !noalias !29355
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val74.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74.i, i64 noundef %i.qa, i64 noundef range(i64 1, -9223372036854775807) %i.qd) #44, !noalias !29355
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.val75.i, i64 8
  %i.qg = load i64, ptr %i.qf, align 8, !range !61, !invariant.load !58, !noalias !29355 ; 2 uses
  %i.qh = icmp eq i64 %i.qg, 0
  br i1 %i.qh, label %.body117.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.dj
  %i.qi = getelementptr inbounds nuw i8, ptr %.val75.i, i64 16
  %i.qj = load i64, ptr %i.qi, align 8, !range !88, !invariant.load !58, !noalias !29355
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val74.i, i64 noundef %i.qg, i64 noundef range(i64 1, -9223372036854775807) %i.qj) #44, !noalias !29355
  br label %.body117.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.di
  %.not.i119.i = icmp eq i8 %i.pw, -1
  br i1 %.not.i119.i, label %bb.dk, label %bb.do

bb.dk:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i
  %.sroa.3.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.3.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.3.8..sroa_idx.i, i64 24, i1 false), !noalias !29352
  %i.qk = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ql = getelementptr inbounds nuw i8, ptr %1, i64 176
  store i8 0, ptr %i.ql, align 8, !noalias !29352
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.0267.0.copyload.i = load i64, ptr %i.qm, align 8, !noalias !29352
  %.sroa.5268.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.5268.0.copyload.i = load ptr, ptr %.sroa.5268.0..sroa_idx.i, align 8, !noalias !29352, !nonnull !58, !noundef !58 ; 4 uses
  %.sroa.6269.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.6269.0.copyload.i = load i64, ptr %.sroa.6269.0..sroa_idx.i, align 8, !noalias !29352 ; 2 uses
  %i.qn = icmp ult i64 %.sroa.6269.0.copyload.i, 288230376151711744
  call void @llvm.assume(i1 %i.qn)
  %i.qo = getelementptr inbounds nuw [32 x i8], ptr %.sroa.5268.0.copyload.i, i64 %.sroa.6269.0.copyload.i ; 2 uses
  %i.qp = ptrtoint ptr %.sroa.5268.0.copyload.i to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  store i8 0, ptr %i.qk, align 4, !noalias !29352
  %.sroa.0270.0.copyload.i = load i64, ptr %i.bb, align 8, !noalias !29352
  %.sroa.5271.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.5271.0.copyload.i = load ptr, ptr %.sroa.5271.0..sroa_idx.i, align 8, !noalias !29352, !nonnull !58, !noundef !58 ; 3 uses
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.6272.0.copyload.i = load i64, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !29352 ; 2 uses
  %i.qr = icmp ult i64 %.sroa.6272.0.copyload.i, 288230376151711744
  call void @llvm.assume(i1 %i.qr)
  %i.qs = getelementptr inbounds nuw [32 x i8], ptr %.sroa.5271.0.copyload.i, i64 %.sroa.6272.0.copyload.i
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !29352
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %.sroa.5268.0.copyload.i, ptr %i.qt, align 8, !noalias !29352
  %.sroa.8257.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  store i64 %i.qp, ptr %.sroa.8257.0..sroa_idx.i, align 8, !noalias !29352
  %.sroa.9258.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %.sroa.0267.0.copyload.i, ptr %.sroa.9258.0..sroa_idx.i, align 8, !noalias !29352
  %.sroa.10259.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 304
  store i64 %i.qq, ptr %.sroa.10259.0..sroa_idx.i, align 8, !noalias !29352
  %.sroa.11260.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %.sroa.5271.0.copyload.i, ptr %.sroa.11260.0..sroa_idx.i, align 8, !noalias !29352
  %.sroa.12261.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %.sroa.5271.0.copyload.i, ptr %.sroa.12261.0..sroa_idx.i, align 8, !noalias !29352
  %.sroa.13262.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 %.sroa.0270.0.copyload.i, ptr %.sroa.13262.0..sroa_idx.i, align 8, !noalias !29352
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.qs, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !29352
  br label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit153.i, %bb.dk
  %i.qu = phi ptr [ %i.pq, %bb.dk ], [ %i.zp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit153.i ] ; 8 uses
  %i.qv = phi ptr [ %i.pr, %bb.dk ], [ %i.zq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit153.i ] ; 8 uses
  %i.qw = phi ptr [ %.sroa.5268.0.copyload.i, %bb.dk ], [ %.pre493.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit153.i ] ; 3 uses
  %i.qx = phi ptr [ %i.qo, %bb.dk ], [ %.pre491.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit153.i ]
  %.sroa.11233.2.i = phi ptr [ %.sroa.11233.0.i, %bb.dk ], [ %.sroa.11233.5565.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit153.i ] ; 6 uses
  %.sroa.0232.2.i = phi i64 [ %.sroa.0232.0.i, %bb.dk ], [ %.sroa.0232.5570.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit153.i ] ; 6 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29398)
  call void @llvm.experimental.noalias.scope.decl(metadata !29399)
  call void @llvm.experimental.noalias.scope.decl(metadata !29400)
  call void @llvm.experimental.noalias.scope.decl(metadata !29401)
  %i.ra = icmp eq ptr %i.qw, %i.qx
  br i1 %i.ra, label %bb.hg, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  store ptr %i.rc, ptr %i.rb, align 8, !alias.scope !29402, !noalias !29352
  call void @llvm.experimental.noalias.scope.decl(metadata !29403)
  %i.rd = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.re = load ptr, ptr %i.rd, align 8, !alias.scope !29404, !noalias !29352, !nonnull !58, !noundef !58
  %i.rf = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !29404, !noalias !29352, !nonnull !58, !noundef !58 ; 4 uses
  %i.rh = icmp eq ptr %i.rg, %i.re
  br i1 %i.rh, label %bb.hg, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.dm
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  store ptr %i.ri, ptr %i.rf, align 8, !alias.scope !29404, !noalias !29352
  %.sroa.03.0.copyload4.i.i.i = load ptr, ptr %i.rg, align 8, !noalias !29405 ; 2 uses
  %.not.i.i127.i = icmp eq ptr %.sroa.03.0.copyload4.i.i.i, null
  br i1 %.not.i.i127.i, label %bb.hg, label %bb.fq

bb.dn:                                            ; preds = %bb.is, %bb.hi
  %i.rj = phi ptr [ %i.qu, %bb.hi ], [ %i.ajb, %bb.is ] ; 2 uses
  %i.rk = phi ptr [ %i.qv, %bb.hi ], [ %i.ajc, %bb.is ] ; 2 uses
  %.sroa.11233.3.i = phi ptr [ %.sroa.11233.2.i, %bb.hi ], [ %.sroa.11233.7.i, %bb.is ] ; 2 uses
  %.sroa.0232.3.i = phi i64 [ %.sroa.0232.2.i, %bb.hi ], [ %.sroa.0232.7.i, %bb.is ] ; 2 uses
  %.pn34.i = phi { ptr, i32 } [ %i.aev, %bb.hi ], [ %.pn30.pn.i, %bb.is ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.rm = load i8, ptr %i.rl, align 4, !range !77, !noalias !29352, !noundef !58
  %i.rn = trunc nuw i8 %i.rm to i1
  br i1 %i.rn, label %bb.ji, label %.body117.i

bb.do:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtBW_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i
  %.sroa.6246.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6246.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5243.i, i64 24, i1 false), !noalias !29352
  %.sroa.5245.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5245.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.3.i, i64 31, i1 false), !noalias !29352
  store i8 %i.pw, ptr %i.at, align 8, !alias.scope !29406, !noalias !29352
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEIB1a_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit192.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEIB1a_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit192.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i190.i, %bb.do
  %i.ro = phi ptr [ %i.qu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i190.i ], [ %i.pq, %bb.do ]
  %i.rp = phi ptr [ %i.qv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i190.i ], [ %i.pr, %bb.do ]
  %i.rq = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i8 0, ptr %i.rq, align 4, !noalias !29352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !29352
  %i.rr = getelementptr inbounds nuw i8, ptr %1, i64 181
  store i8 0, ptr %i.rr, align 1, !noalias !29352
  br label %bb.dc

.body117.i:                                       ; preds = %bb.cz, %bb.dd, %bb.dj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.ji, %bb.dn
  %i.rs = phi ptr [ %i.rj, %bb.ji ], [ %i.rj, %bb.dn ], [ %i.pq, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.pq, %bb.dd ], [ %i.gb, %bb.cz ], [ %i.pq, %bb.dj ] ; 2 uses
  %i.rt = phi ptr [ %i.rk, %bb.ji ], [ %i.rk, %bb.dn ], [ %i.pr, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.pr, %bb.dd ], [ %i.gc, %bb.cz ], [ %i.pr, %bb.dj ] ; 2 uses
  %.sroa.11233.4.i = phi ptr [ %.sroa.11233.3.i, %bb.ji ], [ %.sroa.11233.3.i, %bb.dn ], [ %.sroa.11233.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %.sroa.11233.0.i, %bb.dd ], [ %i.mt, %bb.cz ], [ %.sroa.11233.0.i, %bb.dj ] ; 2 uses
  %.sroa.0232.4.i = phi i64 [ %.sroa.0232.3.i, %bb.ji ], [ %.sroa.0232.3.i, %bb.dn ], [ %.sroa.0232.0.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %.sroa.0232.0.i, %bb.dd ], [ %.val87.i, %bb.cz ], [ %.sroa.0232.0.i, %bb.dj ] ; 2 uses
  %.pn36.pn.i = phi { ptr, i32 } [ %.pn34.i, %bb.ji ], [ %.pn34.i, %bb.dn ], [ %i.qe, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.pp, %bb.dd ], [ %i.ol, %bb.cz ], [ %i.qe, %bb.dj ] ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i8 0, ptr %i.ru, align 4, !noalias !29352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !29352
  %i.rv = getelementptr inbounds nuw i8, ptr %1, i64 181
  %i.rw = load i8, ptr %i.rv, align 1, !range !77, !noalias !29352, !noundef !58
  %3 = trunc nuw i8 %i.rw to i1
  %4 = icmp ne i64 %.sroa.0232.4.i, 0
  %or.cond.not.i = select i1 %3, i1 %4, i1 false
  br i1 %or.cond.not.i, label %bb.jj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtB4_3ops5range5RangeyEEECsaSXGKSfiU2E_10lance_file.exit.i

bb.dp:                                            ; preds = %bb.fa, %bb.ez
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %.body139.i

.body139.i:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i, %bb.dp
  %i.ry = phi ptr [ %i.ew, %bb.dp ], [ %i.yo, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i ]
  %i.rz = phi ptr [ %i.ev, %bb.dp ], [ %i.yp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i ]
  %i.sa = phi ptr [ %i.sc, %bb.dp ], [ %i.yr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i ]
  %i.sb = phi ptr [ undef, %bb.dp ], [ %i.ys, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i ]
  %.sroa.0232.5573.i.a = phi i64 [ undef, %bb.dp ], [ %.sroa.0232.5574.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i ]
  %.sroa.11233.5568.i.a = phi ptr [ undef, %bb.dp ], [ %.sroa.11233.5569.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i ]
  %eh.lpad-body140.i = phi { ptr, i32 } [ %i.rx, %bb.dp ], [ %.pn.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMs1_NtCs63DIHKhvmTb_10lance_core5cacheNtBK_10LanceCache15insert_with_keyNtNtCsaSXGKSfiU2E_10lance_file6reader22ColumnMetadataCacheKeyE0EB1U_(ptr noundef nonnull align 8 %i.sa) #50
          to label %bb.jc unwind label %bb.cj, !noalias !29355

bb.dq:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !29352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !29352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !29352
  %.phi.trans.insert494.i = getelementptr inbounds nuw i8, ptr %1, i64 273 ; 3 uses
  %.pre495.i = load i8, ptr %.phi.trans.insert494.i, align 1, !range !80, !noalias !29407
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  switch i8 %.pre495.i, label %default.unreachable353 [
    i8 0, label %._crit_edge279
    i8 1, label %bb.ez
    i8 2, label %bb.fa
    i8 3, label %._crit_edge.i128.i
  ]

._crit_edge279:                                   ; preds = %bb.dq
  %.phi.trans.insert280 = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.pre281 = load ptr, ptr %.phi.trans.insert280, align 8, !noalias !29407
  %.phi.trans.insert282 = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.pre283 = load ptr, ptr %.phi.trans.insert282, align 8, !noalias !29407
  %.phi.trans.insert284 = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.pre285 = load ptr, ptr %.phi.trans.insert284, align 8, !noalias !29407
  br label %bb.dr

._crit_edge.i128.i:                               ; preds = %bb.dq
  %.phi.trans.insert.i129.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val15.pre.i.i = load ptr, ptr %.phi.trans.insert.i129.i, align 8, !noalias !29407
  %.phi.trans.insert35.i.i = getelementptr i8, ptr %1, i64 232
  %.val16.pre.i.i = load ptr, ptr %.phi.trans.insert35.i.i, align 8, !noalias !29407
  br label %bb.fc

bb.dr:                                            ; preds = %._crit_edge279, %.thread562.i
  %i.sd = phi ptr [ %i.qu, %.thread562.i ], [ %i.ew, %._crit_edge279 ] ; 5 uses
  %i.se = phi ptr [ %i.qv, %.thread562.i ], [ %i.ev, %._crit_edge279 ] ; 5 uses
  %i.sf = phi ptr [ %i.ahz, %.thread562.i ], [ %.pre285, %._crit_edge279 ] ; 3 uses
  %i.sg = phi ptr [ %i.aie, %.thread562.i ], [ %.pre283, %._crit_edge279 ]
  %i.sh = phi ptr [ %i.aih, %.thread562.i ], [ %.pre281, %._crit_edge279 ] ; 3 uses
  %i.si = phi ptr [ %.sroa.11312.0..sroa_idx.i, %.thread562.i ], [ %.phi.trans.insert494.i, %._crit_edge279 ] ; 5 uses
  %i.sj = phi ptr [ %i.aii, %.thread562.i ], [ %i.sc, %._crit_edge279 ] ; 7 uses
  %i.sk = phi ptr [ %i.ahz, %.thread562.i ], [ undef, %._crit_edge279 ] ; 5 uses
  %.sroa.0232.5571.i.a = phi i64 [ %.sroa.0232.2.i, %.thread562.i ], [ undef, %._crit_edge279 ] ; 5 uses
  %.sroa.11233.5566.i.a = phi ptr [ %.sroa.11233.2.i, %.thread562.i ], [ undef, %._crit_edge279 ] ; 5 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  store i8 1, ptr %i.sl, align 8, !noalias !29407
  %i.sm = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  store ptr %i.sf, ptr %i.sm, align 8, !noalias !29407
  %.val11.i.i = load ptr, ptr %i.sh, align 8, !noalias !29408, !nonnull !58, !noundef !58 ; 11 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !29409)
  %i.so = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 48 ; 10 uses
  %i.sp = load atomic i32, ptr %i.so monotonic, align 4, !noalias !29410 ; 3 uses
  %or.cond3.i.i.i.i = icmp ult i32 %i.sp, 1073741822
  br i1 %or.cond3.i.i.i.i, label %bb.ds, label %bb.dt, !prof !66

bb.ds:                                            ; preds = %bb.dr
  %i.sq = add nuw nsw i32 %i.sp, 1
  %i.sr = cmpxchg weak ptr %i.so, i32 %i.sp, i32 %i.sq acquire monotonic, align 4, !noalias !29410
  %i.ss = extractvalue { i32, i1 } %i.sr, 1
  br i1 %i.ss, label %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i, label %bb.dt, !prof !67

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4 %i.so)
          to label %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i unwind label %bb.fh, !noalias !29408

_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i: ; preds = %bb.dt, %bb.ds
  %i.st = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 56 ; 3 uses
  %i.su = load atomic i8, ptr %i.st monotonic, align 4, !noalias !29411 ; 0 uses
  %.sink.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 64 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29412)
  %i.sv = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 88 ; 3 uses
  %i.sw = load i64, ptr %i.sv, align 8, !alias.scope !29412, !noalias !29410, !noundef !58
  %i.sx = icmp eq i64 %i.sw, 0
  br i1 %i.sx, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.du

bb.du:                                            ; preds = %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 96
  %.val.i.i.i.i = load i64, ptr %i.sy, align 8, !alias.scope !29412, !noalias !29410, !noundef !58
  %i.sz = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 104
  %.val5.i.i.i.i = load i64, ptr %i.sz, align 8, !alias.scope !29412, !noalias !29410, !noundef !58
  %i.ta = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsaSXGKSfiU2E_10lance_file(i64 %.val.i.i.i.i, i64 %.val5.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) @11), !noalias !29413 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29414)
  call void @llvm.experimental.noalias.scope.decl(metadata !29415)
  %i.tb = lshr i64 %i.ta, 57
  %i.tc = trunc nuw nsw i64 %i.tb to i8
  %i.td = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 72
  %i.te = load i64, ptr %i.td, align 8, !alias.scope !29416, !noalias !29410, !noundef !58 ; 2 uses
  %i.tf = load ptr, ptr %.sink.i.i.i.i.i, align 8, !alias.scope !29416, !noalias !29410, !nonnull !58, !noundef !58 ; 2 uses
  %i.tg = insertelement <16 x i8> poison, i8 %i.tc, i64 0
  %i.th = shufflevector <16 x i8> %i.tg, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dx, %bb.du
  %.sroa.9.0.i.i.i.i.i.i = phi i64 [ 0, %bb.du ], [ %i.ty, %bb.dx ]
  %.pn.i.i.i.i.i.i = phi i64 [ %i.ta, %bb.du ], [ %i.tz, %bb.dx ]
  %.sroa.01.0.i.i.i.i.i.i = and i64 %.pn.i.i.i.i.i.i, %i.te ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.sroa.01.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i.i = load <16 x i8>, ptr %i.ti, align 1, !noalias !29417 ; 2 uses
  %i.tj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, %i.th
  %i.tk = bitcast <16 x i1> %i.tj to i16          ; 2 uses
  %.not.i.not32.i.i.i.i.i = icmp eq i16 %i.tk, 0
  br i1 %.not.i.not32.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.dv, %bb.dw
  %.sroa.06.0.i33.i.i.i.i.i = phi i16 [ %i.tx, %bb.dw ], [ %i.tk, %bb.dv ] ; 3 uses
  %i.tl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i.i, i1 true)
  %i.tm = zext nneg i16 %i.tl to i64
  %i.tn = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.tm
  %i.to = and i64 %i.tn, %i.te
  %i.tp = sub nsw i64 0, %i.to
  %i.tq = getelementptr inbounds [24 x i8], ptr %i.tf, i64 %i.tp
  %i.tr = getelementptr inbounds i8, ptr %i.tq, i64 -24
  %.val2.i.i.i.i.i.i = load i128, ptr %i.tr, align 8, !noalias !29418
  %i.ts = icmp eq i128 %.val2.i.i.i.i.i.i, 31627439851656236399704775438048908219
  br i1 %i.ts, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.dw, !prof !67

._crit_edge.i.i.i.i.i:                            ; preds = %bb.dw, %bb.dv
  %i.tt = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i.i, splat (i8 -1)
  %i.tu = bitcast <16 x i1> %i.tt to i16
  %i.tv = icmp eq i16 %i.tu, 0
  br i1 %i.tv, label %bb.dx, label %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i, !prof !57

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.tw = add i16 %.sroa.06.0.i33.i.i.i.i.i, -1
  %i.tx = and i16 %i.tw, %.sroa.06.0.i33.i.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i16 %i.tx, 0
  br i1 %.not.i.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.dx:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ty = add i64 %.sroa.9.0.i.i.i.i.i.i, 16      ; 2 uses
  %i.tz = add i64 %.sroa.01.0.i.i.i.i.i.i, %i.ty
  br label %bb.dv

_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i
  %.sroa.0.0.i.i.i.i = phi i1 [ false, %_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit.i.i.i ], [ true, %.lr.ph.i.i.i.i.i ], [ false, %._crit_edge.i.i.i.i.i ]
  %i.ua = atomicrmw add ptr %i.so, i32 -1 release, align 4, !noalias !29410
  %i.ub = add i32 %i.ua, -1                       ; 2 uses
  %i.uc = and i32 %i.ub, -1073741825
  %or.cond.not.i.i7.i.i.i = icmp eq i32 %i.uc, -2147483648
  br i1 %or.cond.not.i.i7.i.i.i, label %bb.dy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i, !prof !29419

bb.dy:                                            ; preds = %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.so, i32 noundef %i.ub)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i unwind label %bb.fh, !noalias !29408

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i: ; preds = %bb.dy, %_RINvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB6_7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtBQ_3AnyNtNtBS_6marker4SyncNtB2e_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtBS_6option6OptionjENtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE12contains_keyBO_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  br i1 %.sroa.0.0.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock16RwLockWriteGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2l_3AnyNtNtB4_6marker4SyncNtB3u_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlock15RwLockReadGuardINtNtNtNtBK_11collections4hash3map7HashMapNtNtB4_3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2k_3AnyNtNtB4_6marker4SyncNtB3t_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB4_6option6OptionjEEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i
  %i.ud = cmpxchg weak ptr %i.so, i32 0, i32 1073741823 acquire monotonic, align 4, !noalias !29420
  %i.ue = extractvalue { i32, i1 } %i.ud, 1
  br i1 %i.ue, label %.noexc18.i.i, label %bb.ea, !prof !67

bb.ea:                                            ; preds = %bb.dz
  invoke void @_RNvMNtNtNtNtCsgczF5crJ4sT_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 8 %i.so)
          to label %.noexc18.i.i unwind label %bb.fh, !noalias !29408

.noexc18.i.i:                                     ; preds = %bb.ea, %bb.dz
  %i.uf = load atomic i64, ptr @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !29421
  %i.ug = and i64 %i.uf, 9223372036854775807
  %i.uh = icmp eq i64 %i.ug, 0
  br i1 %i.uh, label %_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.eb, !prof !67

bb.eb:                                            ; preds = %.noexc18.i.i
  %i.ui = invoke noundef zeroext i1 @_RNvNtNtCsgczF5crJ4sT_3std9panicking11panic_count17is_zero_slow_path()
          to label %.noexc19.i.i unwind label %bb.fh, !noalias !29408

.noexc19.i.i:                                     ; preds = %bb.eb
  %i.uj = xor i1 %i.ui, true
  %i.uk = zext i1 %i.uj to i8
  br label %_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RNvMs9_NtNtNtCsgczF5crJ4sT_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCscI6d9CVNmLh_4core3any6TypeIdFG0_RL1_INtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB1H_3AnyNtNtB1J_6marker4SyncNtB36_4SendEL_EQL0_NtNtCs63DIHKhvmTb_10lance_core8deepsize7ContextEINtNtB1J_6option6OptionjEEE5writeCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %.noexc19.i.i, %.noexc18.i.i
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %i.uk, %.noexc19.i.i ], [ 0, %.noexc18.i.i ] ; 2 uses
  %i.ul = load atomic i8, ptr %i.st monotonic, align 8, !noalias !29420 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29422)
  %i.um = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 96 ; 2 uses
  %.val.i11.i.i.i = load i64, ptr %i.um, align 8, !alias.scope !29422, !noalias !29410, !noundef !58
  %i.un = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 104
  %.val5.i12.i.i.i = load i64, ptr %i.un, align 8, !alias.scope !29422, !noalias !29410, !noundef !58
  %i.uo = call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtBU_3any6TypeIdECsaSXGKSfiU2E_10lance_file(i64 %.val.i11.i.i.i, i64 %.val5.i12.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) @11), !noalias !29423 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29424)
  call void @llvm.experimental.noalias.scope.decl(metadata !29425)
  %i.up = lshr i64 %i.uo, 57
  %i.uq = trunc nuw nsw i64 %i.up to i8           ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB4_6Writer10initialize:bb.a

bb.ai:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 -2, ptr %i.cq, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.526.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i64 0, ptr %.sroa.529.0..sroa_idx, align 8
  %i.cr = zext i32 %i.bz to i64
  invoke fastcc void @_RINvXNtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBR_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.i, i64 noundef %i.cr)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.cs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %.val45 = load i64, ptr %i.cu, align 8          ; 2 uses
  %i.cv = icmp eq i64 %.val45, 0
  br i1 %i.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val46 = load ptr, ptr %i.cw, align 8, !nonnull !58, !noundef !58
  %i.cx = shl nuw i64 %.val45, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ak, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cy = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 8, !range !77, !noalias !35311, !noundef !58
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !67

._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit
  %.pre.i.i = load i64, ptr %i.cy, align 8, !noalias !35312
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !35312
  br label %bb.al

_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTmmEEECsaSXGKSfiU2E_10lance_file.exit
  %i.dc = invoke { i64, i64 } @_RNvNtNtNtCsgczF5crJ4sT_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc50 unwind label %.thread99 ; 2 uses

.noexc50:                                         ; preds = %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.dd = extractvalue { i64, i64 } %i.dc, 0
  %i.de = extractvalue { i64, i64 } %i.dc, 1      ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i64 %i.de, ptr %i.df, align 8, !noalias !35313
  store i8 1, ptr %i.cz, align 8, !noalias !35313
  br label %bb.al

bb.al:                                            ; preds = %.noexc50, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i
  %.pre-phi123 = phi i64 [ %i.de, %.noexc50 ], [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ]
  %.pre-phi = phi i64 [ %i.dd, %.noexc50 ], [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsgczF5crJ4sT_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsaSXGKSfiU2E_10lance_file.exit_crit_edge.i.i ] ; 2 uses
  %i.dg = add i64 %.pre-phi, 1
  store i64 %i.dg, ptr %i.cy, align 8, !noalias !35312
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.dh, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) @84, i64 32, i1 false)
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 %.pre-phi, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %.pre-phi123, ptr %.sroa.537.0..sroa_idx, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 360
  invoke fastcc void @_RINvXs1i_NtCsfKiFC1ztrmh_9hashbrown3mapINtB7_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringBP_NtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect6ExtendTBP_BP_EE6extendINtNtNtNtB1A_11collections4hash3map7HashMapBP_BP_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(48) %i.di, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.am unwind label %.thread99

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.dk = load i64, ptr %i.dj, align 8, !range !60, !alias.scope !35314, !noundef !58
  %i.dl = icmp eq i64 %i.dk, -1
  br i1 %i.dl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.dj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit.i unwind label %.thread65

.thread65:                                        ; preds = %bb.an
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 184
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.dn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dj, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.an
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 184
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.do)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit.i, %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dj, ptr noundef nonnull align 8 dereferenceable(72) %2, i64 72, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit
  ret void

.thread99:                                        ; preds = %bb.d, %_RNCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB6_6Writer10initialize0Bc_.exit, %bb.x, %bb.h, %bb.al, %_RINvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsaSXGKSfiU2E_10lance_file.exit.i.i
  %lpad.thr_comm94 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ap:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp95 = landingpad { ptr, i32 }
          cleanup
  br label %.thread86

bb.aq:                                            ; preds = %.thread, %.thread73
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.thread86:                                        ; preds = %bb.ah, %.thread73, %bb.ap
  %.pn7091 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread73 ], [ %lpad.thr_comm.split-lp95, %bb.ap ], [ %i.cp, %bb.ah ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.val = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.dr = icmp eq i64 %.val, 0
  br i1 %i.dr, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %.thread86
  %i.ds = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.val44 = load ptr, ptr %i.ds, align 8, !nonnull !58, !noundef !58
  %i.dt = shl nuw i64 %.val, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val44, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %.thread

bb.as:                                            ; preds = %bb.z, %bb.w
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %2)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.at

common.resume:                                    ; preds = %.thread, %.thread65, %bb.at
  %common.resume.op = phi { ptr, i32 } [ %i.du, %bb.at ], [ %.pn4264, %.thread ], [ %i.dm, %.thread65 ]
  resume { ptr, i32 } %common.resume.op

bb.at:                                            ; preds = %bb.as
  %i.du = landingpad { ptr, i32 }
          cleanup
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.dv)
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.dw)
  br label %bb.ao

.thread:                                          ; preds = %bb.ar, %.thread86, %.thread99, %bb.p, %bb.q
  %.pn4264 = phi { ptr, i32 } [ %i.bf, %bb.q ], [ %lpad.thr_comm94, %.thread99 ], [ %i.bf, %bb.p ], [ %.pn7091, %.thread86 ], [ %.pn7091, %bb.ar ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(72) %2) #50
          to label %common.resume unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB4_6Writer12encode_batch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(440) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.7 = alloca [31 x i8], align 1            ; 6 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 5 uses
  %.sroa.6 = alloca [31 x i8], align 1            ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 24 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = load atomic i64, ptr @_RNvNtCs9ipI1vyGjpZ_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %4 = icmp ult i64 %i.n, 2
  br i1 %4, label %bb.d, label %bb.c

.body:                                            ; preds = %.body.i, %bb.ac, %bb.b, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.bx, %bb.ah ], [ %i.q, %bb.b ], [ %.pn.i, %bb.ac ], [ %.pn.i, %.body.i ] ; 2 uses
  %.sroa.025.0 = phi i8 [ %.sroa.022.2, %bb.ah ], [ %.sroa.025.1, %bb.b ], [ %.sroa.022.2, %bb.ac ], [ %.sroa.022.2, %.body.i ]
  %.sroa.022.0 = phi i8 [ %.sroa.022.2, %bb.ah ], [ %.sroa.022.1, %bb.b ], [ %.sroa.022.2, %bb.ac ], [ %.sroa.022.2, %.body.i ]
  %i.o = trunc nuw i8 %.sroa.022.0 to i1
  %i.p = load i64, ptr %i.m, align 8, !range !79
  %.not.i.i62 = icmp ne i64 %i.p, -1
  %or.cond.not = select i1 %i.o, i1 %.not.i.i62, i1 false
  br i1 %or.cond.not, label %bb.ax, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECsaSXGKSfiU2E_10lance_file.exit64

bb.b:                                             ; preds = %bb.ai, %bb.ad, %bb.n, %bb.k, %bb.h, %bb.g
  %.sroa.025.1 = phi i8 [ %.sroa.022.2, %bb.ai ], [ 0, %bb.g ], [ %.sroa.022.2, %bb.ad ], [ 1, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %.sroa.022.1 = phi i8 [ %.sroa.022.2, %bb.ai ], [ 0, %bb.g ], [ %.sroa.022.2, %bb.ad ], [ 0, %bb.n ], [ 0, %bb.k ], [ 0, %bb.h ]
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.l, %bb.n, %bb.a
  %.sroa.022.2 = phi i8 [ 0, %bb.a ], [ 1, %bb.n ], [ 1, %bb.l ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.s = load i64, ptr %i.r, align 8, !range !60, !noundef !58
  %.not49 = icmp eq i64 %i.s, -1
  br i1 %.not49, label %bb.ad, label %bb.o, !prof !57

bb.d:                                             ; preds = %bb.a
  %i.t = load atomic i64, ptr @_RNvNtCs9ipI1vyGjpZ_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.u = icmp ult i64 %i.t, 2
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d, %bb.j, %bb.i
  store i64 -1, ptr %i.k, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.v, align 8
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.w = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB6_6Writer12encode_batch10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.w, label %bb.g [
    i8 0, label %bb.e
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !119

bb.g:                                             ; preds = %bb.f
  %i.x = invoke noundef i8 @_RNvMNtCs9ipI1vyGjpZ_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB6_6Writer12encode_batch10___CALLSITE)
          to label %bb.i unwind label %bb.b       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.010.0 = phi i8 [ %i.x, %bb.i ], [ %i.w, %bb.f ], [ %i.w, %bb.f ]
  %i.y = load ptr, ptr @_RNvNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB6_6Writer12encode_batch10___CALLSITE, align 8, !nonnull !58, !align !59, !noundef !58
  %i.z = invoke noundef zeroext i1 @_RNvNtCshTahG2RyGLb_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.y, i8 noundef %.sroa.010.0)
          to label %bb.j unwind label %bb.b

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i8 %i.x, 0
  br i1 %.not, label %bb.e, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.z, label %bb.k, label %bb.e

bb.k:                                             ; preds = %bb.j
  %i.aa = load ptr, ptr @_RNvNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB6_6Writer12encode_batch10___CALLSITE, align 8, !nonnull !58, !align !59, !noundef !58 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i64 1, ptr %i.l, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.532.0..sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.ab, ptr %i.ac, align 8
  invoke void @_RNvMNtCshTahG2RyGLb_7tracing4spanNtB2_4Span3new(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %bb.m unwind label %bb.b

bb.l:                                             ; preds = %bb.m, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  %i.ad = load i64, ptr %i.m, align 8, !range !79, !noundef !58
  %.not48 = icmp eq i64 %i.ad, -1
  br i1 %.not48, label %bb.c, label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae)
          to label %bb.c unwind label %bb.b

bb.o:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !58, !noundef !58 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !58
  %i.aj = getelementptr inbounds nuw [192 x i8], ptr %i.ag, i64 %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !35385
  store i8 -1, ptr %i.i, align 8, !noalias !35385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !35385
  call void @llvm.experimental.noalias.scope.decl(metadata !35386)
  call void @llvm.experimental.noalias.scope.decl(metadata !35387)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !35388
  store ptr %i.ag, ptr %i.g, align 8, !alias.scope !35389, !noalias !35390
  %.sroa.4.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx68, align 8, !alias.scope !35389, !noalias !35390
  %.sroa.5.0..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx69, align 8, !alias.scope !35389, !noalias !35390
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %2, ptr %.sroa.670.0..sroa_idx, align 8, !alias.scope !35389, !noalias !35390
  %.sroa.4.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx7.i, align 8, !alias.scope !35389, !noalias !35391
  call void @llvm.experimental.noalias.scope.decl(metadata !35392)
  call void @llvm.experimental.noalias.scope.decl(metadata !35393)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !35394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35394
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3c_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc.i unwind label %bb.y, !noalias !35385

.noexc.i:                                         ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !35394, !noundef !58
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %bb.p, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i: ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !35394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !35394
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !35395
  %i.am = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #44, !noalias !35395 ; 4 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.s, label %bb.t

bb.p:                                             ; preds = %.noexc.i
  store i64 0, ptr %i.h, align 8, !alias.scope !35396, !noalias !35385
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8, !alias.scope !35396, !noalias !35385
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %i.ap, align 8, !alias.scope !35396, !noalias !35385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35394
  br label %bb.z

bb.q:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35397)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35398)
  call void @llvm.experimental.noalias.scope.decl(metadata !35399)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !35400, !noalias !35394, !nonnull !58, !noundef !58
  %i.at = atomicrmw add ptr %i.as, i64 -1 release, align 8, !noalias !35401
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.r, label %.body.i

bb.r:                                             ; preds = %bb.q
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %.body.i unwind label %bb.x, !noalias !35394

bb.s:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #49
          to label %.noexc5.i.i.i.i.i unwind label %bb.q, !noalias !35394

.noexc5.i.i.i.i.i:                                ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !35394
  store i64 4, ptr %i.f, align 8, !noalias !35394
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !35394
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !35394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !35394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !35394
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !35394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !35402
  call void @llvm.experimental.noalias.scope.decl(metadata !35403)
  call void @llvm.experimental.noalias.scope.decl(metadata !35404)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35405
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3c_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc7.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35394

.noexc7.i.i.i.i.i:                                ; preds = %bb.t
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !35405, !noundef !58
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not5.i.i.i.i.i.i.i, label %.loopexit9.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc7.i.i.i.i.i, %.noexc8.i.i.i.i.i
  %i.ax = phi ptr [ %i.bc, %.noexc8.i.i.i.i.i ], [ %i.am, %.noexc7.i.i.i.i.i ]
  %i.ay = phi i64 [ %i.be, %.noexc8.i.i.i.i.i ], [ 1, %.noexc7.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !35405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !35405
  %i.az = icmp samesign ult i64 %i.ay, 384307168202282326
  call void @llvm.assume(i1 %i.az)
  %i.ba = load i64, ptr %i.f, align 8, !range !61, !alias.scope !35406, !noalias !35394, !noundef !58
  %i.bb = icmp eq i64 %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.ay, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i unwind label %bb.u, !noalias !35407

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !35406, !noalias !35394
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %.pre.i.i.i.i.i, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !35405
  %i.be = add nuw nsw i64 %i.ay, 1                ; 2 uses
  store i64 %i.be, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !35406, !noalias !35394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !35405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !35405
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB3c_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.noexc8.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !35394

.noexc8.i.i.i.i.i:                                ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.av, align 8, !noalias !35405, !noundef !58
  %.not.i.i6.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i6.i.i.i.i.i, label %.loopexit9.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_9enumerate9EnumerateINtNtNtB6_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB36_6Writer12encode_batch0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2b_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB3c_.exit.i.i.i.i.i.i.i
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35408)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35409)
  call void @llvm.experimental.noalias.scope.decl(metadata !35410)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !35411, !noalias !35405, !nonnull !58, !noundef !58
  %i.bj = atomicrmw add ptr %i.bi, i64 -1 release, align 8, !noalias !35412
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %bb.v, label %.body.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.bh)
          to label %.body.i.i.i.i.i unwind label %bb.w, !noalias !35405

bb.w:                                             ; preds = %bb.v
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !35405
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTjINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, %bb.t
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %bb.u
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.u ], [ %i.bg, %bb.v ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.f) #50
          to label %.body.i unwind label %bb.x, !noalias !35394

.loopexit9.i.i.i.i.i:                             ; preds = %.noexc8.i.i.i.i.i, %.noexc7.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !35405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !35394
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !35413
  br label %bb.z

bb.x:                                             ; preds = %.body.i.i.i.i.i, %bb.r
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !35394
  unreachable

.body.i:                                          ; preds = %bb.y, %.body.i.i.i.i.i, %bb.r, %bb.q
  %.pn.i = phi { ptr, i32 } [ %i.aq, %bb.q ], [ %i.aq, %bb.r ], [ %i.bp, %bb.y ], [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ] ; 2 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.q ], [ true, %bb.r ], [ %.sroa.03.1.i, %bb.y ], [ true, %.body.i.i.i.i.i ]
  %i.bn = load i8, ptr %i.i, align 8, !range !81, !noalias !35385, !noundef !58
  %i.bo = icmp ne i8 %i.bn, -1
  %or.cond.i = and i1 %.sroa.03.0.i, %i.bo
  br i1 %or.cond.i, label %bb.ac, label %.body

bb.y:                                             ; preds = %bb.aa, %bb.o
  %.sroa.03.1.i = phi i1 [ false, %bb.aa ], [ true, %bb.o ]
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.z:                                             ; preds = %.loopexit9.i.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !35394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !35388
  %i.bq = load i8, ptr %i.i, align 8, !range !81, !noalias !35385, !noundef !58 ; 2 uses
  %.not.not.i = icmp eq i8 %i.bq, -1
  br i1 %.not.not.i, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7.0..sroa_idx, i64 31, i1 false), !noalias !35414
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx, i64 24, i1 false), !noalias !35414
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.h)
          to label %bb.af unwind label %bb.y, !noalias !35385

bb.ab:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !35385
  unreachable

bb.ac:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %.body unwind label %bb.ab, !noalias !35385

bb.ad:                                            ; preds = %bb.c
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @759) #49
          to label %bb.ae unwind label %bb.b

bb.ae:                                            ; preds = %bb.ad
  unreachable

bb.af:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35385
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.7, i64 31, i1 false)
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.543.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.442.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.6, i64 31, i1 false)
  store i8 %i.bq, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %5 = trunc nuw i8 %.sroa.022.2 to i1
  %i.bs = load i64, ptr %i.m, align 8, !range !79
  %.not.i.i57 = icmp ne i64 %i.bs, -1
  %or.cond87.not = select i1 %5, i1 %.not.i.i57, i1 false
  br i1 %or.cond87.not, label %bb.ar, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61

bb.ag:                                            ; preds = %bb.z
  %.sroa.7.8..sroa_idx66 = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.7.8..sroa_idx66, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !35414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !35385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !35385
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 7 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.7.8..sroa_idx66, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !58, !noundef !58
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !58
  invoke void @_RNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB4_6Writer14encode_columns(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(440) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.bu, i64 noundef %i.bw, ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.j) #50
          to label %.body unwind label %bb.aq

bb.ai:                                            ; preds = %bb.ag
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.j)
          to label %bb.aj unwind label %bb.b

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %6 = trunc nuw i8 %.sroa.022.2 to i1
  %i.by = load i64, ptr %i.m, align 8, !range !79
  %.not.i.i = icmp ne i64 %i.by, -1
  %or.cond85.not = select i1 %6, i1 %.not.i.i, i1 false
  br i1 %or.cond85.not, label %bb.ak, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61

bb.ak:                                            ; preds = %bb.aj
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bz)
          to label %.thread73 unwind label %.thread74

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECsaSXGKSfiU2E_10lance_file.exit64: ; preds = %bb.ax, %.body
  %i.ca = trunc nuw i8 %.sroa.025.0 to i1
  br i1 %i.ca, label %bb.ay, label %common.resume

.thread74:                                        ; preds = %bb.ak, %bb.ar
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.thread73:                                        ; preds = %bb.ak
  %.pr = load i64, ptr %i.m, align 8, !alias.scope !35415 ; 2 uses
  %.not.i.i56 = icmp eq i64 %.pr, -1
  br i1 %.not.i.i56, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61, label %bb.al

bb.al:                                            ; preds = %.thread73
  %i.cc = load i64, ptr %i.bz, align 8, !range !112, !alias.scope !35416, !noundef !58
  %i.cd = invoke noundef zeroext i1 @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, i64 noundef %i.cc)
          to label %bb.an unwind label %bb.am     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m) #50
          to label %common.resume unwind label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !35417)
  call void @llvm.experimental.noalias.scope.decl(metadata !35418)
  call void @llvm.experimental.noalias.scope.decl(metadata !35419)
  call void @llvm.experimental.noalias.scope.decl(metadata !35420)
  %i.cf = icmp eq i64 %.pr, 0
  br i1 %i.cf, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35421)
  call void @llvm.experimental.noalias.scope.decl(metadata !35422)
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !35423, !nonnull !58, !noundef !58
  %i.ci = atomicrmw add ptr %i.ch, i64 -1 release, align 8, !noalias !35424
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61

bb.ap:                                            ; preds = %bb.am
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECsaSXGKSfiU2E_10lance_file.exit64, %bb.ay, %bb.at, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %i.cp, %bb.at ], [ %i.ce, %bb.am ], [ %.pn5278, %bb.ay ], [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECsaSXGKSfiU2E_10lance_file.exit64 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61.sink.split: ; preds = %bb.ao, %bb.av
  %.sink = phi ptr [ %i.cr, %bb.av ], [ %i.cg, %bb.ao ]
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs9ipI1vyGjpZ_12tracing_core10subscriber10SubscriberNtNtCscI6d9CVNmLh_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sink)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61.sink.split, %bb.aj, %.thread73, %bb.an, %bb.ao, %bb.af, %.thread80, %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.aq:                                            ; preds = %bb.ax, %bb.ay, %bb.ah
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ar:                                            ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  invoke void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cm)
          to label %.thread80 unwind label %.thread74

.thread80:                                        ; preds = %bb.ar
  %.pr81 = load i64, ptr %i.m, align 8, !alias.scope !35425 ; 2 uses
  %.not.i.i60 = icmp eq i64 %.pr81, -1
  br i1 %.not.i.i60, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61, label %bb.as

bb.as:                                            ; preds = %.thread80
  %i.cn = load i64, ptr %i.cm, align 8, !range !112, !alias.scope !35426, !noundef !58
  %i.co = invoke noundef zeroext i1 @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.m, i64 noundef %i.cn)
          to label %bb.au unwind label %bb.at     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshTahG2RyGLb_7tracing4span5InnerEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m) #50
          to label %common.resume unwind label %bb.aw

bb.au:                                            ; preds = %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !35427)
  call void @llvm.experimental.noalias.scope.decl(metadata !35428)
  call void @llvm.experimental.noalias.scope.decl(metadata !35429)
  call void @llvm.experimental.noalias.scope.decl(metadata !35430)
  %i.cq = icmp eq i64 %.pr81, 0
  br i1 %i.cq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !35431)
  call void @llvm.experimental.noalias.scope.decl(metadata !35432)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !35433, !nonnull !58, !noundef !58
  %i.ct = atomicrmw add ptr %i.cs, i64 -1 release, align 8, !noalias !35434
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file.exit61

bb.aw:                                            ; preds = %bb.at
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.ax:                                            ; preds = %.body
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  invoke void @_RNvMs2_NtCs9ipI1vyGjpZ_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECsaSXGKSfiU2E_10lance_file.exit64 unwind label %bb.aq

bb.ay:                                            ; preds = %.thread74, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECsaSXGKSfiU2E_10lance_file.exit64
  %.pn5278 = phi { ptr, i32 } [ %i.cb, %.thread74 ], [ %.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span7EnteredECsaSXGKSfiU2E_10lance_file.exit64 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshTahG2RyGLb_7tracing4span4SpanECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(40) %i.m) #50
          to label %common.resume unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB4_6Writer14encode_columns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(440) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias noundef align 8 dereferenceable(40) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [88 x i8], align 8                ; 14 uses
  %i.f = alloca [56 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %3, 24
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.h = shl nuw nsw i64 %3, 3                    ; 3 uses
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterTjINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columns0EE9from_iterB45_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !35505
  %i.j = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 8) #44, !noalias !35505 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.h) #49, !noalias !35506
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.n = load i64, ptr %i.l, align 8, !noalias !35507, !noundef !58 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.val15.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %i.u, %bb.g ] ; 3 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.val15.i.i.i.i.i.i
  %.val16.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !noalias !35508, !noundef !58 ; 3 uses
  %i.p = icmp ult i64 %.val16.i.i.i.i.i.i, %i.n
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.val16.i.i.i.i.i.i, i64 noundef %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @542) #49
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i, !noalias !35508

.noexc.i.i.i.i.i.i:                               ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.m, align 8, !noalias !35507, !nonnull !58, !noundef !58
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.val16.i.i.i.i.i.i
  %i.s = load i64, ptr %i.r, align 8, !noalias !35507, !noundef !58
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.val15.i.i.i.i.i.i
  store i64 %i.s, ptr %i.t, align 8, !noalias !35509
  %i.u = add nuw nsw i64 %.val15.i.i.i.i.i.i, 1   ; 2 uses
  %i.v = icmp eq i64 %i.u, %3
  br i1 %i.v, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterTjINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columns0EE9from_iterB45_.exit, label %bb.e

common.resume:                                    ; preds = %.body.i2, %.body.i.i, %bb.aj, %bb.am, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body.i ], [ %.pn.i, %.body.i2 ], [ %.pn.i, %bb.am ], [ %i.bl, %.body.i.i ], [ %i.bl, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !35506
  br label %common.resume

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecyEINtB4_18SpecFromIterNestedyINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB1F_5slice4iter4IterTjINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columns0EE9from_iterB45_.exit: ; preds = %bb.g, %bb.a
  %.sroa.10.0.i22.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.j, %bb.g ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.10.0.i22.i, i64 %3
  %.sroa.08.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !35510
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
end_hunk_1
