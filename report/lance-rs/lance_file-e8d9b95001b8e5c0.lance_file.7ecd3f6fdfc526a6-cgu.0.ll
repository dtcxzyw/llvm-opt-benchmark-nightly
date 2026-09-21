Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_file-e8d9b95001b8e5c0.lance_file.7ecd3f6fdfc526a6-cgu.0?download=true
inline.NumInlined: 17611
inline.NumDeleted: 7469
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 132
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encoding11CompressionEECsaSXGKSfiU2E_10lance_file:bb.a

bb.ah:                                            ; preds = %bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !4141, !nonnull !62, !noundef !62 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  %i.cx = load ptr, ptr %i.cw, align 8, !alias.scope !4142, !noalias !4141, !align !63, !noundef !62 ; 4 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEECsaSXGKSfiU2E_10lance_file.exit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encoding11CompressionEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.cx)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingECsaSXGKSfiU2E_10lance_file.exit.i28 unwind label %.body30, !noalias !4143, !inline_history !4077

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingECsaSXGKSfiU2E_10lance_file.exit.i28: ; preds = %bb.ai
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef 40, i64 noundef 8) #44, !noalias !4144, !inline_history !4080
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEECsaSXGKSfiU2E_10lance_file.exit

.body30:                                          ; preds = %bb.ai
  %i.cz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cx, i64 noundef 40, i64 noundef 8) #44, !noalias !4144, !inline_history !4080
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef 24, i64 noundef 8) #44, !noalias !4141, !inline_history !4081
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2113FixedSizeListEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingECsaSXGKSfiU2E_10lance_file.exit.i28, %bb.ah
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cv, i64 noundef 24, i64 noundef 8) #44, !noalias !4141, !inline_history !4081
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encoding11CompressionECsaSXGKSfiU2E_10lance_file.exit

bb.aj:                                            ; preds = %bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4145)
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !4145, !nonnull !62, !noundef !62 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4146)
  %.val.i.i = load i64, ptr %i.db, align 8, !alias.scope !4146, !noalias !4145 ; 2 uses
  %i.dc = icmp eq i64 %.val.i.i, 0
  br i1 %i.dc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dd = getelementptr i8, ptr %i.db, i64 8
  %.val1.i.i = load ptr, ptr %i.dd, align 8, !alias.scope !4146, !noalias !4145, !nonnull !62, !noundef !62
  %i.de = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4147
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.ak, %bb.aj
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !4148, !noalias !4145, !align !63, !noundef !62 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEECsaSXGKSfiU2E_10lance_file.exit, label %bb.al

bb.al:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encoding11CompressionEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.dg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingECsaSXGKSfiU2E_10lance_file.exit.i unwind label %.body.i, !noalias !4149, !inline_history !4088

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.al
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef 40, i64 noundef 8) #44, !noalias !4150, !inline_history !4091
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEECsaSXGKSfiU2E_10lance_file.exit

.body.i:                                          ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef 40, i64 noundef 8) #44, !noalias !4150, !inline_history !4091
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef 32, i64 noundef 8) #44, !noalias !4145, !inline_history !4092
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2112PackedStructEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2119CompressiveEncodingECsaSXGKSfiU2E_10lance_file.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.db, i64 noundef 32, i64 noundef 8) #44, !noalias !4145, !inline_history !4092
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encoding11CompressionECsaSXGKSfiU2E_10lance_file.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !85, !noundef !62
  %i.b = icmp eq i8 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(56) %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SyncNtB2P_4SendEL_EEEB1z_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !62  ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4160)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4161, !nonnull !62, !noundef !62
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !4161
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataE9drop_slowBK_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4162
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCscI6d9CVNmLh_4core3any3AnyNtNtBL_6marker4SyncNtB1e_4SendEL_E9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsaSXGKSfiU2E_10lance_file6reader20CachedColumnMetadataEEB1d_.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !64, !noundef !62
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4169)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4171)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4172, !nonnull !62, !noundef !62
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !4172
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) #50
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.c
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_INtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i8, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.k) #50
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !4175
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i8, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.k) #50
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !4178
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.p = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_TymEEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4181)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_TymEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTymEEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTymEEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !4181 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTymEEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4181, !nonnull !62, !noundef !62
  %i.h = shl nuw i64 %.val8.i.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4181
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTymEEECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTymEEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_TymEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_TymEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTymEEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecTymEEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_TymEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.k = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecTymEEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VecTymEEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_TymEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_hEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4184)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !4184 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4184, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4184
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_hEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4187 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4187, !nonnull !62, !align !63, !noundef !62 ; 5 uses
  %i.g = load ptr, ptr %.val9.i.i, align 8, !invariant.load !62, !noalias !4187 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !4187

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !65, !invariant.load !62, !noalias !4187 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !92, !invariant.load !62, !noalias !4187
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #44, !noalias !4187
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !65, !invariant.load !62, !noalias !4187 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !92, !invariant.load !62, !noalias !4187
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #44, !noalias !4187
  br label %.body.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.c
  %i.s = icmp eq i64 %i.e, %.val1
  br i1 %i.s, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %.sroa.0.1.i.i22, 1      ; 2 uses
  %i.u = icmp eq i64 %i.t, %.val1
  br i1 %i.u, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.d
  %i.v = icmp eq i64 %i.e, %.val1
  br i1 %i.v, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.t, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !4187
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val7.i.i = load ptr, ptr %i.x, align 8, !alias.scope !4187, !nonnull !62, !align !63, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file(ptr %.val.i.i, ptr nonnull %.val7.i.i) #50
          to label %bb.e unwind label %bb.f, !noalias !4187

bb.f:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !4187
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.z = icmp eq i64 %.val4, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.aa = shl nuw i64 %.val4, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.h

bb.h:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.ac = shl nuw i64 %.val2, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.h
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4202)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !4203, !noundef !62 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4204
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.e, %.val1
  br i1 %i.l, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.e, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4205)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !4206, !noundef !62 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph12.i.i
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !4207
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.n, %.val1
  br i1 %i.s, label %.body, label %.lr.ph12.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.u = icmp eq i64 %.val4, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.h

bb.h:                                             ; preds = %.body
  %i.v = shl nuw i64 %.val4, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.w = icmp eq i64 %.val2, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.x = shl nuw i64 %.val2, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.i
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.h, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [192 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.f = load i64, ptr %i.d, align 8, !range !83, !alias.scope !4214, !noundef !62
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  %i.m = load i64, ptr %i.k, align 8, !range !83, !alias.scope !4215, !noundef !62
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit8.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph12.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.k)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = mul nuw i64 %.val4, 192
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.t = mul nuw i64 %.val2, 192
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEENtNtNtBK_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4227)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !4228, !nonnull !62, !noundef !62
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4229
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !4232, !nonnull !62, !noundef !62
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !4233
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.v = shl nuw i64 %.val2, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4245)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !4246, !nonnull !62, !noundef !62
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4247
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4249)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !4250, !nonnull !62, !noundef !62
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !4251
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = shl nuw i64 %.val4, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.v = shl nuw i64 %.val2, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  %.val8.i.i = load ptr, ptr %i.d, align 8, !alias.scope !4254 ; 5 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4254, !nonnull !62, !align !63, !noundef !62 ; 5 uses
  %i.g = load ptr, ptr %.val9.i.i, align 8, !invariant.load !62, !noalias !4254 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  invoke void %i.g(ptr noundef nonnull %.val8.i.i)
          to label %bb.c unwind label %bb.d, !noalias !4254

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !65, !invariant.load !62, !noalias !4254 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !92, !invariant.load !62, !noalias !4254
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) %i.l) #44, !noalias !4254
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !65, !invariant.load !62, !noalias !4254 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.body.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.val9.i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !92, !invariant.load !62, !noalias !4254
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #44, !noalias !4254
  br label %.body.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.c
  %i.s = icmp eq i64 %i.e, %.val1
  br i1 %i.s, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %.sroa.0.1.i.i22, 1      ; 2 uses
  %i.u = icmp eq i64 %i.t, %.val1
  br i1 %i.u, label %.body, label %.lr.ph

.body.i.i:                                        ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.d
  %i.v = icmp eq i64 %i.e, %.val1
  br i1 %i.v, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.e
  %.sroa.0.1.i.i22 = phi i64 [ %i.t, %bb.e ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.1.i.i22 ; 2 uses
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !4254
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val7.i.i = load ptr, ptr %i.x, align 8, !alias.scope !4254, !nonnull !62, !align !63, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EECsaSXGKSfiU2E_10lance_file(ptr %.val.i.i, ptr nonnull %.val7.i.i) #50
          to label %bb.e unwind label %bb.f, !noalias !4254

bb.f:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !4254
  unreachable

.body:                                            ; preds = %bb.e, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.z = icmp eq i64 %.val4, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EEECsaSXGKSfiU2E_10lance_file.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.aa = shl nuw i64 %.val4, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.h

bb.h:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.ac = shl nuw i64 %.val2, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.h
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder12FieldEncoderEL_EEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.m
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4259)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4260)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !4261 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4261, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4261
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4268)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 40
  %.val8.i.i = load i64, ptr %i.f, align 8, !alias.scope !4269 ; 2 uses
  %i.g = icmp eq i64 %.val8.i.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr i8, ptr %i.d, i64 48
  %.val9.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4268, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4270
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.k = shl nuw i64 %.val2, 6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(104) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i8, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(104) %i.k) #50
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val4, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.p = mul nuw i64 %.val2, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs2bHstFFhpHt_17datafusion_common6column6ColumnEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4281)
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val5
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %.val4, i64 %.sroa.0.0.i.i7 ; 4 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4283)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4284, !noundef !62
  %i.i = load ptr, ptr %i.e, align 8, !alias.scope !4284, !nonnull !62, !align !63, !noundef !62
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !noalias !4284, !nonnull !62, !noundef !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !4284, !noundef !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !4284, !noundef !62
  invoke void %i.k(ptr noundef %i.h, ptr noundef %i.m, i64 noundef %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.b, !noalias !4281, !inline_history !5

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i: ; preds = %.lr.ph9
  %i.p = add nuw nsw i64 %.sroa.0.1.i.i8, 1       ; 2 uses
  %i.q = icmp eq i64 %i.p, %.val5
  br i1 %i.q, label %.body, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.f, %.val5
  br i1 %i.s, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.val4, i64 %.sroa.0.1.i.i8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4286)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4287, !noundef !62
  %i.w = load ptr, ptr %i.t, align 8, !alias.scope !4287, !nonnull !62, !align !63, !noundef !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !4287, !nonnull !62, !noundef !62
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !4287, !noundef !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !4287, !noundef !62
  invoke void %i.y(ptr noundef %i.v, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i unwind label %bb.c, !noalias !4281, !inline_history !5

bb.c:                                             ; preds = %.lr.ph9
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !4281
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.ae = icmp eq i64 %.val2, 0
  br i1 %i.ae, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.af = shl nuw i64 %.val2, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.ag = icmp eq i64 %.val, 0
  br i1 %i.ag, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.ah = shl nuw i64 %.val, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4291, !nonnull !62, !noundef !62 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4291, !noundef !62 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !4290

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [136 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.m) #50
          to label %bb.c unwind label %bb.e, !inline_history !4290

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !inline_history !4290
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 136
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit4, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.r = mul nuw i64 %.val, 136
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.08.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [112 x i8], ptr %.val, i64 %.sroa.0.08.i.i ; 5 uses
  %i.e = add nuw nsw i64 %.sroa.0.08.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !4300 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4300, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4301
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %.body.i.i

.body.i.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.j)
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringB1i_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.l)
  %i.m = icmp eq i64 %i.e, %.val1
  br i1 %i.m, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.n = add nuw nsw i64 %.sroa.0.1.i.i19, 1      ; 2 uses
  %i.o = icmp eq i64 %i.n, %.val1
  br i1 %i.o, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.c
  %.sroa.0.1.i.i19 = phi i64 [ %i.n, %bb.c ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [112 x i8], ptr %.val, i64 %.sroa.0.1.i.i19
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(112) %i.p) #50
          to label %bb.c unwind label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.c, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.r = icmp eq i64 %.val4, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.s = mul nuw i64 %.val4, 112
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.t = icmp eq i64 %.val2, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.u = mul nuw i64 %.val2, 112
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.f
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.e, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBG_(ptr noalias noundef nonnull align 8 %.val4, i64 noundef %.val5)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.d = icmp eq i64 %.val2, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1j_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val2, 216
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1j_.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1j_.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit
  %i.g = mul nuw i64 %.val, 216
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1j_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1j_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit, %bb.d
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1j_.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 %.val, i64 noundef %.val1)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.d = icmp eq i64 %.val4, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoEECsaSXGKSfiU2E_10lance_file.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = mul nuw i64 %.val4, 248
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.f = icmp eq i64 %.val2, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.d

bb.d:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.g = mul nuw i64 %.val2, 248
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.d
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4318)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !4319, !nonnull !62, !noundef !62
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4320
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.e, %.val1
  br i1 %i.k, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.m, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4323)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !4324, !nonnull !62, !noundef !62
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !4325
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.m, %.val1
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.s = icmp eq i64 %.val4, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.t = mul nuw i64 %.val4, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.u = icmp eq i64 %.val2, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.v = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !4329, !nonnull !62, !noundef !62 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !4329, !noundef !62 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [192 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.g)
          to label %bb.b unwind label %bb.d, !inline_history !4328

bb.c:                                             ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [192 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.m) #50
          to label %bb.c unwind label %bb.e, !inline_history !4328

bb.e:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !inline_history !4328
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.p = mul nuw i64 %.val2, 192
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.a
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit4, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.r = mul nuw i64 %.val, 192
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4340)
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [176 x i8], ptr %.val4, i64 %.sroa.0.07.i.i ; 7 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4341)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4342)
  %.val.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !4343 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4343, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4343
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4344)
  %.val.i7.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !4345 ; 2 uses
  %i.j = icmp eq i64 %.val.i7.i.i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val1.i8.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4345, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i.i.i, i64 noundef %.val.i7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4345
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1m_3vec3VechEEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4346)
  %.val.i13.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !4347 ; 2 uses
  %i.n = icmp eq i64 %.val.i13.i.i.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val1.i14.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !4347, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14.i.i.i, i64 noundef %.val.i13.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4347
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.p = icmp eq i64 %i.e, %.val5
  br i1 %i.p, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1l_.exit6, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit
  %i.r = mul nuw i64 %.val, 176
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1l_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1l_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 7 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.val11.i.i.i = load i64, ptr %i.f, align 8, !range !96, !alias.scope !4354, !noundef !62 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val12.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4354 ; 2 uses
  %switch.i.i.i.i = icmp ugt i64 %.val11.i.i.i, -3
  br i1 %switch.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp ne i64 %.val11.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.h)
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.val11.i.i.i, 1
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i.i.i, i64 noundef %.val11.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4354
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i.i.i: ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1g_(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val7.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !4354 ; 2 uses
  %i.j = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val8.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4354, !nonnull !62, !noundef !62
  %i.l = shl nuw i64 %.val7.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4354
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i.i: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile8EncodingEEB13_.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !4354 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val4.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !4354, !nonnull !62, !noundef !62
  %i.p = shl nuw i64 %.val.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4354
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_.exit.i.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit13.i.i.i
  %i.q = icmp eq i64 %i.e, %.val1
  br i1 %i.q, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.r = icmp eq i64 %.val2, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEEB1l_.exit6, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit
  %i.s = mul nuw i64 %.val2, 96
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEEB1l_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEEB1l_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBL_.exit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4371)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [160 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  %i.f = load i64, ptr %i.d, align 8, !range !97, !alias.scope !4372, !noundef !62 ; 4 uses
  %i.g = icmp eq i64 %i.f, -4
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = icmp ne i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nsw i64 %i.f, -15
  %i.j = icmp sgt i64 %i.f, 14
  %i.k = select i1 %i.j, i64 %i.i, i64 1
  switch i64 %i.k, label %bb.c [
    i64 0, label %bb.e
    i64 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !98, !alias.scope !4373, !noundef !62 ; 3 uses
  %i.n = and i64 %i.m, -2
  %switch.i.i.i.i.i.i.i = icmp eq i64 %i.n, -4
  br i1 %switch.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ne i64 %i.m, -2
  %i.p = icmp slt i64 %i.m, 13
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.o, %i.p
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !98, !alias.scope !4374, !noundef !62 ; 3 uses
  %i.s = and i64 %i.r, -2
  %switch.i.i1.i.i.i.i.i = icmp eq i64 %i.s, -4
  br i1 %switch.i.i1.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ne i64 %i.r, -2
  %i.u = icmp slt i64 %i.r, 13
  %or.cond.i.i.i.i.i.i2.i.i.i.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i.i.i.i.i2.i.i.i.i.i, label %.invoke.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i

.invoke.i.i:                                      ; preds = %bb.f, %bb.d
  %i.v = phi ptr [ %i.l, %bb.d ], [ %i.q, %bb.f ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2120compressive_encoding11CompressionEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.i

bb.g:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2115SparseListLayerECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(160) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.g, %.invoke.i.i, %bb.f, %bb.e, %bb.d, %bb.c, %.lr.ph.i.i
  %i.w = icmp eq i64 %i.e, %.val1
  br i1 %i.w, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.x = add nuw nsw i64 %.sroa.0.1.i.i12, 1      ; 2 uses
  %i.y = icmp eq i64 %i.x, %.val1
  br i1 %i.y, label %.body, label %.lr.ph

bb.i:                                             ; preds = %bb.g, %.invoke.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = icmp eq i64 %i.e, %.val1
  br i1 %i.aa, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.h
  %.sroa.0.1.i.i12 = phi i64 [ %i.x, %bb.h ], [ %i.e, %bb.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [160 x i8], ptr %.val, i64 %.sroa.0.1.i.i12
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(160) %i.ab) #50
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !4371
  unreachable

.body:                                            ; preds = %bb.h, %bb.i
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.ad = icmp eq i64 %.val4, 0
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerEECsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.ae = mul nuw i64 %.val4, 160
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.af = icmp eq i64 %.val2, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.l

bb.l:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.ag = mul nuw i64 %.val2, 160
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.l
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2121SparseStructuralLayerEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.k, %.body
  resume { ptr, i32 } %i.z
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1g_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4379)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %.val, i64 %.sroa.0.07.i.i ; 6 uses
  %i.e = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4380)
  %.val5.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !4381 ; 2 uses
  %i.f = icmp eq i64 %.val5.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val6.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4381, !nonnull !62, !noundef !62
  %i.h = shl nuw i64 %.val5.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4381
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !4381 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val2.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4381, !nonnull !62, !noundef !62
  %i.l = shl nuw i64 %.val.i.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4381
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i.i: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.val7.i.i.i = load i64, ptr %i.m, align 8, !range !96, !alias.scope !4381, !noundef !62 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val8.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !4381 ; 2 uses
  %switch.i13.i.i.i = icmp ugt i64 %.val7.i.i.i, -3
  br i1 %switch.i13.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i.i
  %i.o = icmp ne i64 %.val7.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.o)
  %or.cond.i.i.i.i14.i.i.i = icmp slt i64 %.val7.i.i.i, 1
  br i1 %or.cond.i.i.i.i14.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %.val7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !4381
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i.i: ; preds = %bb.e, %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit12.i.i.i
  %i.p = icmp eq i64 %i.e, %.val1
  br i1 %i.p, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEBJ_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.q = icmp eq i64 %.val2, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1n_.exit6, label %bb.f

bb.f:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit
  %i.r = mul nuw i64 %.val2, 88
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1n_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageEEB1n_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile15column_metadata4PageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_.exit, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEEB1i_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4384)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEBL_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEBL_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !4384 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEBL_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4384, !nonnull !62, !noundef !62
  %i.h = shl nuw i64 %.val8.i.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !4384
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEBL_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEBL_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.i = icmp eq i64 %i.e, %.val1
  br i1 %i.i, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEBL_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEEB1p_.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit
  %i.k = shl nuw i64 %.val2, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEEB1p_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEEB1p_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1i_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val5
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [104 x i8], ptr %.val4, i64 %.sroa.0.0.i.i7
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i7, 1       ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i unwind label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i: ; preds = %.lr.ph9
  %i.g = add nuw nsw i64 %.sroa.0.1.i.i8, 1       ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val5
  br i1 %i.h, label %.body, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val5
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %.val4, i64 %.sroa.0.1.i.i8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i, %bb.b
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.m = icmp eq i64 %.val2, 0
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1p_.exit, label %bb.d

bb.d:                                             ; preds = %.body
  %i.n = mul nuw i64 %.val2, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1p_.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.o = icmp eq i64 %.val, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1p_.exit6, label %bb.e

bb.e:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit
  %i.p = mul nuw i64 %.val, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1p_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1p_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBP_.exit, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1p_.exit: ; preds = %bb.d, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIB1a_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBH_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i, 1      ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4403)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !4404, !nonnull !62, !noundef !62
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !4405
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4407)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4408, !nonnull !62, !noundef !62
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !4409
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %.body.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body.i.i unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4411)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4412, !nonnull !62, !noundef !62
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !4413
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.s = icmp eq i64 %i.e, %.val1
  br i1 %i.s, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBH_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %.sroa.0.1.i.i27, 1      ; 2 uses
  %i.u = icmp eq i64 %i.t, %.val1
  br i1 %i.u, label %.body, label %.lr.ph

bb.h:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.d, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  %i.w = icmp eq i64 %i.e, %.val1
  br i1 %i.w, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.g
  %.sroa.0.1.i.i27 = phi i64 [ %i.t, %bb.g ], [ %i.e, %.body.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i.i27
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.x) #50
          to label %bb.g unwind label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.g, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.z = icmp eq i64 %.val4, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIB1h_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.aa = mul nuw i64 %.val4, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIB1h_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBH_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.ab = icmp eq i64 %.val2, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIB1h_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBH_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.ac = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIB1h_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIB1h_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTINtNtB7_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBH_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.k
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTINtNtBG_4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIB1h_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBC_RINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4416)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBw_RINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtB1A_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtB1A_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val8.i.i = load i64, ptr %i.f, align 8, !alias.scope !4416 ; 2 uses
  %i.g = icmp eq i64 %.val8.i.i, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtB1A_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr i8, ptr %i.d, i64 16
  %.val9.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4416, !nonnull !62, !noundef !62
  %i.i = shl nuw i64 %.val8.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4416
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtB1A_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtB1A_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBw_RINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBw_RINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtCs40k4W9msRzi_5alloc3vec3VecRINtNtB1A_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.k = icmp eq i64 %.val2, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtBG_3vec3VecRINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBw_RINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.l = shl nuw i64 %.val2, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtBG_3vec3VecRINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldINtNtBG_3vec3VecRINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBw_RINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTjINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.09.i.i
  %i.e = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4431)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4433)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !4434, !nonnull !62, !noundef !62
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !4435
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTjINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.e, %.val1
  br i1 %i.l, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.e, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.110.i.i
  %i.n = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4436)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4438)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !4439, !nonnull !62, !noundef !62
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !4440
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.n, %.val1
  br i1 %i.s, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.u = icmp eq i64 %.val4, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.v = mul nuw i64 %.val4, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTjINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.w = icmp eq i64 %.val2, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTjINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit
  %i.x = mul nuw i64 %.val2, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTjINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, %bb.g
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTjINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1K_.exit, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1K_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i
  %.sroa.0.0.i.i19 = phi i64 [ %i.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [360 x i8], ptr %.val, i64 %.sroa.0.0.i.i19 ; 3 uses
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i19, 1      ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.i) #50
          to label %.body.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i: ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.k)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph21
  %i.l = add nuw nsw i64 %.sroa.0.1.i.i20, 1      ; 2 uses
  %i.m = icmp eq i64 %i.l, %.val1
  br i1 %i.m, label %.body, label %.lr.ph21

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.h, %bb.b ]
  %i.o = icmp eq i64 %i.f, %.val1
  br i1 %i.o, label %.body, label %.lr.ph21

.lr.ph21:                                         ; preds = %.body.i.i, %bb.d
  %.sroa.0.1.i.i20 = phi i64 [ %i.l, %bb.d ], [ %i.f, %.body.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw [360 x i8], ptr %.val, i64 %.sroa.0.1.i.i20
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_(ptr noalias noundef align 8 dereferenceable(360) %i.p) #50
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph21
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

.body:                                            ; preds = %bb.d, %.body.i.i
  %.val4 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.r = icmp eq i64 %.val4, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2k_.exit, label %bb.g

bb.g:                                             ; preds = %.body
  %i.s = mul nuw i64 %.val4, 360
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2k_.exit

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1K_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.t = icmp eq i64 %.val2, 0
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2k_.exit6, label %bb.h

bb.h:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1K_.exit
  %i.u = mul nuw i64 %.val2, 360
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2k_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2k_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB1K_.exit, %bb.h
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2k_.exit: ; preds = %bb.g, %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !62 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecxEECsaSXGKSfiU2E_10lance_file.exit4, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !62, !noundef !62
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecxEECsaSXGKSfiU2E_10lance_file.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecxEECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4443)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4443, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4443
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4446)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4446, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4446
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_ENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4449)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4449, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4449
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4452)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4452, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4452
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerE9drop_slowCsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArceEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4455)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !4455, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !4455
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceE9drop_slowCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RNvXsD_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArceENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakDNtNtCsaSXGKSfiU2E_10lance_file6reader14ReadProjectionEL_RNtNtBG_5alloc6GlobalEEB1f_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsN_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakDNtNtCsaSXGKSfiU2E_10lance_file6reader14ReadProjectionEL_RNtNtB7_5alloc6GlobalENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsN_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakDNtNtCsaSXGKSfiU2E_10lance_file6reader14ReadProjectionEL_RNtNtB7_5alloc6GlobalENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !65, !invariant.load !62
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !92, !invariant.load !62
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsN_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakDNtNtCsaSXGKSfiU2E_10lance_file6reader14ReadProjectionEL_RNtNtB7_5alloc6GlobalENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.i) #44
  br label %_RNvXsN_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakDNtNtCsaSXGKSfiU2E_10lance_file6reader14ReadProjectionEL_RNtNtB7_5alloc6GlobalENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_.exit

_RNvXsN_NtCs40k4W9msRzi_5alloc4syncINtB5_4WeakDNtNtCsaSXGKSfiU2E_10lance_file6reader14ReadProjectionEL_RNtNtB7_5alloc6GlobalENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBM_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync4WeakDNtNtCsjjpCCFGI3ul_14lance_encoding7encoder21FieldEncodingStrategyEL_RNtNtBG_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
end_hunk_0
begin_hunk_1_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEEECsaSXGKSfiU2E_10lance_file:bb.a
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [96 x i8], ptr %.sroa.05.1.i.i.i, i64 %i.t ; 4 uses
  %i.v = add i64 %.sroa.107.013.i.i.i, -1         ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5284)
  %.val.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !5285, !noalias !5280 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 -88
  %.val1.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !5285, !noalias !5280, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !5286
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -40
  %.val.i.i.i.i = load i64, ptr %i.z, align 8, !range !64, !alias.scope !5287, !noalias !5280, !noundef !62 ; 2 uses
  %i.aa = icmp sgt i64 %.val.i.i.i.i, 0
  br i1 %i.aa, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 -32
  %.val1.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !5283, !noalias !5280, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !5288
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i
  %i.ac = icmp eq i64 %i.v, 0
  br i1 %i.ac, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.b
  %i.ad = mul i64 %i.b, 96                        ; 2 uses
  %i.ae = add i64 %i.ad, 96                       ; 2 uses
  %i.af = add i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !5278, !nonnull !62, !noundef !62
  %i.al = sub i64 -96, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !5278
  br label %_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RNvXsg_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringNtNtCsjjpCCFGI3ul_14lance_encoding18compression_config22CompressionFieldParamsEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsjjbR6Jfsbqw_8lance_io6stream24RecordBatchStreamAdapterINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5294)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !5295, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !5295
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file(ptr %.val2, ptr nonnull %.val3) #50
          to label %common.resume unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !62, !align !63, !noundef !62 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !62 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !92, !invariant.load !62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !92, !invariant.load !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #44
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.f, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i.i ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCsj3nLz3LBTXi_12futures_core6stream6Streamp4ItemINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.e, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtBE_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtNtB22_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB4u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB4w_6format6pbfile14ColumnMetadataEINtNtB4_6result6ResultB35_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB6K_NtNtB4_7convert10InfallibleB79_EEEB4w_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5320)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5321)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !5322, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !5322, !nonnull !62, !noundef !62 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3                   ; 3 uses
  %i.g = icmp eq ptr %.val1.i.i.i.i, %.val.i.i.i.i
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5322, !noundef !62 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6option6OptionINtNtBO_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i.i.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !5322, !nonnull !62, !noundef !62
  %i.l = shl nuw i64 %i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5322
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6option6OptionINtNtBO_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i = phi i64 [ %i.n, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i, 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5323)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !5324, !noalias !5322, !noundef !62 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !5325
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i unwind label %bb.e, !noalias !5322

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c, %.lr.ph.i.i.i.i.i
  %i.s = icmp eq i64 %i.n, %i.f
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = icmp eq i64 %i.n, %i.f
  br i1 %i.u, label %.body.i.i.i.i, label %.lr.ph12.i.i.i.i.i

.lr.ph12.i.i.i.i.i:                               ; preds = %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i
  %.sroa.0.110.i.i.i.i.i = phi i64 [ %i.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.110.i.i.i.i.i ; 2 uses
  %i.w = add nuw nsw i64 %.sroa.0.110.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5326)
  %i.x = load ptr, ptr %i.v, align 8, !alias.scope !5327, !noalias !5322, !noundef !62 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph12.i.i.i.i.i
  %i.z = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !5328
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i unwind label %bb.h, !noalias !5322

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i: ; preds = %bb.g, %bb.f, %.lr.ph12.i.i.i.i.i
  %i.ab = icmp eq i64 %i.w, %i.f
  br i1 %i.ab, label %.body.i.i.i.i, label %.lr.ph12.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5322
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !5322, !noundef !62 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtNtB1I_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB4a_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB4c_6format6pbfile14ColumnMetadataEINtNtB4_6result6ResultB2L_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EEB4c_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i
  %i.ag = load ptr, ptr %0, align 8, !alias.scope !5322, !nonnull !62, !noundef !62
  %i.ah = shl nuw i64 %i.ae, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5322
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtNtB1I_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB4a_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB4c_6format6pbfile14ColumnMetadataEINtNtB4_6result6ResultB2L_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EEB4c_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6option6OptionINtNtBO_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i: ; preds = %bb.b, %.body.i.i.i.i
  resume { ptr, i32 } %i.t

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtNtB1I_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB4a_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB4c_6format6pbfile14ColumnMetadataEINtNtB4_6result6ResultB2L_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EEB4c_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj2_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !5353, !noundef !62 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5353, !noundef !62 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs4_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj2_ENtNtNtB9_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i, %bb.b
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.0.09.i.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5356)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !5357, !nonnull !62, !noundef !62
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !5358
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive29PrimitivePageEncodingBehaviorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i unwind label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.m = icmp eq i64 %i.i, %i.f
  br i1 %i.m, label %_RNvXs4_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj2_ENtNtNtB9_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.i, %i.f
  br i1 %i.o, label %._crit_edge13.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i

.lr.ph12.i.i.i.i.i.i:                             ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i
  %.sroa.0.110.i.i.i.i.i.i = phi i64 [ %i.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.0.110.i.i.i.i.i.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.0.110.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5361)
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !5362, !nonnull !62, !noundef !62
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !5363
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph12.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive29PrimitivePageEncodingBehaviorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i.i.i.i
  %i.u = icmp eq i64 %i.q, %i.f
  br i1 %i.u, label %._crit_edge13.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i

._crit_edge13.i.i.i.i.i.i:                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i, %bb.d
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs4_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj2_ENtNtNtB9_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj3_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !5388, !noundef !62 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5388, !noundef !62 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs4_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj3_ENtNtNtB9_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i, %bb.b
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.0.09.i.i.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5391)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !5392, !nonnull !62, !noundef !62
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !5393
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive29PrimitivePageEncodingBehaviorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i unwind label %bb.d

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.m = icmp eq i64 %i.i, %i.f
  br i1 %i.m, label %_RNvXs4_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj3_ENtNtNtB9_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.i, %i.f
  br i1 %i.o, label %._crit_edge13.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i

.lr.ph12.i.i.i.i.i.i:                             ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i
  %.sroa.0.110.i.i.i.i.i.i = phi i64 [ %i.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.0.110.i.i.i.i.i.i ; 2 uses
  %i.q = add nuw nsw i64 %.sroa.0.110.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5396)
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !5397, !nonnull !62, !noundef !62
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !5398
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph12.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive29PrimitivePageEncodingBehaviorEL_E9drop_slowBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i.i.i.i
  %i.u = icmp eq i64 %i.q, %i.f
  br i1 %i.u, label %._crit_edge13.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i

._crit_edge13.i.i.i.i.i.i:                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i, %bb.d
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs4_NtNtCscI6d9CVNmLh_4core5array4iterINtB5_8IntoIterNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingKj3_ENtNtNtB9_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical9primitive21PrimitivePageEncodingECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5411)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5411, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !5411, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %.sroa.0.08.i.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %.val.i, i64 %.sroa.0.08.i.i.i ; 3 uses
  %i.e = add nuw nsw i64 %.sroa.0.08.i.i.i, 1     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5413)
  %i.f = load i8, ptr %i.d, align 8, !range !85, !alias.scope !5414, !noalias !5411, !noundef !62
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5415)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5416)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !5417, !noalias !5411, !nonnull !62, !noundef !62
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !5418
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i unwind label %bb.f, !noalias !5411

bb.d:                                             ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i unwind label %bb.f, !noalias !5411

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.l = icmp eq i64 %i.e, %.val1.i
  br i1 %i.l, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.0.1.i.i.i5, 1     ; 2 uses
  %i.n = icmp eq i64 %i.m, %.val1.i
  br i1 %i.n, label %.body.i, label %.lr.ph

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.e, %.val1.i
  br i1 %i.p, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.e
  %.sroa.0.1.i.i.i5 = phi i64 [ %i.m, %bb.e ], [ %i.e, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i5
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(64) %i.q) #50
          to label %bb.e unwind label %bb.g, !noalias !5411

bb.g:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5411
  unreachable

.body.i:                                          ; preds = %bb.e, %bb.f
  %.val4.i = load i64, ptr %0, align 8, !range !65, !alias.scope !5411, !noundef !62 ; 2 uses
  %i.s = icmp eq i64 %.val4.i, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.h

bb.h:                                             ; preds = %.body.i
  %i.t = shl nuw i64 %.val4.i, 6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5411
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !65, !alias.scope !5411, !noundef !62 ; 2 uses
  %i.u = icmp eq i64 %.val2.i, 0
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i
  %i.v = shl nuw i64 %.val2.i, 6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5411
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.h, %.body.i
  resume { ptr, i32 } %i.o

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_ENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5433)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5433, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !5433, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.010.i.i.i, 1    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5435)
  %i.f = load i8, ptr %i.d, align 8, !range !85, !alias.scope !5436, !noalias !5433, !noundef !62
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5437)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5439)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !5440, !noalias !5433, !nonnull !62, !noundef !62
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !5441
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i unwind label %bb.d, !noalias !5433

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h) #50
          to label %.body.i.i.i unwind label %bb.e, !noalias !5433

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5433
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i unwind label %bb.h, !noalias !5433

bb.f:                                             ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i unwind label %bb.h, !noalias !5433

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  %i.o = icmp eq i64 %i.e, %.val1.i
  br i1 %i.o, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = add nuw nsw i64 %.sroa.0.1.i.i.i13, 1    ; 2 uses
  %i.q = icmp eq i64 %i.p, %.val1.i
  br i1 %i.q, label %.body.i, label %.lr.ph

bb.h:                                             ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.m, %bb.d ]
  %i.s = icmp eq i64 %i.e, %.val1.i
  br i1 %i.s, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.g
  %.sroa.0.1.i.i.i13 = phi i64 [ %i.p, %bb.g ], [ %i.e, %.body.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i13
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(64) %i.t) #50
          to label %bb.g unwind label %bb.i, !noalias !5433

bb.i:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5433
  unreachable

.body.i:                                          ; preds = %bb.g, %.body.i.i.i
  %.val4.i = load i64, ptr %0, align 8, !range !65, !alias.scope !5433, !noundef !62 ; 2 uses
  %i.v = icmp eq i64 %.val4.i, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.j

bb.j:                                             ; preds = %.body.i
  %i.w = shl nuw i64 %.val4.i, 6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5433
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !65, !alias.scope !5433, !noundef !62 ; 2 uses
  %i.x = icmp eq i64 %.val2.i, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i
  %i.y = shl nuw i64 %.val2.i, 6
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5433
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.j, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultNtNtCs4ytUTZt2Gw9_11arrow_array12record_batch11RecordBatchNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, %bb.k
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB3m_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5460)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5460, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !5460, !noundef !62 ; 4 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropB2D_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [136 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 4 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.h = load i8, ptr %i.g, align 8, !range !101, !alias.scope !5461, !noalias !5460, !noundef !62
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 2
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i.i.i.i unwind label %bb.c, !noalias !5460

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5463)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5464, !noalias !5460, !nonnull !62, !noundef !62
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5465
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.d, label %.body.i.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %.body.i.i.i unwind label %bb.f, !noalias !5460

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5467)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !5468, !noalias !5460, !nonnull !62, !noundef !62
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !5469
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_.exit.i.i.i

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_.exit.i.i.i unwind label %bb.i, !noalias !5460

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5460
  unreachable

bb.g:                                             ; preds = %.lr.ph.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_.exit.i.i.i unwind label %bb.i, !noalias !5460

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_.exit.i.i.i: ; preds = %bb.g, %bb.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i.i.i.i
  %i.s = icmp eq i64 %i.e, %.val1.i
  br i1 %i.s, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropB2D_.exit.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %.lr.ph
  %i.t = add nuw nsw i64 %.sroa.0.1.i.i.i21, 1    ; 2 uses
  %i.u = icmp eq i64 %i.t, %.val1.i
  br i1 %i.u, label %.body.i, label %.lr.ph

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.i, %bb.d, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.i, %bb.d ], [ %i.i, %bb.c ]
  %i.w = icmp eq i64 %i.e, %.val1.i
  br i1 %i.w, label %.body.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i, %bb.h
  %.sroa.0.1.i.i.i21 = phi i64 [ %i.t, %bb.h ], [ %i.e, %.body.i.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [136 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i21
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_(ptr noalias noundef align 8 dereferenceable(136) %i.x) #50
          to label %bb.h unwind label %bb.j, !noalias !5460

bb.j:                                             ; preds = %.lr.ph
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5460
  unreachable

.body.i:                                          ; preds = %bb.h, %.body.i.i.i
  %.val4.i = load i64, ptr %0, align 8, !range !65, !alias.scope !5460, !noundef !62 ; 2 uses
  %i.z = icmp eq i64 %.val4.i, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB2X_.exit.i, label %bb.k

bb.k:                                             ; preds = %.body.i
  %i.aa = mul nuw i64 %.val4.i, 136
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5460
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB2X_.exit.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropB2D_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEB2j_.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !65, !alias.scope !5460, !noundef !62 ; 2 uses
  %i.ab = icmp eq i64 %.val2.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB2Q_.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropB2D_.exit.i
  %i.ac = mul nuw i64 %.val2.i, 136
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5460
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB2Q_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB2X_.exit.i: ; preds = %bb.k, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB2Q_.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtCscI6d9CVNmLh_4core6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtB7_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEENtNtNtB1V_3ops4drop4Drop4dropB2D_.exit.i, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropINtNtBI_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = lshr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp eq ptr %.8.val, %.0.val
  br i1 %i.e, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5481)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !5482, !nonnull !62, !noundef !62
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !5483
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d
  br i1 %i.k, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %._crit_edge13.i.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5485)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !5486, !nonnull !62, !noundef !62
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !5487
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.s = icmp eq i64 %i.o, %i.d
  br i1 %i.s, label %._crit_edge13.i.i, label %.lr.ph12.i.i

._crit_edge13.i.i:                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.c
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB4_11InPlaceDropINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionINtNtBI_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEB27_EECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5500)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !5500, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5500, !noundef !62 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !5500, !noundef !62 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.09.i.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5501)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5502)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !5503, !noalias !5500, !nonnull !62, !noundef !62
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !5504
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c, !noalias !5500

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.l = icmp eq i64 %i.h, %i.e
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.h, %i.e
  br i1 %i.n, label %.body.i, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.0.110.i.i ; 2 uses
  %i.p = add nuw nsw i64 %.sroa.0.110.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5506)
  %i.q = load ptr, ptr %i.o, align 8, !alias.scope !5507, !noalias !5500, !nonnull !62, !noundef !62
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !5508
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i unwind label %bb.e, !noalias !5500

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.t = icmp eq i64 %i.p, %i.e
  br i1 %i.t, label %.body.i, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5500
  unreachable

.body.i:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit8.i.i, %bb.c
  %i.v = icmp eq i64 %i.c, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.w = shl nuw i64 %i.c, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5500
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %i.x = icmp eq i64 %i.c, 0
  br i1 %i.x, label %_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB9_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEB1U_ENtNtNtB1n_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i
  %i.y = shl nuw i64 %i.c, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5500
  br label %_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB9_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEB1U_ENtNtNtB1n_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecINtNtB4_6option6OptionINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.m

_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropINtNtCscI6d9CVNmLh_4core6option6OptionINtNtB9_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEB1U_ENtNtNtB1n_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5521)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5521, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !5521, !nonnull !62, !noundef !62 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 5                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522)
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph

.body.i:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5521, !noundef !62 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !5521, !nonnull !62, !noundef !62
  %i.l = shl nuw i64 %i.i, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5521
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i
  %.sroa.0.0.i.i3 = phi i64 [ %i.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i3 ; 4 uses
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5524)
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !5525, !noalias !5521, !noundef !62
  %i.r = load ptr, ptr %i.n, align 8, !alias.scope !5525, !noalias !5521, !nonnull !62, !align !63, !noundef !62
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5526, !nonnull !62, !noundef !62
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !5525, !noalias !5521, !noundef !62
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !5525, !noalias !5521, !noundef !62
  invoke void %i.t(ptr noundef %i.q, ptr noundef %i.v, i64 noundef %i.x)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i unwind label %bb.c, !noalias !5527, !inline_history !5

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i: ; preds = %.lr.ph5
  %i.y = add nuw nsw i64 %.sroa.0.1.i.i4, 1       ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.f
  br i1 %i.z, label %.body.i, label %.lr.ph5

bb.c:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = icmp eq i64 %i.o, %i.f
  br i1 %i.ab, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i
  %.sroa.0.1.i.i4 = phi i64 [ %i.y, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5529)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !5530, !noalias !5521, !noundef !62
  %i.af = load ptr, ptr %i.ac, align 8, !alias.scope !5530, !noalias !5521, !nonnull !62, !align !63, !noundef !62
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !5531, !nonnull !62, !noundef !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !5530, !noalias !5521, !noundef !62
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !5530, !noalias !5521, !noundef !62
  invoke void %i.ah(ptr noundef %i.ae, ptr noundef %i.aj, i64 noundef %i.al)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit7.i.i unwind label %bb.d, !noalias !5527, !inline_history !5

bb.d:                                             ; preds = %.lr.ph5
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !5527
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !5521, !noundef !62 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i
  %i.aq = load ptr, ptr %0, align 8, !alias.scope !5521, !nonnull !62, !noundef !62
  %i.ar = shl nuw i64 %i.ao, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5521
  br label %_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesNtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.aa

_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesECsaSXGKSfiU2E_10lance_file.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1v_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5544)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !5544, !nonnull !62, !noundef !62 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !5544, !nonnull !62, !noundef !62 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i to i64
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5545)
  %i.g = icmp eq ptr %.val1.i, %.val.i
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBI_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [176 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i ; 7 uses
  %i.i = add nuw nsw i64 %.sroa.0.07.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5546)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5547)
  %.val.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !5548, !noalias !5544 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.val1.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !5548, !noalias !5544, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !5549
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5550)
  %.val.i7.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !5551, !noalias !5544 ; 2 uses
  %i.n = icmp eq i64 %.val.i7.i.i.i, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.val1.i8.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !5551, !noalias !5544, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i8.i.i.i, i64 noundef %.val.i7.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !5552
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3raw8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1m_3vec3VechEEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.p), !noalias !5544
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5553)
  %.val.i13.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !5554, !noalias !5544 ; 2 uses
  %i.r = icmp eq i64 %.val.i13.i.i.i, 0
  br i1 %i.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %.val1.i14.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !5554, !noalias !5544, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i14.i.i.i, i64 noundef %.val.i13.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !5555
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i: ; preds = %bb.e, %bb.d
  %i.t = icmp eq i64 %i.i, %i.f
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBI_.exit.i, label %.lr.ph.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBI_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBH_.exit.i.i, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !5544, !noundef !62 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBI_.exit.i
  %i.x = load ptr, ptr %0, align 8, !alias.scope !5544, !nonnull !62, !noundef !62
  %i.y = mul nuw i64 %i.v, 176
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.x, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !5544
  br label %_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_.exit

_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEBI_.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtBI_5types17GenericBinaryTypelEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5616)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !5617, !nonnull !62, !noundef !62
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !5617
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5622)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !5623, !nonnull !62, !noundef !62
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !5623
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit5

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit5 unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.c, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.a, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5626)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5627, !nonnull !62, !noundef !62
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !5627
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutable6BufferECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer6offset12OffsetBufferlEECsaSXGKSfiU2E_10lance_file.exit5: ; preds = %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5628)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5630)
end_hunk_1
begin_hunk_2_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB20_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EEB28_:bb.a

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !7497
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.w, %bb.j ], [ %i.w, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB3m_(ptr noalias noundef align 8 dereferenceable(24) %0) #50
          to label %bb.o unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBG_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2H_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EEEB2P_.exit: ; preds = %_RNvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2e_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypelEE4take0s_00EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2m_.exit.i, %bb.k
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB3m_(ptr noalias noundef align 8 dereferenceable(24) %0)
  ret void

bb.n:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered14FuturesOrderedNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB20_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EEB28_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7519)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7520
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !7520, !nonnull !62 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = phi ptr [ %i.z, %bb.i ], [ %.promoted.i.i, %bb.a ] ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2e_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2m_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7521)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.h = load i64, ptr %i.g, align 8, !noalias !7522, !noundef !62
  %i.i = add i64 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 560 ; 2 uses
  %i.k = load atomic ptr, ptr %i.j monotonic, align 8, !noalias !7522 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 568 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !noalias !7522, !noundef !62 ; 4 uses
  %i.n = load ptr, ptr %i.d, align 8, !noalias !7522, !nonnull !62, !noundef !62
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store atomic ptr %i.o, ptr %i.j monotonic, align 8, !noalias !7522
  store ptr null, ptr %i.l, align 8, !noalias !7522
  %i.p = icmp eq ptr %i.k, null
  br i1 %i.p, label %.thread3.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 568
  store ptr %i.m, ptr %i.q, align 8, !noalias !7522
  %i.r = icmp eq ptr %i.m, null
  br i1 %i.r, label %bb.e, label %.thread.i.i.i

.thread3.i.i.i:                                   ; preds = %bb.c
  %i.s = icmp eq ptr %i.m, null
  br i1 %i.s, label %.thread4.i.i.i, label %.thread.i.i.i

.thread4.i.i.i:                                   ; preds = %.thread3.i.i.i
  store ptr null, ptr %i.b, align 8, !alias.scope !7522
  br label %bb.i

.thread.i.i.i:                                    ; preds = %.thread3.i.i.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 560
  store atomic ptr %i.k, ptr %i.t monotonic, align 8, !noalias !7522
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr %i.k, ptr %i.b, align 8, !alias.scope !7522
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.i.i.i
  %i.u = phi ptr [ %i.e, %.thread.i.i.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 576
  store i64 %i.i, ptr %i.v, align 8, !noalias !7522
  br label %bb.i

bb.g:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = atomicrmw add ptr %i.c, i64 1 monotonic, align 8, !noalias !7520
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.h, label %.body.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %bb.f, %.thread4.i.i.i
  %i.z = phi ptr [ %i.u, %bb.f ], [ null, %.thread4.i.i.i ]
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 -16
  invoke fastcc void @_RNvMs4_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2e_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EE12release_taskB2m_(ptr noundef nonnull %i.aa)
          to label %bb.b unwind label %bb.g, !noalias !7520

.body.i:                                          ; preds = %bb.g
  %i.ab = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !7523
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.j, label %.body

bb.j:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB37_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EEE9drop_slowB3f_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.l

_RNvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2e_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2m_.exit.i: ; preds = %bb.b
  %i.ad = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !7524
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBG_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2H_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EEEB2P_.exit

bb.k:                                             ; preds = %_RNvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2e_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2m_.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB37_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EEE9drop_slowB3f_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBG_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2H_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EEEB2P_.exit unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !7518
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.j, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.w, %bb.j ], [ %i.w, %.body.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB3m_(ptr noalias noundef align 8 dereferenceable(24) %0) #50
          to label %bb.o unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unordered16FuturesUnorderedINtNtBG_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2H_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EEEB2P_.exit: ; preds = %_RNvXs8_NtNtCs9p5Dg9WVwvP_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binaryINtB2e_13BinaryDecoderINtNtCs4ytUTZt2Gw9_11arrow_array5types17GenericStringTypexEE4take0s_00EENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB2m_.exit.i, %bb.k
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc11collections11binary_heap10BinaryHeapINtNtNtCs9p5Dg9WVwvP_12futures_util6stream15futures_ordered12OrderWrapperINtNtB4_6result6ResultTNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanmINtNtBI_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEEEB3m_(ptr noalias noundef align 8 dereferenceable(24) %0)
  ret void

bb.n:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs9p5Dg9WVwvP_12futures_util6stream4iter4IterINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEEB2p_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7530)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7531, !nonnull !62, !noundef !62 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7531, !nonnull !62, !noundef !62 ; 2 uses
  %i.c = ptrtoint ptr %.val1.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 104                 ; 3 uses
  %i.g = icmp eq ptr %.val1.i.i, %.val.i.i
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBM_.exit.i.i, label %.lr.ph

.body.i.i:                                        ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i.i, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7531, !noundef !62 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanNtNtBO_5alloc6GlobalEEB2q_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i
  %i.k = load ptr, ptr %0, align 8, !alias.scope !7531, !nonnull !62, !noundef !62
  %i.l = mul nuw i64 %i.i, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7531
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanNtNtBO_5alloc6GlobalEEB2q_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i: ; preds = %.lr.ph
  %i.m = icmp eq i64 %i.o, %i.f
  br i1 %i.m, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBM_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i
  %.sroa.0.0.i.i.i3 = phi i64 [ %i.o, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i, i64 %.sroa.0.0.i.i.i3
  %i.o = add nuw nsw i64 %.sroa.0.0.i.i.i3, 1     ; 4 uses
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i unwind label %bb.c, !noalias !7531

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i.i: ; preds = %.lr.ph5
  %i.p = add nuw nsw i64 %.sroa.0.1.i.i.i4, 1     ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.f
  br i1 %i.q, label %.body.i.i, label %.lr.ph5

bb.c:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.o, %i.f
  br i1 %i.s, label %.body.i.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i.i
  %.sroa.0.1.i.i.i4 = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i4
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBI_5types10UInt32TypeEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.t)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit7.i.i.i unwind label %bb.d, !noalias !7531

bb.d:                                             ; preds = %.lr.ph5
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !7531
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBM_.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBL_.exit.i.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !7531, !noundef !62 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1z_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBM_.exit.i.i
  %i.y = load ptr, ptr %0, align 8, !alias.scope !7531, !nonnull !62, !noundef !62
  %i.z = mul nuw i64 %i.w, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7531
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1z_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanNtNtBO_5alloc6GlobalEEB2q_.exit.i.i: ; preds = %bb.b, %.body.i.i
  resume { ptr, i32 } %i.r

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEEB1z_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding6binary14TakeChunksPlanEBM_.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEB1D_ENCNvNtNtCsaSXGKSfiU2E_10lance_file6reader10structural24field_id_to_column_index0EEB2G_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7540)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5.i = load i64, ptr %i.a, align 8, !alias.scope !7541, !noundef !62 ; 2 uses
  %i.b = icmp eq i64 %.val5.i, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val4.i = load ptr, ptr %0, align 8, !alias.scope !7540, !nonnull !62, !noundef !62
  %i.c = shl nuw i64 %.val5.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !7542
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEECsaSXGKSfiU2E_10lance_file.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !7541, !noundef !62 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEB19_EECsaSXGKSfiU2E_10lance_file.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEECsaSXGKSfiU2E_10lance_file.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !7540, !nonnull !62, !noundef !62
  %i.g = shl nuw i64 %.val1.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !7543
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEB19_EECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEB19_EECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterlEECsaSXGKSfiU2E_10lance_file.exit.i, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB29_3vec3VechEENCNvXs2_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtB4_7convert7TryFromNtB39_14FieldsWithMetaE8try_from0EEB3b_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7560)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7563)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7564)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !7565, !noundef !62 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_3vec3VechEEE13drop_elementsCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.promoted.i.i.i.i.i = load i16, ptr %i.e, align 8, !alias.scope !7566
  %.promoted5.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7565
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted9.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !7565
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.lcssa11.i.i.i.i.i = phi ptr [ %.promoted9.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa10.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 2 uses
  %i.g = phi i64 [ %i.c, %.preheader.i.i.i.i.i ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ]
  %.lcssa47.i.i.i.i.i = phi ptr [ %.promoted5.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.lcssa46.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 2 uses
  %i.h = phi i16 [ %.promoted.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.q, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7567)
  %.not12.i.i.i.i.i.i = icmp eq i16 %i.h, 0
  br i1 %.not12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !7566
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !7566
  br label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i, %bb.b ] ; 2 uses
  %i.j = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa47.i.i.i.i.i, %bb.b ]
  %.val10.i.i.i.i.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !7566
  %i.k = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -768 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.k to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.b
  %.lcssa10.i.i.i.i.i = phi ptr [ %i.m, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa11.i.i.i.i.i, %bb.b ]
  %.lcssa46.i.i.i.i.i = phi ptr [ %i.l, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa47.i.i.i.i.i, %bb.b ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.h, %bb.b ] ; 3 uses
  %i.n = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.o = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.p = zext nneg i16 %i.o to i64
  %i.q = and i16 %i.n, %.lcssa.i.i.i.i.i.i        ; 2 uses
  store i16 %i.q, ptr %i.e, align 8, !alias.scope !7566
  %i.r = sub nsw i64 0, %i.p
  %i.s = getelementptr inbounds [48 x i8], ptr %.lcssa46.i.i.i.i.i, i64 %i.r ; 4 uses
  %i.t = add i64 %i.g, -1                         ; 3 uses
  store i64 %i.t, ptr %i.b, align 8, !alias.scope !7565
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7569)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !7570, !noalias !7565 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  %i.w = getelementptr inbounds i8, ptr %i.s, i64 -40
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !7570, !noalias !7565, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !7571
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i: ; preds = %bb.c, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBZ_3vec3VechEEE9next_implKb0_ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !7568, !noalias !7565 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i
  %i.z = getelementptr inbounds i8, ptr %i.s, i64 -16
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !7568, !noalias !7565, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !7572
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i
  %.old3.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.old3.i.i.i.i.i, label %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_3vec3VechEEE13drop_elementsCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, label %bb.b

_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_3vec3VechEEE13drop_elementsCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBG_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, %bb.a
  %i.aa = load i64, ptr %0, align 8, !range !76, !alias.scope !7573, !noundef !62 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1B_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_3vec3VechEEE13drop_elementsCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !7573, !noundef !62 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1B_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !7573, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #44, !noalias !7573
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1B_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map8IntoIterNtNtCs40k4W9msRzi_5alloc6string6StringINtNtB1B_3vec3VechEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMso_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_7RawIterTNtNtCs40k4W9msRzi_5alloc6string6StringINtNtBS_3vec3VechEEE13drop_elementsCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7581)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7582)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !7583, !nonnull !62, !noundef !62 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7583, !nonnull !62, !noundef !62
  %i.c = ptrtoint ptr %.val1.i.i.i to i64
  %i.d = ptrtoint ptr %.val.i.i.i to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 216
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBG_(ptr noalias noundef nonnull align 8 %.val.i.i.i, i64 noundef %i.f)
          to label %bb.d unwind label %bb.b, !noalias !7583

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7583, !noundef !62 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeNtNtBO_5alloc6GlobalEEB2k_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %0, align 8, !alias.scope !7583, !nonnull !62, !noundef !62
  %i.l = mul nuw i64 %i.i, 216
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7583
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeNtNtBO_5alloc6GlobalEEB2k_.exit.i.i.i

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !7583, !noundef !62 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEB2d_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %0, align 8, !alias.scope !7583, !nonnull !62, !noundef !62
  %i.q = mul nuw i64 %i.n, 216
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7583
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEB2d_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeNtNtBO_5alloc6GlobalEEB2k_.exit.i.i.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEB2d_.exit: ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtB4_5slice4iter4IterINtNtNtB4_3ops5range5RangeyEEINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtB27_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7591)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7592, !nonnull !62, !noundef !62 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7592, !nonnull !62, !noundef !62 ; 2 uses
  %i.d = ptrtoint ptr %.val1.i.i to i64
  %i.e = ptrtoint ptr %.val.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp eq ptr %.val1.i.i, %.val.i.i
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph

.body.i.i:                                        ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !7592, !noundef !62 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !7592, !nonnull !62, !noundef !62
  %i.m = mul nuw i64 %i.j, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7592
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i.i

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.g
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i.i.i3 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.0.i.i.i3
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i3, 1     ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !7592

bb.d:                                             ; preds = %.lr.ph5
  %i.q = add nuw nsw i64 %.sroa.0.1.i.i.i4, 1     ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %.body.i.i, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.g
  br i1 %i.t, label %.body.i.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i4 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %.sroa.0.1.i.i.i4
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.u) #50
          to label %bb.d unwind label %bb.f, !noalias !7592

bb.f:                                             ; preds = %.lr.ph5
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !7593
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !7592, !noundef !62 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.z = load ptr, ptr %i.a, align 8, !alias.scope !7592, !nonnull !62, !noundef !62
  %i.aa = mul nuw i64 %i.x, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7592
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtBK_8IntoIterppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtBM_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtBO_5alloc6GlobalEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.b, %.body.i.i
  resume { ptr, i32 } %i.s

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtBG_3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEIB1a_jEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val3 = load i64, ptr %i.b, align 8, !alias.scope !7600, !noundef !62 ; 2 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !62, !noundef !62
  %i.e = shl nuw i64 %.val3, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7601
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1 = load i64, ptr %i.f, align 8, !alias.scope !7600, !noundef !62 ; 2 uses
  %i.g = icmp eq i64 %.val1, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.h, align 8, !nonnull !62, !noundef !62
  %i.i = shl nuw i64 %.val1, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7602
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %bb.d, %bb.e
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEIB1a_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !alias.scope !7607, !noundef !62 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !62, !noundef !62
  %i.c = shl nuw i64 %.val1, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7608
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(32) %i.d)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldENCNvXs0_NtB3d_9datatypesNtB42_6FieldsINtNtB4_7convert4FromRB1H_E4from0EEB3d_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !7615, !noundef !62
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEEB1R_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1v_(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %0)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEEB1R_.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEEB1R_.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !7616, !noundef !62
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENCNvXs0_NtCsaSXGKSfiU2E_10lance_file9datatypesNtB35_6FieldsINtNtB4_7convert4FromRB24_E4from0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtB37_6format2pb5FieldEEEB37_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEEB1R_.exit.i
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEB1v_(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENCNvXs0_NtCsaSXGKSfiU2E_10lance_file9datatypesNtB35_6FieldsINtNtB4_7convert4FromRB24_E4from0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtB37_6format2pb5FieldEEEB37_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten13FlattenCompatINtNtBG_3map3MapINtNtNtB4_5slice4iter4IterNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENCNvXs0_NtCsaSXGKSfiU2E_10lance_file9datatypesNtB35_6FieldsINtNtB4_7convert4FromRB24_E4from0EINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtB37_6format2pb5FieldEEEB37_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCsaSXGKSfiU2E_10lance_file6format2pb5FieldEEEB1R_.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEINtNtNtBK_3vec9into_iter8IntoIterTlB1Y_EEEEB31_(ptr noalias noundef nonnull align 8 dereferenceable(392) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7625)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7627)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !7628, !nonnull !62, !noundef !62 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.val1.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7628, !nonnull !62, !noundef !62 ; 2 uses
  %i.d = ptrtoint ptr %.val1.i.i.i to i64
  %i.e = ptrtoint ptr %.val.i.i.i to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 360                 ; 3 uses
  %i.h = icmp eq ptr %.val1.i.i.i, %.val.i.i.i
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1H_.exit.i.i.i, label %.lr.ph

.body.i.i.i:                                      ; preds = %bb.e, %.body.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !7628, !noundef !62 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.body.i, label %bb.b

bb.b:                                             ; preds = %.body.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !7628, !nonnull !62, !noundef !62
  %i.m = mul nuw i64 %i.j, 360
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7628
  br label %.body.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i.i.i
  %i.n = icmp eq i64 %i.p, %i.g
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1H_.exit.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i15 = phi i64 [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [360 x i8], ptr %.val.i.i.i, i64 %.sroa.0.0.i.i.i.i15 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i.i.i15, 1  ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.q)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i.i.i unwind label %bb.c, !noalias !7628

bb.c:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.s) #50
          to label %.body.i.i.i.i unwind label %bb.d, !noalias !7628

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !7628
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.u)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i unwind label %bb.f, !noalias !7628

bb.e:                                             ; preds = %.lr.ph17
  %i.v = add nuw nsw i64 %.sroa.0.1.i.i.i.i16, 1  ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.g
  br i1 %i.w, label %.body.i.i.i, label %.lr.ph17

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.r, %bb.c ]
  %i.y = icmp eq i64 %i.p, %i.g
  br i1 %i.y, label %.body.i.i.i, label %.lr.ph17

.lr.ph17:                                         ; preds = %.body.i.i.i.i, %bb.e
  %.sroa.0.1.i.i.i.i16 = phi i64 [ %i.v, %bb.e ], [ %i.p, %.body.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [360 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_(ptr noalias noundef align 8 dereferenceable(360) %i.z) #50
          to label %bb.e unwind label %bb.g, !noalias !7628

bb.g:                                             ; preds = %.lr.ph17
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !7628
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1H_.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !7628, !noundef !62 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2u_.exit.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1H_.exit.i.i.i
  %i.ae = load ptr, ptr %i.a, align 8, !alias.scope !7628, !nonnull !62, !noundef !62
  %i.af = mul nuw i64 %i.ac, 360
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !7628
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2u_.exit.i

.body.i:                                          ; preds = %bb.b, %.body.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_TlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEEB26_(ptr noalias noundef nonnull align 8 dereferenceable(392) %0) #50
          to label %common.resume.i unwind label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2u_.exit.i: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1H_.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !range !93, !alias.scope !7629, !noundef !62
  %switch.i.i = icmp ugt i64 %i.ah, -3
  br i1 %switch.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEEB3c_.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2u_.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ag)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.aj) #50
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume.i:                                  ; preds = %bb.j, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %eh.lpad-body.i.i.i.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i: ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.al)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEEB3c_.exit

bb.l:                                             ; preds = %.body.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEEB3c_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEEB2u_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEEB1G_.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplINtNtBK_3vec3VecmEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7636)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7636
  %.sroa.06.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !7636 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.06.0.copyload.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !7636
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload.i = load i64, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !7636 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !7636
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !7636
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !7636
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !7636
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !7636
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !7636
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.58.0.copyload.sink.i = phi i64 [ %.sroa.58.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31.i, ptr %i.b, align 8, !noalias !7636
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i, ptr %i.c, align 8, !noalias !7636
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i, ptr %i.d, align 8, !noalias !7636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7637
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterlINtNtBb_3vec3VecmEE10dying_nextCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !7636
  %i.e = load ptr, ptr %i.a, align 8, !noalias !7637, !noundef !62 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i, label %_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMaplINtNtB8_3vec3VecmEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

bb.d:                                             ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyinglINtNtBb_3vec3VecmENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.lr.ph.i.i.i
  %i.f = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.l, %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyinglINtNtBb_3vec3VecmENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  %.sroa.43.0.copyload.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8, !noalias !7637
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.43.0.copyload.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !7637 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.i, label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyinglINtNtBb_3vec3VecmENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsaSXGKSfiU2E_10lance_file.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !noalias !7637, !nonnull !62, !noundef !62
  %i.k = shl nuw i64 %.val.i.i.i.i.i.i, 2
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !7637
  br label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyinglINtNtBb_3vec3VecmENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyinglINtNtBb_3vec3VecmENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7637
  call fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterlINtNtBb_3vec3VecmEE10dying_nextCsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b), !noalias !7636
  %i.l = load ptr, ptr %i.a, align 8, !noalias !7637, !noundef !62 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMaplINtNtB8_3vec3VecmEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit, label %bb.d

_RNvXNtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB2_8BTreeMaplINtNtB8_3vec3VecmEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyinglINtNtBb_3vec3VecmENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7636
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7644
  %.sroa.06.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !7644 ; 3 uses
  %.not.i = icmp eq ptr %.sroa.06.0.copyload.i, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload.i = load i64, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !7644
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload.i = load i64, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !7644 ; 2 uses
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !7644
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !7644
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !7644
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !7644
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !7644
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i, align 8, !noalias !7644
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.sroa.58.0.copyload.sink.i = phi i64 [ %.sroa.58.0.copyload.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink31.i, ptr %i.b, align 8, !noalias !7644
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i, ptr %i.c, align 8, !noalias !7644
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i, ptr %i.d, align 8, !noalias !7644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7645
end_hunk_2
begin_hunk_3_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io9scheduler11IoQueueTypeECsaSXGKSfiU2E_10lance_file:bb.a

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13FileSchedulerECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9523)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !9524, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !9524
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9525)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9526)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9527, !nonnull !62, !noundef !62
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !9527
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerE9drop_slowCsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.k

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9528)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9529)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !9530, !nonnull !62, !noundef !62
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !9530
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit4

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsaSXGKSfiU2E_10lance_file.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerE9drop_slowCsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit4 unwind label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.c, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9531)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !9531, !noundef !62 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit
  %i.p = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !9532
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_E9drop_slowCsjjbR6Jfsbqw_8lance_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCsjjbR6Jfsbqw_8lance_io6traits6ReaderEL_EECsaSXGKSfiU2E_10lance_file.exit, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9533)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !9533, !noundef !62 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit6, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit4
  %i.v = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !9534
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit6

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_E9drop_slowCsjjbR6Jfsbqw_8lance_io(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit6: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit4, %bb.i, %bb.j
  ret void

bb.k:                                             ; preds = %bb.g, %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtNtCs63DIHKhvmTb_10lance_core5utils8io_stats15IoStatsRecorderEL_EEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler13ScanSchedulerEECsaSXGKSfiU2E_10lance_file.exit, %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjbR6Jfsbqw_8lance_io9scheduler8ResponseECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsg_NtCsjjbR6Jfsbqw_8lance_io9schedulerNtB5_8ResponseNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 16 dereferenceable(96) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(56) %i.b) #50
          to label %bb.f unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 16, !range !94, !alias.scope !9545, !noundef !62
  switch i8 %i.d, label %bb.e [
    i8 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit
    i8 -1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.h, %bb.b
  %.pn = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.a, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9547)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !9548, !nonnull !62, !noundef !62
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !9548
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueEECsaSXGKSfiU2E_10lance_file.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.j

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9549)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !9551, !nonnull !62, !noundef !62
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !9551
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueEECsaSXGKSfiU2E_10lance_file.exit4

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueEECsaSXGKSfiU2E_10lance_file.exit4

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueEECsaSXGKSfiU2E_10lance_file.exit4: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEEECsaSXGKSfiU2E_10lance_file.exit, %bb.i
  ret void

bb.j:                                             ; preds = %bb.g, %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjbR6Jfsbqw_8lance_io9scheduler7IoQueueEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9554)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load ptr, ptr %i.b, align 8, !alias.scope !9554, !nonnull !62, !noundef !62 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load i64, ptr %i.c, align 8, !alias.scope !9554, !noundef !62 ; 4 uses
  %i.d = icmp eq i64 %.val1.i, 0
  br i1 %i.d, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %.val1.i
  br i1 %i.e, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i1 = phi i64 [ %i.g, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.0.0.i.i.i1
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i.i1, 1     ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(80) %i.f)
          to label %bb.b unwind label %bb.d, !noalias !9554

bb.c:                                             ; preds = %.lr.ph3
  %i.h = add nuw nsw i64 %.sroa.0.1.i.i.i2, 1     ; 2 uses
  %i.i = icmp eq i64 %i.h, %.val1.i
  br i1 %i.i, label %.body.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.g, %.val1.i
  br i1 %i.k, label %.body.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i.i2 = phi i64 [ %i.h, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.0.1.i.i.i2
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(80) %i.l) #50
          to label %bb.c unwind label %bb.e, !noalias !9554

bb.e:                                             ; preds = %.lr.ph3
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !9554
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %.val4.i = load i64, ptr %i.a, align 8, !range !65, !alias.scope !9554, !noundef !62 ; 2 uses
  %i.n = icmp eq i64 %.val4.i, 0
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.o = mul nuw i64 %.val4.i, 80
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9554
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEECsaSXGKSfiU2E_10lance_file.exit.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.b, %bb.a
  %.val2.i = load i64, ptr %i.a, align 8, !range !65, !alias.scope !9554, !noundef !62 ; 2 uses
  %i.p = icmp eq i64 %.val2.i, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEECsaSXGKSfiU2E_10lance_file.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i
  %i.q = mul nuw i64 %.val2.i, 80
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9554
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i8, ptr %i.a, align 8, !range !84, !noundef !62 ; 2 uses
  %i.c = icmp samesign ugt i8 %i.b, 1
  %i.d = zext nneg i8 %i.b to i64
  %i.e = add nsw i64 %i.d, -1
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9606)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !9607, !noundef !62 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !9608
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9611)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !9612, !nonnull !62, !noundef !62
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !9612
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSxEECsaSXGKSfiU2E_10lance_file.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSxE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSxEECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9613)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !9614, !noundef !62 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !9615
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEECsaSXGKSfiU2E_10lance_file.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSxEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9616)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !9617, !noundef !62 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSxEECsaSXGKSfiU2E_10lance_file.exit.i
  %i.w = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !9618
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit

bb.j:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7boolean13BooleanBufferEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  resume { ptr, i32 } %i.n

bb.k:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9620)
  %i.z = load ptr, ptr %0, align 8, !alias.scope !9621, !noundef !62 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !9622
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit.sink.split: ; preds = %bb.l, %bb.i, %bb.c
  %.sink = phi ptr [ %i.t, %bb.i ], [ %0, %bb.c ], [ %0, %bb.l ]
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sink)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef7FslDescECsaSXGKSfiU2E_10lance_file.exit.sink.split, %bb.l, %bb.k, %bb.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSxEECsaSXGKSfiU2E_10lance_file.exit.i, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder22SchedulerDecoderConfigECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9644)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !9645, !nonnull !62, !noundef !62
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !9645
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderPluginsEECsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderPluginsE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderPluginsEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9647)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !9648, !nonnull !62, !noundef !62
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !9648
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderPluginsEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9650)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !9651, !nonnull !62, !noundef !62
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !9651
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit4

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder14DecoderPluginsEECsaSXGKSfiU2E_10lance_file.exit
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_E9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit4 unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtCsjjpCCFGI3ul_14lance_encoding11EncodingsIoEL_EECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.c, %bb.d, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.e, %bb.d ], [ %i.e, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9652)
end_hunk_3
begin_hunk_4_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !10048, !nonnull !62, !noundef !62
  %i.c = shl nuw i64 %.val.i.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !10048
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsaSXGKSfiU2E_10lance_file.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !range !76, !alias.scope !10049, !noundef !62
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsaSXGKSfiU2E_10lance_file.exit3.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsaSXGKSfiU2E_10lance_file.exit.i
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsaSXGKSfiU2E_10lance_file.exit3.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #50
          to label %.body unwind label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsaSXGKSfiU2E_10lance_file.exit3.i: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecxEECsaSXGKSfiU2E_10lance_file.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsaSXGKSfiU2E_10lance_file.exit3.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.g, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val9 = load ptr, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val10 = load ptr, ptr %i.m, align 8, !nonnull !62, !align !63, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file(ptr %.val9, ptr nonnull %.val10) #50
          to label %.body11 unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4YAKbnGhBJc_12arrow_buffer7builder4null17NullBufferBuilderECsaSXGKSfiU2E_10lance_file.exit3.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val7 = load ptr, ptr %i.n, align 8            ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val8 = load ptr, ptr %i.o, align 8, !nonnull !62, !align !63, !noundef !62 ; 5 uses
  %i.p = load ptr, ptr %.val8, align 8, !invariant.load !62 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  invoke void %i.p(ptr noundef nonnull %.val7)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types9Int64TypeEECsaSXGKSfiU2E_10lance_file.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !92, !invariant.load !62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) %i.u) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.body11, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !92, !invariant.load !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) %i.aa) #44
  br label %.body11

.body11:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.i, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.i ], [ %i.v, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val5 = load ptr, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val6 = load ptr, ptr %i.ac, align 8, !nonnull !62, !align !63, !noundef !62
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file(ptr %.val5, ptr nonnull %.val6) #50
          to label %.body17 unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val = load ptr, ptr %i.ad, align 8            ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val4 = load ptr, ptr %i.ae, align 8, !nonnull !62, !align !63, !noundef !62 ; 5 uses
  %i.af = load ptr, ptr %.val4, align 8, !invariant.load !62 ; 2 uses
  %.not.i13 = icmp eq ptr %i.af, null
  br i1 %.not.i13, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.af(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit19, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i16

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i16: ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !range !92, !invariant.load !62
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) %i.ak) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit19

bb.l:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !65, !invariant.load !62 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %.body17, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14: ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !92, !invariant.load !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) %i.aq) #44
  br label %.body17

.body17:                                          ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14, %bb.l, %.body11
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body11 ], [ %i.al, %bb.l ], [ %i.al, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i14 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar) #50
          to label %bb.n unwind label %bb.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtCs4ytUTZt2Gw9_11arrow_array7builder12ArrayBuilderEL_EECsaSXGKSfiU2E_10lance_file.exit19: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i16, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
  ret void

bb.m:                                             ; preds = %.body, %.body11, %.body17
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.n:                                             ; preds = %.body17
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1R_4SendEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10052)
  %.val.i = load i64, ptr %0, align 8, !alias.scope !10052 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !10052, !nonnull !62, !noundef !62
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !10052
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 67818912035696881) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.b = icmp eq i64 %i.d, %1
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.07 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.0.07
  %i.d = add nuw nsw i64 %.sroa.0.07, 1           ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.c)
          to label %bb.b unwind label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.c:                                             ; preds = %.lr.ph10
  %i.e = add nuw nsw i64 %.sroa.0.18, 1           ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.d:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.d, %1
  br i1 %i.h, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.c
  %.sroa.0.18 = phi i64 [ %i.e, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [136 x i8], ptr %0, i64 %.sroa.0.18
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs56ggtDZRYpd_10arrow_data4data9ArrayDataECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(136) %i.i) #50
          to label %bb.c unwind label %bb.e

._crit_edge11:                                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.g

bb.e:                                             ; preds = %.lr.ph10
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBG_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 42700796466920259) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_.exit
  %.sroa.0.08 = phi i64 [ %i.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.0.08 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.08, 1           ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(216) %i.b)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.val2.i = load i64, ptr %i.e, align 8, !alias.scope !10055 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !10055, !nonnull !62, !noundef !62
  %i.h = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %.body

bb.d:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.val.i = load i64, ptr %i.i, align 8, !alias.scope !10055 ; 2 uses
  %i.j = icmp eq i64 %.val.i, 0
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !10055, !nonnull !62, !noundef !62
  %i.l = shl nuw i64 %.val.i, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_.exit: ; preds = %bb.d, %bb.e
  %i.m = icmp eq i64 %i.c, %1
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_.exit, %bb.a
  ret void

bb.f:                                             ; preds = %.lr.ph20
  %i.n = add nuw nsw i64 %.sroa.0.119, 1          ; 2 uses
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %._crit_edge21, label %.lr.ph20

.body:                                            ; preds = %bb.b, %bb.c
  %i.p = icmp eq i64 %i.c, %1
  br i1 %i.p, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %.body, %bb.f
  %.sroa.0.119 = phi i64 [ %i.n, %bb.f ], [ %i.c, %.body ] ; 2 uses
  %i.q = getelementptr inbounds nuw [216 x i8], ptr %0, i64 %.sroa.0.119
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEBF_(ptr noalias noundef align 8 dereferenceable(216) %i.q) #50
          to label %bb.f unwind label %bb.g

._crit_edge21:                                    ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.d

bb.g:                                             ; preds = %.lr.ph20
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 37191016277640226) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.010 = phi i64 [ %i.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file.exit ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [248 x i8], ptr %0, i64 %.sroa.0.010 ; 5 uses
  %i.c = add nuw nsw i64 %.sroa.0.010, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10068)
  %i.d = load i64, ptr %i.b, align 8, !range !117, !alias.scope !10069, !noundef !62
  %i.e = icmp eq i64 %i.d, -4
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12PageEncodingECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format4pb2110PageLayoutECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(248) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12PageEncodingECsaSXGKSfiU2E_10lance_file.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10070)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10071)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !10072, !nonnull !62, !noundef !62
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !10072
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %.body unwind label %bb.g

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12PageEncodingECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10074)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !10075, !nonnull !62, !noundef !62
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !10075
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file.exit

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12PageEncodingECsaSXGKSfiU2E_10lance_file.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcSTyyEE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder12PageEncodingECsaSXGKSfiU2E_10lance_file.exit.i
  %i.q = icmp eq i64 %i.c, %1
  br i1 %i.q, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file.exit, %bb.a
  ret void

bb.h:                                             ; preds = %.lr.ph28
  %i.r = add nuw nsw i64 %.sroa.0.127, 1          ; 2 uses
  %i.s = icmp eq i64 %i.r, %1
  br i1 %i.s, label %._crit_edge29, label %.lr.ph28

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.g, %bb.e ], [ %i.g, %bb.d ]
  %i.u = icmp eq i64 %i.c, %1
  br i1 %i.u, label %._crit_edge29, label %.lr.ph28

.lr.ph28:                                         ; preds = %.body, %bb.h
  %.sroa.0.127 = phi i64 [ %i.r, %bb.h ], [ %i.c, %.body ] ; 2 uses
  %i.v = getelementptr inbounds nuw [248 x i8], ptr %0, i64 %.sroa.0.127
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding7decoder8PageInfoECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(248) %i.v) #50
          to label %bb.h unwind label %bb.j

._crit_edge29:                                    ; preds = %bb.h, %.body
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.lr.ph28
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc3vec3VecyEBC_EECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.val4 = load i64, ptr %0, align 8              ; 2 uses
  %i.a = icmp eq i64 %.val4, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !nonnull !62, !noundef !62
  %i.c = shl nuw i64 %.val4, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.d, align 8             ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit7, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !62, !noundef !62
  %i.g = shl nuw i64 %.val, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit7

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit7: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsaSXGKSfiU2E_10lance_file.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEIBD_DNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10089)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10090, !nonnull !62, !noundef !62
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !10090
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10091)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10092)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !10093, !nonnull !62, !noundef !62
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !10093
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10094)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10095)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10096, !nonnull !62, !noundef !62
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !10096
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit2

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit
  fence acquire
  tail call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit2: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECsaSXGKSfiU2E_10lance_file.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEEB1E_(ptr noalias noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.b) #50
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer10statistics17StatisticsBuilderEBL_(ptr noalias noundef align 8 dereferenceable(160) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTaINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueEEECsaSXGKSfiU2E_10lance_file(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10099)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !10099, !nonnull !62, !noundef !62 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 16 dereferenceable(64) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.b, !noalias !10099, !inline_history !10100

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #44, !noalias !10099
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCs2bHstFFhpHt_17datafusion_common6scalar11ScalarValueEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #44, !noalias !10099
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTlINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v110page_table8PageInfoEEEB1L_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10110)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10111
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.c, align 8, !alias.scope !10111 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !10111
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.47.0.copyload.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !10111 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !10111
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10111
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10111
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !10111
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10111
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !10111
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink31.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ] ; 2 uses
end_hunk_4
begin_hunk_5_@_RINvXs3q_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB7_13ArrayEncodingNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file:bb.a
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEE6map_orjNCNvXs2G_B1k_NtB1k_31PackedStructFixedWidthMiniBlockNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEE6map_orjNCNvXs2G_B1k_NtB1k_31PackedStructFixedWidthMiniBlockNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit.i.i.i55, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i50
  %.sroa.02.0.i.i.i.i57 = phi i64 [ %i.aji, %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit.i.i.i55 ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i50 ]
  %i.ajj = getelementptr inbounds nuw i8, ptr %.val.i52, i64 8 ; 2 uses
  %i.ajk = load ptr, ptr %i.ajj, align 8, !alias.scope !21307, !noalias !21308, !nonnull !62, !noundef !62 ; 3 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.val.i52, i64 16 ; 2 uses
  %i.ajm = load i64, ptr %i.ajl, align 8, !alias.scope !21307, !noalias !21308, !noundef !62 ; 5 uses
  %i.ajn = icmp eq i64 %i.ajm, 0
  br i1 %i.ajn, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb31PackedStructFixedWidthMiniBlockEINtNtBT_3vec3VechEECsaSXGKSfiU2E_10lance_file.exit, label %.preheader.i.i.i.i.preheader

.preheader.i.i.i.i.preheader:                     ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEE6map_orjNCNvXs2G_B1k_NtB1k_31PackedStructFixedWidthMiniBlockNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %xtraiter = and i64 %i.ajm, 1
  %i.ajo = icmp eq i64 %i.ajm, 1
  br i1 %i.ajo, label %.preheader.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.preheader.new

.preheader.i.i.i.i.preheader.new:                 ; preds = %.preheader.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ajm, -2
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i.preheader.new
  %.sroa.04.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.aki, %.preheader.i.i.i.i ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %i.akh, %.preheader.i.i.i.i ]
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i ]
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %.sroa.04.0.i.i.i.i.i
  %.val.i.i.i.i.i = load i32, ptr %i.ajp, align 4, !alias.scope !21310, !noalias !21309, !noundef !62
  %i.ajq = or i32 %.val.i.i.i.i.i, 1
  %i.ajr = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ajq, i1 true)
  %i.ajs = xor i32 %i.ajr, 31
  %i.ajt = mul nuw nsw i32 %i.ajs, 9
  %i.aju = add nuw nsw i32 %i.ajt, 73
  %i.ajv = lshr i32 %i.aju, 6
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = add i64 %.sroa.02.0.i.i.i.i.i, %i.ajw
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %.sroa.04.0.i.i.i.i.i
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 4
  %.val.i.i.i.i.i.1 = load i32, ptr %i.ajz, align 4, !alias.scope !21310, !noalias !21309, !noundef !62
  %i.aka = or i32 %.val.i.i.i.i.i.1, 1
  %i.akb = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.aka, i1 true)
  %i.akc = xor i32 %i.akb, 31
  %i.akd = mul nuw nsw i32 %i.akc, 9
  %i.ake = add nuw nsw i32 %i.akd, 73
  %i.akf = lshr i32 %i.ake, 6
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = add i64 %i.ajx, %i.akg                 ; 3 uses
  %i.aki = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i, label %.preheader.i.i.i.i.epil.preheader

.preheader.i.i.i.i.epil.preheader:                ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.preheader
  %.sroa.04.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.aki, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.preheader ], [ %i.akh, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.unr-lcssa ]
  %lcmp.mod495 = trunc i64 %i.ajm to i1
  tail call void @llvm.assume(i1 %lcmp.mod495)
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.ajk, i64 %.sroa.04.0.i.i.i.i.i.epil.init
  %.val.i.i.i.i.i.epil = load i32, ptr %i.akj, align 4, !alias.scope !21310, !noalias !21309, !noundef !62
  %i.akk = or i32 %.val.i.i.i.i.i.epil, 1
  %i.akl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.akk, i1 true)
  %i.akm = xor i32 %i.akl, 31
  %i.akn = mul nuw nsw i32 %i.akm, 9
  %i.ako = add nuw nsw i32 %i.akn, 73
  %i.akp = lshr i32 %i.ako, 6
  %i.akq = zext nneg i32 %i.akp to i64
  %i.akr = add i64 %.sroa.02.0.i.i.i.i.i.epil.init, %i.akq
  br label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i: ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i.epil.preheader
  %.lcssa493 = phi i64 [ %i.akh, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.unr-lcssa ], [ %i.akr, %.preheader.i.i.i.i.epil.preheader ] ; 2 uses
  %i.aks = or i64 %.lcssa493, 1
  %i.akt = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.aks, i1 true)
  %i.aku = xor i64 %i.akt, 63
  %i.akv = mul nuw nsw i64 %i.aku, 9
  %i.akw = add nuw nsw i64 %i.akv, 73
  %i.akx = lshr i64 %i.akw, 6
  %i.aky = add i64 %.lcssa493, 1
  %i.akz = add i64 %i.aky, %i.akx
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb31PackedStructFixedWidthMiniBlockEINtNtBT_3vec3VechEECsaSXGKSfiU2E_10lance_file.exit

_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb31PackedStructFixedWidthMiniBlockEINtNtBT_3vec3VechEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEE6map_orjNCNvXs2G_B1k_NtB1k_31PackedStructFixedWidthMiniBlockNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.akz, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtBY_8adapters3map8map_foldRmjjNCNvNtNtCskAO0uQb8M5a_5prost8encoding6uint3218encoded_len_packed0NCINvXsK_NtBW_5accumjNtB3r_3Sum3sumINtB1I_3MapBF_B2f_EE0E0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingEE6map_orjNCNvXs2G_B1k_NtB1k_31PackedStructFixedWidthMiniBlockNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len0ECsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  %i.ala = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i.i.i.i57
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %i.ala, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21287, !inline_history !20351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21312)
  %i.alb = load ptr, ptr %i.aix, align 8, !alias.scope !21311, !noalias !21313, !align !63, !noundef !62 ; 4 uses
  %.not.i281 = icmp eq ptr %i.alb, null
  br i1 %.not.i281, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb31PackedStructFixedWidthMiniBlockEINtNtBT_3vec3VechEECsaSXGKSfiU2E_10lance_file.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21314), !noalias !21315
  %.pre18.i.i282 = load i64, ptr %i.aij, align 8, !alias.scope !21316, !noalias !21317 ; 3 uses
  %.pre28.i.i283 = load i64, ptr %1, align 8, !range !65, !alias.scope !21316, !noalias !21317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21318), !noalias !21319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21320), !noalias !21319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21321), !noalias !21319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21322), !noalias !21319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21323), !noalias !21319
  %i.alc = icmp eq i64 %.pre28.i.i283, %.pre18.i.i282
  br i1 %i.alc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i297, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i284, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i297: ; preds = %bb.fe
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i282, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !21324, !inline_history !20390
  %i.ald = load i64, ptr %i.aij, align 8, !alias.scope !21325, !noalias !21324, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i284

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i284: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i297, %bb.fe
  %.sink1.i6.i.i285 = phi i64 [ %i.ald, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i297 ], [ %.pre18.i.i282, %bb.fe ] ; 3 uses
  %i.ale = icmp sgt i64 %.sink1.i6.i.i285, -1
  tail call void @llvm.assume(i1 %i.ale), !noalias !21319
  %i.alf = load ptr, ptr %i.aik, align 8, !alias.scope !21325, !noalias !21324, !nonnull !62, !noundef !62
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 %.sink1.i6.i.i285
  store i8 10, ptr %i.alg, align 1, !noalias !21326
  %i.alh = add nuw i64 %.sink1.i6.i.i285, 1
  store i64 %i.alh, ptr %i.aij, align 8, !alias.scope !21325, !noalias !21324
  %i.ali = load i64, ptr %i.alb, align 8, !range !74, !noalias !21327, !noundef !62
  %.not.i.i.i287 = icmp eq i64 %i.ali, -2
  br i1 %.not.i.i.i287, label %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit.i288, label %bb.ff

bb.ff:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i284
  %i.alj = tail call fastcc noundef i64 @_RNvYNvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB8_13ArrayEncoding11encoded_lenINtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRB18_EE9call_onceCsaSXGKSfiU2E_10lance_file(ptr noundef nonnull readonly align 8 %i.alb), !noalias !21327, !inline_history !20392
  br label %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit.i288

_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit.i288: ; preds = %bb.ff, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i284
  %.sroa.02.0.i.i.i.i289 = phi i64 [ %i.alj, %bb.ff ], [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i284 ]
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %.sroa.02.0.i.i.i.i289, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21317, !inline_history !20393
  tail call fastcc void @_RINvXs3q_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB7_13ArrayEncodingNtNtCskAO0uQb8M5a_5prost7message7Message10encode_rawINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(ptr noundef nonnull align 8 %i.alb, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21328, !inline_history !20396
  br label %bb.fg

bb.fg:                                            ; preds = %_RNvXNtCskAO0uQb8M5a_5prost7messageINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingENtB2_7Message11encoded_lenCsaSXGKSfiU2E_10lance_file.exit.i288, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding7message6encodeINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb31PackedStructFixedWidthMiniBlockEINtNtBT_3vec3VechEECsaSXGKSfiU2E_10lance_file.exit
  %i.alk = load ptr, ptr %i.ajj, align 8, !alias.scope !21311, !noalias !21313, !nonnull !62, !noundef !62 ; 5 uses
  %i.all = load i64, ptr %i.ajl, align 8, !alias.scope !21311, !noalias !21313, !noundef !62 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21329), !noalias !21315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21330), !noalias !21315
  %i.alm = icmp eq i64 %i.all, 0
  br i1 %i.alm, label %_RINvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB6_13ArrayEncoding6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21331), !noalias !21315
  %.pre18.i.i.i290 = load i64, ptr %i.aij, align 8, !alias.scope !21332, !noalias !21333 ; 3 uses
  %.pre28.i.i.i291 = load i64, ptr %1, align 8, !range !65, !alias.scope !21332, !noalias !21333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21334), !noalias !21315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21335), !noalias !21315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21336), !noalias !21315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21337), !noalias !21315
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21338), !noalias !21315
  %i.aln = icmp eq i64 %.pre28.i.i.i291, %.pre18.i.i.i290
  br i1 %i.aln, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i296, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i296: ; preds = %bb.fh
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i290, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !21339, !inline_history !20390
  %i.alo = load i64, ptr %i.aij, align 8, !alias.scope !21340, !noalias !21339, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i296, %bb.fh
  %.sink1.i6.i.i.i293 = phi i64 [ %i.alo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i296 ], [ %.pre18.i.i.i290, %bb.fh ] ; 3 uses
  %i.alp = icmp sgt i64 %.sink1.i6.i.i.i293, -1
  tail call void @llvm.assume(i1 %i.alp), !noalias !21315
  %i.alq = load ptr, ptr %i.aik, align 8, !alias.scope !21340, !noalias !21339, !nonnull !62, !noundef !62
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alq, i64 %.sink1.i6.i.i.i293
  store i8 18, ptr %i.alr, align 1, !noalias !21341
  %i.als = add nuw i64 %.sink1.i6.i.i.i293, 1
  store i64 %i.als, ptr %i.aij, align 8, !alias.scope !21340, !noalias !21339
  %xtraiter496 = and i64 %i.all, 1
  %i.alt = icmp eq i64 %i.all, 1
  br i1 %i.alt, label %.epil.preheader, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292.new

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292.new: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292
  %unroll_iter500 = and i64 %i.all, -2
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fi, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292.new
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292.new ], [ %i.amn, %bb.fi ] ; 3 uses
  %.sroa.02.0.i.i.i294 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292.new ], [ %i.amm, %bb.fi ]
  %niter501 = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292.new ], [ %niter501.next.1, %bb.fi ]
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %.sroa.04.0.i.i.i
  %.val.i.i.i295 = load i32, ptr %i.alu, align 4, !alias.scope !21329, !noalias !21342, !noundef !62
  %i.alv = or i32 %.val.i.i.i295, 1
  %i.alw = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.alv, i1 true)
  %i.alx = xor i32 %i.alw, 31
  %i.aly = mul nuw nsw i32 %i.alx, 9
  %i.alz = add nuw nsw i32 %i.aly, 73
  %i.ama = lshr i32 %i.alz, 6
  %i.amb = zext nneg i32 %i.ama to i64
  %i.amc = add i64 %.sroa.02.0.i.i.i294, %i.amb
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %.sroa.04.0.i.i.i
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 4
  %.val.i.i.i295.1 = load i32, ptr %i.ame, align 4, !alias.scope !21329, !noalias !21342, !noundef !62
  %i.amf = or i32 %.val.i.i.i295.1, 1
  %i.amg = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.amf, i1 true)
  %i.amh = xor i32 %i.amg, 31
  %i.ami = mul nuw nsw i32 %i.amh, 9
  %i.amj = add nuw nsw i32 %i.ami, 73
  %i.amk = lshr i32 %i.amj, 6
  %i.aml = zext nneg i32 %i.amk to i64
  %i.amm = add i64 %i.amc, %i.aml                 ; 3 uses
  %i.amn = add nuw nsw i64 %.sroa.04.0.i.i.i, 2   ; 2 uses
  %niter501.next.1 = add i64 %niter501, 2         ; 2 uses
  %niter501.ncmp.1 = icmp eq i64 %niter501.next.1, %unroll_iter500
  br i1 %niter501.ncmp.1, label %.lr.ph.preheader.i.i.unr-lcssa, label %bb.fi

.lr.ph.preheader.i.i.unr-lcssa:                   ; preds = %bb.fi
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %.lr.ph.preheader.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292
  %.sroa.04.0.i.i.i.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292 ], [ %i.amn, %.lr.ph.preheader.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i294.epil.init = phi i64 [ 0, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i292 ], [ %i.amm, %.lr.ph.preheader.i.i.unr-lcssa ]
  %lcmp.mod499 = trunc i64 %i.all to i1
  tail call void @llvm.assume(i1 %lcmp.mod499)
  %i.amo = getelementptr inbounds nuw [4 x i8], ptr %i.alk, i64 %.sroa.04.0.i.i.i.epil.init
  %.val.i.i.i295.epil = load i32, ptr %i.amo, align 4, !alias.scope !21329, !noalias !21342, !noundef !62
  %i.amp = or i32 %.val.i.i.i295.epil, 1
  %i.amq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.amp, i1 true)
  %i.amr = xor i32 %i.amq, 31
  %i.ams = mul nuw nsw i32 %i.amr, 9
  %i.amt = add nuw nsw i32 %i.ams, 73
  %i.amu = lshr i32 %i.amt, 6
  %i.amv = zext nneg i32 %i.amu to i64
  %i.amw = add i64 %.sroa.02.0.i.i.i294.epil.init, %i.amv
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.preheader.i.i.unr-lcssa, %.epil.preheader
  %.lcssa492 = phi i64 [ %i.amm, %.lr.ph.preheader.i.i.unr-lcssa ], [ %i.amw, %.epil.preheader ]
  %.idx.i.i = shl nuw nsw i64 %i.all, 2
  %i.amx = getelementptr inbounds nuw i8, ptr %i.alk, i64 %.idx.i.i
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %.lcssa492, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21333, !inline_history !20390
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.02.i.i = phi ptr [ %i.amy, %.lr.ph.i.i ], [ %i.alk, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i.i, i64 4 ; 2 uses
  %i.amz = load i32, ptr %.sroa.0.02.i.i, align 4, !alias.scope !21329, !noalias !21342, !noundef !62
  %i.ana = zext i32 %i.amz to i64
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %i.ana, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !21333, !inline_history !20390
  %i.anb = icmp eq ptr %i.amy, %i.amx
  br i1 %i.anb, label %_RINvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB6_13ArrayEncoding6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i.i

bb.fj:                                            ; preds = %bb.b
  %i.anc = getelementptr i8, ptr %0, i64 16
  %.val4.i = load ptr, ptr %i.anc, align 8, !noalias !21210 ; 2 uses
  %i.and = getelementptr i8, ptr %0, i64 24
  %.val5.i = load i64, ptr %i.and, align 8, !noalias !21210 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21344)
  %i.ane = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 11 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.pre18.i.i29 = load i64, ptr %i.ane, align 8, !alias.scope !21345, !noalias !62 ; 3 uses
  %.pre28.i.i30 = load i64, ptr %1, align 8, !range !65, !alias.scope !21345, !noalias !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21350)
  %i.ang = icmp eq i64 %.pre28.i.i30, %.pre18.i.i29
  br i1 %i.ang, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i43, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i31, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i43: ; preds = %bb.fj
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i29, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !21351
  %i.anh = load i64, ptr %i.ane, align 8, !alias.scope !21352, !noalias !21351, !noundef !62
  %.pre27.pre.i.i44 = load i64, ptr %1, align 8, !range !65, !alias.scope !21345, !noalias !62
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i31

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i31: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i43, %bb.fj
  %.pre27.i.i32 = phi i64 [ %.pre27.pre.i.i44, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i43 ], [ %.pre28.i.i30, %bb.fj ] ; 2 uses
  %.sink1.i.i.i33 = phi i64 [ %i.anh, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i43 ], [ %.pre18.i.i29, %bb.fj ] ; 3 uses
  %i.ani = icmp sgt i64 %.sink1.i.i.i33, -1
  tail call void @llvm.assume(i1 %i.ani)
  %i.anj = load ptr, ptr %i.anf, align 8, !alias.scope !21352, !noalias !21351, !nonnull !62, !noundef !62 ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 %.sink1.i.i.i33
  store i8 -110, ptr %i.ank, align 1, !noalias !21352
  %i.anl = add nuw i64 %.sink1.i.i.i33, 1         ; 3 uses
  store i64 %i.anl, ptr %i.ane, align 8, !alias.scope !21352, !noalias !21351
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21357)
  %i.anm = icmp eq i64 %.pre27.i.i32, %i.anl
  br i1 %i.anm, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i41, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i34, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i41: ; preds = %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i31
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre27.i.i32, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !21358
  %i.ann = load i64, ptr %i.ane, align 8, !alias.scope !21359, !noalias !21358, !noundef !62
  %.pre.i42 = load ptr, ptr %i.anf, align 8, !alias.scope !21359, !noalias !21358
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i34

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i34: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i41, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i31
  %i.ano = phi ptr [ %.pre.i42, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i41 ], [ %i.anj, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i31 ]
  %.sink1.i6.i.i35 = phi i64 [ %i.ann, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i41 ], [ %i.anl, %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i31 ] ; 3 uses
  %i.anp = icmp sgt i64 %.sink1.i6.i.i35, -1
  tail call void @llvm.assume(i1 %i.anp)
  %i.anq = getelementptr inbounds nuw i8, ptr %i.ano, i64 %.sink1.i6.i.i35
  store i8 1, ptr %i.anq, align 1, !noalias !21359
  %i.anr = add nuw i64 %.sink1.i6.i.i35, 1
  store i64 %i.anr, ptr %i.ane, align 8, !alias.scope !21359, !noalias !21358
  %i.ans = icmp eq i64 %.val5.i, 0
  br i1 %i.ans, label %_RNvXs2U_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB6_5BlockNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i, label %bb.fk

_RNvXs2U_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB6_5BlockNtNtCskAO0uQb8M5a_5prost7message7Message11encoded_len.exit.thread.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i34
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB6_13ArrayEncoding6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit

bb.fk:                                            ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i34
  %i.ant = icmp sgt i64 %.val5.i, -1
  tail call void @llvm.assume(i1 %i.ant)
  %i.anu = or i64 %.val5.i, 1
  %i.anv = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.anu, i1 true)
  %i.anw = xor i64 %i.anv, 63
  %i.anx = mul nuw nsw i64 %i.anw, 9
  %i.any = add nuw nsw i64 %i.anx, 73
  %i.anz = lshr i64 %i.any, 6
  %i.aoa = add nuw i64 %.val5.i, 1
  %i.aob = add nuw i64 %i.aoa, %i.anz
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %i.aob, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21362)
  %.pre18.i.i.i36 = load i64, ptr %i.ane, align 8, !alias.scope !21363, !noalias !62 ; 3 uses
  %.pre28.i.i.i37 = load i64, ptr %1, align 8, !range !65, !alias.scope !21363, !noalias !62
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21368)
  %i.aoc = icmp eq i64 %.pre28.i.i.i37, %.pre18.i.i.i36
  br i1 %i.aoc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i40, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i38, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i40: ; preds = %bb.fk
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i.i36, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !21369
  %i.aod = load i64, ptr %i.ane, align 8, !alias.scope !21370, !noalias !21369, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i38

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i38: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i40, %bb.fk
  %.sink1.i6.i.i.i39 = phi i64 [ %i.aod, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i7.i.i.i40 ], [ %.pre18.i.i.i36, %bb.fk ] ; 3 uses
  %i.aoe = icmp sgt i64 %.sink1.i6.i.i.i39, -1
  tail call void @llvm.assume(i1 %i.aoe)
  %i.aof = load ptr, ptr %i.anf, align 8, !alias.scope !21370, !noalias !21369, !nonnull !62, !noundef !62
  %i.aog = getelementptr inbounds nuw i8, ptr %i.aof, i64 %.sink1.i6.i.i.i39
  store i8 10, ptr %i.aog, align 1, !noalias !21370
  %i.aoh = add nuw i64 %.sink1.i6.i.i.i39, 1
  store i64 %i.aoh, ptr %i.ane, align 8, !alias.scope !21370, !noalias !21369
  tail call fastcc void @_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file(i64 noundef %.val5.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21373)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21374)
  %i.aoi = load i64, ptr %i.ane, align 8, !alias.scope !21375, !noalias !21376, !noundef !62 ; 3 uses
  %i.aoj = load i64, ptr %1, align 8, !range !65, !alias.scope !21375, !noalias !21376, !noundef !62
  %i.aok = sub i64 %i.aoj, %i.aoi
  %i.aol = icmp ugt i64 %.val5.i, %i.aok
  br i1 %i.aol, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i3.i, label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i3.i: ; preds = %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i38
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.aoi, i64 noundef range(i64 0, -9223372036854775808) %.val5.i, i64 noundef 1, i64 noundef 1), !noalias !21376
  %i.aom = load i64, ptr %i.ane, align 8, !alias.scope !21377, !noalias !21376, !noundef !62
  br label %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i

_RINvNtNtCskAO0uQb8M5a_5prost8encoding6string6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i3.i, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i38
  %.sink1.i.i = phi i64 [ %i.aom, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i3.i ], [ %i.aoi, %_RINvNtNtCskAO0uQb8M5a_5prost8encoding6varint13encode_varintINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit.i.i38 ] ; 3 uses
  %i.aon = icmp sgt i64 %.sink1.i.i, -1
  tail call void @llvm.assume(i1 %i.aon)
  %i.aoo = load ptr, ptr %i.anf, align 8, !alias.scope !21377, !noalias !21376, !nonnull !62, !noundef !62
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aoo, i64 %.sink1.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aop, ptr nonnull readonly align 1 %.val4.i, i64 range(i64 0, -9223372036854775808) %.val5.i, i1 false), !noalias !21377
  %i.aoq = add nuw i64 %.sink1.i.i, %.val5.i
  store i64 %i.aoq, ptr %i.ane, align 8, !alias.scope !21377, !noalias !21376
  br label %_RINvMs1_NtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encodingNtB6_13ArrayEncoding6encodeINtNtCs40k4W9msRzi_5alloc3vec3VechEECsaSXGKSfiU2E_10lance_file.exit

bb.fl:                                            ; preds = %bb.b
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load i64, ptr %i.aor, align 8, !noalias !21210 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21379)
  %i.aos = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.pre18.i.i12 = load i64, ptr %i.aos, align 8, !alias.scope !21380, !noalias !62 ; 3 uses
  %.pre28.i.i13 = load i64, ptr %1, align 8, !range !65, !alias.scope !21380, !noalias !62 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21385)
  %i.aou = icmp eq i64 %.pre28.i.i13, %.pre18.i.i12
  br i1 %i.aou, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i27, label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i14, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i27: ; preds = %bb.fl
  tail call fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.pre18.i.i12, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !21386
  %i.aov = load i64, ptr %i.aos, align 8, !alias.scope !21387, !noalias !21386, !noundef !62
  %.pre27.pre.i.i28 = load i64, ptr %1, align 8, !range !65, !alias.scope !21380, !noalias !62
  br label %_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i14

_RNvYINtNtCs40k4W9msRzi_5alloc3vec3VechENtNtNtCs4XDKJNDGLq7_5bytes3buf7buf_mut6BufMut6put_u8CsaSXGKSfiU2E_10lance_file.exit.i.i14: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i27, %bb.fl
  %.pre27.i.i15 = phi i64 [ %.pre27.pre.i.i28, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i27 ], [ %.pre28.i.i13, %bb.fl ] ; 2 uses
  %.sink1.i.i.i16 = phi i64 [ %i.aov, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i.i.i.i.i27 ], [ %.pre18.i.i12, %bb.fl ] ; 3 uses
  %i.aow = icmp sgt i64 %.sink1.i.i.i16, -1
end_hunk_5
begin_hunk_6_@_RNCNvXs_NtNtCsaSXGKSfiU2E_10lance_file6reader10structuralNtB6_24StructuralReadProjectionNtB8_14ReadProjection7prepare0Ba_:bb.a
_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEIB1a_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.afb = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i8 0, ptr %i.afb, align 4, !noalias !29863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !29863
  %i.afc = getelementptr inbounds nuw i8, ptr %1, i64 181
  store i8 0, ptr %i.afc, align 1, !noalias !29863
  br label %bb.hn

bb.hn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEIB1a_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit.i, %bb.cy
  %i.afd = phi ptr [ %i.qv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEIB1a_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.gc, %bb.cy ] ; 3 uses
  %i.afe = phi ptr [ %i.qw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTjmINtNtNtB4_3ops5range5RangeyEEEIB1a_NtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEEECsaSXGKSfiU2E_10lance_file.exit.i ], [ %i.gd, %bb.cy ] ; 3 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %1, i64 182 ; 2 uses
  store i8 0, ptr %i.aff, align 2, !noalias !29863
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.0323.0.copyload.i = load i64, ptr %i.afg, align 8, !noalias !29863 ; 3 uses
  %.sroa.5324.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.5324.0.copyload.i = load ptr, ptr %.sroa.5324.0..sroa_idx.i, align 8, !noalias !29863, !nonnull !62, !noundef !62 ; 13 uses
  %.sroa.6325.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.6325.0.copyload.i = load i64, ptr %.sroa.6325.0..sroa_idx.i, align 8, !noalias !29863 ; 4 uses
  %i.afh = icmp ult i64 %.sroa.6325.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.afh)
  %.idx369.i = shl nuw nsw i64 %.sroa.6325.0.copyload.i, 3
  %i.afi = getelementptr inbounds nuw i8, ptr %.sroa.5324.0.copyload.i, i64 %.idx369.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30032)
  call void @llvm.experimental.noalias.scope.decl(metadata !30033)
  call void @llvm.experimental.noalias.scope.decl(metadata !30034)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !30035
  store i8 -1, ptr %i.i, align 8, !noalias !30035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !30035
  call void @llvm.experimental.noalias.scope.decl(metadata !30036)
  call void @llvm.experimental.noalias.scope.decl(metadata !30037)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30038
  store ptr %.sroa.5324.0.copyload.i, ptr %i.g, align 8, !alias.scope !30039, !noalias !30040
  %.sroa.0317.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.0317.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 %.sroa.0323.0.copyload.i, ptr %.sroa.0317.sroa.6.0..sroa_idx.i, align 8, !alias.scope !30039, !noalias !30040
  %.sroa.0317.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.afi, ptr %.sroa.0317.sroa.7.0..sroa_idx.i, align 8, !alias.scope !30039, !noalias !30040
  %.sroa.5318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.5318.0..sroa_idx.i, align 8, !alias.scope !30039, !noalias !30040
  %.sroa.4.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx6.i.i.i.i, align 8, !alias.scope !30039, !noalias !30041
  call void @llvm.experimental.noalias.scope.decl(metadata !30042)
  call void @llvm.experimental.noalias.scope.decl(metadata !30043)
  call void @llvm.experimental.noalias.scope.decl(metadata !30044)
  call void @llvm.experimental.noalias.scope.decl(metadata !30045)
  call void @llvm.experimental.noalias.scope.decl(metadata !30046)
  call void @llvm.experimental.noalias.scope.decl(metadata !30047)
  call void @llvm.experimental.noalias.scope.decl(metadata !30048)
  call void @llvm.experimental.noalias.scope.decl(metadata !30049)
  call void @llvm.experimental.noalias.scope.decl(metadata !30050)
  call void @llvm.experimental.noalias.scope.decl(metadata !30051)
  %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.6325.0.copyload.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.hr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i:                            ; preds = %.body10.i.i.i.i.i.i.i.i, %bb.ho
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.agp, %.body10.i.i.i.i.i.i.i.i ], [ %i.afs, %bb.ho ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtBE_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtNtB22_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB4u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB4w_6format6pbfile14ColumnMetadataEINtNtB4_6result6ResultB35_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB6K_NtNtB4_7convert10InfallibleB79_EEEB4w_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g) #50
          to label %.body.i.i.i.i unwind label %bb.hy, !noalias !30052

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.hn
  %i.afj = load ptr, ptr %.sroa.5324.0.copyload.i, align 8, !noalias !30053, !noundef !62 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.sroa.5324.0.copyload.i, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30054
  store i64 0, ptr %i.e, align 8, !noalias !30054
  %.not.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i = icmp eq ptr %i.afj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i10.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i173.i, label %.lr.ph.i.i.i.i.i172.i.preheader

.lr.ph.i.i.i.i.i172.i.preheader:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30054
  store ptr %i.afj, ptr %.sroa.5324.0.copyload.i, align 8, !noalias !30055
  %i.afl = getelementptr inbounds nuw i8, ptr %.sroa.5324.0.copyload.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i463 = icmp eq i64 %.sroa.6325.0.copyload.i, 1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i463, label %.sink.split, label %.lr.ph464

.lr.ph464:                                        ; preds = %.lr.ph.i.i.i.i.i172.i.preheader, %.lr.ph.i.i.i.i.i172.i
  %i.afm = phi i64 [ %i.afv, %.lr.ph.i.i.i.i.i172.i ], [ 1, %.lr.ph.i.i.i.i.i172.i.preheader ] ; 3 uses
  %i.afn = phi ptr [ %i.afu, %.lr.ph.i.i.i.i.i172.i ], [ %i.afl, %.lr.ph.i.i.i.i.i172.i.preheader ] ; 3 uses
  %i.afo = phi ptr [ %i.afq, %.lr.ph.i.i.i.i.i172.i ], [ %i.afk, %.lr.ph.i.i.i.i.i172.i.preheader ] ; 2 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !noalias !30053, !noundef !62 ; 2 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afo, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30054
  store i64 %i.afm, ptr %i.e, align 8, !noalias !30054
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i173.i, label %.lr.ph.i.i.i.i.i172.i

._crit_edge.i.i.i.i.i173.i:                       ; preds = %.lr.ph464, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.lcssa5.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afm, %.lr.ph464 ] ; 2 uses
  %.sroa.4.013.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.5324.0.copyload.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afn, %.lr.ph464 ] ; 2 uses
  %.lcssa2.i.i.i.i.i.i = phi ptr [ %i.afk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afq, %.lr.ph464 ] ; 2 uses
  store i64 %.lcssa5.i.i.i.i.i.i, ptr %.sroa.5318.0..sroa_idx.i, align 8, !noalias !30038
  store ptr %.lcssa2.i.i.i.i.i.i, ptr %.sroa.0317.sroa.5.0..sroa_idx.i, align 8, !alias.scope !30056, !noalias !30057
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30054
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30058
  store ptr %i.e, ptr %i.c, align 8, !noalias !30058
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30058
  %i.afr = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.afr, ptr noundef nonnull @438, ptr noundef nonnull %i.c)
          to label %bb.hq unwind label %bb.ho, !noalias !30059

bb.ho:                                            ; preds = %._crit_edge.i.i.i.i.i173.i
  %i.afs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop11InPlaceDropINtNtBI_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr nonnull %.sroa.5324.0.copyload.i, ptr nonnull %.sroa.4.013.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i) #50
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.hp, !noalias !30059

bb.hp:                                            ; preds = %bb.ho
  %i.aft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !30059
  unreachable

.lr.ph.i.i.i.i.i172.i:                            ; preds = %.lr.ph464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30054
  store ptr %i.afp, ptr %i.afn, align 8, !noalias !30055
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afn, i64 8 ; 2 uses
  %i.afv = add nuw nsw i64 %i.afm, 1              ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afq, %i.afi
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.sink.split, label %.lr.ph464

bb.hq:                                            ; preds = %._crit_edge.i.i.i.i.i173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30058
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.515.0..8.val.sroa_idx16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.515.0..8.val.sroa_idx16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, i1 false), !noalias !30060
  %.sroa.7.0..8.val.sroa_idx20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..8.val.sroa_idx20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.afr, i64 40, i1 false), !noalias !30060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30054
  store i8 11, ptr %i.i, align 8, !alias.scope !30049, !noalias !30061
  %.sroa.617.0..8.val.sroa_idx18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @439, ptr %.sroa.617.0..8.val.sroa_idx18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !30049, !noalias !30061
  %i.afw = add nuw i64 %.lcssa5.i.i.i.i.i.i, 1
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.i.i.i.i.i172.i, %.lr.ph.i.i.i.i.i172.i.preheader, %bb.hq
  %.sink = phi i64 [ %i.afw, %bb.hq ], [ 1, %.lr.ph.i.i.i.i.i172.i.preheader ], [ %i.afv, %.lr.ph.i.i.i.i.i172.i ]
  %.val2.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.lcssa2.i.i.i.i.i.i, %bb.hq ], [ %i.afi, %.lr.ph.i.i.i.i.i172.i.preheader ], [ %i.afi, %.lr.ph.i.i.i.i.i172.i ]
  %.sroa.4.013.i.i.i.pn.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.4.013.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i, %bb.hq ], [ %i.afl, %.lr.ph.i.i.i.i.i172.i.preheader ], [ %i.afu, %.lr.ph.i.i.i.i.i172.i ]
  store i64 %.sink, ptr %.sroa.5318.0..sroa_idx.i, align 8, !noalias !30038
  br label %bb.hr

bb.hr:                                            ; preds = %.sink.split, %bb.hn
  %.val2.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5324.0.copyload.i, %bb.hn ], [ %.val2.i.i.i.i.i.i.i.i.i.ph, %.sink.split ] ; 4 uses
  %.sroa.4.013.i.i.i.pn.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.5324.0.copyload.i, %bb.hn ], [ %.sroa.4.013.i.i.i.pn.i.i.i.i.i.i.i.i.i.i.ph, %.sink.split ]
  %i.afx = ptrtoint ptr %.sroa.4.013.i.i.i.pn.i.i.i.i.i.i.i.i.i.i to i64
  %i.afy = ptrtoint ptr %.sroa.5324.0.copyload.i to i64
  %i.afz = sub nuw i64 %i.afx, %i.afy
  %i.aga = lshr exact i64 %i.afz, 3               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30062
  store ptr %.sroa.5324.0.copyload.i, ptr %i.f, align 8, !noalias !30062
  %i.agb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.aga, ptr %i.agb, align 8, !noalias !30062
  %i.agc = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.0323.0.copyload.i, ptr %i.agc, align 8, !noalias !30062
  call void @llvm.experimental.noalias.scope.decl(metadata !30063)
  %i.agd = ptrtoint ptr %i.afi to i64
  %i.age = ptrtoint ptr %.val2.i.i.i.i.i.i.i.i.i to i64
  %i.agf = sub nuw i64 %i.agd, %i.age
  %i.agg = lshr exact i64 %i.agf, 3               ; 3 uses
  store i64 0, ptr %.sroa.0317.sroa.6.0..sroa_idx.i, align 8, !alias.scope !30064, !noalias !30065
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !30064, !noalias !30065
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0317.sroa.5.0..sroa_idx.i, align 8, !alias.scope !30064, !noalias !30065
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0317.sroa.7.0..sroa_idx.i, align 8, !alias.scope !30064, !noalias !30065
  %i.agh = icmp eq ptr %i.afi, %.val2.i.i.i.i.i.i.i.i.i
  br i1 %i.agh, label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB38_3map3MapINtNtB38_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterINtNtB20_6option6OptionBG_EEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5q_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB5s_6format6pbfile14ColumnMetadataEINtNtB20_6result6ResultBG_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB7G_NtNtB20_7convert10InfallibleB85_EEEB5s_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.hr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.agj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.hr ] ; 2 uses
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.agj = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30066)
  %i.agk = load ptr, ptr %i.agi, align 8, !alias.scope !30067, !noalias !30068, !noundef !62 ; 2 uses
  %i.agl = icmp eq ptr %i.agk, null
  br i1 %i.agl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i.i.i.i, label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.agm = atomicrmw sub ptr %i.agk, i64 1 release, align 8, !noalias !30069
  %i.agn = icmp eq i64 %i.agm, 1
  br i1 %i.agn, label %bb.ht, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i.i.i.i

bb.ht:                                            ; preds = %bb.hs
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.hu, !noalias !30068

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ht, %bb.hs, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ago = icmp eq i64 %i.agj, %i.agg
  br i1 %i.ago, label %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB38_3map3MapINtNtB38_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterINtNtB20_6option6OptionBG_EEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5q_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB5s_6format6pbfile14ColumnMetadataEINtNtB20_6result6ResultBG_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB7G_NtNtB20_7convert10InfallibleB85_EEEB5s_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.hu:                                            ; preds = %bb.ht
  %i.agp = landingpad { ptr, i32 }
          cleanup
  %i.agq = icmp eq i64 %i.agj, %i.agg
  br i1 %i.agq, label %.body10.i.i.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i.i.i.i.i

.lr.ph12.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.hu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.110.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ags, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i.i.i.i.i ], [ %i.agj, %bb.hu ] ; 2 uses
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i.i.i.i.i.i.i, i64 %.sroa.0.110.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ags = add nuw nsw i64 %.sroa.0.110.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30070)
  %i.agt = load ptr, ptr %i.agr, align 8, !alias.scope !30071, !noalias !30068, !noundef !62 ; 2 uses
  %i.agu = icmp eq ptr %i.agt, null
  br i1 %i.agu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i.i.i.i.i, label %bb.hv

bb.hv:                                            ; preds = %.lr.ph12.i.i.i.i.i.i.i.i.i.i
  %i.agv = atomicrmw sub ptr %i.agt, i64 1 release, align 8, !noalias !30072
  %i.agw = icmp eq i64 %i.agv, 1
  br i1 %i.agw, label %bb.hw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i.i.i.i.i

bb.hw:                                            ; preds = %bb.hv
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.agr)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i.i.i.i.i unwind label %bb.hx, !noalias !30068

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hw, %bb.hv, %.lr.ph12.i.i.i.i.i.i.i.i.i.i
  %i.agx = icmp eq i64 %i.ags, %i.agg
  br i1 %i.agx, label %.body10.i.i.i.i.i.i.i.i, label %.lr.ph12.i.i.i.i.i.i.i.i.i.i

bb.hx:                                            ; preds = %bb.hw
  %i.agy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !30068
  unreachable

.body10.i.i.i.i.i.i.i.i:                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit8.i.i.i.i.i.i.i.i.i.i, %bb.hu
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6option6OptionINtNtBI_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEB27_EECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.f) #50
          to label %.body.i.i.i.i.i.i.i.i unwind label %bb.hy, !noalias !30073

bb.hy:                                            ; preds = %.body10.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i
  %i.agz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !30073
  unreachable

_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB38_3map3MapINtNtB38_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterINtNtB20_6option6OptionBG_EEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5q_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB5s_6format6pbfile14ColumnMetadataEINtNtB20_6result6ResultBG_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB7G_NtNtB20_7convert10InfallibleB85_EEEB5s_.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i.i.i.i, %bb.hr
  store i64 %.sroa.0323.0.copyload.i, ptr %i.h, align 8, !alias.scope !30074, !noalias !30075
  %i.aha = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5324.0.copyload.i, ptr %i.aha, align 8, !alias.scope !30074, !noalias !30075
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.aga, ptr %i.ahb, align 8, !alias.scope !30074, !noalias !30075
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !30062
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtBE_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterINtNtB4_6option6OptionINtNtB22_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB4u_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB4w_6format6pbfile14ColumnMetadataEINtNtB4_6result6ResultB35_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB6K_NtNtB4_7convert10InfallibleB79_EEEB4w_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.ia unwind label %bb.hz, !noalias !30076

.body.i.i.i.i:                                    ; preds = %bb.hz, %.body.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i ], [ %i.ahe, %bb.hz ] ; 2 uses
  %.sroa.03.0.i.i.i.i = phi i1 [ true, %.body.i.i.i.i.i.i.i.i ], [ %.sroa.03.1.i.i.i.i, %bb.hz ]
  %i.ahc = load i8, ptr %i.i, align 8, !range !85, !noalias !30035, !noundef !62
  %i.ahd = icmp ne i8 %i.ahc, -1
  %or.cond.i.i.i.i = and i1 %.sroa.03.0.i.i.i.i, %i.ahd
  br i1 %or.cond.i.i.i.i, label %bb.ie, label %.body174.i

bb.hz:                                            ; preds = %bb.ic, %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB38_3map3MapINtNtB38_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterINtNtB20_6option6OptionBG_EEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5q_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB5s_6format6pbfile14ColumnMetadataEINtNtB20_6result6ResultBG_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB7G_NtNtB20_7convert10InfallibleB85_EEEB5s_.exit.i.i.i.i.i
  %.sroa.03.1.i.i.i.i = phi i1 [ false, %bb.ic ], [ true, %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB38_3map3MapINtNtB38_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterINtNtB20_6option6OptionBG_EEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5q_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB5s_6format6pbfile14ColumnMetadataEINtNtB20_6result6ResultBG_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB7G_NtNtB20_7convert10InfallibleB85_EEEB5s_.exit.i.i.i.i.i ]
  %i.ahe = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.ia:                                            ; preds = %_RINvXse_NtCs40k4W9msRzi_5alloc3vecINtB6_3VecINtNtB8_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEINtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtB1Y_8adapters12GenericShuntINtNtB38_3map3MapINtNtB38_9enumerate9EnumerateINtNtB6_9into_iter8IntoIterINtNtB20_6option6OptionBG_EEENCNCINvMs8_NtCsaSXGKSfiU2E_10lance_file6readerNtB5q_20FileMetadataProvider25load_indexed_column_infosFG_mRL0_NtNtNtB5s_6format6pbfile14ColumnMetadataEINtNtB20_6result6ResultBG_NtNtCs63DIHKhvmTb_10lance_core5error5ErrorEE0s0_0EIB7G_NtNtB20_7convert10InfallibleB85_EEEB5s_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !30038
  %i.ahf = load i8, ptr %i.i, align 8, !range !85, !noalias !30035, !noundef !62
  %.not.not.i.i.i.i = icmp eq i8 %i.ahf, -1
  br i1 %.not.not.i.i.i.i, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ahg, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !30077
  store i8 -1, ptr %i.at, align 8, !alias.scope !30078, !noalias !30079
  br label %bb.if

bb.ic:                                            ; preds = %bb.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.at, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !noalias !30077
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtBG_4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.h)
          to label %bb.if unwind label %bb.hz, !noalias !30076

bb.id:                                            ; preds = %bb.ie
  %i.ahh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !30076
  unreachable

bb.ie:                                            ; preds = %.body.i.i.i.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %.body174.i unwind label %bb.id, !noalias !30076

bb.if:                                            ; preds = %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !30035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !30035
  %i.ahi = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.ahj = load i8, ptr %i.ahi, align 8, !range !81, !noalias !29863, !noundef !62
  %i.ahk = trunc nuw i8 %i.ahj to i1
  br i1 %i.ahk, label %bb.ig, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.ih, %bb.ig, %bb.if
  store i8 0, ptr %i.ahi, align 8, !noalias !29863
  store i8 0, ptr %i.aff, align 2, !noalias !29863
  br label %bb.jr

bb.ig:                                            ; preds = %bb.if
  %i.ahl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val68.i = load i64, ptr %i.ahl, align 8, !noalias !29863 ; 2 uses
  %i.ahm = icmp eq i64 %.val68.i, 0
  br i1 %i.ahm, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.ahn = getelementptr i8, ptr %1, i64 128
  %.val69.i = load ptr, ptr %i.ahn, align 8, !noalias !29863, !nonnull !62, !noundef !62
  %i.aho = shl nuw i64 %.val68.i, 5
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val69.i, i64 noundef %i.aho, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !29866
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjmINtNtNtB4_3ops5range5RangeyEEEECsaSXGKSfiU2E_10lance_file.exit.i

bb.ii:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message6decodeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0EBN_.exit.i.i
  %i.ahp = landingpad { ptr, i32 }
          cleanup
  br label %.body167.i

.body167.i:                                       ; preds = %bb.ii, %.body.i158.i
  %eh.lpad-body168.i = phi { ptr, i32 } [ %i.ahp, %bb.ii ], [ %eh.lpad-body.i.i, %.body.i158.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10283.i)
  br label %bb.iw

_RINvYNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message6decodeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEB9_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvYNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message6decodeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesE0EBN_.exit.i.i
  %i.ahq = icmp eq i64 %.sroa.0281.0.i, -1
  br i1 %i.ahq, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %_RINvYNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message6decodeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEB9_.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7282.0.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10283.i)
  invoke void @_RNvXsa_NtCs63DIHKhvmTb_10lance_core5errorNtB5_5ErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.at, ptr noalias noundef nonnull align 8 %.sroa.7282.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @249)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEBH_.exit.i unwind label %bb.iy, !noalias !29866

bb.ik:                                            ; preds = %_RINvYNtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataNtNtCskAO0uQb8M5a_5prost7message7Message6decodeNtNtCs4XDKJNDGLq7_5bytes5bytes5BytesEB9_.exit.i
  %.sroa.5285.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5285.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.10283.i, i64 80, i1 false), !noalias !29863
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10283.i)
  %i.ahr = getelementptr inbounds nuw i8, ptr %1, i64 179 ; 2 uses
  store i8 1, ptr %i.ahr, align 1, !noalias !29863
  %i.ahs = getelementptr inbounds nuw i8, ptr %1, i64 360 ; 4 uses
  store i64 %.sroa.0281.0.i, ptr %i.ahs, align 8, !noalias !29863
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %.sroa.7282.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !29863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !29863
  %i.aht = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val94.i = load ptr, ptr %i.aht, align 8, !noalias !29863, !nonnull !62, !noundef !62
  invoke void %.val94.i(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ax, i32 noundef %i.abq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.ahs)
          to label %_RNvYFG_mRL0_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEINtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB1g_3ops8function2FnTmRBa_EE4callBg_.exit.i unwind label %bb.il, !noalias !29866, !inline_history !29771

bb.il:                                            ; preds = %bb.ik
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !29863
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoEECsaSXGKSfiU2E_10lance_file.exit.i

_RNvYFG_mRL0_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEINtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB1g_3ops8function2FnTmRBa_EE4callBg_.exit.i: ; preds = %bb.ik
  call void @llvm.experimental.noalias.scope.decl(metadata !30080)
  %i.ahv = load i8, ptr %i.ax, align 8, !range !85, !alias.scope !30081, !noalias !30082, !noundef !62 ; 2 uses
  %.not.i178.i = icmp eq i8 %i.ahv, -1
  br i1 %.not.i178.i, label %bb.im, label %bb.ir

bb.im:                                            ; preds = %_RNvYFG_mRL0_NtNtNtCsaSXGKSfiU2E_10lance_file6format6pbfile14ColumnMetadataEINtNtCscI6d9CVNmLh_4core6result6ResultINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCs63DIHKhvmTb_10lance_core5error5ErrorEINtNtNtB1g_3ops8function2FnTmRBa_EE4callBg_.exit.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ahx = load ptr, ptr %i.ahw, align 8, !alias.scope !30081, !noalias !30082, !nonnull !62, !noundef !62 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !29863
  %i.ahy = getelementptr inbounds nuw i8, ptr %1, i64 178
  store i8 1, ptr %i.ahy, align 2, !noalias !29863
  %i.ahz = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %i.ahx, ptr %i.ahz, align 8, !noalias !29863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !29863
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store i8 0, ptr %i.ahr, align 1, !noalias !29863
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.av, ptr noundef nonnull align 8 dereferenceable(96) %i.ahs, i64 96, i1 false), !noalias !29863
  %i.aia = atomicrmw add ptr %i.ahx, i64 1 monotonic, align 8, !noalias !29866
  %i.aib = icmp slt i64 %i.aia, 0
  br i1 %i.aib, label %bb.in, label %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit179.i

bb.in:                                            ; preds = %bb.im
  call void @llvm.trap()
  unreachable

_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit179.i: ; preds = %bb.im
  %i.aic = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aic, ptr noundef nonnull align 8 dereferenceable(96) %i.av, i64 96, i1 false), !noalias !29863
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  store i64 1, ptr %i.b, align 8, !noalias !30083
  %i.aid = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aid, align 8, !noalias !30083
  %.sroa.5300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.ahx, ptr %.sroa.5300.0..sroa_idx.i, align 8, !noalias !29863
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !30084
  %i.aie = call noundef align 8 dereferenceable_or_null(120) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 120, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !30084 ; 6 uses
  %i.aif = icmp eq ptr %i.aie, null
  br i1 %i.aif, label %bb.io, label %.thread562.i, !prof !61

bb.io:                                            ; preds = %_RNvXsu_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCsjjpCCFGI3ul_14lance_encoding7decoder10ColumnInfoENtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCsaSXGKSfiU2E_10lance_file.exit179.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 120) #49
          to label %.noexc.i180.i unwind label %bb.ip, !noalias !30085

.noexc.i180.i:                                    ; preds = %bb.io
end_hunk_6
begin_hunk_7_@_RNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB5_16EncodingPipeline14encode_columns:bb.a

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !31868
  %i.ab = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #44, !noalias !31868 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.m, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31866
  %.val7.i.i.i.i.i = load i64, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !alias.scope !31869, !noalias !31867, !noundef !62 ; 2 uses
  %i.ad = icmp eq i64 %.val7.i.i.i.i.i, 0
  br i1 %i.ad, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val6.i.i.i.i.i = load ptr, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !alias.scope !31870, !noalias !31867, !nonnull !62, !noundef !62
  %i.ae = shl nuw i64 %.val7.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31871
  br label %bb.ac

bb.l:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
          to label %bb.aa unwind label %bb.z, !noalias !31866

bb.m:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #49
          to label %.noexc.i.i.i.i.i unwind label %bb.l, !noalias !31866

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !31866
  store i64 4, ptr %i.d, align 8, !noalias !31866
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31866
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31866
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !31867
  call void @llvm.experimental.noalias.scope.decl(metadata !31872)
  call void @llvm.experimental.noalias.scope.decl(metadata !31873)
  call void @llvm.experimental.noalias.scope.decl(metadata !31874)
  call void @llvm.experimental.noalias.scope.decl(metadata !31875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31876
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, %bb.n
  %i.ag = phi ptr [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ], [ %i.ab, %bb.n ]
  %.sroa.9.0.copyload17.i = phi i64 [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ], [ 1, %bb.n ] ; 6 uses
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB44_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.s unwind label %bb.r, !noalias !31877

bb.p:                                             ; preds = %bb.w, %bb.r
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.w ], [ %i.al, %bb.r ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val6.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !31878, !noalias !31877, !noundef !62 ; 2 uses
  %i.ai = icmp eq i64 %.val6.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %.body.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !31879, !noalias !31877, !nonnull !62, !noundef !62
  %i.ak = shl nuw i64 %.val6.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31880
  br label %.body.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.s:                                             ; preds = %bb.o
  %i.am = load i64, ptr %i.a, align 8, !range !64, !noalias !31881, !noundef !62
  %.not.i.i8.i.i.i.i.i = icmp eq i64 %i.am, -1
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = icmp samesign ult i64 %.sroa.9.0.copyload17.i, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.d, align 8, !range !65, !alias.scope !31882, !noalias !31883, !noundef !62
  %i.ap = icmp eq i64 %.sroa.9.0.copyload17.i, %i.ao
  br i1 %i.ap, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !31878, !noalias !31877, !noundef !62 ; 2 uses
  %i.ar = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !31879, !noalias !31877, !nonnull !62, !noundef !62
  %i.at = shl nuw i64 %.val4.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31884
  br label %bb.y

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.9.0.copyload17.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i unwind label %bb.w, !noalias !31883

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !31882, !noalias !31883
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i, %bb.t
  %i.au = phi ptr [ %.pre.i.i.i.i.i, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.ag, %bb.t ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.sroa.9.0.copyload17.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !31881
  %i.aw = add nuw nsw i64 %.sroa.9.0.copyload17.i, 1 ; 2 uses
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !31882, !noalias !31883
  br label %bb.o

bb.w:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB40_16EncodingPipeline14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB44_.exit.i.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.p unwind label %bb.x, !noalias !31881

bb.x:                                             ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31881
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.q, %bb.p
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_INtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.d) #50
          to label %.body.i2 unwind label %bb.z, !noalias !31866

bb.y:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31866
  %.sroa.0.0.copyload13.i = load i64, ptr %i.d, align 8, !noalias !31885
  %.sroa.7.0.copyload15.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31866
  br label %bb.ac

bb.z:                                             ; preds = %.body.i.i.i.i.i, %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31866
  unreachable

bb.aa:                                            ; preds = %bb.l, %bb.h
  %.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.af, %bb.l ] ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !alias.scope !31869, !noalias !31867, !noundef !62 ; 2 uses
  %i.ba = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.ba, label %.body.i2, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !alias.scope !31870, !noalias !31867, !nonnull !62, !noundef !62
  %i.bb = shl nuw i64 %.val5.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31886
  br label %.body.i2

.body.i2:                                         ; preds = %bb.ab, %bb.aa, %.body.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i, %bb.aa ], [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.ph.i.i.i.i.i, %bb.ab ] ; 2 uses
  %i.bc = load i8, ptr %i.f, align 8, !range !85, !noalias !31859, !noundef !62
  %.not.i = icmp eq i8 %i.bc, -1
  br i1 %.not.i, label %common.resume, label %bb.am

bb.ac:                                            ; preds = %bb.y, %bb.k, %bb.j
  %.sroa.9.0.i = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %.sroa.9.0.copyload17.i, %bb.y ] ; 5 uses
  %.sroa.7.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.7.0.copyload15.i, %bb.y ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %.sroa.0.0.copyload13.i, %bb.y ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !31857
  %i.bd = load i8, ptr %i.f, align 8, !range !85, !noalias !31859, !noundef !62
  %.not.not.i = icmp eq i8 %i.bd, -1
  br i1 %.not.not.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !31887)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.be, align 8, !alias.scope !31888, !noalias !31889
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.i, ptr %.sroa.4.0..sroa_idx.i3, align 8, !alias.scope !31888, !noalias !31889
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.i, ptr %.sroa.5.0..sroa_idx.i4, align 8, !alias.scope !31888, !noalias !31889
  store i8 -1, ptr %0, align 8, !alias.scope !31890, !noalias !31891
  br label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB3T_16EncodingPipeline14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6M_NtNtB6_7convert10InfallibleB80_ENCINvXso_B6O_IB6M_IB5p_B5o_EB80_EINtNtNtB4_6traits7collect12FromIteratorIB6M_B5o_B80_EE9from_iterBQ_E0B9Z_EB3X_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !31889
  %i.bf = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.bf, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph

bb.af:                                            ; preds = %.lr.ph
  %i.bg = icmp eq i64 %i.bi, %.sroa.9.0.i
  br i1 %i.bg, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i.i.i.i33 = phi i64 [ %i.bi, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.i, i64 %.sroa.0.0.i.i.i.i33
  %i.bi = add nuw nsw i64 %.sroa.0.0.i.i.i.i33, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bh)
          to label %bb.af unwind label %bb.ah, !noalias !31892

bb.ag:                                            ; preds = %.lr.ph35
  %i.bj = add nuw nsw i64 %.sroa.0.1.i.i.i.i34, 1 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %.sroa.9.0.i
  br i1 %i.bk, label %.body.i.i, label %.lr.ph35

bb.ah:                                            ; preds = %.lr.ph
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = icmp eq i64 %i.bi, %.sroa.9.0.i
  br i1 %i.bm, label %.body.i.i, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.ah, %bb.ag
  %.sroa.0.1.i.i.i.i34 = phi i64 [ %i.bj, %bb.ag ], [ %i.bi, %bb.ah ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.i, i64 %.sroa.0.1.i.i.i.i34
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bn) #50
          to label %bb.ag unwind label %bb.ai, !noalias !31892

bb.ai:                                            ; preds = %.lr.ph35
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31893
  unreachable

.body.i.i:                                        ; preds = %bb.ag, %bb.ah
  %i.bp = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.bp, label %common.resume, label %bb.aj

bb.aj:                                            ; preds = %.body.i.i
  %i.bq = mul nuw i64 %.sroa.0.0.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31892
  br label %common.resume

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.af, %bb.ae
  %i.br = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.br, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB3T_16EncodingPipeline14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6M_NtNtB6_7convert10InfallibleB80_ENCINvXso_B6O_IB6M_IB5p_B5o_EB80_EINtNtNtB4_6traits7collect12FromIteratorIB6M_B5o_B80_EE9from_iterBQ_E0B9Z_EB3X_.exit, label %bb.ak

bb.ak:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.bs = mul nuw i64 %.sroa.0.0.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !31892
  br label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB3T_16EncodingPipeline14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6M_NtNtB6_7convert10InfallibleB80_ENCINvXso_B6O_IB6M_IB5p_B5o_EB80_EINtNtNtB4_6traits7collect12FromIteratorIB6M_B5o_B80_EE9from_iterBQ_E0B9Z_EB3X_.exit

bb.al:                                            ; preds = %bb.am
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !31859
  unreachable

bb.am:                                            ; preds = %.body.i2
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %common.resume unwind label %bb.al, !noalias !31859

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB3T_16EncodingPipeline14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6M_NtNtB6_7convert10InfallibleB80_ENCINvXso_B6O_IB6M_IB5p_B5o_EB80_EINtNtNtB4_6traits7collect12FromIteratorIB6M_B5o_B80_EE9from_iterBQ_E0B9Z_EB3X_.exit: ; preds = %bb.ad, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !31859
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB5_16EncodingPipeline16encoding_options(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(240) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [1 x i8], align 1                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = load i64, ptr %1, align 8, !range !72, !noundef !62
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !62 ; 3 uses
  %i.j = icmp ult i64 %i.i, 48038396025285291
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !62
  %i.n = udiv i64 %i.m, %i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #49
  unreachable

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i64 [ %i.n, %bb.c ], [ 8388608, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !72, !noundef !62
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load i64, ptr %i.r, align 8
  br label %_RNCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB7_16EncodingPipeline16encoding_options0Bb_.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtCsgczF5crJ4sT_3std3env4__var(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @440, i64 noundef 32)
  %i.t = load i64, ptr %i.e, align 8, !range !72, !noundef !62
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.07.0.copyload.i = load i64, ptr %i.v, align 8 ; 7 uses
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.u, label %_RNCNCNvMs0_NtNtCsaSXGKSfiU2E_10lance_file6writer10structuralNtB9_16EncodingPipeline16encoding_options00Bd_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.48.0..sroa_idx.i, align 8, !nonnull !62, !noundef !62 ; 5 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.56.0.copyload.i = load i64, ptr %.sroa.56.0..sroa_idx.i, align 8 ; 2 uses
  switch i64 %.sroa.56.0.copyload.i, label %thread-pre-split.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.w = load i8, ptr %.sroa.4.0.copyload.i, align 1, !alias.scope !31907, !noalias !31908, !noundef !62 ; 2 uses
  switch i8 %i.w, label %bb.j [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.h
  %.pr.i.i.i = load i8, ptr %.sroa.4.0.copyload.i, align 1, !alias.scope !31907, !noalias !31908
  br label %bb.j

bb.j:                                             ; preds = %thread-pre-split.i.i.i, %bb.i
  %i.x = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.w, %bb.i ]
  %cond.i.i.i = icmp eq i8 %i.x, 43               ; 2 uses
  %i.y = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %.sroa.56.0.copyload.i, %i.y ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.z = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.z, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.j
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.m
  %.not52.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not52.i.i.i, label %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.j, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i37 = phi ptr [ %i.aa, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.j ] ; 2 uses
  %.sroa.15.1.i.i.i36 = phi i64 [ %i.ab, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.j ]
  %.sroa.042.0.i.i.i35 = phi i64 [ %i.am, %.preheader56.i.i.i ], [ 0, %bb.j ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i37, i64 1
  %i.ab = add nsw i64 %.sroa.15.1.i.i.i36, -1     ; 2 uses
  %i.ac = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i35, i64 10) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 0       ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ac, 1
  %i.af = load i8, ptr %.sroa.0.1.i.i.i37, align 1, !alias.scope !31907, !noalias !31908, !noundef !62 ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.k, !prof !61

bb.k:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.ag = zext i8 %i.af to i32
  %i.ah = add nsw i32 %i.ag, -48                  ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 10
  br i1 %i.ai, label %bb.m, label %.loopexit.i.i

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.aj = add i8 %i.af, -48
  %i.ak = icmp ult i8 %i.aj, 10
  %spec.select.i.i = select i1 %i.ak, i8 2, i8 1
  br label %.loopexit.i.i

bb.m:                                             ; preds = %bb.k
  %i.al = zext nneg i32 %i.ah to i64
  %i.am = add i64 %i.ad, %i.al                    ; 3 uses
  %i.an = icmp ult i64 %i.am, %i.ad
  br i1 %i.an, label %.loopexit.i.i, label %.preheader56.i.i.i, !prof !61

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.n
  %.sroa.0.269.i.i.i = phi ptr [ %i.au, %bb.n ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.at, %bb.n ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.aw, %bb.n ], [ 0, %.preheader.i.i.i ]
  %i.ao = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !31907, !noalias !31908, !noundef !62
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 10
  br i1 %i.ar, label %bb.n, label %.loopexit.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.as = mul i64 %.sroa.042.267.i.i.i, 10
  %i.at = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = add i64 %i.as, %i.av                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not53.i.i.i, label %_RNvMsD_NtCscI6d9CVNmLh_4core3numy16from_ascii_radix.exit.i.i, label %.lr.ph.i.i.i

bb.o:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = icmp eq i64 %.sroa.07.0.copyload.i, 0
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_7
begin_hunk_8_@_RNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB5_8Metadata16range_to_batches:bb.a
  %i.ah = icmp ult i64 %.sroa.02.0, %i.k
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.split:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.l, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtNtCscI6d9CVNmLh_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.414.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ai, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRlNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.418.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @684, ptr noundef nonnull %i.b), !noalias !33104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !33105)
  %.sroa.06.0.copyload.i = load i64, ptr %i.d, align 8, !alias.scope !33106, !noalias !33107 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !33106, !noalias !33107 ; 3 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.57.0.copyload.i = load i64, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !33106, !noalias !33107
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !33108
  %i.aj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !33108 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.f, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit, !prof !61

bb.f:                                             ; preds = %.split
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc.i unwind label %bb.g, !noalias !33109

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = icmp eq i64 %.sroa.06.0.copyload.i, 0
  br i1 %i.am, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.06.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !33110
  br label %common.resume

common.resume:                                    ; preds = %.loopexit, %bb.i, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.g ], [ %i.al, %bb.h ], [ %lpad.loopexit, %bb.i ], [ %lpad.loopexit, %.loopexit ]
  resume { ptr, i32 } %common.resume.op

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit: ; preds = %.split
  store i64 %.sroa.06.0.copyload.i, ptr %i.aj, align 8, !noalias !33109
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !noalias !33109
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %.sroa.57.0.copyload.i, ptr %.sroa.6.0..sroa_idx4.i, align 8, !noalias !33109
  store i8 0, ptr %0, align 8
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %.sroa.433.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @80, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @685, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.m

.lr.ph:                                           ; preds = %_RINvMNtCscI6d9CVNmLh_4core5sliceSl16binary_search_byNCNvB2_13binary_search0ECsaSXGKSfiU2E_10lance_file.exit, %bb.l
  %i.an = phi ptr [ %i.be, %bb.l ], [ inttoptr (i64 8 to ptr), %_RINvMNtCscI6d9CVNmLh_4core5sliceSl16binary_search_byNCNvB2_13binary_search0ECsaSXGKSfiU2E_10lance_file.exit ]
  %i.ao = phi i64 [ %i.bg, %bb.l ], [ 0, %_RINvMNtCscI6d9CVNmLh_4core5sliceSl16binary_search_byNCNvB2_13binary_search0ECsaSXGKSfiU2E_10lance_file.exit ] ; 3 uses
  %.sroa.02.147 = phi i64 [ %i.aw, %bb.l ], [ %.sroa.02.0, %_RINvMNtCscI6d9CVNmLh_4core5sliceSl16binary_search_byNCNvB2_13binary_search0ECsaSXGKSfiU2E_10lance_file.exit ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.02.147
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !62
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %.not28 = icmp ugt i64 %3, %i.ar
  br i1 %.not28, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.l, %_RINvMNtCscI6d9CVNmLh_4core5sliceSl16binary_search_byNCNvB2_13binary_search0ECsaSXGKSfiU2E_10lance_file.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

.loopexit:                                        ; preds = %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val30 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.at = icmp eq i64 %.val30, 0
  br i1 %i.at, label %common.resume, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %.val31 = load ptr, ptr %i.ae, align 8, !nonnull !62, !noundef !62
  %i.au = mul nuw i64 %.val30, 24
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %common.resume

bb.j:                                             ; preds = %.lr.ph
  %i.av = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.ar)
  %i.aw = add i64 %.sroa.02.147, 1                ; 3 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !62
  %i.az = sext i32 %i.ay to i64
  %.sroa.0.0.i32 = tail call noundef i64 @llvm.umin.i64(i64 %i.az, i64 %3)
  %i.ba = sub i64 %.sroa.0.0.i32, %i.ar
  %i.bb = trunc i64 %.sroa.02.147 to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33111)
  %i.bc = load i64, ptr %i.a, align 8, !range !65, !alias.scope !33111, !noalias !33112, !noundef !62
  %i.bd = icmp eq i64 %i.ao, %i.bc
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTlINtNtNtCscI6d9CVNmLh_4core3ops5range5RangejEEE8grow_oneCsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %._crit_edge49 unwind label %.loopexit

._crit_edge49:                                    ; preds = %bb.k
  %.pre = load ptr, ptr %i.ae, align 8, !alias.scope !33111, !noalias !33112
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge49, %bb.j
  %i.be = phi ptr [ %.pre, %._crit_edge49 ], [ %i.an, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.ao ; 3 uses
  store i32 %i.bb, ptr %i.bf, align 8, !noalias !33111
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.av, ptr %.sroa.438.0..sroa_idx, align 8, !noalias !33111
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %i.ba, ptr %.sroa.539.0..sroa_idx, align 8, !noalias !33111
  %i.bg = add i64 %i.ao, 1                        ; 2 uses
  store i64 %i.bg, ptr %i.af, align 8
  %exitcond.not = icmp eq i64 %i.aw, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB5_8Metadata17push_batch_length(ptr noalias noundef align 8 dereferenceable(152) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !62 ; 3 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !range !65, !alias.scope !33117, !noundef !62
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !33117, !nonnull !62, !noundef !62
  store i32 0, ptr %i.i, align 4
  store i64 1, ptr %i.b, align 8, !alias.scope !33117
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.a
  %i.j = phi i64 [ 1, %bb.d ], [ %i.c, %bb.a ]    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !62, !noundef !62 ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %i.j
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !noundef !62
  %i.p = load i64, ptr %i.a, align 8, !range !65, !alias.scope !33118, !noundef !62
  %i.q = icmp eq i64 %i.j, %i.p
  br i1 %i.q, label %bb.e, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsaSXGKSfiU2E_10lance_file.exit1

bb.e:                                             ; preds = %.thread
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVeclE8grow_oneCsDbzj4lZ5l5_11goosefs_sdk(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !33118
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsaSXGKSfiU2E_10lance_file.exit1

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VeclE8push_mutCsaSXGKSfiU2E_10lance_file.exit1: ; preds = %.thread, %bb.e
  %i.r = phi ptr [ %i.l, %.thread ], [ %.pre, %bb.e ]
  %i.s = add i32 %i.o, %1
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.j
  store i32 %i.s, ptr %i.t, align 4
  %i.u = add nuw nsw i64 %i.j, 1
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !33118
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB5_8Metadata24group_indices_to_batches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(152) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.559.i.i.i = alloca i64, align 8          ; 8 uses
  %.sroa.17.i.i.i = alloca i64, align 8           ; 5 uses
  %.sroa.520.i.i.i = alloca i64, align 8          ; 6 uses
  %.sroa.1623.i.i.i = alloca i64, align 8         ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noundef !62 ; 8 uses
  %i.h = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp eq i64 %i.g, 0
  %i.j = trunc i64 %i.g to i32
  %i.k = add i32 %i.j, -1
  %.sroa.04.0 = select i1 %i.i, i32 0, i32 %i.k   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr null, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %i.m, align 8
  %i.n = shl nuw nsw i64 %3, 2                    ; 3 uses
  %i.o = icmp eq i64 %3, 0
  br i1 %i.o, label %._crit_edge220, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !33321
  %i.p = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !33321 ; 15 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.i, %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.c ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map8BTreeMaplINtNtBK_3vec3VecmEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.e) #50
          to label %bb.do unwind label %bb.dn

bb.c:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.n) #49
          to label %bb.ah unwind label %bb.c

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr nonnull align 4 %2, i64 %i.n, i1 false)
  %i.s = icmp eq i64 %3, 1
  br i1 %i.s, label %.lr.ph219, label %bb.f, !prof !33322

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ult i64 %3, 21
  br i1 %i.t, label %bb.h, label %bb.g, !prof !71

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortmNvYmNtNtB8_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 4 %i.p, i64 noundef %3, ptr noalias noundef nonnull %i.a)
          to label %.lr.ph219 unwind label %.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftmNvYmNtNtBa_3cmp10PartialOrd2ltECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 4 %i.p, i64 noundef %3, i64 noundef 1)
  br label %.lr.ph219

.loopexit126:                                     ; preds = %bb.ak
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.g, %bb.ag, %bb.m, %bb.al
  %i.u = phi ptr [ %i.p, %bb.g ], [ %i.p, %bb.ag ], [ %i.ah, %bb.m ], [ %i.p, %bb.al ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit126, %.loopexit.split-lp, %bb.bw, %bb.bx, %bb.db, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit16.sink.split.i.i, %.body.i
  %i.v = phi ptr [ %i.ah, %.body.i ], [ %i.p, %bb.bw ], [ %i.p, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit16.sink.split.i.i ], [ %i.p, %bb.db ], [ %i.p, %bb.bx ], [ %i.p, %.loopexit126 ], [ %i.u, %.loopexit.split-lp ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.es, %.body.i ], [ %i.jf, %bb.bw ], [ %.pn35.ph.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit16.sink.split.i.i ], [ %.pn.ph.i31.i.i.i, %bb.db ], [ %i.jh, %bb.bx ], [ %lpad.loopexit, %.loopexit126 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.w = icmp eq i64 %3, 0
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.x = shl nuw nsw i64 %3, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit

.lr.ph219:                                        ; preds = %bb.e, %bb.h, %bb.g
  %.idx367 = shl nuw nsw i64 %3, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx367
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !62
  %i.ab = ptrtoint ptr %i.e to i64
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = sext i32 %.sroa.04.0 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph219, %_RNvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_5EntrylINtNtBd_3vec3VecmEE9or_insertCsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.0218 = phi i32 [ 0, %.lr.ph219 ], [ %.sroa.0.1.lcssa, %_RNvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_5EntrylINtNtBd_3vec3VecmEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 3 uses
  %.sroa.05.0217 = phi ptr [ %i.p, %.lr.ph219 ], [ %i.ae, %_RNvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_5EntrylINtNtBd_3vec3VecmEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.05.0217, i64 4 ; 2 uses
  %i.af = icmp slt i32 %.sroa.0.0218, %.sroa.04.0
  br i1 %i.af, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ag = sext i32 %.sroa.0.0218 to i64           ; 2 uses
  br label %.lr.ph

._crit_edge220:                                   ; preds = %_RNvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_5EntrylINtNtBd_3vec3VecmEE9or_insertCsaSXGKSfiU2E_10lance_file.exit, %bb.a
  %i.ah = phi ptr [ inttoptr (i64 4 to ptr), %bb.a ], [ %i.p, %_RNvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB5_5EntrylINtNtBd_3vec3VecmEE9or_insertCsaSXGKSfiU2E_10lance_file.exit ] ; 3 uses
  %i.ai = load ptr, ptr %i.e, align 8, !noundef !62 ; 2 uses
  %.not45 = icmp ne ptr %i.ai, null               ; 3 uses
  %i.aj = load i64, ptr %i.l, align 8
  %i.ak = load i64, ptr %i.m, align 8             ; 2 uses
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not45, i64 %i.aj, i64 undef
  %.sroa.5.0 = select i1 %.not45, i64 %i.ak, i64 0 ; 6 uses
  %i.al = ptrtoint ptr %i.ai to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !33323
  %i.am = shl i64 %.sroa.5.0, 5                   ; 4 uses
  %i.an = icmp ugt i64 %.sroa.5.0, 576460752303423487
  %.not.i.i.i = icmp ugt i64 %i.am, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.an, %.not.i.i.i
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.k, !prof !86

bb.k:                                             ; preds = %._crit_edge220
  %i.ao = icmp eq i64 %i.am, 0
  br i1 %i.ao, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsE7reserveBO_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !33324
  %i.ap = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.am, i64 noundef range(i64 1, 9) 8) #44, !noalias !33324 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.m, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsE7reserveBO_.exit.i.i.i

bb.m:                                             ; preds = %bb.l, %._crit_edge220
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.l ], [ 0, %._crit_edge220 ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.am) #49
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsE7reserveBO_.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.ar = phi ptr [ inttoptr (i64 8 to ptr), %bb.k ], [ %i.ap, %bb.l ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.k ], [ %.sroa.5.0, %bb.l ] ; 2 uses
  %i.as = icmp samesign ule i64 %.sroa.5.0, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.as)
  store i64 %.sroa.4.0.i.i, ptr %i.d, align 8, !noalias !33323
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ar, ptr %i.at, align 8, !noalias !33323
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.au, align 8, !noalias !33323
  call void @llvm.experimental.noalias.scope.decl(metadata !33325)
  call void @llvm.experimental.noalias.scope.decl(metadata !33326)
  %i.av = icmp eq i64 %.sroa.5.0, 0
  br i1 %i.av, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsE7reserveBO_.exit.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !62
  br label %bb.n

bb.n:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ 0, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.12.0.i.i.i.i.i = phi i64 [ %.sroa.07.sroa.5.sroa.6.0, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.78.0.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i ] ; 6 uses
  %.val9.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.eq, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.013.0.lcssa.i.i26.i.i.i.i.i.i = phi ptr [ null, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.ay = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %i.ba, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i ]
  %i.az = phi i1 [ %.not45, %.lr.ph.i.i.i.i.i.i ], [ true, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i ]
  %i.ba = add nsw i64 %i.ay, -1                   ; 2 uses
  br i1 %i.az, label %bb.o, label %.critedge.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.013.0.lcssa.i.i26.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = inttoptr i64 %.sroa.8.0.i.i.i.i.i to ptr ; 3 uses
  %i.bc = icmp eq i64 %.sroa.12.0.i.i.i.i.i, 0
  br i1 %i.bc, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.p
  %xtraiter659.a = and i64 %.sroa.12.0.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod660.not.a = icmp eq i64 %xtraiter659.a, 0
  br i1 %lcmp.mod660.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.sroa.12.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter661.a = phi i64 [ %prol.iter661.next.a, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.prol, i64 320
  %i.be = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.bd, align 8, !noalias !33327, !nonnull !62, !noundef !62 ; 3 uses
  %prol.iter661.next.a = add i64 %prol.iter661.a, 1 ; 2 uses
  %prol.iter661.cmp.not.a = icmp eq i64 %prol.iter661.next.a, %xtraiter659.a
  br i1 %prol.iter661.cmp.not.a, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !33145

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.12.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bf = icmp ult i64 %.sroa.12.0.i.i.i.i.i, 8
  br i1 %i.bf, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i, i64 320
  %.sroa.013.0.i.i.i.i.i.i.i.i = load ptr, ptr %i.bg, align 8, !noalias !33327, !nonnull !62, !noundef !62
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i, i64 320
  %.sroa.013.0.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bh, align 8, !noalias !33327, !nonnull !62, !noundef !62
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.1, i64 320
  %.sroa.013.0.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.bi, align 8, !noalias !33327, !nonnull !62, !noundef !62
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.2, i64 320
  %.sroa.013.0.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bj, align 8, !noalias !33327, !nonnull !62, !noundef !62
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.3, i64 320
  %.sroa.013.0.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bk, align 8, !noalias !33327, !nonnull !62, !noundef !62
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.4, i64 320
  %.sroa.013.0.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bl, align 8, !noalias !33327, !nonnull !62, !noundef !62
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.5, i64 320
  %.sroa.013.0.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bm, align 8, !noalias !33327, !nonnull !62, !noundef !62
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.6, i64 320
  %i.bo = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bn, align 8, !noalias !33327, !nonnull !62, !noundef !62 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.p, %bb.o
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.12.0.i.i.i.i.i, %bb.o ], [ 0, %bb.p ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.8.0.i.i.i.i.i, %bb.o ], [ 0, %bb.p ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.lcssa.i.i26.i.i.i.i.i.i, %bb.o ], [ %i.bb, %bb.p ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i.i, i64 318
  %i.br = load i16, ptr %i.bq, align 2, !noalias !33328, !noundef !62
  %i.bs = zext i16 %i.br to i64
  %i.bt = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i, %i.bs
  br i1 %i.bt, label %bb.s, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, %bb.q
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %bb.q ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.q ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ]
  %i.bu = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33329, !noundef !62 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.r, label %bb.q

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.q
  %i.bv = zext i16 %i.by to i64
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bw = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, i64 316
  %i.by = load i16, ptr %i.bx, align 4, !noalias !33329 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 318
  %i.ca = load i16, ptr %i.bz, align 2, !noalias !33328, !noundef !62
  %i.cb = icmp ult i16 %i.by, %i.ca
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #49
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.v, !noalias !33330

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs40k4W9msRzi_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutlINtNtBb_3vec3VecmEE10init_frontCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.cc = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.ce = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i, i64 328
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter662.a = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod663.not.a = icmp eq i64 %xtraiter662.a, 0
  br i1 %lcmp.mod663.not.a, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.u, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ch, %.prol.preheader ], [ %i.cg, %bb.u ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, %bb.u ]
  %prol.iter664.a = phi i64 [ %prol.iter664.next.a, %.prol.preheader ], [ 0, %bb.u ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !33331, !nonnull !62, !noundef !62 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol, i64 320 ; 2 uses
  %prol.iter664.next.a = add i64 %prol.iter664.a, 1 ; 2 uses
  %prol.iter664.cmp.not.a = icmp eq i64 %prol.iter664.next.a, %xtraiter662.a
  br i1 %prol.iter664.cmp.not.a, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33159

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.u
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.u ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.cg, %bb.u ], [ %i.ch, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, %bb.u ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.ci = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.ci, label %.loopexit.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cr, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !33331, !nonnull !62, !noundef !62
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.cj, align 8, !noalias !33331, !nonnull !62, !noundef !62
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.1, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ck, align 8, !noalias !33331, !nonnull !62, !noundef !62
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.2, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.cl, align 8, !noalias !33331, !nonnull !62, !noundef !62
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.3, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.cm, align 8, !noalias !33331, !nonnull !62, !noundef !62
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.4, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.cn, align 8, !noalias !33331, !nonnull !62, !noundef !62
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.5, i64 320
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.co, align 8, !noalias !33331, !nonnull !62, !noundef !62
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.6, i64 320
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.cp, align 8, !noalias !33331, !nonnull !62, !noundef !62 ; 2 uses
  %i.cq = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7, i64 320
  br i1 %i.cq, label %.loopexit.i.i.i.i.i.i, label %.new

bb.v:                                             ; preds = %bb.r
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.critedge.i.i.i.i.i.i.i:                          ; preds = %bb.n
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1418) #49
          to label %.noexc.i.i.i.i.i.i unwind label %.body.i, !noalias !33332

.noexc.i.i.i.i.i.i:                               ; preds = %.critedge.i.i.i.i.i.i.i
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %.prol.loopexit, %.new, %bb.t
  %.sroa.78.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.t ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i, i64 272
  %i.cu = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i, i64 8
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cw, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val10.i.i.i.i.i.i = load i32, ptr %i.cv, align 4, !noalias !33332, !noundef !62 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 8
  %.val11.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !noalias !33332 ; 8 uses
  %.val11.i.i.i.i.i.i562 = ptrtoaddr ptr %.val11.i.i.i.i.i.i to i64
  %i.cz = getelementptr i8, ptr %i.cx, i64 16
  %.val12.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !33332 ; 10 uses
  %i.da = sext i32 %.val10.i.i.i.i.i.i to i64     ; 3 uses
  %i.db = icmp ugt i64 %i.g, %i.da
  br i1 %i.db, label %bb.w, label %bb.z

bb.w:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !noalias !33333, !noundef !62 ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.i.i.i.i) ]
  %i.de = icmp eq i64 %.val12.i.i.i.i.i.i, 0
  br i1 %i.de, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.val12.i.i.i.i.i.i, 2 ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !33334
  %i.df = call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 4) #44, !noalias !33334 ; 11 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.y, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.x
  %i.dh = ptrtoaddr ptr %i.df to i64
  %min.iters.check = icmp ult i64 %.val12.i.i.i.i.i.i, 8
  %i.di = sub i64 %.val11.i.i.i.i.i.i562, %i.dh
  %diff.check = icmp ugt i64 %i.di, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.val12.i.i.i.i.i.i, -8        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.dd, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i.i.i.i.i, i64 %index ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load = load <4 x i32>, ptr %i.dj, align 4, !noalias !33335
  %wide.load563 = load <4 x i32>, ptr %i.dk, align 4, !noalias !33335
  %i.dl = sub <4 x i32> %wide.load, %broadcast.splat
  %i.dm = sub <4 x i32> %wide.load563, %broadcast.splat
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %i.dl, ptr %i.dn, align 4, !noalias !33336
  store <4 x i32> %i.dm, ptr %i.do, align 4, !noalias !33336
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !33189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val12.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564

.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564:    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter665 = and i64 %.val12.i.i.i.i.i.i, 3   ; 2 uses
  %lcmp.mod666.not = icmp eq i64 %xtraiter665, 0
  br i1 %lcmp.mod666.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol

.preheader.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.dq = phi i64 [ %i.du, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564 ] ; 3 uses
  %prol.iter667 = phi i64 [ %prol.iter667.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i.i.i.i.i, i64 %i.dq
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load i32, ptr %i.dr, align 4, !noalias !33335, !noundef !62
  %i.ds = sub i32 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %i.dd
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dq
  store i32 %i.ds, ptr %i.dt, align 4, !noalias !33336
  %i.du = add nuw i64 %i.dq, 1                    ; 2 uses
  %prol.iter667.next = add i64 %prol.iter667, 1   ; 2 uses
  %prol.iter667.cmp.not = icmp eq i64 %prol.iter667.next, %xtraiter665
  br i1 %prol.iter667.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !33190

.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564
  %.unr = phi i64 [ %.ph, %.preheader.i.i.i.i.i.i.i.i.i.i.i.preheader564 ], [ %i.du, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dv = sub i64 %.ph, %.val12.i.i.i.i.i.i
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %.idx.i.i.i.i.i.i.i.i) #49
          to label %.noexc13.i.i.i.i.i.i unwind label %.body.i, !noalias !33332

.noexc13.i.i.i.i.i.i:                             ; preds = %bb.y
  unreachable

.preheader.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i
  %i.dx = phi i64 [ %i.en, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %.unr, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i.i.i.i.i, i64 %i.dx
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.dy, align 4, !noalias !33335, !noundef !62
  %i.dz = sub i32 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.dd
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.dx
  store i32 %i.dz, ptr %i.ea, align 4, !noalias !33336
  %i.eb = add nuw i64 %i.dx, 1                    ; 2 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i.i.i.i.i, i64 %i.eb
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ec, align 4, !noalias !33335, !noundef !62
  %i.ed = sub i32 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %i.dd
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.eb
  store i32 %i.ed, ptr %i.ee, align 4, !noalias !33336
  %i.ef = add nuw i64 %i.dx, 2                    ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i.i.i.i.i, i64 %i.ef
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load i32, ptr %i.eg, align 4, !noalias !33335, !noundef !62
  %i.eh = sub i32 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %i.dd
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ef
  store i32 %i.eh, ptr %i.ei, align 4, !noalias !33336
  %i.ej = add nuw i64 %i.dx, 3                    ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.val11.i.i.i.i.i.i, i64 %i.ej
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load i32, ptr %i.ek, align 4, !noalias !33335, !noundef !62
  %i.el = sub i32 %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %i.dd
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.ej
  store i32 %i.el, ptr %i.em, align 4, !noalias !33336
  %i.en = add nuw i64 %i.dx, 4                    ; 2 uses
  %i.eo = icmp eq i64 %i.en, %.val12.i.i.i.i.i.i
  br i1 %i.eo, label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !33191

bb.z:                                             ; preds = %.loopexit.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.da, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #49
          to label %.noexc14.i.i.i.i.i.i unwind label %.body.i, !noalias !33332

.noexc14.i.i.i.i.i.i:                             ; preds = %bb.z
  unreachable

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRlRINtNtCs40k4W9msRzi_5alloc3vec3VecmEENtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsuNCNvMs1_B1A_NtB1A_8Metadata24group_indices_to_batchess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1y_NCINvMsj_B11_IBZ_B1y_E14extend_trustedINtB4_3MapINtNtNtNtB13_11collections5btree3map4IterlBY_EB2P_EE0E0E0B1I_.exit.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %bb.w
  %.sroa.10.0.i14.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %bb.w ], [ %i.df, %middle.block ], [ %i.df, %.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.df, %.preheader.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %.val9.i.i.i.i.i.i ; 4 uses
  store i64 %.val12.i.i.i.i.i.i, ptr %i.ep, align 8, !noalias !33337
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  store ptr %.sroa.10.0.i14.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !33337
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store i64 %.val12.i.i.i.i.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !33337
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  store i32 %.val10.i.i.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !33337
  %i.eq = add nuw i64 %.val9.i.i.i.i.i.i, 1
  %i.er = icmp eq i64 %i.ba, 0
  br i1 %i.er, label %.loopexit, label %bb.n

.body.i:                                          ; preds = %bb.z, %bb.y, %.critedge.i.i.i.i.i.i.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  store i64 %.val9.i.i.i.i.i.i, ptr %i.au, align 8, !alias.scope !33338, !noalias !33339
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadata12BatchOffsetsEEB1i_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #50, !noalias !33323
  br label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ai
  %indvars.iv = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %i.et, %bb.ai ] ; 2 uses
  %i.et = add nsw i64 %indvars.iv, 1              ; 4 uses
  %i.eu = icmp ult i64 %i.et, %i.g
  br i1 %i.eu, label %bb.af, label %bb.ag

._crit_edge.loopexit.split.loop.exit:             ; preds = %bb.af
  %i.ev = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.ai, %._crit_edge.loopexit.split.loop.exit, %bb.j
  %.sroa.0.1.lcssa = phi i32 [ %.sroa.0.0218, %bb.j ], [ %i.ev, %._crit_edge.loopexit.split.loop.exit ], [ %.sroa.04.0, %bb.ai ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33340)
  %i.ew = load ptr, ptr %i.e, align 8, !alias.scope !33340, !noalias !33341, !noundef !62 ; 2 uses
  %.not.i50 = icmp eq ptr %i.ew, null
  br i1 %.not.i50, label %_RINvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB6_5EntrylINtNtBe_3vec3VecmEE10and_modifyNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB1R_8Metadata24group_indices_to_batches0EB1Z_.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.ex = load i64, ptr %i.l, align 8, !alias.scope !33340, !noalias !33341, !noundef !62
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ae, %bb.aa
  %.sroa.3.0.i.i = phi i64 [ %i.ex, %bb.aa ], [ %i.fn, %bb.ae ] ; 3 uses
  %.sroa.0.0.i.i = phi ptr [ %i.ew, %bb.aa ], [ %i.fm, %bb.ae ] ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 272 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 318
  %i.fa = load i16, ptr %i.ez, align 2, !noalias !33342, !noundef !62 ; 2 uses
  %i.fb = zext i16 %i.fa to i64                   ; 3 uses
  %.idx = shl nuw nsw i64 %i.fb, 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx
  %i.fd = icmp eq i16 %i.fa, 0
  br i1 %i.fd, label %._crit_edge559, label %.lr.ph558

bb.ac:                                            ; preds = %.lr.ph558
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i556, i64 4 ; 2 uses
  %i.ff = add nuw nsw i64 %.sroa.8.0.i.i.i555, 1
  %i.fg = icmp eq ptr %i.fe, %i.fc
  br i1 %i.fg, label %._crit_edge559, label %.lr.ph558

.lr.ph558:                                        ; preds = %bb.ab, %bb.ac
  %.sroa.0.03.i.i.i556 = phi ptr [ %i.fe, %bb.ac ], [ %i.ey, %bb.ab ] ; 2 uses
  %.sroa.8.0.i.i.i555 = phi i64 [ %i.ff, %bb.ac ], [ 0, %bb.ab ] ; 4 uses
  %.val6.i.i.i = load i32, ptr %.sroa.0.03.i.i.i556, align 4, !noalias !33342, !noundef !62
  %i.fh = call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %.sroa.0.1.lcssa, i32 %.val6.i.i.i)
  switch i8 %i.fh, label %bb.ad [
    i8 -1, label %._crit_edge559
    i8 0, label %bb.aj
    i8 1, label %bb.ac
  ]

bb.ad:                                            ; preds = %.lr.ph558
  unreachable

._crit_edge559:                                   ; preds = %bb.ac, %.lr.ph558, %bb.ab
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.fb, %bb.ab ], [ %i.fb, %bb.ac ], [ %.sroa.8.0.i.i.i555, %.lr.ph558 ] ; 3 uses
  %i.fi = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.fi, label %_RINvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB6_5EntrylINtNtBe_3vec3VecmEE10and_modifyNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB1R_8Metadata24group_indices_to_batches0EB1Z_.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge559
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 320
  %i.fk = icmp samesign ult i64 %.sroa.4.0.i.ph.i.i, 12
  call void @llvm.assume(i1 %i.fk)
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.4.0.i.ph.i.i
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !33342, !nonnull !62, !noundef !62
  %i.fn = add i64 %.sroa.3.0.i.i, -1
  br label %bb.ab

bb.af:                                            ; preds = %.lr.ph
  %i.fo = load i32, ptr %.sroa.05.0217, align 4, !noundef !62
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.et
  %i.fq = load i32, ptr %i.fp, align 4, !noundef !62
  %.not44 = icmp ult i32 %i.fo, %i.fq
  br i1 %.not44, label %._crit_edge.loopexit.split.loop.exit, label %bb.ai

bb.ag:                                            ; preds = %.lr.ph
  %4 = add nsw i64 %i.ag, 1
  %umax.le = call i64 @llvm.umax.i64(i64 %i.g, i64 %4)
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %umax.le, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @686) #49
          to label %bb.ah unwind label %.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag, %bb.d
  unreachable

bb.ai:                                            ; preds = %bb.af
  %exitcond.not = icmp eq i64 %i.et, %i.ad
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph558
  %.sroa.05.0.val = load i32, ptr %.sroa.05.0217, align 4
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %i.fr, i64 %.sroa.8.0.i.i.i555 ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !alias.scope !33343, !noalias !33344, !noundef !62 ; 3 uses
  %i.fv = load i64, ptr %i.fs, align 8, !range !65, !alias.scope !33343, !noalias !33344, !noundef !62
  %i.fw = icmp eq i64 %i.fu, %i.fv
  br i1 %i.fw, label %bb.ak, label %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs1akgR21QTtx_7roaring(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i unwind label %.loopexit126

_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i: ; preds = %bb.ak, %bb.aj
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !alias.scope !33343, !noalias !33344, !nonnull !62, !noundef !62
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.fu
  store i32 %.sroa.05.0.val, ptr %i.fz, align 4, !noalias !33344
  %i.ga = add i64 %i.fu, 1
  store i64 %i.ga, ptr %i.ft, align 8, !alias.scope !33343, !noalias !33344
  br label %_RINvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB6_5EntrylINtNtBe_3vec3VecmEE10and_modifyNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB1R_8Metadata24group_indices_to_batches0EB1Z_.exit

_RINvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB6_5EntrylINtNtBe_3vec3VecmEE10and_modifyNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB1R_8Metadata24group_indices_to_batches0EB1Z_.exit: ; preds = %._crit_edge559, %._crit_edge, %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i
  %.sroa.783.0123 = phi ptr [ %.sroa.0.0.i.i, %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i ], [ null, %._crit_edge ], [ %.sroa.0.0.i.i, %._crit_edge559 ] ; 10 uses
  %.sroa.1284.0121 = phi i64 [ %.sroa.3.0.i.i, %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i ], [ 0, %._crit_edge ], [ 0, %._crit_edge559 ]
  %.sroa.16.0119 = phi i64 [ %.sroa.8.0.i.i.i555, %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i ], [ undef, %._crit_edge ], [ %.sroa.4.0.i.ph.i.i, %._crit_edge559 ] ; 11 uses
  %.sroa.20.0117 = phi i32 [ %i.ac, %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i ], [ %.sroa.0.1.lcssa, %._crit_edge ], [ %.sroa.0.1.lcssa, %._crit_edge559 ] ; 5 uses
  %.sroa.080.0.sroa.phi = phi ptr [ inttoptr (i64 8 to ptr), %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i ], [ %i.l, %._crit_edge ], [ %i.l, %._crit_edge559 ] ; 3 uses
  %.sroa.080.0.sroa.phi311 = phi ptr [ inttoptr (i64 16 to ptr), %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i ], [ %i.m, %._crit_edge ], [ %i.m, %._crit_edge559 ] ; 2 uses
  %.sroa.080.0 = phi ptr [ null, %_RNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB7_8Metadata24group_indices_to_batches0Bf_.exit.i ], [ %i.e, %._crit_edge ], [ %i.e, %._crit_edge559 ] ; 4 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.gb = call noundef align 4 dereferenceable_or_null(4) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 4) #44 ; 9 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.al, label %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, !prof !61

bb.al:                                            ; preds = %_RINvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB6_5EntrylINtNtBe_3vec3VecmEE10and_modifyNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB1R_8Metadata24group_indices_to_batches0EB1Z_.exit
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 4) #49
          to label %.noexc59 unwind label %.loopexit.split-lp

.noexc59:                                         ; preds = %bb.al
  unreachable

_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvMs2_NtNtNtNtCs40k4W9msRzi_5alloc11collections5btree3map5entryINtB6_5EntrylINtNtBe_3vec3VecmEE10and_modifyNCNvMs1_NtNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16format8metadataNtB1R_8Metadata24group_indices_to_batches0EB1Z_.exit
  %i.gd = load i32, ptr %.sroa.05.0217, align 4, !noundef !62
  store i32 %i.gd, ptr %i.gb, align 4
  %i.ge = icmp eq ptr %.sroa.080.0, null
  br i1 %i.ge, label %bb.dh, label %bb.am

bb.am:                                            ; preds = %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit
  %.not.i.i = icmp eq ptr %.sroa.783.0123, null
  br i1 %.not.i.i, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %bb.am
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !33345
  %i.gf = call noalias noundef align 8 dereferenceable_or_null(320) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 320, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !33345 ; 8 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.ao, label %bb.ap, !prof !61

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 320) #49
          to label %.noexc.i.i unwind label %bb.df, !noalias !33345

.noexc.i.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  store ptr null, ptr %i.gf, align 8, !noalias !33345
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 318
  store ptr %i.gf, ptr %.sroa.080.0, align 8, !noalias !33345
  store i64 0, ptr %.sroa.080.0.sroa.phi, align 8, !noalias !33345
  store i16 1, ptr %i.gh, align 2, !noalias !33346
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 272
  store i32 %.sroa.20.0117, ptr %i.gi, align 8, !noalias !33346
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 1, ptr %i.gj, align 8, !noalias !33347
  %.sroa.5.0..sroa_idx21.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store ptr %i.gb, ptr %.sroa.5.0..sroa_idx21.i.i, align 8, !noalias !33347
  %.sroa.6.0..sroa_idx23.i.i = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx23.i.i, align 8, !noalias !33347
  br label %bb.dg

bb.aq:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.520.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1623.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !33348)
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.783.0123, i64 318 ; 4 uses
  %i.gl = load i16, ptr %i.gk, align 2, !noalias !33349, !noundef !62 ; 3 uses
  %i.gm = icmp ugt i16 %i.gl, 10
  br i1 %i.gm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.gn = icmp ult i64 %.sroa.16.0119, 5
  br i1 %i.gn, label %bb.ay, label %bb.av

bb.as:                                            ; preds = %bb.aq
  %i.go = zext nneg i16 %i.gl to i64              ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.783.0123, i64 272 ; 2 uses
  %i.gq = add i64 %.sroa.16.0119, 1               ; 3 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.gq, %i.go
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.sroa.16.0119 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 %.sroa.20.0117, ptr %i.gr, align 4, !alias.scope !33350, !noalias !33351
  call void @llvm.experimental.noalias.scope.decl(metadata !33352)
  br label %bb.bj

bb.au:                                            ; preds = %bb.as
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gq
  %i.gt = sub nsw i64 %i.go, %.sroa.16.0119       ; 2 uses
  %i.gu = shl nsw i64 %i.gt, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr nonnull align 4 %i.gr, i64 %i.gu, i1 false), !alias.scope !33350, !noalias !33351
  store i32 %.sroa.20.0117, ptr %i.gr, align 4, !alias.scope !33350, !noalias !33351
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.783.0123, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %.sroa.16.0119
  %i.gx = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %i.gq
  %i.gy = mul nsw i64 %i.gt, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gx, ptr nonnull align 8 %i.gw, i64 %i.gy, i1 false), !alias.scope !33353, !noalias !33354
  br label %bb.bj

bb.av:                                            ; preds = %bb.ar
  switch i64 %.sroa.16.0119, label %bb.aw [
    i64 5, label %bb.ay
    i64 6, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  %i.gz = add i64 %.sroa.16.0119, -7
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av, %bb.ar
  %.sroa.09.0.i.i.i.i = phi i1 [ true, %bb.ax ], [ true, %bb.aw ], [ false, %bb.ar ], [ false, %bb.av ]
  %.sroa.510.0.i.i.i.i = phi i64 [ 0, %bb.ax ], [ %i.gz, %bb.aw ], [ %.sroa.16.0119, %bb.ar ], [ %.sroa.16.0119, %bb.av ] ; 6 uses
  %.sroa.013.0.i.i.i.i = phi i64 [ 5, %bb.ax ], [ 6, %bb.aw ], [ 4, %bb.ar ], [ %.sroa.16.0119, %bb.av ] ; 5 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !33355
  %i.ha = call noalias noundef align 8 dereferenceable_or_null(320) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 320, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !33355 ; 8 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.az, label %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodelINtNtB6_3vec3VecmEEE13new_uninit_inCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i, !prof !61

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 320) #49
          to label %.noexc.i.i.i.i unwind label %bb.be, !noalias !33349

.noexc.i.i.i.i:                                   ; preds = %bb.az
  unreachable

_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodelINtNtB6_3vec3VecmEEE13new_uninit_inCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i: ; preds = %bb.ay
  store ptr null, ptr %i.ha, align 8, !noalias !33355
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 318
  call void @llvm.experimental.noalias.scope.decl(metadata !33356)
  %i.hd = load i16, ptr %i.gk, align 2, !noalias !33357, !noundef !62
  %i.he = zext i16 %i.hd to i64
  %i.hf = xor i64 %.sroa.013.0.i.i.i.i, -1
  %i.hg = add nsw i64 %i.he, %i.hf                ; 5 uses
  %i.hh = trunc i64 %i.hg to i16
  store i16 %i.hh, ptr %i.hc, align 2, !alias.scope !33356, !noalias !33358
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.783.0123, i64 8 ; 2 uses
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.hi, i64 %.sroa.013.0.i.i.i.i ; 3 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.hj, align 8, !noalias !33357 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !33357 ; 3 uses
  %i.hk = icmp ult i64 %i.hg, 12
  br i1 %i.hk, label %bb.bf, label %bb.ba, !prof !69

bb.ba:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodelINtNtB6_3vec3VecmEEE13new_uninit_inCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i
  invoke void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hg, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @737) #49
          to label %bb.bd unwind label %bb.bb, !noalias !33357

bb.bb:                                            ; preds = %bb.ba
  %i.hl = landingpad { ptr, i32 }
          cleanup
  %i.hm = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.hm, label %.thread.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hn = shl nuw i64 %.sroa.0.0.copyload.i.i.i.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.hn, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !33357
  br label %.thread.i.i.i.i.i

bb.bd:                                            ; preds = %bb.ba
  unreachable

.thread.i.i.i.i.i:                                ; preds = %bb.bc, %bb.bb
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ha, i64 noundef 320, i64 noundef 8) #44, !noalias !33355
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecmEECsaSXGKSfiU2E_10lance_file.exit16.sink.split.i.i

end_hunk_8
begin_hunk_9_@_RNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB4_6Writer14encode_columns:bb.a

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i.i.i.i: ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !36210
  %i.ab = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef range(i64 1, 9) 8) #44, !noalias !36210 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.m, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36208
  %.val7.i.i.i.i.i = load i64, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !alias.scope !36211, !noalias !36209, !noundef !62 ; 2 uses
  %i.ad = icmp eq i64 %.val7.i.i.i.i.i, 0
  br i1 %i.ad, label %bb.ac, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val6.i.i.i.i.i = load ptr, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !alias.scope !36212, !noalias !36209, !nonnull !62, !noundef !62
  %i.ae = shl nuw i64 %.val7.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !36213
  br label %bb.ac

bb.l:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.c) #50
          to label %bb.aa unwind label %bb.z, !noalias !36208

bb.m:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 96) #49
          to label %.noexc.i.i.i.i.i unwind label %bb.l, !noalias !36208

.noexc.i.i.i.i.i:                                 ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !36208
  store i64 4, ptr %i.d, align 8, !noalias !36208
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36208
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false), !noalias !36209
  call void @llvm.experimental.noalias.scope.decl(metadata !36214)
  call void @llvm.experimental.noalias.scope.decl(metadata !36215)
  call void @llvm.experimental.noalias.scope.decl(metadata !36216)
  call void @llvm.experimental.noalias.scope.decl(metadata !36217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36218
  br label %bb.o

bb.o:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, %bb.n
  %i.ag = phi ptr [ %i.au, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ], [ %i.ab, %bb.n ]
  %.sroa.9.0.copyload17.i = phi i64 [ %i.aw, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ], [ 1, %bb.n ] ; 6 uses
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB45_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.s unwind label %bb.r, !noalias !36219

bb.p:                                             ; preds = %bb.w, %bb.r
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ax, %bb.w ], [ %i.al, %bb.r ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val6.i.i.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !36220, !noalias !36219, !noundef !62 ; 2 uses
  %i.ai = icmp eq i64 %.val6.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %.body.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !36221, !noalias !36219, !nonnull !62, !noundef !62
  %i.ak = shl nuw i64 %.val6.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !36222
  br label %.body.i.i.i.i.i

bb.r:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.s:                                             ; preds = %bb.o
  %i.am = load i64, ptr %i.a, align 8, !range !64, !noalias !36223, !noundef !62
  %.not.i.i8.i.i.i.i.i = icmp eq i64 %i.am, -1
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = icmp samesign ult i64 %.sroa.9.0.copyload17.i, 384307168202282326
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i64, ptr %i.d, align 8, !range !65, !alias.scope !36224, !noalias !36225, !noundef !62
  %i.ap = icmp eq i64 %.sroa.9.0.copyload17.i, %i.ao
  br i1 %i.ap, label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i.i.i.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !36220, !noalias !36219, !noundef !62 ; 2 uses
  %i.ar = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.ar, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !36221, !noalias !36219, !nonnull !62, !noundef !62
  %i.at = shl nuw i64 %.val4.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.at, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !36226
  br label %bb.y

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.9.0.copyload17.i, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i unwind label %bb.w, !noalias !36225

_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !36224, !noalias !36225
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i: ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i, %bb.t
  %i.au = phi ptr [ %.pre.i.i.i.i.i, %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecIBv_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB6_5boxed3BoxDNtNtNtBN_6future6future6Futurep6OutputINtNtBN_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBN_6marker4SendEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.ag, %bb.t ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.sroa.9.0.copyload17.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !36223
  %i.aw = add nuw nsw i64 %.sroa.9.0.copyload17.i, 1 ; 2 uses
  store i64 %i.aw, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !36224, !noalias !36225
  br label %bb.o

bb.w:                                             ; preds = %_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB20_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3Z_6Writer14encode_columnss_0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCs63DIHKhvmTb_10lance_core5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB45_.exit.i.i.i.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.p unwind label %bb.x, !noalias !36223

bb.x:                                             ; preds = %bb.w
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !36223
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.q, %bb.p
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecIBC_INtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.d) #50
          to label %.body.i2 unwind label %bb.z, !noalias !36208

bb.y:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36208
  %.sroa.0.0.copyload13.i = load i64, ptr %i.d, align 8, !noalias !36227
  %.sroa.7.0.copyload15.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !36227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36208
  br label %bb.ac

bb.z:                                             ; preds = %.body.i.i.i.i.i, %bb.l
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !36208
  unreachable

bb.aa:                                            ; preds = %bb.l, %bb.h
  %.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.af, %bb.l ] ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8, !alias.scope !36211, !noalias !36209, !noundef !62 ; 2 uses
  %i.ba = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.ba, label %.body.i2, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !alias.scope !36212, !noalias !36209, !nonnull !62, !noundef !62
  %i.bb = shl nuw i64 %.val5.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !36228
  br label %.body.i2

.body.i2:                                         ; preds = %bb.ab, %bb.aa, %.body.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i, %bb.aa ], [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.ph.i.i.i.i.i, %bb.ab ] ; 2 uses
  %i.bc = load i8, ptr %i.f, align 8, !range !85, !noalias !36201, !noundef !62
  %.not.i = icmp eq i8 %i.bc, -1
  br i1 %.not.i, label %common.resume, label %bb.am

bb.ac:                                            ; preds = %bb.y, %bb.k, %bb.j
  %.sroa.9.0.i = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %.sroa.9.0.copyload17.i, %bb.y ] ; 5 uses
  %.sroa.7.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ inttoptr (i64 8 to ptr), %bb.k ], [ %.sroa.7.0.copyload15.i, %bb.y ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ 0, %bb.j ], [ 0, %bb.k ], [ %.sroa.0.0.copyload13.i, %bb.y ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36199
  %i.bd = load i8, ptr %i.f, align 8, !range !85, !noalias !36201, !noundef !62
  %.not.not.i = icmp eq i8 %i.bd, -1
  br i1 %.not.not.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !36229)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.i, ptr %i.be, align 8, !alias.scope !36230, !noalias !36231
  %.sroa.4.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.i, ptr %.sroa.4.0..sroa_idx.i3, align 8, !alias.scope !36230, !noalias !36231
  %.sroa.5.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.9.0.i, ptr %.sroa.5.0..sroa_idx.i4, align 8, !alias.scope !36230, !noalias !36231
  store i8 -1, ptr %0, align 8, !alias.scope !36232, !noalias !36233
  br label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3S_6Writer14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6E_NtNtB6_7convert10InfallibleB7S_ENCINvXso_B6G_IB6E_IB5h_B5g_EB7S_EINtNtNtB4_6traits7collect12FromIteratorIB6E_B5g_B7S_EE9from_iterBQ_E0B9R_EB3Y_.exit

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !36231
  %i.bf = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.bf, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph

bb.af:                                            ; preds = %.lr.ph
  %i.bg = icmp eq i64 %i.bi, %.sroa.9.0.i
  br i1 %i.bg, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ae, %bb.af
  %.sroa.0.0.i.i.i.i33 = phi i64 [ %i.bi, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.i, i64 %.sroa.0.0.i.i.i.i33
  %i.bi = add nuw nsw i64 %.sroa.0.0.i.i.i.i33, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bh)
          to label %bb.af unwind label %bb.ah, !noalias !36234

bb.ag:                                            ; preds = %.lr.ph35
  %i.bj = add nuw nsw i64 %.sroa.0.1.i.i.i.i34, 1 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %.sroa.9.0.i
  br i1 %i.bk, label %.body.i.i, label %.lr.ph35

bb.ah:                                            ; preds = %.lr.ph
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = icmp eq i64 %i.bi, %.sroa.9.0.i
  br i1 %i.bm, label %.body.i.i, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.ah, %bb.ag
  %.sroa.0.1.i.i.i.i34 = phi i64 [ %i.bj, %bb.ag ], [ %i.bi, %bb.ah ] ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.i, i64 %.sroa.0.1.i.i.i.i34
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 dereferenceable(24) %i.bn) #50
          to label %bb.ag unwind label %bb.ai, !noalias !36234

bb.ai:                                            ; preds = %.lr.ph35
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !36235
  unreachable

.body.i.i:                                        ; preds = %bb.ag, %bb.ah
  %i.bp = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.bp, label %common.resume, label %bb.aj

bb.aj:                                            ; preds = %.body.i.i
  %i.bq = mul nuw i64 %.sroa.0.0.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !36234
  br label %common.resume

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.af, %bb.ae
  %i.br = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %i.br, label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3S_6Writer14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6E_NtNtB6_7convert10InfallibleB7S_ENCINvXso_B6G_IB6E_IB5h_B5g_EB7S_EINtNtNtB4_6traits7collect12FromIteratorIB6E_B5g_B7S_EE9from_iterBQ_E0B9R_EB3Y_.exit, label %bb.ak

bb.ak:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.bs = mul nuw i64 %.sroa.0.0.i, 24
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !36234
  br label %_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3S_6Writer14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6E_NtNtB6_7convert10InfallibleB7S_ENCINvXso_B6G_IB6E_IB5h_B5g_EB7S_EINtNtNtB4_6traits7collect12FromIteratorIB6E_B5g_B7S_EE9from_iterBQ_E0B9R_EB3Y_.exit

bb.al:                                            ; preds = %bb.am
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !36201
  unreachable

bb.am:                                            ; preds = %.body.i2
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %common.resume unwind label %bb.al, !noalias !36201

_RINvNtNtCscI6d9CVNmLh_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterTjINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEINtNtNtB1T_3vec9into_iter8IntoIteryEENCNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB3S_6Writer14encode_columnss_0EINtB3f_3VecINtNtB6_3pin3PinINtNtB1T_5boxed3BoxDNtNtNtB6_6future6future6Futurep6OutputINtNtB6_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB6_6marker4SendEL_EEEIB6E_NtNtB6_7convert10InfallibleB7S_ENCINvXso_B6G_IB6E_IB5h_B5g_EB7S_EINtNtNtB4_6traits7collect12FromIteratorIB6E_B5g_B7S_EE9from_iterBQ_E0B9R_EB3Y_.exit: ; preds = %bb.ad, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecIBw_INtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBO_6future6future6Futurep6OutputINtNtBO_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBO_6marker4SendEL_EEEENtNtNtBO_3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36201
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB4_6Writer15advance_columns(ptr noalias nofree noundef align 8 captures(none) dereferenceable(440) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i64, ptr %i.c, align 8, !noundef !62 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %.promoted = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.0.i7 = phi i64 [ %.promoted, %.lr.ph ], [ %.sroa.0.0.i, %bb.d ]
  %.sroa.0.06 = phi ptr [ %1, %.lr.ph ], [ %i.j, %bb.d ] ; 4 uses
  %i.h = load i64, ptr %.sroa.0.06, align 8, !noundef !62 ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.d
  br i1 %i.i, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @760) #49
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !62
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !62, !noundef !62
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !62, !align !63, !noundef !62 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !range !92, !invariant.load !62
  %i.s = add nsw i64 %i.r, -1
  %i.t = and i64 %i.s, -16
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !62, !nonnull !62
  %i.y = tail call noundef i64 %i.x(ptr noundef nonnull %i.v)
  %i.z = add i64 %i.y, %i.l                       ; 2 uses
  store i64 %i.z, ptr %i.k, align 8
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.z, i64 %.sroa.0.0.i7) ; 2 uses
  store i64 %.sroa.0.0.i, ptr %i.g, align 8
  %i.aa = icmp eq ptr %i.j, %i.a
  br i1 %i.aa, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06writerNtB4_6Writer18ensure_initialized(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(440) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !range !64, !noundef !62
  %.not = icmp eq i64 %i.g, -1
  br i1 %.not, label %bb.c, label %.thread

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.pr = load i64, ptr %i.f, align 8
  %.not16 = icmp eq i64 %.pr, -1
  br i1 %.not16, label %bb.n, label %.thread, !prof !36248

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !62, !noundef !62 ; 6 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.i, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke void @_RNvXs7_NtNtCs63DIHKhvmTb_10lance_core9datatypes6schemaNtB5_6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE8try_from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l)
          to label %bb.h unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !36249
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.d, align 8, !range !64, !noundef !62 ; 2 uses
  %i.q = icmp eq i64 %i.p, -1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.r, i64 56, i1 false)
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  %i.s = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !36250
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit17

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaE9drop_slowCs4ytUTZt2Gw9_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit17

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit17: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.p

bb.k:                                             ; preds = %bb.h
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.510.0.copyload = load i64, ptr %.sroa.510.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  store i64 %i.p, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.sroa.510.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %i.u = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !36251
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema6schema6SchemaEECsaSXGKSfiU2E_10lance_file.exit19
end_hunk_9
begin_hunk_10_@_RNvNtCsaSXGKSfiU2E_10lance_file6reader17describe_encoding:bb.a
  %.val.i = load i64, ptr %i.ca, align 8, !alias.scope !37687 ; 2 uses
  %i.cb = icmp eq i64 %.val.i, 0
  br i1 %i.cb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyECsaSXGKSfiU2E_10lance_file.exit, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.val1.i = load ptr, ptr %i.cc, align 8, !alias.scope !37687, !nonnull !62, !noundef !62
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !37687
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyECsaSXGKSfiU2E_10lance_file.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs1nbc6HIrAcO_11prost_types8protobuf3AnyECsaSXGKSfiU2E_10lance_file.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.n

bb.ae:                                            ; preds = %bb.p
  %i.cd = load i64, ptr %i.l, align 8, !range !148, !noundef !62
  %i.ce = icmp eq i64 %i.cd, -3
  br i1 %i.ce, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !62, !align !63, !noundef !62
  store ptr %i.cg, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs0_NtCskAO0uQb8M5a_5prost5errorNtB5_11DecodeErrorNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @781, ptr noundef nonnull %i.h)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit74 unwind label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %i.l, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs3s_NtNtCsjjpCCFGI3ul_14lance_encoding6format2pbNtB6_13ArrayEncodingNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @780, ptr noundef nonnull %i.j)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit75 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.k)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingECsaSXGKSfiU2E_10lance_file.exit unwind label %bb.z, !inline_history !1

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit75: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %i.k)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingECsaSXGKSfiU2E_10lance_file.exit76 unwind label %bb.s, !inline_history !1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingECsaSXGKSfiU2E_10lance_file.exit76: ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit74, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingECsaSXGKSfiU2E_10lance_file.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ab

bb.aj:                                            ; preds = %bb.af
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i) #50
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb13ArrayEncodingECsaSXGKSfiU2E_10lance_file.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsaSXGKSfiU2E_10lance_file.exit74: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCskAO0uQb8M5a_5prost5error11DecodeErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ai

bb.ak:                                            ; preds = %bb.m
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 21) #49
  unreachable

bb.al:                                            ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.av, ptr noundef nonnull align 1 dereferenceable(21) @782, i64 21, i1 false)
  store i64 21, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 21, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.n

bb.am:                                            ; preds = %bb.d
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 13) #49
  unreachable

bb.an:                                            ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.z, ptr noundef nonnull align 1 dereferenceable(13) @783, i64 13, i1 false)
  store i64 13, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.z, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 13, ptr %.sroa.642.0..sroa_idx, align 8
  br label %bb.n

bb.ao:                                            ; preds = %bb.b
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 7) #49
  unreachable

bb.ap:                                            ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @784, i64 7, i1 false)
  store i64 7, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %.sroa.645.0..sroa_idx, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRTReyEE6map_oryNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths0EB13_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.k, align 8, !alias.scope !37762, !noundef !62
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRTReyEE6map_oryNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths0EB13_.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRTReyEE6map_oryNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths0EB13_.exit: ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.idx37 = mul nuw nsw i64 %2, 24                ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx37
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRTReyEE6map_oryNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths0EB13_.exit, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ %1, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRTReyEE6map_oryNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths0EB13_.exit ] ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 16
  %.val3.i = load i64, ptr %i.q, align 8, !noalias !37763, !noundef !62
  %i.r = icmp eq i64 %.val3.i, %.sroa.02.0.i
  br i1 %i.r, label %bb.c, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTReyEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss_0EB1L_.exit

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTReyEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss_0EB1L_.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !37764
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37765
  %i.s = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.idx37, i64 noundef range(i64 1, 9) 8) #44, !noalias !37765 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTReyEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss_0EB1L_.exit
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx37) #49, !noalias !37764
  unreachable

bb.e:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterTReyEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss_0EB1L_.exit
  store i64 %2, ptr %i.f, align 8, !noalias !37764
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.s, ptr %i.u, align 8, !noalias !37764
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37766)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37767)
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.val15.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.aa, %bb.g ] ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.val15.i.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !37768
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !37769
  store ptr %i.x, ptr %i.d, align 8, !noalias !37769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !37769
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.c, align 8, !noalias !37769
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !37769
  store ptr %i.d, ptr %i.b, align 8, !noalias !37769
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRReNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !37769
  store ptr %i.c, ptr %i.w, align 8, !noalias !37769
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRyNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !37769
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @569, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %.body.i, !noalias !37770

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !37769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !37769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !37769
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %.val15.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !37771
  %i.aa = add nuw nsw i64 %.val15.i.i.i.i.i.i, 1  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !37768
  %i.ab = icmp eq i64 %i.aa, %2
  br i1 %i.ab, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterTReyEENCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss0_0EE9from_iterB3k_.exit, label %bb.f

common.resume:                                    ; preds = %.body18, %bb.u, %.body, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %.body.i ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body19, %.body18 ], [ %eh.lpad-body19, %bb.u ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store i64 %.val15.i.i.i.i.i.i, ptr %i.v, align 8, !alias.scope !37772, !noalias !37773
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtBG_6string6StringEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.f) #50, !noalias !37764
  br label %common.resume

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterTReyEENCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss0_0EE9from_iterB3k_.exit: ; preds = %bb.g
  store i64 %2, ptr %i.v, align 8, !alias.scope !37772, !noalias !37773
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !37764
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !62, !noundef !62 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !62 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !37774)
  %.idx.i = mul nuw nsw i64 %i.ag, 24             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i ; 2 uses
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RINvNtCs40k4W9msRzi_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.h

_RINvNtCs40k4W9msRzi_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterTReyEENCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss0_0EE9from_iterB3k_.exit
  store i64 0, ptr %i.j, align 8
  %.sroa.531.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.531.0..sroa_idx62, align 8
  %.sroa.634.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.634.0..sroa_idx63, align 8
  br label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i

bb.h:                                             ; preds = %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterTReyEENCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengthss0_0EE9from_iterB3k_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ae, i64 8
  %.val78.i = load ptr, ptr %i.ak, align 8, !alias.scope !37774, !noalias !37775, !nonnull !62, !noundef !62
  %i.al = getelementptr i8, ptr %i.ae, i64 16
  %.val79.i = load i64, ptr %i.al, align 8, !alias.scope !37774, !noalias !37775, !noundef !62 ; 6 uses
  %gepdiff.i = add nsw i64 %.idx.i, -24
  %i.am = udiv exact i64 %gepdiff.i, 24
  %i.an = shl nuw nsw i64 %i.am, 1                ; 2 uses
  %i.ao = add i64 %.val79.i, %i.an                ; 3 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  br i1 %i.ap, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsaSXGKSfiU2E_10lance_file.exit.i, label %.preheader.i.preheader, !prof !61

.preheader.i.preheader:                           ; preds = %bb.h
  %i.aq = icmp eq i64 %i.ag, 1
  br i1 %i.aq, label %.preheader.i._crit_edge, label %.lr.ph71

.preheader.i:                                     ; preds = %.lr.ph71
  %i.ar = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ah
  br i1 %i.as, label %.preheader.i._crit_edge, label %.lr.ph71

.lr.ph71:                                         ; preds = %.preheader.i.preheader, %.preheader.i
  %.sroa.01.0.i.i70 = phi i64 [ %i.av, %.preheader.i ], [ %i.ao, %.preheader.i.preheader ] ; 2 uses
  %i.at = phi ptr [ %i.ar, %.preheader.i ], [ %i.aj, %.preheader.i.preheader ] ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %.val9.i.i = load i64, ptr %i.au, align 8, !alias.scope !37774, !noalias !37776, !noundef !62
  %i.av = add i64 %.val9.i.i, %.sroa.01.0.i.i70   ; 3 uses
  %i.aw = icmp ult i64 %i.av, %.sroa.01.0.i.i70
  br i1 %i.aw, label %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsaSXGKSfiU2E_10lance_file.exit.i, label %.preheader.i

.preheader.i._crit_edge:                          ; preds = %.preheader.i, %.preheader.i.preheader
  %.sroa.01.0.i.i.lcssa = phi i64 [ %i.ao, %.preheader.i.preheader ], [ %i.av, %.preheader.i ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !37777
  %.not.i.i.i8 = icmp slt i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %.not.i.i.i8, label %bb.k, label %bb.i, !prof !86

bb.i:                                             ; preds = %.preheader.i._crit_edge
  %i.ax = icmp eq i64 %.sroa.01.0.i.i.lcssa, 0
  br i1 %i.ax, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !37778
  %i.ay = call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.sroa.01.0.i.i.lcssa, i64 noundef range(i64 1, 9) 1) #44, !noalias !37778 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.k, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.i

bb.k:                                             ; preds = %bb.j, %.preheader.i._crit_edge
  %.sroa.4.0.ph.i.i10 = phi i64 [ 1, %bb.j ], [ 0, %.preheader.i._crit_edge ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i10, i64 %.sroa.01.0.i.i.lcssa) #49
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.k
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %bb.j, %bb.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.i ], [ %i.ay, %bb.j ] ; 3 uses
  store i64 %.sroa.01.0.i.i.lcssa, ptr %i.a, align 8, !noalias !37777
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %i.ba, align 8, !noalias !37777
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.bb, align 8, !noalias !37777
  call void @llvm.experimental.noalias.scope.decl(metadata !37779)
  call void @llvm.experimental.noalias.scope.decl(metadata !37780)
  %i.bc = icmp ugt i64 %.val79.i, %.sroa.01.0.i.i.lcssa
  br i1 %i.bc, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i, !prof !61

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.i
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.val79.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.m, !noalias !37777

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i
  %i.bd = load i64, ptr %i.bb, align 8, !alias.scope !37781, !noalias !37777, !noundef !62 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, -1
  call void @llvm.assume(i1 %i.be)
  %.pre.i = load ptr, ptr %i.ba, align 8, !alias.scope !37781, !noalias !37777
  br label %bb.l

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsaSXGKSfiU2E_10lance_file.exit.i
  %.not.i.i80.i = icmp samesign eq i64 %.val79.i, 0
  br i1 %.not.i.i80.i, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i, %.noexc.i
  %i.bf = phi ptr [ %.pre.i, %.noexc.i ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i ] ; 2 uses
  %i.bg = phi i64 [ %i.bd, %.noexc.i ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %.val78.i, i64 %.val79.i, i1 false), !noalias !37782
  br label %bb.o

_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph71, %bb.h
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #49
          to label %.noexc11 unwind label %bb.q

.noexc11:                                         ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsaSXGKSfiU2E_10lance_file.exit.i
  unreachable

bb.m:                                             ; preds = %.invoke.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.thread.i.i.i
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i9 = load i64, ptr %i.a, align 8, !noalias !37777 ; 2 uses
  %i.bj = icmp eq i64 %.val.i9, 0
  br i1 %i.bj, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val76.i = load ptr, ptr %i.ba, align 8, !noalias !37777, !nonnull !62, !noundef !62
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val76.i, i64 noundef %.val.i9, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !37777
  br label %.body

bb.o:                                             ; preds = %bb.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i
  %i.bk = phi ptr [ %i.bf, %bb.l ], [ %.sroa.10.0.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  %i.bl = phi i64 [ %i.bg, %bb.l ], [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i ]
  %i.bm = add i64 %i.bl, %.val79.i                ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %i.bo = sub nsw i64 %.sroa.01.0.i.i.lcssa, %i.bm ; 2 uses
  %i.bp = icmp eq i64 %i.ag, 1
  br i1 %i.bp, label %_RINvNtCs40k4W9msRzi_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsaSXGKSfiU2E_10lance_file.exit92.i, %.lr.ph.preheader.i
  %.sroa.012.214.i = phi ptr [ %i.br, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsaSXGKSfiU2E_10lance_file.exit92.i ], [ %i.aj, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.035.313.i = phi ptr [ %i.bw, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsaSXGKSfiU2E_10lance_file.exit92.i ], [ %i.bq, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.26.312.i = phi i64 [ %i.bx, %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsaSXGKSfiU2E_10lance_file.exit92.i ], [ %i.bo, %.lr.ph.preheader.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.214.i, i64 24 ; 2 uses
  %i.bs = getelementptr i8, ptr %.sroa.012.214.i, i64 8
  %.sroa.012.2.val.i = load ptr, ptr %i.bs, align 8, !alias.scope !37774, !noalias !37775, !nonnull !62, !noundef !62
  %i.bt = getelementptr i8, ptr %.sroa.012.214.i, i64 16
  %.sroa.012.2.val77.i = load i64, ptr %i.bt, align 8, !alias.scope !37774, !noalias !37775, !noundef !62 ; 4 uses
  %.not.i.i = icmp ult i64 %.sroa.26.312.i, 2
  br i1 %.not.i.i, label %.invoke.i, label %bb.p, !prof !61

bb.p:                                             ; preds = %.lr.ph.i
  %i.bu = add nsw i64 %.sroa.26.312.i, -2         ; 2 uses
  store i16 8236, ptr %.sroa.035.313.i, align 1, !alias.scope !37783, !noalias !37777
  %.not.i84.i = icmp ugt i64 %.sroa.012.2.val77.i, %i.bu
  br i1 %.not.i84.i, label %.invoke.i, label %_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsaSXGKSfiU2E_10lance_file.exit92.i, !prof !61

.invoke.i:                                        ; preds = %bb.p, %.lr.ph.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @637, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #49
          to label %.cont.i unwind label %bb.m, !noalias !37777

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_RINvNtCscI6d9CVNmLh_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECsaSXGKSfiU2E_10lance_file.exit92.i: ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.035.313.i, i64 2 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.012.2.val77.i
  %i.bx = sub nuw nsw i64 %i.bu, %.sroa.012.2.val77.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %.sroa.012.2.val.i, i64 range(i64 0, -9223372036854775808) %.sroa.012.2.val77.i, i1 false), !alias.scope !37784, !noalias !37777
  %i.by = icmp eq ptr %i.br, %i.ah
  br i1 %i.by, label %_RINvNtCs40k4W9msRzi_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph.i

._crit_edge:                                      ; preds = %bb.c, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRTReyEE6map_oryNCNvNtCsaSXGKSfiU2E_10lance_file6reader22verify_uniform_lengths0EB13_.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.02.0.i, ptr %i.bz, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.aa

bb.q:                                             ; preds = %_RINvYINtNtNtCscI6d9CVNmLh_4core5slice4iter4IterNtNtCs40k4W9msRzi_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1s_8adapters3map12map_try_foldRBJ_jjINtNtBa_6option6OptionjENCNCINvNtBN_3str17join_generic_copyehBJ_Es_00NvMs9_NtBa_3numj11checked_addE0B2V_ECsaSXGKSfiU2E_10lance_file.exit.i, %bb.k
  %i.ca = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11_@_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16reader15read_null_array:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @835, ptr %i.bg, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.z

bb.p:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @838) #49
  unreachable

bb.q:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !62
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.u

bb.r:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.u

bb.s:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.u

bb.t:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.012.0.in = phi ptr [ %i.bj, %bb.q ], [ %i.bk, %bb.r ], [ %i.bl, %bb.s ], [ %i.bo, %bb.t ]
  %.sroa.011.0 = phi i64 [ %i.bi, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ %i.bn, %bb.t ] ; 2 uses
  %.sroa.012.0 = load i64, ptr %.sroa.012.0.in, align 8, !noundef !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.011.0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.012.0, ptr %i.c, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !62
  %i.br = icmp ugt i64 %.sroa.012.0, %i.bq
  br i1 %i.br, label %.split58, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = sub i64 %.sroa.012.0, %.sroa.011.0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

.split58:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.bt, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.446.0..sroa_idx, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.bp, ptr %i.bu, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  call void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @836, ptr noundef nonnull %i.a), !noalias !39380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !39381)
  %.sroa.06.0.copyload.i66 = load i64, ptr %i.b, align 8, !alias.scope !39382, !noalias !39383 ; 3 uses
  %.sroa.4.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i68 = load ptr, ptr %.sroa.4.0..sroa_idx.i67, align 8, !alias.scope !39382, !noalias !39383 ; 3 uses
  %.sroa.57.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.57.0.copyload.i70 = load i64, ptr %.sroa.57.0..sroa_idx.i69, align 8, !alias.scope !39382, !noalias !39383
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !39384
  %i.bv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !39384 ; 5 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.w, label %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit75, !prof !61

bb.w:                                             ; preds = %.split58
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #49
          to label %.noexc.i74 unwind label %bb.x, !noalias !39385

.noexc.i74:                                       ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = icmp eq i64 %.sroa.06.0.copyload.i66, 0
  br i1 %i.by, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i68) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i68, i64 noundef %.sroa.06.0.copyload.i66, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !39386
  br label %common.resume

_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit75: ; preds = %.split58
  store i64 %.sroa.06.0.copyload.i66, ptr %i.bv, align 8, !noalias !39385
  %.sroa.5.0..sroa_idx2.i71 = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %.sroa.4.0.copyload.i68, ptr %.sroa.5.0..sroa_idx2.i71, align 8, !noalias !39385
  %.sroa.6.0..sroa_idx4.i72 = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store i64 %.sroa.57.0.copyload.i70, ptr %.sroa.6.0..sroa_idx4.i72, align 8, !noalias !39385
  store i8 0, ptr %0, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %.sroa.482.0..sroa_idx, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @80, ptr %.sroa.583.0..sroa_idx, align 8
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @837, ptr %.sroa.684.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.z:                                             ; preds = %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit, %_RINvMs4_NtCs63DIHKhvmTb_10lance_core5errorNtB6_5Error13invalid_inputNtNtCs40k4W9msRzi_5alloc6string6StringECsaSXGKSfiU2E_10lance_file.exit75, %_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer17fields_in_batches(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef range(i64 0, 230584300921369396) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !62 ; 2 uses
  %i.d = icmp ult i64 %i.c, 576460752303423488
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !62, !noundef !62
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !62
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.h) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39446
  %i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i, 5      ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %i.j, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBv_RINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.thread, label %bb.c

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBv_RINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.thread: ; preds = %bb.b
  store i64 0, ptr %i.a, align 8, !noalias !39446
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !noalias !39446
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBU_RINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtB3L_5slice4iter4IterB15_EINtNtB3H_3map3MapINtNtNtB3L_3ops5range5RangejENCNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer17fields_in_batches0EEE9from_iterB5Q_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !39447
  %i.m = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.i, i64 noundef range(i64 1, 9) 8) #44, !noalias !39447 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.i) #49, !noalias !39446
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c
  store i64 %.sroa.0.0.i.i.i, ptr %i.a, align 8, !noalias !39446
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !39446
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39449)
  %i.q = shl nuw nsw i64 %2, 3                    ; 3 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %.val13.i.i.i.i.i.i = phi i64 [ %i.r, %.loopexit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i ] ; 7 uses
  %i.r = add nuw nsw i64 %.val13.i.i.i.i.i.i, 1   ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !39450
  %i.s = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 8) #44, !noalias !39450 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.e, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.q) #49
          to label %.noexc.i.i.i.i.i.i unwind label %bb.h, !noalias !39451

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  unreachable

.preheader.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i.i.i.i, %bb.g
  %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.g ], [ 0, %.lr.ph.split.i.i.i.i.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %1, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !39452, !noundef !62 ; 2 uses
  %i.w = icmp ult i64 %.val13.i.i.i.i.i.i, %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %.val13.i.i.i.i.i.i, i64 noundef %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @469) #49
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i, !noalias !39452

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.u, i64 8
  %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !noalias !39452, !nonnull !62, !noundef !62
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %.val16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.val13.i.i.i.i.i.i
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.y, ptr %i.z, align 8, !noalias !39453
  %i.aa = add nuw nsw i64 %.val15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, %2
  br i1 %i.ab, label %.loopexit.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !39454
  br label %.body.i

bb.h:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %.val13.i.i.i.i.i.i
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.val13.i.i.i.i.i.i ; 4 uses
  store ptr %i.ae, ptr %i.af, align 8, !noalias !39455
  %.sroa.418.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %2, ptr %.sroa.418.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39455
  %.sroa.519.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.s, ptr %.sroa.519.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39455
  %.sroa.620.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 %2, ptr %.sroa.620.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39455
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.r, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBU_RINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtB3L_5slice4iter4IterB15_EINtNtB3H_3map3MapINtNtNtB3L_3ops5range5RangejENCNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer17fields_in_batches0EEE9from_iterB5Q_.exit, label %.lr.ph.split.i.i.i.i.i.i

.body.i:                                          ; preds = %bb.h, %.body.i.i.i.i.i.i.i.i.i.i
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ac, %.body.i.i.i.i.i.i.i.i.i.i ], [ %i.ad, %bb.h ]
  store i64 %.val13.i.i.i.i.i.i, ptr %i.p, align 8, !alias.scope !39456, !noalias !39457
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBC_RINtNtBG_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50, !noalias !39446
  resume { ptr, i32 } %.pn.i.i.i.i.i.i

_RNvXs_NtNtCs40k4W9msRzi_5alloc3vec21spec_from_iter_nestedINtB6_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBU_RINtNtB8_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3zip3ZipINtNtNtB3L_5slice4iter4IterB15_EINtNtB3H_3map3MapINtNtNtB3L_3ops5range5RangejENCNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v16writer17fields_in_batches0EEE9from_iterB5Q_.exit: ; preds = %.loopexit.i.i.i.i.i.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBv_RINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.thread
  %i.ag = phi ptr [ %i.l, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTRNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldIBv_RINtNtB6_4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EEEE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.thread ], [ %i.p, %.loopexit.i.i.i.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.ag, align 8, !alias.scope !39456, !noalias !39457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39446
  ret void

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @840) #49
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding25populate_field_dictionary(ptr noalias noundef align 8 dereferenceable(192) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1056 x i8], align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i8 0, ptr %i.d, align 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !39460
  %i.e = tail call noundef align 8 dereferenceable_or_null(1056) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 1056, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !39460 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding25populate_field_dictionary0E3newBO_.exit, !prof !61

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1056) #49
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding25populate_field_dictionary0EBL_(ptr noundef nonnull align 8 dereferenceable(1056) %i.a) #50
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNCNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions2v18encoding25populate_field_dictionary0E3newBO_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1056) %i.e, ptr noundef nonnull align 8 dereferenceable(1056) %i.a, i64 1056, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr @841, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader16append_field_ids(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 48038396025285291) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %1, 192
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8
  %.val.fr = freeze ptr %.val                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val5 = load i64, ptr %i.c, align 8
  %.not.i = icmp eq ptr %.val.fr, null
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge
  %.sroa.0.013.us = phi ptr [ %i.f, %.critedge ], [ %0, %.lr.ph ] ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.013.us, i64 192 ; 2 uses
  %i.g = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field7is_blob(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.013.us)
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.h = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field16is_packed_struct(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.013.us)
  br i1 %i.h, label %.critedge, label %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit.us

_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit.us: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.013.us, i64 104
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !39467, !noundef !62 ; 3 uses
  %i.k = icmp ult i64 %i.j, 48038396025285291
  tail call void @llvm.assume(i1 %i.k)
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit.us
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.013.us, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !62, !noundef !62
  tail call fastcc void @_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader16append_field_ids(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.m, i64 noundef %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef align 8 dereferenceable(24) %3)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.lr.ph.split.us, %bb.c, %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit.us
  %i.n = icmp eq ptr %i.f, %i.a
  br i1 %i.n, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.sroa.0.013 = phi ptr [ %i.o, %bb.k ], [ %0, %.lr.ph ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 192 ; 2 uses
  %i.p = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field7is_blob(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.013)
  br i1 %i.p, label %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.q = tail call noundef zeroext i1 @_RNvMNtNtCs63DIHKhvmTb_10lance_core9datatypes5fieldNtB2_5Field16is_packed_struct(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.sroa.0.013)
  br i1 %i.q, label %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 104
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !39467, !noundef !62 ; 2 uses
  %i.t = icmp ult i64 %i.s, 48038396025285291
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp ne i64 %i.s, 0
  br label %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit

_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit: ; preds = %.lr.ph.split, %bb.d, %bb.e
  %.sroa.3.0.i = phi i1 [ %i.u, %bb.e ], [ false, %bb.d ], [ false, %.lr.ph.split ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 176
  %i.w = load i32, ptr %i.v, align 8, !noundef !62
  br label %.preheader.i

.preheader.i:                                     ; preds = %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit, %bb.h
  %.sroa.3.0.i.i = phi i64 [ %i.am, %bb.h ], [ %.val5, %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.al, %bb.h ], [ %.val.fr, %_RNvNtNtNtCsaSXGKSfiU2E_10lance_file8versions4v2_06reader18field_column_shape.exit ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 98
  %i.z = load i16, ptr %i.y, align 2, !noalias !39468, !noundef !62 ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %.idx37 = shl nuw nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx37
  %i.ac = icmp eq i16 %i.z, 0
  br i1 %i.ac, label %._crit_edge34, label %.lr.ph33

bb.f:                                             ; preds = %.lr.ph33
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i32, i64 4 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.8.0.i.i.i31, 1
  %i.af = icmp eq ptr %i.ad, %i.ab
  br i1 %i.af, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %.preheader.i, %bb.f
  %.sroa.0.03.i.i.i32 = phi ptr [ %i.ad, %bb.f ], [ %i.x, %.preheader.i ] ; 2 uses
  %.sroa.8.0.i.i.i31 = phi i64 [ %i.ae, %bb.f ], [ 0, %.preheader.i ] ; 4 uses
  %.val6.i.i.i = load i32, ptr %.sroa.0.03.i.i.i32, align 4, !noalias !39468, !noundef !62
  %i.ag = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %i.w, i32 %.val6.i.i.i)
  switch i8 %i.ag, label %bb.g [
    i8 -1, label %._crit_edge34
    i8 0, label %bb.i
    i8 1, label %bb.f
  ]

bb.g:                                             ; preds = %.lr.ph33
  unreachable

._crit_edge34:                                    ; preds = %bb.f, %.lr.ph33, %.preheader.i
  %.sroa.4.0.i.ph.i.i = phi i64 [ %i.aa, %.preheader.i ], [ %i.aa, %bb.f ], [ %.sroa.8.0.i.i.i31, %.lr.ph33 ] ; 2 uses
  %i.ah = icmp eq i64 %.sroa.3.0.i.i, 0
  br i1 %i.ah, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %._crit_edge34
end_hunk_11
begin_hunk_12_@_RNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtCscI6d9CVNmLh_4core7convert7TryFromRNtB5_6FieldsE8try_from:bb.a
  br label %bb.ci

bb.bq:                                            ; preds = %bb.bs
  %i.oa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.e) #50
          to label %bb.cg unwind label %bb.cf, !noalias !48003

bb.br:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !48003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.e, ptr noundef nonnull align 8 dereferenceable(192) %i.f, i64 192, i1 false), !noalias !48003
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !48008
  %i.ob = call noundef align 8 dereferenceable_or_null(768) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 768, i64 noundef range(i64 1, 9) 8) #44, !noalias !48008 ; 4 uses
  %i.oc = icmp eq ptr %i.ob, null
  br i1 %i.oc, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 768) #49
          to label %.noexc.i.i.i.i.i unwind label %bb.bq, !noalias !48003

.noexc.i.i.i.i.i:                                 ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ob, ptr noundef nonnull align 8 dereferenceable(192) %i.f, i64 192, i1 false), !noalias !48003
  store i64 4, ptr %i.g, align 8, !noalias !48003
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ob, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !48003
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !48003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !48003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !48003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !48003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false), !noalias !48004
  call void @llvm.experimental.noalias.scope.decl(metadata !48009)
  call void @llvm.experimental.noalias.scope.decl(metadata !48010)
  call void @llvm.experimental.noalias.scope.decl(metadata !48011)
  call void @llvm.experimental.noalias.scope.decl(metadata !48012)
  br label %bb.bu

bb.bu:                                            ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i, %bb.bt
  %.sroa.7.0.copyload15.i = phi ptr [ %i.oo, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ], [ %i.ob, %bb.bt ] ; 2 uses
  %.sroa.9.0.copyload17.i = phi i64 [ %i.oq, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i ], [ 1, %bb.bt ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !48013
  invoke fastcc void @_RNvXNtNtCscI6d9CVNmLh_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtNtCs63DIHKhvmTb_10lance_core9datatypes6schema6SchemaINtNtB6_7convert7TryFromRNtB2b_6FieldsE8try_froms2_0EINtNtB6_6result6ResultNtB3K_10InfallibleNtNtB2T_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2d_(ptr noalias noundef align 8 captures(none) dereferenceable(192) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %bb.by unwind label %bb.bx, !noalias !48014

bb.bv:                                            ; preds = %bb.cc, %bb.bx
  %.pn.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.or, %bb.cc ], [ %i.og, %bb.bx ]
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val6.i.i.i.i.i.i.i = load i64, ptr %i.od, align 8, !alias.scope !48015, !noalias !48014, !noundef !62 ; 2 uses
  %i.oe = icmp eq i64 %.val6.i.i.i.i.i.i.i, 0
  br i1 %i.oe, label %.body.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !48016, !noalias !48014, !nonnull !62, !noundef !62
  %i.of = shl nuw i64 %.val6.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %i.of, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48017
  br label %.body.i.i.i.i.i

bb.bx:                                            ; preds = %bb.bu
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.by:                                            ; preds = %bb.bu
  %i.oh = load i64, ptr %i.c, align 8, !range !83, !noalias !48013, !noundef !62
  %.not.i.i8.i.i.i.i.i = icmp eq i64 %i.oh, -1
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.b, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !48013
  %i.oi = icmp samesign ult i64 %.sroa.9.0.copyload17.i, 48038396025285291
  call void @llvm.assume(i1 %i.oi)
  %i.oj = load i64, ptr %i.g, align 8, !range !65, !alias.scope !48018, !noalias !48019, !noundef !62
  %i.ok = icmp eq i64 %.sroa.9.0.copyload17.i, %i.oj
  br i1 %i.ok, label %bb.cd, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !48013
  %i.ol = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.ol, align 8, !alias.scope !48015, !noalias !48014, !noundef !62 ; 2 uses
  %i.om = icmp eq i64 %.val4.i.i.i.i.i.i.i, 0
  br i1 %i.om, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtB4_9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtBV_6schema6SchemaINtNtB2c_7convert7TryFromRNtB3P_6FieldsE8try_froms2_0EINtNtB2c_6result6ResultNtB4P_10InfallibleNtNtBX_5error5ErrorEEE11spec_extendB3R_.exit.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !48016, !noalias !48014, !nonnull !62, !noundef !62
  %i.on = shl nuw i64 %.val4.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.on, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48020
  br label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtB4_9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtBV_6schema6SchemaINtNtB2c_7convert7TryFromRNtB3P_6FieldsE8try_froms2_0EINtNtB2c_6result6ResultNtB4P_10InfallibleNtNtBX_5error5ErrorEEE11spec_extendB3R_.exit.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i, %bb.bz
  %i.oo = phi ptr [ %.pre.i.i.i.i.i, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i ], [ %.sroa.7.0.copyload15.i, %bb.bz ] ; 2 uses
  %i.op = getelementptr inbounds nuw [192 x i8], ptr %i.oo, i64 %.sroa.9.0.copyload17.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.op, ptr noundef nonnull align 8 dereferenceable(192) %i.c, i64 192, i1 false), !noalias !48013
  %i.oq = add nuw nsw i64 %.sroa.9.0.copyload17.i, 1 ; 2 uses
  store i64 %i.oq, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !48018, !noalias !48019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !48013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !48013
  br label %bb.bu

bb.cc:                                            ; preds = %bb.cd
  %i.or = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.b) #50
          to label %bb.bv unwind label %bb.ce, !noalias !48013

bb.cd:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %.sroa.9.0.copyload17.i, i64 noundef 1, i64 noundef 8, i64 noundef 192)
          to label %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i unwind label %bb.cc, !noalias !48019

._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %bb.cd
  %.pre.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !48018, !noalias !48019
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.os = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !48013
  unreachable

.body.i.i.i.i.i:                                  ; preds = %bb.bw, %bb.bv
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.g) #50
          to label %.body.i unwind label %bb.cf, !noalias !48003

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtB4_9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtBV_6schema6SchemaINtNtB2c_7convert7TryFromRNtB3P_6FieldsE8try_froms2_0EINtNtB2c_6result6ResultNtB4P_10InfallibleNtNtBX_5error5ErrorEEE11spec_extendB3R_.exit.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !48003
  %.sroa.0.0.copyload13.i = load i64, ptr %i.g, align 8, !noalias !48021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !48003
  br label %bb.ci

bb.cf:                                            ; preds = %.body.i.i.i.i.i, %bb.bq
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !48003
  unreachable

bb.cg:                                            ; preds = %bb.bq, %bb.bm
  %.pn.ph.i.i.i.i.i = phi { ptr, i32 } [ %i.nw, %bb.bm ], [ %i.oa, %bb.bq ] ; 2 uses
  %.val5.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !48005, !noalias !48004, !noundef !62 ; 2 uses
  %i.ou = icmp eq i64 %.val5.i.i.i.i.i, 0
  br i1 %i.ou, label %.body.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !48006, !noalias !48004, !nonnull !62, !noundef !62
  %i.ov = shl nuw i64 %.val5.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48022
  br label %.body.i

.body.i:                                          ; preds = %bb.ch, %bb.cg, %.body.i.i.i.i.i
  %.pn.i244 = phi { ptr, i32 } [ %.pn.ph.i.i.i.i.i, %bb.cg ], [ %.pn.i.i.i.i.i.i.i, %.body.i.i.i.i.i ], [ %.pn.ph.i.i.i.i.i, %bb.ch ] ; 2 uses
  %i.ow = load i8, ptr %i.i, align 8, !range !85, !noalias !47996, !noundef !62
  %.not.i245 = icmp eq i8 %i.ow, -1
  br i1 %.not.i245, label %.body233, label %bb.cr

bb.ci:                                            ; preds = %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtB4_9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtBV_6schema6SchemaINtNtB2c_7convert7TryFromRNtB3P_6FieldsE8try_froms2_0EINtNtB2c_6result6ResultNtB4P_10InfallibleNtNtBX_5error5ErrorEEE11spec_extendB3R_.exit.i.i.i.i.i, %bb.bp, %bb.bo
  %.sroa.9.0.i = phi i64 [ 0, %bb.bo ], [ 0, %bb.bp ], [ %.sroa.9.0.copyload17.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtB4_9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtBV_6schema6SchemaINtNtB2c_7convert7TryFromRNtB3P_6FieldsE8try_froms2_0EINtNtB2c_6result6ResultNtB4P_10InfallibleNtNtBX_5error5ErrorEEE11spec_extendB3R_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.7.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.bo ], [ inttoptr (i64 8 to ptr), %bb.bp ], [ %.sroa.7.0.copyload15.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtB4_9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtBV_6schema6SchemaINtNtB2c_7convert7TryFromRNtB3P_6FieldsE8try_froms2_0EINtNtB2c_6result6ResultNtB4P_10InfallibleNtNtBX_5error5ErrorEEE11spec_extendB3R_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.0.0.i246 = phi i64 [ 0, %bb.bo ], [ 0, %bb.bp ], [ %.sroa.0.0.copyload13.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEINtB2_10SpecExtendBR_INtNtNtCscI6d9CVNmLh_4core4iter8adapters12GenericShuntINtNtB28_3map3MapINtNtB4_9into_iter8IntoIterjENCNvXs1_NtCsaSXGKSfiU2E_10lance_file9datatypesNtNtBV_6schema6SchemaINtNtB2c_7convert7TryFromRNtB3P_6FieldsE8try_froms2_0EINtNtB2c_6result6ResultNtB4P_10InfallibleNtNtBX_5error5ErrorEEE11spec_extendB3R_.exit.i.i.i.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !47997
  %i.ox = load i8, ptr %i.i, align 8, !range !85, !noalias !47996, !noundef !62 ; 2 uses
  %.not.not.i = icmp eq i8 %i.ox, -1
  br i1 %.not.not.i, label %.thread372, label %bb.cj

.thread372:                                       ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !47996
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7287)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0.0.i246, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx328, align 8
  %.sroa.3329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.9.0.i, ptr %.sroa.3329.0..sroa_idx, align 8
  %i.oy = invoke fastcc { i64, i64 } @_RINvMs2_NtNtCsgczF5crJ4sT_3std6thread5localINtB6_8LocalKeyINtNtCscI6d9CVNmLh_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsaSXGKSfiU2E_10lance_file()
          to label %bb.cu unwind label %bb.ct     ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %.sroa.7287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7287, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7287.0..sroa_idx, i64 7, i1 false), !noalias !48023
  %.sroa.8288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.8288.0.copyload = load i64, ptr %.sroa.8288.0..sroa_idx, align 8, !noalias !48023
  %.sroa.10289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.10289.0.copyload = load ptr, ptr %.sroa.10289.0..sroa_idx, align 8, !noalias !48023
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !48023
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx, i64 24, i1 false), !noalias !48023
  %i.oz = icmp eq i64 %.sroa.9.0.i, 0
  br i1 %i.oz, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph864

bb.ck:                                            ; preds = %.lr.ph864
  %i.pa = icmp eq i64 %i.pc, %.sroa.9.0.i
  br i1 %i.pa, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i, label %.lr.ph864

.lr.ph864:                                        ; preds = %bb.cj, %bb.ck
  %.sroa.0.0.i.i.i247863 = phi i64 [ %i.pc, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  %i.pb = getelementptr inbounds nuw [192 x i8], ptr %.sroa.7.0.i, i64 %.sroa.0.0.i.i.i247863
  %i.pc = add nuw nsw i64 %.sroa.0.0.i.i.i247863, 1 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.pb)
          to label %bb.ck unwind label %bb.cm, !noalias !48024, !inline_history !2

bb.cl:                                            ; preds = %.lr.ph866
  %i.pd = add nuw nsw i64 %.sroa.0.1.i.i.i865, 1  ; 2 uses
  %i.pe = icmp eq i64 %i.pd, %.sroa.9.0.i
  br i1 %i.pe, label %.body.i.i, label %.lr.ph866

bb.cm:                                            ; preds = %.lr.ph864
  %i.pf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.pg = icmp eq i64 %i.pc, %.sroa.9.0.i
  br i1 %i.pg, label %.body.i.i, label %.lr.ph866

.lr.ph866:                                        ; preds = %bb.cm, %bb.cl
  %.sroa.0.1.i.i.i865 = phi i64 [ %i.pd, %bb.cl ], [ %i.pc, %bb.cm ] ; 2 uses
  %i.ph = getelementptr inbounds nuw [192 x i8], ptr %.sroa.7.0.i, i64 %.sroa.0.1.i.i.i865
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(192) %i.ph) #50
          to label %bb.cl unwind label %bb.cn, !noalias !48024, !inline_history !2

bb.cn:                                            ; preds = %.lr.ph866
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !48024, !inline_history !2
  unreachable

.body.i.i:                                        ; preds = %bb.cl, %bb.cm
  %i.pj = icmp eq i64 %.sroa.0.0.i246, 0
  br i1 %i.pj, label %.body233, label %bb.co

bb.co:                                            ; preds = %.body.i.i
  %i.pk = mul nuw i64 %.sroa.0.0.i246, 192
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.pk, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48024, !inline_history !87
  br label %.body233

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i: ; preds = %bb.ck, %bb.cj
  %i.pl = icmp eq i64 %.sroa.0.0.i246, 0
  br i1 %i.pl, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i
  %i.pm = mul nuw i64 %.sroa.0.0.i246, 192
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i, i64 noundef %i.pm, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48024, !inline_history !87
  br label %bb.cs

bb.cq:                                            ; preds = %bb.cr
  %i.pn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51, !noalias !47996
  unreachable

bb.cr:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs63DIHKhvmTb_10lance_core5error5ErrorECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %.body233 unwind label %bb.cq, !noalias !47996

bb.cs:                                            ; preds = %bb.cp, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsaSXGKSfiU2E_10lance_file.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !47996
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4146.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7287, i64 7, i1 false)
  %.sroa.5147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5147.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7287)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.ox, ptr %i.po, align 8
  %.sroa.4146.sroa.4.0..sroa.4146.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8288.0.copyload, ptr %.sroa.4146.sroa.4.0..sroa.4146.0..sroa_idx.sroa_idx, align 8
  %.sroa.4146.sroa.5.0..sroa.4146.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.10289.0.copyload, ptr %.sroa.4146.sroa.5.0..sroa.4146.0..sroa_idx.sroa_idx, align 8
  %.sroa.4146.sroa.6.0..sroa.4146.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.0.copyload, ptr %.sroa.4146.sroa.6.0..sroa.4146.0..sroa_idx.sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cx

bb.ct:                                            ; preds = %.thread372
  %i.pp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.o) #50
          to label %.body233 unwind label %bb.cw

bb.cu:                                            ; preds = %.thread372
  %i.pq = extractvalue { i64, i64 } %i.oy, 0
  %i.pr = extractvalue { i64, i64 } %i.oy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0142, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.0142.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0142, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0142.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @84, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0142, i64 56, i1 false)
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.pq, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.pr, ptr %.sroa.6144.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0142)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u)
          to label %bb.cv unwind label %.loopexit.split-lp

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.val171 = load ptr, ptr %i.z, align 8
  %.val172 = load i64, ptr %.sroa.4303.0..sroa_idx, align 8, !noundef !62
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map7HashMaplINtNtB4_6option6OptionjEEECsaSXGKSfiU2E_10lance_file(ptr %.val171, i64 %.val172)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1c_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEB1c_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i, %bb.ea, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  ret void

bb.cw:                                            ; preds = %bb.dg, %bb.eg, %bb.ec, %bb.ct, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit274, %.body233
  %i.ps = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #51
  unreachable

bb.cx:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_.exit271, %bb.cs
  %.sroa.088.7 = phi i8 [ 1, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtBG_9enumerate9EnumerateINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtCsaSXGKSfiU2E_10lance_file9datatypes9FieldNodeEEEEB2t_.exit271 ], [ 0, %bb.cs ] ; 2 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEEECsaSXGKSfiU2E_10lance_file(ptr noalias noundef align 8 dereferenceable(24) %i.u)
          to label %bb.du unwind label %.loopexit.split-lp

bb.cy:                                            ; preds = %bb.bh
  %i.pt = landingpad { ptr, i32 }
          cleanup
  store ptr %i.my, ptr %.sroa.043.sroa.4.0..sroa_idx, align 8
  br label %bb.ec

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit: ; preds = %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit_crit_edge, %bb.bg
  %i.pu = phi i64 [ %.pre613, %._RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit_crit_edge ], [ %i.nd, %bb.bg ] ; 3 uses
  %i.pv = load ptr, ptr %i.mv, align 8, !nonnull !62, !noundef !62 ; 5 uses
  %i.pw = load i64, ptr %i.ms, align 8, !range !65, !noundef !62 ; 6 uses
  %i.px = icmp ult i64 %i.pu, 1152921504606846976
  call void @llvm.assume(i1 %i.px)
  %.idx529 = shl nuw nsw i64 %i.pu, 3
  %i.py = getelementptr inbounds nuw i8, ptr %i.pv, i64 %.idx529
  %i.pz = icmp eq i64 %i.pu, 0
  br i1 %i.pz, label %._crit_edge517, label %.lr.ph516

bb.cz:                                            ; preds = %bb.di
  %i.qa = landingpad { ptr, i32 }
          cleanup
  br label %.body262

.body262:                                         ; preds = %bb.dl, %bb.cz
  %eh.lpad-body263 = phi { ptr, i32 } [ %i.qa, %bb.cz ], [ %i.ra, %bb.dl ] ; 2 uses
  %i.qb = icmp eq i64 %i.pw, 0
  br i1 %i.qb, label %bb.ec, label %bb.da

bb.da:                                            ; preds = %.body262
  %i.qc = shl nuw i64 %i.pw, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pv, i64 noundef %i.qc, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48025
  br label %bb.ec

.lr.ph516:                                        ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit, %bb.eb
  %.sroa.7.0515 = phi ptr [ %i.qd, %bb.eb ], [ %i.pv, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.sroa.7.0515, i64 8 ; 2 uses
  %i.qe = load i64, ptr %.sroa.7.0515, align 8, !noalias !48026, !noundef !62 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 %i.qe, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.656)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.662)
  %i.qf = load i64, ptr %i.ml, align 8, !noundef !62
  %i.qg = icmp ult i64 %i.qe, %i.qf
  br i1 %i.qg, label %bb.dh, label %bb.di

._crit_edge517:                                   ; preds = %bb.eb, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldE7reserveCsaSXGKSfiU2E_10lance_file.exit
  %i.qh = icmp eq i64 %i.pw, 0
  br i1 %i.qh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit256, label %bb.db

bb.db:                                            ; preds = %._crit_edge517
  %i.qi = shl nuw i64 %i.pw, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pv, i64 noundef %i.qi, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !48027
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit256

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit256: ; preds = %bb.db, %._crit_edge517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.p, ptr noundef nonnull align 8 dereferenceable(192) %i.s, i64 192, i1 false)
  %i.qj = load i64, ptr %i.ml, align 8, !noundef !62 ; 2 uses
  %.not159 = icmp ult i64 %i.nc, %i.qj
  br i1 %.not159, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit256
  %i.qk = load ptr, ptr %i.mm, align 8, !nonnull !62, !noundef !62
  %i.ql = getelementptr inbounds nuw [192 x i8], ptr %i.qk, i64 %i.nc ; 4 uses
  %i.qm = load i64, ptr %i.ql, align 8, !range !83, !alias.scope !48028, !noundef !62
  %i.qn = icmp eq i64 %i.qm, -1
  br i1 %i.qn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldECsaSXGKSfiU2E_10lance_file(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ql)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit unwind label %.thread395

bb.de:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterjEECsaSXGKSfiU2E_10lance_file.exit256
  store ptr %i.my, ptr %.sroa.043.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.nc, i64 noundef %i.qj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1023) #49
          to label %bb.ar unwind label %bb.df

.thread395:                                       ; preds = %bb.dd
  %i.qo = landingpad { ptr, i32 }
          cleanup
  store ptr %i.my, ptr %.sroa.043.sroa.4.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ql, ptr noundef nonnull align 8 dereferenceable(192) %i.p, i64 192, i1 false)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecjEECsaSXGKSfiU2E_10lance_file.exit274

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs63DIHKhvmTb_10lance_core9datatypes5field5FieldEECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.dc, %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ql, ptr noundef nonnull align 8 dereferenceable(192) %i.p, i64 192, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
end_hunk_12
begin_hunk_13_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10Date64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file:bb.a
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50124
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !50125, !noalias !50130, !nonnull !62, !noundef !62
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !50125, !noalias !50130, !nonnull !62, !align !63, !noundef !62
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !62, !noalias !50131, !nonnull !62
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50131, !inline_history !50119
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50131, !inline_history !50119
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50131, !inline_history !50119
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10Date64TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50124
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !50125, !noalias !50130, !nonnull !62, !noundef !62
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !50125, !noalias !50130, !nonnull !62, !align !63, !noundef !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !62, !noalias !50131, !nonnull !62
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50131, !inline_history !50119
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50131, !inline_history !50119
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !62, !nonnull !62
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @997, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10Date64TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10Date64TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @1161, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !50153)
  call void @llvm.experimental.noalias.scope.decl(metadata !50154)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50155, !noalias !50156, !noundef !62 ; 7 uses
  %i.k = lshr i64 %i.j, 1                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !50157, !noalias !50156, !noundef !62
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !50153, !noalias !50156
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !50153, !noalias !50156
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !50153, !noalias !50156
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !50153, !noalias !50156 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50158)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !62, !noalias !50160, !nonnull !62
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50153
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !62, !noalias !50160, !nonnull !62
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 21
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50158)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i, !prof !61

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !50161
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !50161, !noundef !62
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !62, !noalias !50160, !nonnull !62 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 41
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50162
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !50162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50162
  store ptr %i.b, ptr %i.a, align 8, !noalias !50162
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !50162
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @132, ptr noundef nonnull %i.a), !noalias !50160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50162
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !50163, !noalias !50156, !noundef !62
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !50153, !noalias !50156
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !50153, !noalias !50156
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !50153, !noalias !50156
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !50153, !noalias !50156 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nuw nsw i64 %.sroa.068.0125.us.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50164)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !62, !noalias !50160, !nonnull !62
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50153
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !62, !noalias !50160, !nonnull !62
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nuw nsw i64 %.sroa.068.0125.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50164)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i, label %bb.m, !prof !71

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !50165
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !50165, !noundef !62
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !62, !noalias !50160, !nonnull !62 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50153
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !62, !noalias !50160, !nonnull !62
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50160, !inline_history !50148
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50153
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !noundef !62
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !50154, !noalias !50159, !nonnull !62, !align !63, !noundef !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !62, !noalias !50160, !nonnull !62
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50160, !inline_history !50148
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50160, !inline_history !50148
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !62, !nonnull !62
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @997, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @1161, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !50182)
  call void @llvm.experimental.noalias.scope.decl(metadata !50183)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50184, !noalias !50185, !noundef !62 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !50186, !noalias !50185, !noundef !62
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !50182, !noalias !50185
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !50182, !noalias !50185
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !50182, !noalias !50185
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !50182, !noalias !50185 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50187)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !50183, !noalias !50188, !nonnull !62, !noundef !62
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !50183, !noalias !50188, !nonnull !62, !align !63, !noundef !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !62, !noalias !50189, !nonnull !62
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50189, !inline_history !50177
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types10UInt32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50182
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !50183, !noalias !50188, !nonnull !62, !noundef !62
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !50183, !noalias !50188, !nonnull !62, !align !63, !noundef !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !62, !noalias !50189, !nonnull !62
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50189, !inline_history !50177
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types10UInt32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50187)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i, !prof !61

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !50190
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !50190, !noundef !62
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !50183, !noalias !50188, !nonnull !62, !noundef !62 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !50183, !noalias !50188, !nonnull !62, !align !63, !noundef !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !62, !noalias !50189, !nonnull !62 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50191
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !50191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50191
  store ptr %i.b, ptr %i.a, align 8, !noalias !50191
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !50191
end_hunk_13
begin_hunk_14_@_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types8Int8TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file:bb.a
  %i.cd = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types8Int8TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50586
  br i1 %i.cd, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %1, align 8, !alias.scope !50587, !noalias !50592, !nonnull !62, !noundef !62
  %i.cf = load ptr, ptr %i.f, align 8, !alias.scope !50587, !noalias !50592, !nonnull !62, !align !63, !noundef !62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !62, !noalias !50593, !nonnull !62
  %i.ci = call noundef zeroext i1 %i.ch(ptr noundef nonnull %i.ce, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50593, !inline_history !50583
  br i1 %i.ci, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond145.not.i = icmp eq i64 %i.bn, %i.j
  br i1 %exitcond145.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i
  %i.cj = call noundef zeroext i1 %i.cb(ptr noundef nonnull %i.by, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50593, !inline_history !50583
  br i1 %i.cj, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.ck = call noundef zeroext i1 %i.at(ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50593, !inline_history !50583
  br i1 %i.ck, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i
  %i.cl = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types8Int8TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50586
  br i1 %i.cl, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %1, align 8, !alias.scope !50587, !noalias !50592, !nonnull !62, !noundef !62
  %i.cn = load ptr, ptr %i.f, align 8, !alias.scope !50587, !noalias !50592, !nonnull !62, !align !63, !noundef !62
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !62, !noalias !50593, !nonnull !62
  %i.cq = call noundef zeroext i1 %i.cp(ptr noundef nonnull %i.cm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50593, !inline_history !50583
  br i1 %i.cq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ag, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cr = call noundef zeroext i1 %i.at(ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50593, !inline_history !50583
  br i1 %i.cr, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i, %bb.b
  %i.cs = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.ct = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !invariant.load !62, !nonnull !62
  %i.cw = call noundef zeroext i1 %i.cv(ptr noundef nonnull %i.cs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @997, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.1 = phi i1 [ %i.cw, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types8Int8TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types8Int8TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @1161, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !50613)
  call void @llvm.experimental.noalias.scope.decl(metadata !50614)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50615, !noalias !50616, !noundef !62 ; 7 uses
  %i.k = lshr i64 %i.j, 1                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !50617, !noalias !50616, !noundef !62
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !50613, !noalias !50616
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !50613, !noalias !50616
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !50613, !noalias !50616
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !50613, !noalias !50616 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50618)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !62, !noalias !50620, !nonnull !62
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50613
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !62, !noalias !50620, !nonnull !62
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 21
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50618)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i, !prof !61

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !50621
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !50621, !noundef !62
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !62, !noalias !50620, !nonnull !62 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 41
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50622
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !50622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50622
  store ptr %i.b, ptr %i.a, align 8, !noalias !50622
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !50622
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62
  %i.ay = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.az = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ay, ptr noundef nonnull @132, ptr noundef nonnull %i.a), !noalias !50620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50622
  br i1 %i.az, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ba = add nsw i64 %i.k, -10
  %.sroa.0.0.i117.i = call noundef i64 @llvm.umax.i64(i64 %i.ba, i64 %.sroa.0.0.i.i) ; 3 uses
  %i.bb = icmp ult i64 %.sroa.0.0.i117.i, %i.k
  br i1 %i.bb, label %.lr.ph127.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph127.i:                                      ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !50623, !noalias !50616, !noundef !62
  %.not.i.i118.i = icmp eq ptr %i.bd, null
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !50613, !noalias !50616
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !50613, !noalias !50616
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !50613, !noalias !50616
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val110.i = load ptr, ptr %i.bk, align 8, !alias.scope !50613, !noalias !50616 ; 2 uses
  br i1 %.not.i.i118.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i, label %.lr.ph127.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i: ; preds = %.lr.ph127.i, %bb.l
  %.sroa.068.0125.us.i = phi i64 [ %i.bl, %bb.l ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 2 uses
  %i.bl = add nuw nsw i64 %.sroa.068.0125.us.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50624)
  %i.bm = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !62, !noalias !50620, !nonnull !62
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull %i.bm, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.bq, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.j

bb.j:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i
  %i.br = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50613
  br i1 %i.br, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62
  %i.bt = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !invariant.load !62, !noalias !50620, !nonnull !62
  %i.bw = call noundef zeroext i1 %i.bv(ptr noundef nonnull %i.bs, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.bw, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %exitcond147.not.i = icmp eq i64 %i.bl, %i.k
  br i1 %exitcond147.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i

.lr.ph127.split.i:                                ; preds = %.lr.ph127.i, %bb.p
  %.sroa.068.0125.i = phi i64 [ %i.bx, %bb.p ], [ %.sroa.0.0.i117.i, %.lr.ph127.i ] ; 4 uses
  %i.bx = add nuw nsw i64 %.sroa.068.0125.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50624)
  %i.by = icmp ult i64 %.sroa.068.0125.i, %i.bf
  br i1 %i.by, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i, label %bb.m, !prof !71

bb.m:                                             ; preds = %.lr.ph127.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !50625
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i: ; preds = %.lr.ph127.split.i
  %i.bz = add i64 %.sroa.068.0125.i, %i.bj        ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !50625, !noundef !62
  %i.cd = trunc i64 %i.bz to i8
  %i.ce = and i8 %i.cd, 7
  %i.cf = xor i8 %i.cc, -1
  %i.cg = lshr i8 %i.cf, %i.ce
  %i.ch = trunc i8 %i.cg to i1
  %i.ci = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62 ; 2 uses
  %i.cj = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !62, !noalias !50620, !nonnull !62 ; 2 uses
  br i1 %i.ch, label %bb.q, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i
  %i.cm = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.cm, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i
  %i.cn = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val110.i, i64 %i.j, i64 noundef %.sroa.068.0125.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50613
  br i1 %i.cn, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62
  %i.cp = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !62, !noalias !50620, !nonnull !62
  %i.cs = call noundef zeroext i1 %i.cr(ptr noundef nonnull %i.co, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.cs, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %exitcond146.not.i = icmp eq i64 %i.bx, %i.k
  br i1 %exitcond146.not.i, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit, label %.lr.ph127.split.i

bb.q:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.i
  %i.ct = call noundef zeroext i1 %i.cl(ptr noundef nonnull %i.ci, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50620, !inline_history !50608
  br i1 %i.ct, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.p

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.cu = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.cu, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.r

bb.r:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i
  %i.cv = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int16TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50613
  br i1 %i.cv, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %1, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !noundef !62
  %i.cx = load ptr, ptr %i.f, align 8, !alias.scope !50614, !noalias !50619, !nonnull !62, !align !63, !noundef !62
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !invariant.load !62, !noalias !50620, !nonnull !62
  %i.da = call noundef zeroext i1 %i.cz(ptr noundef nonnull %i.cw, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50620, !inline_history !50608
  br i1 %i.da, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %exitcond143.not.i = icmp eq i64 %i.ah, %.sroa.0.0.i.i
  br i1 %exitcond143.not.i, label %._crit_edge.i, label %.lr.ph.split.i

bb.u:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i
  %i.db = call noundef zeroext i1 %i.au(ptr noundef nonnull %i.ar, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 8), !noalias !50620, !inline_history !50608
  br i1 %i.db, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.t

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit: ; preds = %bb.p, %bb.l, %bb.i, %._crit_edge.i
  %i.dc = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.dd = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !invariant.load !62, !nonnull !62
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull %i.dc, ptr noalias noundef nonnull readonly captures(address, read_provenance) @997, i64 noundef 1)
  br label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread

_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread: ; preds = %bb.u, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i, %bb.r, %bb.s, %bb.d, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, %bb.c, %bb.q, %bb.n, %bb.o, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i, %bb.k, %bb.j, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i, %bb.h, %bb.a, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit
  %.sroa.0.1 = phi i1 [ %i.dg, %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int16TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit ], [ true, %bb.a ], [ true, %bb.k ], [ true, %bb.q ], [ true, %bb.d ], [ true, %bb.h ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.us.i ], [ true, %bb.j ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit120.thread.i ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.c ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i ], [ true, %bb.s ], [ true, %bb.r ], [ true, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int16TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types9Int32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCsaSXGKSfiU2E_10lance_file(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtRNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeNtB6_7Display3fmtCsaSXGKSfiU2E_10lance_file, ptr %.sroa.44.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !62, !noundef !62
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !62, !align !63, !noundef !62
  %i.h = call noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @1161, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.h, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !50642)
  call void @llvm.experimental.noalias.scope.decl(metadata !50643)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50644, !noalias !50645, !noundef !62 ; 7 uses
  %i.k = lshr i64 %i.j, 2                         ; 7 uses
  %.sroa.0.0.i.i = call noundef i64 @llvm.umin.i64(i64 %i.k, i64 10) ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !50646, !noalias !50645, !noundef !62
  %.not.i.i.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !50642, !noalias !50645
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !50642, !noalias !50645
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !50642, !noalias !50645
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val114.i = load ptr, ptr %i.t, align 8, !alias.scope !50642, !noalias !50645 ; 2 uses
  br i1 %.not.i.i.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i, label %.lr.ph.split.i

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i: ; preds = %.lr.ph.i, %bb.e
  %.sroa.015.0124.us.i = phi i64 [ %i.u, %bb.e ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.015.0124.us.i, 1  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50647)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !50643, !noalias !50648, !nonnull !62, !noundef !62
  %i.w = load ptr, ptr %i.f, align 8, !alias.scope !50643, !noalias !50648, !nonnull !62, !align !63, !noundef !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !invariant.load !62, !noalias !50649, !nonnull !62
  %i.z = call noundef zeroext i1 %i.y(ptr noundef nonnull %i.v, ptr noalias noundef nonnull readonly captures(address, read_provenance) @133, i64 noundef 2), !noalias !50649, !inline_history !50637
  br i1 %i.z, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i
  %i.aa = call fastcc noundef zeroext i1 @_RNCNvXs4_NtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_arrayINtB7_14PrimitiveArrayNtNtBb_5types9Int32TypeENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0CsaSXGKSfiU2E_10lance_file(ptr nonnull readonly align 8 dereferenceable(8) %i.d, ptr nonnull readonly align 8 dereferenceable(96) %0, ptr %.val114.i, i64 %i.j, i64 noundef %.sroa.015.0124.us.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !50642
  br i1 %i.aa, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !50643, !noalias !50648, !nonnull !62, !noundef !62
  %i.ac = load ptr, ptr %i.f, align 8, !alias.scope !50643, !noalias !50648, !nonnull !62, !align !63, !noundef !62
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !invariant.load !62, !noalias !50649, !nonnull !62
  %i.af = call noundef zeroext i1 %i.ae(ptr noundef nonnull %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @134, i64 noundef 2), !noalias !50649, !inline_history !50637
  br i1 %i.af, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %exitcond145.not.i = icmp eq i64 %i.u, %.sroa.0.0.i.i
  br i1 %exitcond145.not.i, label %._crit_edge.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.us.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.e, %bb.b
  %i.ag = icmp ugt i64 %i.j, 43
  br i1 %i.ag, label %bb.g, label %_RINvNtCs4ytUTZt2Gw9_11arrow_array5array16print_long_arrayINtNtB2_15primitive_array14PrimitiveArrayNtNtB4_5types9Int32TypeENCNvXs4_BW_BT_NtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt0ECsaSXGKSfiU2E_10lance_file.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.t
  %.sroa.015.0124.i = phi i64 [ %i.ah, %bb.t ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ah = add nuw nsw i64 %.sroa.015.0124.i, 1    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50647)
  %exitcond.not.i = icmp eq i64 %.sroa.015.0124.i, %i.o
  br i1 %exitcond.not.i, label %bb.f, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i, !prof !61

bb.f:                                             ; preds = %.lr.ph.split.i
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @619, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @621) #49, !noalias !50650
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.i: ; preds = %.lr.ph.split.i
  %i.ai = add i64 %.sroa.015.0124.i, %i.s         ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !50650, !noundef !62
  %i.am = trunc i64 %i.ai to i8
  %i.an = and i8 %i.am, 7
  %i.ao = xor i8 %i.al, -1
  %i.ap = lshr i8 %i.ao, %i.an
  %i.aq = trunc i8 %i.ap to i1
  %i.ar = load ptr, ptr %1, align 8, !alias.scope !50643, !noalias !50648, !nonnull !62, !noundef !62 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !alias.scope !50643, !noalias !50648, !nonnull !62, !align !63, !noundef !62
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !62, !noalias !50649, !nonnull !62 ; 2 uses
  br i1 %i.aq, label %bb.u, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types9Int32TypeENtB7_5Array7is_nullCsaSXGKSfiU2E_10lance_file.exit.thread.i

bb.g:                                             ; preds = %._crit_edge.i
  %i.av = icmp ugt i64 %i.j, 83
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50651
  %i.aw = add nsw i64 %i.k, -20
  store i64 %i.aw, ptr %i.b, align 8, !noalias !50651
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50651
  store ptr %i.b, ptr %i.a, align 8, !noalias !50651
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !50651
end_hunk_14
