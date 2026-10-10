Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_RINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statisticsNtB6_17StatisticsBuilder19statistics_appenderNtNtCs4ytUTZt2Gw9_11arrow_array5types24TimestampMillisecondTypeEBe_:bb.a
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
  %.sroa.0.0 = phi i64 [ 0, %.lr.ph.split.i ], [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 2 uses
  %.val.i.i.i.i = phi i64 [ %.val.i.i.i.pre.i, %.lr.ph.split.i ], [ %.val7.i.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.h = phi i64 [ 0, %.lr.ph.split.i ], [ %i.af, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 4 uses
  %i.i = phi ptr [ %.8.val, %.lr.ph.split.i ], [ %i.j, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !988)
  %.val7.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !988, !noalias !989, !noundef !62 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, %.val7.i.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !noalias !990, !noundef !62 ; 2 uses
  %i.m = lshr i64 %i.h, 3                         ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.l                  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.e, label %.invoke

bb.d:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.c
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 7
  %i.q = shl nuw i8 1, %i.p
  %i.r = load ptr, ptr %i.g, align 16, !noalias !990, !nonnull !62, !noundef !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !990, !noundef !62
  %i.u = or i8 %i.t, %i.q
  store i8 %i.u, ptr %i.s, align 1, !noalias !990
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i

.invoke:                                          ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ @215, %bb.c ], [ @216, %bb.d ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #49
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = trunc i64 %i.h to i8
  %i.x = and i8 %i.w, 7
  %i.y = shl nuw i8 1, %i.x
  %i.z = xor i8 %i.y, -1
  %i.aa = load ptr, ptr %i.g, align 16, !noalias !990, !nonnull !62, !noundef !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.m ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !990, !noundef !62
  %i.ad = and i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.ab, align 1, !noalias !990
  %i.ae = add i64 %.sroa.0.0, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.1 = phi i64 [ %i.ae, %bb.f ], [ %.sroa.0.0, %bb.e ] ; 3 uses
  %i.af = add nuw nsw i64 %i.h, 1                 ; 2 uses
  %exitcond = icmp eq i64 %i.af, %i.d
  br i1 %exitcond, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit, label %bb.b

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0B2S_.exit.i
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit.thread, label %bb.g

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit.thread: ; preds = %bb.a, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.k

bb.g:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit
  %i.ag = load ptr, ptr %i.g, align 16, !nonnull !62, !noundef !62 ; 2 uses
  %i.ah = load i64, ptr %i.f, align 8, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ag, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx13, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.ak, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !991
  %i.al = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !991 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %bb.l, !prof !61

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %bb.l, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericBinaryTypexEE11count_nullsxE0E0E0EB3A_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.1, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.ap, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ah, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  br label %bb.k

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.aq, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body7

bb.m:                                             ; preds = %.invoke
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
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
  %.sroa.0.0 = phi i64 [ 0, %.lr.ph.split.i ], [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 2 uses
  %.val.i.i.i.i = phi i64 [ %.val.i.i.i.pre.i, %.lr.ph.split.i ], [ %.val7.i.i.i.i, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.h = phi i64 [ 0, %.lr.ph.split.i ], [ %i.af, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ] ; 4 uses
  %i.i = phi ptr [ %.8.val, %.lr.ph.split.i ], [ %i.j, %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %.val7.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !1004, !noalias !1005, !noundef !62 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, %.val7.i.i.i.i
  %i.l = load i64, ptr %i.f, align 8, !noalias !1006, !noundef !62 ; 2 uses
  %i.m = lshr i64 %i.h, 3                         ; 4 uses
  %i.n = icmp ult i64 %i.m, %i.l                  ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.e, label %.invoke

bb.d:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.f, label %.invoke

bb.e:                                             ; preds = %bb.c
  %i.o = trunc i64 %i.h to i8
  %i.p = and i8 %i.o, 7
  %i.q = shl nuw i8 1, %i.p
  %i.r = load ptr, ptr %i.g, align 16, !noalias !1006, !nonnull !62, !noundef !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.m ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !1006, !noundef !62
  %i.u = or i8 %i.t, %i.q
  store i8 %i.u, ptr %i.s, align 1, !noalias !1006
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i

.invoke:                                          ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ @215, %bb.c ], [ @216, %bb.d ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) #49
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = trunc i64 %i.h to i8
  %i.x = and i8 %i.w, 7
  %i.y = shl nuw i8 1, %i.x
  %i.z = xor i8 %i.y, -1
  %i.aa = load ptr, ptr %i.g, align 16, !noalias !1006, !nonnull !62, !noundef !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.m ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !1006, !noundef !62
  %i.ad = and i8 %i.ac, %i.z
  store i8 %i.ad, ptr %i.ab, align 1, !noalias !1006
  %i.ae = add i64 %.sroa.0.0, 1
  br label %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i

_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.0.1 = phi i64 [ %i.ae, %bb.f ], [ %.sroa.0.0, %bb.e ] ; 3 uses
  %i.af = add nuw nsw i64 %i.h, 1                 ; 2 uses
  %exitcond = icmp eq i64 %i.af, %i.d
  br i1 %exitcond, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit, label %bb.b

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit: ; preds = %_RNCINvNvXs_NtNtNtCscI6d9CVNmLh_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateRSxuNCINvNvB1e_8for_each4callTjB21_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2K_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0B2S_.exit.i
  %.not = icmp eq i64 %.sroa.0.1, 0
  br i1 %.not, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit.thread, label %bb.g

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit.thread: ; preds = %bb.a, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  call void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %bb.k

bb.g:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit
  %i.ag = load ptr, ptr %i.g, align 16, !nonnull !62, !noundef !62 ; 2 uses
  %i.ah = load i64, ptr %i.f, align 8, !noundef !62 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ag, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx13, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ak = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.ak, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1007
  %i.al = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1007 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.h, label %bb.l, !prof !61

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #49
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.a) #50
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.k:                                             ; preds = %bb.l, %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter7WindowsxENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtBU_8adapters9enumerateINtB1J_9EnumeratepEBO_4fold9enumerateRSxuNCINvNvBO_8for_each4callTjB2K_ENCINvMs0_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB3s_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE11count_nullsxE0E0E0EB3A_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.l:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.al, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.sroa.0.1, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.ap, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ah, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  br label %bb.k

.body:                                            ; preds = %bb.m, %bb.i
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.aq, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body7

bb.m:                                             ; preds = %.invoke
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
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

end_hunk_0
