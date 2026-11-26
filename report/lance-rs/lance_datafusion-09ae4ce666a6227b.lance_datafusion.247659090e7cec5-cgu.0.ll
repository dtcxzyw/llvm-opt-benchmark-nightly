Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvXs0_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtB5_18BatchStreamGrouperNtNtCsj3nLz3LBTXi_12futures_core6stream6Stream9poll_next:bb.a

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !96197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !96192
  call fastcc void @_RNvMs_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtB4_18BatchStreamGrouper20pop_next_unprocessed(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.o, ptr noalias noundef nonnull align 16 dereferenceable(208) %1), !noalias !96197
  %i.bb = load i64, ptr %i.o, align 8, !range !345, !noalias !96192, !noundef !326
  %.not12.i = icmp eq i64 %i.bb, -1
  br i1 %.not12.i, label %bb.o, label %bb.j

bb.i:                                             ; preds = %bb.p
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bc = load i128, ptr %i.ad, align 16, !range !369, !noalias !96192, !noundef !326
  %.not53.i = icmp eq i128 %i.bc, -1
  br i1 %.not53.i, label %common.resume, label %bb.ab

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !96192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !96192
  %i.bd = load i64, ptr %i.af, align 8, !alias.scope !96198, !noundef !326 ; 3 uses
  %i.be = load i64, ptr %i.ae, align 8, !range !333, !alias.scope !96198, !noundef !326
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE8grow_oneCs485oD0LSutp_12arrow_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.n unwind label %bb.l, !noalias !96199

bb.l:                                             ; preds = %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n) #73
          to label %common.resume unwind label %bb.m, !noalias !96197

bb.m:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96197
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.bi = load ptr, ptr %i.ag, align 16, !alias.scope !96198, !nonnull !326, !noundef !326
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.bi, i64 %i.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !96197
  %i.bk = add i64 %i.bd, 1
  store i64 %i.bk, ptr %i.af, align 8, !alias.scope !96198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !96192
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !96192
  br label %.thread.i

bb.p:                                             ; preds = %bb.e
  %i.bl = invoke noundef zeroext i1 @_RNvXs_NtCs2bHstFFhpHt_17datafusion_common6scalarNtB4_11ScalarValueNtNtCscI6d9CVNmLh_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(208) %1, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.ad)
          to label %bb.q unwind label %bb.i, !noalias !96197

bb.q:                                             ; preds = %bb.p
  br i1 %i.bl, label %bb.r, label %bb.g

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !96192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.r, ptr noundef nonnull align 16 dereferenceable(64) %i.ad, i64 64, i1 false), !noalias !96192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !96192
  invoke fastcc void @_RNvMs_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtB4_18BatchStreamGrouper20pop_next_unprocessed(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.q, ptr noalias noundef nonnull align 16 dereferenceable(208) %1)
          to label %bb.t unwind label %bb.s, !noalias !96197

bb.s:                                             ; preds = %bb.r
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body22.i

.body22.i:                                        ; preds = %bb.w, %bb.s
  %eh.lpad-body23.i = phi { ptr, i32 } [ %i.bm, %bb.s ], [ %i.br, %bb.w ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.r) #73
          to label %common.resume unwind label %bb.aa, !noalias !96197

bb.t:                                             ; preds = %bb.r
  %i.bn = load i64, ptr %i.q, align 8, !range !345, !noalias !96192, !noundef !326
  %.not15.i = icmp eq i64 %i.bn, -1
  br i1 %.not15.i, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !96192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !96192
  %i.bo = load i64, ptr %i.af, align 8, !alias.scope !96200, !noundef !326 ; 3 uses
  %i.bp = load i64, ptr %i.ae, align 8, !range !333, !alias.scope !96200, !noundef !326
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE8grow_oneCs485oD0LSutp_12arrow_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %bb.y unwind label %bb.w, !noalias !96201

bb.w:                                             ; preds = %bb.v
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p) #73
          to label %.body22.i unwind label %bb.x, !noalias !96197

bb.x:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96197
  unreachable

bb.y:                                             ; preds = %bb.v, %bb.u
  %i.bt = load ptr, ptr %i.ag, align 16, !alias.scope !96200, !nonnull !326, !noundef !326
  %i.bu = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef nonnull align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !96197
  %i.bv = add i64 %i.bo, 1
  store i64 %i.bv, ptr %i.af, align 8, !alias.scope !96200
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !96192
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !96192
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.r), !noalias !96197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !96192
  br label %.thread.i

bb.aa:                                            ; preds = %.body25.i, %bb.ab, %.body22.i
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96197
  unreachable

common.resume:                                    ; preds = %bb.da, %bb.ax, %.thread, %bb.cy, %bb.i, %bb.l, %.body22.i, %bb.ab, %bb.ah, %.body25.i
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ax ], [ %eh.lpad-body23.i, %.body22.i ], [ %eh.lpad-body26.i, %.body25.i ], [ %i.ca, %bb.ah ], [ %lpad.thr_comm.split-lp.i, %bb.ab ], [ %lpad.thr_comm.split-lp.i, %bb.i ], [ %i.bg, %bb.l ], [ %eh.lpad-body, %.thread ], [ %i.gx, %bb.cy ], [ %i.hd, %bb.da ]
  resume { ptr, i32 } %common.resume.op

bb.ab:                                            ; preds = %bb.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ad) #73
          to label %common.resume unwind label %bb.aa, !noalias !96197

bb.ac:                                            ; preds = %bb.g
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 16 dereferenceable(64) %i.ad), !noalias !96197
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %bb.z, %bb.o, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !96192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !96192
  %.pr50.i = load i64, ptr %i.aa, align 16, !alias.scope !96191
  %.not17.i = icmp eq i64 %.pr50.i, -1
  br i1 %.not17.i, label %bb.aq, label %bb.ad

bb.ad:                                            ; preds = %.thread.i
  %i.bx = load i128, ptr %1, align 16, !range !369, !alias.scope !96191, !noundef !326
  %.not18.i = icmp eq i128 %i.bx, -1
  br i1 %.not18.i, label %bb.aq, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !96192
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !96197
  %i.by = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #71, !noalias !96197 ; 5 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.af, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i, !prof !327

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #72, !noalias !96197
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.ae
  %.sroa.0.0.copyload.i = load i128, ptr %1, align 16, !alias.scope !96191 ; 2 uses
  store i128 -1, ptr %1, align 16, !alias.scope !96191
  %.not19.i = icmp eq i128 %.sroa.0.0.copyload.i, -1
  br i1 %.not19.i, label %bb.ag, label %bb.aj, !prof !327

bb.ag:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @718) #72
          to label %bb.ai unwind label %bb.ah, !noalias !96197

bb.ah:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef 64, i64 noundef 16) #71, !noalias !96197
  br label %common.resume

bb.ai:                                            ; preds = %bb.ag
  unreachable

.body25.i:                                        ; preds = %bb.ao, %.body.i.i
  %eh.lpad-body26.i = phi { ptr, i32 } [ %i.df, %bb.ao ], [ %i.de, %.body.i.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.m) #73
          to label %common.resume unwind label %bb.aa, !noalias !96197

bb.aj:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.5.0..sroa_idx.i, i64 48, i1 false), !noalias !96197
  store i128 %.sroa.0.0.copyload.i, ptr %i.by, align 16, !noalias !96197
  store i64 1, ptr %i.m, align 8, !noalias !96192
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.by, ptr %i.cb, align 8, !noalias !96192
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 1, ptr %i.cc, align 8, !noalias !96192
  %i.cd = load i64, ptr %i.af, align 8, !alias.scope !96202, !noundef !326 ; 5 uses
  %i.ce = icmp ult i64 %i.cd, 230584300921369396
  call void @llvm.assume(i1 %i.ce)
  store i64 0, ptr %i.af, align 8, !alias.scope !96202
  %i.cf = load ptr, ptr %i.ag, align 16, !alias.scope !96202, !nonnull !326, !noundef !326 ; 4 uses
  %.idx54.i = mul nuw nsw i64 %i.cd, 40           ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx54.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !96203
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = icmp eq i64 %i.cd, 0
  br i1 %i.cj, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.thread.i, label %bb.ak

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.thread.i: ; preds = %bb.aj
  store i64 0, ptr %i.l, align 8, !noalias !96203
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ck, align 8, !noalias !96203
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  br label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !96204
  %i.cm = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx54.i, i64 noundef range(i64 1, 17) 8) #71, !noalias !96204 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.al, label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.preheader.i

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx54.i) #72
          to label %.noexc.i.i unwind label %bb.ao, !noalias !96205

.noexc.i.i:                                       ; preds = %bb.al
  unreachable

_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.preheader.i: ; preds = %bb.ak
  store i64 %i.cd, ptr %i.l, align 8, !noalias !96203
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.cm, ptr %i.co, align 8, !noalias !96203
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !96206)
  call void @llvm.experimental.noalias.scope.decl(metadata !96207)
  br label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i: ; preds = %bb.am, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.preheader.i
  %i.cq = phi i64 [ %i.cu, %bb.am ], [ 0, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.cr = phi ptr [ %i.cs, %bb.am ], [ %i.cf, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.preheader.i ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40 ; 3 uses
  %.sroa.0.0.copyload6.i.i.i.i.i.i = load i64, ptr %i.cr, align 8, !noalias !96208 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload6.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i
  %.sroa.7.0..sroa_idx7.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = getelementptr inbounds nuw [40 x i8], ptr %i.cm, i64 %i.cq ; 2 uses
  store i64 %.sroa.0.0.copyload6.i.i.i.i.i.i, ptr %i.ct, align 8, !noalias !96209
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.410.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx7.i.i.i.i.i.i, i64 32, i1 false), !noalias !96197
  %i.cu = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %i.cv = icmp eq ptr %i.cs, %i.cg
  br i1 %i.cv, label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.thread.i.i.i.i.i.i, label %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i

_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.thread.i.i.i.i.i.i: ; preds = %bb.am
  store i64 %i.cu, ptr %i.cp, align 8, !alias.scope !96210, !noalias !96211
  br label %bb.ap

_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.thread.i
  %3 = phi ptr [ %i.cl, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.thread.i ], [ %i.cp, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ]
  %4 = phi ptr [ %i.cf, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.thread.i ], [ %i.cs, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ] ; 2 uses
  %.val5.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchE7reserveCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.thread.i ], [ %i.cq, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i.i.i.i.i.i ]
  store i64 %.val5.i.i.i.i.i.i, ptr %3, align 8, !alias.scope !96210, !noalias !96211
  %i.cw = icmp eq ptr %i.cg, %4
  br i1 %i.cw, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i.i.i
  %i.cx = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.cy = sub nuw i64 %i.ch, %i.cx
  %i.cz = udiv exact i64 %i.cy, 40
  %i.da = load ptr, ptr %i.ag, align 16, !alias.scope !96191, !noalias !96212, !nonnull !326, !noundef !326 ; 2 uses
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub nuw i64 %i.cx, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 %i.dd, i64 noundef %i.cz)
          to label %bb.ap unwind label %.body.i.i, !noalias !96213

.body.i.i:                                        ; preds = %bb.an
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #73
          to label %.body25.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtBO_5alloc6GlobalEECsc85D0lJ81Z_16lance_datafusion.exit.i, !noalias !96205

bb.ao:                                            ; preds = %bb.al
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = load ptr, ptr %i.ag, align 16, !alias.scope !96191, !noalias !96214, !nonnull !326, !noundef !326 ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub nuw i64 %i.ci, %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 %i.dj, i64 noundef %i.cd)
          to label %.body25.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtBO_5alloc6GlobalEECsc85D0lJ81Z_16lance_datafusion.exit.i, !noalias !96215

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXs5_NtNtCs40k4W9msRzi_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtBO_5alloc6GlobalEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ao, %.body.i.i
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !96205
  unreachable

bb.ap:                                            ; preds = %bb.an, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i.i.i.i.i.i, %_RNvXs3_NtNtCs40k4W9msRzi_5alloc3vec5drainINtB5_5DrainNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.thread.i.i.i.i.i.i
  %.sroa.492.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.492, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.492.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !96203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.492, ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !96192
  store i64 1, ptr %0, align 8
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.489.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.492, i64 40, i1 false)
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ad, %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %.val = load ptr, ptr %i.ah, align 16, !nonnull !326, !noundef !326
  %.val71 = load ptr, ptr %i.ai, align 8, !nonnull !326, !align !335, !noundef !326
  %i.dl = getelementptr inbounds nuw i8, ptr %.val71, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !invariant.load !326, !noalias !96216, !nonnull !326
  call void %i.dm(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.z, ptr noundef nonnull %.val, ptr noalias noundef nonnull align 8 dereferenceable(32) %2), !inline_history !230
  %i.dn = load i64, ptr %i.z, align 8, !range !367, !noundef !326
  switch i64 %i.dn, label %bb.be [
    i64 -2, label %bb.as
    i64 -1, label %bb.at
    i64 0, label %bb.bf
  ]

bb.ar:                                            ; preds = %bb.de, %bb.ap
  ret void

bb.as:                                            ; preds = %bb.aq
  store i64 -3, ptr %0, align 8
  br label %bb.de

bb.at:                                            ; preds = %bb.aq
  %i.do = load i128, ptr %1, align 16, !range !369, !noundef !326
  %.not64 = icmp eq i128 %i.do, -1
  br i1 %.not64, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 0, ptr %i.ae, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 16
  store i64 0, ptr %i.af, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71
  %i.dp = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #71 ; 5 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.av, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !327

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #72
          to label %.noexc unwind label %bb.ay

.noexc:                                           ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.at
  store i64 -2, ptr %0, align 8
  br label %bb.de

bb.ax:                                            ; preds = %bb.bb, %bb.ay
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.bb ], [ %i.dr, %bb.ay ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) #73
          to label %common.resume unwind label %bb.bd

bb.ay:                                            ; preds = %bb.av
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.au
  %.sroa.020.0.copyload = load i128, ptr %1, align 16 ; 2 uses
  store i128 -1, ptr %1, align 16
  %.not65 = icmp eq i128 %.sroa.020.0.copyload, -1
  br i1 %.not65, label %bb.ba, label %bb.az, !prof !327

bb.az:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %.sroa.522.0..sroa.0.0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.424.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.522.0..sroa.0.0.4.sroa_idx, i64 48, i1 false)
  store i128 %.sroa.020.0.copyload, ptr %i.dp, align 16
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.636.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dp, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.535.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.de

bb.ba:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @964) #72
          to label %bb.bc unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dp, i64 noundef 64, i64 noundef 16) #71
  br label %bb.ax

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %.thread, %bb.ax
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70
  unreachable

bb.be:                                            ; preds = %bb.aq
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.416.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.de

bb.bf:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.aj, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %.val73 = load ptr, ptr %i.ak, align 8, !nonnull !326, !noundef !326
  %.val74 = load i64, ptr %i.al, align 16, !noundef !326
  call void @llvm.experimental.noalias.scope.decl(metadata !96217)
  %i.du = invoke noundef align 8 ptr @_RNvMs_NtCs4ytUTZt2Gw9_11arrow_array12record_batchNtB4_11RecordBatch14column_by_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val73, i64 noundef %.val74)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96217 ; 4 uses

.noexc77:                                         ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !96218
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !96219
  %i.dv = call noundef dereferenceable_or_null(26) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 26, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !96219 ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.noexc77
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 26) #72
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96217

.noexc78:                                         ; preds = %bb.bg
  unreachable

bb.bh:                                            ; preds = %.noexc77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.dv, ptr noundef nonnull align 1 dereferenceable(26) @719, i64 26, i1 false), !noalias !96217
  store i64 26, ptr %i.am, align 8, !noalias !96218
  store ptr %i.dv, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !96218
  store i64 26, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !96218
  store i64 9, ptr %i.k, align 8, !noalias !96218
  %.not.i75 = icmp eq ptr %i.du, null
  br i1 %.not.i75, label %_RNvMs_NtCsc85D0lJ81Z_16lance_datafusion9dataframeNtB4_18BatchStreamGrouper14compute_ranges.exit.thread, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96217

.noexc79:                                         ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !96218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !96218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !96218
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !96218
  invoke void @_RNvNtCs5FCcBHaqpq9_9arrow_ord9partition9partition(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.du, i64 noundef 1)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !96217

.noexc80:                                         ; preds = %.noexc79
  %i.dx = load i64, ptr %i.h, align 8, !range !337, !noalias !96218, !noundef !326
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.bj, label %bb.bk

end_hunk_0
