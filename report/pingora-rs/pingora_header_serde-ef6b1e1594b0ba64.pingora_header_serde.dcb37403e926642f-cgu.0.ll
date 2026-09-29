Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_header_serde-ef6b1e1594b0ba64.pingora_header_serde.dcb37403e926642f-cgu.0?download=true
inline.NumInlined: 360
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB6_16CompressionInner31decompress_to_buffer_using_dictINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_:bb.a

bb.c:                                             ; preds = %.noexc
  %i.n = invoke { ptr, i64 } @_RNvCs13pZzHa6nno_9zstd_safe14get_error_name(i64 noundef %i.m)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %.noexc
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.m, ptr %i.o, align 8, !alias.scope !38, !noalias !36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.p, align 8
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.q = load i64, ptr %i.b, align 8, !noundef !9
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.b, align 8
  ret void

bb.f:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, i64 } %i.n, 0
  %i.t = extractvalue { ptr, i64 } %i.n, 1
  store ptr %i.s, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.c, %_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner14get_de_context.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load i64, ptr %i.b, align 8, !noundef !9
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.b, align 8
  resume { ptr, i32 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerNtNtCsexYYUdYSQU6_5alloc6string6StringRShECsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(232) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 14 uses
  %i.c = alloca [96 x i8], align 8                ; 14 uses
  %i.d = alloca [104 x i8], align 8               ; 15 uses
  %i.e = alloca [104 x i8], align 8               ; 15 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i = alloca [23 x i8], align 1          ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 18 uses
  %i.i = alloca [32 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 11 uses
  %i.m = alloca [32 x i8], align 8                ; 14 uses
  %i.n = alloca [72 x i8], align 8                ; 11 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RINvMNtNtCs84JG9zk80ZV_4http6header5valueNtB3_11HeaderValue16try_from_genericRShNvMNtCs1eA6bChxBZF_5bytes5bytesNtB1j_5Bytes15copy_from_sliceECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4)
          to label %_RNvXs3_NtCskKLDkoKarTP_4core7convertRShINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCsiWMK64dCVjf_20pingora_header_serde.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvXs3_NtCskKLDkoKarTP_4core7convertRShINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !12, !alias.scope !366, !noalias !367, !noundef !9 ; 2 uses
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_RNvXs3_NtCskKLDkoKarTP_4core7convertRShINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCsiWMK64dCVjf_20pingora_header_serde.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !368
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i16 13, ptr %i.t, align 8, !noalias !369
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 65
  store i8 3, ptr %i.u, align 1, !noalias !368
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i8 0, ptr %i.v, align 8, !noalias !368
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr null, ptr %i.w, align 8, !noalias !368
  store i64 0, ptr %i.n, align 8, !noalias !370
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @7, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !370
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 26, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !370
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !371
  %i.x = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #21, !noalias !371 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %bb.f, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22
          to label %.noexc.i.i unwind label %bb.d, !noalias !368

.noexc.i.i:                                       ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.n) #23
          to label %.body.thread unwind label %bb.e, !noalias !368

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !368
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.x, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.ab, align 8
  store i8 1, ptr %0, align 8
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.ec

bb.g:                                             ; preds = %_RNvXs3_NtCskKLDkoKarTP_4core7convertRShINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCsiWMK64dCVjf_20pingora_header_serde.exit
  %.sroa.0.0.copyload = load ptr, ptr %i.p, align 8, !alias.scope !372, !noalias !373 ; 20 uses
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.718.sroa.0.0.copyload = load ptr, ptr %.sroa.718.0..sroa_idx, align 8, !alias.scope !372, !noalias !373 ; 12 uses
  %.sroa.718.sroa.5.0..sroa.718.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.718.sroa.5.0.copyload = load i64, ptr %.sroa.718.sroa.5.0..sroa.718.0..sroa_idx.sroa_idx, align 8, !alias.scope !372, !noalias !373 ; 12 uses
  %.sroa.718.sroa.6.0..sroa.718.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.718.sroa.6.0.copyload = load ptr, ptr %.sroa.718.sroa.6.0..sroa.718.0..sroa_idx.sroa_idx, align 8, !alias.scope !372, !noalias !373 ; 12 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 33
  %.sroa.11.sroa.0.0.copyload = load i56, ptr %.sroa.11.0..sroa_idx, align 1, !alias.scope !372, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !14, !noundef !9
  %.not = icmp eq i64 %i.ad, -1                   ; 2 uses
  %. = select i1 %.not, ptr null, ptr %i.ac       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !377
  invoke void @_RNvXs1_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtNtCsexYYUdYSQU6_5alloc6string6StringNtB5_18IntoCaseHeaderName21into_case_header_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.h unwind label %.split.thread.i, !noalias !378

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit114.i: ; preds = %bb.ea, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i
  %.sroa.014.0.i = phi i1 [ %.sroa.014.2133.i, %bb.ea ], [ %.sroa.014.2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i ]
  %.pn34.i = phi { ptr, i32 } [ %.pn134.i, %bb.ea ], [ %.pn.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i ] ; 2 uses
  br i1 %.sroa.014.0.i, label %bb.eb, label %.body.thread34

.split.thread.i:                                  ; preds = %bb.dz, %bb.g
  %lpad.thr_comm226.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !377
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !377, !noundef !9 ; 14 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !377, !noundef !9 ; 14 uses
  invoke void @_RNvMs_NtNtCs84JG9zk80ZV_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ah)
          to label %bb.i unwind label %.thread.i, !noalias !379

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.dx, %.body.thread.i, %.body.i, %bb.bn, %.thread.i.i, %bb.bd, %bb.bc, %bb.az, %bb.z, %bb.y, %bb.v
  %.sroa.014.2.i = phi i1 [ false, %.body.i ], [ true, %.body.thread.i ], [ true, %bb.dx ], [ false, %bb.v ], [ false, %bb.bn ], [ false, %.thread.i.i ], [ false, %bb.bd ], [ false, %bb.bc ], [ false, %bb.az ], [ false, %bb.z ], [ false, %bb.y ] ; 2 uses
  %.sroa.011.0.i = phi i8 [ %.sroa.011.1.i, %.body.i ], [ %.sroa.011.2.lpad-body139.i, %.body.thread.i ], [ %.sroa.011.2.lpad-body139.i, %bb.dx ], [ %.sroa.011.1.i, %bb.v ], [ %.sroa.011.1.i, %bb.bn ], [ %.sroa.011.1.i, %.thread.i.i ], [ %.sroa.011.1.i, %bb.bd ], [ %.sroa.011.1.i, %bb.bc ], [ %.sroa.011.1.i, %bb.az ], [ %.sroa.011.1.i, %bb.z ], [ %.sroa.011.1.i, %bb.y ]
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %eh.lpad-body140.i, %.body.thread.i ], [ %eh.lpad-body140.i, %bb.dx ], [ %i.ci, %bb.v ], [ %.pn128.i.i, %bb.bn ], [ %.pn128.i.i, %.thread.i.i ], [ %i.fx, %bb.bd ], [ %i.fx, %bb.bc ], [ %i.ft, %bb.az ], [ %i.cq, %bb.z ], [ %i.cq, %bb.y ] ; 2 uses
  %i.ai = trunc nuw i8 %.sroa.011.0.i to i1
  br i1 %i.ai, label %bb.ea, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit114.i

.thread.i:                                        ; preds = %.noexc.i, %bb.j, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ea

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !377
  store i16 13, ptr %i.j, align 8, !noalias !377
  %i.ak = load i64, ptr %i.k, align 8, !range !15, !noalias !377, !noundef !9
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !380
  store i64 0, ptr %i.f, align 8, !noalias !380
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @3, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !380
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 19, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !380
  %i.am = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameE4fromCsiWMK64dCVjf_20pingora_header_serde()
          to label %.noexc.i unwind label %.thread.i, !noalias !379 ; 2 uses

.noexc.i:                                         ; preds = %bb.j
  %i.an = extractvalue { ptr, ptr } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, ptr } %i.am, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %i.ap = invoke fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noundef nonnull %i.an, ptr nonnull %i.ao)
          to label %bb.dz unwind label %.thread.i

bb.k:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.015.0.copyload.i = load ptr, ptr %i.aq, align 8, !noalias !377 ; 3 uses
  %.sroa.416.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i, i64 24, i1 false), !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !377
  store ptr %.sroa.015.0.copyload.i, ptr %i.l, align 8, !noalias !377
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %.not32.i = icmp eq ptr %.sroa.015.0.copyload.i, null
  br i1 %.not32.i, label %bb.bp, label %bb.bo

bb.m:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCsiWMK64dCVjf_20pingora_header_serde.exit.i, %bb.k
  %.sroa.011.1.i = phi i8 [ 0, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultbNtNtNtCs84JG9zk80ZV_4http6header3map14MaxSizeReachedE6expectCsiWMK64dCVjf_20pingora_header_serde.exit.i ], [ 1, %bb.k ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !377
  %.sroa.16.32.insert.ext = zext i56 %.sroa.11.sroa.0.0.copyload to i64
  %.sroa.16.32.insert.shift = shl nuw i64 %.sroa.16.32.insert.ext, 8
  %.sroa.14.32.insert.ext = zext nneg i8 %i.r to i64
  %.sroa.14.32.insert.insert = or disjoint i64 %.sroa.16.32.insert.shift, %.sroa.14.32.insert.ext ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !381)
  call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ar = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.n unwind label %bb.bl, !noalias !383

.body.i.i:                                        ; preds = %bb.au
  %lpad.thr_comm.split-lp136.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.m
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !noalias !384, !nonnull !9, !noundef !9
  invoke void %i.at(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i unwind label %bb.bj, !noalias !383, !inline_history !0

bb.p:                                             ; preds = %bb.n
  %i.au = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h), !noalias !385 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aw = load i16, ptr %i.av, align 8, !alias.scope !386, !noalias !387, !noundef !9 ; 3 uses
  %i.ax = and i16 %i.aw, %i.au
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !386, !noalias !387, !noundef !9 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !alias.scope !386, !noalias !387, !nonnull !9
  %i.bd = zext i16 %i.aw to i64
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !386, !noalias !387 ; 14 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !386, !noalias !387, !nonnull !9 ; 3 uses
  %i.bi = load ptr, ptr %i.h, align 8, !alias.scope !382, !noalias !388 ; 9 uses
  %i.bj = icmp eq ptr %i.bi, null                 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 8, !range !16, !alias.scope !382, !noalias !388
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !382, !noalias !388 ; 9 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !alias.scope !382, !noalias !388 ; 8 uses
  %.not201 = icmp eq i64 %i.bb, 0
  br label %.outer161

.outer161:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i, %bb.p
  %.sroa.09.0.i.i.ph = phi i64 [ %i.de, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ 0, %bb.p ] ; 3 uses
  %.sroa.01.0.i.i.ph = phi i64 [ %i.df, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bp = icmp ult i64 %.sroa.01.0.i.i.ph, %i.bb  ; 2 uses
  %.not201.not = xor i1 %.not201, true
  %brmerge = or i1 %i.bp, %.not201.not
  %.sroa.01.0.i.i.ph.mux = select i1 %i.bp, i64 %.sroa.01.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit194, label %infloop

.loopexit194:                                     ; preds = %.outer161
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %.sroa.01.0.i.i.ph.mux ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !noalias !383, !noundef !9 ; 2 uses
  %.not.i.i = icmp eq i16 %i.br, -1
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.aj
  unreachable

bb.r:                                             ; preds = %.loopexit194
  %i.bs = zext i16 %i.br to i64                   ; 6 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !383, !noundef !9 ; 2 uses
  %i.bv = and i16 %i.bu, %i.aw
  %i.bw = zext i16 %i.bv to i64
  %i.bx = sub i64 %.sroa.01.0.i.i.ph.mux, %i.bw
  %i.by = and i64 %i.bx, %i.bd
  %i.bz = icmp samesign ult i64 %i.by, %.sroa.09.0.i.i.ph
  br i1 %i.bz, label %bb.aw, label %bb.ae

bb.s:                                             ; preds = %.loopexit194
  %i.ca = icmp ult i64 %i.bf, 88686269585142076
  call void @llvm.assume(i1 %i.ca)
  %.sroa.699.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.699.0.copyload.i.i = load ptr, ptr %.sroa.699.0..sroa_idx.i.i, align 8, !alias.scope !382, !noalias !388 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %i.cb = icmp samesign ugt i64 %i.bf, 32767
  br i1 %i.cb, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !390
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  store i16 %i.au, ptr %i.cd, align 8, !noalias !390
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %i.bi, ptr %i.ce, align 8, !noalias !391
  %.sroa.684.0..sroa_idx85.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store ptr %i.bo, ptr %.sroa.684.0..sroa_idx85.i.i, align 8, !noalias !391
  %.sroa.888.0..sroa_idx89.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 %i.bn, ptr %.sroa.888.0..sroa_idx89.i.i, align 8, !noalias !391
  %.sroa.1092.0..sroa_idx93.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store ptr %.sroa.699.0.copyload.i.i, ptr %.sroa.1092.0..sroa_idx93.i.i, align 8, !noalias !391
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %.sroa.0.0.copyload, ptr %i.cf, align 8, !noalias !392
  %.sroa.5102.0..sroa_idx103.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.718.sroa.0.0.copyload, ptr %.sroa.5102.0..sroa_idx103.i.i, align 8, !noalias !392
  %.sroa.6105.0..sroa_idx106.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.sroa.718.sroa.5.0.copyload, ptr %.sroa.6105.0..sroa_idx106.i.i, align 8, !noalias !392
  %.sroa.7108.0..sroa_idx109.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.718.sroa.6.0.copyload, ptr %.sroa.7108.0..sroa_idx109.i.i, align 8, !noalias !392
  %.sroa.8111.0..sroa_idx112.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.14.32.insert.insert, ptr %.sroa.8111.0..sroa_idx112.i.i, align 8, !noalias !392
  store i64 0, ptr %i.e, align 8, !noalias !390
  %i.cg = load i64, ptr %i.cc, align 8, !range !11, !alias.scope !393, !noalias !394, !noundef !9
  %i.ch = icmp eq i64 %i.bf, %i.cg
  br i1 %i.ch, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEE8grow_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cc)
          to label %._crit_edge172.i.i unwind label %bb.v, !noalias !395

._crit_edge172.i.i:                               ; preds = %bb.u
  %.pre173.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !393, !noalias !394
  br label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBG_5value11HeaderValueEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.e) #23
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.w, !noalias !396

bb.w:                                             ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !395
  unreachable

bb.x:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !397, !nonnull !9, !noundef !9
  invoke void %i.cl(ptr noundef %.sroa.718.sroa.6.0.copyload, ptr noundef %.sroa.718.sroa.0.0.copyload, i64 noundef %.sroa.718.sroa.5.0.copyload)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i unwind label %bb.y, !noalias !398, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i: ; preds = %bb.x
  br i1 %i.bj, label %bb.du, label %.invoke251.i

.invoke251.i:                                     ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i, %bb.bk
  %i.cm = phi ptr [ %i.gw, %bb.bk ], [ %.sroa.699.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %.sroa.663.0.copyload.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %i.cn = phi ptr [ %i.gy, %bb.bk ], [ %i.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %i.bo, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %i.co = phi i64 [ %i.ha, %bb.bk ], [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %i.bn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %.pn253.i = phi ptr [ %i.gt, %bb.bk ], [ %i.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i.i.i ], [ %i.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECsiWMK64dCVjf_20pingora_header_serde.exit.i44.i.i ]
  %.in252.i = getelementptr inbounds nuw i8, ptr %.pn253.i, i64 32
  %i.cp = load ptr, ptr %.in252.i, align 8, !noalias !383, !nonnull !9, !noundef !9
  invoke void %i.cp(ptr noundef %i.cm, ptr noundef %i.cn, i64 noundef %i.co)
          to label %bb.du unwind label %.body.i, !noalias !379, !inline_history !79

bb.y:                                             ; preds = %bb.x
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !399, !nonnull !9, !noundef !9
  invoke void %i.cs(ptr noundef %.sroa.699.0.copyload.i.i, ptr noundef %i.bo, i64 noundef %i.bn)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.aa, !noalias !398, !inline_history !1

bb.aa:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !398
  unreachable

bb.ab:                                            ; preds = %._crit_edge172.i.i, %bb.t
  %i.cu = phi ptr [ %.pre173.i.i, %._crit_edge172.i.i ], [ %i.bh, %bb.t ]
  %i.cv = getelementptr inbounds nuw [104 x i8], ptr %i.cu, i64 %i.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.cv, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.e, i64 104, i1 false), !noalias !396
  %i.cw = add nuw nsw i64 %i.bf, 1
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2b_16case_header_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4u_13FlattenCompatppE9iter_fold7flattenIBO_INtNtB8_3zip3ZipINtB1p_4IterB27_EIB5J_NtNtB1r_5value11HeaderValueEENCNCB3f_00EuNCINvNvXsi_B4u_B4H_B3F_4fold7flattenB5o_uNCINvNvB3F_8for_each4callTRB27_RB64_ENCINvB2b_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde:bb.a
  %.sroa.72.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !794, !noalias !795, !noundef !9
  %.not3.i.i.i = icmp eq i64 %i.c, 0
  %.sroa.01.0.i.i.i = select i1 %.not3.i.i.i, i64 2, i64 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !796)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !797
  tail call void @llvm.experimental.noalias.scope.decl(metadata !798)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !799, !noalias !800, !noundef !9
  %.not.i.i.us.i = icmp eq i64 %i.e, 0
  %..i.i.us.i = select i1 %.not.i.i.us.i, i64 2, i64 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !797
  store i64 %..i.i.us.i, ptr %i.a, align 8, !noalias !797
  store ptr %1, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !797
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !797
  store i64 %.sroa.01.0.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !797
  store ptr %0, ptr %.sroa.72.0..sroa_idx.i.i, align 8, !noalias !797
  store i64 0, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !797
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs84JG9zk80ZV_4http6header3map4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEIB1e_NtNtB1i_5value11HeaderValueEENCNCNvB1X_16case_header_iter00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB41_8for_each4callTRB1T_RB33_ENCINvB1X_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0ECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !797
  br label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit

_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNtNtB2F_8adapters3map8map_foldBH_INtB3p_3MapINtNtB3r_3zip3ZipINtBL_4IterB1t_EIB4p_NtNtBN_5value11HeaderValueEENCNCNvB1x_16case_header_iter00EuNCB5f_0NCINvNvMsg_NtB3r_7flattenINtB5Z_13FlattenCompatppE9iter_fold7flattenB3W_uNCINvNvXsi_B5Z_B6d_B2z_4fold7flattenB3W_uNCINvNvB2z_8for_each4callTRB1t_RB4J_ENCINvB1x_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.a, %.lr.ph.split.us.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2_11Compression8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.c = tail call noundef i64 @_RNvCs13pZzHa6nno_9zstd_safe14compress_bound(i64 noundef range(i64 0, -9223372036854775808) %3), !noalias !814 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !814
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !814
  %i.d = load i64, ptr %i.a, align 8, !range !15, !noalias !814, !noundef !9
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !21, !noalias !814, !noundef !9 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !814
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22, !noalias !814
  unreachable

_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !814, !nonnull !9, !noundef !9 ; 2 uses
  %i.k = icmp ule i64 %i.c, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !814
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !814
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.l, align 8, !alias.scope !814
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !alias.scope !814
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.n = invoke noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellNtCs13pZzHa6nno_9zstd_safe4CCtxEE10get_or_tryNCINvB2_6get_orNCNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2y_16CompressionInner15get_com_context0E0uEB2A_(ptr noundef nonnull align 8 %1)
          to label %.noexc unwind label %bb.f     ; 10 uses

.noexc:                                           ; preds = %_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = load i64, ptr %i.n, align 8, !noalias !816, !noundef !9
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i, label %bb.c, !prof !10

bb.c:                                             ; preds = %.noexc
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #20
          to label %.noexc4 unwind label %bb.f

.noexc4:                                          ; preds = %bb.c
  unreachable

_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i: ; preds = %.noexc
  store i64 -1, ptr %i.n, align 8, !noalias !816
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.r = load ptr, ptr %i.q, align 8, !noalias !818, !nonnull !9, !noundef !9
  %i.s = tail call noundef i64 @ZSTD_compressCCtx(ptr noundef nonnull %i.r, ptr noundef nonnull %i.j, i64 noundef range(i64 0, -9223372036854775808) %i.g, ptr noundef nonnull readonly %2, i64 noundef range(i64 0, -9223372036854775808) %3, i32 noundef %4) #21, !noalias !819
  %i.t = invoke { i64, i64 } @_RNvCs13pZzHa6nno_9zstd_safe10parse_code(i64 noundef %i.s)
          to label %.noexc.i unwind label %bb.e, !noalias !820 ; 2 uses

.noexc.i:                                         ; preds = %_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i
  %i.u = extractvalue { i64, i64 } %i.t, 0
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = extractvalue { i64, i64 } %i.t, 1        ; 2 uses
  br i1 %i.v, label %bb.d, label %.thread

bb.d:                                             ; preds = %.noexc.i
  %i.x = invoke { ptr, i64 } @_RNvCs13pZzHa6nno_9zstd_safe14get_error_name(i64 noundef %i.w)
          to label %bb.g unwind label %bb.e, !noalias !820 ; 2 uses

.thread:                                          ; preds = %.noexc.i
  store i64 %i.w, ptr %i.m, align 8, !alias.scope !821, !noalias !822
  %i.y = load i64, ptr %i.n, align 8, !noalias !820, !noundef !9
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.n, align 8, !noalias !820
  br label %bb.i

bb.e:                                             ; preds = %bb.d, %_RNvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB5_16CompressionInner15get_com_context.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load i64, ptr %i.n, align 8, !noalias !820, !noundef !9
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.n, align 8, !noalias !820
  br label %.body

bb.f:                                             ; preds = %bb.c, %_RNvNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstd27make_compressed_data_buffer.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.aa, %bb.e ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.ae = extractvalue { ptr, i64 } %i.x, 0       ; 2 uses
  %i.af = load i64, ptr %i.n, align 8, !noalias !820, !noundef !9
  %i.ag = add i64 %i.af, 1
  store i64 %i.ag, ptr %i.n, align 8, !noalias !820
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = extractvalue { ptr, i64 } %i.x, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ah, ptr %i.aj, align 8
  store i64 -1, ptr %0, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.j

bb.i:                                             ; preds = %.thread, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.k:                                             ; preds = %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !829, !noundef !9 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !alias.scope !829, !noundef !9
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.i.i, !prof !13

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !830, !noundef !9 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !830, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !830
  br label %_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsiWMK64dCVjf_20pingora_header_serde.exit

_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCskKLDkoKarTP_4core5slice4iter4IterhEE11spec_extendCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !830
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noundef %2, ptr %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 10 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !9, !nonnull !9
  invoke void %i.d(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.j

bb.c:                                             ; preds = %bb.h, %bb.g, %bb.a
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %i.r, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 65
  store i8 3, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i8 %.sroa.0.0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %3, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !833
  %i.j = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #21, !noalias !833 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %bb.i, !prof !13

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b) #23
          to label %.critedge unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.n = load i128, ptr %i.a, align 16, !noundef !9
  %i.o = icmp eq i128 %i.n, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.o, label %bb.h, label %bb.c

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %2, align 8, !nonnull !9, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load i8, ptr %i.q, align 8, !range !12, !noundef !9
  br label %bb.c

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.j

bb.j:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsiWMK64dCVjf_20pingora_header_serde(ptr nonnull %2, ptr nonnull %3) #23
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.critedge:                                        ; preds = %bb.l, %bb.e
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.s, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body10

bb.l:                                             ; preds = %bb.j
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #23
  br label %.critedge
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs1ll6eLl40nD_8httparse6HeaderE11extend_withCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !837, !noundef !9 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !alias.scope !837, !noundef !9
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCs1ll6eLl40nD_8httparse6HeaderE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 32)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCs1ll6eLl40nD_8httparse6HeaderE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCs1ll6eLl40nD_8httparse6HeaderE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.i = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.f ; 3 uses
  %i.k = icmp ugt i64 %1, 1
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCs1ll6eLl40nD_8httparse6HeaderE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit
  %i.l = add i64 %1, -1                           ; 2 uses
  %i.m = add i64 %1, -2
  %xtraiter = and i64 %i.l, 3                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 3
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.l, -4
  br label %.lr.ph

._crit_edge.thread.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.020.epil.init = phi ptr [ %i.j, %.lr.ph.preheader ], [ %i.v, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod29)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.sroa.0.020.epil = phi ptr [ %i.o, %.lr.ph.epil ], [ %.sroa.0.020.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.epil, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.020.epil, i64 32 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.epil, !llvm.loop !836

._crit_edge.thread:                               ; preds = %.lr.ph.epil, %._crit_edge.thread.unr-lcssa
  %.lcssa = phi ptr [ %i.v, %._crit_edge.thread.unr-lcssa ], [ %i.o, %.lr.ph.epil ]
  %i.p = add i64 %i.f, %1
  %i.q = add i64 %i.p, -1
  br label %bb.c

._crit_edge:                                      ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtCs1ll6eLl40nD_8httparse6HeaderE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa27 = phi ptr [ %.lcssa, %._crit_edge.thread ], [ %i.j, %._crit_edge ]
  %storemerge.lcssa26 = phi i64 [ %i.q, %._crit_edge.thread ], [ %i.f, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa27, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.r = add i64 %storemerge.lcssa26, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge17 = phi i64 [ %i.r, %bb.c ], [ %i.f, %._crit_edge ]
  store i64 %storemerge17, ptr %i.a, align 8
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.020 = phi ptr [ %i.j, %.lr.ph.preheader.new ], [ %i.v, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 128 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.thread.unr-lcssa, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i16 noundef %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !842, !noundef !9 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !alias.scope !842, !noundef !9
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 2, i64 noundef 4)
  %.pre = load i64, ptr %i.a, align 8
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE7reserveCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i64 [ %i.b, %bb.a ], [ %.pre, %bb.b ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
