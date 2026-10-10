Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 146
begin_hunk_0_@_RNvNtCs9JgWGBoX3PY_12lance_linalg7kernels19normalize_fsl_owned:bb.a

bb.n:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %bb.ck, %bb.h
  unreachable

bb.p:                                             ; preds = %bb.m, %bb.j
  %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i = phi ptr [ %i.gk, %bb.m ], [ undef, %bb.j ]
  %i.gp = phi <2 x i64> [ %i.gm, %bb.m ], [ undef, %bb.j ]
  %i.gq = phi <2 x i64> [ %i.go, %bb.m ], [ undef, %bb.j ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.ef, i64 24, i1 false), !noalias !4688
  %i.gr = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store ptr %i.fy, ptr %i.gr, align 8, !alias.scope !4684, !noalias !4688
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  store ptr %i.gc, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !alias.scope !4684, !noalias !4688
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 40 ; 2 uses
  store i64 %i.ge, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !alias.scope !4684, !noalias !4688
  %i.gs = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 2 uses
  store ptr %i.gg, ptr %i.gs, align 8, !alias.scope !4684, !noalias !4688
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 56
  store ptr %.sroa.5.sroa.0.sroa.0.sroa.0.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !4684, !noalias !4688
  %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  store <2 x i64> %i.gp, ptr %.sroa.5.sroa.0.sroa.0.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !4684, !noalias !4688
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.es, i64 80
  store <2 x i64> %i.gq, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !4684, !noalias !4688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !4686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.er), !noalias !4683
  %i.gt = load <2 x ptr>, ptr %i.ev, align 16, !noalias !4683
  %i.gu = load ptr, ptr %i.ev, align 16, !noalias !4683, !nonnull !18, !noundef !18
  store <2 x ptr> %i.gt, ptr %i.er, align 16, !noalias !4683
  %i.gv = atomicrmw sub ptr %i.gu, i64 1 release, align 8, !noalias !4689
  %i.gw = icmp eq i64 %i.gv, 1
  br i1 %i.gw, label %bb.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.er)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i unwind label %bb.ep, !noalias !4683

.thread145.i:                                     ; preds = %bb.el, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i
  %.sroa.018.2.ph.i = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECs9JgWGBoX3PY_12lance_linalg.exit4.i.i ], [ 0, %bb.el ] ; 2 uses
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread136.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.er), !noalias !4683
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !4690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %i.es, i64 40, i1 false), !noalias !4683
  %.sroa.4105.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !4683 ; 3 uses
  %.sroa.5108.0..sroa_idx109.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5108.0..sroa_idx109.i, ptr noundef nonnull align 8 dereferenceable(48) %i.gs, i64 48, i1 false), !noalias !4683
  call void @llvm.experimental.noalias.scope.decl(metadata !4691)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dq), !noalias !4683
  %i.gx = lshr i64 %.sroa.4105.0.copyload.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !4690
  %.sroa.4105.0..sroa_idx106.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 40
  store i64 %.sroa.4105.0.copyload.i, ptr %.sroa.4105.0..sroa_idx106.i, align 8, !noalias !4692
  invoke fastcc void @_RNvXs0_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_14PrimitiveArrayNtNtB9_5types11Float16TypeEE4fromCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.ee, ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.ed)
          to label %.noexc42.i unwind label %.thread145.i, !noalias !4683

.noexc42.i:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECs9JgWGBoX3PY_12lance_linalg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !noalias !4690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !4690
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ee, i64 88 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !4690, !noundef !18
  %.not.i39.i = icmp eq ptr %i.gz, null
  br i1 %.not.i39.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.noexc42.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !4690
  invoke void @_RNvMs_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7booleanNtB4_13BooleanBuffer6sliced(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.gy)
          to label %bb.u unwind label %.thread.i.i, !noalias !4690

bb.s:                                             ; preds = %.noexc42.i
  store ptr null, ptr %i.ec, align 8, !noalias !4690
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !4690
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !4690, !noundef !18
  %.not81.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not81.i.i, label %bb.w, label %bb.v

.thread.i.i:                                      ; preds = %bb.r
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %.thread191.i.i

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !noalias !4690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm), !noalias !4690
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !noalias !4690, !nonnull !18, !noundef !18
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ee, i64 80
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !4690, !noundef !18
  %i.hh = shl i64 %i.hg, 1
  %i.hi = and i64 %.sroa.4105.0.copyload.i, -2
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.eb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.he, i64 noundef %i.hh, i64 noundef %i.hi)
          to label %bb.y unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i, !noalias !4690

bb.w:                                             ; preds = %bb.t
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #74
          to label %bb.x unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i, !noalias !4690

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i: ; preds = %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %.thread172.i.i, %bb.bt, %bb.bs, %bb.bp, %.body.i.i, %bb.bk, %.thread.i.i.i, %bb.bh, %bb.bg
  %.sroa.040.0.i.i = phi i1 [ %.not82.i.i, %bb.bz ], [ %.sroa.040.2.i.i, %bb.cb ], [ %.sroa.040.2.i.i, %bb.cc ], [ %.not82.i.i, %bb.bg ], [ %.not82.i.i, %bb.bh ], [ %.not82.i.i, %.thread.i.i.i ], [ %.not82.i.i, %bb.bk ], [ %.not82.i.i, %.body.i.i ], [ %.not82.i.i, %bb.bp ], [ %.not82.i.i, %bb.bt ], [ %.not82.i.i, %bb.bs ], [ %.not82.i.i, %.thread172.i.i ], [ %.not82.i.i, %bb.ca ], [ %.not82.i.i, %bb.by ]
  %.pn85.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.bz ], [ %i.kz, %bb.cb ], [ %i.kz, %bb.cc ], [ %i.jr, %bb.bg ], [ %i.jr, %bb.bh ], [ %eh.lpad-body.i.i.i, %.thread.i.i.i ], [ %eh.lpad-body.i.i.i, %bb.bk ], [ %i.kd, %.body.i.i ], [ %i.kd, %bb.bp ], [ %i.kk, %bb.bt ], [ %i.kk, %bb.bs ], [ %lpad.thr_comm.i.i, %.thread172.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.ca ], [ %lpad.thr_comm.split-lp.i.i, %bb.by ] ; 2 uses
  %i.hj = load ptr, ptr %i.ec, align 8, !noalias !4690, !noundef !18 ; 2 uses
  %i.hk = icmp ne ptr %i.hj, null
  %or.cond.i.i = and i1 %.sroa.040.0.i.i, %i.hk
  br i1 %or.cond.i.i, label %bb.cd, label %.thread136.thread.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.thread.i.i: ; preds = %bb.w, %bb.v
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hm = load ptr, ptr %i.ec, align 8, !noalias !4690, !noundef !18 ; 2 uses
  %.not194.i.i = icmp eq ptr %i.hm, null
  br i1 %.not194.i.i, label %.thread191.i.i, label %bb.cd

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !4690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.ea, ptr noundef nonnull align 8 dereferenceable(136) %i.ee, i64 136, i1 false), !noalias !4690
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(136) %i.ea)
          to label %bb.z unwind label %bb.cb, !noalias !4690

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !4690
  %i.hn = load ptr, ptr %i.ec, align 8, !noalias !4690, !noundef !18
  %.not82.i.i = icmp eq ptr %i.hn, null           ; 13 uses
  br i1 %.not82.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !4690
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dz, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ec)
          to label %bb.ac unwind label %bb.cb, !noalias !4690

bb.ab:                                            ; preds = %bb.ac, %bb.z
  %.sroa.623.0.copyload.i.i = phi ptr [ undef, %bb.z ], [ %.sroa.444.sroa.0.0.copyload.i.i, %bb.ac ] ; 4 uses
  %.sroa.7.0.copyload.i.i = phi i64 [ undef, %bb.z ], [ %.sroa.444.sroa.4.0.copyload.i.i, %bb.ac ] ; 3 uses
  %.sroa.6.sroa.0.0.i.i = phi ptr [ undef, %bb.z ], [ %.sroa.043.0.copyload.i.i, %bb.ac ] ; 2 uses
  %.sroa.020.0.copyload.i.i = phi i64 [ 0, %bb.z ], [ %i.hp, %bb.ac ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !4690
  store i64 %.sroa.020.0.copyload.i.i, ptr %i.dy, align 8, !noalias !4690
  %.sroa.6.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %.sroa.6.sroa.0.0.i.i, ptr %.sroa.6.0..sroa_idx5.i.i, align 8, !noalias !4690
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %.sroa.623.0.copyload.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.i.i, align 8, !noalias !4690
  %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.6.sroa.7.sroa.7.0..sroa.6.sroa.7.0..sroa.6.0..sroa_idx5.sroa_idx.sroa_idx.i.i, align 8, !noalias !4690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !4690
  %i.ho = ptrtoint ptr %.sroa.6.sroa.0.0.i.i to i64
  invoke void @_RNvMs3_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6Buffer12into_mutable(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.eb)
          to label %bb.ad unwind label %bb.bs, !noalias !4690

bb.ac:                                            ; preds = %bb.aa
  %i.hp = load i64, ptr %i.dz, align 8, !range !36, !noalias !4690, !noundef !18 ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.043.0.copyload.i.i = load ptr, ptr %i.hr, align 8, !noalias !4690 ; 2 uses
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.444.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !4690 ; 2 uses
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %.sroa.444.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4690 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !4690
  br i1 %i.hq, label %.thread141.i.i, label %bb.ab

.thread141.i.i:                                   ; preds = %bb.ac
  %.sroa.0115.0.copyload.i.i = load ptr, ptr %i.eb, align 8, !noalias !4690
  %.sroa.4116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.hs = load <2 x i64>, ptr %.sroa.4116.0..sroa_idx.i.i, align 8, !noalias !4690
  br label %bb.bu

bb.ad:                                            ; preds = %bb.ab
  %i.ht = load i64, ptr %i.dx, align 8, !range !36, !noalias !4690, !noundef !18 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  br i1 %i.hu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv), !noalias !4690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dv, ptr noundef nonnull align 8 dereferenceable(24) %i.hv, i64 24, i1 false), !noalias !4690
  %.not83.i.i = icmp eq i64 %.sroa.020.0.copyload.i.i, 0
  br i1 %.not83.i.i, label %.thread160.i.i, label %bb.bl

bb.af:                                            ; preds = %bb.ad
  %.sroa.499.0.copyload.i.i = load i64, ptr %i.hv, align 8, !noalias !4690
  %.sroa.5.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx100.i.i, align 8, !noalias !4690, !nonnull !18, !noundef !18 ; 6 uses
  %.sroa.6.0..sroa_idx101.i.i = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx101.i.i, align 8, !noalias !4690 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !4690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %i.dy, i64 32, i1 false), !noalias !4690
  call void @llvm.experimental.noalias.scope.decl(metadata !4693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !4694
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !4694
  store i64 1, ptr %i.dh, align 8, !noalias !4694
  %i.hw = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i64 1, ptr %i.hw, align 8, !noalias !4694
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.hx, align 8, !noalias !4694
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !4694
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !4694
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  store i64 %i.ht, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !4694
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  store i64 %.sroa.499.0.copyload.i.i, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !4694
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4695
  %i.hy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4695 ; 19 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.ag, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, !prof !23

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i.i.i unwind label %bb.ah, !noalias !4694

.noexc.i.i.i.i:                                   ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.ia = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dh) #77
          to label %.thread.i.i.i unwind label %bb.ai, !noalias !4694

bb.ai:                                            ; preds = %bb.ah
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4694
  unreachable

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hy, ptr noundef nonnull align 8 dereferenceable(56) %i.dh, i64 56, i1 false), !noalias !4694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !4694
  store ptr %i.hy, ptr %i.di, align 8, !noalias !4694
  %i.ic = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.ic, align 8, !noalias !4694
  %i.id = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %i.id, align 8, !noalias !4694
  %i.ie = ptrtoint ptr %.sroa.5.0.copyload.i.i to i64 ; 3 uses
  %2 = add i64 %i.ie, 1
  %i.if = and i64 %2, -2                          ; 2 uses
  %3 = sub i64 %i.if, %i.ie                       ; 5 uses
  %4 = icmp ult i64 %3, 2
  call void @llvm.assume(i1 %4)
  %i.ig = icmp eq i64 %i.if, %i.ie
  %i.ih = ptrtoint ptr %i.hy to i64               ; 5 uses
  br i1 %i.ig, label %bb.an, label %.invoke.i.i.i.i.i, !prof !16

bb.aj:                                            ; preds = %.invoke.i.i.i.i.i
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ij = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !4696
  %i.ik = icmp eq i64 %i.ij, 1
  br i1 %i.ik, label %bb.ak, label %.thread.i.i.i

bb.ak:                                            ; preds = %bb.aj
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.di)
          to label %.thread.i.i.i unwind label %bb.al, !noalias !4697

.invoke.i.i.i.i.i:                                ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !noalias !4698, !noundef !18
  %.not.i.i.i.i.i = icmp eq ptr %i.im, null       ; 3 uses
  %.2.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @395, ptr @397
  %.1.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr @394, ptr @396
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i.i.i.i, ptr noundef nonnull %.1.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i.i.i.i) #74
          to label %.cont.i.i.i.i.i unwind label %bb.aj, !noalias !4698

.cont.i.i.i.i.i:                                  ; preds = %.invoke.i.i.i.i.i
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.in = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4697
  unreachable

bb.am:                                            ; preds = %bb.bc
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.an:                                            ; preds = %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEE3newCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !4694
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.iq = load ptr, ptr %i.ip, align 8, !noalias !4699, !noundef !18
  %.not.i.i17.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i17.i.i.i, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !4699, !nonnull !18, !noundef !18
  %.not23.i.i.i.i.i = icmp eq ptr %.sroa.5.0.copyload.i.i, %i.is
  br i1 %.not23.i.i.i.i.i, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.it = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %i.iu = load i64, ptr %i.it, align 8, !noalias !4699, !noundef !18 ; 2 uses
  %i.iv = lshr i64 %i.iu, 1
  %i.iw = and i64 %i.iu, -9223372036854775807
  %or.cond.i.i.i.i.i = icmp eq i64 %i.iw, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.ix = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %i.iy = load i64, ptr %i.ix, align 8, !range !34, !noalias !4699, !noundef !18
  %i.iz = icmp eq i64 %i.iy, 2
  br i1 %i.iz, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ja = lshr i64 %.sroa.6.0.copyload.i.i, 1
  %i.jb = cmpxchg ptr %i.hy, i64 1, i64 0 monotonic monotonic, align 8, !noalias !4700
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.jb, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %bb.as, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i

bb.as:                                            ; preds = %bb.ar
  fence acquire
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ir, align 8, !noalias !4699 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %.sroa.6.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4699 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.jd = atomicrmw sub ptr %i.jc, i64 1 release, align 8, !noalias !4700
  %i.je = icmp eq i64 %i.jd, 1
  br i1 %i.je, label %bb.at, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  fence acquire
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hy, i64 noundef 56, i64 noundef 8) #76, !noalias !4700
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %i.jf = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i, null
  br i1 %i.jf, label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i, label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %.pre.i.i.i = ptrtoint ptr %.sroa.6.0.copyload.i.i.i.i.i to i64
  br label %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i

_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i: ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i, %bb.ar
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i ], [ %i.ih, %bb.ar ]
  %.sroa.6.027.i.i.i.i.i = phi ptr [ %.sroa.6.0.copyload.i.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i._RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i_crit_edge.i.i.i ], [ %i.hy, %bb.ar ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.027.i.i.i.i.i) ]
  br label %bb.au

bb.au:                                            ; preds = %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.pre-phi.i.i.i.i = phi ptr [ %i.hy, %bb.ap ], [ %i.hy, %bb.an ], [ %i.hy, %bb.ao ], [ %i.hy, %bb.aq ], [ %.sroa.6.027.i.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i ] ; 2 uses
  %.sroa.4.1.ph.i.i.i.i = phi i64 [ %i.ih, %bb.ap ], [ %i.ih, %bb.an ], [ %i.ih, %bb.ao ], [ %i.ih, %bb.aq ], [ %.pre-phi.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.thread.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg), !noalias !4701
  store i64 %.sroa.4.1.ph.i.i.i.i, ptr %i.dg, align 8, !noalias !4701
  %.sroa.427.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.427.0..sroa_idx.i.i.i.i, align 8, !noalias !4701
  %.sroa.5.0..sroa_idx.i18.i.i.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.6.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i18.i.i.i, align 8, !noalias !4701
  %5 = icmp samesign ugt i64 %3, %.sroa.6.0.copyload.i.i
  br i1 %5, label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i: ; preds = %bb.au
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 %3
  %7 = sub nuw nsw i64 %.sroa.6.0.copyload.i.i, %3 ; 2 uses
  %8 = lshr i64 %7, 1                             ; 2 uses
  %9 = and i64 %7, 1
  %10 = or i64 %9, %3
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %bb.ay, label %bb.av, !prof !4702

bb.av:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 56, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #74
          to label %.noexc.i.i.i.i.i unwind label %bb.aw, !noalias !4703

.noexc.i.i.i.i.i:                                 ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.ba, %bb.av
  %i.jg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jh = atomicrmw sub ptr %.pre-phi.i.i.i.i, i64 1 release, align 8, !noalias !4704
  %i.ji = icmp eq i64 %i.jh, 1
  br i1 %i.ji, label %bb.ax, label %.thread.i.i.i

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %.thread.i.i.i unwind label %bb.bd, !noalias !4705

bb.ay:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSh8align_toNtNtCs2k6O4uMwKJm_4half8binary163f16ECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i.i
  %12 = and i64 %.sroa.6.0.copyload.i.i, -2       ; 3 uses
  %i.jj = icmp eq i64 %8, 0
  br i1 %i.jj, label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4706
  %i.jk = call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %12, i64 noundef range(i64 1, 9) 2) #76, !noalias !4706 ; 3 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %12) #74
          to label %.noexc3.i.i.i.i.i unwind label %bb.aw, !noalias !4703

.noexc3.i.i.i.i.i:                                ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.jk, ptr nonnull readonly align 2 %6, i64 %12, i1 false), !noalias !4707
  br label %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i

_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i: ; preds = %bb.bb, %bb.ay, %bb.au
  %.sroa.11.0.i.i.i = phi i64 [ %8, %bb.bb ], [ 0, %bb.ay ], [ 0, %bb.au ] ; 2 uses
  %.sroa.7.0.i.i.i = phi ptr [ %i.jk, %bb.bb ], [ inttoptr (i64 2 to ptr), %bb.ay ], [ inttoptr (i64 2 to ptr), %bb.au ]
  %i.jm = atomicrmw sub ptr %.pre-phi.i.i.i.i, i64 1 release, align 8, !noalias !4708
  %i.jn = icmp eq i64 %i.jm, 1
  br i1 %i.jn, label %bb.bc, label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i

bb.bc:                                            ; preds = %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
          to label %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i unwind label %bb.am, !noalias !4709

bb.bd:                                            ; preds = %bb.ax
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4705
  unreachable

_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i: ; preds = %bb.bc, %_RINvXs_NvMNtCs40k4W9msRzi_5alloc5sliceSp9to_vec_inNtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg), !noalias !4701
  br label %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i

_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i: ; preds = %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i
  %.sroa.11.1.i.i.i = phi i64 [ %.sroa.11.0.i.i.i, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.ja, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.7.1.i.i.i = phi ptr [ %.sroa.7.0.i.i.i, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.0.1.i.i.i = phi i64 [ %.sroa.11.0.i.i.i, %_RNCNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB7_12ScalarBufferB1o_EE4from0Cs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i ], [ %i.iv, %_RNvMsf_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE10try_unwrapCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.dw, align 8, !alias.scope !4693, !noalias !4710 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.07.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !4709
  store i64 %.sroa.07.0.copyload.i.i.i, ptr %i.dk, align 8, !noalias !4709
  %.sroa.6.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx9.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !4710
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !4709
  %i.jp = icmp samesign ult i64 %.sroa.11.1.i.i.i, 4611686018427387904
  call void @llvm.assume(i1 %i.jp)
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4nullNtB2_17NullBufferBuilder15new_from_buffer(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.dj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.dk, i64 noundef %.sroa.11.1.i.i.i)
          to label %bb.bi unwind label %bb.bg, !noalias !4709

bb.bf:                                            ; preds = %_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6scalarINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2k6O4uMwKJm_4half8binary163f16EINtNtCscI6d9CVNmLh_4core7convert4FromINtB5_12ScalarBufferB1m_EE4fromCs9JgWGBoX3PY_12lance_linalg.exit.i.i.i
  %i.jq = icmp samesign ult i64 %.sroa.11.1.i.i.i, 4611686018427387904
  call void @llvm.assume(i1 %i.jq)
  br label %bb.cj

bb.bg:                                            ; preds = %bb.be
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.js = icmp eq i64 %.sroa.0.1.i.i.i, 0
  br i1 %i.js, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jt = shl nuw i64 %.sroa.0.1.i.i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.1.i.i.i, i64 noundef %i.jt, i64 noundef range(i64 1, -9223372036854775807) 2) #76, !noalias !4709
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i

bb.bi:                                            ; preds = %bb.be
  %.sroa.05.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dj, align 8, !noalias !4709
  %.sroa.05.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ju = load <2 x ptr>, ptr %.sroa.05.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !4709
  %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.jv = load <2 x i64>, ptr %.sroa.0.sroa.3.i.sroa.5.0..sroa.05.sroa.4.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !4709
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %.sroa.46.0.copyload.i.i.i = load i64, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !4709
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !4709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !4709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk), !noalias !4709
  br label %bb.cj

bb.bj:                                            ; preds = %bb.bk
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4710
  unreachable

.thread.i.i.i:                                    ; preds = %bb.ax, %bb.aw, %bb.am, %bb.ak, %bb.aj, %bb.ah
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ii, %bb.aj ], [ %i.ia, %bb.ah ], [ %i.ii, %bb.ak ], [ %i.io, %bb.am ], [ %i.jg, %bb.ax ], [ %i.jg, %bb.aw ] ; 2 uses
  %i.jx = load i64, ptr %i.dw, align 8, !range !36, !alias.scope !4711, !noalias !4710, !noundef !18
  %i.jy = icmp eq i64 %i.jx, 0
  br i1 %i.jy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i, label %bb.bk

bb.bk:                                            ; preds = %.thread.i.i.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i unwind label %bb.bj, !noalias !4710

bb.bl:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.623.0.copyload.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !4690
  store i64 1, ptr %i.dl, align 8, !noalias !4690
  %i.jz = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 1, ptr %i.jz, align 8, !noalias !4690
  %i.ka = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store ptr %.sroa.623.0.copyload.i.i, ptr %i.ka, align 8, !noalias !4690
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  store i64 %.sroa.7.0.copyload.i.i, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !4690
  %.sroa.5.0..sroa_idx.i40.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i40.i, align 8, !noalias !4690
  %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  store i64 %.sroa.020.0.copyload.i.i, ptr %.sroa.5.sroa.467.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4690
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store i64 %i.ho, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !4690
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !4712
  %i.kb = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !4712 ; 3 uses
  %i.kc = icmp eq ptr %i.kb, null
  br i1 %i.kc, label %bb.bm, label %bb.bq, !prof !23

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #74
          to label %.noexc.i.i unwind label %bb.bn, !noalias !4690

.noexc.i.i:                                       ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.kd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dl) #77
          to label %.body.i.i unwind label %bb.bo, !noalias !4690

bb.bo:                                            ; preds = %bb.bn
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4690
  unreachable

.thread160.i.i:                                   ; preds = %bb.bq, %bb.ae
  %.sroa.5.sroa.4.0.i41.i = phi i64 [ %.sroa.7.0.copyload.i.i, %bb.bq ], [ undef, %bb.ae ]
  %.sroa.5.sroa.0.0.i.i = phi ptr [ %.sroa.623.0.copyload.i.i, %bb.bq ], [ undef, %bb.ae ]
  %.sroa.012.0.i.i = phi ptr [ %i.kb, %bb.bq ], [ null, %bb.ae ]
  %.sroa.015.sroa.0.0.copyload.i.i = load ptr, ptr %i.dv, align 8, !noalias !4690
  %.sroa.015.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.kf = load <2 x i64>, ptr %.sroa.015.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dv), !noalias !4690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !4690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !4690
  br label %bb.bu

.body.i.i:                                        ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !4713)
  call void @llvm.experimental.noalias.scope.decl(metadata !4714)
  call void @llvm.experimental.noalias.scope.decl(metadata !4715)
  %i.kg = load ptr, ptr %i.dv, align 8, !alias.scope !4716, !noalias !4690, !nonnull !18, !noundef !18
  %i.kh = atomicrmw sub ptr %i.kg, i64 1 release, align 8, !noalias !4717
  %i.ki = icmp eq i64 %i.kh, 1
  br i1 %i.ki, label %bb.bp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i

bb.bp:                                            ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dv)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i unwind label %bb.br, !noalias !4690

bb.bq:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.kb, ptr noundef nonnull align 8 dereferenceable(56) %i.dl, i64 56, i1 false), !noalias !4690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl), !noalias !4690
  br label %.thread160.i.i

bb.br:                                            ; preds = %.thread191.i.i, %bb.ce, %bb.cc, %bb.ca, %bb.bt, %bb.bp
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !4690
  unreachable

bb.bs:                                            ; preds = %bb.ab
  %i.kk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kl = icmp eq i64 %.sroa.020.0.copyload.i.i, 0
  br i1 %i.kl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i unwind label %bb.br, !noalias !4690

bb.bu:                                            ; preds = %.thread160.i.i, %.thread141.i.i
  %i.km = phi ptr [ %.sroa.043.0.copyload.i.i, %.thread141.i.i ], [ %.sroa.012.0.i.i, %.thread160.i.i ] ; 3 uses
  %.sroa.8.sroa.10.sroa.0.1157.i.i = phi ptr [ %.sroa.444.sroa.0.0.copyload.i.i, %.thread141.i.i ], [ %.sroa.5.sroa.0.0.i.i, %.thread160.i.i ]
  %.sroa.8.sroa.10.sroa.8.1156.i.i = phi i64 [ %.sroa.444.sroa.4.0.copyload.i.i, %.thread141.i.i ], [ %.sroa.5.sroa.4.0.i41.i, %.thread160.i.i ]
  %.sroa.8.sroa.0.sroa.0.1155.i.i = phi ptr [ %.sroa.0115.0.copyload.i.i, %.thread141.i.i ], [ %.sroa.015.sroa.0.0.copyload.i.i, %.thread160.i.i ]
  %i.kn = phi <2 x i64> [ %i.hs, %.thread141.i.i ], [ %i.kf, %.thread160.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !4690
  store ptr %.sroa.8.sroa.0.sroa.0.1155.i.i, ptr %i.du, align 8, !noalias !4690
  %.sroa.8.sroa.0.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store <2 x i64> %i.kn, ptr %.sroa.8.sroa.0.sroa.8.0..sroa_idx.i.i, align 8, !noalias !4690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt), !noalias !4690
  store ptr %i.km, ptr %i.dt, align 8, !noalias !4690
  %.sroa.8.sroa.10.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %.sroa.8.sroa.10.sroa.0.1157.i.i, ptr %.sroa.8.sroa.10.24..sroa_idx.i.i, align 8, !noalias !4690
  %.sroa.8.sroa.10.sroa.8.0..sroa.8.sroa.10.24..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store i64 %.sroa.8.sroa.10.sroa.8.1156.i.i, ptr %.sroa.8.sroa.10.sroa.8.0..sroa.8.sroa.10.24..sroa_idx.sroa_idx.i.i, align 8, !noalias !4690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ds), !noalias !4690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dr), !noalias !4690
  %i.ko = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ko, i8 10, i64 24, i1 false), !noalias !4690
  %i.kp = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  store i64 0, ptr %i.dq, align 8, !noalias !4690
  %i.kq = getelementptr inbounds nuw i8, ptr %i.dq, i64 120
  store ptr null, ptr %i.kq, align 8, !noalias !4690
  %i.kr = getelementptr inbounds nuw i8, ptr %i.dq, i64 168
  store i64 0, ptr %i.kr, align 8, !noalias !4690
  %i.ks = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store i64 0, ptr %i.ks, align 8, !noalias !4690
  %.sroa.475.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store i64 0, ptr %i.kt, align 8, !noalias !4690
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.475.0..sroa_idx.i.i, align 8, !noalias !4690
  %.sroa.5.0..sroa_idx76.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %.sroa.478.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx76.i.i, i8 0, i64 16, i1 false), !noalias !4690
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.478.0..sroa_idx.i.i, align 8, !noalias !4690
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 56
  store i64 0, ptr %.sroa.579.0..sroa_idx.i.i, align 8, !noalias !4690
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dq, i64 176
  store i8 0, ptr %i.ku, align 8, !noalias !4690
  %i.kv = getelementptr inbounds nuw i8, ptr %i.dq, i64 177
  store i8 0, ptr %i.kv, align 1, !noalias !4690
  store i64 %i.gx, ptr %i.kp, align 8, !noalias !4690
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.dr, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.dq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.du)
          to label %bb.bv unwind label %bb.by, !noalias !4690

.thread172.i.i:                                   ; preds = %bb.bx, %bb.bw, %bb.bv
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECs9JgWGBoX3PY_12lance_linalg.exit96.i.i
end_hunk_0
