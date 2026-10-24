Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.06?download=true
inline.NumInlined: 1216
inline.NumDeleted: 506
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB6_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBc_:bb.a
          to label %bb.db unwind label %bb.cx

bb.cn:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.6107.0.copyload = load i64, ptr %.sroa.6107.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.8108.0.copyload = load ptr, ptr %.sroa.8108.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.9109.0.copyload = load i64, ptr %.sroa.9109.0..sroa_idx, align 8 ; 3 uses
  %i.hs = trunc nuw i64 %i.at to i1
  br i1 %i.hs, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8108.0.copyload) ]
  %i.ht = icmp ult i64 %.sroa.9109.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8108.0.copyload, i64 %.sroa.9109.0.copyload
  %i.hv = icmp sgt i64 %.sroa.6107.0.copyload, -1
  call void @llvm.assume(i1 %i.hv)
  store ptr %.sroa.8108.0.copyload, ptr %i.f, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.6107.0.copyload, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.8108.0.copyload, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.hu, ptr %i.hy, align 8
  invoke fastcc void @_RINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1n_6string6StringEEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.cq unwind label %bb.da

bb.cp:                                            ; preds = %bb.cn, %bb.cs
  %.sink489 = phi i64 [ %i.ie, %bb.cs ], [ %.sroa.6107.0.copyload, %bb.cn ]
  %.sroa.4172.0.copyload.sink = phi ptr [ %i.ih, %bb.cs ], [ %.sroa.8108.0.copyload, %bb.cn ]
  %.sroa.5173.0.copyload.sink = phi i64 [ %.sroa.5173.0.copyload, %bb.cs ], [ %.sroa.9109.0.copyload, %bb.cn ]
  store i64 %.sink489, ptr %i.e, align 8
  %.sroa.6112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.4172.0.copyload.sink, ptr %.sroa.6112.0..sroa_idx113, align 8
  %.sroa.8115.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.5173.0.copyload.sink, ptr %.sroa.8115.0..sroa_idx116, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(232) %i.ab, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call fastcc void @_RINvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB6_10BpeBuilder16vocab_and_mergesINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEBc_(ptr noalias noundef align 8 captures(none) dereferenceable(232) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.ab, i64 232, i1 false)
  call void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder5build(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hz = load i64, ptr %i.b, align 8, !range !20, !noundef !4 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ia, label %bb.ct, label %.thread368

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ie = load i64, ptr %i.g, align 8, !range !15, !noundef !4 ; 2 uses
  %i.if = icmp eq i64 %i.ie, -1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.if, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ij = load ptr, ptr %i.ii, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ik = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB2c_6marker4SendNtB2J_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ij)
          to label %bb.cw unwind label %bb.da

bb.cs:                                            ; preds = %bb.cq
  %.sroa.5173.0.copyload = load i64, ptr %i.ii, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cp

bb.ct:                                            ; preds = %bb.cp
  %i.il = load ptr, ptr %i.id, align 8, !nonnull !4, !align !8, !noundef !4
  %i.im = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB2c_6marker4SendNtB2J_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.ic, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %i.in, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cv

.thread368:                                       ; preds = %bb.cp
  %.sroa.3142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.3142.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %i.id, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.hz, ptr %0, align 8
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.2141.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.df

bb.cu:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.io = load ptr, ptr %i.i, align 8, !noundef !4
  %.not377 = icmp eq ptr %i.io, null
  br i1 %.not377, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281, label %bb.dc

bb.cv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dh

bb.cw:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ik, ptr %i.ip, align 8
  store i64 2, ptr %0, align 8
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cm
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab)
          to label %bb.cv unwind label %bb.cz

bb.cy:                                            ; preds = %bb.di, %bb.cz
  %.pn198 = phi { ptr, i32 } [ %i.it, %bb.cz ], [ %.pn.ph, %bb.di ] ; 2 uses
  %i.ir = load ptr, ptr %i.i, align 8, !noundef !4
  %i.is = icmp ne ptr %i.ir, null
  %or.cond7 = and i1 %or.cond226, %i.is
  br i1 %or.cond7, label %bb.dj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283

bb.cz:                                            ; preds = %bb.db, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.cr, %bb.co
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.di unwind label %bb.cl

bb.db:                                            ; preds = %bb.cm
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hr, ptr %i.iu, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab)
          to label %bb.cu unwind label %bb.cz

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281: ; preds = %bb.dc, %bb.cu
  %i.iv = load i64, ptr %i.ar, align 8, !range !20, !noundef !4
  %.not379 = icmp eq i64 %i.iv, 2
  br i1 %.not379, label %bb.df, label %bb.dg

bb.dc:                                            ; preds = %bb.cu
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load i64, ptr %i.ar, align 8, !range !20, !noundef !4
  %.not378 = icmp eq i64 %i.ix, 2
  br i1 %.not378, label %bb.b, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtBJ_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.ar) #29
          to label %bb.b unwind label %bb.cl

bb.df:                                            ; preds = %.thread368, %bb.dg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dh

bb.dg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtBJ_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.ar)
  br label %bb.df

bb.dh:                                            ; preds = %bb.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287, %bb.df
  ret void

bb.di:                                            ; preds = %bb.cx, %bb.da
  %.pn.ph = phi { ptr, i32 } [ %i.iq, %bb.cx ], [ %lpad.thr_comm.split-lp, %bb.da ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab) #29
          to label %bb.cy unwind label %bb.cl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283: ; preds = %bb.dj, %bb.cy
  %2 = phi i1 [ %or.cond226, %bb.cy ], [ true, %bb.dj ]
  %i.iy = load i64, ptr %i.ar, align 8, !range !20, !noundef !4
  %i.iz = icmp ne i64 %i.iy, 2
  %or.cond9 = and i1 %2, %i.iz
  br i1 %or.cond9, label %bb.dk, label %bb.b

bb.dj:                                            ; preds = %bb.cy
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283 unwind label %bb.cl

bb.dk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtBJ_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.ar) #29
          to label %bb.b unwind label %bb.cl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit: ; preds = %.body, %bb.d, %bb.dm
  %.sroa.0143.15 = phi i1 [ true, %bb.dm ], [ %.sroa.0143.1, %bb.d ], [ %.sroa.0143.1, %.body ]
  %.pn220 = phi { ptr, i32 } [ %i.jc, %bb.dm ], [ %.pn218, %bb.d ], [ %.pn218, %.body ] ; 2 uses
  %i.ja = load ptr, ptr %i.aa, align 8, !alias.scope !503, !noundef !4
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285, label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285 unwind label %bb.cl

bb.dm:                                            ; preds = %bb.ck
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit276: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.jd = load ptr, ptr %i.aa, align 8, !alias.scope !504, !noundef !4
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287, label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit276
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit, %bb.dl
  br i1 %.sroa.0143.15, label %bb.do, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread: ; preds = %bb.dn
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit276, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dh

bb.do:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285
  %.pn222376 = phi { ptr, i32 } [ %i.jf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread ], [ %.pn220, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab) #29
          to label %bb.b unwind label %bb.cl
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB6_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias noundef align 8 dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 4 uses
  %i.b = alloca [304 x i8], align 8               ; 7 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [232 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [64 x i8], align 8                ; 8 uses
  %i.i = alloca [96 x i8], align 8                ; 13 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.7102 = alloca [16 x i8], align 8         ; 6 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %.sroa.785 = alloca [48 x i8], align 8          ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [232 x i8], align 8               ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = alloca [232 x i8], align 8               ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [232 x i8], align 8               ; 8 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 13 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 18 uses
  %i.aa = alloca [64 x i8], align 8               ; 19 uses
  %i.ab = alloca [232 x i8], align 8              ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr null, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 2, ptr %i.z, align 8
  %.sroa.4154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.5155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.699.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.7102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.sroa.4166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.682.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.785.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %.sroa.4342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 226
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.sroa.4333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 225
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 224
  %.sroa.4163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 6 uses
  %.sroa.5317.0..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.q, i64 128 ; 2 uses
  %.sroa.6320.0..sroa_idx321 = getelementptr inbounds nuw i8, ptr %i.q, i64 136 ; 2 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 6 uses
  %.sroa.5309.0..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  %.sroa.6312.0..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.s, i64 112 ; 2 uses
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 6 uses
  %.sroa.5301.0..sroa_idx302 = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 2 uses
  %.sroa.6304.0..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.u, i64 88 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 148
  br label %bb.c

bb.b:                                             ; preds = %bb.do, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285, %bb.dk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283, %bb.de, %bb.dd
  %.pn224 = phi { ptr, i32 } [ %i.iw, %bb.dd ], [ %.pn222376, %bb.do ], [ %.pn220, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285 ], [ %.pn198, %bb.dk ], [ %.pn198, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283 ], [ %i.iw, %bb.de ]
  resume { ptr, i32 } %.pn224

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.am, %bb.ac, %.body261
  %.sroa.0143.1 = phi i1 [ %.sroa.0143.4, %.body261 ], [ true, %bb.am ], [ true, %bb.ac ], [ true, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn218 = phi { ptr, i32 } [ %.pn216, %.body261 ], [ %i.ev, %bb.am ], [ %i.ea, %bb.ac ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.al = load i64, ptr %i.z, align 8, !range !20, !alias.scope !535, !noundef !4
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtBJ_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEBP_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit unwind label %bb.cl

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i253
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.c
  %i.an = load i64, ptr %i.y, align 8, !range !31, !noundef !4 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -2
  %i.ap = load ptr, ptr %.sroa.4154.0..sroa_idx, align 8 ; 20 uses
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store i64 2, ptr %0, align 8
  br label %bb.cj

bb.f:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.5155.0.copyload = load i64, ptr %.sroa.5155.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.not = icmp eq i64 %i.an, -1
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store i64 %i.an, ptr %i.x, align 8
  store ptr %i.ap, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.5155.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  switch i64 %.sroa.5155.0.copyload, label %bb.ab [
    i64 7, label %bb.i
    i64 9, label %bb.k
    i64 25, label %bb.m
    i64 18, label %bb.o
    i64 8, label %bb.q
    i64 13, label %bb.s
    i64 5, label %bb.w
    i64 6, label %bb.y
    i64 4, label %bb.aa
  ]

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 8 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB6_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBc_:bb.a
          to label %bb.db unwind label %bb.cx

bb.cn:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false)
  %.sroa.6107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %.sroa.6107.0.copyload = load i64, ptr %.sroa.6107.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.8108.0.copyload = load ptr, ptr %.sroa.8108.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.9109.0.copyload = load i64, ptr %.sroa.9109.0..sroa_idx, align 8 ; 3 uses
  %i.hs = trunc nuw i64 %i.at to i1
  br i1 %i.hs, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8108.0.copyload) ]
  %i.ht = icmp ult i64 %.sroa.9109.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.ht)
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8108.0.copyload, i64 %.sroa.9109.0.copyload
  %i.hv = icmp sgt i64 %.sroa.6107.0.copyload, -1
  call void @llvm.assume(i1 %i.hv)
  store ptr %.sroa.8108.0.copyload, ptr %i.f, align 8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.6107.0.copyload, ptr %i.hw, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.8108.0.copyload, ptr %i.hx, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.hu, ptr %i.hy, align 8
  invoke fastcc void @_RINvNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model25convert_merges_to_hashmapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtB1n_6string6StringEEB8_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.cq unwind label %bb.da

bb.cp:                                            ; preds = %bb.cn, %bb.cs
  %.sink489 = phi i64 [ %i.ie, %bb.cs ], [ %.sroa.6107.0.copyload, %bb.cn ]
  %.sroa.4172.0.copyload.sink = phi ptr [ %i.ih, %bb.cs ], [ %.sroa.8108.0.copyload, %bb.cn ]
  %.sroa.5173.0.copyload.sink = phi i64 [ %.sroa.5173.0.copyload, %bb.cs ], [ %.sroa.9109.0.copyload, %bb.cn ]
  store i64 %.sink489, ptr %i.e, align 8
  %.sroa.6112.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.4172.0.copyload.sink, ptr %.sroa.6112.0..sroa_idx113, align 8
  %.sroa.8115.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.5173.0.copyload.sink, ptr %.sroa.8115.0..sroa_idx116, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.d, ptr noundef nonnull align 8 dereferenceable(232) %i.ab, i64 232, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call fastcc void @_RINvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB6_10BpeBuilder16vocab_and_mergesINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEBc_(ptr noalias noundef align 8 captures(none) dereferenceable(232) %i.ab, ptr noalias noundef align 8 captures(address) dereferenceable(232) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(232) %i.ab, i64 232, i1 false)
  call void @_RNvMs1_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_10BpeBuilder5build(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(232) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.hz = load i64, ptr %i.b, align 8, !range !20, !noundef !4 ; 2 uses
  %i.ia = icmp eq i64 %i.hz, 2
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8            ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ia, label %bb.ct, label %.thread368

bb.cq:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.ie = load i64, ptr %i.g, align 8, !range !15, !noundef !4 ; 2 uses
  %i.if = icmp eq i64 %i.ie, -1
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.if, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ij = load ptr, ptr %i.ii, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ik = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB2c_6marker4SendNtB2J_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.ih, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ij)
          to label %bb.cw unwind label %bb.da

bb.cs:                                            ; preds = %bb.cq
  %.sroa.5173.0.copyload = load i64, ptr %i.ii, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.cp

bb.ct:                                            ; preds = %bb.cp
  %i.il = load ptr, ptr %i.id, align 8, !nonnull !4, !align !8, !noundef !4
  %i.im = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB2c_6marker4SendNtB2J_4SyncEL_EECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %i.ic, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.il)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.im, ptr %i.in, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.cv

.thread368:                                       ; preds = %bb.cp
  %.sroa.3142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.3142.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %i.id, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.hz, ptr %0, align 8
  %.sroa.2141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ic, ptr %.sroa.2141.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.df

bb.cu:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.io = load ptr, ptr %i.i, align 8, !noundef !4
  %.not377 = icmp eq ptr %i.io, null
  br i1 %.not377, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281, label %bb.dc

bb.cv:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dh

bb.cw:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ik, ptr %i.ip, align 8
  store i64 2, ptr %0, align 8
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cm
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.di

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab)
          to label %bb.cv unwind label %bb.cz

bb.cy:                                            ; preds = %bb.di, %bb.cz
  %.pn198 = phi { ptr, i32 } [ %i.it, %bb.cz ], [ %.pn.ph, %bb.di ] ; 2 uses
  %i.ir = load ptr, ptr %i.i, align 8, !noundef !4
  %i.is = icmp ne ptr %i.ir, null
  %or.cond7 = and i1 %or.cond226, %i.is
  br i1 %or.cond7, label %bb.dj, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283

bb.cz:                                            ; preds = %bb.db, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.cr, %bb.co
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %bb.di unwind label %bb.cl

bb.db:                                            ; preds = %bb.cm
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hr, ptr %i.iu, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab)
          to label %bb.cu unwind label %bb.cz

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281: ; preds = %bb.dc, %bb.cu
  %i.iv = load i64, ptr %i.ar, align 8, !range !20, !noundef !4
  %.not379 = icmp eq i64 %i.iv, 2
  br i1 %.not379, label %bb.df, label %bb.dg

bb.dc:                                            ; preds = %bb.cu
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.iw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ix = load i64, ptr %i.ar, align 8, !range !20, !noundef !4
  %.not378 = icmp eq i64 %i.ix, 2
  br i1 %.not378, label %bb.b, label %bb.de

bb.de:                                            ; preds = %bb.dd
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtBJ_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.ar) #29
          to label %bb.b unwind label %bb.cl

bb.df:                                            ; preds = %.thread368, %bb.dg, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.dh

bb.dg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit281
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtBJ_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.ar)
  br label %bb.df

bb.dh:                                            ; preds = %bb.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287, %bb.df
  ret void

bb.di:                                            ; preds = %bb.cx, %bb.da
  %.pn.ph = phi { ptr, i32 } [ %i.iq, %bb.cx ], [ %lpad.thr_comm.split-lp, %bb.da ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab) #29
          to label %bb.cy unwind label %bb.cl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283: ; preds = %bb.dj, %bb.cy
  %2 = phi i1 [ %or.cond226, %bb.cy ], [ true, %bb.dj ]
  %i.iy = load i64, ptr %i.ar, align 8, !range !20, !noundef !4
  %i.iz = icmp ne i64 %i.iy, 2
  %or.cond9 = and i1 %2, %i.iz
  br i1 %or.cond9, label %bb.dk, label %bb.b

bb.dj:                                            ; preds = %bb.cy
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283 unwind label %bb.cl

bb.dk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit283
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtBJ_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEBP_(ptr noalias noundef align 8 dereferenceable(32) %i.ar) #29
          to label %bb.b unwind label %bb.cl

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit: ; preds = %.body, %bb.d, %bb.dm
  %.sroa.0143.15 = phi i1 [ true, %bb.dm ], [ %.sroa.0143.1, %bb.d ], [ %.sroa.0143.1, %.body ]
  %.pn220 = phi { ptr, i32 } [ %i.jc, %bb.dm ], [ %.pn218, %bb.d ], [ %.pn218, %.body ] ; 2 uses
  %i.ja = load ptr, ptr %i.aa, align 8, !alias.scope !551, !noundef !4
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285, label %bb.dl

bb.dl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285 unwind label %bb.cl

bb.dm:                                            ; preds = %bb.ck
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit276: ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.jd = load ptr, ptr %i.aa, align 8, !alias.scope !552, !noundef !4
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287, label %bb.dn

bb.dn:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit276
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit, %bb.dl
  br i1 %.sroa.0143.15, label %bb.do, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread: ; preds = %bb.dn
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit287: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe13serializationNtB15_10BPEVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_map9MergeTypeEEB1b_.exit276, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.dh

bb.do:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285
  %.pn222376 = phi { ptr, i32 } [ %i.jf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285.thread ], [ %.pn220, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers.exit285 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5model10BpeBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(232) %i.ab) #29
          to label %bb.b unwind label %bb.cl
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpiece13serializationNtB6_16WordPieceVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [144 x i8], align 8               ; 4 uses
  %i.e = alloca [184 x i8], align 8               ; 7 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [144 x i8], align 8               ; 8 uses
  %.sroa.4157 = alloca [48 x i8], align 8         ; 3 uses
  %i.j = alloca [64 x i8], align 8                ; 7 uses
  %i.k = alloca [144 x i8], align 8               ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [144 x i8], align 8               ; 11 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [144 x i8], align 8               ; 15 uses
  %i.p = alloca [24 x i8], align 8                ; 13 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [64 x i8], align 8                ; 14 uses
  %i.t = alloca [144 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvXNtNtCs2JiOgHzbbc7_10tokenizers6models9wordpieceNtB2_16WordPieceBuilderNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27
  %i.u = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1401) 64, i64 noundef range(i64 1, 9) 8) #27 ; 12 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.b, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.by, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetReEECs2JiOgHzbbc7_10tokenizers.exit
  resume { ptr, i32 } %.pn91

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetReEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.body, %bb.d
  %.sroa.051.0 = phi i8 [ %.sroa.051.1, %bb.d ], [ %.sroa.051.3, %.body ]
  %.pn91 = phi { ptr, i32 } [ %i.x, %bb.d ], [ %.pn89, %.body ]
  %i.w = trunc nuw i8 %.sroa.051.0 to i1
  br i1 %i.w, label %bb.by, label %bb.c

bb.d:                                             ; preds = %bb.bv, %bb.bp, %bb.bo, %bb.bj, %bb.b, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %.sroa.051.1 = phi i8 [ %.sroa.051.9, %bb.bj ], [ 0, %bb.bp ], [ 0, %bb.bo ], [ 1, %bb.bv ], [ 1, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit ], [ 1, %bb.b ]
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetReEECs2JiOgHzbbc7_10tokenizers.exit

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store ptr @32, ptr %i.u, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 9, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr @33, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 25, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr @44, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i64 24, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr @38, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  store i64 5, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store ptr %i.u, ptr %i.r, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.u, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.af, ptr %i.ai, align 8
  invoke fastcc void @_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetReEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBQ_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.e unwind label %bb.d

bb.e:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 3 uses
  %.sroa.3154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  %.sroa.4157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 5 uses
  %.sroa.3146.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 2 uses
  %.sroa.4149.0..sroa_idx150 = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit126, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bg, %bb.ac, %.body109
  %.sroa.051.3 = phi i8 [ %.sroa.051.6, %.body109 ], [ %.sroa.051.8, %bb.ac ], [ 1, %bb.bg ], [ 1, %.loopexit ], [ %.sroa.051.4.ph, %.loopexit.split-lp ]
  %.pn89 = phi { ptr, i32 } [ %.pn, %.body109 ], [ %i.di, %bb.ac ], [ %i.ep, %bb.bg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetReEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.an

.loopexit:                                        ; preds = %bb.f, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i121
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bk, %bb.bl, %bb.bn, %bb.bq, %bb.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.bs
  %.sroa.051.4.ph = phi i8 [ 1, %bb.bq ], [ 1, %bb.bt ], [ 1, %bb.bs ], [ 0, %bb.bk ], [ 0, %bb.bn ], [ %.sroa.051.8, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 1, %bb.bl ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.f
  %i.an = load i64, ptr %i.q, align 8, !range !31, !noundef !4 ; 3 uses
  %i.ao = icmp eq i64 %i.an, -2
  %i.ap = load ptr, ptr %.sroa.455.0..sroa_idx, align 8 ; 11 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bj

bb.h:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
end_hunk_1
