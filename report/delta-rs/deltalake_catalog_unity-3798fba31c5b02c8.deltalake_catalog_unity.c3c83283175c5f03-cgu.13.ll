Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_catalog_unity-3798fba31c5b02c8.deltalake_catalog_unity.c3c83283175c5f03-cgu.13?download=true
inline.NumInlined: 742
inline.NumDeleted: 362
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO6CtM78C4N_7reqwest10async_impl8response8ResponseECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %.body

bb.l:                                             ; preds = %.body.i
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

.body:                                            ; preds = %.body.i, %bb.j, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.q, %bb.j ], [ %i.q, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1 = load ptr, ptr %i.x, align 8, !nonnull !17, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val1) #26
          to label %common.resume unwind label %bb.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val = load ptr, ptr %i.y, align 8, !nonnull !17, !noundef !17 ; 5 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs4j34XAPZOn0_4http8response8ResponseINtNtNtCs3eCsZ2Mx498_14http_body_util11combinators8box_body7BoxBodyNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB3W_4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

common.resume:                                    ; preds = %.body, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i2, %bb.p ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.o, %bb.m
  %eh.lpad-body.i2 = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.z, %bb.m ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #24
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCseo6ZV82fEK1_3url3UrlEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 88, i64 noundef 8) #24
  ret void

bb.q:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1h_6marker4SyncNtB1O_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !985
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 5, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %0, ptr %i.c, align 8, !noalias !985
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr %1, ptr %i.d, align 8, !noalias !985
  store i64 -9223372036854775808, ptr %i.a, align 8, !noalias !985
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !988
  %i.e = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCs8mYq7K4qqSA_7___rustc12___rust_alloc(i64 noundef range(i64 16, 1481) 144, i64 noundef 8) #24, !noalias !988 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1q_6marker4SyncNtB1X_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
          to label %.noexc7.i unwind label %bb.c, !noalias !985

.noexc7.i:                                        ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5InnerECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.a) #26
          to label %bb.e unwind label %bb.d, !noalias !985

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !985
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.g

_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtB1q_6marker4SyncNtB1X_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !985
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvNtCsgO6CtM78C4N_7reqwest5error6decodeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 5, ptr %i.a, align 8
  %i.b = call fastcc noundef nonnull align 8 ptr @_RINvMNtCsgO6CtM78C4N_7reqwest5errorNtB3_5Error3newNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef align 8 %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RINvNtCsgO8S5jLFugx_23deltalake_catalog_unity10credential17expires_in_stringQINtNtCseqDwI8vvjGQ_10serde_json2de12DeserializerNtNtB1i_4read9SliceReadEEB4_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXs5_NtCseqDwI8vvjGQ_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs1gOyXocuPRE_10serde_core2de12Deserializer18deserialize_stringNtNtB1l_5impls13StringVisitorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  %i.c = load i64, ptr %i.a, align 8, !range !258, !noundef !17 ; 2 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.611.0.copyload = load i64, ptr %.sroa.611.0..sroa_idx, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.b, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.611.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  switch i64 %.sroa.611.0.copyload, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !991, !noalias !994, !noundef !17 ; 2 uses
  switch i8 %i.g, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.f, align 1, !alias.scope !991, !noalias !994
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.h = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.g, %bb.d ]
  %cond.i = icmp eq i8 %i.h, 43                   ; 2 uses
  %i.i = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %.sroa.611.0.copyload, %i.i ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.j = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.j, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.l, 0
  br i1 %.not52.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i51 = phi ptr [ %i.k, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i50 = phi i64 [ %i.l, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i49 = phi i64 [ %i.w, %.preheader56.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i51, i64 1
  %i.l = add nsw i64 %.sroa.15.1.i50, -1          ; 2 uses
  %i.m = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i49, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0         ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.m, 1
  %i.p = load i8, ptr %.sroa.0.1.i51, align 1, !alias.scope !991, !noalias !994, !noundef !17 ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.q = zext i8 %i.p to i32
  %i.r = add nsw i32 %i.q, -48                    ; 2 uses
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.t = add i8 %i.p, -48
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %1, label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.v = zext nneg i32 %i.r to i64
  %i.w = add i64 %i.n, %i.v                       ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.n
  br i1 %i.x, label %.loopexit, label %.preheader56.i, !prof !6

1:                                                ; preds = %bb.g
  br label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.ae, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.ad, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.ag, %bb.i ], [ 0, %.preheader.i ]
  %i.y = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !991, !noalias !994, !noundef !17
  %i.z = zext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -48                   ; 2 uses
  %i.ab = icmp ult i32 %i.aa, 10
  br i1 %i.ab, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ac = mul i64 %.sroa.042.267.i, 10
  %i.ad = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.af = zext nneg i32 %i.aa to i64
  %i.ag = add i64 %i.ac, %i.af                    ; 2 uses
  %.not53.i = icmp eq i64 %i.ad, 0
  br i1 %.not53.i, label %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit, label %.lr.ph.i

bb.j:                                             ; preds = %.loopexit
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %common.resume unwind label %bb.o

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %1, %bb.d, %bb.d, %bb.c, %bb.g
  %.sroa.4.016.ph = phi i8 [ 1, %bb.d ], [ 1, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 2, %1 ], [ 2, %bb.h ], [ 1, %bb.f ]
  %i.ai = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtNtCsbvkFyIu7lgC_4core3num5error13ParseIntErrorECsgO8S5jLFugx_23deltalake_catalog_unity(i8 noundef %.sroa.4.016.ph)
          to label %bb.k unwind label %bb.j

_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit: ; preds = %.preheader56.i, %bb.i, %.preheader.i
  %.sroa.1115.0 = phi i64 [ %i.ag, %bb.i ], [ 0, %.preheader.i ], [ %i.w, %.preheader56.i ]
  %i.aj = inttoptr i64 %.sroa.1115.0 to ptr
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit
  %.sroa.4.0 = phi ptr [ %i.aj, %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit ], [ %i.ai, %.loopexit ]
  %.sroa.0.0 = phi i64 [ 0, %_RNvMsD_NtCsbvkFyIu7lgC_4core3numy16from_ascii_radix.exit ], [ 1, %.loopexit ]
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.ah, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.b
  %.sroa.4.1 = phi ptr [ %i.f, %bb.b ], [ %.sroa.4.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  %.sroa.0.1 = phi i64 [ 1, %bb.b ], [ %.sroa.0.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.am = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.an = insertvalue { i64, ptr } %i.am, ptr %.sroa.4.1, 1
  ret { i64, ptr } %i.an

bb.o:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB34_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtB3Z_10ValueEntryB3x_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0EB53_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load i64, ptr %0, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  fence acquire
  %i.d = load i64, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.e = and i64 %i.d, 2
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtB3f_10ValueEntryB2N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0B4j_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtB2K_10ValueEntryB2i_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE9deref_mutB3O_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtB7_10ValueEntryNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i = load i64, ptr %i.b, align 8
  br label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtB3f_10ValueEntryB2N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0B4j_.exit

_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtB3f_10ValueEntryB2N_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE0uE0B4j_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2J_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3N_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB34_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load i64, ptr %0, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  fence acquire
  %i.d = load i64, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.e = and i64 %i.d, 2
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE9deref_mutCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i = load i64, ptr %i.b, align 8
  br label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2k_6string6StringEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEE0uE0CsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1O_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB25_6future11invalidator9PredicateB2Z_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uE0EB4o_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load i64, ptr %0, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  fence acquire
  %i.d = load i64, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.e = and i64 %i.d, 2
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB2f_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uE0B3E_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB15_6future11invalidator9PredicateB1K_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEE9deref_mutB39_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2g_(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  %.pre.i.i = load i64, ptr %i.b, align 8
  br label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB2f_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uE0B3E_.exit

_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB1l_6future11invalidator9PredicateB2f_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE0uE0B3E_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtB14_6future11invalidator9PredicateB1J_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB38_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB35_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB25_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uE0EB6N_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load i64, ptr %0, align 8, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  fence acquire
  %i.d = load i64, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.e = and i64 %i.d, 2
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2l_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1l_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uE0B63_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef nonnull align 8 ptr @_RNvMsz_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_6SharedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1Q_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB15_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB15_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEE9deref_mutB5y_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @_RNvXs4_NtNtNtCs95DO3lnzZ3L_4moka6common10concurrent3arcINtB5_7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtBb_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2F_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  %.pre.i.i = load i64, ptr %i.b, align 8
  br label %_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2l_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1l_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uE0B63_.exit

_RNCINvMNtCsee2lL6QbnsJ_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket20defer_destroy_bucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB2l_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB1l_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB1l_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uE0B63_.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.d, %bb.a ], [ %.pre.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.i, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket6BucketTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1P_6string6StringENtNtCsbvkFyIu7lgC_4core3any6TypeIdEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock6rwlock6RwLockINtNtNtB14_6future17value_initializer11WaiterValueNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEENtNtNtB2J_3ops4drop4Drop4dropB5x_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB1Z_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB3p_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtB4k_10ValueEntryB3S_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEE0uE0EB5o_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !17
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtB2P_10ValueEntryB2n_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB3T_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNvMs_NtCsee2lL6QbnsJ_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCINvNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket21defer_acquire_destroyINtB1Z_11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB3p_6string6StringEINtNtNtNtB25_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEE0uE0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !17
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  call void @_RNvXsk_NtCsee2lL6QbnsJ_15crossbeam_epoch6atomicINtB5_5OwnedINtNtNtNtCs95DO3lnzZ3L_4moka3cht3map6bucket11BucketArrayINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1U_6string6StringEINtNtNtNtB14_6common10concurrent3arc7MiniArcINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexuEEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
begin_hunk_1_@_RNCNvXsf_NtCsgO8S5jLFugx_23deltalake_catalog_unity10credentialNtB7_18AzureCliCredentialNtB7_15TokenCredential11fetch_token0B9_:bb.a
bb.cf:                                            ; preds = %bb.ce
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ci, %bb.cm, %bb.cf
  %eh.lpad-body = phi { ptr, i32 } [ %i.de, %bb.cf ], [ %i.dp, %bb.cm ], [ %i.dj, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %.body110

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.experimental.noalias.scope.decl(metadata !1207)
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  %i.df = load i64, ptr %i.x, align 8, !range !258, !alias.scope !1210, !noalias !1207, !noundef !17 ; 2 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dg, label %bb.ch, label %bb.co

bb.ch:                                            ; preds = %bb.cg
  %i.dh = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !1210, !noalias !1207, !nonnull !17, !align !114, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1212
  store ptr %i.di, ptr %i.i, align 8, !noalias !1213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1213
  store ptr %i.i, ptr %i.g, align 8, !noalias !1213
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs5_NtCseqDwI8vvjGQ_10serde_json5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1213
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @54, ptr noundef nonnull %i.g)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.ci, !noalias !1217

bb.ci:                                            ; preds = %bb.ch
  %i.dj = landingpad { ptr, i32 }
          cleanup
  %.val8.i.i = load ptr, ptr %i.i, align 8, !noalias !1213, !nonnull !17, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val8.i.i) #26
          to label %.body unwind label %bb.cn, !noalias !1217

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1213
  %.sroa.4.i.sroa.0.0.copyload = load ptr, ptr %i.h, align 8, !noalias !1218
  %.sroa.4.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.i.sroa.4.0.copyload = load i64, ptr %.sroa.4.i.sroa.4.0..sroa_idx, align 8, !noalias !1218
  %.sroa.4.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.4.i.sroa.5.0.copyload = load i64, ptr %.sroa.4.i.sroa.5.0..sroa_idx, align 8, !noalias !1218
  %.val7.i.i = load ptr, ptr %i.i, align 8, !noalias !1213, !nonnull !17, !noundef !17 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.dk = load i64, ptr %.val7.i.i, align 8, !range !887, !alias.scope !1225, !noalias !1217, !noundef !17
  switch i64 %i.dk, label %bb.ef [
    i64 0, label %bb.cj
    i64 1, label %bb.cl
  ]

bb.cj:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !1225, !noalias !1217, !noundef !17 ; 2 uses
  %i.dm = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.dm, label %bb.ef, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.dn = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !1225, !noalias !1217, !nonnull !17, !noundef !17
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i, i64 noundef 1) #24, !noalias !1226
  br label %bb.ef

bb.cl:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.val7.i.i, i64 8
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !1225, !noalias !1217, !nonnull !17, !noundef !17
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val2.i.i.i.i.i.i)
          to label %bb.ef unwind label %bb.cm, !noalias !1217

bb.cm:                                            ; preds = %bb.cl
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i, i64 noundef 40, i64 noundef 8) #24, !noalias !1217
  br label %.body

bb.cn:                                            ; preds = %bb.ci
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #27, !noalias !1217
  unreachable

bb.co:                                            ; preds = %bb.cg
  %i.dr = inttoptr i64 %i.df to ptr
  %.sroa.7195.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7195.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.7195.sroa.11.0.copyload = load i64, ptr %.sroa.7195.sroa.11.0..sroa_idx, align 8, !alias.scope !1212
  %.sroa.7195.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.7195.sroa.13.0.copyload = load i32, ptr %.sroa.7195.sroa.13.0..sroa_idx, align 8, !alias.scope !1212
  %.sroa.7195.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  %.sroa.8226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.8226.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.7195.sroa.15.0..sroa_idx, i64 28, i1 false)
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ds = load <2 x i64>, ptr %.sroa.7195.sroa.7.0..sroa_idx, align 8, !alias.scope !1212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store ptr %i.dr, ptr %i.y, align 8
  store <2 x i64> %i.ds, ptr %.sroa.4222.0..sroa_idx, align 8
  %.sroa.6224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 8 uses
  store i64 %.sroa.7195.sroa.11.0.copyload, ptr %.sroa.6224.0..sroa_idx, align 8
  %.sroa.7225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  store i32 %.sroa.7195.sroa.13.0.copyload, ptr %.sroa.7225.0..sroa_idx, align 8
  %.val = load ptr, ptr %.sroa.7225.0..sroa_idx, align 8, !nonnull !17, !noundef !17 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %.val63 = load i64, ptr %i.dt, align 8, !noundef !17
  %.not.i88 = icmp eq i64 %.val63, 6
  br i1 %.not.i88, label %bb.cp, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread

bb.cp:                                            ; preds = %bb.co
  %i.du = load i8, ptr %.val, align 1, !alias.scope !1227, !noundef !17 ; 2 uses
  %i.dv = add i8 %i.du, -65
  %i.dw = icmp ult i8 %i.dv, 26
  %i.dx = select i1 %i.dw, i8 32, i8 0
  %.sroa.012.0.i.i = or i8 %i.dx, %i.du
  %i.dy = icmp eq i8 %.sroa.012.0.i.i, 98
  br i1 %i.dy, label %bb.cq, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread

bb.cq:                                            ; preds = %bb.cp
  %i.dz = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !1227, !noundef !17 ; 2 uses
  %i.eb = add i8 %i.ea, -65
  %i.ec = icmp ult i8 %i.eb, 26
  %i.ed = select i1 %i.ec, i8 32, i8 0
  %.sroa.012.0.1.i.i = or i8 %i.ed, %i.ea
  %i.ee = icmp eq i8 %.sroa.012.0.1.i.i, 101
  br i1 %i.ee, label %bb.cr, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread

bb.cr:                                            ; preds = %bb.cq
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !1227, !noundef !17 ; 2 uses
  %i.eh = add i8 %i.eg, -65
  %i.ei = icmp ult i8 %i.eh, 26
  %i.ej = select i1 %i.ei, i8 32, i8 0
  %.sroa.012.0.2.i.i = or i8 %i.ej, %i.eg
  %i.ek = icmp eq i8 %.sroa.012.0.2.i.i, 97
  br i1 %i.ek, label %bb.cs, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread

bb.cs:                                            ; preds = %bb.cr
  %i.el = getelementptr inbounds nuw i8, ptr %.val, i64 3
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !1227, !noundef !17 ; 2 uses
  %i.en = add i8 %i.em, -65
  %i.eo = icmp ult i8 %i.en, 26
  %i.ep = select i1 %i.eo, i8 32, i8 0
  %.sroa.012.0.3.i.i = or i8 %i.ep, %i.em
  %i.eq = icmp eq i8 %.sroa.012.0.3.i.i, 114
  br i1 %i.eq, label %bb.ct, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread

bb.ct:                                            ; preds = %bb.cs
  %i.er = getelementptr inbounds nuw i8, ptr %.val, i64 4
  %i.es = load i8, ptr %i.er, align 1, !alias.scope !1227, !noundef !17 ; 2 uses
  %i.et = add i8 %i.es, -65
  %i.eu = icmp ult i8 %i.et, 26
  %i.ev = select i1 %i.eu, i8 32, i8 0
  %.sroa.012.0.4.i.i = or i8 %i.ev, %i.es
  %i.ew = icmp eq i8 %.sroa.012.0.4.i.i, 101
  br i1 %i.ew, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.a, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread

_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.a: ; preds = %bb.ct
  %i.ex = getelementptr inbounds nuw i8, ptr %.val, i64 5
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !1227, !noundef !17 ; 2 uses
  %i.ez = add i8 %i.ey, -65
  %i.fa = icmp ult i8 %i.ez, 26
  %i.fb = select i1 %i.fa, i8 32, i8 0
  %.sroa.012.0.5.i.i = or i8 %i.fb, %i.ey
  %i.fc = icmp eq i8 %.sroa.012.0.5.i.i, 114
  br i1 %i.fc, label %bb.cu, label %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread

bb.cu:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.fd, i64 12, i1 false), !noalias !1237
  %i.fe = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  %.val.i = load i32, ptr %i.fe, align 4, !alias.scope !1232, !noalias !1237, !noundef !17
  invoke void @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.e, i32 noundef %.val.i)
          to label %.noexc92 unwind label %bb.cx

.noexc92:                                         ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1235
  %i.ff = load i32, ptr %i.f, align 4, !noalias !1235, !noundef !17
  %.not.i91 = icmp eq i32 %i.ff, 0
  br i1 %.not.i91, label %bb.cv, label %bb.cy, !prof !6

bb.cv:                                            ; preds = %.noexc92
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #30
          to label %.noexc93 unwind label %bb.cx

.noexc93:                                         ; preds = %bb.cv
  unreachable

bb.cw:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.thread340

_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.thread: ; preds = %bb.co, %bb.cp, %bb.cs, %bb.cq, %_RNvMNtCsbvkFyIu7lgC_4core3stre20eq_ignore_ascii_case.exit.a, %bb.cr, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sroa.6224.0..sroa_idx, ptr %i.v, align 8
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.5230.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noundef nonnull @77, ptr noundef nonnull %i.v)
          to label %bb.dz unwind label %bb.cw

bb.cx:                                            ; preds = %bb.cv, %bb.cu
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %.thread346

bb.cy:                                            ; preds = %.noexc92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.t, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !noalias !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMNtNtCshmPyUV8PP35_6chrono6offset5localNtB2_5Local3now(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.r)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.db, %bb.da, %bb.cy
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.da:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.r, i64 12, i1 false), !noalias !1243
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.val.i98 = load i32, ptr %i.fj, align 4, !alias.scope !1238, !noalias !1243, !noundef !17
  invoke void @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime18checked_add_offset(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.c, i32 noundef %.val.i98)
          to label %.noexc100 unwind label %bb.cz

.noexc100:                                        ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1241
  %i.fk = load i32, ptr %i.d, align 4, !noalias !1241, !noundef !17
  %.not.i99 = icmp eq i32 %i.fk, 0
  br i1 %.not.i99, label %bb.db, label %bb.dc, !prof !6

bb.db:                                            ; preds = %.noexc100
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @98) #30
          to label %.noexc101 unwind label %bb.cz

.noexc101:                                        ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %.noexc100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false), !noalias !1238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1241
  %i.fl = invoke { i64, i32 } @_RNvMNtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB2_13NaiveDateTime21signed_duration_since(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.t, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.s)
          to label %_RNvXse_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub.exit unwind label %bb.de ; 2 uses

bb.dd:                                            ; preds = %bb.de, %bb.cz
  %.pn30 = phi { ptr, i32 } [ %i.fm, %bb.de ], [ %i.fi, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %.thread346

bb.de:                                            ; preds = %bb.dc
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

_RNvXse_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub.exit: ; preds = %bb.dc
  %i.fn = extractvalue { i64, i32 } %i.fl, 0
  %i.fo = extractvalue { i64, i32 } %i.fl, 1
  store i64 %i.fn, ptr %i.u, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.fo, ptr %i.fp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.fq = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.dg unwind label %bb.df     ; 2 uses

bb.df:                                            ; preds = %_RNvXse_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub.exit
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.q) #26
          to label %bb.ed unwind label %bb.by

bb.dg:                                            ; preds = %_RNvXse_NtNtCshmPyUV8PP35_6chrono5naive8datetimeNtB5_13NaiveDateTimeNtNtNtCsbvkFyIu7lgC_4core3ops5arith3Sub3sub.exit
  %i.fs = extractvalue { i64, i32 } %i.fq, 0
  %i.ft = extractvalue { i64, i32 } %i.fq, 1
  %i.fu = invoke { i64, i32 } @_RNvMNtCshmPyUV8PP35_6chrono10time_deltaNtB2_9TimeDelta6to_std(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u)
          to label %bb.di unwind label %bb.dh     ; 2 uses

bb.dh:                                            ; preds = %bb.dg
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.di:                                            ; preds = %bb.dg
  %i.fw = extractvalue { i64, i32 } %i.fu, 1      ; 2 uses
  %i.fx = icmp eq i32 %i.fw, 1000000000
  br i1 %i.fx, label %bb.dj, label %bb.dn

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1244
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 28, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc107 unwind label %bb.dl

.noexc107:                                        ; preds = %bb.dj
  %i.fy = load i64, ptr %i.b, align 8, !range !122, !noalias !1244, !noundef !17
  %i.fz = trunc nuw i64 %i.fy to i1
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !range !258, !noalias !1244, !noundef !17 ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.fz, label %bb.dk, label %bb.dv, !prof !6

bb.dk:                                            ; preds = %.noexc107
  %i.gd = load i64, ptr %i.gc, align 8, !noalias !1244
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.gb, i64 %i.gd) #25
          to label %.noexc108 unwind label %bb.dl

.noexc108:                                        ; preds = %bb.dk
  unreachable

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dh, %bb.dl
  %.pn32 = phi { ptr, i32 } [ %i.fv, %bb.dh ], [ %i.ge, %bb.dl ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.q) #26
          to label %bb.ed unwind label %bb.by

bb.dn:                                            ; preds = %bb.di
  %i.gf = extractvalue { i64, i32 } %i.fu, 0
  %i.gg = invoke { i64, i32 } @_RNvXs_NtCs2pqxYH9ZEk8_3std4timeNtB4_7InstantINtNtNtCsbvkFyIu7lgC_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef %i.fs, i32 noundef %i.ft, i64 noundef %i.gf, i32 noundef %i.fw)
          to label %bb.dp unwind label %bb.do     ; 2 uses

bb.do:                                            ; preds = %bb.dn
  %i.gh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.q) #26
          to label %bb.ed unwind label %bb.by

bb.dp:                                            ; preds = %bb.dn
  %i.gi = extractvalue { i64, i32 } %i.gg, 0
  %i.gj = extractvalue { i64, i32 } %i.gg, 1      ; 2 uses
  %i.gk = icmp ult i32 %i.gj, 1000000000
  call void @llvm.assume(i1 %i.gk)
  %.sroa.02.sroa.0.0.copyload = load ptr, ptr %i.q, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.02.sroa.6.0.copyload = load i64, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.02.sroa.7.0.copyload = load i64, ptr %.sroa.02.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %.sroa.6224.0..sroa_idx)
          to label %bb.dr unwind label %bb.dq

.body110:                                         ; preds = %bb.dx, %bb.dq, %.body, %bb.ee, %.body115
  %.pn41.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn35.pn.pn.pn.pn343, %bb.ee ], [ %eh.lpad-body116, %.body115 ], [ %i.gl, %bb.dq ], [ %i.gs, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.eh

bb.dq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.dp
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body110

bb.dr:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std7process6OutputECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(56) %i.aa)
          to label %bb.du unwind label %bb.dt

bb.ds:                                            ; preds = %bb.eh, %bb.dt
  %.pn47 = phi { ptr, i32 } [ %i.gm, %bb.dt ], [ %.pn44.pn, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %.thread

bb.dt:                                            ; preds = %bb.eg, %bb.dr
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.du:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.bx

bb.dv:                                            ; preds = %.noexc107
  %i.gn = load ptr, ptr %i.gc, align 8, !noalias !1244, !nonnull !17, !noundef !17 ; 2 uses
  %i.go = icmp samesign ugt i64 %i.gb, 27
  call void @llvm.assume(i1 %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.gn, ptr noundef nonnull align 1 dereferenceable(28) @53, i64 28, i1 false), !noalias !1244
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.q)
          to label %.thread315 unwind label %bb.dw

bb.dw:                                            ; preds = %bb.dv
end_hunk_1
