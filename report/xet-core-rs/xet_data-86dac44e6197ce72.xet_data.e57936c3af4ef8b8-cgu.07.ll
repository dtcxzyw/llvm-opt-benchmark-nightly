Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_data-86dac44e6197ce72.xet_data.e57936c3af4ef8b8-cgu.07?download=true
inline.NumInlined: 859
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_errorNtNtCs7SkU8gPisFf_4redb5error11CommitErrorECsjHtSR7YjKD4_8xet_data:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7SkU8gPisFf_4redb5error12StorageErrorECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void

bb.l:                                             ; preds = %bb.j
  %i.r = load ptr, ptr @_RNvNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_error10___CALLSITE, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  store ptr @12, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.t, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @7, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.n:                                             ; preds = %bb.b, %bb.d
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7SkU8gPisFf_4redb5error11CommitErrorECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_errorNtNtCs7SkU8gPisFf_4redb5error16TransactionErrorECsjHtSR7YjKD4_8xet_data(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsI_NtCs7SkU8gPisFf_4redb5errorNtB5_16TransactionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @11, ptr noundef nonnull %i.e)
          to label %bb.e unwind label %bb.c

bb.b:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7SkU8gPisFf_4redb5error16TransactionErrorECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #25
          to label %bb.o unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.l, %bb.h, %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #25
          to label %bb.b unwind label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.j = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.l = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_error10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.l, label %bb.g [
    i8 0, label %bb.k
    i8 1, label %bb.h
    i8 2, label %bb.h
  ], !prof !20

bb.g:                                             ; preds = %bb.f
  %i.m = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_error10___CALLSITE)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.i
  %.sroa.06.0 = phi i8 [ %i.m, %bb.i ], [ %i.l, %bb.f ], [ %i.l, %bb.f ]
  %i.n = load ptr, ptr @_RNvNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_error10___CALLSITE, align 8, !nonnull !5, !align !17, !noundef !5
  %i.o = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n, i8 noundef %.sroa.06.0)
          to label %bb.j unwind label %bb.d

bb.i:                                             ; preds = %bb.g
  %i.p = icmp eq i8 %i.m, 0
  br i1 %i.p, label %bb.k, label %bb.h

bb.j:                                             ; preds = %bb.h
  br i1 %i.o, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.e, %bb.m, %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 29, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs7SkU8gPisFf_4redb5error16TransactionErrorECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef align 8 dereferenceable(24) %1)
  ret void

bb.l:                                             ; preds = %bb.j
  %i.r = load ptr, ptr @_RNvNvNtNtNtCsiAynQAjgDuT_10xet_client10cas_client10simulation12local_client17map_redb_db_error10___CALLSITE, align 8, !nonnull !5, !align !17, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.g, ptr %i.b, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.418.0..sroa_idx, align 8
  store ptr @12, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.b, ptr %i.t, align 8
  store ptr %i.c, ptr %i.d, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @7, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.k

bb.n:                                             ; preds = %bb.d, %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.o:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SBT_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1v_17session_directory12merge_shardsRNtNtB3x_4path4PathB4N_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val6 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val5, i64 48
  %i.f = load i32, ptr %i.e, align 8, !range !33, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 48
  %i.j = load i32, ptr %i.i, align 8, !range !33, !noundef !5
  %i.k = icmp eq i64 %i.d, %i.h
  %i.l = icmp samesign ult i32 %i.f, %i.j
  %i.m = icmp slt i64 %i.d, %i.h
  %i.n = select i1 %i.k, i1 %i.l, i1 %i.m         ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.n, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %i.o = phi i32 [ %i.u, %bb.c ], [ %i.f, %.preheader11 ]
  %i.p = phi i64 [ %i.s, %bb.c ], [ %i.d, %.preheader11 ] ; 2 uses
  %.sroa.01.0.i13 = phi i64 [ %i.z, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val3, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.u = load i32, ptr %i.t, align 8, !range !33, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.s, %i.p
  %i.w = icmp samesign ult i32 %i.u, %i.o
  %i.x = icmp slt i64 %i.s, %i.p
  %i.y = select i1 %i.v, i1 %i.w, i1 %i.x
  br i1 %i.y, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %i.aa = phi i32 [ %i.ag, %bb.d ], [ %i.f, %.preheader ]
  %i.ab = phi i64 [ %i.ae, %bb.d ], [ %i.d, %.preheader ] ; 2 uses
  %.sroa.01.1.i16 = phi i64 [ %i.al, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !range !33, !noundef !5 ; 2 uses
  %i.ah = icmp eq i64 %i.ae, %i.ab
  %i.ai = icmp samesign ult i32 %i.ag, %i.aa
  %i.aj = icmp slt i64 %i.ae, %i.ab
  %i.ak = select i1 %i.ah, i1 %i.ai, i1 %i.aj
  br i1 %i.ak, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.al = add nuw nsw i64 %.sroa.01.1.i16, 1      ; 2 uses
  %exitcond24.not = icmp eq i64 %i.al, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.an, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit
  br i1 %i.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit
  %i.ao = or i64 %1, 1
  %i.ap = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = xor i32 %i.ar, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB17_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1J_17session_directory12merge_shardsRNtNtB3M_4path4PathB52_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.as, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path4PathB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread
  %i.at = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i
  %n.vec = and i64 %i.at, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = xor i64 %index, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !935, !noalias !934
  %wide.load46 = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !935, !noalias !934
  %i.az = getelementptr i8, ptr %i.ax, i64 -8
  %i.ba = getelementptr i8, ptr %i.ax, i64 -24
  %wide.load47 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !936, !noalias !933
  %wide.load48 = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !936, !noalias !933
  %reverse = shufflevector <2 x i64> %wide.load47, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse49 = shufflevector <2 x i64> %wide.load48, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x i64> %reverse, ptr %i.aw, align 8, !alias.scope !935, !noalias !934
  store <2 x i64> %reverse49, ptr %i.bb, align 8, !alias.scope !935, !noalias !934
  %i.bc = getelementptr i8, ptr %i.ax, i64 -8
  %i.bd = getelementptr i8, ptr %i.ax, i64 -24
  %reverse50 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse51 = shufflevector <2 x ptr> %wide.load46, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse50, ptr %i.bc, align 8, !alias.scope !936, !noalias !933
  store <2 x ptr> %reverse51, ptr %i.bd, align 8, !alias.scope !936, !noalias !933
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !931

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bk, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader ] ; 3 uses
  %i.bf = xor i64 %.sroa.0.016.i.i, -1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.au, i64 %i.bf ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !935, !noalias !934, !nonnull !5, !noundef !5
  %i.bj = load i64, ptr %i.bh, align 8, !alias.scope !936, !noalias !933
  store i64 %i.bj, ptr %i.bg, align 8, !alias.scope !935, !noalias !934
  store ptr %i.bi, ptr %i.bh, align 8, !alias.scope !936, !noalias !933
  %i.bk = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.at
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i, !llvm.loop !932
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SBT_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1v_17session_directory12merge_shardsRNtNtB3x_4path7PathBufB4N_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.val6 = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val5, i64 48
  %i.f = load i32, ptr %i.e, align 8, !range !33, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val6, i64 48
  %i.j = load i32, ptr %i.i, align 8, !range !33, !noundef !5
  %i.k = icmp eq i64 %i.d, %i.h
  %i.l = icmp samesign ult i32 %i.f, %i.j
  %i.m = icmp slt i64 %i.d, %i.h
  %i.n = select i1 %i.k, i1 %i.l, i1 %i.m         ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.n, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %i.o = phi i32 [ %i.u, %bb.c ], [ %i.f, %.preheader11 ]
  %i.p = phi i64 [ %i.s, %bb.c ], [ %i.d, %.preheader11 ] ; 2 uses
  %.sroa.01.0.i13 = phi i64 [ %i.z, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val3, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.u = load i32, ptr %i.t, align 8, !range !33, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.s, %i.p
  %i.w = icmp samesign ult i32 %i.u, %i.o
  %i.x = icmp slt i64 %i.s, %i.p
  %i.y = select i1 %i.v, i1 %i.w, i1 %i.x
  br i1 %i.y, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %i.aa = phi i32 [ %i.ag, %bb.d ], [ %i.f, %.preheader ]
  %i.ab = phi i64 [ %i.ae, %bb.d ], [ %i.d, %.preheader ] ; 2 uses
  %.sroa.01.1.i16 = phi i64 [ %i.al, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ag = load i32, ptr %i.af, align 8, !range !33, !noundef !5 ; 2 uses
  %i.ah = icmp eq i64 %i.ae, %i.ab
  %i.ai = icmp samesign ult i32 %i.ag, %i.aa
  %i.aj = icmp slt i64 %i.ae, %i.ab
  %i.ak = select i1 %i.ah, i1 %i.ai, i1 %i.aj
  br i1 %i.ak, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.al = add nuw nsw i64 %.sroa.01.1.i16, 1      ; 2 uses
  %exitcond24.not = icmp eq i64 %i.al, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.an, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit
  br i1 %i.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit
  %i.ao = or i64 %1, 1
  %i.ap = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = xor i32 %i.ar, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB17_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1J_17session_directory12merge_shardsRNtNtB3M_4path7PathBufB52_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.as, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, %bb.e
  ret void

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB6_SB12_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1E_17session_directory12merge_shardsRNtNtB3H_4path7PathBufB4X_E0E0ECsjHtSR7YjKD4_8xet_data.exit.thread
  %i.at = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i
  %n.vec = and i64 %i.at, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = xor i64 %index, -1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.ax = getelementptr [8 x i8], ptr %i.au, i64 %i.av ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %wide.load = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !946, !noalias !945
  %wide.load46 = load <2 x ptr>, ptr %i.ay, align 8, !alias.scope !946, !noalias !945
  %i.az = getelementptr i8, ptr %i.ax, i64 -8
  %i.ba = getelementptr i8, ptr %i.ax, i64 -24
  %wide.load47 = load <2 x i64>, ptr %i.az, align 8, !alias.scope !947, !noalias !944
  %wide.load48 = load <2 x i64>, ptr %i.ba, align 8, !alias.scope !947, !noalias !944
  %reverse = shufflevector <2 x i64> %wide.load47, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse49 = shufflevector <2 x i64> %wide.load48, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store <2 x i64> %reverse, ptr %i.aw, align 8, !alias.scope !946, !noalias !945
  store <2 x i64> %reverse49, ptr %i.bb, align 8, !alias.scope !946, !noalias !945
  %i.bc = getelementptr i8, ptr %i.ax, i64 -8
  %i.bd = getelementptr i8, ptr %i.ax, i64 -24
  %reverse50 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse51 = shufflevector <2 x ptr> %wide.load46, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse50, ptr %i.bc, align 8, !alias.scope !947, !noalias !944
  store <2 x ptr> %reverse51, ptr %i.bd, align 8, !alias.scope !947, !noalias !944
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !942

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i

_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i: ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.bk, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i.preheader ] ; 3 uses
  %i.bf = xor i64 %.sroa.0.016.i.i, -1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bh = getelementptr [8 x i8], ptr %i.au, i64 %i.bf ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !alias.scope !946, !noalias !945, !nonnull !5, !noundef !5
  %i.bj = load i64, ptr %i.bh, align 8, !alias.scope !947, !noalias !944
  store i64 %i.bj, ptr %i.bg, align 8, !alias.scope !946, !noalias !945
  store ptr %i.bi, ptr %i.bh, align 8, !alias.scope !947, !noalias !944
  %i.bk = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bk, %i.at
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE12split_at_mutCsjHtSR7YjKD4_8xet_data.exit11.i.i, !llvm.loop !943
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable7ipnsortTyTmmEENCINvMB6_SBT_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3v_Es2_0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %.val6 = load i64, ptr %0, align 8, !noundef !5
  %i.c = icmp ult i64 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i64 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i64, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.e = icmp ult i64 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i64 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.h = icmp ult i64 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %.lr.ph17

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
  %i.j = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.k, label %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, label %bb.e

_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit
  br i1 %i.c, label %.lr.ph.preheader.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCsjHtSR7YjKD4_8xet_data.exit

bb.e:                                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit
  %i.l = or i64 %1, 1
  %i.m = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = trunc nuw nsw i64 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1
  %i.p = xor i32 %i.o, 126
  tail call fastcc void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable9quicksort9quicksortTyTmmEENCINvMB8_SB17_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtBa_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3K_Es2_0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.p, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCsjHtSR7YjKD4_8xet_data.exit

_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCsjHtSR7YjKD4_8xet_data.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECsjHtSR7YjKD4_8xet_data.exit.i.i, %bb.a, %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.thread, %bb.e
  ret void

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6shared17find_existing_runTyTmmEENCINvMB6_SB12_20sort_unstable_by_keyyNCINvNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard14set_operations13set_operationINtNtNtB8_2io6cursor6CursorRINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB3F_Es2_0E0ECsjHtSR7YjKD4_8xet_data.exit.thread
  %i.q = lshr i64 %1, 1
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECsjHtSR7YjKD4_8xet_data.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.w, %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECsjHtSR7YjKD4_8xet_data.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.s = xor i64 %.sroa.0.017.i.i, -1
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.u = getelementptr [16 x i8], ptr %i.r, i64 %i.s
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsjHtSR7YjKD4_8xet_data(ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, i64 noundef 2)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECsjHtSR7YjKD4_8xet_data.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #26
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingTyTmmEEECsjHtSR7YjKD4_8xet_data.exit.i.i: ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.0.017.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.q
  br i1 %exitcond.not.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSTyTmmEE7reverseCsjHtSR7YjKD4_8xet_data.exit, label %.lr.ph.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB19_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEECsjHtSR7YjKD4_8xet_data(ptr noundef initializes((24, 25)) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 2, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !954, !noundef !5
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1D_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE0ECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsO_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1D_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE0ECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() #27
          to label %.noexc1.i unwind label %bb.d

.noexc1.i:                                        ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtB1D_6option6OptionTmINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEEEE0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextECsjHtSR7YjKD4_8xet_data(ptr noundef initializes((72, 73)) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.c = load i64, ptr %i.b, align 8, !range !27, !alias.scope !980, !noundef !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECsjHtSR7YjKD4_8xet_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.g = load ptr, ptr %i.e, align 8, !alias.scope !984, !nonnull !5, !noundef !5
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !984
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECsjHtSR7YjKD4_8xet_data.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #28
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  %i.j = load ptr, ptr %i.e, align 8, !alias.scope !987, !nonnull !5, !noundef !5
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !987
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECsjHtSR7YjKD4_8xet_data.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #28
          to label %_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECsjHtSR7YjKD4_8xet_data.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop() #27
          to label %.noexc2.i unwind label %bb.h

.noexc2.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtNtCsG258MDvU3F_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtNtCsUrhh0HcRih_5tokio7runtime7context7ContextE0ECsjHtSR7YjKD4_8xet_data.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort8heapsortINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB15_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1H_17session_directory12merge_shardsRNtNtB3K_4path4PathB50_E0E0ECsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not17 = icmp eq i64 %i.b, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph19

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB16_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1I_17session_directory12merge_shardsRNtNtB3L_4path4PathB51_E0E0ECsjHtSR7YjKD4_8xet_data.exit, %bb.a
  ret void

.lr.ph19:                                         ; preds = %bb.a, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB16_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1I_17session_directory12merge_shardsRNtNtB3L_4path4PathB51_E0E0ECsjHtSR7YjKD4_8xet_data.exit
  %.sroa.2.018 = phi i64 [ %i.c, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB16_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1I_17session_directory12merge_shardsRNtNtB3L_4path4PathB51_E0E0ECsjHtSR7YjKD4_8xet_data.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.018, -1             ; 6 uses
  %.not9 = icmp ult i64 %i.c, %1
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph19
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph19
  tail call void @_RNvMNtCskKLDkoKarTP_4core5sliceSINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileE14swap_uncheckedCsjHtSR7YjKD4_8xet_data(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.c) ; 4 uses
  %i.e = icmp ule i64 %.sroa.04.0, %..i
  tail call void @llvm.assume(i1 %i.e)
  %i.f = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.g = or disjoint i64 %i.f, 1                  ; 2 uses
  %.not.i14 = icmp samesign ult i64 %i.g, %..i
  br i1 %.not.i14, label %.lr.ph, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort8unstable8heapsort9sift_downINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCs31YAwBA1AlL_19xet_core_structures14metadata_shard17shard_file_handle12MDBShardFileENCINvMB8_SB16_20sort_unstable_by_keyNtNtCsG258MDvU3F_3std4time10SystemTimeNCINvNtB1I_17session_directory12merge_shardsRNtNtB3L_4path4PathB51_E0E0ECsjHtSR7YjKD4_8xet_data.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.h = phi i64 [ %i.aq, %bb.g ], [ %i.g, %bb.d ] ; 3 uses
  %i.i = phi i64 [ %i.ap, %bb.g ], [ %i.f, %bb.d ]
  %.sroa.0.0.i15 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.j = add nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
end_hunk_0
