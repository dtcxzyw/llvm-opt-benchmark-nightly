Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 155
begin_hunk_0_@_RNvXs_NtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical4blobNtB4_21BlobStructuralEncoderNtNtBa_7encoder12FieldEncoder12maybe_encode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238

bb.cj:                                            ; preds = %bb.ch
  %i.hs = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvMNtNtNtCsjjpCCFGI3ul_14lance_encoding9encodings7logical4blobNtB2_21BlobStructuralEncoder10wrap_tasks(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.hs, ptr noundef nonnull %.sroa.0.0.i.i.i.i.i, i64 noundef %.sroa.5.0.copyload)
          to label %bb.ck unwind label %.thread347

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8, !nonnull !75, !noundef !75 ; 3 uses
  %i.hv = load i64, ptr %i.o, align 8, !range !76, !noundef !75
  %i.hw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !noundef !75 ; 2 uses
  %i.hy = icmp ult i64 %i.hx, 576460752303423488
  call void @llvm.assume(i1 %i.hy)
  %i.hz = getelementptr inbounds nuw [16 x i8], ptr %i.hu, i64 %i.hx
  store ptr %i.hu, ptr %i.i, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.hv, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.hu, ptr %i.ib, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.hz, ptr %i.ic, align 8
  invoke fastcc void @_RNvXs0_NtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB7_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB9_5boxed3BoxDNtNtNtBZ_6future6future6Futurep6OutputINtNtBZ_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBZ_6marker4SendEL_EEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB2L_(ptr noalias noundef align 8 dereferenceable(24) %i.aj, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.i)
          to label %bb.cl unwind label %.thread347

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %.not152, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ie = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !86476
  %i.if = icmp eq i64 %i.ie, 1
  br i1 %i.if, label %bb.cn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211

bb.cn:                                            ; preds = %bb.cm
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcStE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cb)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211: ; preds = %bb.cn, %bb.cm, %bb.cl
  br i1 %.not153, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213, label %bb.co

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211
  %i.ig = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !86477
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213

bb.cp:                                            ; preds = %bb.co
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcStE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cd)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213: ; preds = %bb.cp, %bb.co, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.experimental.noalias.scope.decl(metadata !86478)
  call void @llvm.experimental.noalias.scope.decl(metadata !86479)
  %i.ii = load ptr, ptr %i.ao, align 8, !alias.scope !86480, !nonnull !75, !noundef !75
  %i.ij = atomicrmw sub ptr %i.ii, i64 1 release, align 8, !noalias !86480
  %i.ik = icmp eq i64 %i.ij, 1
  br i1 %i.ik, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.sink.split, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.sink.split: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderEBF_.exit
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_E9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtNtCs4ytUTZt2Gw9_11arrow_array5array5ArrayEL_EECsjjpCCFGI3ul_14lance_encoding.exit.sink.split, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjjpCCFGI3ul_14lance_encoding6repdef13RepDefBuilderEBF_.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit213
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238: ; preds = %bb.ds, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.experimental.noalias.scope.decl(metadata !86481)
  %i.il = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val.i214 = load ptr, ptr %i.il, align 8, !alias.scope !86481, !nonnull !75, !noundef !75 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.val1.i = load i64, ptr %i.im, align 8, !alias.scope !86481, !noundef !75
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueSINtNtB4_3pin3PinINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEB2u_(ptr noalias noundef nonnull readonly align 8 %.val.i214, i64 noundef %.val1.i)
          to label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropB2w_.exit.i unwind label %bb.cq, !noalias !86481

bb.cq:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val4.i = load i64, ptr %i.aj, align 8, !alias.scope !86481 ; 2 uses
  %i.io = icmp eq i64 %.val4.i, 0
  br i1 %i.io, label %.thread290, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ip = shl nuw i64 %.val4.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i214, i64 noundef %i.ip, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86481
  br label %.thread290

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropB2w_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238
  %.val2.i = load i64, ptr %i.aj, align 8, !alias.scope !86481 ; 2 uses
  %i.iq = icmp eq i64 %.val2.i, 0
  br i1 %i.iq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEB2J_.exit, label %bb.cs

bb.cs:                                            ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtBK_6future6future6Futurep6OutputINtNtBK_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtBK_6marker4SendEL_EEENtNtNtBK_3ops4drop4Drop4dropB2w_.exit.i
  %i.ir = shl nuw i64 %.val2.i, 4
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i214, i64 noundef %i.ir, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86481
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEB2J_.exit

.thread334:                                       ; preds = %bb.ca, %bb.cb, %bb.bt, %bb.bs
  %.pn158339 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp346, %bb.bs ], [ %.pn, %bb.bt ], [ %i.gx, %bb.cb ], [ %i.gx, %bb.ca ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86482)
  call void @llvm.experimental.noalias.scope.decl(metadata !86483)
  %i.is = load ptr, ptr %i.aa, align 8, !alias.scope !86484, !nonnull !75, !noundef !75
  %i.it = atomicrmw sub ptr %i.is, i64 1 release, align 8, !noalias !86484
  %i.iu = icmp eq i64 %i.it, 1
  br i1 %i.iu, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.thread334
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.cu unwind label %bb.as

bb.cu:                                            ; preds = %bb.bl, %bb.bo, %bb.ct, %.thread334
  %.pn158.pn.ph = phi { ptr, i32 } [ %i.gi, %bb.bo ], [ %i.gd, %bb.bl ], [ %.pn158339, %bb.ct ], [ %.pn158339, %.thread334 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86485)
  call void @llvm.experimental.noalias.scope.decl(metadata !86486)
  %i.iv = load ptr, ptr %i.ad, align 8, !alias.scope !86487, !nonnull !75, !noundef !75
  %i.iw = atomicrmw sub ptr %i.iv, i64 1 release, align 8, !noalias !86487
  %i.ix = icmp eq i64 %i.iw, 1
  br i1 %i.ix, label %bb.cv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit254

bb.cv:                                            ; preds = %bb.cu
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtBN_5types10UInt64TypeEE9drop_slowCsaSUzbtlTZbr_30datafusion_functions_aggregate(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit254 unwind label %bb.as

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.be
  %i.iy = load ptr, ptr %i.fd, align 8, !alias.scope !86470, !noundef !75
  %i.iz = load i64, ptr %i.fe, align 8, !alias.scope !86470, !noundef !75
  %i.ja = add i64 %i.iz, %.sroa.0112.0372         ; 2 uses
  %i.jb = lshr i64 %i.ja, 3
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !noalias !86470, !noundef !75
  %i.je = trunc i64 %i.ja to i8
  %i.jf = and i8 %i.je, 7
  %i.jg = xor i8 %i.jd, -1
  %i.jh = lshr i8 %i.jg, %i.jf
  %i.ji = trunc i8 %i.jh to i1
  br i1 %i.ji, label %bb.cx, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread: ; preds = %bb.bd, %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !86488)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0112.0372, ptr %i.c, align 8, !noalias !86488
  %i.jj = load i64, ptr %i.ef, align 8, !alias.scope !86488, !noundef !75
  %i.jk = lshr i64 %i.jj, 3                       ; 2 uses
  %i.jl = add nsw i64 %i.jk, -1                   ; 2 uses
  %i.jm = icmp ult i64 %.sroa.0112.0372, %i.jl
  br i1 %i.jm, label %bb.cy, label %bb.cw, !prof !78

bb.cw:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !86488
  store i64 %i.jl, ptr %i.b, align 8, !noalias !86488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !86488
  store ptr %i.c, ptr %i.a, align 8, !noalias !86488
  %.sroa.42.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i220, align 8, !noalias !86488
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @1498, ptr %i.jn, align 8, !noalias !86488
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !86488
  %i.jo = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @2066, ptr %i.jo, align 8, !noalias !86488
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsjjpCCFGI3ul_14lance_encoding, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !86488
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.jp, align 8, !noalias !86488
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !86488
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @2067, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2068) #66
          to label %.noexc221 unwind label %.loopexit.split-lp

.noexc221:                                        ; preds = %bb.cw
  unreachable

bb.cx:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit
  br i1 %.not153, label %bb.do, label %bb.dn

bb.cy:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericBinaryTypexEENtB7_5Array7is_nullCsjjpCCFGI3ul_14lance_encoding.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !86489)
  %i.jq = load ptr, ptr %i.fj, align 8, !alias.scope !86490, !noundef !75 ; 2 uses
  %i.jr = icmp samesign ult i64 %i.fr, %i.jk
  call void @llvm.assume(i1 %i.jr)
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %i.fr
  %i.jt = load i64, ptr %i.js, align 8, !noalias !86490, !noundef !75 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %.sroa.0112.0372
  %i.jv = load i64, ptr %i.ju, align 8, !noalias !86490, !noundef !75 ; 3 uses
  %i.jw = load ptr, ptr %i.fk, align 8, !alias.scope !86490, !noundef !75
  %i.jx = sub i64 %i.jt, %i.jv                    ; 4 uses
  %i.jy = icmp sgt i64 %i.jx, -1
  call void @llvm.assume(i1 %i.jy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.jz = icmp eq i64 %i.jt, %i.jv
  br i1 %i.jz, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ka = load i64, ptr %i.ev, align 8, !alias.scope !86491, !noundef !75 ; 3 uses
  %i.kb = load i64, ptr %i.ah, align 8, !range !76, !alias.scope !86491, !noundef !75
  %i.kc = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.dc unwind label %.loopexit

bb.db:                                            ; preds = %bb.cy
  %i.kd = getelementptr inbounds i8, ptr %i.jw, i64 %i.jv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXs4_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer9immutableNtB5_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromRShE4from(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kd, i64 noundef %i.jx)
          to label %bb.de unwind label %.loopexit

bb.dc:                                            ; preds = %bb.cz, %bb.da
  %i.ke = load ptr, ptr %i.eu, align 8, !alias.scope !86491, !nonnull !75, !noundef !75
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.ka
  store i64 0, ptr %i.kf, align 8
  %i.kg = add i64 %i.ka, 1
  store i64 %i.kg, ptr %i.ev, align 8, !alias.scope !86491
  %i.kh = load i64, ptr %i.fa, align 8, !alias.scope !86492, !noundef !75 ; 3 uses
  %i.ki = load i64, ptr %i.ag, align 8, !range !76, !alias.scope !86492, !noundef !75
  %i.kj = icmp eq i64 %i.kh, %i.ki
  br i1 %i.kj, label %bb.dd, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248

bb.dd:                                            ; preds = %bb.dc
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248 unwind label %.loopexit

bb.de:                                            ; preds = %bb.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !86493)
  call void @llvm.experimental.noalias.scope.decl(metadata !86494)
  %i.kk = load i64, ptr %i.fl, align 8, !alias.scope !86493, !noalias !86494, !noundef !75 ; 2 uses
  %i.kl = load i64, ptr %i.fm, align 8, !alias.scope !86494, !noalias !86493, !noundef !75 ; 2 uses
  %i.km = add i64 %i.kl, %i.kk
  %i.kn = load i64, ptr %i.fn, align 8, !alias.scope !86493, !noalias !86494, !noundef !75 ; 2 uses
  %i.ko = add i64 %i.kn, -1                       ; 2 uses
  %i.kp = and i64 %i.ko, %i.kl
  %i.kq = sub i64 %i.kn, %i.kp
  %i.kr = and i64 %i.kq, %i.ko
  %i.ks = add i64 %i.km, %i.kr
  store i64 %i.ks, ptr %i.fl, align 8, !alias.scope !86493, !noalias !86494
  call void @llvm.experimental.noalias.scope.decl(metadata !86495)
  call void @llvm.experimental.noalias.scope.decl(metadata !86496)
  %i.kt = load i64, ptr %i.fo, align 8, !alias.scope !86497, !noalias !86498, !noundef !75 ; 3 uses
  %i.ku = load i64, ptr %4, align 8, !range !76, !alias.scope !86497, !noalias !86498, !noundef !75
  %i.kv = icmp eq i64 %i.kt, %i.ku
  br i1 %i.kv, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %bb.de
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCsjjpCCFGI3ul_14lance_encoding6buffer11LanceBufferE8grow_oneBQ_(ptr noalias noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.dj unwind label %bb.dg, !noalias !86498

bb.dg:                                            ; preds = %bb.df
  %i.kw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !86499)
  call void @llvm.experimental.noalias.scope.decl(metadata !86500)
  call void @llvm.experimental.noalias.scope.decl(metadata !86501)
  call void @llvm.experimental.noalias.scope.decl(metadata !86502)
  %i.kx = load ptr, ptr %i.af, align 8, !alias.scope !86503, !noalias !86497, !nonnull !75, !noundef !75
  %i.ky = atomicrmw sub ptr %i.kx, i64 1 release, align 8, !noalias !86504
  %i.kz = icmp eq i64 %i.ky, 1
  br i1 %i.kz, label %bb.dh, label %.body225

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs4YAKbnGhBJc_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body225 unwind label %bb.di, !noalias !86497

bb.di:                                            ; preds = %bb.dh
  %i.la = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68, !noalias !86497
  unreachable

bb.dj:                                            ; preds = %bb.df, %bb.de
  %i.lb = load ptr, ptr %i.fp, align 8, !alias.scope !86497, !noalias !86498, !nonnull !75, !noundef !75
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.lb, i64 %i.kt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lc, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !noalias !86497
  %i.ld = add i64 %i.kt, 1
  store i64 %i.ld, ptr %i.fo, align 8, !alias.scope !86497, !noalias !86498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.le = load i64, ptr %i.ev, align 8, !alias.scope !86505, !noundef !75 ; 3 uses
  %i.lf = load i64, ptr %i.ah, align 8, !range !76, !alias.scope !86505, !noundef !75
  %i.lg = icmp eq i64 %i.le, %i.lf
  br i1 %i.lg, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.dl unwind label %.loopexit

bb.dl:                                            ; preds = %bb.dj, %bb.dk
  %i.lh = load ptr, ptr %i.eu, align 8, !alias.scope !86505, !nonnull !75, !noundef !75
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %i.le
  store i64 %i.kk, ptr %i.li, align 8
  %i.lj = add i64 %i.le, 1
  store i64 %i.lj, ptr %i.ev, align 8, !alias.scope !86505
  %i.lk = load i64, ptr %i.fa, align 8, !alias.scope !86506, !noundef !75 ; 3 uses
  %i.ll = load i64, ptr %i.ag, align 8, !range !76, !alias.scope !86506, !noundef !75
  %i.lm = icmp eq i64 %i.lk, %i.ll
  br i1 %i.lm, label %bb.dm, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248

bb.dm:                                            ; preds = %bb.dl
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecyE8grow_oneCs5GHimaBI8WD_10num_bigint(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248 unwind label %.loopexit

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecyE8push_mutCsjjpCCFGI3ul_14lance_encoding.exit248: ; preds = %bb.dl, %bb.dm, %bb.dc, %bb.dd, %bb.ef, %bb.eg
  %.sink430 = phi i64 [ %i.mz, %bb.ef ], [ %i.kh, %bb.dc ], [ %i.mz, %bb.eg ], [ %i.kh, %bb.dd ], [ %i.lk, %bb.dm ], [ %i.lk, %bb.dl ] ; 2 uses
  %.sink = phi i64 [ 0, %bb.ef ], [ 0, %bb.dc ], [ 0, %bb.eg ], [ 0, %bb.dd ], [ %i.jx, %bb.dm ], [ %i.jx, %bb.dl ]
  %i.ln = load ptr, ptr %i.ez, align 8, !nonnull !75, !noundef !75
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %.sink430
  store i64 %.sink, ptr %i.lo, align 8
  %i.lp = add i64 %.sink430, 1
  store i64 %i.lp, ptr %i.fa, align 8
  %exitcond.not = icmp eq i64 %i.fr, %i.ei
  br i1 %exitcond.not, label %._crit_edge, label %bb.bd

bb.dn:                                            ; preds = %bb.cx
  %i.lq = icmp ult i64 %.sroa.0112.0372, %i.ff
  br i1 %i.lq, label %bb.dz, label %.invoke

bb.do:                                            ; preds = %bb.cx
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !86507
  %i.lr = call noundef dereferenceable_or_null(29) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !86507 ; 3 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 29) #66
          to label %.noexc233 unwind label %.loopexit.split-lp

.noexc233:                                        ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.lr, ptr noundef nonnull align 1 dereferenceable(29) @1136, i64 29, i1 false), !noalias !86508
  store i8 11, ptr %0, align 8
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @1138, ptr %.sroa.5124.0..sroa_idx, align 8
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 29, ptr %.sroa.6125.0..sroa_idx, align 8
  %.sroa.6125.sroa.4.0..sroa.6125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.lr, ptr %.sroa.6125.sroa.4.0..sroa.6125.0..sroa_idx.sroa_idx, align 8
  %.sroa.6125.sroa.5.0..sroa.6125.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 29, ptr %.sroa.6125.sroa.5.0..sroa.6125.0..sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !86509)
  %.val.i234 = load i64, ptr %i.ag, align 8, !alias.scope !86509 ; 2 uses
  %i.lt = icmp eq i64 %.val.i234, 0
  br i1 %i.lt, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %.val1.i235 = load ptr, ptr %i.ez, align 8, !alias.scope !86509, !nonnull !75, !noundef !75
  %i.lu = shl nuw i64 %.val.i234, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i235, i64 noundef %i.lu, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86509
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit: ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.experimental.noalias.scope.decl(metadata !86510)
  %.val.i236 = load i64, ptr %i.ah, align 8, !alias.scope !86510 ; 2 uses
  %i.lv = icmp eq i64 %.val.i236, 0
  br i1 %i.lv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit
  %.val1.i237 = load ptr, ptr %i.eu, align 8, !alias.scope !86510, !nonnull !75, !noundef !75
  %i.lw = shl nuw i64 %.val.i236, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i237, i64 noundef %i.lw, i64 noundef range(i64 1, -9223372036854775807) 8) #63, !noalias !86510
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECsjjpCCFGI3ul_14lance_encoding.exit238

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit188: ; preds = %bb.ap, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecINtNtB4_3pin3PinINtNtBG_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCsjjpCCFGI3ul_14lance_encoding7encoder11EncodedPageNtNtCs63DIHKhvmTb_10lance_core5error5ErrorENtNtB4_6marker4SendEL_EEEEB2J_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %.not152, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit239, label %bb.dt

bb.dt:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcSNtNtCsjjpCCFGI3ul_14lance_encoding6repdef24DefinitionInterpretationEEB1e_.exit188
  %i.lx = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !86511
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %bb.du, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc4sync3ArcStEEECsjjpCCFGI3ul_14lance_encoding.exit239

bb.du:                                            ; preds = %bb.dt
  fence acquire
  call void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcStE9drop_slowCsjjpCCFGI3ul_14lance_encoding(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.cb)
end_hunk_0
