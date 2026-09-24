Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 148
begin_hunk_0_@_RNvNtCs9JgWGBoX3PY_12lance_linalg7kernels4hash:bb.a
  %i.aje = add i64 %i.ajb, %i.aiz                 ; 3 uses
  %i.ajf = call noundef i64 @llvm.fshl.i64(i64 %i.ajb, i64 %i.ajb, i64 17)
  %i.ajg = call noundef i64 @llvm.fshl.i64(i64 %i.ajd, i64 %i.ajd, i64 21)
  %i.ajh = call noundef i64 @llvm.fshl.i64(i64 %i.aje, i64 %i.aje, i64 32)
  %i.aji = xor i64 %i.ajg, %i.ajf
  %i.ajj = xor i64 %i.aji, %i.ajh
  %i.ajk = xor i64 %i.ajj, %i.aje
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE12append_valueCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(104) %i.l, i64 noundef %i.ajk)
          to label %bb.eu unwind label %.loopexit.i272, !noalias !5252

bb.eu:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array15primitive_array14PrimitiveArrayNtNtB9_5types10UInt64TypeENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !5252
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %exitcond.not.i274 = icmp eq i64 %i.agh, %i.afp
  br i1 %exitcond.not.i274, label %._crit_edge.i275, label %bb.ek

bb.ew:                                            ; preds = %bb.en
  %i.ajl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5252
  unreachable

_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types10UInt64TypeEB4_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i278, %bb.eq
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.afx), !noalias !5252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !5252
  br label %bb.gh

bb.ex:                                            ; preds = %bb.a
  %i.ajm = tail call noundef nonnull align 8 ptr @_RNvNtCs4ytUTZt2Gw9_11arrow_array4cast15as_string_array(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2) ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5265)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5266
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.ajm, i64 40
  %i.ajo = load i64, ptr %i.ajn, align 8, !alias.scope !5265, !noalias !5267, !noundef !18
  %i.ajp = lshr i64 %i.ajo, 2                     ; 2 uses
  %i.ajq = add nsw i64 %i.ajp, -1                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5268)
  %i.ajr = shl i64 %i.ajq, 3                      ; 4 uses
  %i.ajs = icmp ugt i64 %i.ajq, 2305843009213693951
  %.not.i.i.i280 = icmp ugt i64 %i.ajr, 9223372036854775800
  %or.cond.i.i.i281 = or i1 %i.ajs, %.not.i.i.i280
  br i1 %or.cond.i.i.i281, label %bb.fb, label %bb.ey, !prof !27

bb.ey:                                            ; preds = %bb.ex
  %i.ajt = icmp eq i64 %i.ajr, 0
  br i1 %i.ajt, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i282, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !5269
  %i.aju = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.ajr, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !5269 ; 2 uses
  %i.ajv = icmp eq ptr %i.aju, null
  br i1 %i.ajv, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ajw = ptrtoint ptr %i.aju to i64
  br label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i282

bb.fb:                                            ; preds = %bb.ez, %bb.ex
  %.sroa.4.0.ph.i.i314 = phi i64 [ 8, %bb.ez ], [ 0, %bb.ex ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i314, i64 %i.ajr) #74, !noalias !5270
  unreachable

_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i282: ; preds = %bb.fa, %bb.ey
  %.sroa.10.0.i.i283 = phi i64 [ %i.ajw, %bb.fa ], [ 8, %bb.ey ]
  %.sroa.4.0.i.i284 = phi i64 [ %i.ajq, %bb.fa ], [ 0, %bb.ey ] ; 2 uses
  %i.ajx = inttoptr i64 %.sroa.10.0.i.i283 to ptr
  %i.ajy = icmp samesign ule i64 %i.ajq, %.sroa.4.0.i.i284
  tail call void @llvm.assume(i1 %i.ajy)
  store i64 %.sroa.4.0.i.i284, ptr %i.h, align 8, !alias.scope !5268, !noalias !5266
  %.sroa.4.0..sroa_idx.i.i285 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ajx, ptr %.sroa.4.0..sroa_idx.i.i285, align 8, !alias.scope !5268, !noalias !5266
  %.sroa.5.0..sroa_idx.i.i286 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.42.0..sroa_idx.i.i287 = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i287, align 8, !alias.scope !5268, !noalias !5266
  %.sroa.53.0..sroa_idx.i.i288 = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i286, i8 0, i64 16, i1 false), !alias.scope !5268, !noalias !5266
  store i64 %i.ajq, ptr %.sroa.53.0..sroa_idx.i.i288, align 8, !alias.scope !5268, !noalias !5266
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajz, i8 9, i64 24, i1 false), !alias.scope !5268, !noalias !5266
  %.not.i289 = icmp eq i64 %i.ajq, 0
  br i1 %.not.i289, label %._crit_edge.i310, label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i282
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajm, i64 72
  %i.akb = load ptr, ptr %i.aka, align 8, !alias.scope !5271, !noalias !5267, !noundef !18
  %.not.i.i26.i = icmp eq ptr %i.akb, null
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajm, i64 104
  %i.akd = load i64, ptr %i.akc, align 8, !alias.scope !5265, !noalias !5267
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajm, i64 80
  %i.akf = load ptr, ptr %i.ake, align 8, !alias.scope !5265, !noalias !5267
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajm, i64 96
  %i.akh = load i64, ptr %i.akg, align 8, !alias.scope !5265, !noalias !5267
  %.sroa.415.0..sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.516.0..sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.617.0..sroa_idx.i293 = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i294 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.918.0..sroa_idx.i295 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.10.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajm, i64 32
  %i.akj = load ptr, ptr %i.aki, align 8, !alias.scope !5265, !noalias !5267 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajm, i64 56
  %i.akl = load ptr, ptr %i.akk, align 8, !alias.scope !5265, !noalias !5267
  br label %bb.fc

._crit_edge.i310:                                 ; preds = %bb.fn, %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5266
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE6finishCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.f, ptr noalias noundef align 8 dereferenceable(104) %i.h)
          to label %bb.fg unwind label %.loopexit.split-lp.i297, !noalias !5266

bb.fc:                                            ; preds = %bb.fn, %.lr.ph.i290
  %.sroa.01.030.i = phi i64 [ 0, %.lr.ph.i290 ], [ %i.akm, %bb.fn ] ; 4 uses
  %i.akm = add nuw i64 %.sroa.01.030.i, 1         ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5272)
  br i1 %.not.i.i26.i, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.akn = icmp ult i64 %.sroa.01.030.i, %i.akd
  br i1 %i.akn, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.fe, !prof !16

bb.fe:                                            ; preds = %bb.fd
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #74
          to label %.noexc.i302 unwind label %.loopexit.split-lp.i297, !noalias !5266

.noexc.i302:                                      ; preds = %bb.fe
  unreachable

.loopexit.i307:                                   ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i, %bb.fl
  %lpad.loopexit.i308 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

.loopexit.split-lp.i297:                          ; preds = %bb.fe, %._crit_edge.i310
  %lpad.loopexit.split-lp.i298 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.ff:                                            ; preds = %.loopexit.split-lp.i297, %.loopexit.i307
  %lpad.phi.i299 = phi { ptr, i32 } [ %lpad.loopexit.i308, %.loopexit.i307 ], [ %lpad.loopexit.split-lp.i298, %.loopexit.split-lp.i297 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types10UInt64TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(104) %i.h) #77
          to label %common.resume unwind label %bb.fo, !noalias !5266

bb.fg:                                            ; preds = %._crit_edge.i310
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !5265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5266
  call void @llvm.experimental.noalias.scope.decl(metadata !5273)
  %.val.i.i311 = load i64, ptr %i.h, align 8, !alias.scope !5273, !noalias !5266 ; 2 uses
  %i.ako = icmp eq i64 %.val.i.i311, 0
  br i1 %i.ako, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i313, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %.val2.i.i312 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i285, align 8, !alias.scope !5273, !noalias !5266, !nonnull !18, !noundef !18
  %i.akp = shl nuw i64 %.val.i.i311, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i312, i64 noundef %i.akp, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !5274
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i313

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i313: ; preds = %bb.fh, %bb.fg
  %i.akq = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.akr = load i64, ptr %i.akq, align 8, !range !36, !alias.scope !5275, !noalias !5266, !noundef !18
  %i.aks = icmp eq i64 %i.akr, 0
  br i1 %i.aks, label %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typelEB4_.exit, label %bb.fi

bb.fi:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i313
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.akq)
          to label %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typelEB4_.exit unwind label %bb.fj, !noalias !5266

bb.fj:                                            ; preds = %bb.fi
  %i.akt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.ajz) #77
          to label %common.resume unwind label %bb.fk, !noalias !5266

bb.fk:                                            ; preds = %bb.fj
  %i.aku = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5266
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.fd
  %i.akv = add i64 %.sroa.01.030.i, %i.akh        ; 2 uses
  %i.akw = lshr i64 %i.akv, 3
  %i.akx = getelementptr inbounds nuw i8, ptr %i.akf, i64 %i.akw
  %i.aky = load i8, ptr %i.akx, align 1, !noalias !5276, !noundef !18
  %i.akz = trunc i64 %i.akv to i8
  %i.ala = and i8 %i.akz, 7
  %i.alb = xor i8 %i.aky, -1
  %i.alc = lshr i8 %i.alb, %i.ala
  %i.ald = trunc i8 %i.alc to i1
  br i1 %i.ald, label %bb.fl, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i

bb.fl:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE11append_nullCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(104) %i.h)
          to label %bb.fn unwind label %.loopexit.i307, !noalias !5266

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5266
  store i64 8317987319222330741, ptr %i.g, align 8, !noalias !5266
  store i64 7816392313619706465, ptr %.sroa.415.0..sroa_idx.i291, align 8, !noalias !5266
  store i64 7237128888997146477, ptr %.sroa.516.0..sroa_idx.i292, align 8, !noalias !5266
  store i64 8387220255154660723, ptr %.sroa.617.0..sroa_idx.i293, align 8, !noalias !5266
  %i.ale = icmp ult i64 %i.akm, %i.ajp
  call void @llvm.assume(i1 %i.ale)
  %i.alf = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %i.akm
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i294, i8 0, i64 40, i1 false), !noalias !5266
  %i.alg = load i32, ptr %i.alf, align 4, !noalias !5277, !noundef !18
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.akj, i64 %.sroa.01.030.i
  %i.ali = load i32, ptr %i.alh, align 4, !noalias !5277, !noundef !18 ; 2 uses
  %i.alj = sext i32 %i.ali to i64
  %i.alk = getelementptr inbounds i8, ptr %i.akl, i64 %i.alj
  %i.all = sub i32 %i.alg, %i.ali                 ; 2 uses
  %i.alm = icmp sgt i32 %i.all, -1
  %i.aln = zext nneg i32 %i.all to i64
  call void @llvm.assume(i1 %i.alm)
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.alk, i64 noundef %i.aln), !noalias !5266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5266
  store i8 -1, ptr %i.e, align 1, !noalias !5266
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 1), !noalias !5266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5266
  %.sroa.0.0.copyload.i.i303 = load i64, ptr %i.g, align 8, !alias.scope !5278, !noalias !5266
  %.sroa.10.0.copyload.i.i304 = load i64, ptr %.sroa.415.0..sroa_idx.i291, align 8, !alias.scope !5278, !noalias !5266
  %.sroa.17.0.copyload.i.i305 = load i64, ptr %.sroa.516.0..sroa_idx.i292, align 8, !alias.scope !5278, !noalias !5266 ; 3 uses
  %.sroa.22.0.copyload.i.i306 = load i64, ptr %.sroa.617.0..sroa_idx.i293, align 8, !alias.scope !5278, !noalias !5266
  %i.alo = load i64, ptr %.sroa.918.0..sroa_idx.i295, align 8, !alias.scope !5278, !noalias !5266, !noundef !18
  %i.alp = shl i64 %i.alo, 56
  %i.alq = load i64, ptr %.sroa.10.0..sroa_idx.i296, align 8, !alias.scope !5278, !noalias !5266, !noundef !18
  %i.alr = or i64 %i.alp, %i.alq                  ; 2 uses
  %i.als = xor i64 %i.alr, %.sroa.22.0.copyload.i.i306 ; 3 uses
  %i.alt = add i64 %.sroa.17.0.copyload.i.i305, %.sroa.0.0.copyload.i.i303 ; 3 uses
  %i.alu = add i64 %i.als, %.sroa.10.0.copyload.i.i304 ; 2 uses
  %i.alv = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i305, i64 %.sroa.17.0.copyload.i.i305, i64 13)
  %i.alw = xor i64 %i.alv, %i.alt                 ; 3 uses
  %i.alx = call noundef i64 @llvm.fshl.i64(i64 %i.als, i64 %i.als, i64 16)
  %i.aly = xor i64 %i.alx, %i.alu                 ; 3 uses
  %i.alz = call noundef i64 @llvm.fshl.i64(i64 %i.alt, i64 %i.alt, i64 32)
  %i.ama = add i64 %i.alu, %i.alw                 ; 3 uses
  %i.amb = add i64 %i.aly, %i.alz                 ; 2 uses
  %i.amc = call noundef i64 @llvm.fshl.i64(i64 %i.alw, i64 %i.alw, i64 17)
  %i.amd = xor i64 %i.ama, %i.amc                 ; 3 uses
  %i.ame = call noundef i64 @llvm.fshl.i64(i64 %i.aly, i64 %i.aly, i64 21)
  %i.amf = xor i64 %i.ame, %i.amb                 ; 3 uses
  %i.amg = call noundef i64 @llvm.fshl.i64(i64 %i.ama, i64 %i.ama, i64 32)
  %i.amh = xor i64 %i.amb, %i.alr
  %i.ami = xor i64 %i.amg, 255
  %i.amj = add i64 %i.amh, %i.amd                 ; 3 uses
  %i.amk = add i64 %i.amf, %i.ami                 ; 2 uses
  %i.aml = call noundef i64 @llvm.fshl.i64(i64 %i.amd, i64 %i.amd, i64 13)
  %i.amm = xor i64 %i.amj, %i.aml                 ; 3 uses
  %i.amn = call noundef i64 @llvm.fshl.i64(i64 %i.amf, i64 %i.amf, i64 16)
  %i.amo = xor i64 %i.amn, %i.amk                 ; 3 uses
  %i.amp = call noundef i64 @llvm.fshl.i64(i64 %i.amj, i64 %i.amj, i64 32)
  %i.amq = add i64 %i.amm, %i.amk                 ; 3 uses
  %i.amr = add i64 %i.amo, %i.amp                 ; 2 uses
  %i.ams = call noundef i64 @llvm.fshl.i64(i64 %i.amm, i64 %i.amm, i64 17)
  %i.amt = xor i64 %i.amq, %i.ams                 ; 3 uses
  %i.amu = call noundef i64 @llvm.fshl.i64(i64 %i.amo, i64 %i.amo, i64 21)
  %i.amv = xor i64 %i.amu, %i.amr                 ; 3 uses
  %i.amw = call noundef i64 @llvm.fshl.i64(i64 %i.amq, i64 %i.amq, i64 32)
  %i.amx = add i64 %i.amt, %i.amr                 ; 3 uses
  %i.amy = add i64 %i.amv, %i.amw                 ; 2 uses
  %i.amz = call noundef i64 @llvm.fshl.i64(i64 %i.amt, i64 %i.amt, i64 13)
  %i.ana = xor i64 %i.amz, %i.amx                 ; 3 uses
  %i.anb = call noundef i64 @llvm.fshl.i64(i64 %i.amv, i64 %i.amv, i64 16)
  %i.anc = xor i64 %i.anb, %i.amy                 ; 3 uses
  %i.and = call noundef i64 @llvm.fshl.i64(i64 %i.amx, i64 %i.amx, i64 32)
  %i.ane = add i64 %i.ana, %i.amy                 ; 3 uses
  %i.anf = add i64 %i.anc, %i.and                 ; 2 uses
  %i.ang = call noundef i64 @llvm.fshl.i64(i64 %i.ana, i64 %i.ana, i64 17)
  %i.anh = xor i64 %i.ang, %i.ane                 ; 3 uses
  %i.ani = call noundef i64 @llvm.fshl.i64(i64 %i.anc, i64 %i.anc, i64 21)
  %i.anj = xor i64 %i.ani, %i.anf                 ; 3 uses
  %i.ank = call noundef i64 @llvm.fshl.i64(i64 %i.ane, i64 %i.ane, i64 32)
  %i.anl = add i64 %i.anh, %i.anf
  %i.anm = add i64 %i.anj, %i.ank                 ; 2 uses
  %i.ann = call noundef i64 @llvm.fshl.i64(i64 %i.anh, i64 %i.anh, i64 13)
  %i.ano = xor i64 %i.ann, %i.anl                 ; 3 uses
  %i.anp = call noundef i64 @llvm.fshl.i64(i64 %i.anj, i64 %i.anj, i64 16)
  %i.anq = xor i64 %i.anp, %i.anm                 ; 2 uses
  %i.anr = add i64 %i.ano, %i.anm                 ; 3 uses
  %i.ans = call noundef i64 @llvm.fshl.i64(i64 %i.ano, i64 %i.ano, i64 17)
  %i.ant = call noundef i64 @llvm.fshl.i64(i64 %i.anq, i64 %i.anq, i64 21)
  %i.anu = call noundef i64 @llvm.fshl.i64(i64 %i.anr, i64 %i.anr, i64 32)
  %i.anv = xor i64 %i.ant, %i.ans
  %i.anw = xor i64 %i.anv, %i.anu
  %i.anx = xor i64 %i.anw, %i.anr
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE12append_valueCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(104) %i.h, i64 noundef %i.anx)
          to label %bb.fm unwind label %.loopexit.i307, !noalias !5266

bb.fm:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypelEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5266
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fl
  %exitcond.not.i309 = icmp eq i64 %i.akm, %i.ajq
  br i1 %exitcond.not.i309, label %._crit_edge.i310, label %bb.fc

bb.fo:                                            ; preds = %bb.ff
  %i.any = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5266
  unreachable

_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typelEB4_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i313, %bb.fi
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.ajz), !noalias !5266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5266
  br label %bb.gh

bb.fp:                                            ; preds = %bb.a
  %i.anz = tail call noundef nonnull align 8 ptr @_RNvNtCs4ytUTZt2Gw9_11arrow_array4cast20as_largestring_array(ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %2) ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5279)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5280
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 40
  %i.aob = load i64, ptr %i.aoa, align 8, !alias.scope !5279, !noalias !5281, !noundef !18
  %i.aoc = lshr i64 %i.aob, 3                     ; 2 uses
  %i.aod = add nsw i64 %i.aoc, -1                 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5282)
  %i.aoe = shl i64 %i.aod, 3                      ; 4 uses
  %i.aof = icmp ugt i64 %i.aod, 2305843009213693951
  %.not.i.i.i315 = icmp ugt i64 %i.aoe, 9223372036854775800
  %or.cond.i.i.i316 = or i1 %i.aof, %.not.i.i.i315
  br i1 %or.cond.i.i.i316, label %bb.ft, label %bb.fq, !prof !27

bb.fq:                                            ; preds = %bb.fp
  %i.aog = icmp eq i64 %i.aoe, 0
  br i1 %i.aog, label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i317, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !5283
  %i.aoh = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.aoe, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !5283 ; 2 uses
  %i.aoi = icmp eq ptr %i.aoh, null
  br i1 %i.aoi, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.aoj = ptrtoint ptr %i.aoh to i64
  br label %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i317

bb.ft:                                            ; preds = %bb.fr, %bb.fp
  %.sroa.4.0.ph.i.i351 = phi i64 [ 8, %bb.fr ], [ 0, %bb.fp ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i351, i64 %i.aoe) #74, !noalias !5284
  unreachable

_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i317: ; preds = %bb.fs, %bb.fq
  %.sroa.10.0.i.i318 = phi i64 [ %i.aoj, %bb.fs ], [ 8, %bb.fq ]
  %.sroa.4.0.i.i319 = phi i64 [ %i.aod, %bb.fs ], [ 0, %bb.fq ] ; 2 uses
  %i.aok = inttoptr i64 %.sroa.10.0.i.i318 to ptr
  %i.aol = icmp samesign ule i64 %i.aod, %.sroa.4.0.i.i319
  tail call void @llvm.assume(i1 %i.aol)
  store i64 %.sroa.4.0.i.i319, ptr %i.d, align 8, !alias.scope !5282, !noalias !5280
  %.sroa.4.0..sroa_idx.i.i320 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.aok, ptr %.sroa.4.0..sroa_idx.i.i320, align 8, !alias.scope !5282, !noalias !5280
  %.sroa.5.0..sroa_idx.i.i321 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.42.0..sroa_idx.i.i322 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 0, ptr %.sroa.42.0..sroa_idx.i.i322, align 8, !alias.scope !5282, !noalias !5280
  %.sroa.53.0..sroa_idx.i.i323 = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i321, i8 0, i64 16, i1 false), !alias.scope !5282, !noalias !5280
  store i64 %i.aod, ptr %.sroa.53.0..sroa_idx.i.i323, align 8, !alias.scope !5282, !noalias !5280
  %i.aom = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aom, i8 9, i64 24, i1 false), !alias.scope !5282, !noalias !5280
  %.not.i324 = icmp eq i64 %i.aod, 0
  br i1 %.not.i324, label %._crit_edge.i347, label %.lr.ph.i325

.lr.ph.i325:                                      ; preds = %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i317
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anz, i64 72
  %i.aoo = load ptr, ptr %i.aon, align 8, !alias.scope !5285, !noalias !5281, !noundef !18
  %.not.i.i26.i326 = icmp eq ptr %i.aoo, null
  %i.aop = getelementptr inbounds nuw i8, ptr %i.anz, i64 104
  %i.aoq = load i64, ptr %i.aop, align 8, !alias.scope !5279, !noalias !5281
  %i.aor = getelementptr inbounds nuw i8, ptr %i.anz, i64 80
  %i.aos = load ptr, ptr %i.aor, align 8, !alias.scope !5279, !noalias !5281
  %i.aot = getelementptr inbounds nuw i8, ptr %i.anz, i64 96
  %i.aou = load i64, ptr %i.aot, align 8, !alias.scope !5279, !noalias !5281
  %.sroa.415.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.516.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.617.0..sroa_idx.i329 = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i330 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.918.0..sroa_idx.i331 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.10.0..sroa_idx.i332 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.aov = getelementptr inbounds nuw i8, ptr %i.anz, i64 32
  %i.aow = load ptr, ptr %i.aov, align 8, !alias.scope !5279, !noalias !5281 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.anz, i64 56
  %i.aoy = load ptr, ptr %i.aox, align 8, !alias.scope !5279, !noalias !5281
  br label %bb.fu

._crit_edge.i347:                                 ; preds = %bb.gf, %_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE13with_capacityCs9JgWGBoX3PY_12lance_linalg.exit.i317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5280
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE6finishCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 captures(address) dereferenceable(96) %i.b, ptr noalias noundef align 8 dereferenceable(104) %i.d)
          to label %bb.fy unwind label %.loopexit.split-lp.i334, !noalias !5280

bb.fu:                                            ; preds = %bb.gf, %.lr.ph.i325
  %.sroa.01.030.i333 = phi i64 [ 0, %.lr.ph.i325 ], [ %i.aoz, %bb.gf ] ; 4 uses
  %i.aoz = add nuw i64 %.sroa.01.030.i333, 1      ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5286)
  br i1 %.not.i.i26.i326, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.apa = icmp ult i64 %.sroa.01.030.i333, %i.aoq
  br i1 %i.apa, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.fw, !prof !16

bb.fw:                                            ; preds = %bb.fv
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @118, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @120) #74
          to label %.noexc.i339 unwind label %.loopexit.split-lp.i334, !noalias !5280

.noexc.i339:                                      ; preds = %bb.fw
  unreachable

.loopexit.i344:                                   ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i, %bb.gd
  %lpad.loopexit.i345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.loopexit.split-lp.i334:                          ; preds = %bb.fw, %._crit_edge.i347
  %lpad.loopexit.split-lp.i335 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

bb.fx:                                            ; preds = %.loopexit.split-lp.i334, %.loopexit.i344
  %lpad.phi.i336 = phi { ptr, i32 } [ %lpad.loopexit.i345, %.loopexit.i344 ], [ %lpad.loopexit.split-lp.i335, %.loopexit.split-lp.i334 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtBI_5types10UInt64TypeEECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(104) %i.d) #77
          to label %common.resume unwind label %bb.gg, !noalias !5280

bb.fy:                                            ; preds = %._crit_edge.i347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !5279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5280
  call void @llvm.experimental.noalias.scope.decl(metadata !5287)
  %.val.i.i348 = load i64, ptr %i.d, align 8, !alias.scope !5287, !noalias !5280 ; 2 uses
  %i.apb = icmp eq i64 %.val.i.i348, 0
  br i1 %i.apb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i350, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %.val2.i.i349 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i320, align 8, !alias.scope !5287, !noalias !5280, !nonnull !18, !noundef !18
  %i.apc = shl nuw i64 %.val.i.i348, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i349, i64 noundef %i.apc, i64 noundef range(i64 1, -9223372036854775807) 8) #76, !noalias !5288
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i350

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i350: ; preds = %bb.fz, %bb.fy
  %i.apd = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.ape = load i64, ptr %i.apd, align 8, !range !36, !alias.scope !5289, !noalias !5280, !noundef !18
  %i.apf = icmp eq i64 %i.ape, 0
  br i1 %i.apf, label %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typexEB4_.exit, label %bb.ga

bb.ga:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i350
  invoke void @_RNvXs6_NtNtCs4YAKbnGhBJc_12arrow_buffer6buffer7mutableNtB5_13MutableBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.apd)
          to label %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typexEB4_.exit unwind label %bb.gb, !noalias !5280

bb.gb:                                            ; preds = %bb.ga
  %i.apg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.aom) #77
          to label %common.resume unwind label %bb.gc, !noalias !5280

bb.gc:                                            ; preds = %bb.gb
  %i.aph = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5280
  unreachable

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.fv
  %i.api = add i64 %.sroa.01.030.i333, %i.aou     ; 2 uses
  %i.apj = lshr i64 %i.api, 3
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aos, i64 %i.apj
  %i.apl = load i8, ptr %i.apk, align 1, !noalias !5290, !noundef !18
  %i.apm = trunc i64 %i.api to i8
  %i.apn = and i8 %i.apm, 7
  %i.apo = xor i8 %i.apl, -1
  %i.app = lshr i8 %i.apo, %i.apn
  %i.apq = trunc i8 %i.app to i1
  br i1 %i.apq, label %bb.gd, label %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i

bb.gd:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE11append_nullCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(104) %i.d)
          to label %bb.gf unwind label %.loopexit.i344, !noalias !5280

_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i: ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.i, %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5280
  store i64 8317987319222330741, ptr %i.c, align 8, !noalias !5280
  store i64 7816392313619706465, ptr %.sroa.415.0..sroa_idx.i327, align 8, !noalias !5280
  store i64 7237128888997146477, ptr %.sroa.516.0..sroa_idx.i328, align 8, !noalias !5280
  store i64 8387220255154660723, ptr %.sroa.617.0..sroa_idx.i329, align 8, !noalias !5280
  %i.apr = icmp ult i64 %i.aoz, %i.aoc
  call void @llvm.assume(i1 %i.apr)
  %i.aps = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %i.aoz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i330, i8 0, i64 40, i1 false), !noalias !5280
  %i.apt = load i64, ptr %i.aps, align 8, !noalias !5291, !noundef !18
  %i.apu = getelementptr inbounds nuw [8 x i8], ptr %i.aow, i64 %.sroa.01.030.i333
  %i.apv = load i64, ptr %i.apu, align 8, !noalias !5291, !noundef !18 ; 2 uses
  %i.apw = getelementptr inbounds i8, ptr %i.aoy, i64 %i.apv
  %i.apx = sub i64 %i.apt, %i.apv                 ; 2 uses
  %i.apy = icmp sgt i64 %i.apx, -1
  call void @llvm.assume(i1 %i.apy)
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.apw, i64 noundef %i.apx), !noalias !5280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5280
  store i8 -1, ptr %i.a, align 1, !noalias !5280
  call fastcc void @_RNvXs3_NtNtCscI6d9CVNmLh_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !5280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5280
  %.sroa.0.0.copyload.i.i340 = load i64, ptr %i.c, align 8, !alias.scope !5292, !noalias !5280
  %.sroa.10.0.copyload.i.i341 = load i64, ptr %.sroa.415.0..sroa_idx.i327, align 8, !alias.scope !5292, !noalias !5280
  %.sroa.17.0.copyload.i.i342 = load i64, ptr %.sroa.516.0..sroa_idx.i328, align 8, !alias.scope !5292, !noalias !5280 ; 3 uses
  %.sroa.22.0.copyload.i.i343 = load i64, ptr %.sroa.617.0..sroa_idx.i329, align 8, !alias.scope !5292, !noalias !5280
  %i.apz = load i64, ptr %.sroa.918.0..sroa_idx.i331, align 8, !alias.scope !5292, !noalias !5280, !noundef !18
  %i.aqa = shl i64 %i.apz, 56
  %i.aqb = load i64, ptr %.sroa.10.0..sroa_idx.i332, align 8, !alias.scope !5292, !noalias !5280, !noundef !18
  %i.aqc = or i64 %i.aqa, %i.aqb                  ; 2 uses
  %i.aqd = xor i64 %i.aqc, %.sroa.22.0.copyload.i.i343 ; 3 uses
  %i.aqe = add i64 %.sroa.17.0.copyload.i.i342, %.sroa.0.0.copyload.i.i340 ; 3 uses
  %i.aqf = add i64 %i.aqd, %.sroa.10.0.copyload.i.i341 ; 2 uses
  %i.aqg = call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i342, i64 %.sroa.17.0.copyload.i.i342, i64 13)
  %i.aqh = xor i64 %i.aqg, %i.aqe                 ; 3 uses
  %i.aqi = call noundef i64 @llvm.fshl.i64(i64 %i.aqd, i64 %i.aqd, i64 16)
  %i.aqj = xor i64 %i.aqi, %i.aqf                 ; 3 uses
  %i.aqk = call noundef i64 @llvm.fshl.i64(i64 %i.aqe, i64 %i.aqe, i64 32)
  %i.aql = add i64 %i.aqf, %i.aqh                 ; 3 uses
  %i.aqm = add i64 %i.aqj, %i.aqk                 ; 2 uses
  %i.aqn = call noundef i64 @llvm.fshl.i64(i64 %i.aqh, i64 %i.aqh, i64 17)
  %i.aqo = xor i64 %i.aql, %i.aqn                 ; 3 uses
  %i.aqp = call noundef i64 @llvm.fshl.i64(i64 %i.aqj, i64 %i.aqj, i64 21)
  %i.aqq = xor i64 %i.aqp, %i.aqm                 ; 3 uses
  %i.aqr = call noundef i64 @llvm.fshl.i64(i64 %i.aql, i64 %i.aql, i64 32)
  %i.aqs = xor i64 %i.aqm, %i.aqc
  %i.aqt = xor i64 %i.aqr, 255
  %i.aqu = add i64 %i.aqs, %i.aqo                 ; 3 uses
  %i.aqv = add i64 %i.aqq, %i.aqt                 ; 2 uses
  %i.aqw = call noundef i64 @llvm.fshl.i64(i64 %i.aqo, i64 %i.aqo, i64 13)
  %i.aqx = xor i64 %i.aqu, %i.aqw                 ; 3 uses
  %i.aqy = call noundef i64 @llvm.fshl.i64(i64 %i.aqq, i64 %i.aqq, i64 16)
  %i.aqz = xor i64 %i.aqy, %i.aqv                 ; 3 uses
  %i.ara = call noundef i64 @llvm.fshl.i64(i64 %i.aqu, i64 %i.aqu, i64 32)
  %i.arb = add i64 %i.aqx, %i.aqv                 ; 3 uses
  %i.arc = add i64 %i.aqz, %i.ara                 ; 2 uses
  %i.ard = call noundef i64 @llvm.fshl.i64(i64 %i.aqx, i64 %i.aqx, i64 17)
  %i.are = xor i64 %i.arb, %i.ard                 ; 3 uses
  %i.arf = call noundef i64 @llvm.fshl.i64(i64 %i.aqz, i64 %i.aqz, i64 21)
  %i.arg = xor i64 %i.arf, %i.arc                 ; 3 uses
  %i.arh = call noundef i64 @llvm.fshl.i64(i64 %i.arb, i64 %i.arb, i64 32)
  %i.ari = add i64 %i.are, %i.arc                 ; 3 uses
  %i.arj = add i64 %i.arg, %i.arh                 ; 2 uses
  %i.ark = call noundef i64 @llvm.fshl.i64(i64 %i.are, i64 %i.are, i64 13)
  %i.arl = xor i64 %i.ark, %i.ari                 ; 3 uses
  %i.arm = call noundef i64 @llvm.fshl.i64(i64 %i.arg, i64 %i.arg, i64 16)
  %i.arn = xor i64 %i.arm, %i.arj                 ; 3 uses
  %i.aro = call noundef i64 @llvm.fshl.i64(i64 %i.ari, i64 %i.ari, i64 32)
  %i.arp = add i64 %i.arl, %i.arj                 ; 3 uses
  %i.arq = add i64 %i.arn, %i.aro                 ; 2 uses
  %i.arr = call noundef i64 @llvm.fshl.i64(i64 %i.arl, i64 %i.arl, i64 17)
  %i.ars = xor i64 %i.arr, %i.arp                 ; 3 uses
  %i.art = call noundef i64 @llvm.fshl.i64(i64 %i.arn, i64 %i.arn, i64 21)
  %i.aru = xor i64 %i.art, %i.arq                 ; 3 uses
  %i.arv = call noundef i64 @llvm.fshl.i64(i64 %i.arp, i64 %i.arp, i64 32)
  %i.arw = add i64 %i.ars, %i.arq
  %i.arx = add i64 %i.aru, %i.arv                 ; 2 uses
  %i.ary = call noundef i64 @llvm.fshl.i64(i64 %i.ars, i64 %i.ars, i64 13)
  %i.arz = xor i64 %i.ary, %i.arw                 ; 3 uses
  %i.asa = call noundef i64 @llvm.fshl.i64(i64 %i.aru, i64 %i.aru, i64 16)
  %i.asb = xor i64 %i.asa, %i.arx                 ; 2 uses
  %i.asc = add i64 %i.arz, %i.arx                 ; 3 uses
  %i.asd = call noundef i64 @llvm.fshl.i64(i64 %i.arz, i64 %i.arz, i64 17)
  %i.ase = call noundef i64 @llvm.fshl.i64(i64 %i.asb, i64 %i.asb, i64 21)
  %i.asf = call noundef i64 @llvm.fshl.i64(i64 %i.asc, i64 %i.asc, i64 32)
  %i.asg = xor i64 %i.ase, %i.asd
  %i.ash = xor i64 %i.asg, %i.asf
  %i.asi = xor i64 %i.ash, %i.asc
  invoke fastcc void @_RNvMs0_NtNtCs4ytUTZt2Gw9_11arrow_array7builder17primitive_builderINtB5_16PrimitiveBuilderNtNtB9_5types10UInt64TypeE12append_valueCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(104) %i.d, i64 noundef %i.asi)
          to label %bb.ge unwind label %.loopexit.i344, !noalias !5280

bb.ge:                                            ; preds = %_RNvYINtNtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_array16GenericByteArrayINtNtB9_5types17GenericStringTypexEENtB7_5Array7is_nullCs9JgWGBoX3PY_12lance_linalg.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5280
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %exitcond.not.i346 = icmp eq i64 %i.aoz, %i.aod
  br i1 %exitcond.not.i346, label %._crit_edge.i347, label %bb.fu

bb.gg:                                            ; preds = %bb.fx
  %i.asj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75, !noalias !5280
  unreachable

_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typexEB4_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecyEECs9JgWGBoX3PY_12lance_linalg.exit.i.i350, %bb.ga
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.aom), !noalias !5280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5280
  br label %bb.gh

bb.gh:                                            ; preds = %.split, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typexEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels16hash_string_typelEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types10UInt64TypeEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types10UInt32TypeEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types10UInt16TypeEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types9UInt8TypeEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types9Int64TypeEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types9Int32TypeEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types9Int16TypeEB4_.exit, %_RINvNtCs9JgWGBoX3PY_12lance_linalg7kernels17hash_numeric_typeNtNtCs4ytUTZt2Gw9_11arrow_array5types8Int8TypeEB4_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs9JgWGBoX3PY_12lance_linalg8distance17multivec_distance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(176) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) %3, i8 noundef range(i8 0, 4) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 12 uses
  %.sroa.6 = alloca ptr, align 8                  ; 7 uses
  %.sroa.9 = alloca ptr, align 8                  ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 11 uses
  %i.f = alloca [72 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 13 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 2 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 2 uses
  %i.t = alloca [8 x i8], align 8                 ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 12 uses
  %i.x = alloca [8 x i8], align 8                 ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 9 uses
  %i.z = alloca [1 x i8], align 1                 ; 5 uses
  store i8 %4, ptr %i.z, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = tail call noundef nonnull align 8 ptr @_RNvXNtCs4ytUTZt2Gw9_11arrow_array5arrayINtNtCs40k4W9msRzi_5alloc4sync3ArcDNtB2_5ArrayEL_EB1a_9data_type(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aa)
  call fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab)
  %i.ac = load i8, ptr %i.w, align 8, !range !30, !noundef !18
  %i.ad = icmp eq i8 %i.ac, 29
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !18, !noundef !18 ; 2 uses
  store ptr %i.af, ptr %i.v, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !18 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  invoke fastcc void @_RNvXs2_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8DataTypeNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #76, !noalias !5420
  %i.aj = tail call noundef dereferenceable_or_null(41) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 41, i64 noundef range(i64 1, -9223372036854775807) 1) #76, !noalias !5420 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.bv, label %bb.bw

bb.d:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5422)
  %i.am = load ptr, ptr %i.v, align 8, !alias.scope !5423, !nonnull !18, !noundef !18
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !5423
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs9JgWGBoX3PY_12lance_linalg.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs9JgWGBoX3PY_12lance_linalg.exit unwind label %bb.bq

bb.f:                                             ; preds = %bb.b
  %i.ap = sext i32 %i.ah to i64                   ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5424)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5425)
  %i.aq = load ptr, ptr %i.v, align 8, !alias.scope !5426, !nonnull !18, !noundef !18
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !5426
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs9JgWGBoX3PY_12lance_linalg.exit98

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs40k4W9msRzi_5alloc4syncINtB5_3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs9JgWGBoX3PY_12lance_linalg.exit98 unwind label %bb.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync3ArcNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldEECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.d, %bb.e, %bb.h
  %.pn = phi { ptr, i32 } [ %i.av, %bb.h ], [ %i.al, %bb.e ], [ %i.al, %bb.d ] ; 2 uses
  %i.at = load i8, ptr %i.w, align 8, !range !30, !noundef !18
  %i.au = icmp eq i8 %i.at, 29
  br i1 %i.au, label %bb.bu, label %bb.bx

bb.h:                                             ; preds = %bb.g, %bb.bv
end_hunk_0
