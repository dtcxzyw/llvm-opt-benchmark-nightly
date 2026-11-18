Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_lib-b059757b77138e23.influxdb3_lib.bfc5fb6112bc5ebd-cgu.04?download=true
inline.NumInlined: 11297
inline.NumDeleted: 4176
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 40
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !22813
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.az
  %i.gf = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.di, %bb.az ]
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !22813
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !22822
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.gf), !noalias !22812
  call void @llvm.experimental.noalias.scope.decl(metadata !22858)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !22858, !noalias !22822, !noundef !85 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i42.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i42.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gk = lshr i64 %i.gi, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22859
  %i.gl = load ptr, ptr %i.af, align 8, !alias.scope !22858, !noalias !22822, !nonnull !85, !noundef !85
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !22858, !noalias !22822, !noundef !85
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !22858, !noalias !22822, !noundef !85
  %i.gq = sub nsw i64 0, %i.gk
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gq
  %i.gs = add i64 %i.gn, %i.gk
  %i.gt = add i64 %i.gp, %i.gk                    ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  store i64 %i.gt, ptr %i.e, align 8, !noalias !22859
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gr, ptr %i.gv, align 8, !noalias !22859
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gs, ptr %i.gw, align 8, !noalias !22859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22859
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !22860
  call void @llvm.experimental.noalias.scope.decl(metadata !22861)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22859
  store i64 %i.gk, ptr %i.c, align 8, !noalias !22862
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !22861, !noalias !22859, !noundef !85 ; 4 uses
  %.not.i.i43.i = icmp ugt i64 %i.gk, %i.gy
  br i1 %.not.i.i43.i, label %bb.bd, label %bb.bg, !prof !86

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22862
  store i64 %i.gy, ptr %i.b, align 8, !noalias !22862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22862
  store ptr %i.c, ptr %i.a, align 8, !noalias !22862
  %.sroa.42.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i44.i, align 8, !noalias !22862
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gz, align 8, !noalias !22862
  %.sroa.46.0..sroa_idx.i.i45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i45.i, align 8, !noalias !22862
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i47.i unwind label %bb.bf, !noalias !22860

.noexc.i47.i:                                     ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ha = load ptr, ptr %i.af, align 8, !alias.scope !22858, !noalias !22822, !nonnull !85, !noundef !85
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !22858, !noalias !22822, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bf:                                            ; preds = %bb.bd
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22863)
  call void @llvm.experimental.noalias.scope.decl(metadata !22864)
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !22865, !noalias !22859, !noundef !85
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !22865, !noalias !22859, !nonnull !85, !align !91, !noundef !85
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !22866, !nonnull !85, !noundef !85
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !22865, !noalias !22859, !noundef !85
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bh, !noalias !22860, !inline_history !3

bb.bg:                                            ; preds = %bb.bc
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !22861, !noalias !22859, !noundef !85
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22859
  %.sroa.079.0.copyload80.i = load ptr, ptr %i.d, align 8, !noalias !22867
  %.sroa.787.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.787.0.copyload89.i = load ptr, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !22867
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22859
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bh:                                            ; preds = %bb.bf
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22860
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i: ; preds = %bb.bg, %bb.be
  %.sroa.787.0.i = phi ptr [ %i.gh, %bb.be ], [ %.sroa.787.0.copyload89.i, %bb.bg ]
  %.sroa.684.0.i = phi i64 [ %i.hc, %bb.be ], [ %i.hl, %bb.bg ]
  %.sroa.581.0.i = phi ptr [ %i.ha, %bb.be ], [ %i.ho, %bb.bg ] ; 2 uses
  %.sroa.079.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.be ], [ %.sroa.079.0.copyload80.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !22822
  store ptr %.sroa.581.0.i, ptr %.sroa.19, align 8, !alias.scope !22812
  store ptr %.sroa.787.0.i, ptr %.sroa.30, align 8, !alias.scope !22812
  br label %bb.bj

bb.bi:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bj:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109 = phi ptr [ %.sroa.581.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.684.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.079.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.053.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10ActionTypeEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %bb.bp, label %bb.bq

bb.bk:                                            ; preds = %.loopexit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.hr = load i64, ptr %i.aj, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bn, %bb.bo, %bb.bk
  %.sroa.017.0 = phi i64 [ -3, %bb.bk ], [ -2, %bb.bn ], [ %i.hr, %bb.bo ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bk ], [ %.sroa.563.0.copyload, %bb.bn ], [ %.sroa.563.0.copyload, %bb.bo ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bl
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bm

bb.bp:                                            ; preds = %.thread117, %.thread111, %bb.bj
  %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116 = phi ptr [ %i.au, %.thread111 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, %bb.bj ], [ %.sroa.8.0.copyload51.i, %.thread117 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) ]
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %i.al, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hu = load i8, ptr %i.ht, align 8, !range !84, !noundef !85
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bj
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %bb.bp
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) #32
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.hy = load i64, ptr %i.ak, align 8, !range !102, !noundef !85 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  br i1 %i.hz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  br label %bb.bt

bb.by:                                            ; preds = %bb.bm, %bb.bq, %bb.bt, %bb.bi, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !22920 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [160 x i8], align 8               ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [160 x i8], align 8               ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [160 x i8], align 8              ; 6 uses
  %i.ae = alloca [160 x i8], align 8              ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [160 x i8], align 8              ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [144 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [96 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 12 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22922)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val30.i = load i64, ptr %i.ao, align 8, !alias.scope !22922, !noundef !85
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val31.i = load i64, ptr %i.at, align 8, !alias.scope !22922, !noundef !85
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !22922, !align !91, !noundef !85 ; 3 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !22922
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %.thread111

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !22924
  %i.av = load ptr, ptr %i.an, align 8, !alias.scope !22925, !noundef !85
  %.not.i131.i = icmp eq ptr %i.av, null
  br i1 %.not.i131.i, label %.loopexit102.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br label %bb.b

.thread111:                                       ; preds = %bb.a
  store ptr %i.au, ptr %.sroa.19, align 8, !alias.scope !22921
  br label %bb.bp

bb.b:                                             ; preds = %bb.ar, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !22926)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !22927
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !22928
  %i.bb = load i64, ptr %i.ad, align 8, !range !149, !noalias !22927, !noundef !85
  %i.bc = icmp eq i64 %i.bb, -4
  br i1 %i.bc, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !22927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !22927
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ae, ptr noundef nonnull align 8 dereferenceable(160) %i.ad, i64 160, i1 false), !noalias !22927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !22927
  %i.bd = load i64, ptr %i.ae, align 8, !noalias !22929 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.bd, -3
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.an, align 8, !alias.scope !22930
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(160) %i.ae) #32
          to label %common.resume unwind label %bb.k, !noalias !22928

bb.d:                                             ; preds = %bb.c
  %.val6.i.i = load ptr, ptr %i.an, align 8, !alias.scope !22930, !noundef !85 ; 4 uses
  %.val7.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !22930 ; 6 uses
  %i.be = icmp eq ptr %.val6.i.i, null
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread189.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.bf = load ptr, ptr %.val7.i.i, align 8, !invariant.load !85, !noalias !22928 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.bf(ptr noundef nonnull %.val6.i.i)
          to label %bb.g unwind label %bb.i, !noalias !22928

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bg = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !98, !invariant.load !85, !noalias !22928 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread189.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !101, !invariant.load !85, !noalias !22928
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #30, !noalias !22928
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread189.i

bb.i:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !98, !invariant.load !85, !noalias !22928 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !101, !invariant.load !85, !noalias !22928
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #30, !noalias !22928
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread189.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.an, align 8, !alias.scope !22930
  br label %.loopexit102.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22928
  unreachable

common.resume:                                    ; preds = %bb.bu, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.bb, %bb.bf
  %common.resume.op = phi { ptr, i32 } [ %i.hd, %bb.bf ], [ %i.fq, %bb.aw ], [ %i.bl, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cv, %bb.p ], [ %i.dy, %bb.aa ], [ %i.ge, %bb.bb ], [ %i.ej, %bb.aj ], [ %lpad.loopexit.split-lp275, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.ee, %bb.af ], [ %i.hx, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload51.i = load ptr, ptr %.sroa.8.0..sroa_idx50.i, align 8, !noalias !22929 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.9.0..sroa_idx52.i, i64 144, i1 false), !noalias !22929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !22927
  switch i64 %i.bd, label %bb.t [
    i64 -4, label %.loopexit.i
    i64 -2, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bs = load i64, ptr %i.ay, align 8, !alias.scope !22922, !noundef !85 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.bi, label %bb.l

.loopexit102.i:                                   ; preds = %bb.ar, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread189.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !22927
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !22922
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.az
  %i.gf = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.di, %bb.az ]
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !22922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !22931
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.gf), !noalias !22921
  call void @llvm.experimental.noalias.scope.decl(metadata !22967)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !22967, !noalias !22931, !noundef !85 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i42.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i42.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gk = lshr i64 %i.gi, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22968
  %i.gl = load ptr, ptr %i.af, align 8, !alias.scope !22967, !noalias !22931, !nonnull !85, !noundef !85
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !22967, !noalias !22931, !noundef !85
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !22967, !noalias !22931, !noundef !85
  %i.gq = sub nsw i64 0, %i.gk
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gq
  %i.gs = add i64 %i.gn, %i.gk
  %i.gt = add i64 %i.gp, %i.gk                    ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  store i64 %i.gt, ptr %i.e, align 8, !noalias !22968
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gr, ptr %i.gv, align 8, !noalias !22968
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gs, ptr %i.gw, align 8, !noalias !22968
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22968
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !22969
  call void @llvm.experimental.noalias.scope.decl(metadata !22970)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22968
  store i64 %i.gk, ptr %i.c, align 8, !noalias !22971
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !22970, !noalias !22968, !noundef !85 ; 4 uses
  %.not.i.i43.i = icmp ugt i64 %i.gk, %i.gy
  br i1 %.not.i.i43.i, label %bb.bd, label %bb.bg, !prof !86

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22971
  store i64 %i.gy, ptr %i.b, align 8, !noalias !22971
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22971
  store ptr %i.c, ptr %i.a, align 8, !noalias !22971
  %.sroa.42.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i44.i, align 8, !noalias !22971
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gz, align 8, !noalias !22971
  %.sroa.46.0..sroa_idx.i.i45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i45.i, align 8, !noalias !22971
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i47.i unwind label %bb.bf, !noalias !22969

.noexc.i47.i:                                     ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ha = load ptr, ptr %i.af, align 8, !alias.scope !22967, !noalias !22931, !nonnull !85, !noundef !85
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !22967, !noalias !22931, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bf:                                            ; preds = %bb.bd
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !22972)
  call void @llvm.experimental.noalias.scope.decl(metadata !22973)
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !22974, !noalias !22968, !noundef !85
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !22974, !noalias !22968, !nonnull !85, !align !91, !noundef !85
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !22975, !nonnull !85, !noundef !85
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !22974, !noalias !22968, !noundef !85
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bh, !noalias !22969, !inline_history !3

bb.bg:                                            ; preds = %bb.bc
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !22970, !noalias !22968, !noundef !85
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22968
  %.sroa.079.0.copyload80.i = load ptr, ptr %i.d, align 8, !noalias !22976
  %.sroa.787.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.787.0.copyload89.i = load ptr, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !22976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22968
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22968
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bh:                                            ; preds = %bb.bf
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !22969
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i: ; preds = %bb.bg, %bb.be
  %.sroa.787.0.i = phi ptr [ %i.gh, %bb.be ], [ %.sroa.787.0.copyload89.i, %bb.bg ]
  %.sroa.684.0.i = phi i64 [ %i.hc, %bb.be ], [ %i.hl, %bb.bg ]
  %.sroa.581.0.i = phi ptr [ %i.ha, %bb.be ], [ %i.ho, %bb.bg ] ; 2 uses
  %.sroa.079.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.be ], [ %.sroa.079.0.copyload80.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !22931
  store ptr %.sroa.581.0.i, ptr %.sroa.19, align 8, !alias.scope !22921
  store ptr %.sroa.787.0.i, ptr %.sroa.30, align 8, !alias.scope !22921
  br label %bb.bj

bb.bi:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bj:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109 = phi ptr [ %.sroa.581.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.684.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.079.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.053.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightDataEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %bb.bp, label %bb.bq

bb.bk:                                            ; preds = %.loopexit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.hr = load i64, ptr %i.aj, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bn, %bb.bo, %bb.bk
  %.sroa.017.0 = phi i64 [ -3, %bb.bk ], [ -2, %bb.bn ], [ %i.hr, %bb.bo ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bk ], [ %.sroa.563.0.copyload, %bb.bn ], [ %.sroa.563.0.copyload, %bb.bo ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bl
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bm

bb.bp:                                            ; preds = %.thread117, %.thread111, %bb.bj
  %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116 = phi ptr [ %i.au, %.thread111 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, %bb.bj ], [ %.sroa.8.0.copyload51.i, %.thread117 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) ]
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %i.al, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hu = load i8, ptr %i.ht, align 8, !range !84, !noundef !85
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bj
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %bb.bp
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) #32
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.hy = load i64, ptr %i.ak, align 8, !range !102, !noundef !85 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  br i1 %i.hz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  br label %bb.bt

bb.by:                                            ; preds = %bb.bm, %bb.bq, %bb.bt, %bb.bi, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23020 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [176 x i8], align 8               ; 6 uses
  %i.q = alloca [176 x i8], align 8               ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [176 x i8], align 8               ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.9.i = alloca [160 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.v = alloca [96 x i8], align 8                ; 4 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 9 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23022)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val30.i = load i64, ptr %i.aa, align 8, !alias.scope !23022, !noundef !85
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val31.i = load i64, ptr %i.af, align 8, !alias.scope !23022, !noundef !85
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !23022, !align !91, !noundef !85 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !alias.scope !23022
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.preheader.i, label %.thread111

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23023)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !23024
  %i.ah = load ptr, ptr %i.z, align 8, !alias.scope !23025, !noundef !85
  %.not.i104.i = icmp eq ptr %i.ah, null
  br i1 %.not.i104.i, label %.loopexit97.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.8.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  br label %bb.b

.thread111:                                       ; preds = %bb.a
  store ptr %i.ag, ptr %.sroa.19, align 8, !alias.scope !23021
  br label %bb.at

bb.b:                                             ; preds = %bb.v, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !23027
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !23028
  %i.al = load i64, ptr %i.p, align 8, !range !97, !noalias !23027, !noundef !85
  %i.am = icmp eq i64 %i.al, -3
  br i1 %i.am, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23027
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !23027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23027
  %i.an = load i64, ptr %i.q, align 8, !noalias !23029 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.an, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.j, %bb.i
  store ptr null, ptr %i.z, align 8, !alias.scope !23030
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(176) %i.q) #32
          to label %common.resume unwind label %bb.k, !noalias !23028

bb.d:                                             ; preds = %bb.c
  %.val6.i.i = load ptr, ptr %i.z, align 8, !alias.scope !23030, !noundef !85 ; 4 uses
  %.val7.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !23030 ; 6 uses
  %i.ao = icmp eq ptr %.val6.i.i, null
  br i1 %i.ao, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.ap = load ptr, ptr %.val7.i.i, align 8, !invariant.load !85, !noalias !23028 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.ap(ptr noundef nonnull %.val6.i.i)
          to label %bb.g unwind label %bb.i, !noalias !23028

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !98, !invariant.load !85, !noalias !23028 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !101, !invariant.load !85, !noalias !23028
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.ar, i64 noundef range(i64 1, 536870913) %i.au) #30, !noalias !23028
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i

bb.i:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !98, !invariant.load !85, !noalias !23028 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !101, !invariant.load !85, !noalias !23028
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.ax, i64 noundef range(i64 1, 536870913) %i.ba) #30, !noalias !23028
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i: ; preds = %bb.h, %bb.g, %bb.d
  store ptr null, ptr %i.z, align 8, !alias.scope !23030
  br label %.loopexit97.i

bb.k:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23028
  unreachable

common.resume:                                    ; preds = %bb.ay, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.fk, %bb.aj ], [ %i.dx, %bb.aa ], [ %i.av, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cf, %bb.p ], [ %i.el, %bb.af ], [ %i.ge, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload49.i = load ptr, ptr %.sroa.8.0..sroa_idx48.i, align 8, !noalias !23029 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx50.i, i64 160, i1 false), !noalias !23029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23027
  switch i64 %i.an, label %bb.t [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bc = load i64, ptr %i.ak, align 8, !alias.scope !23022, !noundef !85 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %bb.am, label %bb.l

.loopexit97.i:                                    ; preds = %bb.v, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread130.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23027
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !23022, !noundef !85 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ao, label %bb.l

bb.l:                                             ; preds = %.loopexit97.i, %.loopexit.i
  %i.bh = phi i64 [ %i.bc, %.loopexit.i ], [ %i.bf, %.loopexit97.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !23031
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.bh), !noalias !23021
  call void @llvm.experimental.noalias.scope.decl(metadata !23032)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !23032, !noalias !23031, !noundef !85 ; 2 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = and i64 %i.bk, 1
  %.not.i32.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i32.i, label %bb.o, label %bb.m

end_hunk_1
begin_hunk_2_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2G_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2G_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !23022
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.ad
  %i.em = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.cs, %bb.ad ]
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !23022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !23031
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.em), !noalias !23021
  call void @llvm.experimental.noalias.scope.decl(metadata !23055)
  %i.en = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !alias.scope !23055, !noalias !23031, !noundef !85 ; 2 uses
  %i.ep = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.eq = and i64 %i.ep, 1
  %.not.i40.i = icmp eq i64 %i.eq, 0
  br i1 %.not.i40.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.er = lshr i64 %i.ep, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23056
  %i.es = load ptr, ptr %i.r, align 8, !alias.scope !23055, !noalias !23031, !nonnull !85, !noundef !85
  %i.et = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !23055, !noalias !23031, !noundef !85
  %i.ev = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !23055, !noalias !23031, !noundef !85
  %i.ex = sub nsw i64 0, %i.er
  %i.ey = getelementptr inbounds i8, ptr %i.es, i64 %i.ex
  %i.ez = add i64 %i.eu, %i.er
  %i.fa = add i64 %i.ew, %i.er                    ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, -1
  call void @llvm.assume(i1 %i.fb)
  store i64 %i.fa, ptr %i.e, align 8, !noalias !23056
  %i.fc = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ey, ptr %i.fc, align 8, !noalias !23056
  %i.fd = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.ez, ptr %i.fd, align 8, !noalias !23056
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23056
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23057
  call void @llvm.experimental.noalias.scope.decl(metadata !23058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23056
  store i64 %i.er, ptr %i.c, align 8, !noalias !23059
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !alias.scope !23058, !noalias !23056, !noundef !85 ; 4 uses
  %.not.i.i41.i = icmp ugt i64 %i.er, %i.ff
  br i1 %.not.i.i41.i, label %bb.ah, label %bb.ak, !prof !86

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23059
  store i64 %i.ff, ptr %i.b, align 8, !noalias !23059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23059
  store ptr %i.c, ptr %i.a, align 8, !noalias !23059
  %.sroa.42.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i42.i, align 8, !noalias !23059
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.fg, align 8, !noalias !23059
  %.sroa.46.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i43.i, align 8, !noalias !23059
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i45.i unwind label %bb.aj, !noalias !23057

.noexc.i45.i:                                     ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.fh = load ptr, ptr %i.r, align 8, !alias.scope !23055, !noalias !23031, !nonnull !85, !noundef !85
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !alias.scope !23055, !noalias !23031, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.aj:                                            ; preds = %bb.ah
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !23060)
  call void @llvm.experimental.noalias.scope.decl(metadata !23061)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !alias.scope !23062, !noalias !23056, !noundef !85
  %i.fn = load ptr, ptr %i.d, align 8, !alias.scope !23062, !noalias !23056, !nonnull !85, !align !91, !noundef !85
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !23063, !nonnull !85, !noundef !85
  %i.fq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !23062, !noalias !23056, !noundef !85
  invoke void %i.fp(ptr noundef %i.fm, ptr noundef %i.fr, i64 noundef %i.ff)
          to label %common.resume unwind label %bb.al, !noalias !23057, !inline_history !3

bb.ak:                                            ; preds = %bb.ag
  %i.fs = sub nuw i64 %i.ff, %i.er
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !23058, !noalias !23056, !noundef !85
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23056
  %.sroa.077.0.copyload78.i = load ptr, ptr %i.d, align 8, !noalias !23064
  %.sroa.785.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.785.0.copyload87.i = load ptr, ptr %.sroa.785.0..sroa_idx86.i, align 8, !noalias !23064
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23056
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23056
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.al:                                            ; preds = %bb.aj
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23057
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i: ; preds = %bb.ak, %bb.ai
  %.sroa.785.0.i = phi ptr [ %i.eo, %bb.ai ], [ %.sroa.785.0.copyload87.i, %bb.ak ]
  %.sroa.682.0.i = phi i64 [ %i.fj, %bb.ai ], [ %i.fs, %bb.ak ]
  %.sroa.579.0.i = phi ptr [ %i.fh, %bb.ai ], [ %i.fv, %bb.ak ] ; 2 uses
  %.sroa.077.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ai ], [ %.sroa.077.0.copyload78.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23031
  store ptr %.sroa.579.0.i, ptr %.sroa.19, align 8, !alias.scope !23021
  store ptr %.sroa.785.0.i, ptr %.sroa.30, align 8, !alias.scope !23021
  br label %bb.an

bb.am:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.bc

bb.an:                                            ; preds = %.loopexit, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109 = phi ptr [ %.sroa.579.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %.loopexit ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.682.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.077.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.051.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.fx = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.fx, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %.loopexit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.fy = load i64, ptr %i.v, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.fy, -2
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.fz = icmp eq i64 %i.fy, -1
  br i1 %i.fz, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ar, %bb.as, %bb.ao
  %.sroa.017.0 = phi i64 [ -3, %bb.ao ], [ -2, %bb.ar ], [ %i.fy, %bb.as ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.ao ], [ %.sroa.563.0.copyload, %bb.ar ], [ %.sroa.563.0.copyload, %bb.as ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bc

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.aq

bb.as:                                            ; preds = %bb.ap
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.aq

bb.at:                                            ; preds = %.thread117, %.thread111, %bb.an
  %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116 = phi ptr [ %i.ag, %.thread111 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, %bb.an ], [ %.sroa.8.0.copyload49.i, %.thread117 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) ]
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %i.x, align 8
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.gb = load i8, ptr %i.ga, align 8, !range !84, !noundef !85
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.an
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.gd, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.az unwind label %bb.ay

bb.aw:                                            ; preds = %bb.at
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bb, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bc

bb.ay:                                            ; preds = %bb.av
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) #32
          to label %common.resume unwind label %bb.bd

bb.az:                                            ; preds = %bb.av
  %i.gf = load i64, ptr %i.w, align 8, !range !102, !noundef !85 ; 2 uses
  %i.gg = icmp eq i64 %i.gf, -1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  br i1 %i.gg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gi, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.gf, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.gi, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  br label %bb.ax

bb.bc:                                            ; preds = %bb.aq, %bb.au, %bb.ax, %bb.am, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bd:                                            ; preds = %bb.ay
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(312) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23124 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [8 x i8], align 8                 ; 3 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 10 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [176 x i8], align 8               ; 6 uses
  %i.q = alloca [176 x i8], align 8               ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [176 x i8], align 8               ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.9.i = alloca [160 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.v = alloca [96 x i8], align 8                ; 4 uses
  %i.w = alloca [96 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 9 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23125)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23126)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 5 uses
  %.val30.i = load i64, ptr %i.aa, align 8, !alias.scope !23126, !noundef !85
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val31.i = load i64, ptr %i.af, align 8, !alias.scope !23126, !noundef !85
  %i.ag = load ptr, ptr %i.ae, align 8, !alias.scope !23126, !align !91, !noundef !85 ; 3 uses
  store ptr null, ptr %i.ae, align 8, !alias.scope !23126
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %.preheader.i, label %.thread111

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !23128
  %i.ah = load i64, ptr %i.z, align 8, !range !97, !alias.scope !23129, !noundef !85
  %.not.i104.i = icmp eq i64 %i.ah, -3
  br i1 %.not.i104.i, label %.loopexit97.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0..sroa_idx48.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.9.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  br label %bb.b

.thread111:                                       ; preds = %bb.a
  store ptr %i.ag, ptr %.sroa.19, align 8, !alias.scope !23125
  br label %bb.ap

bb.b:                                             ; preds = %bb.r, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23130)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !23131
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !23132
  %i.al = load i64, ptr %i.p, align 8, !range !97, !noalias !23131, !noundef !85
  %i.am = icmp eq i64 %i.al, -3
  br i1 %i.am, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23131
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.q, ptr noundef nonnull align 8 dereferenceable(176) %i.p, i64 176, i1 false), !noalias !23131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !23131
  %i.an = load i64, ptr %i.q, align 8, !noalias !23133 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.an, -2
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

.body.i.i:                                        ; preds = %bb.f, %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 -3, ptr %i.z, align 8, !alias.scope !23134, !noalias !23135
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(176) %i.q) #32
          to label %common.resume unwind label %bb.g, !noalias !23132

bb.d:                                             ; preds = %bb.c
  %i.ap = load i64, ptr %i.z, align 8, !range !97, !alias.scope !23136, !noalias !23135, !noundef !85
  switch i64 %i.ap, label %bb.e [
    i64 -3, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i
    i64 -2, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i
    i64 -1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(184) %i.z)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i unwind label %.body.i.i, !noalias !23132

bb.f:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !23137, !noalias !23135, !nonnull !85, !noundef !85
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i unwind label %.body.i.i, !noalias !23132

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.d
  store i64 -3, ptr %i.z, align 8, !alias.scope !23134, !noalias !23135
  br label %.loopexit97.i

bb.g:                                             ; preds = %.body.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23132
  unreachable

common.resume:                                    ; preds = %bb.au, %.body.i.i, %bb.l, %bb.w, %bb.ab, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.ez, %bb.af ], [ %i.dm, %bb.w ], [ %i.ao, %.body.i.i ], [ %i.bu, %bb.l ], [ %i.ea, %bb.ab ], [ %i.ft, %bb.au ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload49.i = load ptr, ptr %.sroa.8.0..sroa_idx48.i, align 8, !noalias !23133 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.9.0..sroa_idx50.i, i64 160, i1 false), !noalias !23133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23131
  switch i64 %i.an, label %bb.p [
    i64 -3, label %.loopexit.i
    i64 -1, label %bb.o
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.ar = load i64, ptr %i.ak, align 8, !alias.scope !23126, !noundef !85 ; 2 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.ai, label %bb.h

.loopexit97.i:                                    ; preds = %bb.r, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread127.i, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !23131
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !23126, !noundef !85 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.ak, label %bb.h

bb.h:                                             ; preds = %.loopexit97.i, %.loopexit.i
  %i.aw = phi i64 [ %i.ar, %.loopexit.i ], [ %i.au, %.loopexit97.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !23138
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.aw), !noalias !23125
  call void @llvm.experimental.noalias.scope.decl(metadata !23139)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !23139, !noalias !23138, !noundef !85 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.ba = and i64 %i.az, 1
  %.not.i32.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i32.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = lshr i64 %i.az, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !23140
  %i.bc = load ptr, ptr %i.u, align 8, !alias.scope !23139, !noalias !23138, !nonnull !85, !noundef !85
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !23139, !noalias !23138, !noundef !85
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !23139, !noalias !23138, !noundef !85
  %i.bh = sub nsw i64 0, %i.bb
  %i.bi = getelementptr inbounds i8, ptr %i.bc, i64 %i.bh
  %i.bj = add i64 %i.be, %i.bb
  %i.bk = add i64 %i.bg, %i.bb                    ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  call void @llvm.assume(i1 %i.bl)
  store i64 %i.bk, ptr %i.o, align 8, !noalias !23140
  %i.bm = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.bi, ptr %i.bm, align 8, !noalias !23140
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bj, ptr %i.bn, align 8, !noalias !23140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !23140
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !23141
  call void @llvm.experimental.noalias.scope.decl(metadata !23142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !23140
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !23126
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.z
  %i.eb = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.ch, %bb.z ]
  store ptr %.sroa.8.0.copyload49.i, ptr %i.ae, align 8, !alias.scope !23126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !23138
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %i.eb), !noalias !23125
  call void @llvm.experimental.noalias.scope.decl(metadata !23162)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !23162, !noalias !23138, !noundef !85 ; 2 uses
  %i.ee = ptrtoint ptr %i.ed to i64               ; 2 uses
  %i.ef = and i64 %i.ee, 1
  %.not.i40.i = icmp eq i64 %i.ef, 0
  br i1 %.not.i40.i, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.eg = lshr i64 %i.ee, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23163
  %i.eh = load ptr, ptr %i.r, align 8, !alias.scope !23162, !noalias !23138, !nonnull !85, !noundef !85
  %i.ei = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !23162, !noalias !23138, !noundef !85
  %i.ek = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.el = load i64, ptr %i.ek, align 8, !alias.scope !23162, !noalias !23138, !noundef !85
  %i.em = sub nsw i64 0, %i.eg
  %i.en = getelementptr inbounds i8, ptr %i.eh, i64 %i.em
  %i.eo = add i64 %i.ej, %i.eg
  %i.ep = add i64 %i.el, %i.eg                    ; 2 uses
  %i.eq = icmp sgt i64 %i.ep, -1
  call void @llvm.assume(i1 %i.eq)
  store i64 %i.ep, ptr %i.e, align 8, !noalias !23163
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.en, ptr %i.er, align 8, !noalias !23163
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.eo, ptr %i.es, align 8, !noalias !23163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23163
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23164
  call void @llvm.experimental.noalias.scope.decl(metadata !23165)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23163
  store i64 %i.eg, ptr %i.c, align 8, !noalias !23166
  %i.et = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !alias.scope !23165, !noalias !23163, !noundef !85 ; 4 uses
  %.not.i.i41.i = icmp ugt i64 %i.eg, %i.eu
  br i1 %.not.i.i41.i, label %bb.ad, label %bb.ag, !prof !86

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23166
  store i64 %i.eu, ptr %i.b, align 8, !noalias !23166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23166
  store ptr %i.c, ptr %i.a, align 8, !noalias !23166
  %.sroa.42.0..sroa_idx.i.i42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i42.i, align 8, !noalias !23166
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ev, align 8, !noalias !23166
  %.sroa.46.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i43.i, align 8, !noalias !23166
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i45.i unwind label %bb.af, !noalias !23164

.noexc.i45.i:                                     ; preds = %bb.ad
  unreachable

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ew = load ptr, ptr %i.r, align 8, !alias.scope !23162, !noalias !23138, !nonnull !85, !noundef !85
  %i.ex = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !23162, !noalias !23138, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.af:                                            ; preds = %bb.ad
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !23167)
  call void @llvm.experimental.noalias.scope.decl(metadata !23168)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8, !alias.scope !23169, !noalias !23163, !noundef !85
  %i.fc = load ptr, ptr %i.d, align 8, !alias.scope !23169, !noalias !23163, !nonnull !85, !align !91, !noundef !85
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !23170, !nonnull !85, !noundef !85
  %i.ff = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !23169, !noalias !23163, !noundef !85
  invoke void %i.fe(ptr noundef %i.fb, ptr noundef %i.fg, i64 noundef %i.eu)
          to label %common.resume unwind label %bb.ah, !noalias !23164, !inline_history !3

bb.ag:                                            ; preds = %bb.ac
  %i.fh = sub nuw i64 %i.eu, %i.eg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !23165, !noalias !23163, !noundef !85
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23163
  %.sroa.077.0.copyload78.i = load ptr, ptr %i.d, align 8, !noalias !23171
  %.sroa.785.0..sroa_idx86.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.785.0.copyload87.i = load ptr, ptr %.sroa.785.0..sroa_idx86.i, align 8, !noalias !23171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23163
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i

bb.ah:                                            ; preds = %bb.af
  %i.fl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23164
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i: ; preds = %bb.ag, %bb.ae
  %.sroa.785.0.i = phi ptr [ %i.ed, %bb.ae ], [ %.sroa.785.0.copyload87.i, %bb.ag ]
  %.sroa.682.0.i = phi i64 [ %i.ey, %bb.ae ], [ %i.fh, %bb.ag ]
  %.sroa.579.0.i = phi ptr [ %i.ew, %bb.ae ], [ %i.fk, %bb.ag ] ; 2 uses
  %.sroa.077.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.ae ], [ %.sroa.077.0.copyload78.i, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !23138
  store ptr %.sroa.579.0.i, ptr %.sroa.19, align 8, !alias.scope !23125
  store ptr %.sroa.785.0.i, ptr %.sroa.30, align 8, !alias.scope !23125
  br label %bb.aj

bb.ai:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.ay

bb.aj:                                            ; preds = %.loopexit, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109 = phi ptr [ %.sroa.579.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %.loopexit ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.682.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %.loopexit ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.077.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit46.i ], [ %.sroa.051.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.fm = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.fm, label %bb.ap, label %bb.aq

bb.ak:                                            ; preds = %.loopexit97.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.fn = load i64, ptr %i.v, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.fn, -2
  br i1 %.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.fo = icmp eq i64 %i.fn, -1
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.am:                                            ; preds = %bb.an, %bb.ao, %bb.ak
  %.sroa.017.0 = phi i64 [ -3, %bb.ak ], [ -2, %bb.an ], [ %i.fn, %bb.ao ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.ak ], [ %.sroa.563.0.copyload, %bb.an ], [ %.sroa.563.0.copyload, %bb.ao ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.ay

bb.an:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.am

bb.ap:                                            ; preds = %.thread117, %.thread111, %bb.aj
  %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116 = phi ptr [ %i.ag, %.thread111 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, %bb.aj ], [ %.sroa.8.0.copyload49.i, %.thread117 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) ]
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %i.x, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.fq = load i8, ptr %i.fp, align 8, !range !84, !noundef !85
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.aj
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.ay

bb.ar:                                            ; preds = %bb.ap
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 305
  store i8 1, ptr %i.fs, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.av unwind label %bb.au

bb.as:                                            ; preds = %bb.ap
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.ax, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ay

bb.au:                                            ; preds = %bb.ar
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) #32
          to label %common.resume unwind label %bb.az

bb.av:                                            ; preds = %bb.ar
  %i.fu = load i64, ptr %i.w, align 8, !range !102, !noundef !85 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8            ; 2 uses
  br i1 %i.fv, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fx, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.fu, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fx, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  br label %bb.at

bb.ay:                                            ; preds = %bb.am, %bb.aq, %bb.at, %bb.ai, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.az:                                            ; preds = %bb.au
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(176) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23246 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 11 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ai = alloca [96 x i8], align 8               ; 4 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 160
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23247)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 5 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !23247, !noundef !85
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val30.i = load i64, ptr %i.as, align 8, !alias.scope !23247, !noundef !85
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !23247, !align !91, !noundef !85 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !alias.scope !23247
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %.thread105

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.10.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.965.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.762.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.965.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.11.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.ar, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23248)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !23249
  %i.ay = load i64, ptr %i.am, align 8, !range !94, !alias.scope !23250, !noundef !85
  %.not.i.i = icmp eq i64 %i.ay, 2
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !23249
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !23251
  %i.az = load i64, ptr %i.ad, align 8, !range !94, !noalias !23249, !noundef !85
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !23249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23249
  %i.bb = load i64, ptr %i.ae, align 8, !range !92, !noalias !23249, !noundef !85
  %.not4.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.l

.body.i.i:                                        ; preds = %bb.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.am, align 8, !alias.scope !23250, !noalias !23252
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.ae) #32
          to label %common.resume unwind label %bb.j, !noalias !23251

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !23253)
  %i.bd = load i64, ptr %i.am, align 8, !range !94, !alias.scope !23254, !noalias !23252, !noundef !85 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 2
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !23255), !noalias !23252
  call void @llvm.experimental.noalias.scope.decl(metadata !23256), !noalias !23252
  call void @llvm.experimental.noalias.scope.decl(metadata !23257), !noalias !23252
  call void @llvm.experimental.noalias.scope.decl(metadata !23258), !noalias !23252
  call void @llvm.experimental.noalias.scope.decl(metadata !23259), !noalias !23252
  %i.bf = icmp eq i64 %i.bd, 0
  br i1 %i.bf, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !23260), !noalias !23252
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !23261, !noalias !23252, !noundef !85 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !23262), !noalias !23252
  call void @llvm.experimental.noalias.scope.decl(metadata !23263), !noalias !23252
  call void @llvm.experimental.noalias.scope.decl(metadata !23264), !noalias !23252
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !23265, !noalias !23252, !noundef !85
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !23266, !nonnull !85, !noundef !85
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !23265, !noalias !23252, !noundef !85
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !23265, !noalias !23252, !noundef !85
  invoke void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %.body.i.i, !noalias !23251, !inline_history !23202

bb.i:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !alias.scope !23261, !noalias !23252, !nonnull !85, !noundef !85
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i unwind label %.body.i.i, !noalias !23251

bb.j:                                             ; preds = %.body.i.i
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23251
  unreachable

common.resume:                                    ; preds = %bb.bs, %.body.i.i, %bb.q, %bb.ab, %bb.ag, %bb.ak, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.bb, %bb.bf
  %common.resume.op = phi { ptr, i32 } [ %i.he, %bb.bf ], [ %i.fr, %bb.aw ], [ %i.bc, %.body.i.i ], [ %i.cv, %bb.q ], [ %i.dy, %bb.ab ], [ %i.gf, %bb.bb ], [ %lpad.loopexit.split-lp348, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ej, %bb.ak ], [ %i.ee, %bb.ag ], [ %i.hy, %bb.bs ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  store i64 2, ptr %i.am, align 8, !alias.scope !23250, !noalias !23252
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23249
  %i.bs = load i64, ptr %i.av, align 8, !alias.scope !23247, !noundef !85 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1P_NtNtB8_6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.m

bb.l:                                             ; preds = %bb.d
  %.sroa.7.0.copyload113.i = load ptr, ptr %.sroa.7.0..sroa_idx112.i, align 8, !noalias !23267 ; 4 uses
  %.sroa.9.0.copyload115.i = load ptr, ptr %.sroa.9.0..sroa_idx114.i, align 8, !noalias !23267 ; 7 uses
  %.sroa.10.sroa.0.0.copyload117.i = load i64, ptr %.sroa.10.0..sroa_idx116.i, align 8, !noalias !23267 ; 3 uses
  %.sroa.10.sroa.5.0.copyload119.i = load ptr, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i, align 8, !noalias !23267 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23249
  %i.bu = icmp eq ptr %.sroa.7.0.copyload113.i, null
  br i1 %i.bu, label %bb.t, label %bb.u

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i: ; preds = %bb.b, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23249
  %i.bv = load i64, ptr %i.av, align 8, !alias.scope !23247, !noundef !85 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.bj, label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, %bb.k
  %i.bx = phi i64 [ %i.bs, %bb.k ], [ %i.bv, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !23268
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.bx), !noalias !23269
  call void @llvm.experimental.noalias.scope.decl(metadata !23270)
end_hunk_3
begin_hunk_4_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.gf = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.9.0.copyload115.i, ptr %i.ar, align 8, !alias.scope !23247
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.az
  %i.gg = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.di, %bb.az ]
  store ptr %.sroa.9.0.copyload115.i, ptr %i.ar, align 8, !alias.scope !23247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !23268
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.gg), !noalias !23269
  call void @llvm.experimental.noalias.scope.decl(metadata !23302)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !23302, !noalias !23268, !noundef !85 ; 2 uses
  %i.gj = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gk = and i64 %i.gj, 1
  %.not.i41.i = icmp eq i64 %i.gk, 0
  br i1 %.not.i41.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gl = lshr i64 %i.gj, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23303
  %i.gm = load ptr, ptr %i.af, align 8, !alias.scope !23302, !noalias !23268, !nonnull !85, !noundef !85
  %i.gn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !23302, !noalias !23268, !noundef !85
  %i.gp = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !23302, !noalias !23268, !noundef !85
  %i.gr = sub nsw i64 0, %i.gl
  %i.gs = getelementptr inbounds i8, ptr %i.gm, i64 %i.gr
  %i.gt = add i64 %i.go, %i.gl
  %i.gu = add i64 %i.gq, %i.gl                    ; 2 uses
  %i.gv = icmp sgt i64 %i.gu, -1
  call void @llvm.assume(i1 %i.gv)
  store i64 %i.gu, ptr %i.e, align 8, !noalias !23303
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gs, ptr %i.gw, align 8, !noalias !23303
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gt, ptr %i.gx, align 8, !noalias !23303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23303
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23304
  call void @llvm.experimental.noalias.scope.decl(metadata !23305)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23303
  store i64 %i.gl, ptr %i.c, align 8, !noalias !23306
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gz = load i64, ptr %i.gy, align 8, !alias.scope !23305, !noalias !23303, !noundef !85 ; 4 uses
  %.not.i.i42.i = icmp ugt i64 %i.gl, %i.gz
  br i1 %.not.i.i42.i, label %bb.bd, label %bb.bg, !prof !86

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23306
  store i64 %i.gz, ptr %i.b, align 8, !noalias !23306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23306
  store ptr %i.c, ptr %i.a, align 8, !noalias !23306
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !23306
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.ha, align 8, !noalias !23306
  %.sroa.46.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i44.i, align 8, !noalias !23306
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i46.i unwind label %bb.bf, !noalias !23304

.noexc.i46.i:                                     ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.hb = load ptr, ptr %i.af, align 8, !alias.scope !23302, !noalias !23268, !nonnull !85, !noundef !85
  %i.hc = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !23302, !noalias !23268, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bf:                                            ; preds = %bb.bd
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !23307)
  call void @llvm.experimental.noalias.scope.decl(metadata !23308)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !23309, !noalias !23303, !noundef !85
  %i.hh = load ptr, ptr %i.d, align 8, !alias.scope !23309, !noalias !23303, !nonnull !85, !align !91, !noundef !85
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !noalias !23310, !nonnull !85, !noundef !85
  %i.hk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !alias.scope !23309, !noalias !23303, !noundef !85
  invoke void %i.hj(ptr noundef %i.hg, ptr noundef %i.hl, i64 noundef %i.gz)
          to label %common.resume unwind label %bb.bh, !noalias !23304, !inline_history !3

bb.bg:                                            ; preds = %bb.bc
  %i.hm = sub nuw i64 %i.gz, %i.gl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !23305, !noalias !23303, !noundef !85
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23303
  %.sroa.085.0.copyload86.i = load ptr, ptr %i.d, align 8, !noalias !23311
  %.sroa.793.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.793.0.copyload95.i = load ptr, ptr %.sroa.793.0..sroa_idx94.i, align 8, !noalias !23311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23303
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23303
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bh:                                            ; preds = %bb.bf
  %i.hq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23304
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.bg, %bb.be
  %.sroa.793.0.i = phi ptr [ %i.gi, %bb.be ], [ %.sroa.793.0.copyload95.i, %bb.bg ]
  %.sroa.690.0.i = phi i64 [ %i.hd, %bb.be ], [ %i.hm, %bb.bg ]
  %.sroa.587.0.i = phi ptr [ %i.hb, %bb.be ], [ %i.hp, %bb.bg ]
  %.sroa.085.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.be ], [ %.sroa.085.0.copyload86.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !23268
  br label %bb.bi

_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1P_NtNtB8_6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.k
  store i64 3, ptr %0, align 8
  br label %bb.bw

bb.bi:                                            ; preds = %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %.sroa.30.0.ph.ph = phi ptr [ %.sroa.778.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.754.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.793.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.675.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.690.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.19.0.ph.ph = phi ptr [ %.sroa.572.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.587.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.070.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.048.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.085.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %i.hr = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hr, label %.thread105, label %bb.bo

bb.bj:                                            ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.hs = load i64, ptr %i.ai, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.hs, -2
  br i1 %.not, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.ht = icmp eq i64 %i.hs, -1
  br i1 %i.ht, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %bb.bm, %bb.bn, %bb.bj
  %.sroa.017.0 = phi i64 [ -3, %bb.bj ], [ -2, %bb.bm ], [ %i.hs, %bb.bn ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bj ], [ %.sroa.563.0.copyload, %bb.bm ], [ %.sroa.563.0.copyload, %bb.bn ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.bw

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bk
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bl

.thread105:                                       ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.al, %bb.ac, %bb.t, %bb.a, %bb.bi
  %.sroa.19.0.ph.ph110 = phi ptr [ %.sroa.19.0.ph.ph, %bb.bi ], [ %i.ek, %bb.al ], [ %i.ef, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.dz, %bb.ac ], [ %i.at, %bb.a ], [ %.sroa.9.0.copyload115.i, %bb.t ], [ %i.es, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0.ph.ph110) ]
  store ptr %.sroa.19.0.ph.ph110, ptr %i.ak, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.hv = load i8, ptr %i.hu, align 8, !range !84, !noundef !85
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %bb.bi
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0.ph.ph, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0.ph.ph, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.bw

bb.bp:                                            ; preds = %.thread105
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 169
  store i8 1, ptr %i.hx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.bt unwind label %bb.bs

bb.bq:                                            ; preds = %.thread105
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0.ph.ph110, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.br

bb.br:                                            ; preds = %bb.bv, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bp
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110) #32
          to label %common.resume unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bp
  %i.hz = load i64, ptr %i.aj, align 8, !range !102, !noundef !85 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, -1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  br i1 %i.ia, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.hz, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  br label %bb.br

bb.bw:                                            ; preds = %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen12SchemaResultEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1P_NtNtB8_6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.bu, %bb.bl, %bb.bo, %bb.br
  ret void

bb.bx:                                            ; preds = %bb.bs
  %i.id = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2N_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2N_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23363 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [40 x i8], align 8                ; 8 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [40 x i8], align 8                ; 8 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 12 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ai = alloca [96 x i8], align 8               ; 4 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23364)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !23364, !noundef !85
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val30.i = load i64, ptr %i.as, align 8, !alias.scope !23364, !noundef !85
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !23364, !align !91, !noundef !85 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !alias.scope !23364
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %.thread105

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.10.0..sroa_idx120.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx122.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx124.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.965.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.762.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.965.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.11.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.12.0..sroa_idx70.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23365)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !23366
  %i.ay = load ptr, ptr %i.am, align 8, !alias.scope !23367, !noundef !85
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread108.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !23366
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !23368
  %i.az = load i64, ptr %i.ad, align 8, !range !94, !noalias !23366, !noundef !85
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false), !noalias !23366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23366
  %i.bb = load i64, ptr %i.ae, align 8, !range !92, !noalias !23366, !noundef !85
  %.not4.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.n

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.am, align 8, !alias.scope !23367
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #32
          to label %common.resume unwind label %bb.l, !noalias !23368

bb.e:                                             ; preds = %bb.d
  %.val6.i.i = load ptr, ptr %i.am, align 8, !alias.scope !23367, !noundef !85 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val7.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !23367 ; 6 uses
  %i.bd = icmp eq ptr %.val6.i.i, null
  br i1 %i.bd, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.be = load ptr, ptr %.val7.i.i, align 8, !invariant.load !85, !noalias !23368 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.be(ptr noundef nonnull %.val6.i.i)
          to label %bb.h unwind label %bb.j, !noalias !23368

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !98, !invariant.load !85, !noalias !23368 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !101, !invariant.load !85, !noalias !23368
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #30, !noalias !23368
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.j:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !98, !invariant.load !85, !noalias !23368 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !101, !invariant.load !85, !noalias !23368
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #30, !noalias !23368
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

bb.l:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23368
  unreachable

common.resume:                                    ; preds = %bb.bu, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.s, %bb.ad, %bb.ai, %bb.am, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ay, %bb.bd, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.hd, %bb.bh ], [ %i.fq, %bb.ay ], [ %i.bk, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cu, %bb.s ], [ %i.dx, %bb.ad ], [ %i.ge, %bb.bd ], [ %lpad.loopexit.split-lp349, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ei, %bb.am ], [ %i.ed, %bb.ai ], [ %i.hx, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.i, %bb.h, %bb.e
  store ptr null, ptr %i.am, align 8, !alias.scope !23367
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread108.i

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23366
  %i.br = load i64, ptr %i.av, align 8, !alias.scope !23364, !noundef !85 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2O_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2O_6marker4SendEL_EEEB3O_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.o

bb.n:                                             ; preds = %bb.d
  %.sroa.7.0.copyload117.i = load ptr, ptr %.sroa.7.0..sroa_idx116.i, align 8, !noalias !23369 ; 4 uses
  %.sroa.9.0.copyload119.i = load ptr, ptr %.sroa.9.0..sroa_idx118.i, align 8, !noalias !23369 ; 7 uses
  %.sroa.10.sroa.0.0.copyload121.i = load i64, ptr %.sroa.10.0..sroa_idx120.i, align 8, !noalias !23369 ; 3 uses
  %.sroa.10.sroa.5.0.copyload123.i = load ptr, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx122.i, align 8, !noalias !23369 ; 3 uses
  %.sroa.10.sroa.6.0.copyload125.i = load i64, ptr %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx124.i, align 8, !noalias !23369 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23366
  %i.bt = icmp eq ptr %.sroa.7.0.copyload117.i, null
  br i1 %i.bt, label %bb.v, label %bb.w

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread108.i: ; preds = %bb.b, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23366
  %i.bu = load i64, ptr %i.av, align 8, !alias.scope !23364, !noundef !85 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.bl, label %bb.o

bb.o:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread108.i, %bb.m
  %i.bw = phi i64 [ %i.br, %bb.m ], [ %i.bu, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread108.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !23370
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.bw), !noalias !23371
  call void @llvm.experimental.noalias.scope.decl(metadata !23372)
end_hunk_4
begin_hunk_5_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2N_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2N_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.9.0.copyload119.i, ptr %i.ar, align 8, !alias.scope !23364
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.bb
  %i.gf = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.dh, %bb.bb ]
  store ptr %.sroa.9.0.copyload119.i, ptr %i.ar, align 8, !alias.scope !23364
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !23370
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.gf), !noalias !23371
  call void @llvm.experimental.noalias.scope.decl(metadata !23404)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !23404, !noalias !23370, !noundef !85 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i41.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i41.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gk = lshr i64 %i.gi, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23405
  %i.gl = load ptr, ptr %i.af, align 8, !alias.scope !23404, !noalias !23370, !nonnull !85, !noundef !85
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !23404, !noalias !23370, !noundef !85
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !23404, !noalias !23370, !noundef !85
  %i.gq = sub nsw i64 0, %i.gk
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gq
  %i.gs = add i64 %i.gn, %i.gk
  %i.gt = add i64 %i.gp, %i.gk                    ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  store i64 %i.gt, ptr %i.e, align 8, !noalias !23405
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gr, ptr %i.gv, align 8, !noalias !23405
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gs, ptr %i.gw, align 8, !noalias !23405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23405
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23406
  call void @llvm.experimental.noalias.scope.decl(metadata !23407)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23405
  store i64 %i.gk, ptr %i.c, align 8, !noalias !23408
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !23407, !noalias !23405, !noundef !85 ; 4 uses
  %.not.i.i42.i = icmp ugt i64 %i.gk, %i.gy
  br i1 %.not.i.i42.i, label %bb.bf, label %bb.bi, !prof !86

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23408
  store i64 %i.gy, ptr %i.b, align 8, !noalias !23408
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23408
  store ptr %i.c, ptr %i.a, align 8, !noalias !23408
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !23408
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gz, align 8, !noalias !23408
  %.sroa.46.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i44.i, align 8, !noalias !23408
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i46.i unwind label %bb.bh, !noalias !23406

.noexc.i46.i:                                     ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ha = load ptr, ptr %i.af, align 8, !alias.scope !23404, !noalias !23370, !nonnull !85, !noundef !85
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !23404, !noalias !23370, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bh:                                            ; preds = %bb.bf
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !23409)
  call void @llvm.experimental.noalias.scope.decl(metadata !23410)
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !23411, !noalias !23405, !noundef !85
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !23411, !noalias !23405, !nonnull !85, !align !91, !noundef !85
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !23412, !nonnull !85, !noundef !85
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !23411, !noalias !23405, !noundef !85
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bj, !noalias !23406, !inline_history !3

bb.bi:                                            ; preds = %bb.be
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !23407, !noalias !23405, !noundef !85
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23405
  %.sroa.087.0.copyload88.i = load ptr, ptr %i.d, align 8, !noalias !23413
  %.sroa.795.0..sroa_idx96.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.795.0.copyload97.i = load ptr, ptr %.sroa.795.0..sroa_idx96.i, align 8, !noalias !23413
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23405
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bj:                                            ; preds = %bb.bh
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23406
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.bi, %bb.bg
  %.sroa.795.0.i = phi ptr [ %i.gh, %bb.bg ], [ %.sroa.795.0.copyload97.i, %bb.bi ]
  %.sroa.692.0.i = phi i64 [ %i.hc, %bb.bg ], [ %i.hl, %bb.bi ]
  %.sroa.589.0.i = phi ptr [ %i.ha, %bb.bg ], [ %i.ho, %bb.bi ]
  %.sroa.087.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bg ], [ %.sroa.087.0.copyload88.i, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !23370
  br label %bb.bk

_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2O_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2O_6marker4SendEL_EEEB3O_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.m
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bk:                                            ; preds = %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %.sroa.30.0.ph.ph = phi ptr [ %.sroa.780.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.754.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.795.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.677.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.692.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.19.0.ph.ph = phi ptr [ %.sroa.574.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.589.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.072.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.048.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.087.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %.thread105, label %bb.bq

bb.bl:                                            ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread108.i
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.hr = load i64, ptr %i.ai, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.hr, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

.thread105:                                       ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.an, %bb.ae, %bb.v, %bb.a, %bb.bk
  %.sroa.19.0.ph.ph110 = phi ptr [ %.sroa.19.0.ph.ph, %bb.bk ], [ %i.ej, %bb.an ], [ %i.ee, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.dy, %bb.ae ], [ %i.at, %bb.a ], [ %.sroa.9.0.copyload119.i, %bb.v ], [ %i.er, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0.ph.ph110) ]
  store ptr %.sroa.19.0.ph.ph110, ptr %i.ak, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hu = load i8, ptr %i.ht, align 8, !range !84, !noundef !85
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bk
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0.ph.ph, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0.ph.ph, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %.thread105
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %.thread105
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0.ph.ph110, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110) #32
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.hy = load i64, ptr %i.aj, align 8, !range !102, !noundef !85 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  br i1 %i.hz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  br label %bb.bt

bb.by:                                            ; preds = %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen17HandshakeResponseEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2O_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2O_6marker4SendEL_EEEB3O_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.bw, %bb.bn, %bb.bq, %bb.bt
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2B_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2B_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23465 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 11 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ai = alloca [96 x i8], align 8               ; 4 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23466)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !23466, !noundef !85
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val30.i = load i64, ptr %i.as, align 8, !alias.scope !23466, !noundef !85
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !23466, !align !91, !noundef !85 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !alias.scope !23466
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %.thread105

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.10.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.965.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.762.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.965.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.11.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23467)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !23468
  %i.ay = load ptr, ptr %i.am, align 8, !alias.scope !23469, !noundef !85
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !23468
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !23470
  %i.az = load i64, ptr %i.ad, align 8, !range !94, !noalias !23468, !noundef !85
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !23468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23468
  %i.bb = load i64, ptr %i.ae, align 8, !range !92, !noalias !23468, !noundef !85
  %.not4.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.n

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.am, align 8, !alias.scope !23469
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.ae) #32
          to label %common.resume unwind label %bb.l, !noalias !23470

bb.e:                                             ; preds = %bb.d
  %.val6.i.i = load ptr, ptr %i.am, align 8, !alias.scope !23469, !noundef !85 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val7.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !23469 ; 6 uses
  %i.bd = icmp eq ptr %.val6.i.i, null
  br i1 %i.bd, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.be = load ptr, ptr %.val7.i.i, align 8, !invariant.load !85, !noalias !23470 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.be(ptr noundef nonnull %.val6.i.i)
          to label %bb.h unwind label %bb.j, !noalias !23470

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !98, !invariant.load !85, !noalias !23470 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !101, !invariant.load !85, !noalias !23470
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #30, !noalias !23470
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.j:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !98, !invariant.load !85, !noalias !23470 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !101, !invariant.load !85, !noalias !23470
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #30, !noalias !23470
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

bb.l:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23470
  unreachable

common.resume:                                    ; preds = %bb.bu, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.s, %bb.ad, %bb.ai, %bb.am, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ay, %bb.bd, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.hd, %bb.bh ], [ %i.fq, %bb.ay ], [ %i.bk, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cu, %bb.s ], [ %i.dx, %bb.ad ], [ %i.ge, %bb.bd ], [ %lpad.loopexit.split-lp349, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ei, %bb.am ], [ %i.ed, %bb.ai ], [ %i.hx, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.i, %bb.h, %bb.e
  store ptr null, ptr %i.am, align 8, !alias.scope !23469
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23468
  %i.br = load i64, ptr %i.av, align 8, !alias.scope !23466, !noundef !85 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2C_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2C_6marker4SendEL_EEEB3C_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.o

bb.n:                                             ; preds = %bb.d
  %.sroa.7.0.copyload113.i = load ptr, ptr %.sroa.7.0..sroa_idx112.i, align 8, !noalias !23471 ; 4 uses
  %.sroa.9.0.copyload115.i = load ptr, ptr %.sroa.9.0..sroa_idx114.i, align 8, !noalias !23471 ; 7 uses
  %.sroa.10.sroa.0.0.copyload117.i = load i64, ptr %.sroa.10.0..sroa_idx116.i, align 8, !noalias !23471 ; 3 uses
  %.sroa.10.sroa.5.0.copyload119.i = load ptr, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i, align 8, !noalias !23471 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23468
  %i.bt = icmp eq ptr %.sroa.7.0.copyload113.i, null
  br i1 %i.bt, label %bb.v, label %bb.w

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i: ; preds = %bb.b, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23468
  %i.bu = load i64, ptr %i.av, align 8, !alias.scope !23466, !noundef !85 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.bl, label %bb.o

bb.o:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, %bb.m
  %i.bw = phi i64 [ %i.br, %bb.m ], [ %i.bu, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !23472
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.bw), !noalias !23473
  call void @llvm.experimental.noalias.scope.decl(metadata !23474)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !23474, !noalias !23472, !noundef !85 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ca = and i64 %i.bz, 1
end_hunk_5
begin_hunk_6_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2B_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2B_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.9.0.copyload115.i, ptr %i.ar, align 8, !alias.scope !23466
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.bb
  %i.gf = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.dh, %bb.bb ]
  store ptr %.sroa.9.0.copyload115.i, ptr %i.ar, align 8, !alias.scope !23466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !23472
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.gf), !noalias !23473
  call void @llvm.experimental.noalias.scope.decl(metadata !23506)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !23506, !noalias !23472, !noundef !85 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i41.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i41.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gk = lshr i64 %i.gi, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23507
  %i.gl = load ptr, ptr %i.af, align 8, !alias.scope !23506, !noalias !23472, !nonnull !85, !noundef !85
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !23506, !noalias !23472, !noundef !85
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !23506, !noalias !23472, !noundef !85
  %i.gq = sub nsw i64 0, %i.gk
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gq
  %i.gs = add i64 %i.gn, %i.gk
  %i.gt = add i64 %i.gp, %i.gk                    ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  store i64 %i.gt, ptr %i.e, align 8, !noalias !23507
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gr, ptr %i.gv, align 8, !noalias !23507
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gs, ptr %i.gw, align 8, !noalias !23507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23507
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23508
  call void @llvm.experimental.noalias.scope.decl(metadata !23509)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23507
  store i64 %i.gk, ptr %i.c, align 8, !noalias !23510
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !23509, !noalias !23507, !noundef !85 ; 4 uses
  %.not.i.i42.i = icmp ugt i64 %i.gk, %i.gy
  br i1 %.not.i.i42.i, label %bb.bf, label %bb.bi, !prof !86

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23510
  store i64 %i.gy, ptr %i.b, align 8, !noalias !23510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23510
  store ptr %i.c, ptr %i.a, align 8, !noalias !23510
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !23510
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gz, align 8, !noalias !23510
  %.sroa.46.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i44.i, align 8, !noalias !23510
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i46.i unwind label %bb.bh, !noalias !23508

.noexc.i46.i:                                     ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ha = load ptr, ptr %i.af, align 8, !alias.scope !23506, !noalias !23472, !nonnull !85, !noundef !85
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !23506, !noalias !23472, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bh:                                            ; preds = %bb.bf
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !23511)
  call void @llvm.experimental.noalias.scope.decl(metadata !23512)
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !23513, !noalias !23507, !noundef !85
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !23513, !noalias !23507, !nonnull !85, !align !91, !noundef !85
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !23514, !nonnull !85, !noundef !85
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !23513, !noalias !23507, !noundef !85
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bj, !noalias !23508, !inline_history !3

bb.bi:                                            ; preds = %bb.be
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !23509, !noalias !23507, !noundef !85
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23507
  %.sroa.085.0.copyload86.i = load ptr, ptr %i.d, align 8, !noalias !23515
  %.sroa.793.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.793.0.copyload95.i = load ptr, ptr %.sroa.793.0..sroa_idx94.i, align 8, !noalias !23515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23507
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23507
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bj:                                            ; preds = %bb.bh
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23508
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.bi, %bb.bg
  %.sroa.793.0.i = phi ptr [ %i.gh, %bb.bg ], [ %.sroa.793.0.copyload95.i, %bb.bi ]
  %.sroa.690.0.i = phi i64 [ %i.hc, %bb.bg ], [ %i.hl, %bb.bi ]
  %.sroa.587.0.i = phi ptr [ %i.ha, %bb.bg ], [ %i.ho, %bb.bi ]
  %.sroa.085.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bg ], [ %.sroa.085.0.copyload86.i, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !23472
  br label %bb.bk

_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2C_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2C_6marker4SendEL_EEEB3C_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.m
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bk:                                            ; preds = %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %.sroa.30.0.ph.ph = phi ptr [ %.sroa.778.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.754.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.793.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.675.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.690.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.19.0.ph.ph = phi ptr [ %.sroa.572.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.587.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.070.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.048.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.085.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %.thread105, label %bb.bq

bb.bl:                                            ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.hr = load i64, ptr %i.ai, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.hr, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

.thread105:                                       ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.an, %bb.ae, %bb.v, %bb.a, %bb.bk
  %.sroa.19.0.ph.ph110 = phi ptr [ %.sroa.19.0.ph.ph, %bb.bk ], [ %i.ej, %bb.an ], [ %i.ee, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.dy, %bb.ae ], [ %i.at, %bb.a ], [ %.sroa.9.0.copyload115.i, %bb.v ], [ %i.er, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0.ph.ph110) ]
  store ptr %.sroa.19.0.ph.ph110, ptr %i.ak, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hu = load i8, ptr %i.ht, align 8, !range !84, !noundef !85
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bk
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0.ph.ph, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0.ph.ph, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %.thread105
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %.thread105
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0.ph.ph110, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110) #32
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.hy = load i64, ptr %i.aj, align 8, !range !102, !noundef !85 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  br i1 %i.hz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  br label %bb.bt

bb.by:                                            ; preds = %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen6ResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2C_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2C_6marker4SendEL_EEEB3C_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.bw, %bb.bn, %bb.bq, %bb.bt
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(416) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23588 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [280 x i8], align 8               ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [280 x i8], align 8               ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [280 x i8], align 8              ; 6 uses
  %i.ae = alloca [280 x i8], align 8              ; 10 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [280 x i8], align 8              ; 9 uses
  %i.ai = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.9.i = alloca [264 x i8], align 8         ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.aj = alloca [96 x i8], align 8               ; 4 uses
  %i.ak = alloca [96 x i8], align 8               ; 7 uses
  %i.al = alloca [8 x i8], align 8                ; 5 uses
  %.sroa.19 = alloca ptr, align 8                 ; 12 uses
  %.sroa.30 = alloca ptr, align 8                 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 400
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23590)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 5 uses
  %.val30.i = load i64, ptr %i.ao, align 8, !alias.scope !23590, !noundef !85
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 376
  %.val31.i = load i64, ptr %i.at, align 8, !alias.scope !23590, !noundef !85
  %i.au = load ptr, ptr %i.as, align 8, !alias.scope !23590, !align !91, !noundef !85 ; 3 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !23590
  %.not.i = icmp eq ptr %i.au, null
  br i1 %.not.i, label %.preheader.i, label %.thread111

.preheader.i:                                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !23592
  %i.av = load i64, ptr %i.an, align 8, !range !134, !alias.scope !23593, !noundef !85
  %.not.i131.i = icmp eq i64 %i.av, -2
  br i1 %.not.i131.i, label %.loopexit102.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %.sroa.8.0..sroa_idx50.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx52.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  br label %bb.b

.thread111:                                       ; preds = %bb.a
  store ptr %i.au, ptr %.sroa.19, align 8, !alias.scope !23589
  br label %bb.bp

bb.b:                                             ; preds = %bb.ar, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !23595
  call void @_RNvXs_NtCskbjA1QblxuK_12tokio_stream4onceINtB4_4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([280 x i8]) align 8 captures(address) dereferenceable(280) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(288) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !23596
  %i.bd = load i64, ptr %i.ad, align 8, !range !134, !noalias !23595, !noundef !85
  %i.be = icmp eq i64 %i.bd, -2
  br i1 %i.be, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %bb.c

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23595
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ae, ptr noundef nonnull align 8 dereferenceable(280) %i.ad, i64 280, i1 false), !noalias !23595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23595
  %i.bf = load i64, ptr %i.ae, align 8, !noalias !23597 ; 3 uses
  %.not4.i.i = icmp eq i64 %i.bf, -1
  br i1 %.not4.i.i, label %bb.d, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

.body.i.i:                                        ; preds = %bb.j, %bb.g
  %eh.lpad-body6.i.i = phi { ptr, i32 } [ %i.bl, %bb.j ], [ %i.bj, %bb.g ]
  store i64 -2, ptr %i.an, align 8, !alias.scope !23598, !noalias !23599
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(280) %i.ae) #32
          to label %common.resume unwind label %bb.k, !noalias !23596

bb.d:                                             ; preds = %bb.c
  %i.bg = load i64, ptr %i.an, align 8, !range !134, !alias.scope !23600, !noalias !23599, !noundef !85
  switch i64 %i.bg, label %bb.e [
    i64 -2, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread186.i
    i64 -1, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread186.i
    i64 2, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.ax, align 8, !range !95, !alias.scope !23601, !noalias !23599, !noundef !85
  %i.bi = icmp eq i64 %i.bh, -1
  br i1 %i.bi, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen10FlightInfoECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.ax)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !23602

bb.g:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsekDO8Mha3LU_12arrow_flight3gen16FlightDescriptorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %i.ay) #32
          to label %.body.i.i unwind label %bb.h, !noalias !23602

bb.h:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23602
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsekDO8Mha3LU_12arrow_flight3gen16FlightDescriptorEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(64) %i.ay)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread186.i unwind label %bb.j, !noalias !23596

bb.i:                                             ; preds = %bb.d
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !alias.scope !23603, !noalias !23599, !nonnull !85, !noundef !85
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread186.i unwind label %bb.j, !noalias !23596

bb.j:                                             ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread186.i: ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoECsgsNUVCRJO2f_13influxdb3_lib.exit.i.i.i.i.i.i.i.i.i, %bb.d, %bb.d
  store i64 -2, ptr %i.an, align 8, !alias.scope !23598, !noalias !23599
  br label %.loopexit102.i

bb.k:                                             ; preds = %.body.i.i
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23596
  unreachable

common.resume:                                    ; preds = %bb.bu, %.body.i.i, %bb.p, %bb.aa, %bb.af, %bb.aj, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw, %bb.bb, %bb.bf
  %common.resume.op = phi { ptr, i32 } [ %i.gy, %bb.bf ], [ %i.fl, %bb.aw ], [ %eh.lpad-body6.i.i, %.body.i.i ], [ %i.cq, %bb.p ], [ %i.dt, %bb.aa ], [ %i.fz, %bb.bb ], [ %i.ee, %bb.aj ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.dz, %bb.af ], [ %i.hs, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.c
  %.sroa.8.0.copyload51.i = load ptr, ptr %.sroa.8.0..sroa_idx50.i, align 8, !noalias !23597 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(264) %.sroa.9.0..sroa_idx52.i, i64 264, i1 false), !noalias !23597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23595
  switch i64 %i.bf, label %bb.t [
    i64 -2, label %.loopexit.i
    i64 2, label %bb.s
  ]

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.bn = load i64, ptr %i.ba, align 8, !alias.scope !23590, !noundef !85 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.bi, label %bb.l

.loopexit102.i:                                   ; preds = %bb.ar, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtB8_4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoNtNtCsbYyEjVLvvus_5tonic6status6StatusEEENtNtCsi0Uwx9p0WRp_12futures_core6stream6Stream9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread186.i, %.preheader.i
end_hunk_6
begin_hunk_7_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEINtNtCskbjA1QblxuK_12tokio_stream4once4OnceINtNtCs4NRVxsYgnAr_4core6result6ResultB1O_NtNtB9_6status6StatusEEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !23590
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.az
  %i.ga = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.dd, %bb.az ]
  store ptr %.sroa.8.0.copyload51.i, ptr %i.as, align 8, !alias.scope !23590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !23604
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq, i64 noundef %i.ga), !noalias !23589
  call void @llvm.experimental.noalias.scope.decl(metadata !23640)
  %i.gb = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !23640, !noalias !23604, !noundef !85 ; 2 uses
  %i.gd = ptrtoint ptr %i.gc to i64               ; 2 uses
  %i.ge = and i64 %i.gd, 1
  %.not.i42.i = icmp eq i64 %i.ge, 0
  br i1 %.not.i42.i, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gf = lshr i64 %i.gd, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23641
  %i.gg = load ptr, ptr %i.af, align 8, !alias.scope !23640, !noalias !23604, !nonnull !85, !noundef !85
  %i.gh = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !23640, !noalias !23604, !noundef !85
  %i.gj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gk = load i64, ptr %i.gj, align 8, !alias.scope !23640, !noalias !23604, !noundef !85
  %i.gl = sub nsw i64 0, %i.gf
  %i.gm = getelementptr inbounds i8, ptr %i.gg, i64 %i.gl
  %i.gn = add i64 %i.gi, %i.gf
  %i.go = add i64 %i.gk, %i.gf                    ; 2 uses
  %i.gp = icmp sgt i64 %i.go, -1
  call void @llvm.assume(i1 %i.gp)
  store i64 %i.go, ptr %i.e, align 8, !noalias !23641
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gm, ptr %i.gq, align 8, !noalias !23641
  %i.gr = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gn, ptr %i.gr, align 8, !noalias !23641
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23641
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23642
  call void @llvm.experimental.noalias.scope.decl(metadata !23643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23641
  store i64 %i.gf, ptr %i.c, align 8, !noalias !23644
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !23643, !noalias !23641, !noundef !85 ; 4 uses
  %.not.i.i43.i = icmp ugt i64 %i.gf, %i.gt
  br i1 %.not.i.i43.i, label %bb.bd, label %bb.bg, !prof !86

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23644
  store i64 %i.gt, ptr %i.b, align 8, !noalias !23644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23644
  store ptr %i.c, ptr %i.a, align 8, !noalias !23644
  %.sroa.42.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i44.i, align 8, !noalias !23644
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gu, align 8, !noalias !23644
  %.sroa.46.0..sroa_idx.i.i45.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i45.i, align 8, !noalias !23644
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i47.i unwind label %bb.bf, !noalias !23642

.noexc.i47.i:                                     ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gv = load ptr, ptr %i.af, align 8, !alias.scope !23640, !noalias !23604, !nonnull !85, !noundef !85
  %i.gw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !alias.scope !23640, !noalias !23604, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bf:                                            ; preds = %bb.bd
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !23645)
  call void @llvm.experimental.noalias.scope.decl(metadata !23646)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !23647, !noalias !23641, !noundef !85
  %i.hb = load ptr, ptr %i.d, align 8, !alias.scope !23647, !noalias !23641, !nonnull !85, !align !91, !noundef !85
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !23648, !nonnull !85, !noundef !85
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !23647, !noalias !23641, !noundef !85
  invoke void %i.hd(ptr noundef %i.ha, ptr noundef %i.hf, i64 noundef %i.gt)
          to label %common.resume unwind label %bb.bh, !noalias !23642, !inline_history !3

bb.bg:                                            ; preds = %bb.bc
  %i.hg = sub nuw i64 %i.gt, %i.gf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !23643, !noalias !23641, !noundef !85
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23641
  %.sroa.079.0.copyload80.i = load ptr, ptr %i.d, align 8, !noalias !23649
  %.sroa.787.0..sroa_idx88.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.787.0.copyload89.i = load ptr, ptr %.sroa.787.0..sroa_idx88.i, align 8, !noalias !23649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23641
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i

bb.bh:                                            ; preds = %bb.bf
  %i.hk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23642
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i: ; preds = %bb.bg, %bb.be
  %.sroa.787.0.i = phi ptr [ %i.gc, %bb.be ], [ %.sroa.787.0.copyload89.i, %bb.bg ]
  %.sroa.684.0.i = phi i64 [ %i.gx, %bb.be ], [ %i.hg, %bb.bg ]
  %.sroa.581.0.i = phi ptr [ %i.gv, %bb.be ], [ %i.hj, %bb.bg ] ; 2 uses
  %.sroa.079.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.be ], [ %.sroa.079.0.copyload80.i, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !23604
  store ptr %.sroa.581.0.i, ptr %.sroa.19, align 8, !alias.scope !23589
  store ptr %.sroa.787.0.i, ptr %.sroa.30, align 8, !alias.scope !23589
  br label %bb.bj

bb.bi:                                            ; preds = %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bj:                                            ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i
  %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109 = phi ptr [ %.sroa.581.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.19.0..sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109.pre, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.684.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.26.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ]
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.079.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit48.i ], [ %.sroa.053.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.12.1, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen8PollInfoEECsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  %i.hl = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hl, label %bb.bp, label %bb.bq

bb.bk:                                            ; preds = %.loopexit102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am)
  %i.hm = load i64, ptr %i.aj, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.hm, -2
  br i1 %.not, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hn = icmp eq i64 %i.hm, -1
  br i1 %i.hn, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %bb.bn, %bb.bo, %bb.bk
  %.sroa.017.0 = phi i64 [ -3, %bb.bk ], [ -2, %bb.bn ], [ %i.hm, %bb.bo ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bk ], [ %.sroa.563.0.copyload, %bb.bn ], [ %.sroa.563.0.copyload, %bb.bo ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bl
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bm

bb.bp:                                            ; preds = %.thread117, %.thread111, %bb.bj
  %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116 = phi ptr [ %i.au, %.thread111 ], [ %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, %bb.bj ], [ %.sroa.8.0.copyload51.i, %.thread117 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) ]
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %i.al, align 8
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.hp = load i8, ptr %i.ho, align 8, !range !84, !noundef !85
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bj
  %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110 = load ptr, ptr %.sroa.30, align 8
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0..sroa.19.0..sroa.19.16..sroa.4.0.copyload109, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0..sroa.30.0..sroa.30.0..sroa.30.24.copyload110, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %bb.bp
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 409
  store i8 1, ptr %i.hr, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %bb.bp
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.hs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116) #32
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.ht = load i64, ptr %i.ak, align 8, !range !102, !noundef !85 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, -1
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  br i1 %i.hu, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hw, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  store i64 %i.ht, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hw, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0..sroa.19.16..sroa.4.0.copyload103116)
  br label %bb.bt

bb.by:                                            ; preds = %bb.bm, %bb.bq, %bb.bt, %bb.bi, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.30)
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2E_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2E_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(144) %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23701 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [8 x i8], align 8                 ; 5 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 10 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %i.ae = alloca [40 x i8], align 8               ; 11 uses
  %i.af = alloca [32 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 9 uses
  %i.ah = alloca [32 x i8], align 8               ; 9 uses
  %.sroa.770 = alloca [80 x i8], align 8          ; 2 uses
  %i.ai = alloca [96 x i8], align 8               ; 4 uses
  %i.aj = alloca [96 x i8], align 8               ; 7 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23702)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %.val29.i = load i64, ptr %i.an, align 8, !alias.scope !23702, !noundef !85
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val30.i = load i64, ptr %i.as, align 8, !alias.scope !23702, !noundef !85
  %i.at = load ptr, ptr %i.ar, align 8, !alias.scope !23702, !align !91, !noundef !85 ; 2 uses
  store ptr null, ptr %i.ar, align 8, !alias.scope !23702
  %.not.i = icmp eq ptr %i.at, null
  br i1 %.not.i, label %.preheader.i, label %.thread105

.preheader.i:                                     ; preds = %bb.a
  %.sroa.7.0..sroa_idx112.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.9.0..sroa_idx114.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.10.0..sroa_idx116.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.965.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.762.0..sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.965.0..sroa_idx66.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.11.0..sroa_idx68.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %.preheader.i
  call void @llvm.experimental.noalias.scope.decl(metadata !23703)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !23704
  %i.ay = load ptr, ptr %i.am, align 8, !alias.scope !23705, !noundef !85
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !23704
  call void @_RNvXs_NtCsi0Uwx9p0WRp_12futures_core6streamINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtB4_6Streamp4ItemINtNtBK_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtBK_6marker4SendEL_EEB1K_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !noalias !23706
  %i.az = load i64, ptr %i.ad, align 8, !range !94, !noalias !23704, !noundef !85
  %i.ba = icmp eq i64 %i.az, 2
  br i1 %i.ba, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !23704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23704
  %i.bb = load i64, ptr %i.ae, align 8, !range !92, !noalias !23704, !noundef !85
  %.not4.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not4.i.i, label %bb.e, label %bb.n

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i: ; preds = %bb.k, %bb.j
  store ptr null, ptr %i.am, align 8, !alias.scope !23705
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusEEECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(40) %i.ae) #32
          to label %common.resume unwind label %bb.l, !noalias !23706

bb.e:                                             ; preds = %bb.d
  %.val6.i.i = load ptr, ptr %i.am, align 8, !alias.scope !23705, !noundef !85 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val7.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !23705 ; 6 uses
  %i.bd = icmp eq ptr %.val6.i.i, null
  br i1 %i.bd, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.be = load ptr, ptr %.val7.i.i, align 8, !invariant.load !85, !noalias !23706 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.be(ptr noundef nonnull %.val6.i.i)
          to label %bb.h unwind label %bb.j, !noalias !23706

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !98, !invariant.load !85, !noalias !23706 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !101, !invariant.load !85, !noalias !23706
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #30, !noalias !23706
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.j:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !range !98, !invariant.load !85, !noalias !23706 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !range !101, !invariant.load !85, !noalias !23706
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i, i64 noundef range(i64 1, 0) %i.bm, i64 noundef range(i64 1, 536870913) %i.bp) #30, !noalias !23706
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i

bb.l:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23706
  unreachable

common.resume:                                    ; preds = %bb.bu, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i, %bb.s, %bb.ad, %bb.ai, %bb.am, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.ay, %bb.bd, %bb.bh
  %common.resume.op = phi { ptr, i32 } [ %i.hd, %bb.bh ], [ %i.fq, %bb.ay ], [ %i.bk, %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB1C_6marker4SendEL_ENtNtNtB1C_3ops4drop4Drop4dropCsgsNUVCRJO2f_13influxdb3_lib.exit4.i.i.i.i.i ], [ %i.cu, %bb.s ], [ %i.dx, %bb.ad ], [ %i.ge, %bb.bd ], [ %lpad.loopexit.split-lp349, %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ], [ %i.ei, %bb.am ], [ %i.ed, %bb.ai ], [ %i.hx, %bb.bu ]
  resume { ptr, i32 } %common.resume.op

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.i, %bb.h, %bb.e
  store ptr null, ptr %i.am, align 8, !alias.scope !23705
  br label %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !23704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23704
  %i.br = load i64, ptr %i.av, align 8, !alias.scope !23702, !noundef !85 ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2F_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2F_6marker4SendEL_EEEB3F_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.o

bb.n:                                             ; preds = %bb.d
  %.sroa.7.0.copyload113.i = load ptr, ptr %.sroa.7.0..sroa_idx112.i, align 8, !noalias !23707 ; 4 uses
  %.sroa.9.0.copyload115.i = load ptr, ptr %.sroa.9.0..sroa_idx114.i, align 8, !noalias !23707 ; 7 uses
  %.sroa.10.sroa.0.0.copyload117.i = load i64, ptr %.sroa.10.0..sroa_idx116.i, align 8, !noalias !23707 ; 3 uses
  %.sroa.10.sroa.5.0.copyload119.i = load ptr, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx118.i, align 8, !noalias !23707 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23704
  %i.bt = icmp eq ptr %.sroa.7.0.copyload113.i, null
  br i1 %i.bt, label %bb.v, label %bb.w

_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i: ; preds = %bb.b, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !23704
  %i.bu = load i64, ptr %i.av, align 8, !alias.scope !23702, !noundef !85 ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.bl, label %bb.o

bb.o:                                             ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i, %bb.m
  %i.bw = phi i64 [ %i.br, %bb.m ], [ %i.bu, %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !23708
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.bw), !noalias !23709
  call void @llvm.experimental.noalias.scope.decl(metadata !23710)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !23710, !noalias !23708, !noundef !85 ; 2 uses
end_hunk_7
begin_hunk_8_@_RNvXs2_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB5_10EncodeBodyINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2E_6result6ResultB1O_NtNtB9_6status6StatusENtNtB2E_6marker4SendEL_EEENtCshmaE5oGZBqQ_9http_body4Body10poll_frameCsgsNUVCRJO2f_13influxdb3_lib:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.ge = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.9.0.copyload115.i, ptr %i.ar, align 8, !alias.scope !23702
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i, %bb.bb
  %i.gf = phi i64 [ %.pre.i, %._RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit_crit_edge.i ], [ %i.dh, %bb.bb ]
  store ptr %.sroa.9.0.copyload115.i, ptr %i.ar, align 8, !alias.scope !23702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !23708
  call void @_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut8split_to(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ap, i64 noundef %i.gf), !noalias !23709
  call void @llvm.experimental.noalias.scope.decl(metadata !23742)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !alias.scope !23742, !noalias !23708, !noundef !85 ; 2 uses
  %i.gi = ptrtoint ptr %i.gh to i64               ; 2 uses
  %i.gj = and i64 %i.gi, 1
  %.not.i41.i = icmp eq i64 %i.gj, 0
  br i1 %.not.i41.i, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.gk = lshr i64 %i.gi, 5                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23743
  %i.gl = load ptr, ptr %i.af, align 8, !alias.scope !23742, !noalias !23708, !nonnull !85, !noundef !85
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !23742, !noalias !23708, !noundef !85
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !23742, !noalias !23708, !noundef !85
  %i.gq = sub nsw i64 0, %i.gk
  %i.gr = getelementptr inbounds i8, ptr %i.gl, i64 %i.gq
  %i.gs = add i64 %i.gn, %i.gk
  %i.gt = add i64 %i.gp, %i.gk                    ; 2 uses
  %i.gu = icmp sgt i64 %i.gt, -1
  call void @llvm.assume(i1 %i.gu)
  store i64 %i.gt, ptr %i.e, align 8, !noalias !23743
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.gr, ptr %i.gv, align 8, !noalias !23743
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.gs, ptr %i.gw, align 8, !noalias !23743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23743
  call void @_RNvXsE_NtCsuxFxh2mtOX_5bytes5bytesNtB5_5BytesINtNtCs4NRVxsYgnAr_4core7convert4FromINtNtCscdodAO9FK5_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !23744
  call void @llvm.experimental.noalias.scope.decl(metadata !23745)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23743
  store i64 %i.gk, ptr %i.c, align 8, !noalias !23746
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !23745, !noalias !23743, !noundef !85 ; 4 uses
  %.not.i.i42.i = icmp ugt i64 %i.gk, %i.gy
  br i1 %.not.i.i42.i, label %bb.bf, label %bb.bi, !prof !86

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23746
  store i64 %i.gy, ptr %i.b, align 8, !noalias !23746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23746
  store ptr %i.c, ptr %i.a, align 8, !noalias !23746
  %.sroa.42.0..sroa_idx.i.i43.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i43.i, align 8, !noalias !23746
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.gz, align 8, !noalias !23746
  %.sroa.46.0..sroa_idx.i.i44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i44.i, align 8, !noalias !23746
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @113, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @115) #29
          to label %.noexc.i46.i unwind label %bb.bh, !noalias !23744

.noexc.i46.i:                                     ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbYyEjVLvvus_5tonic6status6StatusEECsgsNUVCRJO2f_13influxdb3_lib.exit.i
  %i.ha = load ptr, ptr %i.af, align 8, !alias.scope !23742, !noalias !23708, !nonnull !85, !noundef !85
  %i.hb = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !23742, !noalias !23708, !noundef !85
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bh:                                            ; preds = %bb.bf
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !23747)
  call void @llvm.experimental.noalias.scope.decl(metadata !23748)
  %i.he = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !23749, !noalias !23743, !noundef !85
  %i.hg = load ptr, ptr %i.d, align 8, !alias.scope !23749, !noalias !23743, !nonnull !85, !align !91, !noundef !85
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !23750, !nonnull !85, !noundef !85
  %i.hj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !23749, !noalias !23743, !noundef !85
  invoke void %i.hi(ptr noundef %i.hf, ptr noundef %i.hk, i64 noundef %i.gy)
          to label %common.resume unwind label %bb.bj, !noalias !23744, !inline_history !3

bb.bi:                                            ; preds = %bb.be
  %i.hl = sub nuw i64 %i.gy, %i.gk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !23745, !noalias !23743, !noundef !85
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23743
  %.sroa.085.0.copyload86.i = load ptr, ptr %i.d, align 8, !noalias !23751
  %.sroa.793.0..sroa_idx94.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.793.0.copyload95.i = load ptr, ptr %.sroa.793.0..sroa_idx94.i, align 8, !noalias !23751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23743
  br label %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i

bb.bj:                                            ; preds = %bb.bh
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !23744
  unreachable

_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i: ; preds = %bb.bi, %bb.bg
  %.sroa.793.0.i = phi ptr [ %i.gh, %bb.bg ], [ %.sroa.793.0.copyload95.i, %bb.bi ]
  %.sroa.690.0.i = phi i64 [ %i.hc, %bb.bg ], [ %i.hl, %bb.bi ]
  %.sroa.587.0.i = phi ptr [ %i.ha, %bb.bg ], [ %i.ho, %bb.bi ]
  %.sroa.085.0.i = phi ptr [ @_RNvNtCsuxFxh2mtOX_5bytes9bytes_mut13SHARED_VTABLE, %bb.bg ], [ %.sroa.085.0.copyload86.i, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !23708
  br label %bb.bk

_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2F_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2F_6marker4SendEL_EEEB3F_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %bb.m
  store i64 3, ptr %0, align 8
  br label %bb.by

bb.bk:                                            ; preds = %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i
  %.sroa.30.0.ph.ph = phi ptr [ %.sroa.778.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.754.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.793.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.26.0.ph.ph = phi i64 [ %.sroa.675.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.6.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.690.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ]
  %.sroa.19.0.ph.ph = phi ptr [ %.sroa.572.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.5.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.587.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %.sroa.12.0.ph.ph = phi ptr [ %.sroa.070.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit40.i ], [ %.sroa.048.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit.i ], [ %.sroa.085.0.i, %_RNvMs_NtCsuxFxh2mtOX_5bytes9bytes_mutNtB4_8BytesMut6freeze.exit47.i ] ; 2 uses
  %i.hq = icmp eq ptr %.sroa.12.0.ph.ph, null
  br i1 %i.hq, label %.thread105, label %bb.bq

bb.bl:                                            ; preds = %_RNvXs_NtNtCskbjA1QblxuK_12tokio_stream10stream_ext4fuseINtB4_4FuseINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB17_6result6ResultNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultNtNtCsbYyEjVLvvus_5tonic6status6StatusENtNtB17_6marker4SendEL_EEEB27_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit.thread105.i
  call void @_RNvMs1_NtNtCsbYyEjVLvvus_5tonic5codec6encodeNtB5_11EncodeState8trailers(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.hr = load i64, ptr %i.ai, align 8, !range !134, !noundef !85 ; 3 uses
  %.not = icmp eq i64 %i.hr, -2
  br i1 %.not, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.563.0.copyload = load ptr, ptr %.sroa.563.0..sroa_idx, align 8 ; 3 uses
  %i.hs = icmp eq i64 %i.hr, -1
  br i1 %i.hs, label %bb.bo, label %bb.bp

bb.bn:                                            ; preds = %bb.bo, %bb.bp, %bb.bl
  %.sroa.017.0 = phi i64 [ -3, %bb.bl ], [ -2, %bb.bo ], [ %i.hr, %bb.bp ]
  %.sroa.519.sroa.0.0 = phi ptr [ undef, %bb.bl ], [ %.sroa.563.0.copyload, %bb.bo ], [ %.sroa.563.0.copyload, %bb.bp ]
  store i64 %.sroa.017.0, ptr %0, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.519.sroa.0.0, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.519.sroa.4.0..sroa.519.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, i64 80, i1 false)
  br label %bb.by

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.563.0.copyload) ]
  br label %bb.bn

bb.bp:                                            ; preds = %bb.bm
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.770, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.666.0..sroa_idx, i64 80, i1 false)
  br label %bb.bn

.thread105:                                       ; preds = %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i, %bb.an, %bb.ae, %bb.v, %bb.a, %bb.bk
  %.sroa.19.0.ph.ph110 = phi ptr [ %.sroa.19.0.ph.ph, %bb.bk ], [ %i.ej, %bb.an ], [ %i.ee, %_RNCINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEEs_0CsgsNUVCRJO2f_13influxdb3_lib.exit.i.i ], [ %i.dy, %bb.ae ], [ %i.at, %bb.a ], [ %.sroa.9.0.copyload115.i, %bb.v ], [ %i.er, %_RINvNtNtCsbYyEjVLvvus_5tonic5codec6encode11encode_itemINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEECsgsNUVCRJO2f_13influxdb3_lib.exit.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.0.ph.ph110) ]
  store ptr %.sroa.19.0.ph.ph110, ptr %i.ak, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.hu = load i8, ptr %i.ht, align 8, !range !84, !noundef !85
  %i.hv = trunc nuw i8 %i.hu to i1
  br i1 %i.hv, label %bb.br, label %bb.bs

bb.bq:                                            ; preds = %bb.bk
  store i64 -1, ptr %0, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.ph.ph, ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.19.0.ph.ph, ptr %.sroa.537.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.26.0.ph.ph, ptr %.sroa.638.0..sroa_idx, align 8
  %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.30.0.ph.ph, ptr %.sroa.638.sroa.4.0..sroa.638.0..sroa_idx.sroa_idx, align 8
  br label %bb.by

bb.br:                                            ; preds = %.thread105
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 137
  store i8 1, ptr %i.hw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMs1_NtCsbYyEjVLvvus_5tonic6statusNtB5_6Status13to_header_map(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ak)
          to label %bb.bv unwind label %bb.bu

bb.bs:                                            ; preds = %.thread105
  store i64 -2, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.19.0.ph.ph110, ptr %.sroa.48.0..sroa_idx, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bx, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.by

bb.bu:                                            ; preds = %bb.br
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110) #32
          to label %common.resume unwind label %bb.bz

bb.bv:                                            ; preds = %bb.br
  %i.hy = load i64, ptr %i.aj, align 8, !range !102, !noundef !85 ; 2 uses
  %i.hz = icmp eq i64 %i.hy, -1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8            ; 2 uses
  br i1 %i.hz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 -2, ptr %0, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.459.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.654.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.654.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.542.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  store i64 %i.hy, ptr %0, align 8
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ib, ptr %.sroa.553.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsbYyEjVLvvus_5tonic6status6StatusECsgsNUVCRJO2f_13influxdb3_lib(ptr nonnull %.sroa.19.0.ph.ph110)
  br label %bb.bt

bb.by:                                            ; preds = %_RNvXs_NtNtCsbYyEjVLvvus_5tonic5codec6encodeINtB4_12EncodedBytesINtNtCsk1F0U0dGulz_11tonic_prost5codec12ProstEncoderNtNtCsekDO8Mha3LU_12arrow_flight3gen9PutResultEINtNtCs4NRVxsYgnAr_4core3pin3PinINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsi0Uwx9p0WRp_12futures_core6stream6Streamp4ItemINtNtB2F_6result6ResultB1P_NtNtB8_6status6StatusENtNtB2F_6marker4SendEL_EEEB3F_9poll_nextCsgsNUVCRJO2f_13influxdb3_lib.exit, %bb.bw, %bb.bn, %bb.bq, %bb.bt
  ret void

bb.bz:                                            ; preds = %bb.bu
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !guid !23756 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !23757, !noundef !85 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !98, !alias.scope !23757, !noundef !85
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.i, !prof !86

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1)
  %i.i = load i64, ptr %i.d, align 8, !alias.scope !23758, !noundef !85 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  br label %bb.b

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.i: ; preds = %bb.a
  %i.k = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.k)
  %.not.i = icmp eq ptr %2, %1
  br i1 %.not.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsgsNUVCRJO2f_13influxdb3_lib.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i
  %i.l = phi i64 [ %i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.thread.i ], [ %i.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !23758, !nonnull !85, !noundef !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 %i.c, i1 false)
  %.pre.i = load i64, ptr %i.d, align 8, !alias.scope !23758
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsgsNUVCRJO2f_13influxdb3_lib.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsgsNUVCRJO2f_13influxdb3_lib.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.i, %bb.b
  %i.p = phi i64 [ %.pre.i, %bb.b ], [ %i.e, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsgsNUVCRJO2f_13influxdb3_lib.exit.i ]
  %i.q = add i64 %i.p, %i.c
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !23758
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches16from_arg_matches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23762 {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_RNvXsH_NtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23763)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23764
  invoke void @_RNvXs5_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_10SubCommandNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !range !120, !noalias !23764, !noundef !85 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !23764
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.67.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.59.0..sroa_idx.i, i64 208, i1 false), !noalias !23765
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matches10ArgMatchesECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(56) %i.b) #32
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23764
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.h, align 8, !alias.scope !23763
  store i64 %i.c, ptr %0, align 8, !alias.scope !23763
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matches10ArgMatchesECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(56) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([224 x i8]) align 8 captures(none) dereferenceable(224) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !guid !23766 {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs5_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_10SubCommandNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches20from_arg_matches_mut(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(none) dereferenceable(224) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !120, !noundef !85 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.67.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.59.0..sroa_idx, i64 208, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs2_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches23update_from_arg_matches(ptr noalias noundef align 8 dereferenceable(224) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23767 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvXsH_NtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatchesNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1)
  %i.b = invoke noundef align 8 ptr @_RNvXs5_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_10SubCommandNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RNvXs2_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matches10ArgMatchesECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(56) %i.a) #32
          to label %bb.d unwind label %bb.c

_RNvXs2_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut.exit: ; preds = %bb.a
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsbyItyepKEh3_12clap_builder6parser7matches11arg_matches10ArgMatchesECsgsNUVCRJO2f_13influxdb3_lib(ptr noalias noundef align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs2_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias noundef align 8 dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 !guid !23768 {
bb.a:
  %i.a = tail call noundef align 8 ptr @_RNvXs5_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_10SubCommandNtNtCsbyItyepKEh3_12clap_builder6derive14FromArgMatches27update_from_arg_matches_mut(ptr noalias noundef nonnull align 8 dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsgsNUVCRJO2f_13influxdb3_lib8commands6deleteNtB5_6ConfigNtNtCsbyItyepKEh3_12clap_builder6derive4Args12augment_args(ptr dead_on_unwind noalias noundef writable sret([776 x i8]) align 8 captures(none) dereferenceable(776) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(776) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !23782 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 14 uses
  %i.c = alloca [104 x i8], align 8               ; 3 uses
  %i.d = alloca [104 x i8], align 8               ; 5 uses
  %i.e = alloca [776 x i8], align 8               ; 9 uses
  %i.f = alloca [776 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.e, ptr noundef nonnull align 8 dereferenceable(776) %1, i64 776, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i8 0, ptr %i.g, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88
end_hunk_8
