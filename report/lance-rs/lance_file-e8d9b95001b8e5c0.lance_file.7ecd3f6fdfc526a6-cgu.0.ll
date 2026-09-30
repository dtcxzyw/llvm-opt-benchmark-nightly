Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statisticsNtB6_17StatisticsBuilder19statistics_appenderNtNtCs4ytUTZt2Gw9_11arrow_array5types24TimestampMillisecondTypeEBe_:bb.a
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %i.ba, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @754, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @755) #49
          to label %.noexc13 unwind label %bb.p

.noexc13:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.bb = load i64, ptr %.val11, align 8, !noundef !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.bc = load ptr, ptr %i.p, align 16, !alias.scope !966, !nonnull !62, !noundef !62
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !966
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit15

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit15 unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit15: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  invoke void @_RNvMs3_NtCs2bHstFFhpHt_17datafusion_common6scalarNtB5_11ScalarValue8to_array(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.m, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.bf)
          to label %bb.y unwind label %bb.b

bb.y:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit15
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.bg = load i64, ptr %i.m, align 8, !range !77, !alias.scope !967, !noalias !968, !noundef !62
  %.not.i = icmp eq i64 %i.bg, -1
  br i1 %.not.i, label %bb.ad, label %bb.z, !prof !71

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !968
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @638, i64 noundef 43, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @639, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #49
          to label %bb.ab unwind label %bb.aa, !noalias !967

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common5error15DataFusionErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h) #50
          to label %.body unwind label %bb.ac, !noalias !967

bb.ab:                                            ; preds = %bb.z
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !967
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bk = load <2 x ptr>, ptr %i.bj, align 8, !alias.scope !967, !noalias !968
  store <2 x ptr> %i.bk, ptr %i.n, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bl = invoke { ptr, ptr } @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_6as_any(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n)
          to label %bb.ag unwind label %bb.ae     ; 2 uses

bb.ae:                                            ; preds = %bb.ak, %bb.ai, %bb.ag, %bb.ad
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !970)
  call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.bn = load ptr, ptr %i.n, align 16, !alias.scope !972, !nonnull !62, !noundef !62
  %i.bo = atomicrmw sub ptr %i.bn, i64 1 release, align 8, !noalias !972
  %i.bp = icmp eq i64 %i.bo, 1
  br i1 %i.bp, label %bb.af, label %.body

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %.body unwind label %bb.as

bb.ag:                                            ; preds = %bb.ad
  %i.bq = extractvalue { ptr, ptr } %i.bl, 0      ; 4 uses
  %i.br = extractvalue { ptr, ptr } %i.bl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !invariant.load !62, !nonnull !62
  invoke void %i.bt(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noundef %i.bq)
          to label %bb.ah unwind label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.bu = load i128, ptr %i.i, align 16, !noundef !62
  %i.bv = icmp eq i128 %i.bu, 95596979119340338695567144368586080815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.bv, label %bb.aj, label %bb.ai, !prof !71

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #49
          to label %bb.f unwind label %bb.ae

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.bw = getelementptr i8, ptr %i.bq, i64 32
  %.val = load ptr, ptr %i.bw, align 8
  %i.bx = getelementptr i8, ptr %i.bq, i64 40
  %.val10 = load i64, ptr %i.bx, align 8, !noundef !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %.not24 = icmp ult i64 %.val10, 8
  br i1 %.not24, label %bb.ak, label %bb.al, !prof !61

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i18, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.by, align 8
  %.sroa.46.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i19, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @754, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @755) #49
          to label %.noexc20 unwind label %bb.ae

.noexc20:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.bz = load i64, ptr %.val, align 8, !noundef !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  %i.ca = load ptr, ptr %i.n, align 16, !alias.scope !975, !nonnull !62, !noundef !62
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !975
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit23

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit23 unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit23: ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ce = load i64, ptr %i.cd, align 16, !noundef !62
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types9Int64TypeE12append_valueCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(104) %0, i64 noundef %i.ce)
          to label %bb.an unwind label %bb.b

bb.an:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit23
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types24TimestampMillisecondTypeE12append_valueCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(104) %i.t, i64 noundef %i.bb)
          to label %bb.ao unwind label %bb.b

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types24TimestampMillisecondTypeE12append_valueCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(104) %i.ab, i64 noundef %i.bz)
          to label %bb.ap unwind label %bb.b

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 16 dereferenceable(144) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics13StatisticsRowEBL_.exit unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 16 dereferenceable(64) %i.bf) #50
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %.body, %bb.aq
  %common.resume.op = phi { ptr, i32 } [ %i.cf, %bb.aq ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics13StatisticsRowEBL_.exit: ; preds = %bb.ap
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 16 dereferenceable(64) %i.bf)
  ret void

bb.as:                                            ; preds = %bb.af, %bb.q, %.body
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB6_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxEBe_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = lshr i64 %.16.val, 3
  %i.d = add nsw i64 %i.c, -1                     ; 2 uses
  call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = icmp ult i64 %.16.val, 16
  br i1 %i.e, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit.thread, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.val.i.i.i.pre.i = load i64, ptr %.8.val, align 8, !alias.scope !988, !noalias !989
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i, %.lr.ph.split.i
  %.val.i.i.i.i.a = phi i64 [ 0, %.lr.ph.split.i ], [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 2 uses
  %i.h = phi i64 [ %.val.i.i.i.pre.i, %.lr.ph.split.i ], [ %.val7.i.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ag, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 4 uses
  %i.j = phi ptr [ %.8.val, %.lr.ph.split.i ], [ %i.k, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %.val7.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !988, !noalias !989, !noundef !62 ; 2 uses
  %i.l = icmp eq i64 %i.h, %.val7.i.i.i.i
  %i.m = load i64, ptr %i.f, align 8, !noalias !990, !noundef !62 ; 2 uses
  %i.n = lshr i64 %i.i, 3                         ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.m                  ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %.invoke

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.c
  %i.p = trunc i64 %i.i to i8
  %i.q = and i8 %i.p, 7
  %i.r = shl nuw i8 1, %i.q
  %i.s = load ptr, ptr %i.g, align 16, !noalias !990, !nonnull !62, !noundef !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !noalias !990, !noundef !62
  %i.v = or i8 %i.u, %i.r
  store i8 %i.v, ptr %i.t, align 1, !noalias !990
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i

.invoke:                                          ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ @215, %bb.c ], [ @216, %bb.d ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #49
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = trunc i64 %i.i to i8
  %i.y = and i8 %i.x, 7
  %i.z = shl nuw i8 1, %i.y
  %i.aa = xor i8 %i.z, -1
  %i.ab = load ptr, ptr %i.g, align 16, !noalias !990, !nonnull !62, !noundef !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.n ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !990, !noundef !62
  %i.ae = and i8 %i.ad, %i.aa
  store i8 %i.ae, ptr %i.ac, align 1, !noalias !990
  %i.af = add i64 %.val.i.i.i.i.a, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.1 = phi i64 [ %i.af, %bb.f ], [ %.val.i.i.i.i.a, %bb.e ] ; 3 uses
  %i.ag = add nuw i64 %i.i, 1                     ; 2 uses
  %exitcond = icmp eq i64 %i.ag, %i.d
  br i1 %exitcond, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit, label %bb.b

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit.thread, label %bb.g

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit.thread: ; preds = %bb.a, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.k

bb.g:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit
  %i.ah = load ptr, ptr %i.g, align 16, !nonnull !62, !noundef !62 ; 2 uses
  %i.ai = load i64, ptr %i.f, align 8, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ah, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx13, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.al, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !991
  %i.am = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !991 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.l, !prof !61

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %bb.l, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.1, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ai, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  br label %bb.k

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ar, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body7

bb.m:                                             ; preds = %.invoke
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB6_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxEBe_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(none) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = lshr i64 %.16.val, 3
  %i.d = add nsw i64 %i.c, -1                     ; 2 uses
  call void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, i64 noundef %i.d)
  %i.e = icmp ult i64 %.16.val, 16
  br i1 %i.e, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit.thread, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %.val.i.i.i.pre.i = load i64, ptr %.8.val, align 8, !alias.scope !1004, !noalias !1005
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i, %.lr.ph.split.i
  %.val.i.i.i.i.a = phi i64 [ 0, %.lr.ph.split.i ], [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 2 uses
  %i.h = phi i64 [ %.val.i.i.i.pre.i, %.lr.ph.split.i ], [ %.val7.i.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.i = phi i64 [ 0, %.lr.ph.split.i ], [ %i.ag, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 4 uses
  %i.j = phi ptr [ %.8.val, %.lr.ph.split.i ], [ %i.k, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %.val7.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !1004, !noalias !1005, !noundef !62 ; 2 uses
  %i.l = icmp eq i64 %i.h, %.val7.i.i.i.i
  %i.m = load i64, ptr %i.f, align 8, !noalias !1006, !noundef !62 ; 2 uses
  %i.n = lshr i64 %i.i, 3                         ; 4 uses
  %i.o = icmp ult i64 %i.n, %i.m                  ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.e, label %.invoke

bb.d:                                             ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.c
  %i.p = trunc i64 %i.i to i8
  %i.q = and i8 %i.p, 7
  %i.r = shl nuw i8 1, %i.q
  %i.s = load ptr, ptr %i.g, align 16, !noalias !1006, !nonnull !62, !noundef !62
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.n ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !noalias !1006, !noundef !62
  %i.v = or i8 %i.u, %i.r
  store i8 %i.v, ptr %i.t, align 1, !noalias !1006
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i

.invoke:                                          ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ @215, %bb.c ], [ @216, %bb.d ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w) #49
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.x = trunc i64 %i.i to i8
  %i.y = and i8 %i.x, 7
  %i.z = shl nuw i8 1, %i.y
  %i.aa = xor i8 %i.z, -1
  %i.ab = load ptr, ptr %i.g, align 16, !noalias !1006, !nonnull !62, !noundef !62
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.n ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !1006, !noundef !62
  %i.ae = and i8 %i.ad, %i.aa
  store i8 %i.ae, ptr %i.ac, align 1, !noalias !1006
  %i.af = add i64 %.val.i.i.i.i.a, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.1 = phi i64 [ %i.af, %bb.f ], [ %.val.i.i.i.i.a, %bb.e ] ; 3 uses
  %i.ag = add nuw i64 %i.i, 1                     ; 2 uses
  %exitcond = icmp eq i64 %i.ag, %i.d
  br i1 %exitcond, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit, label %bb.b

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit.thread, label %bb.g

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit.thread: ; preds = %bb.a, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.k

bb.g:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit
  %i.ah = load ptr, ptr %i.g, align 16, !nonnull !62, !noundef !62 ; 2 uses
  %i.ai = load i64, ptr %i.f, align 8, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ah, ptr %i.ak, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ai, ptr %.sroa.4.0..sroa_idx13, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.al = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.al, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1007
  %i.am = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1007 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.h, label %bb.l, !prof !61

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %bb.l, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.am, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.1, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.aq, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ah, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ai, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  br label %bb.k

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ar, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body7

bb.m:                                             ; preds = %.invoke
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encodingNtB6_11Compression5mergeQRShECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i8 noundef range(i8 0, 6) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, i32 noundef range(i32 0, -2) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [48 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %i.t = alloca [48 x i8], align 8                ; 6 uses
  %i.u = alloca [48 x i8], align 8                ; 4 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 6 uses
  %i.aa = alloca [48 x i8], align 8               ; 4 uses
  %i.ab = alloca [48 x i8], align 8               ; 6 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 6 uses
  %i.ae = alloca [48 x i8], align 8               ; 4 uses
  %i.af = alloca [48 x i8], align 8               ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 4 uses
  %i.ah = alloca [48 x i8], align 8               ; 6 uses
  %i.ai = alloca [48 x i8], align 8               ; 4 uses
  %i.aj = alloca [48 x i8], align 8               ; 6 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 6 uses
  %i.am = alloca [48 x i8], align 8               ; 4 uses
  %i.an = alloca [48 x i8], align 8               ; 6 uses
  %.sroa.0266 = alloca [24 x i8], align 8         ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %i.aq = alloca [24 x i8], align 8               ; 10 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [8 x i8], align 8                ; 4 uses
  %i.aw = alloca [8 x i8], align 8                ; 4 uses
  %i.ax = alloca [8 x i8], align 8                ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 7 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [32 x i8], align 8               ; 12 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 7 uses
  %i.bd = alloca [4 x i8], align 4                ; 2 uses
  store i32 %1, ptr %i.bd, align 4
  switch i32 %1, label %bb.b [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
  ], !prof !1173

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr %i.bd, ptr %i.ao, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr @_RNvXs8_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #49
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.be = load i64, ptr %0, align 8, !range !78, !noundef !62
  %cond = icmp eq i64 %i.be, 0
  br i1 %cond, label %bb.q, label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.bf = load i64, ptr %0, align 8, !range !78, !noundef !62
  %cond55 = icmp eq i64 %i.bf, 1
  br i1 %cond55, label %bb.aa, label %bb.u

bb.e:                                             ; preds = %bb.a
  %i.bg = load i64, ptr %0, align 8, !range !78, !noundef !62
  %cond56 = icmp eq i64 %i.bg, 2
  br i1 %cond56, label %bb.an, label %bb.am

bb.f:                                             ; preds = %bb.a
  %i.bh = load i64, ptr %0, align 8, !range !78, !noundef !62
  %cond57 = icmp eq i64 %i.bh, 3
  br i1 %cond57, label %bb.bb, label %bb.av

bb.g:                                             ; preds = %bb.a
  %i.bi = load i64, ptr %0, align 8, !range !78, !noundef !62
  %cond58 = icmp eq i64 %i.bi, 4
  br i1 %cond58, label %bb.bn, label %bb.bm

bb.h:                                             ; preds = %bb.a
  %i.bj = load i64, ptr %0, align 8, !range !78, !noundef !62
  %cond59 = icmp eq i64 %i.bj, 5
  br i1 %cond59, label %bb.bx, label %bb.br

bb.i:                                             ; preds = %bb.a
  %i.bk = load i64, ptr %0, align 8, !range !78, !noundef !62
end_hunk_0
begin_hunk_1_@_RNCINvMs2_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB8_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE3getNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
  store i8 -1, ptr %i.ru, align 8, !alias.scope !23264, !noalias !23427
  br label %.body119.i

bb.jn:                                            ; preds = %bb.jb, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !23403
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !23266

.noexc122.i:                                      ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !23403
  %i.agv = load i8, ptr %i.ru, align 8, !range !102, !alias.scope !23428, !noalias !23427, !noundef !62
  %i.agw = icmp ugt i8 %i.agv, -4
  br i1 %i.agw, label %bb.fm, label %bb.jo

bb.jo:                                            ; preds = %.noexc122.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ru)
          to label %bb.fm unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i, !noalias !23429

bb.jp:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i, i64 55, i1 false), !alias.scope !23430, !noalias !23431
  br label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i: ; preds = %_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3b_INtB3b_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EENtB5_9TryStream13try_poll_nextB3j_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.080.i.sroa.9.i, i64 55, i1 false), !noalias !23393
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, i64 55, i1 false), !noalias !23432
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.8.i)
  %i.agx = icmp eq i8 %.sroa.080.i.sroa.0.2.i, -2
  br i1 %i.agx, label %bb.jq, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

bb.jq:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread337.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !23262
  br label %.thread

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %bb.jp, %bb.is
  %.sroa.0255.1336.i = phi i8 [ %.sroa.080.i.sroa.0.2.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i ], [ %.pre.i.i, %bb.jp ], [ -1, %bb.is ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3260.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, i64 55, i1 false), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBI_6stream8buffered8BufferedINtNtB20_3map3MapINtNtBI_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3T_INtB3T_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBK_6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB5d_s0_0EEB41_(ptr noalias noundef align 8 dereferenceable(208) %i.rs)
          to label %bb.js unwind label %bb.jr, !noalias !23266

bb.jr:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.js:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %.not.i123.i = icmp eq i8 %.sroa.0255.1336.i, -1
  br i1 %.not.i123.i, label %bb.jt, label %bb.lv

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !23262
  %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !23262
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aha = load ptr, ptr %i.agz, align 8, !noalias !23262, !nonnull !62, !align !63, !noundef !62
  %i.ahb = getelementptr i8, ptr %i.aha, i64 40
  %.val69.i = load i64, ptr %i.ahb, align 8, !noalias !23266, !noundef !62
  %i.ahc = lshr i64 %.val69.i, 2
  %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store i64 0, ptr %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !noalias !23262
  store i64 1, ptr %i.bh, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.6265.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.7268.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6265.0..sroa_idx266.i, i8 0, i64 16, i1 false), !noalias !23262
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store i64 0, ptr %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 20, i64 24, i1 false), !noalias !23262
  %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i64 %i.ahc, ptr %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store ptr null, ptr %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  store i64 0, ptr %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  store i8 0, ptr %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !23433, !noalias !23262
  %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 177
  store i8 0, ptr %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 1, !alias.scope !23433, !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !23262
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  store i8 0, ptr %i.ahd, align 4, !noalias !23262
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.6272.0.copyload.i = load ptr, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !23262, !nonnull !62, !noundef !62 ; 3 uses
  %.sroa.7273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.7273.0.copyload.i = load i64, ptr %.sroa.7273.0..sroa_idx.i, align 8, !noalias !23262 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23434)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23435
  store i64 1, ptr %i.g, align 8, !noalias !23435
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ahf, align 8, !noalias !23435
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahg, align 8, !noalias !23435
  %.sroa.4.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.7273.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i126.i, align 8, !noalias !23435
  %.sroa.5.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i127.i, align 8, !noalias !23435
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ahh = load <2 x i64>, ptr %i.ahe, align 8, !noalias !23262
  store <2 x i64> %i.ahh, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !23435
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23436
  %i.ahi = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23436 ; 5 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.ju, label %bb.jx, !prof !61

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i128.i unwind label %bb.jv, !noalias !23437

.noexc.i128.i:                                    ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g) #50
          to label %.body145.thread364.i unwind label %bb.jw, !noalias !23437

bb.jw:                                            ; preds = %bb.jv
  %i.ahl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23437
  unreachable

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahi, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !23437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !23435
  store ptr %i.ahi, ptr %i.bf, align 8, !alias.scope !23434, !noalias !23438
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahm, align 8, !alias.scope !23434, !noalias !23438
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.7273.0.copyload.i, ptr %i.ahn, align 8, !alias.scope !23434, !noalias !23438
  call void @llvm.experimental.noalias.scope.decl(metadata !23439)
  call void @llvm.experimental.noalias.scope.decl(metadata !23440)
  %i.aho = ptrtoint ptr %.sroa.6272.0.copyload.i to i64
  %i.ahp = and i64 %i.aho, 3
  %i.ahq = icmp eq i64 %i.ahp, 0
  br i1 %i.ahq, label %bb.kb, label %.invoke.i.i, !prof !71

bb.jy:                                            ; preds = %.invoke.i.i
  %i.ahr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahs = atomicrmw sub ptr %i.ahi, i64 1 release, align 8, !noalias !23441
  %i.aht = icmp eq i64 %i.ahs, 1
  br i1 %i.aht, label %bb.jz, label %.body145.thread364.i

bb.jz:                                            ; preds = %bb.jy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body145.thread364.i unwind label %bb.ka, !noalias !23442

.invoke.i.i:                                      ; preds = %bb.jx
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahi, i64 32
  %i.ahv = load ptr, ptr %i.ahu, align 8, !noalias !23443, !noundef !62
  %.not.i131.i = icmp eq ptr %i.ahv, null         ; 3 uses
  %.2.i.i = select i1 %.not.i131.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i131.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i131.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.jy, !noalias !23443

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ka:                                            ; preds = %bb.jz
  %i.ahw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23442
  unreachable

.body145.thread364.i:                             ; preds = %bb.jz, %bb.jy, %bb.jv
  %.pn27.i = phi { ptr, i32 } [ %i.ahk, %bb.jv ], [ %i.ahr, %bb.jy ], [ %i.ahr, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !23262
  br label %bb.lu

bb.kb:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !alias.scope !23444, !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !23262
  %i.ahx = load ptr, ptr %i.rr, align 8, !noalias !23262, !nonnull !62, !align !63, !noundef !62
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = load i8, ptr %i.ahy, align 8, !range !81, !noalias !23266, !noundef !62
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %bb.kc, label %bb.ks

bb.kc:                                            ; preds = %bb.kb
  %i.aib = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val74.i = load ptr, ptr %i.aib, align 8, !noalias !23262 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val75.i = load i64, ptr %i.aic, align 8, !noalias !23262, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23445
  %i.aid = lshr i64 %.val75.i, 2
  %i.aie = add nsw i64 %i.aid, -1                 ; 2 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i64 noundef %i.aie)
          to label %.noexc143.i unwind label %bb.kp, !noalias !23266

.noexc143.i:                                      ; preds = %bb.kc
  %i.aif = icmp ult i64 %.val75.i, 8
  br i1 %i.aif, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.noexc143.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.val.i.i.i.pre.i.i.i = load i32, ptr %.val74.i, align 4, !alias.scope !23446, !noalias !23447
  br label %bb.kd

bb.kd:                                            ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %.sroa.0.1.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i134.i = phi i32 [ %.val.i.i.i.pre.i.i.i, %.lr.ph.split.i.i.i ], [ %.val7.i.i.i.i.i135.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aii = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %i.ajg, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 4 uses
  %i.aij = phi ptr [ %.val74.i, %.lr.ph.split.i.i.i ], [ %i.aik, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23446)
  %.val7.i.i.i.i.i135.i = load i32, ptr %i.aik, align 4, !alias.scope !23446, !noalias !23447, !noundef !62 ; 2 uses
  %i.ail = icmp eq i32 %.val.i.i.i.i.i134.i, %.val7.i.i.i.i.i135.i
  %i.aim = load i64, ptr %i.aig, align 8, !noalias !23448, !noundef !62 ; 2 uses
  %i.ain = lshr i64 %i.aii, 3                     ; 4 uses
  %i.aio = icmp ult i64 %i.ain, %i.aim            ; 2 uses
  br i1 %i.ail, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kg, label %.invoke.i136.i

bb.kf:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kh, label %.invoke.i136.i

bb.kg:                                            ; preds = %bb.ke
  %i.aip = trunc i64 %i.aii to i8
  %i.aiq = and i8 %i.aip, 7
  %i.air = shl nuw i8 1, %i.aiq
  %i.ais = load ptr, ptr %i.aih, align 16, !noalias !23448, !nonnull !62, !noundef !62
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ain ; 2 uses
  %i.aiu = load i8, ptr %i.ait, align 1, !noalias !23449, !noundef !62
  %i.aiv = or i8 %i.aiu, %i.air
  store i8 %i.aiv, ptr %i.ait, align 1, !noalias !23449
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

.invoke.i136.i:                                   ; preds = %bb.kf, %bb.ke
  %i.aiw = phi ptr [ @215, %bb.ke ], [ @216, %bb.kf ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ain, i64 noundef %i.aim, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aiw) #49
          to label %.cont.i138.i unwind label %bb.kn, !noalias !23450

.cont.i138.i:                                     ; preds = %.invoke.i136.i
  unreachable

bb.kh:                                            ; preds = %bb.kf
  %i.aix = trunc i64 %i.aii to i8
  %i.aiy = and i8 %i.aix, 7
  %i.aiz = shl nuw i8 1, %i.aiy
  %i.aja = xor i8 %i.aiz, -1
  %i.ajb = load ptr, ptr %i.aih, align 16, !noalias !23448, !nonnull !62, !noundef !62
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.ain ; 2 uses
  %i.ajd = load i8, ptr %i.ajc, align 1, !noalias !23449, !noundef !62
  %i.aje = and i8 %i.ajd, %i.aja
  store i8 %i.aje, ptr %i.ajc, align 1, !noalias !23449
  %i.ajf = add i64 %.sroa.0.0.i.i, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i: ; preds = %bb.kh, %bb.kg
  %.sroa.0.1.i.i = phi i64 [ %i.ajf, %bb.kh ], [ %.sroa.0.0.i.i, %bb.kg ] ; 3 uses
  %i.ajg = add nuw nsw i64 %i.aii, 1              ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.ajg, %i.aie
  br i1 %exitcond.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, label %bb.kd

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i
  %.not.i139.i = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %.not.i139.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %bb.ki

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, %.noexc143.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.kq unwind label %bb.kp, !noalias !23266

bb.ki:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.i.i
  %i.ajh = load ptr, ptr %i.aih, align 16, !noalias !23445, !nonnull !62, !noundef !62 ; 2 uses
  %i.aji = load i64, ptr %i.aig, align 8, !noalias !23445, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23445
  store i64 1, ptr %i.e, align 8, !noalias !23445
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ajj, align 8, !noalias !23445
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ajh, ptr %i.ajk, align 8, !noalias !23445
  %.sroa.4.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.aji, ptr %.sroa.4.0..sroa_idx13.i.i, align 8, !noalias !23445
  %.sroa.5.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i140.i, align 8, !noalias !23445
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ajl = load <2 x i64>, ptr %i.f, align 16, !noalias !23445
  store <2 x i64> %i.ajl, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i, align 8, !noalias !23445
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23451
  %i.ajm = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23451 ; 3 uses
  %i.ajn = icmp eq ptr %i.ajm, null
  br i1 %i.ajn, label %bb.kj, label %bb.km, !prof !61

bb.kj:                                            ; preds = %bb.ki
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24.i.i unwind label %bb.kk, !noalias !23450

.noexc24.i.i:                                     ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.kj
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #50
          to label %bb.lr unwind label %bb.kl, !noalias !23450

bb.kl:                                            ; preds = %bb.kk
  %i.ajp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23450
  unreachable

bb.km:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajm, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !23450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23445
  br label %bb.kq

bb.kn:                                            ; preds = %.invoke.i136.i
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.lr unwind label %bb.ko, !noalias !23450

bb.ko:                                            ; preds = %bb.kn
  %i.ajr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23450
  unreachable

bb.kp:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, %bb.kc
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.kq:                                            ; preds = %bb.km, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i
  %.sroa.0274.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.km ], [ 0, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.6275.0.i = phi ptr [ %i.ajm, %bb.km ], [ null, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.9277.0.i = phi i64 [ %i.aji, %bb.km ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.8276.0.i = phi ptr [ %i.ajh, %bb.km ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !23262
  %.sroa.7283.0..sroa_idx284.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7283.0..sroa_idx284.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7268.0..sroa_idx269.i, i64 168, i1 false), !noalias !23262
  store i64 1, ptr %i.bd, align 8, !alias.scope !23452, !noalias !23262
  %.sroa.6280.0..sroa_idx281.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.sroa.0274.0.i, ptr %.sroa.6280.0..sroa_idx281.i, align 8, !alias.scope !23452, !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !23262
  store ptr %.sroa.6275.0.i, ptr %i.bc, align 8, !noalias !23262
  %.sroa.5677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.8276.0.i, ptr %.sroa.5677.0..sroa_idx.i, align 8, !noalias !23262
  %.sroa.6678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.sroa.9277.0.i, ptr %.sroa.6678.0..sroa_idx.i, align 8, !noalias !23262
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15null_bit_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc)
          to label %bb.kr unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit.i, !noalias !23266

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !23262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bh, ptr noundef nonnull align 8 dereferenceable(184) %i.be, i64 184, i1 false), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !23262
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8287.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !23262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ay, ptr noundef nonnull align 8 dereferenceable(184) %i.bh, i64 184, i1 false), !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !23262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !23262
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.ku unwind label %bb.kt, !noalias !23266

bb.kt:                                            ; preds = %bb.ks
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !23262
  br label %bb.lp

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !23262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !23262
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 245 ; 2 uses
  store i8 0, ptr %i.aju, align 1, !noalias !23262
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.sroa.6293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.sroa.6293.0.copyload.i = load ptr, ptr %.sroa.6293.0..sroa_idx.i, align 8, !noalias !23262, !nonnull !62, !noundef !62 ; 2 uses
  %.sroa.7294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.sroa.7294.0.copyload.i = load i64, ptr %.sroa.7294.0..sroa_idx.i, align 8, !noalias !23262 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !23453)
  call void @llvm.experimental.noalias.scope.decl(metadata !23454)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23455
  store i64 1, ptr %i.d, align 8, !noalias !23455
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ajw, align 8, !noalias !23455
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6293.0.copyload.i, ptr %i.ajx, align 8, !noalias !23455
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.7294.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !23455
  %.sroa.5.0..sroa_idx.i.i147.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i147.i, align 8, !noalias !23455
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ajy = load <2 x i64>, ptr %i.ajv, align 8, !noalias !23262
  store <2 x i64> %i.ajy, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !23455
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !23456
  %i.ajz = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !23456 ; 3 uses
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %bb.kv, label %bb.ky, !prof !61

bb.kv:                                            ; preds = %bb.ku
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i.i148.i unwind label %bb.kw, !noalias !23457

.noexc.i.i148.i:                                  ; preds = %bb.kv
  unreachable

bb.kw:                                            ; preds = %bb.kv
  %i.akb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #50
          to label %bb.lq unwind label %bb.kx, !noalias !23457

bb.kx:                                            ; preds = %bb.kw
  %i.akc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !23457
  unreachable

bb.ky:                                            ; preds = %bb.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajz, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !23457
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23455
  store ptr %i.ajz, ptr %i.aw, align 8, !alias.scope !23458, !noalias !23459
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.6293.0.copyload.i, ptr %i.akd, align 8, !alias.scope !23458, !noalias !23459
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.7294.0.copyload.i, ptr %i.ake, align 8, !alias.scope !23458, !noalias !23459
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.kz unwind label %.body149.i, !noalias !23266

.body149.i:                                       ; preds = %bb.ky
  %i.akf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !23262
  br label %bb.lp

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !23262
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.ba)
          to label %bb.lc unwind label %bb.lb, !noalias !23266

bb.la:                                            ; preds = %bb.lp, %bb.lb
  %.pn36.i = phi { ptr, i32 } [ %i.akg, %bb.lb ], [ %.pn33.pn.i, %bb.lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !23262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !23262
  br label %bb.lo

bb.lb:                                            ; preds = %bb.kz
  %i.akg = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2_@_RNCINvMs2_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB8_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE3getNtCsjjbR6Jfsbqw_8lance_io15ReadBatchParamsE0Bg_:bb.a
  store i8 -1, ptr %i.ru, align 8, !alias.scope !24417, !noalias !24580
  br label %.body119.i

bb.jn:                                            ; preds = %bb.jb, %._crit_edge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !24556
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.m)
          to label %.noexc122.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !24419

.noexc122.i:                                      ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !24556
  %i.agv = load i8, ptr %i.ru, align 8, !range !102, !alias.scope !24581, !noalias !24580, !noundef !62
  %i.agw = icmp ugt i8 %i.agv, -4
  br i1 %i.agw, label %bb.fm, label %bb.jo

bb.jo:                                            ; preds = %.noexc122.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ru)
          to label %bb.fm unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs9p5Dg9WVwvP_12futures_util6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit71.i.i, !noalias !24582

bb.jp:                                            ; preds = %bb.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.5.0..sroa.0.0..sroa_idx.i.i.i.i, i64 55, i1 false), !alias.scope !24583, !noalias !24584
  br label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i: ; preds = %_RNvXs2_NtCsj3nLz3LBTXi_12futures_core6streamINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream6stream8buffered8BufferedINtNtBL_3map3MapINtNtBN_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3b_INtB3b_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EENtB5_9TryStream13try_poll_nextB3j_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.080.i.sroa.9.i, i64 55, i1 false), !noalias !24546
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080.i.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.04.i.sroa.8.i, i64 55, i1 false), !noalias !24585
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.sroa.8.i)
  %i.agx = icmp eq i8 %.sroa.080.i.sroa.0.2.i, -2
  br i1 %i.agx, label %bb.jq, label %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i

bb.jq:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread337.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !24415
  br label %.thread

_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i: ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i, %bb.jp, %bb.is
  %.sroa.0255.1336.i = phi i8 [ %.sroa.080.i.sroa.0.2.i, %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.i ], [ %.pre.i.i, %bb.jp ], [ -1, %bb.is ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %.sroa.3260.i, ptr noundef nonnull align 1 dereferenceable(55) %.sroa.10257.i, i64 55, i1 false), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10257.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_each10TryForEachINtNtNtBI_6stream8buffered8BufferedINtNtB20_3map3MapINtNtBI_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3T_INtB3T_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBK_6future5ready5ReadyINtNtB4_6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB5d_s0_0EEB41_(ptr noalias noundef align 8 dereferenceable(208) %i.rs)
          to label %bb.js unwind label %bb.jr, !noalias !24419

bb.jr:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.js:                                            ; preds = %_RNvXs0_NtNtNtCs9p5Dg9WVwvP_12futures_util6stream10try_stream12try_for_eachINtB5_10TryForEachINtNtNtB9_6stream8buffered8BufferedINtNtB1x_3map3MapINtNtB9_4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEENCNCNvMs1_B3q_INtB3q_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_0EEINtNtNtBb_6future5ready5ReadyINtNtCscI6d9CVNmLh_4core6result6ResultuNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENCB4K_s0_0ENtNtNtB6Z_6future6future6Future4pollB3y_.exit.thread.i
  %.not.i123.i = icmp eq i8 %.sroa.0255.1336.i, -1
  br i1 %.not.i123.i, label %bb.jt, label %bb.lv

bb.jt:                                            ; preds = %bb.js
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !24415
  %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7268.sroa.5.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !24415
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aha = load ptr, ptr %i.agz, align 8, !noalias !24415, !nonnull !62, !align !63, !noundef !62
  %i.ahb = getelementptr i8, ptr %i.aha, i64 40
  %.val69.i = load i64, ptr %i.ahb, align 8, !noalias !24419, !noundef !62
  %i.ahc = lshr i64 %.val69.i, 2
  %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store i64 0, ptr %.sroa.7268.sroa.10.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !noalias !24415
  store i64 1, ptr %i.bh, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.6265.0..sroa_idx266.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.7268.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6265.0..sroa_idx266.i, i8 0, i64 16, i1 false), !noalias !24415
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.4.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7268.sroa.6.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  store i64 0, ptr %.sroa.7268.sroa.7.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7268.sroa.8.0..sroa.7268.0..sroa_idx269.sroa_idx.i, i8 24, i64 24, i1 false), !noalias !24415
  %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  store i64 %i.ahc, ptr %.sroa.7268.sroa.9.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  store ptr null, ptr %.sroa.7268.sroa.11.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 168
  store i64 0, ptr %.sroa.7268.sroa.13.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 176
  store i8 0, ptr %.sroa.7268.sroa.14.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 8, !alias.scope !24586, !noalias !24415
  %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 177
  store i8 0, ptr %.sroa.7268.sroa.15.0..sroa.7268.0..sroa_idx269.sroa_idx.i, align 1, !alias.scope !24586, !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !24415
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 244 ; 2 uses
  store i8 0, ptr %i.ahd, align 4, !noalias !24415
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.sroa.6272.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 536
  %.sroa.6272.0.copyload.i = load ptr, ptr %.sroa.6272.0..sroa_idx.i, align 8, !noalias !24415, !nonnull !62, !noundef !62 ; 3 uses
  %.sroa.7273.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 544
  %.sroa.7273.0.copyload.i = load i64, ptr %.sroa.7273.0..sroa_idx.i, align 8, !noalias !24415 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24587)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !24588
  store i64 1, ptr %i.g, align 8, !noalias !24588
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.ahf, align 8, !noalias !24588
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahg, align 8, !noalias !24588
  %.sroa.4.0..sroa_idx.i126.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.sroa.7273.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i126.i, align 8, !noalias !24588
  %.sroa.5.0..sroa_idx.i127.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i127.i, align 8, !noalias !24588
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ahh = load <2 x i64>, ptr %i.ahe, align 8, !noalias !24415
  store <2 x i64> %i.ahh, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !24588
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !24589
  %i.ahi = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !24589 ; 5 uses
  %i.ahj = icmp eq ptr %i.ahi, null
  br i1 %i.ahj, label %bb.ju, label %bb.jx, !prof !61

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i128.i unwind label %bb.jv, !noalias !24590

.noexc.i128.i:                                    ; preds = %bb.ju
  unreachable

bb.jv:                                            ; preds = %bb.ju
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.g) #50
          to label %.body145.thread364.i unwind label %bb.jw, !noalias !24590

bb.jw:                                            ; preds = %bb.jv
  %i.ahl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24590
  unreachable

bb.jx:                                            ; preds = %bb.jt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ahi, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false), !noalias !24590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !24588
  store ptr %i.ahi, ptr %i.bf, align 8, !alias.scope !24587, !noalias !24591
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.6272.0.copyload.i, ptr %i.ahm, align 8, !alias.scope !24587, !noalias !24591
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.7273.0.copyload.i, ptr %i.ahn, align 8, !alias.scope !24587, !noalias !24591
  call void @llvm.experimental.noalias.scope.decl(metadata !24592)
  call void @llvm.experimental.noalias.scope.decl(metadata !24593)
  %i.aho = ptrtoint ptr %.sroa.6272.0.copyload.i to i64
  %i.ahp = and i64 %i.aho, 3
  %i.ahq = icmp eq i64 %i.ahp, 0
  br i1 %i.ahq, label %bb.kb, label %.invoke.i.i, !prof !71

bb.jy:                                            ; preds = %.invoke.i.i
  %i.ahr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ahs = atomicrmw sub ptr %i.ahi, i64 1 release, align 8, !noalias !24594
  %i.aht = icmp eq i64 %i.ahs, 1
  br i1 %i.aht, label %bb.jz, label %.body145.thread364.i

bb.jz:                                            ; preds = %bb.jy
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body145.thread364.i unwind label %bb.ka, !noalias !24595

.invoke.i.i:                                      ; preds = %bb.jx
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahi, i64 32
  %i.ahv = load ptr, ptr %i.ahu, align 8, !noalias !24596, !noundef !62
  %.not.i131.i = icmp eq ptr %i.ahv, null         ; 3 uses
  %.2.i.i = select i1 %.not.i131.i, ptr @1146, ptr @1148
  %.1.i.i = select i1 %.not.i131.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i131.i, ptr @1145, ptr @1147
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #49
          to label %.cont.i.i unwind label %bb.jy, !noalias !24596

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ka:                                            ; preds = %bb.jz
  %i.ahw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24595
  unreachable

.body145.thread364.i:                             ; preds = %bb.jz, %bb.jy, %bb.jv
  %.pn27.i = phi { ptr, i32 } [ %i.ahk, %bb.jv ], [ %i.ahr, %bb.jy ], [ %i.ahr, %bb.jz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !24415
  br label %bb.lu

bb.kb:                                            ; preds = %bb.jx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !alias.scope !24597, !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !24415
  %i.ahx = load ptr, ptr %i.rr, align 8, !noalias !24415, !nonnull !62, !align !63, !noundef !62
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 32
  %i.ahz = load i8, ptr %i.ahy, align 8, !range !81, !noalias !24419, !noundef !62
  %i.aia = trunc nuw i8 %i.ahz to i1
  br i1 %i.aia, label %bb.kc, label %bb.ks

bb.kc:                                            ; preds = %bb.kb
  %i.aib = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.val74.i = load ptr, ptr %i.aib, align 8, !noalias !24415 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.val75.i = load i64, ptr %i.aic, align 8, !noalias !24415, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !24598
  %i.aid = lshr i64 %.val75.i, 2
  %i.aie = add nsw i64 %i.aid, -1                 ; 2 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, i64 noundef %i.aie)
          to label %.noexc143.i unwind label %bb.kp, !noalias !24419

.noexc143.i:                                      ; preds = %bb.kc
  %i.aif = icmp ult i64 %.val75.i, 8
  br i1 %i.aif, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.noexc143.i
  %i.aig = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %.val.i.i.i.pre.i.i.i = load i32, ptr %.val74.i, align 4, !alias.scope !24599, !noalias !24600
  br label %bb.kd

bb.kd:                                            ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i, %.lr.ph.split.i.i.i
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %.sroa.0.1.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 2 uses
  %.val.i.i.i.i.i134.i = phi i32 [ %.val.i.i.i.pre.i.i.i, %.lr.ph.split.i.i.i ], [ %.val7.i.i.i.i.i135.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aii = phi i64 [ 0, %.lr.ph.split.i.i.i ], [ %i.ajg, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ] ; 4 uses
  %i.aij = phi ptr [ %.val74.i, %.lr.ph.split.i.i.i ], [ %i.aik, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i ]
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aij, i64 4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24599)
  %.val7.i.i.i.i.i135.i = load i32, ptr %i.aik, align 4, !alias.scope !24599, !noalias !24600, !noundef !62 ; 2 uses
  %i.ail = icmp eq i32 %.val.i.i.i.i.i134.i, %.val7.i.i.i.i.i135.i
  %i.aim = load i64, ptr %i.aig, align 8, !noalias !24601, !noundef !62 ; 2 uses
  %i.ain = lshr i64 %i.aii, 3                     ; 4 uses
  %i.aio = icmp ult i64 %i.ain, %i.aim            ; 2 uses
  br i1 %i.ail, label %bb.kf, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kg, label %.invoke.i136.i

bb.kf:                                            ; preds = %bb.kd
  br i1 %i.aio, label %bb.kh, label %.invoke.i136.i

bb.kg:                                            ; preds = %bb.ke
  %i.aip = trunc i64 %i.aii to i8
  %i.aiq = and i8 %i.aip, 7
  %i.air = shl nuw i8 1, %i.aiq
  %i.ais = load ptr, ptr %i.aih, align 16, !noalias !24601, !nonnull !62, !noundef !62
  %i.ait = getelementptr inbounds nuw i8, ptr %i.ais, i64 %i.ain ; 2 uses
  %i.aiu = load i8, ptr %i.ait, align 1, !noalias !24602, !noundef !62
  %i.aiv = or i8 %i.aiu, %i.air
  store i8 %i.aiv, ptr %i.ait, align 1, !noalias !24602
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

.invoke.i136.i:                                   ; preds = %bb.kf, %bb.ke
  %i.aiw = phi ptr [ @215, %bb.ke ], [ @216, %bb.kf ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ain, i64 noundef %i.aim, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aiw) #49
          to label %.cont.i138.i unwind label %bb.kn, !noalias !24603

.cont.i138.i:                                     ; preds = %.invoke.i136.i
  unreachable

bb.kh:                                            ; preds = %bb.kf
  %i.aix = trunc i64 %i.aii to i8
  %i.aiy = and i8 %i.aix, 7
  %i.aiz = shl nuw i8 1, %i.aiy
  %i.aja = xor i8 %i.aiz, -1
  %i.ajb = load ptr, ptr %i.aih, align 16, !noalias !24601, !nonnull !62, !noundef !62
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ajb, i64 %i.ain ; 2 uses
  %i.ajd = load i8, ptr %i.ajc, align 1, !noalias !24602, !noundef !62
  %i.aje = and i8 %i.ajd, %i.aja
  store i8 %i.aje, ptr %i.ajc, align 1, !noalias !24602
  %i.ajf = add i64 %.sroa.0.0.i.i, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i: ; preds = %bb.kh, %bb.kg
  %.sroa.0.1.i.i = phi i64 [ %i.ajf, %bb.kh ], [ %.sroa.0.0.i.i, %bb.kg ] ; 3 uses
  %i.ajg = add nuw nsw i64 %i.aii, 1              ; 2 uses
  %exitcond.i.i = icmp eq i64 %i.ajg, %i.aie
  br i1 %exitcond.i.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, label %bb.kd

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSluNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0B2S_.exit.i.i.i
  %.not.i139.i = icmp eq i64 %.sroa.0.1.i.i, 0
  br i1 %.not.i139.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, label %bb.ki

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i, %.noexc143.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.kq unwind label %bb.kp, !noalias !24419

bb.ki:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.i.i
  %i.ajh = load ptr, ptr %i.aih, align 16, !noalias !24598, !nonnull !62, !noundef !62 ; 2 uses
  %i.aji = load i64, ptr %i.aig, align 8, !noalias !24598, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !24598
  store i64 1, ptr %i.e, align 8, !noalias !24598
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ajj, align 8, !noalias !24598
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ajh, ptr %i.ajk, align 8, !noalias !24598
  %.sroa.4.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.aji, ptr %.sroa.4.0..sroa_idx13.i.i, align 8, !noalias !24598
  %.sroa.5.0..sroa_idx.i140.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i140.i, align 8, !noalias !24598
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.ajl = load <2 x i64>, ptr %i.f, align 16, !noalias !24598
  store <2 x i64> %i.ajl, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i141.i, align 8, !noalias !24598
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !24604
  %i.ajm = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !24604 ; 3 uses
  %i.ajn = icmp eq ptr %i.ajm, null
  br i1 %i.ajn, label %bb.kj, label %bb.km, !prof !61

bb.kj:                                            ; preds = %bb.ki
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24.i.i unwind label %bb.kk, !noalias !24603

.noexc24.i.i:                                     ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.kj
  %i.ajo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e) #50
          to label %bb.lr unwind label %bb.kl, !noalias !24603

bb.kl:                                            ; preds = %bb.kk
  %i.ajp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24603
  unreachable

bb.km:                                            ; preds = %bb.ki
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajm, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !noalias !24603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !24598
  br label %bb.kq

bb.kn:                                            ; preds = %.invoke.i136.i
  %i.ajq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.lr unwind label %bb.ko, !noalias !24603

bb.ko:                                            ; preds = %bb.kn
  %i.ajr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24603
  unreachable

bb.kp:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i, %bb.kc
  %i.ajs = landingpad { ptr, i32 }
          cleanup
  br label %bb.lr

bb.kq:                                            ; preds = %bb.km, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i
  %.sroa.0274.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.km ], [ 0, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.6275.0.i = phi ptr [ %i.ajm, %bb.km ], [ null, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.9277.0.i = phi i64 [ %i.aji, %bb.km ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  %.sroa.8276.0.i = phi ptr [ %i.ajh, %bb.km ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowslENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSluNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullslE0E0E0EB3A_.exit.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !24598
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !24415
  %.sroa.7283.0..sroa_idx284.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7283.0..sroa_idx284.i, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7268.0..sroa_idx269.i, i64 168, i1 false), !noalias !24415
  store i64 1, ptr %i.bd, align 8, !alias.scope !24605, !noalias !24415
  %.sroa.6280.0..sroa_idx281.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i64 %.sroa.0274.0.i, ptr %.sroa.6280.0..sroa_idx281.i, align 8, !alias.scope !24605, !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !24415
  store ptr %.sroa.6275.0.i, ptr %i.bc, align 8, !noalias !24415
  %.sroa.5677.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.8276.0.i, ptr %.sroa.5677.0..sroa_idx.i, align 8, !noalias !24415
  %.sroa.6678.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.sroa.9277.0.i, ptr %.sroa.6678.0..sroa_idx.i, align 8, !noalias !24415
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15null_bit_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.bd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc)
          to label %bb.kr unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit.i, !noalias !24419

bb.kr:                                            ; preds = %bb.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !24415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bh, ptr noundef nonnull align 8 dereferenceable(184) %i.be, i64 184, i1 false), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !24415
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kr, %bb.kb
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8287.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !24415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ay, ptr noundef nonnull align 8 dereferenceable(184) %i.bh, i64 184, i1 false), !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !24415
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false), !noalias !24415
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ax)
          to label %bb.ku unwind label %bb.kt, !noalias !24419

bb.kt:                                            ; preds = %bb.ks
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !24415
  br label %bb.lp

bb.ku:                                            ; preds = %bb.ks
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !24415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !24415
  %i.aju = getelementptr inbounds nuw i8, ptr %1, i64 245 ; 2 uses
  store i8 0, ptr %i.aju, align 1, !noalias !24415
  %i.ajv = getelementptr inbounds nuw i8, ptr %1, i64 488
  %.sroa.6293.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.sroa.6293.0.copyload.i = load ptr, ptr %.sroa.6293.0..sroa_idx.i, align 8, !noalias !24415, !nonnull !62, !noundef !62 ; 2 uses
  %.sroa.7294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 512
  %.sroa.7294.0.copyload.i = load i64, ptr %.sroa.7294.0..sroa_idx.i, align 8, !noalias !24415 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !24606)
  call void @llvm.experimental.noalias.scope.decl(metadata !24607)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !24608
  store i64 1, ptr %i.d, align 8, !noalias !24608
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ajw, align 8, !noalias !24608
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.6293.0.copyload.i, ptr %i.ajx, align 8, !noalias !24608
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.7294.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !24608
  %.sroa.5.0..sroa_idx.i.i147.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i.i147.i, align 8, !noalias !24608
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ajy = load <2 x i64>, ptr %i.ajv, align 8, !noalias !24415
  store <2 x i64> %i.ajy, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !24608
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !24609
  %i.ajz = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !24609 ; 3 uses
  %i.aka = icmp eq ptr %i.ajz, null
  br i1 %i.aka, label %bb.kv, label %bb.ky, !prof !61

bb.kv:                                            ; preds = %bb.ku
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc.i.i148.i unwind label %bb.kw, !noalias !24610

.noexc.i.i148.i:                                  ; preds = %bb.kv
  unreachable

bb.kw:                                            ; preds = %bb.kv
  %i.akb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d) #50
          to label %bb.lq unwind label %bb.kx, !noalias !24610

bb.kx:                                            ; preds = %bb.kw
  %i.akc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !24610
  unreachable

bb.ky:                                            ; preds = %bb.ku
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ajz, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false), !noalias !24610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24608
  store ptr %i.ajz, ptr %i.aw, align 8, !alias.scope !24611, !noalias !24612
  %i.akd = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %.sroa.6293.0.copyload.i, ptr %i.akd, align 8, !alias.scope !24611, !noalias !24612
  %i.ake = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.sroa.7294.0.copyload.i, ptr %i.ake, align 8, !alias.scope !24611, !noalias !24612
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ba, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.az, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.kz unwind label %.body149.i, !noalias !24419

.body149.i:                                       ; preds = %bb.ky
  %i.akf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !24415
  br label %bb.lp

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !24415
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.ba)
          to label %bb.lc unwind label %bb.lb, !noalias !24419

bb.la:                                            ; preds = %bb.lp, %bb.lb
  %.pn36.i = phi { ptr, i32 } [ %i.akg, %bb.lb ], [ %.pn33.pn.i, %bb.lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !24415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !24415
  br label %bb.lo

bb.lb:                                            ; preds = %bb.kz
  %i.akg = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_RNCNvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB7_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE9get_range0Bf_:bb.a
  br label %.body

bb.as:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit87

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit, %bb.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit ], [ %i.he, %bb.co ], [ %.pn38.pn.pn.pn.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.dk) #50
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.p, %bb.cp, %bb.at
  %.pn51 = phi { ptr, i32 } [ %i.hg, %bb.cp ], [ %.pn47.pn.pn, %bb.at ], [ %i.bm, %bb.p ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.dl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.aq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.au, %bb.i, %bb.n, %bb.l, %bb.g
  %.pn53 = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %.pn51, %bb.au ], [ %i.be, %bb.l ], [ %i.az, %bb.i ], [ %i.ay, %bb.g ]
  store i8 2, ptr %i.ah, align 8
  resume { ptr, i32 } %.pn53

bb.av:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #49
  unreachable

bb.aw:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #49
  unreachable

bb.ax:                                            ; preds = %bb.ay
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val62 = load ptr, ptr %i.dn, align 8
  %.val63 = load ptr, ptr %i.do, align 8, !nonnull !62, !align !63, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file(ptr %.val62, ptr nonnull %.val63) #50
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.aq

bb.ay:                                            ; preds = %bb.b, %bb.am
  %.val69 = phi ptr [ %.val69.pre, %bb.b ], [ %i.db, %bb.am ]
  %.val68 = phi ptr [ %.val68.pre, %bb.b ], [ %i.da, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.do = getelementptr i8, ptr %1, i64 392       ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val69, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !62, !noalias !26623, !nonnull !62
  invoke void %i.dq(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ad, ptr noundef nonnull %.val68, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ax, !inline_history !39

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ay
  %i.dr = load i64, ptr %i.ad, align 8, !range !138, !noundef !62 ; 3 uses
  %i.ds = icmp eq i64 %i.dr, -2
  br i1 %i.ds, label %bb.az, label %bb.ba

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit107, %bb.az
  %storemerge = phi i8 [ 3, %bb.az ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit107 ]
  store i8 %storemerge, ptr %i.ah, align 8
  ret void

bb.az:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.ba:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.3.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.3.sroa.5.0.copyload = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.3.sroa.7.0.copyload = load ptr, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5154, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5154.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val60 = load ptr, ptr %i.dn, align 8          ; 5 uses
  %.val61 = load ptr, ptr %i.do, align 8, !nonnull !62, !align !63, !noundef !62 ; 5 uses
  %i.dt = load ptr, ptr %.val61, align 8, !invariant.load !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  invoke void %i.dt(ptr noundef nonnull %.val60)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.du = getelementptr inbounds nuw i8, ptr %.val61, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bc
  %i.dx = getelementptr inbounds nuw i8, ptr %.val61, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !92, !invariant.load !62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) %i.dy) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit

bb.bd:                                            ; preds = %bb.bb
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val61, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.bd
  %i.ed = getelementptr inbounds nuw i8, ptr %.val61, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !92, !invariant.load !62
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) %i.ee) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.bc
  %.not.i92 = icmp eq i64 %i.dr, -1
  br i1 %.not.i92, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5154, i64 32, i1 false)
  store i64 %i.dr, ptr %i.e, align 8, !noalias !26625
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.3.sroa.0.0.copyload, ptr %.sroa.5156.0..sroa_idx, align 8, !noalias !26625
  %.sroa.5156.sroa.5.0..sroa.5156.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.3.sroa.3.0.copyload, ptr %.sroa.5156.sroa.5.0..sroa.5156.0..sroa_idx.sroa_idx, align 8, !noalias !26625
  %.sroa.5156.sroa.6.0..sroa.5156.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.3.sroa.5.0.copyload, ptr %.sroa.5156.sroa.6.0..sroa.5156.0..sroa_idx.sroa_idx, align 8, !noalias !26625
  %.sroa.5156.sroa.7.0..sroa.5156.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.3.sroa.7.0.copyload, ptr %.sroa.5156.sroa.7.0..sroa.5156.0..sroa_idx.sroa_idx, align 8, !noalias !26625
  invoke void @_RNvXs9_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtCs3PfUT229lOd_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @513)
          to label %bb.cx unwind label %bb.cw

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84
  %.sroa.12141.0 = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.5.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.14.0 = phi ptr [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.7.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.10138.0 = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.3.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.0136.0 = phi ptr [ @10, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.0.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.sroa.7177.sroa.5.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7177.sroa.5.0..sroa.7177.0..sroa_idx178.sroa_idx, i8 0, i64 16, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val64 = load i64, ptr %i.ef, align 8, !alias.scope !141, !noalias !140, !noundef !62
  %i.eg = getelementptr i8, ptr %1, i64 48
  %.val65 = load i64, ptr %i.eg, align 8, !alias.scope !140, !noalias !141, !noundef !62
  %spec.select.i.i94 = call noundef i64 @llvm.usub.sat.i64(i64 %.val65, i64 %.val64)
  %.sroa.7177.sroa.10.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store i64 0, ptr %.sroa.7177.sroa.10.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8
  store i64 1, ptr %i.ac, align 8, !alias.scope !26626
  %.sroa.6174.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7177.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.7177.sroa.4.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6174.0..sroa_idx175, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7177.sroa.4.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26626
  %.sroa.7177.sroa.6.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7177.sroa.6.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26626
  %.sroa.7177.sroa.7.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 0, ptr %.sroa.7177.sroa.7.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26626
  %.sroa.7177.sroa.8.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7177.sroa.8.0..sroa.7177.0..sroa_idx178.sroa_idx, i8 20, i64 24, i1 false)
  %.sroa.7177.sroa.9.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 %spec.select.i.i94, ptr %.sroa.7177.sroa.9.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26626
  %.sroa.7177.sroa.11.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  store ptr null, ptr %.sroa.7177.sroa.11.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26626
  %.sroa.7177.sroa.13.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  store i64 0, ptr %.sroa.7177.sroa.13.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26626
  %.sroa.7177.sroa.14.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  store i8 0, ptr %.sroa.7177.sroa.14.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26626
  %.sroa.7177.sroa.15.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 177
  store i8 0, ptr %.sroa.7177.sroa.15.0..sroa.7177.0..sroa_idx178.sroa_idx, align 1, !alias.scope !26626
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !62, !align !63, !noundef !62
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i8, ptr %i.ej, align 8, !range !81, !noundef !62
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bw, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.0136.0, ptr %i.x, align 8
  %.sroa.10138.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.10138.0, ptr %.sroa.10138.0..sroa_idx139, align 8
  %.sroa.12141.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.12141.0, ptr %.sroa.12141.0..sroa_idx142, align 8
  %.sroa.14.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx144, align 8
  invoke void @_RNvXs2_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferNtB5_9BufferExt16from_bytes_bytes(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.x, i64 noundef 1)
          to label %bb.bx unwind label %.body99

bb.bh:                                            ; preds = %bb.bf
  %i.em = getelementptr i8, ptr %1, i64 184
  %.val71 = load ptr, ptr %i.em, align 8          ; 2 uses
  %i.en = getelementptr i8, ptr %1, i64 192
  %.val72 = load i64, ptr %i.en, align 8, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26627
  %i.eo = lshr i64 %.val72, 3
  %i.ep = add nsw i64 %i.eo, -1                   ; 2 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, i64 noundef %i.ep)
          to label %.noexc97 unwind label %bb.bu

.noexc97:                                         ; preds = %bb.bh
  %i.eq = icmp ult i64 %.val72, 16
  br i1 %i.eq, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.noexc97
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.val.i.i.i.pre.i.i = load i64, ptr %.val71, align 8, !alias.scope !26628, !noalias !26629
  br label %bb.bi

bb.bi:                                            ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i, %.lr.ph.split.i.i
  %.val.i.i.i.i.i.a = phi i64 [ 0, %.lr.ph.split.i.i ], [ %.sroa.0.1.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ] ; 2 uses
  %i.et = phi i64 [ %.val.i.i.i.pre.i.i, %.lr.ph.split.i.i ], [ %.val7.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ]
  %i.eu = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.fs, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ] ; 4 uses
  %i.ev = phi ptr [ %.val71, %.lr.ph.split.i.i ], [ %i.ew, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26628)
  %.val7.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !26628, !noalias !26629, !noundef !62 ; 2 uses
  %i.ex = icmp eq i64 %i.et, %.val7.i.i.i.i.i
  %i.ey = load i64, ptr %i.er, align 8, !noalias !26630, !noundef !62 ; 2 uses
  %i.ez = lshr i64 %i.eu, 3                       ; 4 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey               ; 2 uses
  br i1 %i.ex, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.fa, label %bb.bl, label %.invoke.i

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.fa, label %bb.bm, label %.invoke.i

bb.bl:                                            ; preds = %bb.bj
  %i.fb = trunc i64 %i.eu to i8
  %i.fc = and i8 %i.fb, 7
  %i.fd = shl nuw i8 1, %i.fc
  %i.fe = load ptr, ptr %i.es, align 16, !noalias !26630, !nonnull !62, !noundef !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ez ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !26630, !noundef !62
  %i.fh = or i8 %i.fg, %i.fd
  store i8 %i.fh, ptr %i.ff, align 1, !noalias !26630
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i

.invoke.i:                                        ; preds = %bb.bk, %bb.bj
  %i.fi = phi ptr [ @215, %bb.bj ], [ @216, %bb.bk ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi) #49
          to label %.cont.i unwind label %bb.bs, !noalias !26627

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.fj = trunc i64 %i.eu to i8
  %i.fk = and i8 %i.fj, 7
  %i.fl = shl nuw i8 1, %i.fk
  %i.fm = xor i8 %i.fl, -1
  %i.fn = load ptr, ptr %i.es, align 16, !noalias !26630, !nonnull !62, !noundef !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ez ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !26630, !noundef !62
  %i.fq = and i8 %i.fp, %i.fm
  store i8 %i.fq, ptr %i.fo, align 1, !noalias !26630
  %i.fr = add i64 %.val.i.i.i.i.i.a, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.0.1.i = phi i64 [ %i.fr, %bb.bm ], [ %.val.i.i.i.i.i.a, %bb.bl ] ; 3 uses
  %i.fs = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %exitcond.i = icmp eq i64 %i.fs, %i.ep
  br i1 %exitcond.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.i, label %bb.bi

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0B2S_.exit.i.i
  %.not.i95 = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not.i95, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, label %bb.bn

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.i, %.noexc97
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.bv unwind label %bb.bu

bb.bn:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.i
  %i.ft = load ptr, ptr %i.es, align 16, !noalias !26627, !nonnull !62, !noundef !62 ; 2 uses
  %i.fu = load i64, ptr %i.er, align 8, !noalias !26627, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26627
  store i64 1, ptr %i.c, align 8, !noalias !26627
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fv, align 8, !noalias !26627
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ft, ptr %i.fw, align 8, !noalias !26627
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.fu, ptr %.sroa.4.0..sroa_idx13.i, align 8, !noalias !26627
  %.sroa.5.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i96, align 8, !noalias !26627
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fx = load <2 x i64>, ptr %i.d, align 16, !noalias !26627
  store <2 x i64> %i.fx, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !26627
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !26631
  %i.fy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !26631 ; 3 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.bo, label %bb.br, !prof !61

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24.i unwind label %bb.bp, !noalias !26627

.noexc24.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bo
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #50
          to label %.body99.thread unwind label %bb.bq, !noalias !26627

bb.bq:                                            ; preds = %bb.bp
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !26627
  unreachable

bb.br:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !26627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26627
  br label %bb.bv

bb.bs:                                            ; preds = %.invoke.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body99.thread unwind label %bb.bt, !noalias !26627

bb.bt:                                            ; preds = %bb.bs
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !26627
  unreachable

bb.bu:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, %bb.bh
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body99.thread

bb.bv:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, %bb.br
  %.sroa.8181.0 = phi ptr [ %i.ft, %bb.br ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  %.sroa.9.0 = phi i64 [ %i.fu, %bb.br ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  %.sroa.6180.0 = phi ptr [ %i.fy, %bb.br ], [ null, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  %.sroa.0179.0 = phi i64 [ %.sroa.0.1.i, %bb.br ], [ 0, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.sroa.7187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7187.0..sroa_idx188, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7177.0..sroa_idx178, i64 168, i1 false)
  store i64 1, ptr %i.aa, align 8, !alias.scope !26632
  %.sroa.6184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.0179.0, ptr %.sroa.6184.0..sroa_idx185, align 8, !alias.scope !26632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.6180.0, ptr %i.z, align 8
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.8181.0, ptr %.sroa.5271.0..sroa_idx, align 8
  %.sroa.6272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.6272.0..sroa_idx, align 8
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15null_bit_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.bw unwind label %.body99.thread241

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ac, ptr noundef nonnull align 8 dereferenceable(184) %i.ab, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.bg

bb.bx:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(184) %i.ac, i64 184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gf = getelementptr i8, ptr %1, i64 256
  %.val58 = load ptr, ptr %i.gf, align 8, !nonnull !62, !noundef !62 ; 3 uses
  %i.gg = getelementptr i8, ptr %1, i64 264
  %.val59 = load i64, ptr %i.gg, align 8, !noundef !62
  %.not27 = icmp eq i64 %.val59, 0
  br i1 %.not27, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !26633)
  call void @llvm.experimental.noalias.scope.decl(metadata !26634)
  %i.gh = load ptr, ptr %.val58, align 8, !alias.scope !26634, !noalias !26633, !nonnull !62, !noundef !62 ; 2 uses
  %i.gi = atomicrmw add ptr %i.gh, i64 1 monotonic, align 8, !noalias !26635
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  call void @llvm.trap()
  unreachable

bb.ca:                                            ; preds = %bb.bx
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @510) #49
          to label %bb.h unwind label %bb.cs

bb.cb:                                            ; preds = %bb.by
  %i.gk = getelementptr inbounds nuw i8, ptr %.val58, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !26634, !noalias !26633, !noundef !62
  %i.gm = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !26634, !noalias !26633, !noundef !62
  store ptr %i.gh, ptr %i.s, align 8, !alias.scope !26633, !noalias !26634
  %i.go = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.gl, ptr %i.go, align 8, !alias.scope !26633, !noalias !26634
  %i.gp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.gn, ptr %i.gp, align 8, !alias.scope !26633, !noalias !26634
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread233

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ce unwind label %bb.cq

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.w, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.v)
          to label %bb.cf unwind label %.thread230

.thread230:                                       ; preds = %bb.ce
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8191)
  br label %.thread258

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !26636)
  %i.gs = load i64, ptr %i.w, align 8, !range !64, !alias.scope !26637, !noalias !26636, !noundef !62 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, -1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i64 32, i1 false), !alias.scope !26638
  br i1 %i.gt, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191, i64 32, i1 false)
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @512)
          to label %bb.cr unwind label %.thread224

bb.ch:                                            ; preds = %bb.cf
  %.sroa.10193.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.10193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.10193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.10193.0..sroa_idx194, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.gs, ptr %i.q, align 8
  %.sroa.8191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericBinaryTypelEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.p, ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %i.q)
end_hunk_3
begin_hunk_4_@_RNCNvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB7_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE9get_range0Bf_:bb.a
  br label %.body

bb.as:                                            ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !26807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit87

bb.at:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit, %bb.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit ], [ %i.he, %bb.co ], [ %.pn38.pn.pn.pn.pn.pn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 152
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.dk) #50
          to label %bb.au unwind label %bb.aq

bb.au:                                            ; preds = %bb.p, %bb.cp, %bb.at
  %.pn51 = phi { ptr, i32 } [ %i.hg, %bb.cp ], [ %.pn47.pn.pn, %bb.at ], [ %i.bm, %bb.p ]
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.dl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.aq

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.au, %bb.i, %bb.n, %bb.l, %bb.g
  %.pn53 = phi { ptr, i32 } [ %i.bi, %bb.n ], [ %.pn51, %bb.au ], [ %i.be, %bb.l ], [ %i.az, %bb.i ], [ %i.ay, %bb.g ]
  store i8 2, ptr %i.ah, align 8
  resume { ptr, i32 } %.pn53

bb.av:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #49
  unreachable

bb.aw:                                            ; preds = %bb.a
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @509) #49
  unreachable

bb.ax:                                            ; preds = %bb.ay
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val62 = load ptr, ptr %i.dn, align 8
  %.val63 = load ptr, ptr %i.do, align 8, !nonnull !62, !align !63, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file(ptr %.val62, ptr nonnull %.val63) #50
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.aq

bb.ay:                                            ; preds = %bb.b, %bb.am
  %.val69 = phi ptr [ %.val69.pre, %bb.b ], [ %i.db, %bb.am ]
  %.val68 = phi ptr [ %.val68.pre, %bb.b ], [ %i.da, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.do = getelementptr i8, ptr %1, i64 392       ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val69, i64 24
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !62, !noalias !26827, !nonnull !62
  invoke void %i.dq(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ad, ptr noundef nonnull %.val68, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit unwind label %bb.ax, !inline_history !39

_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ay
  %i.dr = load i64, ptr %i.ad, align 8, !range !138, !noundef !62 ; 3 uses
  %i.ds = icmp eq i64 %i.dr, -2
  br i1 %i.ds, label %bb.az, label %bb.ba

common.ret:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit107, %bb.az
  %storemerge = phi i8 [ 3, %bb.az ], [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs4ytUTZt2Gw9_11arrow_array6scalar6ScalarINtNtNtBG_5array15primitive_array14PrimitiveArrayNtNtBG_5types9Int64TypeEEECsaSXGKSfiU2E_10lance_file.exit107 ]
  store i8 %storemerge, ptr %i.ah, align 8
  ret void

bb.az:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i8 -2, ptr %0, align 8
  br label %common.ret

bb.ba:                                            ; preds = %_RNvXs_NtNtCscI6d9CVNmLh_4core6future6futureINtNtB8_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.3.sroa.0.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.3.sroa.3.0.copyload = load ptr, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.3.sroa.5.0.copyload = load i64, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.3.sroa.7.0.copyload = load ptr, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5154.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5154, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5154.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.val60 = load ptr, ptr %i.dn, align 8          ; 5 uses
  %.val61 = load ptr, ptr %i.do, align 8, !nonnull !62, !align !63, !noundef !62 ; 5 uses
  %i.dt = load ptr, ptr %.val61, align 8, !invariant.load !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  invoke void %i.dt(ptr noundef nonnull %.val60)
          to label %bb.bc unwind label %bb.bd

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.du = getelementptr inbounds nuw i8, ptr %.val61, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.bc
  %i.dx = getelementptr inbounds nuw i8, ptr %.val61, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !range !92, !invariant.load !62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) %i.dy) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit

bb.bd:                                            ; preds = %bb.bb
  %i.dz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.val61, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.bd
  %i.ed = getelementptr inbounds nuw i8, ptr %.val61, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !92, !invariant.load !62
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) %i.ee) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.bc
  %.not.i92 = icmp eq i64 %i.dr, -1
  br i1 %.not.i92, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !26828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6157.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5154, i64 32, i1 false)
  store i64 %i.dr, ptr %i.e, align 8, !noalias !26829
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.3.sroa.0.0.copyload, ptr %.sroa.5156.0..sroa_idx, align 8, !noalias !26829
  %.sroa.5156.sroa.5.0..sroa.5156.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.3.sroa.3.0.copyload, ptr %.sroa.5156.sroa.5.0..sroa.5156.0..sroa_idx.sroa_idx, align 8, !noalias !26829
  %.sroa.5156.sroa.6.0..sroa.5156.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.3.sroa.5.0.copyload, ptr %.sroa.5156.sroa.6.0..sroa.5156.0..sroa_idx.sroa_idx, align 8, !noalias !26829
  %.sroa.5156.sroa.7.0..sroa.5156.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.sroa.3.sroa.7.0.copyload, ptr %.sroa.5156.sroa.7.0..sroa.5156.0..sroa_idx.sroa_idx, align 8, !noalias !26829
  invoke void @_RNvXs9_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtCs3PfUT229lOd_12object_store5ErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @513)
          to label %bb.cx unwind label %bb.cw

bb.bf:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84
  %.sroa.12141.0 = phi i64 [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.5.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.14.0 = phi ptr [ null, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.7.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.10138.0 = phi ptr [ inttoptr (i64 1 to ptr), %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.3.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %.sroa.0136.0 = phi ptr [ @10, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit84 ], [ %.sroa.3.sroa.0.0.copyload, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtCs3PfUT229lOd_12object_store5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %.sroa.7177.sroa.5.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7177.sroa.5.0..sroa.7177.0..sroa_idx178.sroa_idx, i8 0, i64 16, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val64 = load i64, ptr %i.ef, align 8, !alias.scope !141, !noalias !140, !noundef !62
  %i.eg = getelementptr i8, ptr %1, i64 48
  %.val65 = load i64, ptr %i.eg, align 8, !alias.scope !140, !noalias !141, !noundef !62
  %spec.select.i.i94 = call noundef i64 @llvm.usub.sat.i64(i64 %.val65, i64 %.val64)
  %.sroa.7177.sroa.10.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store i64 0, ptr %.sroa.7177.sroa.10.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8
  store i64 1, ptr %i.ac, align 8, !alias.scope !26830
  %.sroa.6174.0..sroa_idx175 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.7177.0..sroa_idx178 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.7177.sroa.4.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6174.0..sroa_idx175, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7177.sroa.4.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26830
  %.sroa.7177.sroa.6.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.7177.sroa.6.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26830
  %.sroa.7177.sroa.7.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 0, ptr %.sroa.7177.sroa.7.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26830
  %.sroa.7177.sroa.8.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7177.sroa.8.0..sroa.7177.0..sroa_idx178.sroa_idx, i8 24, i64 24, i1 false)
  %.sroa.7177.sroa.9.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 %spec.select.i.i94, ptr %.sroa.7177.sroa.9.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26830
  %.sroa.7177.sroa.11.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  store ptr null, ptr %.sroa.7177.sroa.11.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26830
  %.sroa.7177.sroa.13.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 168
  store i64 0, ptr %.sroa.7177.sroa.13.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26830
  %.sroa.7177.sroa.14.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  store i8 0, ptr %.sroa.7177.sroa.14.0..sroa.7177.0..sroa_idx178.sroa_idx, align 8, !alias.scope !26830
  %.sroa.7177.sroa.15.0..sroa.7177.0..sroa_idx178.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 177
  store i8 0, ptr %.sroa.7177.sroa.15.0..sroa.7177.0..sroa_idx178.sroa_idx, align 1, !alias.scope !26830
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !nonnull !62, !align !63, !noundef !62
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load i8, ptr %i.ej, align 8, !range !81, !noundef !62
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bw, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %.sroa.0136.0, ptr %i.x, align 8
  %.sroa.10138.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.10138.0, ptr %.sroa.10138.0..sroa_idx139, align 8
  %.sroa.12141.0..sroa_idx142 = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %.sroa.12141.0, ptr %.sroa.12141.0..sroa_idx142, align 8
  %.sroa.14.0..sroa_idx144 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx144, align 8
  invoke void @_RNvXs2_Csc2V0exE7CWf_11lance_arrowNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferNtB5_9BufferExt16from_bytes_bytes(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.x, i64 noundef 1)
          to label %bb.bx unwind label %.body99

bb.bh:                                            ; preds = %bb.bf
  %i.em = getelementptr i8, ptr %1, i64 184
  %.val71 = load ptr, ptr %i.em, align 8          ; 2 uses
  %i.en = getelementptr i8, ptr %1, i64 192
  %.val72 = load i64, ptr %i.en, align 8, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !26831
  %i.eo = lshr i64 %.val72, 3
  %i.ep = add nsw i64 %i.eo, -1                   ; 2 uses
  invoke void @_RNvMNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB2_13MutableBuffer8new_null(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, i64 noundef %i.ep)
          to label %.noexc97 unwind label %bb.bu

.noexc97:                                         ; preds = %bb.bh
  %i.eq = icmp ult i64 %.val72, 16
  br i1 %i.eq, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.noexc97
  %i.er = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.val.i.i.i.pre.i.i = load i64, ptr %.val71, align 8, !alias.scope !26832, !noalias !26833
  br label %bb.bi

bb.bi:                                            ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i, %.lr.ph.split.i.i
  %.val.i.i.i.i.i.a = phi i64 [ 0, %.lr.ph.split.i.i ], [ %.sroa.0.1.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ] ; 2 uses
  %i.et = phi i64 [ %.val.i.i.i.pre.i.i, %.lr.ph.split.i.i ], [ %.val7.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ]
  %i.eu = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.fs, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ] ; 4 uses
  %i.ev = phi ptr [ %.val71, %.lr.ph.split.i.i ], [ %i.ew, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26832)
  %.val7.i.i.i.i.i = load i64, ptr %i.ew, align 8, !alias.scope !26832, !noalias !26833, !noundef !62 ; 2 uses
  %i.ex = icmp eq i64 %i.et, %.val7.i.i.i.i.i
  %i.ey = load i64, ptr %i.er, align 8, !noalias !26834, !noundef !62 ; 2 uses
  %i.ez = lshr i64 %i.eu, 3                       ; 4 uses
  %i.fa = icmp ult i64 %i.ez, %i.ey               ; 2 uses
  br i1 %i.ex, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.fa, label %bb.bl, label %.invoke.i

bb.bk:                                            ; preds = %bb.bi
  br i1 %i.fa, label %bb.bm, label %.invoke.i

bb.bl:                                            ; preds = %bb.bj
  %i.fb = trunc i64 %i.eu to i8
  %i.fc = and i8 %i.fb, 7
  %i.fd = shl nuw i8 1, %i.fc
  %i.fe = load ptr, ptr %i.es, align 16, !noalias !26834, !nonnull !62, !noundef !62
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ez ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !26834, !noundef !62
  %i.fh = or i8 %i.fg, %i.fd
  store i8 %i.fh, ptr %i.ff, align 1, !noalias !26834
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i

.invoke.i:                                        ; preds = %bb.bk, %bb.bj
  %i.fi = phi ptr [ @215, %bb.bj ], [ @216, %bb.bk ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.ez, i64 noundef %i.ey, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fi) #49
          to label %.cont.i unwind label %bb.bs, !noalias !26831

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.fj = trunc i64 %i.eu to i8
  %i.fk = and i8 %i.fj, 7
  %i.fl = shl nuw i8 1, %i.fk
  %i.fm = xor i8 %i.fl, -1
  %i.fn = load ptr, ptr %i.es, align 16, !noalias !26834, !nonnull !62, !noundef !62
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.ez ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !26834, !noundef !62
  %i.fq = and i8 %i.fp, %i.fm
  store i8 %i.fq, ptr %i.fo, align 1, !noalias !26834
  %i.fr = add i64 %.val.i.i.i.i.i.a, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.0.1.i = phi i64 [ %i.fr, %bb.bm ], [ %.val.i.i.i.i.i.a, %bb.bl ] ; 3 uses
  %i.fs = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %exitcond.i = icmp eq i64 %i.fs, %i.ep
  br i1 %exitcond.i, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.i, label %bb.bi

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.i: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0B2S_.exit.i.i
  %.not.i95 = icmp eq i64 %.sroa.0.1.i, 0
  br i1 %.not.i95, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, label %bb.bn

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i: ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.i, %.noexc97
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.bv unwind label %bb.bu

bb.bn:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.i
  %i.ft = load ptr, ptr %i.es, align 16, !noalias !26831, !nonnull !62, !noundef !62 ; 2 uses
  %i.fu = load i64, ptr %i.er, align 8, !noalias !26831, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !26831
  store i64 1, ptr %i.c, align 8, !noalias !26831
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.fv, align 8, !noalias !26831
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ft, ptr %i.fw, align 8, !noalias !26831
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.fu, ptr %.sroa.4.0..sroa_idx13.i, align 8, !noalias !26831
  %.sroa.5.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx.i96, align 8, !noalias !26831
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.fx = load <2 x i64>, ptr %i.d, align 16, !noalias !26831
  store <2 x i64> %i.fx, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !26831
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !26835
  %i.fy = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !26835 ; 3 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.bo, label %bb.br, !prof !61

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24.i unwind label %bb.bp, !noalias !26831

.noexc24.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bo
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #50
          to label %.body99.thread unwind label %bb.bq, !noalias !26831

bb.bq:                                            ; preds = %bb.bp
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !26831
  unreachable

bb.br:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fy, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !26831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !26831
  br label %bb.bv

bb.bs:                                            ; preds = %.invoke.i
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body99.thread unwind label %bb.bt, !noalias !26831

bb.bt:                                            ; preds = %bb.bs
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !26831
  unreachable

bb.bu:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, %bb.bh
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.body99.thread

bb.bv:                                            ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i, %bb.br
  %.sroa.8181.0 = phi ptr [ %i.ft, %bb.br ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  %.sroa.9.0 = phi i64 [ %i.fu, %bb.br ], [ undef, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  %.sroa.6180.0 = phi ptr [ %i.fy, %bb.br ], [ null, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  %.sroa.0179.0 = phi i64 [ %.sroa.0.1.i, %bb.br ], [ 0, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE11count_nullsxE0E0E0EB3A_.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !26831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %.sroa.7187.0..sroa_idx188 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7187.0..sroa_idx188, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7177.0..sroa_idx178, i64 168, i1 false)
  store i64 1, ptr %i.aa, align 8, !alias.scope !26836
  %.sroa.6184.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %.sroa.0179.0, ptr %.sroa.6184.0..sroa_idx185, align 8, !alias.scope !26836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store ptr %.sroa.6180.0, ptr %i.z, align 8
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %.sroa.8181.0, ptr %.sroa.5271.0..sroa_idx, align 8
  %.sroa.6272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.6272.0..sroa_idx, align 8
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder15null_bit_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.ab, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.bw unwind label %.body99.thread241

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.ac, ptr noundef nonnull align 8 dereferenceable(184) %i.ab, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.bg

bb.bx:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.t, ptr noundef nonnull align 8 dereferenceable(184) %i.ac, i64 184, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.gf = getelementptr i8, ptr %1, i64 256
  %.val58 = load ptr, ptr %i.gf, align 8, !nonnull !62, !noundef !62 ; 3 uses
  %i.gg = getelementptr i8, ptr %1, i64 264
  %.val59 = load i64, ptr %i.gg, align 8, !noundef !62
  %.not27 = icmp eq i64 %.val59, 0
  br i1 %.not27, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.experimental.noalias.scope.decl(metadata !26837)
  call void @llvm.experimental.noalias.scope.decl(metadata !26838)
  %i.gh = load ptr, ptr %.val58, align 8, !alias.scope !26838, !noalias !26837, !nonnull !62, !noundef !62 ; 2 uses
  %i.gi = atomicrmw add ptr %i.gh, i64 1 monotonic, align 8, !noalias !26839
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  call void @llvm.trap()
  unreachable

bb.ca:                                            ; preds = %bb.bx
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @510) #49
          to label %bb.h unwind label %bb.cs

bb.cb:                                            ; preds = %bb.by
  %i.gk = getelementptr inbounds nuw i8, ptr %.val58, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !alias.scope !26838, !noalias !26837, !noundef !62
  %i.gm = getelementptr inbounds nuw i8, ptr %.val58, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !26838, !noalias !26837, !noundef !62
  store ptr %i.gh, ptr %i.s, align 8, !alias.scope !26837, !noalias !26838
  %i.go = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.gl, ptr %i.go, align 8, !alias.scope !26837, !noalias !26838
  %i.gp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.gn, ptr %i.gp, align 8, !alias.scope !26837, !noalias !26838
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.gq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.thread233

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder10add_buffer(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(184) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.ce unwind label %bb.cq

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke void @_RNvMs3_NtCs56ggtDZRYpd_10arrow_data4dataNtB5_16ArrayDataBuilder5build(ptr noalias noundef nonnull sret([136 x i8]) align 8 captures(none) dereferenceable(136) %i.w, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.v)
          to label %bb.cf unwind label %.thread230

.thread230:                                       ; preds = %bb.ce
  %i.gr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8191)
  br label %.thread258

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !26840)
  %i.gs = load i64, ptr %i.w, align 8, !range !64, !alias.scope !26841, !noalias !26840, !noundef !62 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, -1
  %i.gu = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191, ptr noundef nonnull align 8 dereferenceable(32) %i.gu, i64 32, i1 false), !alias.scope !26842
  br i1 %i.gt, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !26843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191, i64 32, i1 false)
  invoke void @_RNvXs6_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @512)
          to label %bb.cr unwind label %.thread224

bb.ch:                                            ; preds = %bb.cf
  %.sroa.10193.0..sroa_idx194 = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %.sroa.10193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.10193.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.10193.0..sroa_idx194, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 %i.gs, ptr %i.q, align 8
  %.sroa.8191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8191, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8191)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvXs3_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB5_16GenericByteArrayINtNtB9_5types17GenericStringTypelEEINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataE4fromCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(120) %i.p, ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %i.q)
end_hunk_4
