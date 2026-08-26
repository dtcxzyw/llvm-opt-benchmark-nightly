Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_wasm.ty_wasm.e6aa0ec0b7ff7585-cgu.08?download=true
inline.NumInlined: 412
inline.NumDeleted: 193
begin_hunk_0_@_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEE4withNCINvMs4_B6_BF_11with_borrowNCINvXsi_B1U_INtB1U_11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerE0INtNtBZ_6result6ResultB3t_NtNtB5B_5error5ErrorEE0B6s_ECsjNOSlFB5dgD_7ty_wasm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !245
  store i64 %i.n, ptr %i.d, align 8, !noalias !245
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr %.sroa.744.0.i.i.i, ptr %i.v, align 8, !noalias !245
  br i1 %i.u, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = invoke i64 @_RINvXNvNtCsoTR8nlGN3X_18ty_python_semantic4lints_1__NtB5_5LevelNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm(i32 noundef %2)
          to label %bb.s unwind label %bb.r, !noalias !245 ; 3 uses

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !245
  invoke void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2g_7SpannedpENtB14_11Deserialize11deserialize14SpannedVisitorNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB7_7SpannedpENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize6FIELDS, i64 noundef 3)
          to label %bb.z unwind label %bb.r, !noalias !245

bb.o:                                             ; preds = %bb.ab, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.ab ], [ %i.ac, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.x = load i64, ptr %i.d, align 8, !range !109, !alias.scope !246, !noalias !245, !noundef !4
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.p, label %.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.z = load ptr, ptr %i.v, align 8, !alias.scope !255, !noalias !245, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !256
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.thread.i.i.i unwind label %bb.aj, !noalias !245

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.s:                                             ; preds = %bb.m
  %i.ad = trunc i64 %i.w to i1
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.677.0.extract.shift.i.i.i = lshr i64 %i.w, 32
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %.sroa.475.0.extract.shift.i.i.i = lshr i64 %i.w, 8
  %.sroa.475.0.extract.trunc.i.i.i = trunc i64 %.sroa.475.0.extract.shift.i.i.i to i8
  br label %bb.v

bb.v:                                             ; preds = %bb.ai, %bb.u
  %.sroa.6.0.extract.trunc.i.sink.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %bb.ai ], [ 0, %bb.u ]
  %.sroa.6.0.extract.trunc.i99.sink.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i99.i.i.i, %bb.ai ], [ 0, %bb.u ]
  %.sink.i.i.i = phi i8 [ %i.an, %bb.ai ], [ %.sroa.475.0.extract.trunc.i.i.i, %bb.u ]
  %i.ae = load i64, ptr %i.d, align 8, !range !109, !noalias !245, !noundef !4
  %i.af = load ptr, ptr %i.v, align 8, !noalias !245
  br label %bb.as

bb.w:                                             ; preds = %bb.aa, %bb.t
  %.sink116.i.i.i = phi i64 [ %i.aq, %bb.aa ], [ %.sroa.677.0.extract.shift.i.i.i, %bb.t ]
  %i.ag = inttoptr i64 %.sink116.i.i.i to ptr     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %i.ah = load i64, ptr %i.d, align 8, !range !109, !alias.scope !257, !noalias !245, !noundef !4
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.x, label %bb.as

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !260)
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.aj = load ptr, ptr %i.v, align 8, !alias.scope !266, !noalias !245, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !267
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.as unwind label %bb.am, !noalias !237

bb.z:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !268, !noalias !245, !noundef !4 ; 2 uses
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ap = load i32, ptr %i.c, align 8, !noalias !245, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !245
  %i.aq = zext i32 %i.ap to i64
  br label %bb.w

bb.ab:                                            ; preds = %bb.ah, %.invoke.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.ac:                                            ; preds = %bb.z
  %.sroa.045.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !noalias !245 ; 2 uses
  %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.446.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !245 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !245
  %.not.i.i.i = icmp ult i64 %.sroa.045.0.copyload.i.i.i, 4294967296
  %i.as = shl nuw i64 %.sroa.045.0.copyload.i.i.i, 32
  %.sroa.078.0.insert.insert.i.i.i = select i1 %.not.i.i.i, i64 %i.as, i64 513 ; 2 uses
  %i.at = trunc i64 %.sroa.078.0.insert.insert.i.i.i to i1
  br i1 %i.at, label %bb.ad, label %bb.ae, !prof !6

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !269
  br label %.invoke.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.078.0.insert.insert.i.i.i, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  %i.au = icmp ugt i64 %.sroa.446.sroa.4.0.copyload.i.i.i, 4294967295
  %i.av = shl nuw i64 %.sroa.446.sroa.4.0.copyload.i.i.i, 32
  %.sroa.082.0.insert.insert.i.i.i = select i1 %i.au, i64 513, i64 %i.av ; 2 uses
  %i.aw = trunc i64 %.sroa.082.0.insert.insert.i.i.i to i1
  br i1 %i.aw, label %bb.af, label %bb.ag, !prof !6

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.af, %bb.ad
  %.sink118.i.i.i = phi ptr [ %i.b, %bb.ad ], [ %i.a, %bb.af ] ; 2 uses
  %i.ax = phi ptr [ @29, %bb.ad ], [ @30, %bb.af ]
  store i8 2, ptr %.sink118.i.i.i, align 1, !noalias !245
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 41, ptr noundef nonnull %.sink118.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #21
          to label %.cont.i.i.i unwind label %bb.ab, !noalias !245

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %.sroa.6.0.extract.shift.i98.i.i.i = lshr i64 %.sroa.082.0.insert.insert.i.i.i, 32 ; 2 uses
  %.not89.i.i.i = icmp samesign ugt i64 %.sroa.6.0.extract.shift.i.i.i.i, %.sroa.6.0.extract.shift.i98.i.i.i
  br i1 %.not89.i.i.i, label %bb.ah, label %bb.ai, !prof !6

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %bb.i unwind label %bb.ab, !noalias !245

bb.ai:                                            ; preds = %bb.ag
  %.sroa.6.0.extract.trunc.i99.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i98.i.i.i to i32
  br label %bb.v

bb.aj:                                            ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !245
  unreachable

bb.ak:                                            ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = icmp ugt i32 %2, 1027
  br i1 %i.ba, label %bb.al, label %.thread.i.i.i

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !245
  br label %.thread.i.i.i

bb.am:                                            ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.an:                                            ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = icmp ugt i32 %2, 1027
  br i1 %i.bd, label %bb.ao, label %.body.i

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !237
  br label %.body.i

.body.i:                                          ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %.thread.i.i.i
  %eh.lpad-body6.i = phi { ptr, i32 } [ %i.bc, %bb.ao ], [ %eh.lpad-body.i.i, %.thread.i.i.i ], [ %i.bc, %bb.an ], [ %i.be, %bb.ap ], [ %i.be, %bb.aq ]
  resume { ptr, i32 } %eh.lpad-body6.i

bb.ap:                                            ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp ugt i32 %2, 1027
  br i1 %i.bf, label %bb.aq, label %.body.i

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !234
  br label %.body.i

bb.ar:                                            ; preds = %bb.d, %bb.c
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

bb.as:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.w ], [ %.sroa.6.0.extract.trunc.i99.sink.i.i.i, %bb.v ]
  %.sroa.8.0.i = phi i32 [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.w ], [ %.sroa.6.0.extract.trunc.i.sink.i.i.i, %bb.v ]
  %.sroa.10.0.i = phi i8 [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.w ], [ %.sink.i.i.i, %bb.v ]
  %.sroa.03.0.i = phi i64 [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.w ], [ %i.ae, %bb.v ]
  %.sroa.5.0.i = phi ptr [ %i.ag, %bb.y ], [ %i.ag, %bb.x ], [ %i.ag, %bb.w ], [ %i.af, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !245
  %i.bg = load i64, ptr %i.e, align 8, !noalias !237, !noundef !4
  %i.bh = add i64 %i.bg, -1
  store i64 %i.bh, ptr %i.e, align 8, !noalias !237
  store i64 %.sroa.03.0.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEE4withNCINvMs4_B6_BF_11with_borrowNCINvXsi_B1U_INtB1U_11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerE0INtNtBZ_6result6ResultB3t_NtNtB68_5error5ErrorEE0B6Z_ECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = invoke noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(40) null)
          to label %bb.b unwind label %bb.ao, !noalias !275 ; 10 uses

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %2, 1027
  br i1 %i.g, label %bb.d, label %bb.aq

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !275
  br label %bb.aq

bb.e:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !noalias !278, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775807
  br i1 %i.i, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
          to label %.noexc.i.i unwind label %bb.am, !noalias !278

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

.thread.i.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.aj, %bb.q, %bb.p, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bb, %bb.al ], [ %i.az, %bb.ak ], [ %.pn.i.i.i, %bb.q ], [ %.pn.i.i.i, %bb.p ], [ %.pn.i.i.i, %bb.o ], [ %i.az, %bb.aj ]
  %i.j = load i64, ptr %i.e, align 8, !noalias !278, !noundef !4
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.e, align 8, !noalias !278
  br label %.body.i

bb.g:                                             ; preds = %bb.e
  %i.l = add nuw nsw i64 %i.h, 1
  store i64 %i.l, ptr %i.e, align 8, !noalias !278
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.n = load i64, ptr %i.m, align 8, !range !3, !alias.scope !281, !noalias !284, !noundef !4 ; 2 uses
  switch i64 %i.n, label %bb.l [
    i64 -1, label %bb.h
    i64 0, label %bb.j
  ], !prof !103

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
          to label %bb.i unwind label %bb.aj, !noalias !286

bb.i:                                             ; preds = %bb.ag, %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !281, !noalias !284, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !286
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.g
  %.sroa.744.0.i.i.i = phi ptr [ undef, %bb.g ], [ %i.p, %bb.j ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.t = load i8, ptr %i.s, align 8, !range !105, !alias.scope !281, !noalias !284, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !286
  store i64 %i.n, ptr %i.d, align 8, !noalias !286
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr %.sroa.744.0.i.i.i, ptr %i.v, align 8, !noalias !286
  br i1 %i.u, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = invoke i64 @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer16deserialize_enumNtNvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata14python_versions_1__NtB2c_22SupportedPythonVersionNtB14_11Deserialize11deserialize9___VisitorECsjNOSlFB5dgD_7ty_wasm(i32 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @14, i64 noundef 9)
          to label %_RINvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata14python_versions_1__NtB5_22SupportedPythonVersionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i.i unwind label %bb.r, !noalias !286 ; 3 uses

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !286
  invoke void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2g_7SpannedpENtB14_11Deserialize11deserialize14SpannedVisitorNtNtNtCs4o81Y09oZk1_10ty_project8metadata14python_version22SupportedPythonVersionEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB7_7SpannedpENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize6FIELDS, i64 noundef 3)
          to label %bb.y unwind label %bb.r, !noalias !286

bb.o:                                             ; preds = %bb.aa, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.aa ], [ %i.ac, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %i.x = load i64, ptr %i.d, align 8, !range !109, !alias.scope !287, !noalias !286, !noundef !4
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.p, label %.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !290)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.z = load ptr, ptr %i.v, align 8, !alias.scope !296, !noalias !286, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !297
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.thread.i.i.i unwind label %bb.ai, !noalias !286

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_RINvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata14python_versions_1__NtB5_22SupportedPythonVersionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i.i: ; preds = %bb.m
  %i.ad = trunc i64 %i.w to i1
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RINvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata14python_versions_1__NtB5_22SupportedPythonVersionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i.i
  %.sroa.677.0.extract.shift.i.i.i = lshr i64 %i.w, 32
  br label %bb.v

bb.t:                                             ; preds = %_RINvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata14python_versions_1__NtB5_22SupportedPythonVersionNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i.i
  %.sroa.475.0.extract.shift.i.i.i = lshr i64 %i.w, 8
  %.sroa.475.0.extract.trunc.i.i.i = trunc i64 %.sroa.475.0.extract.shift.i.i.i to i8
  br label %bb.u

bb.u:                                             ; preds = %bb.ah, %bb.t
  %.sroa.6.0.extract.trunc.i.sink.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %bb.ah ], [ 0, %bb.t ]
  %.sroa.6.0.extract.trunc.i99.sink.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i99.i.i.i, %bb.ah ], [ 0, %bb.t ]
  %.sink.i.i.i = phi i8 [ %i.an, %bb.ah ], [ %.sroa.475.0.extract.trunc.i.i.i, %bb.t ]
  %i.ae = load i64, ptr %i.d, align 8, !range !109, !noalias !286, !noundef !4
  %i.af = load ptr, ptr %i.v, align 8, !noalias !286
  br label %bb.ar

bb.v:                                             ; preds = %bb.z, %bb.s
  %.sink116.i.i.i = phi i64 [ %i.aq, %bb.z ], [ %.sroa.677.0.extract.shift.i.i.i, %bb.s ]
  %i.ag = inttoptr i64 %.sink116.i.i.i to ptr     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.ah = load i64, ptr %i.d, align 8, !range !109, !alias.scope !298, !noalias !286, !noundef !4
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !301)
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.aj = load ptr, ptr %i.v, align 8, !alias.scope !307, !noalias !286, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !308
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.ar unwind label %bb.al, !noalias !278

bb.y:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !309, !noalias !286, !noundef !4 ; 2 uses
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ap = load i32, ptr %i.c, align 8, !noalias !286, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !286
  %i.aq = zext i32 %i.ap to i64
  br label %bb.v

bb.aa:                                            ; preds = %bb.ag, %.invoke.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.ab:                                            ; preds = %bb.y
  %.sroa.045.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !noalias !286 ; 2 uses
  %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.446.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !286 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !286
  %.not.i.i.i = icmp ult i64 %.sroa.045.0.copyload.i.i.i, 4294967296
  %i.as = shl nuw i64 %.sroa.045.0.copyload.i.i.i, 32
  %.sroa.078.0.insert.insert.i.i.i = select i1 %.not.i.i.i, i64 %i.as, i64 513 ; 2 uses
  %i.at = trunc i64 %.sroa.078.0.insert.insert.i.i.i to i1
  br i1 %i.at, label %bb.ac, label %bb.ad, !prof !6

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !310
  br label %.invoke.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.078.0.insert.insert.i.i.i, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  %i.au = icmp ugt i64 %.sroa.446.sroa.4.0.copyload.i.i.i, 4294967295
  %i.av = shl nuw i64 %.sroa.446.sroa.4.0.copyload.i.i.i, 32
  %.sroa.082.0.insert.insert.i.i.i = select i1 %i.au, i64 513, i64 %i.av ; 2 uses
  %i.aw = trunc i64 %.sroa.082.0.insert.insert.i.i.i to i1
  br i1 %i.aw, label %bb.ae, label %bb.af, !prof !6

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !313
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.ae, %bb.ac
  %.sink118.i.i.i = phi ptr [ %i.b, %bb.ac ], [ %i.a, %bb.ae ] ; 2 uses
  %i.ax = phi ptr [ @29, %bb.ac ], [ @30, %bb.ae ]
  store i8 2, ptr %.sink118.i.i.i, align 1, !noalias !286
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 41, ptr noundef nonnull %.sink118.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #21
          to label %.cont.i.i.i unwind label %bb.aa, !noalias !286

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.af:                                            ; preds = %bb.ad
  %.sroa.6.0.extract.shift.i98.i.i.i = lshr i64 %.sroa.082.0.insert.insert.i.i.i, 32 ; 2 uses
  %.not89.i.i.i = icmp samesign ugt i64 %.sroa.6.0.extract.shift.i.i.i.i, %.sroa.6.0.extract.shift.i98.i.i.i
  br i1 %.not89.i.i.i, label %bb.ag, label %bb.ah, !prof !6

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %bb.i unwind label %bb.aa, !noalias !286

bb.ah:                                            ; preds = %bb.af
  %.sroa.6.0.extract.trunc.i99.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i98.i.i.i to i32
  br label %bb.u

bb.ai:                                            ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !286
  unreachable

bb.aj:                                            ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = icmp ugt i32 %2, 1027
  br i1 %i.ba, label %bb.ak, label %.thread.i.i.i

bb.ak:                                            ; preds = %bb.aj
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !286
  br label %.thread.i.i.i

bb.al:                                            ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.am:                                            ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = icmp ugt i32 %2, 1027
  br i1 %i.bd, label %bb.an, label %.body.i

bb.an:                                            ; preds = %bb.am
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !278
  br label %.body.i

.body.i:                                          ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %.thread.i.i.i
  %eh.lpad-body6.i = phi { ptr, i32 } [ %i.bc, %bb.an ], [ %eh.lpad-body.i.i, %.thread.i.i.i ], [ %i.bc, %bb.am ], [ %i.be, %bb.ao ], [ %i.be, %bb.ap ]
  resume { ptr, i32 } %eh.lpad-body6.i

bb.ao:                                            ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp ugt i32 %2, 1027
  br i1 %i.bf, label %bb.ap, label %.body.i

bb.ap:                                            ; preds = %bb.ao
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !275
  br label %.body.i

bb.aq:                                            ; preds = %bb.d, %bb.c
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

bb.ar:                                            ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.sroa.9.0.i = phi i32 [ undef, %bb.x ], [ undef, %bb.w ], [ undef, %bb.v ], [ %.sroa.6.0.extract.trunc.i99.sink.i.i.i, %bb.u ]
  %.sroa.8.0.i = phi i32 [ undef, %bb.x ], [ undef, %bb.w ], [ undef, %bb.v ], [ %.sroa.6.0.extract.trunc.i.sink.i.i.i, %bb.u ]
  %.sroa.10.0.i = phi i8 [ undef, %bb.x ], [ undef, %bb.w ], [ undef, %bb.v ], [ %.sink.i.i.i, %bb.u ]
  %.sroa.03.0.i = phi i64 [ -1, %bb.x ], [ -1, %bb.w ], [ -1, %bb.v ], [ %i.ae, %bb.u ]
  %.sroa.5.0.i = phi ptr [ %i.ag, %bb.x ], [ %i.ag, %bb.w ], [ %i.ag, %bb.v ], [ %i.af, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !286
  %i.bg = load i64, ptr %i.e, align 8, !noalias !278, !noundef !4
  %i.bh = add i64 %i.bg, -1
  store i64 %i.bh, ptr %i.e, align 8, !noalias !278
  store i64 %.sroa.03.0.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEE4withNCINvMs4_B6_BF_11with_borrowNCINvXsi_B1U_INtB1U_11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options12OutputFormatENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerE0INtNtBZ_6result6ResultB3t_NtNtB5Q_5error5ErrorEE0B6H_ECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = invoke noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(40) null)
          to label %bb.b unwind label %bb.ap, !noalias !316 ; 10 uses

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ugt i32 %2, 1027
  br i1 %i.g, label %bb.d, label %bb.ar

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !316
  br label %bb.ar

bb.e:                                             ; preds = %bb.b
  %i.h = load i64, ptr %i.e, align 8, !noalias !319, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775807
  br i1 %i.i, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
          to label %.noexc.i.i unwind label %bb.an, !noalias !319

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

.thread.i.i.i:                                    ; preds = %bb.am, %bb.al, %bb.ak, %bb.q, %bb.p, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bb, %bb.am ], [ %i.az, %bb.al ], [ %.pn.i.i.i, %bb.q ], [ %.pn.i.i.i, %bb.p ], [ %.pn.i.i.i, %bb.o ], [ %i.az, %bb.ak ]
  %i.j = load i64, ptr %i.e, align 8, !noalias !319, !noundef !4
  %i.k = add i64 %i.j, -1
  store i64 %i.k, ptr %i.e, align 8, !noalias !319
  br label %.body.i

bb.g:                                             ; preds = %bb.e
  %i.l = add nuw nsw i64 %i.h, 1
  store i64 %i.l, ptr %i.e, align 8, !noalias !319
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.n = load i64, ptr %i.m, align 8, !range !3, !alias.scope !322, !noalias !325, !noundef !4 ; 2 uses
  switch i64 %i.n, label %bb.l [
    i64 -1, label %bb.h
    i64 0, label %bb.j
  ], !prof !103

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
          to label %bb.i unwind label %bb.ak, !noalias !327

bb.i:                                             ; preds = %bb.ah, %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !322, !noalias !325, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8, !noalias !327
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.g
  %.sroa.744.0.i.i.i = phi ptr [ undef, %bb.g ], [ %i.p, %bb.j ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.t = load i8, ptr %i.s, align 8, !range !105, !alias.scope !322, !noalias !325, !noundef !4
  %i.u = trunc nuw i8 %i.t to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !327
  store i64 %i.n, ptr %i.d, align 8, !noalias !327
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr %.sroa.744.0.i.i.i, ptr %i.v, align 8, !noalias !327
  br i1 %i.u, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = invoke i64 @_RINvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionssa_1__NtB5_12OutputFormatNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm(i32 noundef %2)
          to label %bb.s unwind label %bb.r, !noalias !327 ; 3 uses

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !327
  invoke void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2g_7SpannedpENtB14_11Deserialize11deserialize14SpannedVisitorNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options12OutputFormatEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB7_7SpannedpENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize6FIELDS, i64 noundef 3)
          to label %bb.z unwind label %bb.r, !noalias !327

bb.o:                                             ; preds = %bb.ab, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ar, %bb.ab ], [ %i.ac, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.x = load i64, ptr %i.d, align 8, !range !109, !alias.scope !328, !noalias !327, !noundef !4
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.p, label %.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !331)
  call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.z = load ptr, ptr %i.v, align 8, !alias.scope !337, !noalias !327, !nonnull !4, !noundef !4
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8, !noalias !338
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %.thread.i.i.i unwind label %bb.aj, !noalias !327

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.s:                                             ; preds = %bb.m
  %i.ad = trunc i64 %i.w to i1
  br i1 %i.ad, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.677.0.extract.shift.i.i.i = lshr i64 %i.w, 32
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %.sroa.475.0.extract.shift.i.i.i = lshr i64 %i.w, 8
  %.sroa.475.0.extract.trunc.i.i.i = trunc i64 %.sroa.475.0.extract.shift.i.i.i to i8
  br label %bb.v

bb.v:                                             ; preds = %bb.ai, %bb.u
  %.sroa.6.0.extract.trunc.i.sink.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i, %bb.ai ], [ 0, %bb.u ]
  %.sroa.6.0.extract.trunc.i99.sink.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i99.i.i.i, %bb.ai ], [ 0, %bb.u ]
  %.sink.i.i.i = phi i8 [ %i.an, %bb.ai ], [ %.sroa.475.0.extract.trunc.i.i.i, %bb.u ]
  %i.ae = load i64, ptr %i.d, align 8, !range !109, !noalias !327, !noundef !4
  %i.af = load ptr, ptr %i.v, align 8, !noalias !327
  br label %bb.as

bb.w:                                             ; preds = %bb.aa, %bb.t
  %.sink116.i.i.i = phi i64 [ %i.aq, %bb.aa ], [ %.sroa.677.0.extract.shift.i.i.i, %bb.t ]
  %i.ag = inttoptr i64 %.sink116.i.i.i to ptr     ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ah = load i64, ptr %i.d, align 8, !range !109, !alias.scope !339, !noalias !327, !noundef !4
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.x, label %bb.as

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.aj = load ptr, ptr %i.v, align 8, !alias.scope !348, !noalias !327, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !349
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.y, label %bb.as

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.as unwind label %bb.am, !noalias !319

bb.z:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.an = load i8, ptr %i.am, align 8, !range !350, !noalias !327, !noundef !4 ; 2 uses
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ap = load i32, ptr %i.c, align 8, !noalias !327, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !327
  %i.aq = zext i32 %i.ap to i64
  br label %bb.w

bb.ab:                                            ; preds = %bb.ah, %.invoke.i.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.ac:                                            ; preds = %bb.z
  %.sroa.045.0.copyload.i.i.i = load i64, ptr %i.c, align 8, !noalias !327 ; 2 uses
  %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.446.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.446.sroa.4.0..sroa.446.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !327 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !327
  %.not.i.i.i = icmp ult i64 %.sroa.045.0.copyload.i.i.i, 4294967296
  %i.as = shl nuw i64 %.sroa.045.0.copyload.i.i.i, 32
  %.sroa.078.0.insert.insert.i.i.i = select i1 %.not.i.i.i, i64 %i.as, i64 513 ; 2 uses
  %i.at = trunc i64 %.sroa.078.0.insert.insert.i.i.i to i1
  br i1 %i.at, label %bb.ad, label %bb.ae, !prof !6

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !351
  br label %.invoke.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.078.0.insert.insert.i.i.i, 32 ; 2 uses
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  %i.au = icmp ugt i64 %.sroa.446.sroa.4.0.copyload.i.i.i, 4294967295
  %i.av = shl nuw i64 %.sroa.446.sroa.4.0.copyload.i.i.i, 32
  %.sroa.082.0.insert.insert.i.i.i = select i1 %i.au, i64 513, i64 %i.av ; 2 uses
  %i.aw = trunc i64 %.sroa.082.0.insert.insert.i.i.i to i1
  br i1 %i.aw, label %bb.af, label %bb.ag, !prof !6

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !354
  br label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.af, %bb.ad
  %.sink118.i.i.i = phi ptr [ %i.b, %bb.ad ], [ %i.a, %bb.af ] ; 2 uses
  %i.ax = phi ptr [ @29, %bb.ad ], [ @30, %bb.af ]
  store i8 2, ptr %.sink118.i.i.i, align 1, !noalias !327
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 41, ptr noundef nonnull %.sink118.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ax) #21
          to label %.cont.i.i.i unwind label %bb.ab, !noalias !327

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %.sroa.6.0.extract.shift.i98.i.i.i = lshr i64 %.sroa.082.0.insert.insert.i.i.i, 32 ; 2 uses
  %.not89.i.i.i = icmp samesign ugt i64 %.sroa.6.0.extract.shift.i.i.i.i, %.sroa.6.0.extract.shift.i98.i.i.i
  br i1 %.not89.i.i.i, label %bb.ah, label %bb.ai, !prof !6

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %bb.i unwind label %bb.ab, !noalias !327

bb.ai:                                            ; preds = %bb.ag
  %.sroa.6.0.extract.trunc.i99.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i98.i.i.i to i32
  br label %bb.v

bb.aj:                                            ; preds = %bb.q
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !327
  unreachable

bb.ak:                                            ; preds = %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ba = icmp ugt i32 %2, 1027
  br i1 %i.ba, label %bb.al, label %.thread.i.i.i

bb.al:                                            ; preds = %bb.ak
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !327
  br label %.thread.i.i.i

bb.am:                                            ; preds = %bb.y
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i

bb.an:                                            ; preds = %bb.f
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = icmp ugt i32 %2, 1027
  br i1 %i.bd, label %bb.ao, label %.body.i

bb.ao:                                            ; preds = %bb.an
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !319
  br label %.body.i

.body.i:                                          ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an, %.thread.i.i.i
  %eh.lpad-body6.i = phi { ptr, i32 } [ %i.bc, %bb.ao ], [ %eh.lpad-body.i.i, %.thread.i.i.i ], [ %i.bc, %bb.an ], [ %i.be, %bb.ap ], [ %i.be, %bb.aq ]
  resume { ptr, i32 } %eh.lpad-body6.i

bb.ap:                                            ; preds = %bb.a
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = icmp ugt i32 %2, 1027
  br i1 %i.bf, label %bb.aq, label %.body.i

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !316
  br label %.body.i

bb.ar:                                            ; preds = %bb.d, %bb.c
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

bb.as:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.9.0.i = phi i32 [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.w ], [ %.sroa.6.0.extract.trunc.i99.sink.i.i.i, %bb.v ]
  %.sroa.8.0.i = phi i32 [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.w ], [ %.sroa.6.0.extract.trunc.i.sink.i.i.i, %bb.v ]
  %.sroa.10.0.i = phi i8 [ undef, %bb.y ], [ undef, %bb.x ], [ undef, %bb.w ], [ %.sink.i.i.i, %bb.v ]
  %.sroa.03.0.i = phi i64 [ -1, %bb.y ], [ -1, %bb.x ], [ -1, %bb.w ], [ %i.ae, %bb.v ]
  %.sroa.5.0.i = phi ptr [ %i.ag, %bb.y ], [ %i.ag, %bb.x ], [ %i.ag, %bb.w ], [ %i.af, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !327
  %i.bg = load i64, ptr %i.e, align 8, !noalias !319, !noundef !4
  %i.bh = add i64 %i.bg, -1
  store i64 %i.bh, ptr %i.e, align 8, !noalias !319
  store i64 %.sroa.03.0.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx, align 4
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtBZ_6option6OptionTNtCs2Qp84xiUxLo_17ruff_ranged_value11ValueSourcebEEEE4withNCINvMs4_B6_BF_11with_borrowNCINvXsi_B1U_INtB1U_11RangedValueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options15OverrideOptionsENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerE0INtNtBZ_6result6ResultB3t_NtNtB5T_5error5ErrorEE0B6K_ECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  %i.c = alloca [224 x i8], align 8               ; 7 uses
  %i.d = alloca [240 x i8], align 8               ; 7 uses
  %i.e = alloca [240 x i8], align 8               ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.14.i = alloca [212 x i8], align 4        ; 3 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.g = invoke noundef ptr %.val(ptr noalias noundef align 8 dereferenceable_or_null(40) null)
          to label %bb.b unwind label %bb.ao, !noalias !357 ; 10 uses

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i32 %2, 1027
  br i1 %i.i, label %bb.d, label %bb.aq

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %2) #24, !noalias !357
  br label %bb.aq

bb.e:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8, !noalias !360, !noundef !4 ; 2 uses
  %i.k = icmp ult i64 %i.j, 9223372036854775807
  br i1 %i.k, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
          to label %.noexc.i.i unwind label %bb.am, !noalias !360

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

.thread.i.i.i:                                    ; preds = %bb.al, %bb.ak, %bb.aj, %bb.q, %bb.p, %bb.o
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.bi, %bb.al ], [ %i.bg, %bb.ak ], [ %.pn.i.i.i, %bb.q ], [ %.pn.i.i.i, %bb.p ], [ %.pn.i.i.i, %bb.o ], [ %i.bg, %bb.aj ]
  %i.l = load i64, ptr %i.g, align 8, !noalias !360, !noundef !4
  %i.m = add i64 %i.l, -1
  store i64 %i.m, ptr %i.g, align 8, !noalias !360
  br label %.body.i

bb.g:                                             ; preds = %bb.e
  %i.n = add nuw nsw i64 %i.j, 1
  store i64 %i.n, ptr %i.g, align 8, !noalias !360
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.p = load i64, ptr %i.o, align 8, !range !3, !alias.scope !363, !noalias !366, !noundef !4 ; 2 uses
  switch i64 %i.p, label %bb.l [
    i64 -1, label %bb.h
    i64 0, label %bb.j
  ], !prof !103

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #21
          to label %bb.i unwind label %bb.aj, !noalias !368

bb.i:                                             ; preds = %bb.ag, %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !363, !noalias !366, !nonnull !4, !noundef !4 ; 2 uses
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !368
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.g
  %.sroa.741.0.i.i.i = phi ptr [ undef, %bb.g ], [ %i.r, %bb.j ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = load i8, ptr %i.u, align 8, !range !105, !alias.scope !363, !noalias !366, !noundef !4
  %i.w = trunc nuw i8 %i.v to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !368
  store i64 %i.p, ptr %i.f, align 8, !noalias !368
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  store ptr %.sroa.741.0.i.i.i, ptr %i.x, align 8, !noalias !368
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !368
  invoke void @_RINvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata7optionssm_1__NtB5_15OverrideOptionsNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.c, i32 noundef %2)
          to label %bb.s unwind label %bb.r, !noalias !368

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !368
  invoke void @_RINvXs8_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer18deserialize_structINtNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB2g_7SpannedpENtB14_11Deserialize11deserialize14SpannedVisitorNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options15OverrideOptionsEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.d, i32 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXsa_NtCs9VIZOfz6gNk_13serde_spanned7spannedINtB7_7SpannedpENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserialize6FIELDS, i64 noundef 3)
          to label %bb.y unwind label %bb.r, !noalias !368

bb.o:                                             ; preds = %bb.aa, %bb.r
  %.pn.i.i.i = phi { ptr, i32 } [ %i.at, %bb.aa ], [ %i.ad, %bb.r ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.y = load i64, ptr %i.f, align 8, !range !109, !alias.scope !369, !noalias !368, !noundef !4
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.p, label %.thread.i.i.i

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.aa = load ptr, ptr %i.x, align 8, !alias.scope !378, !noalias !368, !nonnull !4, !noundef !4
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !379
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.q, label %.thread.i.i.i

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.thread.i.i.i unwind label %bb.ai, !noalias !368

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.s:                                             ; preds = %bb.m
  %i.ae = load i64, ptr %i.c, align 8, !range !31, !noalias !368, !noundef !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !noalias !368 ; 2 uses
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !368
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %.sroa.566.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(212) %.sroa.14.i, ptr noundef nonnull align 4 dereferenceable(212) %.sroa.566.0..sroa_idx.i.i.i, i64 212, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !368
  %i.ai = load i64, ptr %i.f, align 8, !range !109, !noalias !368, !noundef !4
  %i.aj = load ptr, ptr %i.x, align 8, !noalias !368
  br label %bb.ar

bb.v:                                             ; preds = %bb.z, %bb.t
  %.sroa.7.0.in.in.i = phi i32 [ %i.as, %bb.z ], [ %i.ah, %bb.t ]
  %.sroa.7.0.in.i = zext i32 %.sroa.7.0.in.in.i to i64
  %.sroa.7.0.i = inttoptr i64 %.sroa.7.0.in.i to ptr ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.ak = load i64, ptr %i.f, align 8, !range !109, !alias.scope !380, !noalias !368, !noundef !4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.w, label %bb.ar

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !383)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.am = load ptr, ptr %i.x, align 8, !alias.scope !389, !noalias !368, !nonnull !4, !noundef !4
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !390
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %bb.ar unwind label %bb.al, !noalias !360

bb.y:                                             ; preds = %bb.n
  %i.ap = load i64, ptr %i.d, align 8, !range !31, !noalias !368, !noundef !4 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, -2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !noalias !368 ; 3 uses
  br i1 %i.aq, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !368
  br label %bb.v

bb.aa:                                            ; preds = %bb.ag, %.invoke.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs9VIZOfz6gNk_13serde_spanned7spanned7SpannedNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options15OverrideOptionsEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(240) %i.e) #22
          to label %bb.o unwind label %bb.ai, !noalias !368

end_hunk_0
begin_hunk_1_@_RINvXsQ_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_15SeqDeserializerINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtB1f_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromENtNtB2y_5error5ErrorENtB8_9SeqAccess17next_element_seedINtNtB1f_6marker11PhantomDataNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value15RelativePathBufEECsjNOSlFB5dgD_7ty_wasm:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsQ_NtNtCs6nZeqdiIoCH_10serde_core2de5valueINtB6_15SeqDeserializerINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtB1f_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromENtNtB2y_5error5ErrorENtB8_9SeqAccess17next_element_seedINtNtB1f_6marker11PhantomDataNtNtNtCs4o81Y09oZk1_10ty_project8metadata5value19RelativeGlobPatternEECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !alias.scope !648, !noundef !4
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit.thread, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %bb.a
  %i.c = tail call { i32, i32 } @_RNvXs7_CsdjJ41tfNHOz_6js_sysNtB5_9ArrayIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %i.d = extractvalue { i32, i32 } %i.c, 0
  %i.e = trunc i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit.thread

bb.b:                                             ; preds = %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit
  %i.f = extractvalue { i32, i32 } %i.c, 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvXNvNtNtCs4o81Y09oZk1_10ty_project8metadata5values2_1__NtB5_19RelativeGlobPatternNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, i32 noundef %i.f)
  %i.j = load i64, ptr %i.a, align 8, !range !3, !noundef !4
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e

_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit.thread: ; preds = %bb.a, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RNvXs9_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerINtNtBb_7convert4FromNtCsXBDNnD8Soy_12wasm_bindgen7JsValueE4fromEEINtB5_8FuseImplBY_E4nextCsjNOSlFB5dgD_7ty_wasm.exit.thread
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = load i32, ptr %i.l, align 8, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.n, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs5e9M2GLoJMY_8indexmap5serdeINtB5_15IndexMapVisitorINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBY_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtCs6nZeqdiIoCH_10serde_core2de7Visitor9visit_mapINtNtB4F_5value15MapDeserializerINtNtNtNtB3i_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB78_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.533 = alloca [76 x i8], align 4          ; 7 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [76 x i8], align 4            ; 3 uses
  %.sroa.13 = alloca [76 x i8], align 4           ; 5 uses
  %i.j = alloca [56 x i8], align 8                ; 21 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !651, !noundef !4
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.thread53, label %bb.d

.thread53:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %bb.e

.body:                                            ; preds = %bb.x, %bb.y, %bb.g, %bb.c, %.body19
  %.pn = phi { ptr, i32 } [ %eh.lpad-body20, %.body19 ], [ %i.u, %bb.g ], [ %i.p, %bb.c ], [ %i.bk, %bb.y ], [ %i.bj, %bb.x ]
  %.val14 = load i32, ptr %1, align 8, !range !593, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val15 = load i32, ptr %i.m, align 4           ; 2 uses
  %i.n = icmp ne i32 %.val14, 0
  %i.o = icmp ugt i32 %.val15, 1027
  %or.cond.i.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit

bb.b:                                             ; preds = %.body
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val15) #24
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i, %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i32, ptr %i.q, align 8, !alias.scope !654, !noalias !657, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val1.i = load i32, ptr %i.r, align 4, !alias.scope !659, !noalias !660, !noundef !4 ; 2 uses
  %narrow.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.val1.i, i32 %.val.i)
  %i.s = tail call i32 @llvm.umin.i32(i32 %narrow.i.i.i.i, i32 10922)
  %i.t = zext nneg i32 %i.s to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %.not59 = icmp ugt i32 %.val1.i, %.val.i
  br i1 %.not59, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.thread53, %bb.d
  store i64 0, ptr %i.j, align 8, !alias.scope !661
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !661
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !661
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  br label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBO_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCsjNOSlFB5dgD_7ty_wasm.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !664
  invoke void @_RNvMs6_NtCs8bMtf1JxJvX_9hashbrown3rawINtB5_8RawTablejE16with_capacity_inCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, i64 noundef range(i64 1, 0) %i.t)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !664
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 1, 0) %i.t, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
          to label %bb.h unwind label %bb.g, !noalias !664

bb.g:                                             ; preds = %bb.i, %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef 8, i64 noundef 16)
          to label %.body unwind label %bb.k, !noalias !664

bb.h:                                             ; preds = %.noexc
  %i.w = load i64, ptr %i.d, align 8, !range !32, !noalias !664, !noundef !4
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !667, !noalias !664, !noundef !4 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.x, label %bb.i, label %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBL_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE13with_capacityCsjNOSlFB5dgD_7ty_wasm.exit.i, !prof !6

bb.i:                                             ; preds = %bb.h
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !664
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #21
          to label %bb.j unwind label %bb.g, !noalias !664

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !664
  unreachable

_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBL_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE13with_capacityCsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %bb.h
  %i.ad = load ptr, ptr %i.aa, align 8, !noalias !664, !nonnull !4, !noundef !4
  %i.ae = icmp uge i64 %i.z, %i.t
  tail call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !664
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !664
  store i64 %i.z, ptr %i.j, align 8, !alias.scope !661
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !661
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !661
  br label %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBO_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCsjNOSlFB5dgD_7ty_wasm.exit

_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBO_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %bb.e, %_RNvMs_NtCs5e9M2GLoJMY_8indexmap5innerINtB4_4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBL_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEE13with_capacityCsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.533.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.533, i64 44
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %.sroa.4.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBO_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCsjNOSlFB5dgD_7ty_wasm.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit
  %.sroa.930.0 = phi i32 [ undef, %_RNvMs1_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBO_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE24with_capacity_and_hasherCsjNOSlFB5dgD_7ty_wasm.exit ], [ %.sroa.930.041, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.experimental.noalias.scope.decl(metadata !668)
  call void @llvm.experimental.noalias.scope.decl(metadata !671)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.533)
  %i.ai = load ptr, ptr %i.k, align 8, !alias.scope !674, !noalias !679, !noundef !4
  %.not.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i, label %.thread38, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke { i32, i32 } @_RNvXs7_CsdjJ41tfNHOz_6js_sysNtB5_9ArrayIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc16 unwind label %.loopexit ; 2 uses

.noexc16:                                         ; preds = %bb.m
  %i.ak = extractvalue { i32, i32 } %i.aj, 0
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %bb.n, label %.thread38

bb.n:                                             ; preds = %.noexc16
  %i.am = extractvalue { i32, i32 } %i.aj, 1
  %i.an = invoke { i32, i32 } @_RNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pair(i32 noundef %i.am)
          to label %.noexc17 unwind label %.loopexit ; 2 uses

.noexc17:                                         ; preds = %bb.n
  %i.ao = extractvalue { i32, i32 } %i.an, 0
  %i.ap = extractvalue { i32, i32 } %i.an, 1      ; 5 uses
  %i.aq = load i64, ptr %i.af, align 8, !alias.scope !684, !noalias !685, !noundef !4
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.af, align 8, !alias.scope !684, !noalias !685
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !686
  invoke void @_RINvXsi_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB6_11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, i32 noundef %i.ao)
          to label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i unwind label %bb.u, !noalias !687

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i: ; preds = %.noexc17
  %i.as = load i64, ptr %i.b, align 8, !range !3, !noalias !686, !noundef !4
  %i.at = icmp eq i64 %i.as, -1
  br i1 %i.at, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.av = load i32, ptr %i.au, align 8, !noalias !686, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !686
  %i.aw = icmp ugt i32 %i.ap, 1027
  br i1 %i.aw, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.ap) #24, !noalias !687
  br label %.thread

bb.q:                                             ; preds = %bb.r
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.c) #22
          to label %.body19 unwind label %bb.t, !noalias !687

bb.r:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !686
  invoke void @_RINvXsi_Cs2Qp84xiUxLo_17ruff_ranged_valueINtB6_11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelENtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.ap)
          to label %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i unwind label %bb.q, !noalias !687

_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i: ; preds = %bb.r
  %i.ay = load i64, ptr %i.a, align 8, !range !3, !noalias !686, !noundef !4
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %bb.s, label %bb.w

bb.s:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !noalias !686, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !686
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.c)
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !686
  br label %.thread

bb.t:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !687
  unreachable

bb.u:                                             ; preds = %.noexc17
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = icmp ugt i32 %i.ap, 1027
  br i1 %i.be, label %bb.v, label %.body19

bb.v:                                             ; preds = %bb.u
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %i.ap) #24, !noalias !687
  br label %.body19

.loopexit:                                        ; preds = %bb.ac, %bb.m, %bb.n, %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body19

.body19:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.u, %bb.v
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.ax, %bb.q ], [ %i.bd, %bb.v ], [ %i.bd, %bb.u ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.j) #22
          to label %.body unwind label %bb.ai

.thread:                                          ; preds = %bb.p, %bb.o, %.noexc18
  %.sroa.930.0.ph = phi i32 [ %i.bb, %.noexc18 ], [ %i.av, %bb.o ], [ %i.av, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  br label %.loopexit43

.thread38:                                        ; preds = %bb.l, %.noexc16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  br label %bb.ab

bb.w:                                             ; preds = %_RINvXs3_NtCs6nZeqdiIoCH_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEENtB6_15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.533.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !686
  %.sroa.031.0.copyload = load i64, ptr %i.c, align 8, !noalias !686 ; 2 uses
  %.sroa.432.0.copyload = load i32, ptr %.sroa.432.0..sroa_idx, align 8, !noalias !686 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.533, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.533.0..sroa_idx, i64 44, i1 false), !noalias !686
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %.sroa.13, ptr noundef nonnull align 4 dereferenceable(76) %.sroa.533, i64 76, i1 false), !noalias !688
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !686
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.533)
  %i.bf = icmp eq i64 %.sroa.031.0.copyload, -2
  br i1 %i.bf, label %.loopexit43, label %bb.ab

.loopexit43:                                      ; preds = %bb.w, %.thread
  %.sroa.930.036 = phi i32 [ %.sroa.930.0.ph, %.thread ], [ %.sroa.432.0.copyload, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.930.036, ptr %i.bg, align 8
  store i64 -1, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i21 unwind label %bb.x

bb.x:                                             ; preds = %.loopexit43
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBG_6string6StringEIB1F_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #22
          to label %.body unwind label %bb.aa

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i21: ; preds = %.loopexit43
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB1c_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i unwind label %bb.y

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i21
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB1j_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i21
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB1j_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit unwind label %bb.c

bb.ab:                                            ; preds = %.thread38, %bb.w
  %.sroa.0.042 = phi i64 [ -1, %.thread38 ], [ %.sroa.031.0.copyload, %bb.w ] ; 2 uses
  %.sroa.930.041 = phi i32 [ %.sroa.930.0, %.thread38 ], [ %.sroa.432.0.copyload, %bb.w ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(76) %.sroa.13, i64 76, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %.not = icmp eq i64 %.sroa.0.042, -1
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.0.042, ptr %i.i, align 8
  store i32 %.sroa.930.041, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.56..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBO_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.h)
          to label %bb.ae unwind label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.j, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val12 = load i32, ptr %1, align 8, !range !593, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val13 = load i32, ptr %i.bn, align 4          ; 2 uses
  %i.bo = icmp ne i32 %.val12, 0
  %i.bp = icmp ugt i32 %.val13, 1027
  %or.cond.i.i25 = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond.i.i25, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.bq = load i64, ptr %i.g, align 8, !range !3, !alias.scope !689, !noundef !4 ; 2 uses
  %i.br = icmp eq i64 %i.bq, -1
  br i1 %i.br, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !692)
  call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %bb.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit

bb.ag:                                            ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.bt = load ptr, ptr %i.ah, align 8, !alias.scope !704, !nonnull !4, !noundef !4
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !704
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26.sink.split: ; preds = %bb.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit
  %.val11.sink = phi i32 [ %.val11, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit ], [ %.val13, %bb.ad ]
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val11.sink) #24
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit, %bb.ad
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val = load i32, ptr %1, align 8, !range !593, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val11 = load i32, ptr %i.bw, align 4          ; 2 uses
  %i.bx = icmp ne i32 %.val, 0
  %i.by = icmp ugt i32 %.val11, 1027
  %or.cond.i.i28 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond.i.i28, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit26

bb.ai:                                            ; preds = %.body19
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs5e9M2GLoJMY_8indexmap5serdeINtB5_15IndexMapVisitorINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBY_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEENtNtCs6nZeqdiIoCH_10serde_core2de7Visitor9visit_mapNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 4 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.525 = alloca [76 x i8], align 4          ; 7 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [76 x i8], align 4            ; 3 uses
  %.sroa.13 = alloca [76 x i8], align 4           ; 5 uses
  %i.h = alloca [56 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8, !alias.scope !705
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !705
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !705
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @35, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.525.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.525, i64 44
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %.sroa.4.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 44
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.c

.body12:                                          ; preds = %bb.k, %bb.l, %bb.b, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.b ], [ %i.y, %bb.l ], [ %i.x, %bb.k ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 4 dereferenceable(16) %1) #22
  resume { ptr, i32 } %.pn

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body12

bb.c:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit
  %.sroa.922.0 = phi i32 [ undef, %bb.a ], [ %.sroa.922.032, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !708
  invoke void @_RINvXs0_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_9MapAccessNtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 4 dereferenceable(16) %1)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !range !31, !noalias !712, !noundef !4 ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 -2, label %bb.d
    i64 -1, label %.thread29
  ]

.thread29:                                        ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !708
  br label %bb.o

bb.d:                                             ; preds = %.noexc
  %i.n = load i32, ptr %i.i, align 8, !noalias !712, !noundef !4
  br label %.thread

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !712
  store i64 %i.m, ptr %i.b, align 8, !noalias !712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !noalias !712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !712
  invoke void @_RINvXs0_NtCsioq3h7D9pfI_18serde_wasm_bindgen2deNtB6_9MapAccessNtNtCs6nZeqdiIoCH_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 4 dereferenceable(16) %1)
          to label %bb.g unwind label %bb.f, !noalias !716

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.b) #22
          to label %.body unwind label %bb.i, !noalias !716

bb.g:                                             ; preds = %bb.e
  %i.p = load i64, ptr %i.a, align 8, !range !3, !noalias !712, !noundef !4
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i32, ptr %i.r, align 8, !noalias !712, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !712
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %.noexc11 unwind label %.loopexit.split-lp

.noexc11:                                         ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !712
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !716
  unreachable

.loopexit:                                        ; preds = %bb.p, %bb.c, %bb.v
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.o, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef align 8 dereferenceable(56) %i.h) #22
          to label %.body12 unwind label %bb.x

.thread:                                          ; preds = %.noexc11, %bb.d
  %.sroa.922.0.ph = phi i32 [ %i.n, %bb.d ], [ %i.s, %.noexc11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !708
  br label %.loopexit34

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.525.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !712
  %.sroa.023.0.copyload = load i64, ptr %i.b, align 8, !noalias !712 ; 2 uses
  %.sroa.424.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx2.i.i, align 8, !noalias !712 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.525, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.525.0..sroa_idx, i64 44, i1 false), !noalias !712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %.sroa.13, ptr noundef nonnull align 4 dereferenceable(76) %.sroa.525, i64 76, i1 false), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !712
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.525)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !708
  %i.u = icmp eq i64 %.sroa.023.0.copyload, -2
  br i1 %i.u, label %.loopexit34, label %bb.o

.loopexit34:                                      ; preds = %bb.j, %.thread
  %.sroa.922.028 = phi i32 [ %.sroa.922.0.ph, %.thread ], [ %.sroa.424.0.copyload, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.922.028, ptr %i.v, align 8
  store i64 -1, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  invoke void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.w, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i unwind label %bb.k

bb.k:                                             ; preds = %.loopexit34
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtBG_6string6StringEIB1F_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEEECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h) #22
          to label %.body12 unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i: ; preds = %.loopexit34
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB1c_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB1j_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %.body12 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs8bMtf1JxJvX_9hashbrown5table9HashTablejEECsjNOSlFB5dgD_7ty_wasm.exit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs5e9M2GLoJMY_8indexmap6BucketINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtB7_6string6StringEIB1j_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit unwind label %bb.b

bb.o:                                             ; preds = %.thread29, %bb.j
  %.sroa.0.033 = phi i64 [ -1, %.thread29 ], [ %.sroa.023.0.copyload, %bb.j ] ; 2 uses
  %.sroa.922.032 = phi i32 [ %.sroa.922.0, %.thread29 ], [ %.sroa.424.0.copyload, %bb.j ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(76) %.sroa.13, i64 76, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %.not = icmp eq i64 %.sroa.0.033, -1
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.033, ptr %i.g, align 8
  store i32 %.sroa.922.032, ptr %.sroa.3.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.56..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs2_NtCs5e9M2GLoJMY_8indexmap3mapINtB5_8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIBO_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEE11insert_fullCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.s unwind label %.loopexit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i = load i32, ptr %i.ab, align 4, !alias.scope !718, !noundef !4 ; 2 uses
  %i.ac = icmp ugt i32 %.val4.i, 1027
  br i1 %i.ac, label %bb.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i

bb.r:                                             ; preds = %bb.q
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val4.i) #24, !noalias !718
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i: ; preds = %bb.r, %bb.q
  %.val.i = load i32, ptr %1, align 4, !range !593, !alias.scope !718, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i = load i32, ptr %i.ad, align 4, !alias.scope !718 ; 2 uses
  %i.ae = icmp ne i32 %.val.i, 0
  %i.af = icmp ugt i32 %.val1.i, 1027
  %or.cond.i5.i = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond.i5.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.ag = load i64, ptr %i.e, align 8, !range !3, !alias.scope !721, !noundef !4 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !724)
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.aj = load ptr, ptr %i.k, align 8, !alias.scope !736, !nonnull !4, !noundef !4
  %i.ak = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !736
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %bb.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit unwind label %.loopexit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %bb.u, %bb.t, %bb.s, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i17
  %.val1.i19.sink = phi i32 [ %.val1.i19, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i17 ], [ %.val1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i ]
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val1.i19.sink) #24, !noalias !4
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i17, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1f_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEEECsjNOSlFB5dgD_7ty_wasm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val4.i16 = load i32, ptr %i.am, align 4, !alias.scope !737, !noundef !4 ; 2 uses
  %i.an = icmp ugt i32 %.val4.i16, 1027
  br i1 %i.an, label %bb.w, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i17

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val4.i16) #24, !noalias !737
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i17

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsdjJ41tfNHOz_6js_sys8IntoIterECsjNOSlFB5dgD_7ty_wasm.exit.i17: ; preds = %bb.w, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapINtCs2Qp84xiUxLo_17ruff_ranged_value11RangedValueNtNtCscdodAO9FK5_5alloc6string6StringEIB1h_NtNtCsoTR8nlGN3X_18ty_python_semantic4lint5LevelEINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEECsjNOSlFB5dgD_7ty_wasm.exit
  %.val.i18 = load i32, ptr %1, align 4, !range !593, !alias.scope !737, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val1.i19 = load i32, ptr %i.ao, align 4, !alias.scope !737 ; 2 uses
  %i.ap = icmp ne i32 %.val.i18, 0
  %i.aq = icmp ugt i32 %.val1.i19, 1027
  %or.cond.i5.i20 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond.i5.i20, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit.sink.split, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de9MapAccessECsjNOSlFB5dgD_7ty_wasm.exit

bb.x:                                             ; preds = %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsi_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6nZeqdiIoCH_10serde_core2de15DeserializeSeed11deserializeNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvYNtNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12DeserializerNtNtCs6nZeqdiIoCH_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsjjJOMqlcxxG_5serde7private2de7content14ContentVisitorECsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, i32 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsj_NtNtNtCsjjJOMqlcxxG_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs6nZeqdiIoCH_10serde_core2de7Visitor9visit_mapINtNtB1c_5value15MapDeserializerINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB3U_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [56 x i8], align 8            ; 8 uses
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.46 = alloca [31 x i8], align 1           ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.9 = alloca [3 x i8], align 1             ; 7 uses
  %.sroa.13 = alloca [56 x i8], align 8           ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !740, !noundef !4
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load i32, ptr %i.i, align 8, !alias.scope !743, !noalias !746, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.val1.i = load i32, ptr %i.j, align 4, !alias.scope !748, !noalias !749, !noundef !4
  %narrow.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.val1.i, i32 %.val.i)
  %i.k = tail call i32 @llvm.umin.i32(i32 %narrow.i.i.i.i, i32 16384)
  %i.l = zext nneg i32 %i.k to i64
  br label %bb.e

.body18:                                          ; preds = %bb.t, %bb.d, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.p, %bb.d ], [ %i.az, %bb.t ]
  %.val13 = load i32, ptr %1, align 8, !range !593, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val14 = load i32, ptr %i.m, align 4           ; 2 uses
  %i.n = icmp ne i32 %.val13, 0
  %i.o = icmp ugt i32 %.val14, 1027
  %or.cond.i.i = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit

bb.c:                                             ; preds = %.body18
  call void @_RNvCsXBDNnD8Soy_12wasm_bindgen26___wbindgen_object_drop_ref(i32 noundef %.val14) #24
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs6nZeqdiIoCH_10serde_core2de5value15MapDeserializerINtNtNtNtB4_4iter8adapters3map3MapNtCsdjJ41tfNHOz_6js_sys9ArrayIterNvNtCsioq3h7D9pfI_18serde_wasm_bindgen2de12convert_pairENtNtB2H_5error5ErrorEECsjNOSlFB5dgD_7ty_wasm.exit

bb.d:                                             ; preds = %bb.u, %bb.g, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body18

bb.e:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjNOSlFB5dgD_7ty_wasm(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.3.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 64)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.d, align 8, !range !32, !noundef !4
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !667, !noundef !4 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %bb.f
  %i.v = load i64, ptr %i.u, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #21
          to label %bb.ac unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.x = icmp samesign ule i64 %.sroa.3.0.i, %i.t
  tail call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.t, ptr %i.f, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store i64 0, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.aa = load ptr, ptr %i.g, align 8, !alias.scope !750, !noalias !757, !noundef !4
  %.not.i.i.i50 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i50, label %.thread36, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
end_hunk_1
