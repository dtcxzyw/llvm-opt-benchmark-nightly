Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 147
begin_hunk_0_@_RNvNtCs9JgWGBoX3PY_12lance_linalg7kernels19normalize_fsl_owned:bb.a
  store i64 %i.gd, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !4700, !noalias !4699
  %i.gr = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 2 uses
  store ptr %i.gf, ptr %i.gr, align 8, !alias.scope !4700, !noalias !4699
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4700, !noalias !4699
  %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store <2 x i64> %i.go, ptr %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !4700, !noalias !4699
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  store <2 x i64> %i.gp, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !4700, !noalias !4699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !4702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !4699
  %i.gs = load <2 x ptr>, ptr %i.ev, align 16, !noalias !4699
  %i.gt = load ptr, ptr %i.ev, align 16, !noalias !4699, !nonnull !26, !noundef !26
  store <2 x ptr> %i.gs, ptr %i.er, align 16, !noalias !4699
  %i.gu = atomicrmw add ptr %i.gt, i64 -1 release, align 8, !noalias !4704
  %i.gv = icmp eq i64 %i.gu, 1
  br i1 %i.gv, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.er)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.en, !noalias !4699

.thread144.i:                                     ; preds = %bb.ej, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i
  %.sroa.018.2.ph.i = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i ], [ 0, %bb.ej ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread135.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !4699
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !4705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %i.es, i64 40, i1 false), !noalias !4699
  %.sroa.4104.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !4699 ; 3 uses
  %.sroa.5107.0..sroa_idx108.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5107.0..sroa_idx108.i, ptr noundef nonnull align 8 dereferenceable(48) %i.gr, i64 48, i1 false), !noalias !4699
  call void @llvm.experimental.noalias.scope.decl(metadata !4706)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !4699
  %i.gw = lshr i64 %.sroa.4104.0.copyload.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !4705
  %.sroa.4104.0..sroa_idx105.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i64 %.sroa.4104.0.copyload.i, ptr %.sroa.4104.0..sroa_idx105.i, align 8, !noalias !4707
  invoke fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeEE4fromCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ed)
          to label %.noexc42.i unwind label %.thread144.i, !noalias !4699

.noexc42.i:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !4705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !4705
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ee, i64 88 ; 2 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !4705, !noundef !26
  %.not.i39.i = icmp eq ptr %i.gy, null
  br i1 %.not.i39.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !4705
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer6sliced(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gx)
          to label %bb.u unwind label %.thread.i.i, !noalias !4705

bb.s:                                             ; preds = %.noexc42.i
  store ptr null, ptr %i.ec, align 8, !noalias !4705
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !4705
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !noalias !4705, !noundef !26
  %.not81.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not81.i.i, label %bb.w, label %bb.v

.thread.i.i:                                      ; preds = %bb.r
  %i.hb = landingpad { ptr, i32 }
          cleanup
  br label %.thread189.i.i

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !4705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !4705
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !4705, !nonnull !26, !noundef !26
  %i.he = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.hf = load i64, ptr %i.he, align 8, !noalias !4705, !noundef !26
  %i.hg = shl i64 %i.hf, 1
  %i.hh = and i64 %.sroa.4104.0.copyload.i, -2
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hd, i64 noundef %i.hg, i64 noundef %i.hh)
          to label %bb.y unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i, !noalias !4705

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #74
          to label %bb.x unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i, !noalias !4705

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i: ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %.thread172.i.i, %bb.bs, %bb.br, %bb.bo, %.body.i.i, %bb.bj, %.thread.i.i.i, %bb.bg, %bb.bf
  %.sroa.040.0.i.i = phi i1 [ %.not82.i.i, %bb.by ], [ %.sroa.040.2.i.i, %bb.ca ], [ %.sroa.040.2.i.i, %bb.cb ], [ %.not82.i.i, %bb.bf ], [ %.not82.i.i, %bb.bg ], [ %.not82.i.i, %.thread.i.i.i ], [ %.not82.i.i, %bb.bj ], [ %.not82.i.i, %.body.i.i ], [ %.not82.i.i, %bb.bo ], [ %.not82.i.i, %bb.bs ], [ %.not82.i.i, %bb.br ], [ %.not82.i.i, %.thread172.i.i ], [ %.not82.i.i, %bb.bz ], [ %.not82.i.i, %bb.bx ]
  %.pn85.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.by ], [ %i.lb, %bb.ca ], [ %i.lb, %bb.cb ], [ %i.jt, %bb.bf ], [ %i.jt, %bb.bg ], [ %eh.lpad-body.i.i.i, %.thread.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.bj ], [ %i.kf, %.body.i.i ], [ %i.kf, %bb.bo ], [ %i.km, %bb.bs ], [ %i.km, %bb.br ], [ %lpad.thr_comm.i.i, %.thread172.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.bz ], [ %lpad.thr_comm.split-lp.i.i, %bb.bx ] ; 2 uses
  %i.hi = load ptr, ptr %i.ec, align 8, !noalias !4705, !noundef !26 ; 2 uses
  %i.hj = icmp ne ptr %i.hi, null
  %or.cond.i.i = and i1 %.sroa.040.0.i.i, %i.hj
  br i1 %or.cond.i.i, label %bb.cc, label %.thread135.thread.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i: ; preds = %bb.w, %bb.v
  %i.hk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hl = load ptr, ptr %i.ec, align 8, !noalias !4705, !noundef !26 ; 2 uses
  %.not192.i.i = icmp eq ptr %i.hl, null
  br i1 %.not192.i.i, label %.thread189.i.i, label %bb.cc

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !4705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ea, ptr noundef nonnull align 8 dereferenceable(136) %i.ee, i64 136, i1 false), !noalias !4705
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(136) %i.ea)
          to label %bb.z unwind label %bb.ca, !noalias !4705

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !4705
  %i.hm = load ptr, ptr %i.ec, align 8, !noalias !4705, !noundef !26
  %.not82.i.i = icmp eq ptr %i.hm, null           ; 13 uses
  br i1 %.not82.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !4705
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ec)
          to label %bb.ac unwind label %bb.ca, !noalias !4705

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %.sroa.623.0.copyload.i.i = phi ptr [ undef, %bb.z ], [ %.sroa.444.sroa.0.0.copyload.i.i, %bb.ac ] ; 4 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ undef, %bb.z ], [ %.sroa.444.sroa.4.0.copyload.i.i, %bb.ac ] ; 3 uses
  %.sroa.6.sroa.0.0.i.i = phi ptr [ undef, %bb.z ], [ %.sroa.043.0.copyload.i.i, %bb.ac ] ; 2 uses
  %.sroa.020.0.copyload.i.i = phi i64 [ 0, %bb.z ], [ %i.ho, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !4705
  store i64 %.sroa.020.0.copyload.i.i, ptr %i.dy, align 8, !noalias !4705
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !noalias !4705
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %.sroa.623.0.copyload.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !4705
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i, align 8, !noalias !4705
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !4705
  %i.hn = ptrtoint ptr %.sroa.6.sroa.0.0.i.i to i64
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb)
          to label %bb.ad unwind label %bb.br, !noalias !4705

bb.ac:                                            ; preds = %bb.aa
  %i.ho = load i64, ptr %i.dz, align 8, !range !44, !noalias !4705, !noundef !26 ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 0
  %i.hq = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.043.0.copyload.i.i = load ptr, ptr %i.hq, align 8, !noalias !4705 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.444.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !4705 ; 2 uses
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.sroa.444.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4705 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !4705
  br i1 %i.hp, label %.thread141.i.i, label %bb.ab

.thread141.i.i:                                   ; preds = %bb.ac
  %.sroa.0115.0.copyload.i.i = load ptr, ptr %i.eb, align 8, !noalias !4705
  %.sroa.4116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.hr = load <2 x i64>, ptr %.sroa.4116.0..sroa_idx.i.i, align 8, !noalias !4705
  br label %bb.bt

bb.ad:                                            ; preds = %bb.ab
  %i.hs = load i64, ptr %i.dx, align 16, !range !44, !noalias !4705, !noundef !26
  %i.ht = icmp eq i64 %i.hs, 0
  br i1 %i.ht, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hu = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !4705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.hu, i64 24, i1 false), !noalias !4705
  %.not83.i.i = icmp eq i64 %.sroa.020.0.copyload.i.i, 0
  br i1 %.not83.i.i, label %.thread160.i.i, label %bb.bk

bb.af:                                            ; preds = %bb.ad
  %.sroa.5.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx100.i.i, align 16, !noalias !4705, !nonnull !26, !noundef !26 ; 6 uses
  %.sroa.6.0..sroa_idx101.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx101.i.i, align 8, !noalias !4705 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !4705
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 32, i1 false), !noalias !4705
  call void @llvm.experimental.noalias.scope.decl(metadata !4708)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !4709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !4709
  store i64 1, ptr %i.dh, align 8, !noalias !4709
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 1, ptr %i.hv, align 8, !noalias !4709
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.hw, align 8, !noalias !4709
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4709
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !4709
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.hx = load <2 x i64>, ptr %i.dx, align 16, !noalias !4705
  store <2 x i64> %i.hx, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !4709
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4710
  %i.hy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4710 ; 19 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.ag, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, !prof !31

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i.i.i unwind label %bb.ah, !noalias !4709

.noexc.i.i.i.i:                                   ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dh) #77
          to label %.thread.i.i.i unwind label %bb.ai, !noalias !4709

bb.ai:                                            ; preds = %bb.ah
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4709
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hy, ptr noundef nonnull align 8 dereferenceable(56) %i.dh, i64 56, i1 false), !noalias !4709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !4709
  store ptr %i.hy, ptr %i.di, align 8, !noalias !4709
  %i.ic = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.ic, align 8, !noalias !4709
  %i.id = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.id, align 8, !noalias !4709
  %i.ie = ptrtoint ptr %.sroa.5.0.copyload.i.i to i64
  %i.if = and i64 %i.ie, 1
  %i.ig = icmp eq i64 %i.if, 0
  %2 = ptrtoint ptr %i.hy to i64                  ; 5 uses
  br i1 %i.ig, label %bb.an, label %.invoke.i.i.i.i.i, !prof !24

bb.aj:                                            ; preds = %.invoke.i.i.i.i.i
  %i.ih = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ii = atomicrmw add ptr %i.hy, i64 -1 release, align 8, !noalias !4711
  %i.ij = icmp eq i64 %i.ii, 1
  br i1 %i.ij, label %bb.ak, label %.thread.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.thread.i.i.i unwind label %bb.al, !noalias !4712

.invoke.i.i.i.i.i:                                ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.il = load ptr, ptr %i.ik, align 8, !noalias !4713, !noundef !26
  %.not.i.i.i.i.i = icmp eq ptr %i.il, null       ; 3 uses
  %.2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @395, ptr @397
  %.1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i.i, ptr noundef nonnull %.1.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i.i) #74
          to label %.cont.i.i.i.i.i unwind label %bb.aj, !noalias !4713

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4712
  unreachable

bb.am:                                            ; preds = %bb.bb
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.an:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !4709
  %i.io = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ip = load ptr, ptr %i.io, align 8, !noalias !4714, !noundef !26
  %.not.i.i17.i.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i17.i.i.i, label %bb.ao, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.ir = load ptr, ptr %i.iq, align 8, !noalias !4714, !nonnull !26, !noundef !26
  %.not23.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload.i.i, %i.ir
  br i1 %.not23.i.i.i.i.i, label %bb.ap, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.is = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.it = load i64, ptr %i.is, align 8, !noalias !4714, !noundef !26 ; 2 uses
  %i.iu = lshr i64 %i.it, 1
  %i.iv = and i64 %i.it, -9223372036854775807
  %or.cond.i.i.i.i.i = icmp eq i64 %i.iv, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.aq, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.ix = load i64, ptr %i.iw, align 8, !range !42, !noalias !4714, !noundef !26
  %i.iy = icmp eq i64 %i.ix, 2
  br i1 %i.iy, label %bb.ar, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.iz = lshr i64 %.sroa.6.0.copyload.i.i, 1
  %i.ja = cmpxchg ptr %i.hy, i64 1, i64 0 monotonic monotonic, align 8, !noalias !4715
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ja, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.as, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.iq, align 8, !noalias !4714 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4714 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.jc = atomicrmw add ptr %i.jb, i64 -1 release, align 8, !noalias !4715
  %i.jd = icmp eq i64 %i.jc, 1
  br i1 %i.jd, label %bb.at, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hy, i64 noundef 56, i64 noundef 8) #76, !noalias !4715
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.je = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %i.je, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i, label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %.pre.i.i.i = ptrtoint ptr %.sroa.6.0.copyload.i.i.i.i.i to i64
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i, %bb.ar
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i ], [ %2, %bb.ar ]
  %.sroa.6.027.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i ], [ %i.hy, %bb.ar ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.027.i.i.i.i.i) ]
  br label %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.pre-phi.i.i.i.i = phi ptr [ %i.hy, %bb.ap ], [ %i.hy, %bb.an ], [ %i.hy, %bb.ao ], [ %i.hy, %bb.aq ], [ %.sroa.6.027.i.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.4.1.ph.i.i.i.i = phi i64 [ %2, %bb.ap ], [ %2, %bb.an ], [ %2, %bb.ao ], [ %2, %bb.aq ], [ %.pre-phi.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !4716
  store i64 %.sroa.4.1.ph.i.i.i.i, ptr %i.dg, align 8, !noalias !4716
  %.sroa.427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.427.0..sroa_idx.i.i.i.i, align 8, !noalias !4716
  %.sroa.5.0..sroa_idx.i18.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i18.i.i.i, align 8, !noalias !4716
  %i.jf = lshr i64 %.sroa.6.0.copyload.i.i, 1     ; 3 uses
  %i.jg = and i64 %.sroa.6.0.copyload.i.i, 1
  %i.jh = icmp eq i64 %i.jg, 0
  br i1 %i.jh, label %bb.ax, label %bb.au, !prof !4717

bb.au:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #74
          to label %.noexc.i.i.i.i.i unwind label %bb.av, !noalias !4718

.noexc.i.i.i.i.i:                                 ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.az, %bb.au
  %i.ji = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jj = atomicrmw add ptr %.pre-phi.i.i.i.i, i64 -1 release, align 8, !noalias !4719
  %i.jk = icmp eq i64 %i.jj, 1
  br i1 %i.jk, label %bb.aw, label %.thread.i.i.i

bb.aw:                                            ; preds = %bb.av
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.thread.i.i.i unwind label %bb.bc, !noalias !4720

bb.ax:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  %i.jl = icmp eq i64 %i.jf, 0
  br i1 %i.jl, label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4721
  %i.jm = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.6.0.copyload.i.i, i64 noundef range(i64 1, 9) 2) #76, !noalias !4721 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %.sroa.6.0.copyload.i.i) #74
          to label %.noexc3.i.i.i.i.i unwind label %bb.av, !noalias !4718

.noexc3.i.i.i.i.i:                                ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.jm, ptr nonnull readonly align 2 %.sroa.5.0.copyload.i.i, i64 %.sroa.6.0.copyload.i.i, i1 false), !noalias !4722
  br label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.ba, %bb.ax
  %.sroa.7.0.i.i.i = phi ptr [ %i.jm, %bb.ba ], [ inttoptr (i64 2 to ptr), %bb.ax ]
  %i.jo = atomicrmw add ptr %.pre-phi.i.i.i.i, i64 -1 release, align 8, !noalias !4723
  %i.jp = icmp eq i64 %i.jo, 1
  br i1 %i.jp, label %bb.bb, label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i

bb.bb:                                            ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i unwind label %bb.am, !noalias !4724

bb.bc:                                            ; preds = %bb.aw
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4720
  unreachable

_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.bb, %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !4716
  br label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %.sroa.11.1.i.i.i = phi i64 [ %i.jf, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.iz, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.7.1.i.i.i = phi ptr [ %.sroa.7.0.i.i.i, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ %i.jf, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.iu, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !4708, !noalias !4705 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !4724
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.dk, align 8, !noalias !4724
  %.sroa.6.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx9.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !4725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !4724
  %i.jr = icmp samesign ult i64 %.sroa.11.1.i.i.i, 4611686018427387904
  call void @llvm.assume(i1 %i.jr)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder15new_from_buffer(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.dj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.dk, i64 noundef %.sroa.11.1.i.i.i)
          to label %bb.bh unwind label %bb.bf, !noalias !4724

bb.be:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.js = icmp samesign ult i64 %.sroa.11.1.i.i.i, 4611686018427387904
  call void @llvm.assume(i1 %i.js)
  br label %bb.ci

bb.bf:                                            ; preds = %bb.bd
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = icmp eq i64 %.sroa.0.1.i.i.i, 0
  br i1 %i.ju, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jv = shl nuw i64 %.sroa.0.1.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1.i.i.i, i64 noundef %i.jv, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !4724
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i

bb.bh:                                            ; preds = %bb.bd
  %.sroa.05.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dj, align 8, !noalias !4724
  %.sroa.05.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.jw = load <2 x ptr>, ptr %.sroa.05.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4724
  %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.jx = load <2 x i64>, ptr %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !4724
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.46.0.copyload.i.i.i = load i64, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !4724
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !4724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !4724
  br label %bb.ci

bb.bi:                                            ; preds = %bb.bj
  %i.jy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4725
  unreachable

.thread.i.i.i:                                    ; preds = %bb.aw, %bb.av, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ih, %bb.aj ], [ %i.ia, %bb.ah ], [ %i.ih, %bb.ak ], [ %i.in, %bb.am ], [ %i.ji, %bb.aw ], [ %i.ji, %bb.av ] ; 2 uses
  %i.jz = load i64, ptr %i.dw, align 8, !range !44, !alias.scope !4726, !noalias !4705, !noundef !26
  %i.ka = icmp eq i64 %i.jz, 0
  br i1 %i.ka, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i, label %bb.bj

bb.bj:                                            ; preds = %.thread.i.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i unwind label %bb.bi, !noalias !4725

bb.bk:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.623.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !4705
  store i64 1, ptr %i.dl, align 8, !noalias !4705
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 1, ptr %i.kb, align 8, !noalias !4705
  %i.kc = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %.sroa.623.0.copyload.i.i, ptr %i.kc, align 8, !noalias !4705
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !4705
  %.sroa.5.0..sroa_idx.i40.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i40.i, align 8, !noalias !4705
  %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i64 %.sroa.020.0.copyload.i.i, ptr %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4705
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store i64 %i.hn, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4705
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4727
  %i.kd = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4727 ; 3 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.bl, label %bb.bp, !prof !31

bb.bl:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.bm, !noalias !4705

.noexc.i.i:                                       ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %i.kf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dl) #77
          to label %.body.i.i unwind label %bb.bn, !noalias !4705

bb.bn:                                            ; preds = %bb.bm
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4705
  unreachable

.thread160.i.i:                                   ; preds = %bb.bp, %bb.ae
  %.sroa.5.sroa.4.0.i41.i = phi i64 [ %.sroa.7.0.copyload.i.i, %bb.bp ], [ undef, %bb.ae ]
  %.sroa.5.sroa.0.0.i.i = phi ptr [ %.sroa.623.0.copyload.i.i, %bb.bp ], [ undef, %bb.ae ]
  %.sroa.012.0.i.i = phi ptr [ %i.kd, %bb.bp ], [ null, %bb.ae ]
  %.sroa.015.sroa.0.0.copyload.i.i = load ptr, ptr %i.dv, align 8, !noalias !4705
  %.sroa.015.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.kh = load <2 x i64>, ptr %.sroa.015.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !4705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !4705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !4705
  br label %bb.bt

.body.i.i:                                        ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !4728)
  call void @llvm.experimental.noalias.scope.decl(metadata !4729)
  call void @llvm.experimental.noalias.scope.decl(metadata !4730)
  %i.ki = load ptr, ptr %i.dv, align 8, !alias.scope !4731, !noalias !4705, !nonnull !26, !noundef !26
  %i.kj = atomicrmw add ptr %i.ki, i64 -1 release, align 8, !noalias !4732
  %i.kk = icmp eq i64 %i.kj, 1
  br i1 %i.kk, label %bb.bo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i

end_hunk_0
begin_hunk_1_@_RNvNtCs9JgWGBoX3PY_12lance_linalg7kernels19normalize_fsl_owned:bb.a
  store i64 %i.sz, ptr %.sroa.57.0..sroa_idx.i.i23, align 8, !alias.scope !4773, !noalias !4772
  %i.tn = getelementptr inbounds nuw i8, ptr %i.ct, i64 48 ; 2 uses
  store ptr %i.tb, ptr %i.tn, align 8, !alias.scope !4773, !noalias !4772
  %.sroa.5.0..sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.ct, i64 56
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i18, ptr %.sroa.5.0..sroa_idx.i.i24, align 8, !alias.scope !4773, !noalias !4772
  %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i25 = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  store <2 x i64> %i.tk, ptr %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i25, align 8, !alias.scope !4773, !noalias !4772
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i27 = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  store <2 x i64> %i.tl, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i27, align 8, !alias.scope !4773, !noalias !4772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !4775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !4772
  %i.to = load <2 x ptr>, ptr %i.cw, align 16, !noalias !4772
  %i.tp = load ptr, ptr %i.cw, align 16, !noalias !4772, !nonnull !26, !noundef !26
  store <2 x ptr> %i.to, ptr %i.cs, align 16, !noalias !4772
  %i.tq = atomicrmw add ptr %i.tp, i64 -1 release, align 8, !noalias !4777
  %i.tr = icmp eq i64 %i.tq, 1
  br i1 %i.tr, label %bb.fg, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i29

bb.fg:                                            ; preds = %bb.ff
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cs)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i29 unwind label %bb.jg, !noalias !4772

.thread139.i:                                     ; preds = %bb.jc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i154, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i29
  %.sroa.018.2.ph.i30 = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i29 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i154 ], [ 0, %bb.jc ] ; 2 uses
  %lpad.thr_comm.i31 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i29: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !4772
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !4778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %i.ct, i64 40, i1 false), !noalias !4772
  %.sroa.499.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i23, align 8, !noalias !4772 ; 3 uses
  %.sroa.5102.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5102.0..sroa_idx103.i, ptr noundef nonnull align 8 dereferenceable(48) %i.tn, i64 48, i1 false), !noalias !4772
  call void @llvm.experimental.noalias.scope.decl(metadata !4779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !4772
  %i.ts = lshr i64 %.sroa.499.0.copyload.i, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !4778
  %.sroa.499.0..sroa_idx100.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store i64 %.sroa.499.0.copyload.i, ptr %.sroa.499.0..sroa_idx100.i, align 8, !noalias !4780
  invoke fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float32TypeEE4fromCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.cf, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ce)
          to label %.noexc42.i35 unwind label %.thread139.i, !noalias !4772

.noexc42.i35:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !4778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !4778
  %i.tt = getelementptr inbounds nuw i8, ptr %i.cf, i64 88 ; 2 uses
  %i.tu = load ptr, ptr %i.tt, align 8, !noalias !4778, !noundef !26
  %.not.i39.i36 = icmp eq ptr %i.tu, null
  br i1 %.not.i39.i36, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %.noexc42.i35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !4778
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer6sliced(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.tt)
          to label %bb.fk unwind label %.thread.i.i37, !noalias !4778

bb.fi:                                            ; preds = %.noexc42.i35
  store ptr null, ptr %i.cd, align 8, !noalias !4778
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fk, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !4778
  %i.tv = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.tw = load i64, ptr %i.tv, align 8, !noalias !4778, !noundef !26
  %.not81.i.i40 = icmp eq i64 %i.tw, 0
  br i1 %.not81.i.i40, label %bb.fm, label %bb.fl

.thread.i.i37:                                    ; preds = %bb.fh
  %i.tx = landingpad { ptr, i32 }
          cleanup
  br label %.thread189.i.i38

bb.fk:                                            ; preds = %bb.fh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !4778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !4778
  br label %bb.fj

bb.fl:                                            ; preds = %bb.fj
  %i.ty = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8, !noalias !4778, !nonnull !26, !noundef !26
  %i.ua = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.ub = load i64, ptr %i.ua, align 8, !noalias !4778, !noundef !26
  %i.uc = shl i64 %i.ub, 2
  %i.ud = and i64 %.sroa.499.0.copyload.i, -4
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.tz, i64 noundef %i.uc, i64 noundef %i.ud)
          to label %bb.fo unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i41, !noalias !4778

bb.fm:                                            ; preds = %bb.fj
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #74
          to label %bb.fn unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i41, !noalias !4778

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i47: ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %.thread172.i.i199, %bb.hj, %bb.hi, %bb.hf, %.body.i.i208, %bb.ha, %.thread.i.i.i79, %bb.gx, %bb.gw
  %.sroa.040.0.i.i48 = phi i1 [ %.not82.i.i51, %bb.hp ], [ %.sroa.040.2.i.i46, %bb.hr ], [ %.sroa.040.2.i.i46, %bb.hs ], [ %.not82.i.i51, %bb.gw ], [ %.not82.i.i51, %bb.gx ], [ %.not82.i.i51, %.thread.i.i.i79 ], [ %.not82.i.i51, %bb.ha ], [ %.not82.i.i51, %.body.i.i208 ], [ %.not82.i.i51, %bb.hf ], [ %.not82.i.i51, %bb.hj ], [ %.not82.i.i51, %bb.hi ], [ %.not82.i.i51, %.thread172.i.i199 ], [ %.not82.i.i51, %bb.hq ], [ %.not82.i.i51, %bb.ho ]
  %.pn85.pn.i.i49 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i198, %bb.hp ], [ %i.ye, %bb.hr ], [ %i.ye, %bb.hs ], [ %i.ww, %bb.gw ], [ %i.ww, %bb.gx ], [ %eh.lpad-body.i.i.i80, %.thread.i.i.i79 ], [ %eh.lpad-body.i.i.i80, %bb.ha ], [ %i.xi, %.body.i.i208 ], [ %i.xi, %bb.hf ], [ %i.xp, %bb.hj ], [ %i.xp, %bb.hi ], [ %lpad.thr_comm.i.i200, %.thread172.i.i199 ], [ %lpad.thr_comm.split-lp.i.i198, %bb.hq ], [ %lpad.thr_comm.split-lp.i.i198, %bb.ho ] ; 2 uses
  %i.ue = load ptr, ptr %i.cd, align 8, !noalias !4778, !noundef !26 ; 2 uses
  %i.uf = icmp ne ptr %i.ue, null
  %or.cond.i.i50 = and i1 %.sroa.040.0.i.i48, %i.uf
  br i1 %or.cond.i.i50, label %bb.ht, label %.thread130.thread.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i41: ; preds = %bb.fm, %bb.fl
  %i.ug = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uh = load ptr, ptr %i.cd, align 8, !noalias !4778, !noundef !26 ; 2 uses
  %.not192.i.i42 = icmp eq ptr %i.uh, null
  br i1 %.not192.i.i42, label %.thread189.i.i38, label %bb.ht

bb.fn:                                            ; preds = %bb.fm
  unreachable

bb.fo:                                            ; preds = %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !4778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.cb, ptr noundef nonnull align 8 dereferenceable(136) %i.cf, i64 136, i1 false), !noalias !4778
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(136) %i.cb)
          to label %bb.fp unwind label %bb.hr, !noalias !4778

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !4778
  %i.ui = load ptr, ptr %i.cd, align 8, !noalias !4778, !noundef !26
  %.not82.i.i51 = icmp eq ptr %i.ui, null         ; 13 uses
  br i1 %.not82.i.i51, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !4778
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cd)
          to label %bb.fs unwind label %bb.hr, !noalias !4778

bb.fr:                                            ; preds = %bb.fs, %bb.fp
  %.sroa.623.0.copyload.i.i57 = phi ptr [ undef, %bb.fp ], [ %.sroa.444.sroa.0.0.copyload.i.i54, %bb.fs ] ; 4 uses
  %.sroa.7.0.copyload.i.i58 = phi i64 [ undef, %bb.fp ], [ %.sroa.444.sroa.4.0.copyload.i.i56, %bb.fs ] ; 3 uses
  %.sroa.6.sroa.0.0.i.i59 = phi ptr [ undef, %bb.fp ], [ %.sroa.043.0.copyload.i.i52, %bb.fs ] ; 2 uses
  %.sroa.020.0.copyload.i.i60 = phi i64 [ 0, %bb.fp ], [ %i.uk, %bb.fs ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz), !noalias !4778
  store i64 %.sroa.020.0.copyload.i.i60, ptr %i.bz, align 8, !noalias !4778
  %.sroa.6.0..sroa_idx5.i.i61 = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr %.sroa.6.sroa.0.0.i.i59, ptr %.sroa.6.0..sroa_idx5.i.i61, align 8, !noalias !4778
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i62 = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %.sroa.623.0.copyload.i.i57, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i62, align 8, !noalias !4778
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i63 = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 %.sroa.7.0.copyload.i.i58, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i63, align 8, !noalias !4778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !4778
  %i.uj = ptrtoint ptr %.sroa.6.sroa.0.0.i.i59 to i64
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.by, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.cc)
          to label %bb.ft unwind label %bb.hi, !noalias !4778

bb.fs:                                            ; preds = %bb.fq
  %i.uk = load i64, ptr %i.ca, align 8, !range !44, !noalias !4778, !noundef !26 ; 2 uses
  %i.ul = icmp eq i64 %i.uk, 0
  %i.um = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.043.0.copyload.i.i52 = load ptr, ptr %i.um, align 8, !noalias !4778 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i53 = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.444.sroa.0.0.copyload.i.i54 = load ptr, ptr %.sroa.444.0..sroa_idx.i.i53, align 8, !noalias !4778 ; 2 uses
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i55 = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.444.sroa.4.0.copyload.i.i56 = load i64, ptr %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i55, align 8, !noalias !4778 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca), !noalias !4778
  br i1 %i.ul, label %.thread141.i.i210, label %bb.fr

.thread141.i.i210:                                ; preds = %bb.fs
  %.sroa.0115.0.copyload.i.i211 = load ptr, ptr %i.cc, align 8, !noalias !4778
  %.sroa.4116.0..sroa_idx.i.i212 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.un = load <2 x i64>, ptr %.sroa.4116.0..sroa_idx.i.i212, align 8, !noalias !4778
  br label %bb.hk

bb.ft:                                            ; preds = %bb.fr
  %i.uo = load i64, ptr %i.by, align 16, !range !44, !noalias !4778, !noundef !26
  %i.up = icmp eq i64 %i.uo, 0
  br i1 %i.up, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.uq = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !4778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.uq, i64 24, i1 false), !noalias !4778
  %.not83.i.i171 = icmp eq i64 %.sroa.020.0.copyload.i.i60, 0
  br i1 %.not83.i.i171, label %.thread160.i.i176, label %bb.hb

bb.fv:                                            ; preds = %bb.ft
  %.sroa.5.0..sroa_idx100.i.i65 = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.5.0.copyload.i.i66 = load ptr, ptr %.sroa.5.0..sroa_idx100.i.i65, align 16, !noalias !4778, !nonnull !26, !noundef !26 ; 6 uses
  %.sroa.6.0..sroa_idx101.i.i67 = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.6.0.copyload.i.i68 = load i64, ptr %.sroa.6.0..sroa_idx101.i.i67, align 8, !noalias !4778 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !4778
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false), !noalias !4778
  call void @llvm.experimental.noalias.scope.decl(metadata !4781)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4782
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !4782
  store i64 1, ptr %i.bi, align 8, !noalias !4782
  %i.ur = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store i64 1, ptr %i.ur, align 8, !noalias !4782
  %i.us = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %.sroa.5.0.copyload.i.i66, ptr %i.us, align 8, !noalias !4782
  %.sroa.4.0..sroa_idx.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store i64 %.sroa.6.0.copyload.i.i68, ptr %.sroa.4.0..sroa_idx.i.i.i.i69, align 8, !noalias !4782
  %.sroa.5.0..sroa_idx.i.i.i.i70 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i.i70, align 8, !noalias !4782
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i71 = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.ut = load <2 x i64>, ptr %i.by, align 16, !noalias !4778
  store <2 x i64> %i.ut, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i71, align 8, !noalias !4782
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4783
  %i.uu = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4783 ; 19 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %bb.fw, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i73, !prof !31

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i.i.i170 unwind label %bb.fx, !noalias !4782

.noexc.i.i.i.i170:                                ; preds = %bb.fw
  unreachable

bb.fx:                                            ; preds = %bb.fw
  %i.uw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bi) #77
          to label %.thread.i.i.i79 unwind label %bb.fy, !noalias !4782

bb.fy:                                            ; preds = %bb.fx
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4782
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i73: ; preds = %bb.fv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.uu, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 56, i1 false), !noalias !4782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !4782
  store ptr %i.uu, ptr %i.bj, align 8, !noalias !4782
  %i.uy = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %.sroa.5.0.copyload.i.i66, ptr %i.uy, align 8, !noalias !4782
  %i.uz = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i64 %.sroa.6.0.copyload.i.i68, ptr %i.uz, align 8, !noalias !4782
  %i.va = ptrtoint ptr %.sroa.5.0.copyload.i.i66 to i64 ; 3 uses
  %i.vb = add i64 %i.va, 3
  %i.vc = and i64 %i.vb, -4                       ; 2 uses
  %i.vd = sub i64 %i.vc, %i.va                    ; 5 uses
  %i.ve = icmp ult i64 %i.vd, 4
  call void @llvm.assume(i1 %i.ve)
  %i.vf = icmp eq i64 %i.vc, %i.va
  %3 = ptrtoint ptr %i.uu to i64                  ; 5 uses
  br i1 %i.vf, label %bb.gd, label %.invoke.i.i.i.i.i74, !prof !24

bb.fz:                                            ; preds = %.invoke.i.i.i.i.i74
  %i.vg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vh = atomicrmw add ptr %i.uu, i64 -1 release, align 8, !noalias !4784
  %i.vi = icmp eq i64 %i.vh, 1
  br i1 %i.vi, label %bb.ga, label %.thread.i.i.i79

bb.ga:                                            ; preds = %bb.fz
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.thread.i.i.i79 unwind label %bb.gb, !noalias !4785

.invoke.i.i.i.i.i74:                              ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i73
  %i.vj = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.vk = load ptr, ptr %i.vj, align 8, !noalias !4786, !noundef !26
  %.not.i.i.i.i.i75 = icmp eq ptr %i.vk, null     ; 3 uses
  %.2.i.i.i.i.i76 = select i1 %.not.i.i.i.i.i75, ptr @395, ptr @397
  %.1.i.i.i.i.i77 = select i1 %.not.i.i.i.i.i75, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i.i78 = select i1 %.not.i.i.i.i.i75, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i.i78, ptr noundef nonnull %.1.i.i.i.i.i77, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i.i76) #74
          to label %.cont.i.i.i.i.i81 unwind label %bb.fz, !noalias !4786

.cont.i.i.i.i.i81:                                ; preds = %.invoke.i.i.i.i.i74
  unreachable

bb.gb:                                            ; preds = %bb.ga
  %i.vl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4785
  unreachable

bb.gc:                                            ; preds = %bb.gs
  %i.vm = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i79

bb.gd:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !4782
  %i.vn = getelementptr inbounds nuw i8, ptr %i.uu, i64 32
  %i.vo = load ptr, ptr %i.vn, align 8, !noalias !4787, !noundef !26
  %.not.i.i17.i.i.i82 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i17.i.i.i82, label %bb.ge, label %bb.gk

bb.ge:                                            ; preds = %bb.gd
  %i.vp = getelementptr inbounds nuw i8, ptr %i.uu, i64 16 ; 2 uses
  %i.vq = load ptr, ptr %i.vp, align 8, !noalias !4787, !nonnull !26, !noundef !26
  %.not23.i.i.i.i.i158 = icmp eq ptr %.sroa.5.0.copyload.i.i66, %i.vq
  br i1 %.not23.i.i.i.i.i158, label %bb.gf, label %bb.gk

bb.gf:                                            ; preds = %bb.ge
  %i.vr = getelementptr inbounds nuw i8, ptr %i.uu, i64 48
  %i.vs = load i64, ptr %i.vr, align 8, !noalias !4787, !noundef !26 ; 2 uses
  %i.vt = lshr i64 %i.vs, 2
  %i.vu = and i64 %i.vs, -9223372036854775805
  %or.cond.i.i.i.i.i159 = icmp eq i64 %i.vu, 0
  br i1 %or.cond.i.i.i.i.i159, label %bb.gg, label %bb.gk

bb.gg:                                            ; preds = %bb.gf
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uu, i64 40
  %i.vw = load i64, ptr %i.vv, align 8, !range !42, !noalias !4787, !noundef !26
  %i.vx = icmp eq i64 %i.vw, 4
  br i1 %i.vx, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.gg
  %i.vy = lshr i64 %.sroa.6.0.copyload.i.i68, 2
  %i.vz = cmpxchg ptr %i.uu, i64 1, i64 0 monotonic monotonic, align 8, !noalias !4788
  %.sroa.18.0.in.i.i.i.i.i.i.i160 = extractvalue { i64, i1 } %i.vz, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i160, label %bb.gi, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i161

bb.gi:                                            ; preds = %bb.gh
  fence acquire
  %.sroa.0.0.copyload.i.i.i.i.i164 = load ptr, ptr %i.vp, align 8, !noalias !4787 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i165 = getelementptr inbounds nuw i8, ptr %i.uu, i64 24
  %.sroa.6.0.copyload.i.i.i.i.i166 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i165, align 8, !noalias !4787 ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.wb = atomicrmw add ptr %i.wa, i64 -1 release, align 8, !noalias !4788
  %i.wc = icmp eq i64 %i.wb, 1
  br i1 %i.wc, label %bb.gj, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167

bb.gj:                                            ; preds = %bb.gi
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uu, i64 noundef 56, i64 noundef 8) #76, !noalias !4788
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167: ; preds = %bb.gj, %bb.gi
  %i.wd = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i164, null
  br i1 %i.wd, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i168, label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferfEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i168: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167
  %.pre.i.i.i169 = ptrtoint ptr %.sroa.6.0.copyload.i.i.i.i.i166 to i64
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i161

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i161: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i168, %bb.gh
  %.pre-phi.i.i.i162 = phi i64 [ %.pre.i.i.i169, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i168 ], [ %3, %bb.gh ]
  %.sroa.6.027.i.i.i.i.i163 = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i166, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i168 ], [ %i.uu, %bb.gh ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.027.i.i.i.i.i163) ]
  br label %bb.gk

bb.gk:                                            ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i161, %bb.gg, %bb.gf, %bb.ge, %bb.gd
  %.pre-phi.i.i.i.i83 = phi ptr [ %i.uu, %bb.gf ], [ %i.uu, %bb.gd ], [ %i.uu, %bb.ge ], [ %i.uu, %bb.gg ], [ %.sroa.6.027.i.i.i.i.i163, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i161 ] ; 2 uses
  %.sroa.4.1.ph.i.i.i.i84 = phi i64 [ %3, %bb.gf ], [ %3, %bb.gd ], [ %3, %bb.ge ], [ %3, %bb.gg ], [ %.pre-phi.i.i.i162, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i161 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !4789
  store i64 %.sroa.4.1.ph.i.i.i.i84, ptr %i.bh, align 8, !noalias !4789
  %.sroa.427.0..sroa_idx.i.i.i.i85 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.5.0.copyload.i.i66, ptr %.sroa.427.0..sroa_idx.i.i.i.i85, align 8, !noalias !4789
  %.sroa.5.0..sroa_idx.i18.i.i.i86 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %.sroa.6.0.copyload.i.i68, ptr %.sroa.5.0..sroa_idx.i18.i.i.i86, align 8, !noalias !4789
  %i.we = icmp samesign ugt i64 %i.vd, %.sroa.6.0.copyload.i.i68 ; 3 uses
  %i.wf = sub nuw nsw i64 %.sroa.6.0.copyload.i.i68, %i.vd ; 2 uses
  %i.wg = and i64 %i.wf, 3
  %i.wh = or i64 %i.wg, %i.vd
  %.sink5.i.i.i.i.i.i.i = select i1 %i.we, i64 %.sroa.6.0.copyload.i.i68, i64 %i.wh
  %or.cond.i.i.i.i.i.i = icmp eq i64 %.sink5.i.i.i.i.i.i.i, 0
  br i1 %or.cond.i.i.i.i.i.i, label %bb.go, label %bb.gl, !prof !4790

bb.gl:                                            ; preds = %bb.gk
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #74
          to label %.noexc.i.i.i.i.i87 unwind label %bb.gm, !noalias !4791

.noexc.i.i.i.i.i87:                               ; preds = %bb.gl
  unreachable

bb.gm:                                            ; preds = %bb.gq, %bb.gl
  %i.wi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wj = atomicrmw add ptr %.pre-phi.i.i.i.i83, i64 -1 release, align 8, !noalias !4792
  %i.wk = icmp eq i64 %i.wj, 1
  br i1 %i.wk, label %bb.gn, label %.thread.i.i.i79

bb.gn:                                            ; preds = %bb.gm
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %.thread.i.i.i79 unwind label %bb.gt, !noalias !4793

bb.go:                                            ; preds = %bb.gk
  %i.wl = lshr i64 %i.wf, 2                       ; 2 uses
  %.sink3.i.i.i.i.i.i.i = select i1 %i.we, i64 0, i64 %i.wl ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i66, i64 %i.vd
  %.sink4.i.i.i.i.i.i.i = select i1 %i.we, ptr inttoptr (i64 4 to ptr), ptr %i.wm
  %i.wn = shl nuw nsw i64 %.sink3.i.i.i.i.i.i.i, 2 ; 3 uses
  %i.wo = icmp eq i64 %.sink3.i.i.i.i.i.i.i, 0
  br i1 %i.wo, label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4794
  %i.wp = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.wn, i64 noundef range(i64 1, 9) 4) #76, !noalias !4794 ; 3 uses
  %i.wq = icmp eq ptr %i.wp, null
  br i1 %i.wq, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.wn) #74
          to label %.noexc3.i.i.i.i.i157 unwind label %bb.gm, !noalias !4791

.noexc3.i.i.i.i.i157:                             ; preds = %bb.gq
  unreachable

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.wp, ptr nonnull readonly align 4 %.sink4.i.i.i.i.i.i.i, i64 %i.wn, i1 false), !noalias !4795
  br label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.gr, %bb.go
  %.sroa.11.0.i.i.i = phi i64 [ %i.wl, %bb.gr ], [ 0, %bb.go ] ; 2 uses
  %.sroa.7.0.i.i.i88 = phi ptr [ %i.wp, %bb.gr ], [ inttoptr (i64 4 to ptr), %bb.go ]
  %i.wr = atomicrmw add ptr %.pre-phi.i.i.i.i83, i64 -1 release, align 8, !noalias !4796
  %i.ws = icmp eq i64 %i.wr, 1
  br i1 %i.ws, label %bb.gs, label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferfEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i

bb.gs:                                            ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferfEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i unwind label %bb.gc, !noalias !4797

bb.gt:                                            ; preds = %bb.gn
  %i.wt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4793
  unreachable

_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferfEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.gs, %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_infNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !4789
  br label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferfEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferfEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferfEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167
  %.sroa.11.1.i.i.i89 = phi i64 [ %.sroa.11.0.i.i.i, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferfEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.vy, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167 ] ; 8 uses
  %.sroa.7.1.i.i.i90 = phi ptr [ %.sroa.7.0.i.i.i88, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferfEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i164, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167 ] ; 4 uses
  %.sroa.0.1.i.i.i91 = phi i64 [ %.sroa.11.0.i.i.i, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferfEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.vt, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i167 ] ; 3 uses
  %.sroa.07.0.copyload.i.i.i92 = load i64, ptr %i.bx, align 8, !alias.scope !4781, !noalias !4778 ; 2 uses
  %.not.i.i.i93 = icmp eq i64 %.sroa.07.0.copyload.i.i.i92, 0
  br i1 %.not.i.i.i93, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferfEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i94 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !4797
  store i64 %.sroa.07.0.copyload.i.i.i92, ptr %i.bl, align 8, !noalias !4797
  %.sroa.6.0..sroa_idx9.i.i.i95 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx9.i.i.i95, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i94, i64 24, i1 false), !noalias !4798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !4797
  %i.wu = icmp samesign ult i64 %.sroa.11.1.i.i.i89, 2305843009213693952
  call void @llvm.assume(i1 %i.wu)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder15new_from_buffer(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.bk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bl, i64 noundef %.sroa.11.1.i.i.i89)
          to label %bb.gy unwind label %bb.gw, !noalias !4797

bb.gv:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecfEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferfEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.wv = icmp samesign ult i64 %.sroa.11.1.i.i.i89, 2305843009213693952
  call void @llvm.assume(i1 %i.wv)
  br label %bb.hz

bb.gw:                                            ; preds = %bb.gu
  %i.ww = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wx = icmp eq i64 %.sroa.0.1.i.i.i91, 0
  br i1 %i.wx, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i47, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.wy = shl nuw i64 %.sroa.0.1.i.i.i91, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i90) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1.i.i.i90, i64 noundef %i.wy, i64 noundef range(i64 1, -9223372036854775807) 4) #76, !noalias !4797
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i47

bb.gy:                                            ; preds = %bb.gu
  %.sroa.05.sroa.0.0.copyload.i.i.i96 = load i64, ptr %i.bk, align 8, !noalias !4797
  %.sroa.05.sroa.4.0..sroa_idx.i.i.i97 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.wz = load <2 x ptr>, ptr %.sroa.05.sroa.4.0..sroa_idx.i.i.i97, align 8, !noalias !4797
  %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i101 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.xa = load <2 x i64>, ptr %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i101, align 8, !noalias !4797
  %.sroa.46.0..sroa_idx.i.i.i105 = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.46.0.copyload.i.i.i106 = load i64, ptr %.sroa.46.0..sroa_idx.i.i.i105, align 8, !noalias !4797
  %.sroa.5.0..sroa_idx.i.i.i107 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.sroa.5.0.copyload.i.i.i108 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i107, align 8, !noalias !4797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !4797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !4797
  br label %bb.hz

bb.gz:                                            ; preds = %bb.ha
  %i.xb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4798
  unreachable

.thread.i.i.i79:                                  ; preds = %bb.gn, %bb.gm, %bb.gc, %bb.ga, %bb.fz, %bb.fx
  %eh.lpad-body.i.i.i80 = phi { ptr, i32 } [ %i.vg, %bb.fz ], [ %i.uw, %bb.fx ], [ %i.vg, %bb.ga ], [ %i.vm, %bb.gc ], [ %i.wi, %bb.gn ], [ %i.wi, %bb.gm ] ; 2 uses
  %i.xc = load i64, ptr %i.bx, align 8, !range !44, !alias.scope !4799, !noalias !4778, !noundef !26
  %i.xd = icmp eq i64 %i.xc, 0
  br i1 %i.xd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i47, label %bb.ha

bb.ha:                                            ; preds = %.thread.i.i.i79
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i47 unwind label %bb.gz, !noalias !4798

bb.hb:                                            ; preds = %bb.fu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.623.0.copyload.i.i57) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !4778
  store i64 1, ptr %i.bm, align 8, !noalias !4778
  %i.xe = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 1, ptr %i.xe, align 8, !noalias !4778
  %i.xf = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %.sroa.623.0.copyload.i.i57, ptr %i.xf, align 8, !noalias !4778
  %.sroa.462.0..sroa_idx.i.i172 = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i64 %.sroa.7.0.copyload.i.i58, ptr %.sroa.462.0..sroa_idx.i.i172, align 8, !noalias !4778
  %.sroa.5.0..sroa_idx.i40.i173 = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i40.i173, align 8, !noalias !4778
  %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i174 = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  store i64 %.sroa.020.0.copyload.i.i60, ptr %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i174, align 8, !noalias !4778
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i175 = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  store i64 %i.uj, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i175, align 8, !noalias !4778
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4800
  %i.xg = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4800 ; 3 uses
  %i.xh = icmp eq ptr %i.xg, null
  br i1 %i.xh, label %bb.hc, label %bb.hg, !prof !31

bb.hc:                                            ; preds = %bb.hb
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i209 unwind label %bb.hd, !noalias !4778

.noexc.i.i209:                                    ; preds = %bb.hc
  unreachable

bb.hd:                                            ; preds = %bb.hc
  %i.xi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bm) #77
          to label %.body.i.i208 unwind label %bb.he, !noalias !4778

bb.he:                                            ; preds = %bb.hd
  %i.xj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4778
  unreachable

.thread160.i.i176:                                ; preds = %bb.hg, %bb.fu
  %.sroa.5.sroa.4.0.i41.i177 = phi i64 [ %.sroa.7.0.copyload.i.i58, %bb.hg ], [ undef, %bb.fu ]
  %.sroa.5.sroa.0.0.i.i178 = phi ptr [ %.sroa.623.0.copyload.i.i57, %bb.hg ], [ undef, %bb.fu ]
  %.sroa.012.0.i.i179 = phi ptr [ %i.xg, %bb.hg ], [ null, %bb.fu ]
  %.sroa.015.sroa.0.0.copyload.i.i180 = load ptr, ptr %i.bw, align 8, !noalias !4778
  %.sroa.015.sroa.4.0..sroa_idx.i.i181 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.xk = load <2 x i64>, ptr %.sroa.015.sroa.4.0..sroa_idx.i.i181, align 8, !noalias !4778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !4778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !4778
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz), !noalias !4778
  br label %bb.hk

end_hunk_1
begin_hunk_2_@_RNvNtCs9JgWGBoX3PY_12lance_linalg7kernels19normalize_fsl_owned:bb.a
  store i64 %i.ado, ptr %.sroa.57.0..sroa_idx.i.i242, align 8, !alias.scope !4846, !noalias !4845
  %i.aec = getelementptr inbounds nuw i8, ptr %i.au, i64 48 ; 2 uses
  store ptr %i.adq, ptr %i.aec, align 8, !alias.scope !4846, !noalias !4845
  %.sroa.5.0..sroa_idx.i.i243 = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i237, ptr %.sroa.5.0..sroa_idx.i.i243, align 8, !alias.scope !4846, !noalias !4845
  %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i244 = getelementptr inbounds nuw i8, ptr %i.au, i64 64
  store <2 x i64> %i.adz, ptr %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i244, align 8, !alias.scope !4846, !noalias !4845
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i246 = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  store <2 x i64> %i.aea, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i246, align 8, !alias.scope !4846, !noalias !4845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !4845
  %i.aed = load <2 x ptr>, ptr %i.ax, align 16, !noalias !4845
  %i.aee = load ptr, ptr %i.ax, align 16, !noalias !4845, !nonnull !26, !noundef !26
  store <2 x ptr> %i.aed, ptr %i.at, align 16, !noalias !4845
  %i.aef = atomicrmw add ptr %i.aee, i64 -1 release, align 8, !noalias !4850
  %i.aeg = icmp eq i64 %i.aef, 1
  br i1 %i.aeg, label %bb.jz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i248

bb.jz:                                            ; preds = %bb.jy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.at)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i248 unwind label %bb.nz, !noalias !4845

.thread139.i252:                                  ; preds = %bb.nv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i409, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i248
  %.sroa.018.2.ph.i253 = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i248 ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i409 ], [ 0, %bb.nv ] ; 2 uses
  %lpad.thr_comm.i254 = landingpad { ptr, i32 }
          cleanup
  br label %.thread130.i255

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i248: ; preds = %bb.jz, %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !4845
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i222)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !4851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !noalias !4845
  %.sroa.499.0.copyload.i249 = load i64, ptr %.sroa.57.0..sroa_idx.i.i242, align 8, !noalias !4845 ; 3 uses
  %.sroa.5102.0..sroa_idx103.i250 = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5102.0..sroa_idx103.i250, ptr noundef nonnull align 8 dereferenceable(48) %i.aec, i64 48, i1 false), !noalias !4845
  call void @llvm.experimental.noalias.scope.decl(metadata !4852)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4845
  %i.aeh = lshr i64 %.sroa.499.0.copyload.i249, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4851
  %.sroa.499.0..sroa_idx100.i251 = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i64 %.sroa.499.0.copyload.i249, ptr %.sroa.499.0..sroa_idx100.i251, align 8, !noalias !4853
  invoke fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float64TypeEE4fromCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.ag, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.af)
          to label %.noexc42.i259 unwind label %.thread139.i252, !noalias !4845

.noexc42.i259:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !4851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !4851
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ag, i64 88 ; 2 uses
  %i.aej = load ptr, ptr %i.aei, align 8, !noalias !4851, !noundef !26
  %.not.i39.i260 = icmp eq ptr %i.aej, null
  br i1 %.not.i39.i260, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %.noexc42.i259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4851
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer6sliced(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.aei)
          to label %bb.kd unwind label %.thread.i.i261, !noalias !4851

bb.kb:                                            ; preds = %.noexc42.i259
  store ptr null, ptr %i.ae, align 8, !noalias !4851
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kd, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !4851
  %i.aek = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ael = load i64, ptr %i.aek, align 8, !noalias !4851, !noundef !26
  %.not81.i.i264 = icmp eq i64 %i.ael, 0
  br i1 %.not81.i.i264, label %bb.kf, label %bb.ke

.thread.i.i261:                                   ; preds = %bb.ka
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %.thread189.i.i262

bb.kd:                                            ; preds = %bb.ka
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !4851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4851
  br label %bb.kc

bb.ke:                                            ; preds = %bb.kc
  %i.aen = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aeo = load ptr, ptr %i.aen, align 8, !noalias !4851, !nonnull !26, !noundef !26
  %i.aep = getelementptr inbounds nuw i8, ptr %i.ag, i64 80
  %i.aeq = load i64, ptr %i.aep, align 8, !noalias !4851, !noundef !26
  %i.aer = shl i64 %i.aeq, 3
  %i.aes = and i64 %.sroa.499.0.copyload.i249, -8
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aeo, i64 noundef %i.aer, i64 noundef %i.aes)
          to label %bb.kh unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i265, !noalias !4851

bb.kf:                                            ; preds = %bb.kc
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #74
          to label %bb.kg unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i265, !noalias !4851

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i271: ; preds = %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %.thread172.i.i454, %bb.mc, %bb.mb, %bb.ly, %.body.i.i488, %bb.lt, %.thread.i.i.i303, %bb.lq, %bb.lp
  %.sroa.040.0.i.i272 = phi i1 [ %.not82.i.i275, %bb.mi ], [ %.sroa.040.2.i.i270, %bb.mk ], [ %.sroa.040.2.i.i270, %bb.ml ], [ %.not82.i.i275, %bb.lp ], [ %.not82.i.i275, %bb.lq ], [ %.not82.i.i275, %.thread.i.i.i303 ], [ %.not82.i.i275, %bb.lt ], [ %.not82.i.i275, %.body.i.i488 ], [ %.not82.i.i275, %bb.ly ], [ %.not82.i.i275, %bb.mc ], [ %.not82.i.i275, %bb.mb ], [ %.not82.i.i275, %.thread172.i.i454 ], [ %.not82.i.i275, %bb.mj ], [ %.not82.i.i275, %bb.mh ]
  %.pn85.pn.i.i273 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i453, %bb.mi ], [ %i.ait, %bb.mk ], [ %i.ait, %bb.ml ], [ %i.ahl, %bb.lp ], [ %i.ahl, %bb.lq ], [ %eh.lpad-body.i.i.i304, %.thread.i.i.i303 ], [ %eh.lpad-body.i.i.i304, %bb.lt ], [ %i.ahx, %.body.i.i488 ], [ %i.ahx, %bb.ly ], [ %i.aie, %bb.mc ], [ %i.aie, %bb.mb ], [ %lpad.thr_comm.i.i455, %.thread172.i.i454 ], [ %lpad.thr_comm.split-lp.i.i453, %bb.mj ], [ %lpad.thr_comm.split-lp.i.i453, %bb.mh ] ; 2 uses
  %i.aet = load ptr, ptr %i.ae, align 8, !noalias !4851, !noundef !26 ; 2 uses
  %i.aeu = icmp ne ptr %i.aet, null
  %or.cond.i.i274 = and i1 %.sroa.040.0.i.i272, %i.aeu
  br i1 %or.cond.i.i274, label %bb.mm, label %.thread130.thread.i224

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i265: ; preds = %bb.kf, %bb.ke
  %i.aev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aew = load ptr, ptr %i.ae, align 8, !noalias !4851, !noundef !26 ; 2 uses
  %.not192.i.i266 = icmp eq ptr %i.aew, null
  br i1 %.not192.i.i266, label %.thread189.i.i262, label %bb.mm

bb.kg:                                            ; preds = %bb.kf
  unreachable

bb.kh:                                            ; preds = %bb.ke
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !4851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 8 dereferenceable(136) %i.ag, i64 136, i1 false), !noalias !4851
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(136) %i.ac)
          to label %bb.ki unwind label %bb.mk, !noalias !4851

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !4851
  %i.aex = load ptr, ptr %i.ae, align 8, !noalias !4851, !noundef !26
  %.not82.i.i275 = icmp eq ptr %i.aex, null       ; 13 uses
  br i1 %.not82.i.i275, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !4851
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ae)
          to label %bb.kl unwind label %bb.mk, !noalias !4851

bb.kk:                                            ; preds = %bb.kl, %bb.ki
  %.sroa.623.0.copyload.i.i281 = phi ptr [ undef, %bb.ki ], [ %.sroa.444.sroa.0.0.copyload.i.i278, %bb.kl ] ; 4 uses
  %.sroa.7.0.copyload.i.i282 = phi i64 [ undef, %bb.ki ], [ %.sroa.444.sroa.4.0.copyload.i.i280, %bb.kl ] ; 3 uses
  %.sroa.6.sroa.0.0.i.i283 = phi ptr [ undef, %bb.ki ], [ %.sroa.043.0.copyload.i.i276, %bb.kl ] ; 2 uses
  %.sroa.020.0.copyload.i.i284 = phi i64 [ 0, %bb.ki ], [ %i.aez, %bb.kl ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !4851
  store i64 %.sroa.020.0.copyload.i.i284, ptr %i.aa, align 8, !noalias !4851
  %.sroa.6.0..sroa_idx5.i.i285 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.6.sroa.0.0.i.i283, ptr %.sroa.6.0..sroa_idx5.i.i285, align 8, !noalias !4851
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i286 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %.sroa.623.0.copyload.i.i281, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i286, align 8, !noalias !4851
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i287 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %.sroa.7.0.copyload.i.i282, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i287, align 8, !noalias !4851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !4851
  %i.aey = ptrtoint ptr %.sroa.6.sroa.0.0.i.i283 to i64
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.z, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ad)
          to label %bb.km unwind label %bb.mb, !noalias !4851

bb.kl:                                            ; preds = %bb.kj
  %i.aez = load i64, ptr %i.ab, align 8, !range !44, !noalias !4851, !noundef !26 ; 2 uses
  %i.afa = icmp eq i64 %i.aez, 0
  %i.afb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.043.0.copyload.i.i276 = load ptr, ptr %i.afb, align 8, !noalias !4851 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i277 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.444.sroa.0.0.copyload.i.i278 = load ptr, ptr %.sroa.444.0..sroa_idx.i.i277, align 8, !noalias !4851 ; 2 uses
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i279 = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.444.sroa.4.0.copyload.i.i280 = load i64, ptr %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i279, align 8, !noalias !4851 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !4851
  br i1 %i.afa, label %.thread141.i.i490, label %bb.kk

.thread141.i.i490:                                ; preds = %bb.kl
  %.sroa.0115.0.copyload.i.i491 = load ptr, ptr %i.ad, align 8, !noalias !4851
  %.sroa.4116.0..sroa_idx.i.i492 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.afc = load <2 x i64>, ptr %.sroa.4116.0..sroa_idx.i.i492, align 8, !noalias !4851
  br label %bb.md

bb.km:                                            ; preds = %bb.kk
  %i.afd = load i64, ptr %i.z, align 16, !range !44, !noalias !4851, !noundef !26
  %i.afe = icmp eq i64 %i.afd, 0
  br i1 %i.afe, label %bb.kn, label %bb.ko

bb.kn:                                            ; preds = %bb.km
  %i.aff = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !4851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.aff, i64 24, i1 false), !noalias !4851
  %.not83.i.i426 = icmp eq i64 %.sroa.020.0.copyload.i.i284, 0
  br i1 %.not83.i.i426, label %.thread160.i.i431, label %bb.lu

bb.ko:                                            ; preds = %bb.km
  %.sroa.5.0..sroa_idx100.i.i289 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.5.0.copyload.i.i290 = load ptr, ptr %.sroa.5.0..sroa_idx100.i.i289, align 16, !noalias !4851, !nonnull !26, !noundef !26 ; 6 uses
  %.sroa.6.0..sroa_idx101.i.i291 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %.sroa.6.0.copyload.i.i292 = load i64, ptr %.sroa.6.0..sroa_idx101.i.i291, align 8, !noalias !4851 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !4851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !4851
  call void @llvm.experimental.noalias.scope.decl(metadata !4854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4855
  store i64 1, ptr %i.j, align 8, !noalias !4855
  %i.afg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 1, ptr %i.afg, align 8, !noalias !4855
  %i.afh = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %.sroa.5.0.copyload.i.i290, ptr %i.afh, align 8, !noalias !4855
  %.sroa.4.0..sroa_idx.i.i.i.i293 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 %.sroa.6.0.copyload.i.i292, ptr %.sroa.4.0..sroa_idx.i.i.i.i293, align 8, !noalias !4855
  %.sroa.5.0..sroa_idx.i.i.i.i294 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i.i294, align 8, !noalias !4855
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i295 = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.afi = load <2 x i64>, ptr %i.z, align 16, !noalias !4851
  store <2 x i64> %i.afi, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i295, align 8, !noalias !4855
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4856
  %i.afj = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4856 ; 19 uses
  %i.afk = icmp eq ptr %i.afj, null
  br i1 %i.afk, label %bb.kp, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i297, !prof !31

bb.kp:                                            ; preds = %bb.ko
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i.i.i425 unwind label %bb.kq, !noalias !4855

.noexc.i.i.i.i425:                                ; preds = %bb.kp
  unreachable

bb.kq:                                            ; preds = %bb.kp
  %i.afl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #77
          to label %.thread.i.i.i303 unwind label %bb.kr, !noalias !4855

bb.kr:                                            ; preds = %bb.kq
  %i.afm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4855
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i297: ; preds = %bb.ko
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.afj, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false), !noalias !4855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4855
  store ptr %i.afj, ptr %i.k, align 8, !noalias !4855
  %i.afn = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.5.0.copyload.i.i290, ptr %i.afn, align 8, !noalias !4855
  %i.afo = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.6.0.copyload.i.i292, ptr %i.afo, align 8, !noalias !4855
  %i.afp = ptrtoint ptr %.sroa.5.0.copyload.i.i290 to i64 ; 3 uses
  %i.afq = add i64 %i.afp, 7
  %i.afr = and i64 %i.afq, -8                     ; 2 uses
  %i.afs = sub i64 %i.afr, %i.afp                 ; 5 uses
  %i.aft = icmp ult i64 %i.afs, 8
  call void @llvm.assume(i1 %i.aft)
  %i.afu = icmp eq i64 %i.afr, %i.afp
  %4 = ptrtoint ptr %i.afj to i64                 ; 5 uses
  br i1 %i.afu, label %bb.kw, label %.invoke.i.i.i.i.i298, !prof !24

bb.ks:                                            ; preds = %.invoke.i.i.i.i.i298
  %i.afv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afw = atomicrmw add ptr %i.afj, i64 -1 release, align 8, !noalias !4857
  %i.afx = icmp eq i64 %i.afw, 1
  br i1 %i.afx, label %bb.kt, label %.thread.i.i.i303

bb.kt:                                            ; preds = %bb.ks
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.thread.i.i.i303 unwind label %bb.ku, !noalias !4858

.invoke.i.i.i.i.i298:                             ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i297
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afj, i64 32
  %i.afz = load ptr, ptr %i.afy, align 8, !noalias !4859, !noundef !26
  %.not.i.i.i.i.i299 = icmp eq ptr %i.afz, null   ; 3 uses
  %.2.i.i.i.i.i300 = select i1 %.not.i.i.i.i.i299, ptr @395, ptr @397
  %.1.i.i.i.i.i301 = select i1 %.not.i.i.i.i.i299, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i.i302 = select i1 %.not.i.i.i.i.i299, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i.i302, ptr noundef nonnull %.1.i.i.i.i.i301, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i.i300) #74
          to label %.cont.i.i.i.i.i305 unwind label %bb.ks, !noalias !4859

.cont.i.i.i.i.i305:                               ; preds = %.invoke.i.i.i.i.i298
  unreachable

bb.ku:                                            ; preds = %bb.kt
  %i.aga = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4858
  unreachable

bb.kv:                                            ; preds = %bb.ll
  %i.agb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i303

bb.kw:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4855
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afj, i64 32
  %i.agd = load ptr, ptr %i.agc, align 8, !noalias !4860, !noundef !26
  %.not.i.i17.i.i.i306 = icmp eq ptr %i.agd, null
  br i1 %.not.i.i17.i.i.i306, label %bb.kx, label %bb.ld

bb.kx:                                            ; preds = %bb.kw
  %i.age = getelementptr inbounds nuw i8, ptr %i.afj, i64 16 ; 2 uses
  %i.agf = load ptr, ptr %i.age, align 8, !noalias !4860, !nonnull !26, !noundef !26
  %.not23.i.i.i.i.i413 = icmp eq ptr %.sroa.5.0.copyload.i.i290, %i.agf
  br i1 %.not23.i.i.i.i.i413, label %bb.ky, label %bb.ld

bb.ky:                                            ; preds = %bb.kx
  %i.agg = getelementptr inbounds nuw i8, ptr %i.afj, i64 48
  %i.agh = load i64, ptr %i.agg, align 8, !noalias !4860, !noundef !26 ; 2 uses
  %i.agi = lshr i64 %i.agh, 3
  %i.agj = and i64 %i.agh, -9223372036854775801
  %or.cond.i.i.i.i.i414 = icmp eq i64 %i.agj, 0
  br i1 %or.cond.i.i.i.i.i414, label %bb.kz, label %bb.ld

bb.kz:                                            ; preds = %bb.ky
  %i.agk = getelementptr inbounds nuw i8, ptr %i.afj, i64 40
  %i.agl = load i64, ptr %i.agk, align 8, !range !42, !noalias !4860, !noundef !26
  %i.agm = icmp eq i64 %i.agl, 8
  br i1 %i.agm, label %bb.la, label %bb.ld

bb.la:                                            ; preds = %bb.kz
  %i.agn = lshr i64 %.sroa.6.0.copyload.i.i292, 3
  %i.ago = cmpxchg ptr %i.afj, i64 1, i64 0 monotonic monotonic, align 8, !noalias !4861
  %.sroa.18.0.in.i.i.i.i.i.i.i415 = extractvalue { i64, i1 } %i.ago, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i415, label %bb.lb, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i416

bb.lb:                                            ; preds = %bb.la
  fence acquire
  %.sroa.0.0.copyload.i.i.i.i.i419 = load ptr, ptr %i.age, align 8, !noalias !4860 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i420 = getelementptr inbounds nuw i8, ptr %i.afj, i64 24
  %.sroa.6.0.copyload.i.i.i.i.i421 = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i420, align 8, !noalias !4860 ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.afj, i64 8
  %i.agq = atomicrmw add ptr %i.agp, i64 -1 release, align 8, !noalias !4861
  %i.agr = icmp eq i64 %i.agq, 1
  br i1 %i.agr, label %bb.lc, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422

bb.lc:                                            ; preds = %bb.lb
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afj, i64 noundef 56, i64 noundef 8) #76, !noalias !4861
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422: ; preds = %bb.lc, %bb.lb
  %i.ags = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i419, null
  br i1 %i.ags, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i423, label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferdEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i423: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422
  %.pre.i.i.i424 = ptrtoint ptr %.sroa.6.0.copyload.i.i.i.i.i421 to i64
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i416

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i416: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i423, %bb.la
  %.pre-phi.i.i.i417 = phi i64 [ %.pre.i.i.i424, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i423 ], [ %4, %bb.la ]
  %.sroa.6.027.i.i.i.i.i418 = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i421, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i423 ], [ %i.afj, %bb.la ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.027.i.i.i.i.i418) ]
  br label %bb.ld

bb.ld:                                            ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i416, %bb.kz, %bb.ky, %bb.kx, %bb.kw
  %.pre-phi.i.i.i.i307 = phi ptr [ %i.afj, %bb.ky ], [ %i.afj, %bb.kw ], [ %i.afj, %bb.kx ], [ %i.afj, %bb.kz ], [ %.sroa.6.027.i.i.i.i.i418, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i416 ] ; 2 uses
  %.sroa.4.1.ph.i.i.i.i308 = phi i64 [ %4, %bb.ky ], [ %4, %bb.kw ], [ %4, %bb.kx ], [ %4, %bb.kz ], [ %.pre-phi.i.i.i417, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i416 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4862
  store i64 %.sroa.4.1.ph.i.i.i.i308, ptr %i.i, align 8, !noalias !4862
  %.sroa.427.0..sroa_idx.i.i.i.i309 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i290, ptr %.sroa.427.0..sroa_idx.i.i.i.i309, align 8, !noalias !4862
  %.sroa.5.0..sroa_idx.i18.i.i.i310 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i292, ptr %.sroa.5.0..sroa_idx.i18.i.i.i310, align 8, !noalias !4862
  %i.agt = icmp samesign ugt i64 %i.afs, %.sroa.6.0.copyload.i.i292 ; 3 uses
  %i.agu = sub nuw nsw i64 %.sroa.6.0.copyload.i.i292, %i.afs ; 2 uses
  %i.agv = and i64 %i.agu, 7
  %i.agw = or i64 %i.agv, %i.afs
  %.sink5.i.i.i.i.i.i.i311 = select i1 %i.agt, i64 %.sroa.6.0.copyload.i.i292, i64 %i.agw
  %or.cond.i.i.i.i.i.i312 = icmp eq i64 %.sink5.i.i.i.i.i.i.i311, 0
  br i1 %or.cond.i.i.i.i.i.i312, label %bb.lh, label %bb.le, !prof !4790

bb.le:                                            ; preds = %bb.ld
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #74
          to label %.noexc.i.i.i.i.i313 unwind label %bb.lf, !noalias !4863

.noexc.i.i.i.i.i313:                              ; preds = %bb.le
  unreachable

bb.lf:                                            ; preds = %bb.lj, %bb.le
  %i.agx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agy = atomicrmw add ptr %.pre-phi.i.i.i.i307, i64 -1 release, align 8, !noalias !4864
  %i.agz = icmp eq i64 %i.agy, 1
  br i1 %i.agz, label %bb.lg, label %.thread.i.i.i303

bb.lg:                                            ; preds = %bb.lf
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread.i.i.i303 unwind label %bb.lm, !noalias !4865

bb.lh:                                            ; preds = %bb.ld
  %i.aha = lshr i64 %i.agu, 3                     ; 2 uses
  %.sink3.i.i.i.i.i.i.i314 = select i1 %i.agt, i64 0, i64 %i.aha ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i290, i64 %i.afs
  %.sink4.i.i.i.i.i.i.i315 = select i1 %i.agt, ptr inttoptr (i64 8 to ptr), ptr %i.ahb
  %i.ahc = shl nuw nsw i64 %.sink3.i.i.i.i.i.i.i314, 3 ; 3 uses
  %i.ahd = icmp eq i64 %.sink3.i.i.i.i.i.i.i314, 0
  br i1 %i.ahd, label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4866
  %i.ahe = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ahc, i64 noundef range(i64 1, 9) 8) #76, !noalias !4866 ; 3 uses
  %i.ahf = icmp eq ptr %i.ahe, null
  br i1 %i.ahf, label %bb.lj, label %bb.lk

bb.lj:                                            ; preds = %bb.li
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ahc) #74
          to label %.noexc3.i.i.i.i.i412 unwind label %bb.lf, !noalias !4863

.noexc3.i.i.i.i.i412:                             ; preds = %bb.lj
  unreachable

bb.lk:                                            ; preds = %bb.li
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ahe, ptr nonnull readonly align 8 %.sink4.i.i.i.i.i.i.i315, i64 %i.ahc, i1 false), !noalias !4867
  br label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.lk, %bb.lh
  %.sroa.11.0.i.i.i316 = phi i64 [ %i.aha, %bb.lk ], [ 0, %bb.lh ] ; 2 uses
  %.sroa.7.0.i.i.i317 = phi ptr [ %i.ahe, %bb.lk ], [ inttoptr (i64 8 to ptr), %bb.lh ]
  %i.ahg = atomicrmw add ptr %.pre-phi.i.i.i.i307, i64 -1 release, align 8, !noalias !4868
  %i.ahh = icmp eq i64 %i.ahg, 1
  br i1 %i.ahh, label %bb.ll, label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferdEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i

bb.ll:                                            ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferdEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i unwind label %bb.kv, !noalias !4869

bb.lm:                                            ; preds = %bb.lg
  %i.ahi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4865
  unreachable

_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferdEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.ll, %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_indNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4862
  br label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferdEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferdEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferdEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422
  %.sroa.11.1.i.i.i318 = phi i64 [ %.sroa.11.0.i.i.i316, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferdEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.agn, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422 ] ; 8 uses
  %.sroa.7.1.i.i.i319 = phi ptr [ %.sroa.7.0.i.i.i317, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferdEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i419, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422 ] ; 4 uses
  %.sroa.0.1.i.i.i320 = phi i64 [ %.sroa.11.0.i.i.i316, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferdEE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.agi, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i422 ] ; 3 uses
  %.sroa.07.0.copyload.i.i.i321 = load i64, ptr %i.y, align 8, !alias.scope !4854, !noalias !4851 ; 2 uses
  %.not.i.i.i322 = icmp eq i64 %.sroa.07.0.copyload.i.i.i321, 0
  br i1 %.not.i.i.i322, label %bb.lo, label %bb.ln

bb.ln:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferdEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i323 = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4869
  store i64 %.sroa.07.0.copyload.i.i.i321, ptr %i.m, align 8, !noalias !4869
  %.sroa.6.0..sroa_idx9.i.i.i324 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx9.i.i.i324, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i323, i64 24, i1 false), !noalias !4870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4869
  %i.ahj = icmp samesign ult i64 %.sroa.11.1.i.i.i318, 1152921504606846976
  call void @llvm.assume(i1 %i.ahj)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder15new_from_buffer(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.m, i64 noundef %.sroa.11.1.i.i.i318)
          to label %bb.lr unwind label %bb.lp, !noalias !4869

bb.lo:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecdEINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferdEE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.ahk = icmp samesign ult i64 %.sroa.11.1.i.i.i318, 1152921504606846976
  call void @llvm.assume(i1 %i.ahk)
  br label %bb.ms

bb.lp:                                            ; preds = %bb.ln
  %i.ahl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahm = icmp eq i64 %.sroa.0.1.i.i.i320, 0
  br i1 %i.ahm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i271, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.ahn = shl nuw i64 %.sroa.0.1.i.i.i320, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i319) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1.i.i.i319, i64 noundef %i.ahn, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4869
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i271

bb.lr:                                            ; preds = %bb.ln
  %.sroa.05.sroa.0.0.copyload.i.i.i325 = load i64, ptr %i.l, align 8, !noalias !4869
  %.sroa.05.sroa.4.0..sroa_idx.i.i.i326 = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aho = load <2 x ptr>, ptr %.sroa.05.sroa.4.0..sroa_idx.i.i.i326, align 8, !noalias !4869
  %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i330 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ahp = load <2 x i64>, ptr %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i330, align 8, !noalias !4869
  %.sroa.46.0..sroa_idx.i.i.i334 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.46.0.copyload.i.i.i335 = load i64, ptr %.sroa.46.0..sroa_idx.i.i.i334, align 8, !noalias !4869
  %.sroa.5.0..sroa_idx.i.i.i336 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.5.0.copyload.i.i.i337 = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i336, align 8, !noalias !4869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4869
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !4869
  br label %bb.ms

bb.ls:                                            ; preds = %bb.lt
  %i.ahq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4870
  unreachable

.thread.i.i.i303:                                 ; preds = %bb.lg, %bb.lf, %bb.kv, %bb.kt, %bb.ks, %bb.kq
  %eh.lpad-body.i.i.i304 = phi { ptr, i32 } [ %i.afv, %bb.ks ], [ %i.afl, %bb.kq ], [ %i.afv, %bb.kt ], [ %i.agb, %bb.kv ], [ %i.agx, %bb.lg ], [ %i.agx, %bb.lf ] ; 2 uses
  %i.ahr = load i64, ptr %i.y, align 8, !range !44, !alias.scope !4871, !noalias !4851, !noundef !26
  %i.ahs = icmp eq i64 %i.ahr, 0
  br i1 %i.ahs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i271, label %bb.lt

bb.lt:                                            ; preds = %.thread.i.i.i303
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i271 unwind label %bb.ls, !noalias !4870

bb.lu:                                            ; preds = %bb.kn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.623.0.copyload.i.i281) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4851
  store i64 1, ptr %i.n, align 8, !noalias !4851
  %i.aht = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.aht, align 8, !noalias !4851
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.sroa.623.0.copyload.i.i281, ptr %i.ahu, align 8, !noalias !4851
  %.sroa.462.0..sroa_idx.i.i427 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 %.sroa.7.0.copyload.i.i282, ptr %.sroa.462.0..sroa_idx.i.i427, align 8, !noalias !4851
  %.sroa.5.0..sroa_idx.i40.i428 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i40.i428, align 8, !noalias !4851
  %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i429 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %.sroa.020.0.copyload.i.i284, ptr %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i429, align 8, !noalias !4851
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i430 = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %i.aey, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i430, align 8, !noalias !4851
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4872
  %i.ahv = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4872 ; 3 uses
  %i.ahw = icmp eq ptr %i.ahv, null
  br i1 %i.ahw, label %bb.lv, label %bb.lz, !prof !31

bb.lv:                                            ; preds = %bb.lu
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i489 unwind label %bb.lw, !noalias !4851

.noexc.i.i489:                                    ; preds = %bb.lv
  unreachable

bb.lw:                                            ; preds = %bb.lv
  %i.ahx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.n) #77
          to label %.body.i.i488 unwind label %bb.lx, !noalias !4851

bb.lx:                                            ; preds = %bb.lw
  %i.ahy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4851
  unreachable

.thread160.i.i431:                                ; preds = %bb.lz, %bb.kn
  %.sroa.5.sroa.4.0.i41.i432 = phi i64 [ %.sroa.7.0.copyload.i.i282, %bb.lz ], [ undef, %bb.kn ]
  %.sroa.5.sroa.0.0.i.i433 = phi ptr [ %.sroa.623.0.copyload.i.i281, %bb.lz ], [ undef, %bb.kn ]
  %.sroa.012.0.i.i434 = phi ptr [ %i.ahv, %bb.lz ], [ null, %bb.kn ]
  %.sroa.015.sroa.0.0.copyload.i.i435 = load ptr, ptr %i.x, align 8, !noalias !4851
  %.sroa.015.sroa.4.0..sroa_idx.i.i436 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ahz = load <2 x i64>, ptr %.sroa.015.sroa.4.0..sroa_idx.i.i436, align 8, !noalias !4851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !4851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !4851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !4851
  br label %bb.md

.body.i.i488:                                     ; preds = %bb.lw
  call void @llvm.experimental.noalias.scope.decl(metadata !4873)
end_hunk_2
