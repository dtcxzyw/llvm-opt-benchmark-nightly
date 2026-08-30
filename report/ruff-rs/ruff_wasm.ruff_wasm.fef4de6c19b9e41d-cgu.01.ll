Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_wasm.ruff_wasm.fef4de6c19b9e41d-cgu.01?download=true
inline.NumInlined: 2109
inline.NumDeleted: 1086
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXsr_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB3h_18PycodestyleOptionsNtB27_11Deserialize11deserialize9___VisitorECslT7UmUwa3wv_9ruff_wasm:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx22.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx.i.i.i.i.i, i64 31, i1 false), !noalias !2910
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, i64 32, i1 false), !noalias !2910
  %i.cb = load i8, ptr %i.l, align 8, !range !11, !alias.scope !2911, !noalias !2889, !noundef !4
  %i.cc = icmp eq i8 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i unwind label %bb.ae, !noalias !2889

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !2889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2909
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !2909
  call void @llvm.experimental.noalias.scope.decl(metadata !2914)
  call void @llvm.experimental.noalias.scope.decl(metadata !2917)
  call void @llvm.experimental.noalias.scope.decl(metadata !2920)
  %i.cd = load i8, ptr %i.h, align 8, !range !218, !alias.scope !2923, !noalias !2909, !noundef !4
  switch i8 %i.cd, label %.noexc16.i.i.i.i.i [
    i8 1, label %bb.r
    i8 4, label %bb.s
    i8 12, label %bb.t
    i8 13, label %bb.z
    i8 14, label %.noexc18.i.i.i.i.i
    i8 15, label %bb.aa
  ], !prof !495

.noexc16.i.i.i.i.i:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !2909
  %i.ce = invoke fastcc noundef i32 @_RNvMs1_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_19ContentDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorE12invalid_typeCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.e, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @235)
          to label %.noexc.i32 unwind label %.loopexit.i, !noalias !2889

.noexc.i32:                                       ; preds = %.noexc16.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2924
  %i.cf = zext i32 %i.ce to i64
  br label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess8next_keyNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB2Z_18PycodestyleOptionsNtB6_11Deserialize11deserialize7___FieldECslT7UmUwa3wv_9ruff_wasm.exit.i.i

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  %i.cg = load i8, ptr %i.bv, align 1, !alias.scope !2923, !noalias !2909, !noundef !4
  %i.ch = invoke i64 @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor8visit_u8NtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm(i8 noundef %i.cg)
          to label %bb.ab unwind label %bb.ac, !noalias !2925

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  %i.ci = load i64, ptr %i.bq, align 8, !alias.scope !2923, !noalias !2909, !noundef !4
  %i.cj = invoke i64 @_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB8_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_u64NtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm(i64 noundef %i.ci)
          to label %bb.ab unwind label %bb.ac, !noalias !2925

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !2909
  call void @llvm.experimental.noalias.scope.decl(metadata !2926)
  %i.ck = load ptr, ptr %i.bt, align 8, !alias.scope !2926, !noalias !2924, !nonnull !4, !noundef !4
  %i.cl = load i64, ptr %i.bu, align 8, !alias.scope !2926, !noalias !2924, !noundef !4
  %i.cm = invoke i64 @_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB8_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cl)
          to label %bb.v unwind label %bb.u, !noalias !2929

bb.u:                                             ; preds = %bb.t
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #17
          to label %.thread.i unwind label %bb.y, !noalias !2925

bb.v:                                             ; preds = %bb.t
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i.i unwind label %bb.w, !noalias !2925

bb.w:                                             ; preds = %bb.v
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.thread.i unwind label %bb.x, !noalias !2925

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !2925
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc25.i31 unwind label %.loopexit.i, !noalias !2889

.noexc25.i31:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2924
  br label %_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor18visit_borrowed_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !2925
  unreachable

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  %i.cr = load ptr, ptr %i.bq, align 8, !alias.scope !2923, !noalias !2909, !nonnull !4, !noundef !4
  %i.cs = load i64, ptr %i.br, align 8, !alias.scope !2923, !noalias !2909, !noundef !4
  %i.ct = invoke i64 @_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB8_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor9visit_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs)
          to label %bb.ab unwind label %bb.ac, !noalias !2925

.noexc18.i.i.i.i.i:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2924
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.bs, i64 24, i1 false), !noalias !2909
  %i.cu = invoke i64 @_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor14visit_byte_bufNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %.noexc26.i unwind label %.loopexit.i, !noalias !2889

.noexc26.i:                                       ; preds = %.noexc18.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2924
  br label %_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor18visit_borrowed_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentEECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  %i.cv = load ptr, ptr %i.bq, align 8, !alias.scope !2923, !noalias !2909, !nonnull !4, !noundef !4
  %i.cw = load i64, ptr %i.br, align 8, !alias.scope !2923, !noalias !2909, !noundef !4
  %i.cx = invoke i64 @_RINvXNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB8_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtB1k_7Visitor11visit_bytesNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef range(i64 0, -9223372036854775808) %i.cw)
          to label %bb.ab unwind label %bb.ac, !noalias !2925

_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor18visit_borrowed_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc26.i, %.noexc25.i31
  %.sroa.8.sroa.0.0.in.in.i.i.i.i.i.i.i.i = phi i64 [ %i.cm, %.noexc25.i31 ], [ %i.cu, %.noexc26.i ] ; 3 uses
  %.sroa.811.0.in.i.i.i.i.i.i.i.i = lshr i64 %.sroa.8.sroa.0.0.in.in.i.i.i.i.i.i.i.i, 32
  br label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess8next_keyNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB2Z_18PycodestyleOptionsNtB6_11Deserialize11deserialize7___FieldECslT7UmUwa3wv_9ruff_wasm.exit.i.i

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.s, %bb.r
  %.sroa.8.sroa.0.0.in.in.i.ph.i.i.i.i.i.i.i = phi i64 [ %i.cx, %bb.aa ], [ %i.cj, %bb.s ], [ %i.ch, %bb.r ], [ %i.ct, %bb.z ] ; 3 uses
  %.sroa.811.0.in.i3.i.i.i.i.i.i.i = lshr i64 %.sroa.8.sroa.0.0.in.in.i.ph.i.i.i.i.i.i.i, 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess8next_keyNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB2Z_18PycodestyleOptionsNtB6_11Deserialize11deserialize7___FieldECslT7UmUwa3wv_9ruff_wasm.exit.i.i unwind label %.loopexit.i, !noalias !2889

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.s, %bb.r
  %lpad.thr_comm.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h) #17
          to label %.thread.i unwind label %bb.ad, !noalias !2889

bb.ad:                                            ; preds = %bb.ac
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !2889
  unreachable

bb.ae:                                            ; preds = %bb.q
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !2889
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 dereferenceable(32) %i.j) #17
          to label %.thread.i unwind label %bb.af, !noalias !2889

bb.af:                                            ; preds = %bb.ae
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !2889
  unreachable

_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess8next_keyNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB2Z_18PycodestyleOptionsNtB6_11Deserialize11deserialize7___FieldECslT7UmUwa3wv_9ruff_wasm.exit.i.i: ; preds = %bb.ab, %_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor18visit_borrowed_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i, %.noexc.i32
  %.sroa.8.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %.noexc.i32 ], [ %.sroa.8.sroa.0.0.in.in.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor18visit_borrowed_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i ], [ %.sroa.8.sroa.0.0.in.in.i.ph.i.i.i.i.i.i.i, %bb.ab ]
  %.sroa.811.1.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %.noexc.i32 ], [ %.sroa.811.0.in.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor18visit_borrowed_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i ], [ %.sroa.811.0.in.i3.i.i.i.i.i.i.i, %bb.ab ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 1, %.noexc.i32 ], [ %.sroa.8.sroa.0.0.in.in.i.i.i.i.i.i.i.i, %_RINvYNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtBa_18PycodestyleOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB1m_7Visitor18visit_borrowed_strNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i ], [ %.sroa.8.sroa.0.0.in.in.i.ph.i.i.i.i.i.i.i, %bb.ab ] ; 2 uses
  %.sroa.811.0.insert.shift.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.811.1.i.i.i.i.i.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i = and i64 %.sroa.0.1.i.i.i.i.i.i.i.i, 1
  %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i.i, %.sroa.811.0.insert.shift.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2909
  %i.db = trunc i64 %.sroa.0.1.i.i.i.i.i.i.i.i to i1
  %i.dc = and i64 %.sroa.8.sroa.0.1.i.i.i.i.i.i.i.i, 65280
  %i.dd = select i1 %i.db, i64 %.sroa.0.0.insert.insert.i.i.i.i.i.i.i.i, i64 %i.dc ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2909
  %.sroa.456.0.extract.shift.i.i = lshr i64 %i.dd, 8
  %i.de = trunc i64 %i.dd to i1
  br i1 %i.de, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess8next_keyNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB2Z_18PycodestyleOptionsNtB6_11Deserialize11deserialize7___FieldECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  %.sroa.658.0.extract.shift.i.i = lshr i64 %i.dd, 32
  %.sroa.658.0.extract.trunc.i.i = trunc nuw i64 %.sroa.658.0.extract.shift.i.i to i32
  br label %bb.ax

bb.ah:                                            ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess8next_keyNtNvXNvNtCs3ZkgueCtkyH_14ruff_workspace7optionss1b_1__NtB2Z_18PycodestyleOptionsNtB6_11Deserialize11deserialize7___FieldECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  %i.df = and i64 %i.dd, 65280
  %.not.i.i = icmp eq i64 %i.df, 65280
  br i1 %.not.i.i, label %.thread.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %trunc.i.i = trunc i64 %.sroa.456.0.extract.shift.i.i to i8
  switch i8 %trunc.i.i, label %bb.aj [
    i8 0, label %bb.ak
    i8 1, label %bb.al
    i8 2, label %bb.am
  ]

.thread.i.i:                                      ; preds = %bb.aq, %bb.ah, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i
  %.sroa.028.0.lcssa.ph.i.i = phi i8 [ %.sroa.028.0179.i.i, %bb.ah ], [ %.sroa.028.0179.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i ], [ %.sroa.028.1.i.i, %bb.aq ]
  %.sroa.419.0.lcssa.ph.i.i = phi i16 [ %.sroa.419.0180.i.i, %bb.ah ], [ %.sroa.419.0180.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i ], [ %.sroa.419.1.i.i, %bb.aq ]
  %.sroa.017.0.lcssa.ph.i.i = phi i16 [ %.sroa.017.0181.i.i, %bb.ah ], [ %.sroa.017.0181.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i ], [ %.sroa.017.1.i.i, %bb.aq ]
  %.sroa.4.0.lcssa.ph.i.i = phi i16 [ %.sroa.4.0182.i.i, %bb.ah ], [ %.sroa.4.0182.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i ], [ %.sroa.4.1.i.i, %bb.aq ]
  %.sroa.08.0.lcssa.ph.i.i = phi i16 [ %.sroa.08.0183.i.i, %bb.ah ], [ %.sroa.08.0183.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i ], [ %.sroa.08.1.i.i, %bb.aq ]
  %.sroa.028.0.lcssa.ph.fr.i.i = freeze i8 %.sroa.028.0.lcssa.ph.i.i ; 2 uses
  %i.dg = trunc nuw i16 %.sroa.08.0.lcssa.ph.i.i to i1
  %i.dh = zext i16 %.sroa.4.0.lcssa.ph.i.i to i64
  %i.di = shl nuw nsw i64 %i.dh, 16
  %i.dj = select i1 %i.dg, i64 %i.di, i64 0
  %i.dk = trunc nuw i16 %.sroa.017.0.lcssa.ph.i.i to i1
  %5 = zext i16 %.sroa.419.0.lcssa.ph.i.i to i32
  %6 = select i1 %i.dk, i32 %5, i32 0
  %.not69.i.i = icmp eq i8 %.sroa.028.0.lcssa.ph.fr.i.i, -1
  %i.dl = zext i8 %.sroa.028.0.lcssa.ph.fr.i.i to i32
  %i.dm = shl nuw nsw i32 %i.dl, 16
  %spec.select.i.i = select i1 %.not69.i.i, i32 131072, i32 %i.dm
  %i.dn = or disjoint i32 %6, %spec.select.i.i
  br label %bb.ax

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.do = icmp eq i16 %.sroa.08.0183.i.i, 1
  br i1 %i.do, label %.invoke.i, label %bb.an, !prof !817

bb.al:                                            ; preds = %bb.ai
  %i.dp = icmp eq i16 %.sroa.017.0181.i.i, 1
  br i1 %i.dp, label %.invoke.i, label %bb.ar, !prof !817

bb.am:                                            ; preds = %bb.ai
  %.not70.i.i = icmp eq i8 %.sroa.028.0179.i.i, -1
  br i1 %.not70.i.i, label %bb.au, label %.invoke.i, !prof !279

.invoke.i:                                        ; preds = %bb.am, %bb.al, %bb.ak
  %i.dq = phi ptr [ @48, %bb.al ], [ @47, %bb.ak ], [ @49, %bb.am ]
  %i.dr = phi i64 [ 14, %bb.al ], [ 15, %bb.ak ], [ 29, %bb.am ]
  %i.ds = invoke noundef i32 @_RNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorNtNtCs6nZeqdiIoCH_10serde_core2de5Error15duplicate_fieldCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.dr)
          to label %bb.ax unwind label %.loopexit.split-lp.i, !noalias !2889

bb.an:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !2930)
  call void @llvm.experimental.noalias.scope.decl(metadata !2933)
  %.sroa.01.0.copyload.i.i.i.i.i = load i8, ptr %i.l, align 8, !alias.scope !2936, !noalias !2889 ; 2 uses
  store i8 -1, ptr %i.l, align 8, !alias.scope !2936, !noalias !2889
  %.not.i.i.i74.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i.i74.i.i, label %.invoke80.i, label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit.i.i, !prof !817

.invoke80.i:                                      ; preds = %bb.au, %bb.ar, %bb.an
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @186, i64 noundef 44, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @267) #19
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !2889

.cont.i:                                          ; preds = %.invoke80.i
  unreachable

_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit.i.i: ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2937
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i.i.i24, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx.i.i.i82.i.i, i64 31, i1 false), !noalias !2889
  store i8 %.sroa.01.0.copyload.i.i.i.i.i, ptr %i.d, align 8, !noalias !2937
  %i.dt = invoke i64 @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthENtB8_11Deserialize11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content19ContentDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc30.i unwind label %.loopexit.i, !noalias !2889 ; 3 uses

.noexc30.i:                                       ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2937
  %i.du = trunc i64 %i.dt to i1
  br i1 %i.du, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.noexc30.i
  %.sroa.561.0.extract.shift.i.i = lshr i64 %i.dt, 32
  %.sroa.561.0.extract.trunc.i.i = trunc nuw i64 %.sroa.561.0.extract.shift.i.i to i32
  br label %bb.ax

bb.ap:                                            ; preds = %.noexc30.i
  %.sroa.460.0.extract.shift.i.i = lshr i64 %i.dt, 16
  %.sroa.460.0.extract.trunc.i.i = trunc i64 %.sroa.460.0.extract.shift.i.i to i16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.aw, %bb.at, %bb.ap
  %.sroa.028.1.i.i = phi i8 [ %.sroa.028.0179.i.i, %bb.ap ], [ %.sroa.028.0179.i.i, %bb.at ], [ %.sroa.466.0.extract.trunc.i.i, %bb.aw ] ; 2 uses
  %.sroa.419.1.i.i = phi i16 [ %.sroa.419.0180.i.i, %bb.ap ], [ %.sroa.463.0.extract.trunc.i.i, %bb.at ], [ %.sroa.419.0180.i.i, %bb.aw ] ; 2 uses
  %.sroa.017.1.i.i = phi i16 [ %.sroa.017.0181.i.i, %bb.ap ], [ 1, %bb.at ], [ %.sroa.017.0181.i.i, %bb.aw ] ; 2 uses
  %.sroa.4.1.i.i = phi i16 [ %.sroa.460.0.extract.trunc.i.i, %bb.ap ], [ %.sroa.4.0182.i.i, %bb.at ], [ %.sroa.4.0182.i.i, %bb.aw ] ; 2 uses
  %.sroa.08.1.i.i = phi i16 [ 1, %bb.ap ], [ %.sroa.08.0183.i.i, %bb.at ], [ %.sroa.08.0183.i.i, %bb.aw ] ; 2 uses
  %i.dv = load ptr, ptr %.sroa.616.0..sroa_idx.i23, align 8, !alias.scope !2938, !noalias !2905, !nonnull !4, !noundef !4
  %i.dw = load ptr, ptr %.sroa.414.0..sroa_idx.i21, align 8, !alias.scope !2938, !noalias !2905, !nonnull !4, !noundef !4 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.dv
  br i1 %i.dx, label %.thread.i.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !2942)
  call void @llvm.experimental.noalias.scope.decl(metadata !2945)
  %.sroa.01.0.copyload.i.i.i75.i.i = load i8, ptr %i.l, align 8, !alias.scope !2948, !noalias !2889 ; 2 uses
  store i8 -1, ptr %i.l, align 8, !alias.scope !2948, !noalias !2889
  %.not.i.i.i76.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i75.i.i, -1
  br i1 %.not.i.i.i76.i.i, label %.invoke80.i, label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit79.i.i, !prof !817

_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit79.i.i: ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2949
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i78.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx.i.i.i82.i.i, i64 31, i1 false), !noalias !2889
  store i8 %.sroa.01.0.copyload.i.i.i75.i.i, ptr %i.c, align 8, !noalias !2949
  %i.dy = invoke i64 @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthENtB8_11Deserialize11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content19ContentDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %.noexc33.i unwind label %.loopexit.i, !noalias !2889 ; 3 uses

.noexc33.i:                                       ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit79.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2949
  %i.dz = trunc i64 %i.dy to i1
  br i1 %i.dz, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.noexc33.i
  %.sroa.564.0.extract.shift.i.i = lshr i64 %i.dy, 32
  %.sroa.564.0.extract.trunc.i.i = trunc nuw i64 %.sroa.564.0.extract.shift.i.i to i32
  br label %bb.ax

bb.at:                                            ; preds = %.noexc33.i
  %.sroa.463.0.extract.shift.i.i = lshr i64 %i.dy, 16
  %.sroa.463.0.extract.trunc.i.i = trunc i64 %.sroa.463.0.extract.shift.i.i to i16
  br label %bb.aq

bb.au:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !2950)
  call void @llvm.experimental.noalias.scope.decl(metadata !2953)
  %.sroa.01.0.copyload.i.i.i80.i.i = load i8, ptr %i.l, align 8, !alias.scope !2956, !noalias !2889 ; 2 uses
  store i8 -1, ptr %i.l, align 8, !alias.scope !2956, !noalias !2889
  %.not.i.i.i81.i.i = icmp eq i8 %.sroa.01.0.copyload.i.i.i80.i.i, -1
  br i1 %.not.i.i.i81.i.i, label %.invoke80.i, label %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm.exit.i.i, !prof !817

_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm.exit.i.i: ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2957
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.4.0..sroa_idx.i.i.i83.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.0..sroa_idx.i.i.i82.i.i, i64 31, i1 false), !noalias !2889
  store i8 %.sroa.01.0.copyload.i.i.i80.i.i, ptr %i.b, align 8, !noalias !2957
  %i.ea = invoke i64 @_RINvXse_NtNtCs6nZeqdiIoCH_10serde_core2de5implsINtNtCs4NRVxsYgnAr_4core6option6OptionbENtB8_11Deserialize11deserializeINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content19ContentDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorEECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc36.i unwind label %.loopexit.i, !noalias !2889 ; 3 uses

.noexc36.i:                                       ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2957
  %i.eb = trunc i64 %i.ea to i1
  br i1 %i.eb, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.noexc36.i
  %.sroa.668.0.extract.shift.i.i = lshr i64 %i.ea, 32
  %.sroa.668.0.extract.trunc.i.i = trunc nuw i64 %.sroa.668.0.extract.shift.i.i to i32
  br label %bb.ax

bb.aw:                                            ; preds = %.noexc36.i
  %.sroa.466.0.extract.shift.i.i = lshr i64 %i.ea, 8
  %.sroa.466.0.extract.trunc.i.i = trunc i64 %.sroa.466.0.extract.shift.i.i to i8
  br label %bb.aq

.loopexit.i:                                      ; preds = %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionbEECslT7UmUwa3wv_9ruff_wasm.exit.i.i, %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit79.i.i, %_RINvXs5_NtCs6nZeqdiIoCH_10serde_core2deQINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter10line_width10LineLengthEECslT7UmUwa3wv_9ruff_wasm.exit.i.i, %bb.ab, %.noexc18.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslT7UmUwa3wv_9ruff_wasm.exit.i.i.i.i.i.i.i.i.i, %.noexc16.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.loopexit.split-lp.i:                             ; preds = %.invoke80.i, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ax:                                            ; preds = %bb.av, %bb.as, %bb.ao, %.invoke.i, %.thread.i.i, %bb.ag, %bb.o
  %.sroa.10.1.i.i = phi i32 [ %.sroa.668.0.extract.trunc.i.i, %bb.av ], [ %.sroa.658.0.extract.trunc.i.i, %bb.ag ], [ 131072, %bb.o ], [ %.sroa.561.0.extract.trunc.i.i, %bb.ao ], [ %i.ds, %.invoke.i ], [ %.sroa.564.0.extract.trunc.i.i, %bb.as ], [ %i.dn, %.thread.i.i ]
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.av ], [ 0, %bb.ag ], [ 0, %bb.o ], [ 0, %bb.ao ], [ 0, %.invoke.i ], [ 0, %bb.as ], [ %i.dj, %.thread.i.i ] ; 2 uses
  %.sroa.0.1.i.i = phi i64 [ 1, %bb.av ], [ 1, %bb.ag ], [ 0, %bb.o ], [ 1, %bb.ao ], [ 1, %.invoke.i ], [ 1, %bb.as ], [ 0, %.thread.i.i ]
  %.sroa.10.0.insert.ext.i.i = zext i32 %.sroa.10.1.i.i to i64
  %.sroa.10.0.insert.shift.i.i = shl nuw i64 %.sroa.10.0.insert.ext.i.i, 32
  %.sroa.9.0.insert.insert.i.i = or i64 %.sroa.10.0.insert.shift.i.i, %.sroa.9.0.i.i ; 2 uses
  %.sroa.0.0.insert.insert.i.i = or i64 %.sroa.9.0.insert.insert.i.i, %.sroa.0.1.i.i ; 2 uses
  %.sroa.523.0.extract.shift.i = lshr i64 %.sroa.9.0.insert.insert.i.i, 32 ; 2 uses
  %i.ec = trunc i64 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.ec, label %bb.ay, label %bb.bd

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentBW_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentB1p_EEECslT7UmUwa3wv_9ruff_wasm.exit.i.i unwind label %bb.az, !noalias !2889

bb.az:                                            ; preds = %bb.ay
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ee = load i8, ptr %i.l, align 8, !range !11, !alias.scope !2958, !noalias !2889, !noundef !4
  %i.ef = icmp eq i8 %i.ee, -1
  br i1 %i.ef, label %.body.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %.body.thread unwind label %bb.bc, !noalias !2889

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentB1p_EEECslT7UmUwa3wv_9ruff_wasm.exit.i.i: ; preds = %bb.ay
  %i.eg = load i8, ptr %i.l, align 8, !range !11, !alias.scope !2963, !noalias !2889, !noundef !4
  %i.eh = icmp eq i8 %i.eg, -1
  br i1 %i.eh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorEECslT7UmUwa3wv_9ruff_wasm.exit.i, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentB1p_EEECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentECslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorEECslT7UmUwa3wv_9ruff_wasm.exit.i unwind label %.body.thread46

bb.bc:                                            ; preds = %bb.ba
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16, !noalias !2889
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorEECslT7UmUwa3wv_9ruff_wasm.exit.i: ; preds = %bb.bb, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterTNtNtNtCs6nZeqdiIoCH_10serde_core7private7content7ContentB1p_EEECslT7UmUwa3wv_9ruff_wasm.exit.i.i
  %i.ej = and i64 %.sroa.0.0.insert.insert.i.i, 65535
  br label %bb.bi

bb.bd:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !2889
  %i.ek = invoke fastcc { i32, i32 } @_RNvMs6_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentINtB5_15MapDeserializerNtNtCsioq3h7D9pfI_18serde_wasm_bindgen5error5ErrorE3endCslT7UmUwa3wv_9ruff_wasm(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.k)
          to label %.noexc37 unwind label %.body.thread46 ; 2 uses

.noexc37:                                         ; preds = %bb.bd
  %i.el = extractvalue { i32, i32 } %i.ek, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2889
  %i.em = trunc i32 %i.el to i1
  br i1 %i.em, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %.noexc37
end_hunk_0
