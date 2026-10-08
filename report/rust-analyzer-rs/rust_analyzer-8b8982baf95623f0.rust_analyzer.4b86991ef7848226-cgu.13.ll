Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.13?download=true
inline.NumInlined: 4749
inline.NumDeleted: 2010
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection15diagnostics_for:bb.a
  br i1 %i.ak, label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit53, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = call noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs4sl5YdnrCxp_3vfs6FileIdECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4390)
  call void @llvm.experimental.noalias.scope.decl(metadata !4391)
  %i.ao = lshr i64 %i.an, 57
  %i.ap = trunc nuw nsw i64 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !4392, !noalias !4393, !noundef !4 ; 2 uses
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !4392, !noalias !4393, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = insertelement <16 x i8> poison, i8 %i.ap, i64 0
  %i.au = shufflevector <16 x i8> %i.at, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.9.0.i.i.i40 = phi i64 [ 0, %bb.f ], [ %i.bl, %bb.i ]
  %.pn.i.i41 = phi i64 [ %i.an, %bb.f ], [ %i.bm, %bb.i ]
  %.sroa.01.0.i.i.i42 = and i64 %.pn.i.i41, %i.ar ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.01.0.i.i.i42
  %.sroa.0.0.copyload.i24.i.i43 = load <16 x i8>, ptr %i.av, align 1, !noalias !4394 ; 2 uses
  %i.aw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i43, %i.au
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not.i.not30.i.i44 = icmp eq i16 %i.ax, 0
  br i1 %.not.i.not30.i.i44, label %._crit_edge.i.i48, label %.lr.ph.i.i45

.lr.ph.i.i45:                                     ; preds = %bb.g, %bb.h
  %.sroa.06.0.i31.i.i46 = phi i16 [ %i.bk, %bb.h ], [ %i.ax, %bb.g ] ; 3 uses
  %i.ay = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i46, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.01.0.i.i.i42, %i.az
  %i.bb = and i64 %i.ba, %i.ar
  %i.bc = sub nsw i64 0, %i.bb
  %i.bd = getelementptr inbounds [40 x i8], ptr %i.as, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -40
  %i.bf = call noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtCs4sl5YdnrCxp_3vfs6FileIdINtB2_10EquivalentBq_E10equivalentCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.be), !noalias !4395
  br i1 %i.bf, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1h_E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i49, label %bb.h, !prof !11

._crit_edge.i.i48:                                ; preds = %bb.h, %bb.g
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i43, splat (i8 -1)
  %i.bh = bitcast <16 x i1> %i.bg to i16
  %i.bi = icmp eq i16 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1h_E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i49, !prof !7

bb.h:                                             ; preds = %.lr.ph.i.i45
  %i.bj = add i16 %.sroa.06.0.i31.i.i46, -1
  %i.bk = and i16 %i.bj, %.sroa.06.0.i31.i.i46    ; 2 uses
  %.not.i.not.i.i47 = icmp eq i16 %i.bk, 0
  br i1 %.not.i.not.i.i47, label %._crit_edge.i.i48, label %.lr.ph.i.i45

bb.i:                                             ; preds = %._crit_edge.i.i48
  %i.bl = add i64 %.sroa.9.0.i.i.i40, 16          ; 2 uses
  %i.bm = add i64 %.sroa.01.0.i.i.i42, %i.bl
  br label %bb.g

_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1h_E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i49: ; preds = %._crit_edge.i.i48, %.lr.ph.i.i45
  %i.bn = phi ptr [ %i.bd, %.lr.ph.i.i45 ], [ null, %._crit_edge.i.i48 ] ; 2 uses
  %.not.i50 = icmp eq ptr %i.bn, null
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32
  %.sroa.0.0.i51 = select i1 %.not.i50, ptr null, ptr %i.bo
  br label %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit53

_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit53: ; preds = %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1h_E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i49
  %.sroa.0.1.i52 = phi ptr [ %.sroa.0.0.i51, %_RINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1h_E0ECs6u1mgJOKDyY_13rust_analyzer.exit.i49 ], [ null, %_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE3getBO_ECs6u1mgJOKDyY_13rust_analyzer.exit ]
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !noundef !4
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %i.bs
  call void @llvm.experimental.noalias.scope.decl(metadata !4396)
  call void @llvm.experimental.noalias.scope.decl(metadata !4397)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 1, ptr %i.bu, align 8, !alias.scope !4398, !noalias !4397
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %.sroa.0.1.i, ptr %.sroa.472.0..sroa_idx, align 8, !alias.scope !4398, !noalias !4397
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %.sroa.573.0..sroa_idx, align 8, !alias.scope !4398, !noalias !4397
  %.sroa.775.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %.sroa.775.0..sroa_idx, align 8, !alias.scope !4398, !noalias !4397
  %.sroa.977.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 1, ptr %.sroa.977.0..sroa_idx, align 8, !alias.scope !4398, !noalias !4397
  %.sroa.1078.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %.sroa.0.1.i52, ptr %.sroa.1078.0..sroa_idx, align 8, !alias.scope !4398, !noalias !4397
  %.sroa.1179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %.sroa.1179.0..sroa_idx, align 8, !alias.scope !4398, !noalias !4397
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !4398, !noalias !4397
  store i64 1, ptr %0, align 8, !alias.scope !4399, !noalias !4396
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bq, ptr %.sroa.463.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4396
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bt, ptr %.sroa.564.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4396
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.665.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4396
  %.sroa.767.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %.sroa.767.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4396
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %2, ptr %.sroa.868.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4396
  %.sroa.969.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %.sroa.969.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4396
  %.sroa.1070.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr null, ptr %.sroa.1070.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4396
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection16clear_native_for(ptr noalias nofree noundef align 8 dereferenceable(136) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !17, !alias.scope !4404, !noundef !4
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.n, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEECs6u1mgJOKDyY_13rust_analyzer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6removeBO_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !range !17, !alias.scope !4405, !noundef !4
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit3, label %bb.e

bb.e:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEECs6u1mgJOKDyY_13rust_analyzer.exit.i2 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEECs6u1mgJOKDyY_13rust_analyzer.exit.i2: ; preds = %bb.e
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit3

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit3: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEEECs6u1mgJOKDyY_13rust_analyzer.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEECs6u1mgJOKDyY_13rust_analyzer.exit.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = call noundef zeroext i1 @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs4sl5YdnrCxp_3vfs6FileIduNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB2_20DiagnosticCollection20add_check_diagnostic(ptr noalias nofree noundef align 8 dereferenceable(136) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3, i32 noundef %4, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(312) %5, ptr noalias noundef align 8 %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [312 x i8], align 8               ; 5 uses
  %i.j = alloca [560 x i8], align 8               ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [16 x i8], align 4                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = icmp ult i64 %i.o, 288230376151711744
  tail call void @llvm.assume(i1 %i.p)
  %.not = icmp ugt i64 %i.o, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = add i64 %1, 1
  invoke void @_RINvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticE11resize_withNvYBF_NtNtCshzWfHUSfYae_4core7default7Default7defaultEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.q)
          to label %._crit_edge220 unwind label %bb.e

._crit_edge220:                                   ; preds = %bb.b
  %.pre = load i64, ptr %i.n, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge220, %bb.a
  %7 = phi i64 [ %.pre, %._crit_edge220 ], [ %i.o, %bb.a ] ; 2 uses
  %i.r = icmp ult i64 %1, %7
  br i1 %i.r, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.bc, %bb.e
  %.sroa.05.1.lpad-body = phi i1 [ %.sroa.05.1, %bb.e ], [ false, %bb.bc ]
  %.sroa.04.1.lpad-body = phi i1 [ %.sroa.04.1, %bb.e ], [ %.not13, %bb.bc ]
  %eh.lpad-body53 = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.ha, %bb.bc ] ; 2 uses
  %i.s = icmp ne ptr %6, null
  %or.cond = and i1 %i.s, %.sroa.04.1.lpad-body
  br i1 %or.cond, label %bb.cn, label %bb.cm

bb.e:                                             ; preds = %bb.m, %bb.j, %bb.ck, %bb.u, %bb.o, %bb.g, %bb.b
  %.sroa.05.1 = phi i1 [ false, %bb.ck ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.g ], [ true, %bb.u ], [ true, %bb.b ], [ true, %bb.j ]
  %.sroa.04.1 = phi i1 [ %.not13, %bb.ck ], [ true, %bb.o ], [ true, %bb.m ], [ true, %bb.g ], [ true, %bb.u ], [ true, %bb.b ], [ true, %bb.j ]
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.x = load i64, ptr %3, align 8, !range !25, !noundef !4 ; 3 uses
  %.not10 = icmp eq i64 %i.x, -2                  ; 2 uses
  br i1 %.not10, label %bb.n, label %bb.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #39
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.bl, %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4463)
  %.not.i = icmp eq i64 %i.x, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3)
          to label %_RNvXsD_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_16PackageSpecifierNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit unwind label %bb.e

bb.k:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !4463, !noalias !4462, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = atomicrmw add ptr %i.z, i64 1 monotonic, align 8, !noalias !4464
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.z, ptr %i.ac, align 8, !alias.scope !4462, !noalias !4463
  store i64 -1, ptr %i.h, align 8, !alias.scope !4462, !noalias !4463
  br label %_RNvXsD_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_16PackageSpecifierNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvNtCscAsMj0W7j8b_3std7process5abort() #39
          to label %.noexc24 unwind label %bb.e

.noexc24:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.f
  store i64 -2, ptr %i.m, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvXsD_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_16PackageSpecifierNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierENtNtB1F_11diagnostics25PackageFlycheckDiagnosticNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryB1F_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %bb.p unwind label %bb.e

_RNvXsD_NtCs6u1mgJOKDyY_13rust_analyzer8flycheckNtB5_16PackageSpecifierNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.l, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.o

bb.p:                                             ; preds = %bb.o
  %i.ad = load i64, ptr %i.g, align 8, !range !26, !noundef !4 ; 2 uses
  %.not11 = icmp eq i64 %i.ad, -3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  br i1 %.not11, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %.sroa.5143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.5143.0.copyload = load ptr, ptr %.sroa.5143.0..sroa_idx, align 8
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.6144.0.copyload = load ptr, ptr %.sroa.6144.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.7145.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.7145.0.copyload = load i64, ptr %.sroa.7145.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !4465)
  %.val.i.i = load ptr, ptr %.sroa.6144.0.copyload, align 8, !alias.scope !4465, !noalias !4466, !nonnull !4, !noundef !4 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.6144.0.copyload, i64 8
  %.val3.i.i = load i64, ptr %i.ag, align 8, !alias.scope !4465, !noalias !4466, !noundef !4 ; 4 uses
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %.sroa.7145.0.copyload ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.ah, align 1, !noalias !4467
  %i.ai = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.aj = bitcast <16 x i1> %i.ai to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !12

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.r
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.r ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.aj, %bb.r ], [ %i.ba, %.lr.ph.i.i.i ]
  %i.ak = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.al = zext nneg i16 %i.ak to i64
  %i.am = add i64 %.sroa.0.0.lcssa.i.i.i, %i.al
  %i.an = and i64 %i.am, %.val3.i.i               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !4468, !noundef !4 ; 2 uses
  %i.aq = icmp sgt i8 %i.ap, -1
  br i1 %i.aq, label %bb.s, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierENtNtB1v_11diagnostics25PackageFlycheckDiagnosticEE14insert_no_growB1v_.exit.i, !prof !7

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !4468
  %i.ar = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.as, 0
  %i.at = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.as, i1 true)
  %i.au = zext nneg i16 %i.at to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.au
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !4468
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierENtNtB1v_11diagnostics25PackageFlycheckDiagnosticEE14insert_no_growB1v_.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.r ]
  %i.av = phi i64 [ %i.aw, %.lr.ph.i.i.i ], [ 0, %bb.r ]
  %i.aw = add i64 %i.av, 16                       ; 2 uses
  %i.ax = add i64 %i.aw, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.ax, %.val3.i.i    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.ay, align 1, !noalias !4467
  %i.az = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ba, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !13

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierENtNtB1v_11diagnostics25PackageFlycheckDiagnosticEE14insert_no_growB1v_.exit.i: ; preds = %bb.s, %._crit_edge.i.i.i
  %i.bb = phi i8 [ %.pre.i.i, %bb.s ], [ %i.ap, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.au, %bb.s ], [ %i.an, %._crit_edge.i.i.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.0.i5.i.i.i
  %i.bd = lshr i64 %.sroa.7145.0.copyload, 57
  %i.be = trunc nuw nsw i64 %i.bd to i8           ; 2 uses
  %i.bf = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.bg = and i64 %i.bf, %.val3.i.i
  store i8 %i.be, ptr %i.bc, align 1, !noalias !4468
  %i.bh = getelementptr i8, ptr %.val.i.i, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  store i8 %i.be, ptr %i.bi, align 1, !noalias !4468
  %i.bj = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.bk = getelementptr inbounds [64 x i8], ptr %.val.i.i, i64 %i.bj ; 6 uses
  %i.bl = and i8 %i.bb, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.6144.0.copyload, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bk, i64 -64
  store i64 %i.ad, ptr %i.bo, align 8, !noalias !4469
  %.sroa.06.i.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bk, i64 -56
  store ptr %i.af, ptr %.sroa.06.i.sroa.4.0..sroa_idx, align 8, !noalias !4469
  %.sroa.06.i.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bk, i64 -48
  store ptr %.sroa.5143.0.copyload, ptr %.sroa.06.i.sroa.5.0..sroa_idx, align 8, !noalias !4469
  %.sroa.06.i.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.bk, i64 -40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.i.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !4469
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.bk, i64 -8
  store i64 %2, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4469
  %i.bp = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !4465, !noalias !4466
  %i.bq = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0
  %i.br = sub <2 x i64> %i.bp, %i.bq
  store <2 x i64> %i.br, ptr %i.bn, align 8, !alias.scope !4465, !noalias !4466
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierENtNtB1v_11diagnostics25PackageFlycheckDiagnosticEE14insert_no_growB1v_.exit.i
  %.pn.i = phi ptr [ %i.bk, %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs6u1mgJOKDyY_13rust_analyzer8flycheck16PackageSpecifierENtNtB1v_11diagnostics25PackageFlycheckDiagnosticEE14insert_no_growB1v_.exit.i ], [ %i.af, %bb.q ] ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4
  %i.bu = icmp ugt i64 %i.bt, %2
  br i1 %i.bu, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.pn.i, i64 -40
  store i64 %2, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i, i32 noundef %4)
          to label %bb.v unwind label %bb.e

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %.not12 = icmp eq ptr %i.bv, null
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %.not12, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.4150.0.copyload = load i64, ptr %i.bw, align 8 ; 2 uses
  %.sroa.5151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.5151.0.copyload = load ptr, ptr %.sroa.5151.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bx = ptrtoint ptr %.sroa.5151.0.copyload to i64
  %.sroa.8120.16.extract.trunc = trunc i64 %i.bx to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !4470)
  %.val.i.i27 = load ptr, ptr %i.bv, align 8, !alias.scope !4470, !noalias !4471, !nonnull !4, !noundef !4 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.val3.i.i28 = load i64, ptr %i.by, align 8, !alias.scope !4470, !noalias !4471, !noundef !4 ; 4 uses
  %.sroa.0.07.i.i.i29 = and i64 %.val3.i.i28, %.sroa.4150.0.copyload ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.val.i.i27, i64 %.sroa.0.07.i.i.i29
  %.sroa.0.0.copyload.i68.i.i.i30 = load <16 x i8>, ptr %i.bz, align 1, !noalias !4472
  %i.ca = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i30, zeroinitializer
  %i.cb = bitcast <16 x i1> %i.ca to i16          ; 2 uses
  %.not.i9.i.i.i31 = icmp eq i16 %i.cb, 0
  br i1 %.not.i9.i.i.i31, label %.lr.ph.i.i.i42, label %._crit_edge.i.i.i32, !prof !12

._crit_edge.i.i.i32:                              ; preds = %.lr.ph.i.i.i42, %bb.w
  %.sroa.0.0.lcssa.i.i.i33 = phi i64 [ %.sroa.0.07.i.i.i29, %bb.w ], [ %.sroa.0.0.i.i.i44, %.lr.ph.i.i.i42 ]
  %.lcssa.i.i.i34 = phi i16 [ %i.cb, %bb.w ], [ %i.cs, %.lr.ph.i.i.i42 ]
  %i.cc = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i34, i1 true)
  %i.cd = zext nneg i16 %i.cc to i64
  %i.ce = add i64 %.sroa.0.0.lcssa.i.i.i33, %i.cd
  %i.cf = and i64 %i.ce, %.val3.i.i28             ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i.i27, i64 %i.cf
end_hunk_0
