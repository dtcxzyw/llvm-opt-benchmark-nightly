Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.06?download=true
inline.NumInlined: 5464
inline.NumDeleted: 2791
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainIB12_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB2f_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB46_20DiagnosticCollection15diagnostics_for0EIB1r_B1O_B3W_NCB43_s_0EEINtB1t_7FlattenINtNtB6_10filter_map9FilterMapIB1r_INtNtNtBa_5slice4iter4IterNtB46_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1R_6OptionNtNtB48_8flycheck16PackageSpecifierENtB46_25PackageFlycheckDiagnosticENCB43_s0_0ENCB43_s1_0EEEENtNtNtB8_6traits8iterator8Iterator4nextB48_:bb.a
bb.bb:                                            ; preds = %bb.bl, %bb.bc
  %.pn.i = phi { ptr, i32 } [ %i.fe, %bb.bl ], [ %i.er, %bb.bc ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated12enumerations13DiagnosticTagEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #44
          to label %bb.av unwind label %bb.bm, !noalias !13382

bb.bc:                                            ; preds = %bb.ay
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.bd:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !13384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13384
  br label %bb.ba

bb.be:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13384
  call void @llvm.experimental.noalias.scope.decl(metadata !13391)
  call void @llvm.experimental.noalias.scope.decl(metadata !13392)
  %i.es = xor i64 %i.eq, -9223372036854775808
  %i.et = icmp slt i64 %i.eq, 0
  %i.eu = select i1 %i.et, i64 %i.es, i64 5
  switch i64 %i.eu, label %bb.bf [
    i64 0, label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i
    i64 1, label %bb.bg
    i64 2, label %bb.bh
    i64 3, label %bb.bi
    i64 4, label %bb.bj
    i64 5, label %bb.bk
  ]

bb.bf:                                            ; preds = %bb.be
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.ew = load i8, ptr %i.ev, align 8, !range !34, !alias.scope !13393, !noalias !13394, !noundef !7
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.ew, ptr %i.ex, align 8, !alias.scope !13391, !noalias !13395
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.bh:                                            ; preds = %bb.be
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !alias.scope !13396, !noalias !13382
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.bi:                                            ; preds = %bb.be
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fa)
          to label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i unwind label %bb.bl, !noalias !13382

bb.bj:                                            ; preds = %bb.be
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 224
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke void @_RNvXsb_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fc)
          to label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i unwind label %bb.bl, !noalias !13382

bb.bk:                                            ; preds = %bb.be
  invoke void @_RNvXNtCs3gqD4ldeioo_8indexmap3mapINtB2_8IndexMapNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ep)
          to label %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i unwind label %bb.bl, !noalias !13382

._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i: ; preds = %bb.bk
  %.sroa.01.0.copyload2.pre.i = load i64, ptr %i.a, align 8, !noalias !13384
  br label %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures28DiagnosticRelatedInformationEEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #44
          to label %bb.bb unwind label %bb.bm, !noalias !13382

_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i: ; preds = %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.be
  %.sroa.01.0.copyload2.i = phi i64 [ %.sroa.01.0.copyload2.pre.i, %._RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit_crit_edge.i ], [ -9223372036854775805, %bb.bi ], [ -9223372036854775808, %bb.be ], [ -9223372036854775806, %bb.bh ], [ -9223372036854775807, %bb.bg ], [ -9223372036854775804, %bb.bj ]
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.0..sroa_idx3.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13384
  br label %_RNvXsvT_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_10DiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit

bb.bm:                                            ; preds = %bb.bl, %bb.bb, %bb.av, %bb.an, %bb.ai, %bb.ac
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #45, !noalias !13382
  unreachable

bb.bn:                                            ; preds = %bb.ac
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.i

_RNvXsvT_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_10DiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit: ; preds = %bb.ba, %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload2.i, %_RNvXs3_NtCs8yjYO7b73r2_10serde_json5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit.i ], [ -1, %bb.ba ]
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i2.i.ph, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !alias.scope !13384
  %.sroa.0.192..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.192..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !13383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(88) %i.m, i64 88, i1 false), !noalias !13383
  %.sroa.0.88..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.88..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !13383
  %.sroa.0.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.112..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !noalias !13383
  %.sroa.0.144..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.144..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !13383
  %.sroa.0.168..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.168..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !13383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !13384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !13384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !13384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13384
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.0, i64 216, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 %.sroa.01.0.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i, i64 64, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 %i.cq, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.bo

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator4nextB3L_.exit: ; preds = %.sink.split.i7.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_10filter_map9FilterMapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2k_8flycheck16PackageSpecifierENtB2i_25PackageFlycheckDiagnosticENCNvMB2i_NtB2i_20DiagnosticCollection15diagnostics_fors0_0ENCB5U_s1_0EEINtB5_8FuseImplBY_E4nextB2k_.exit.thread.i.i.i.i.i, %bb.f
  store i64 -2, ptr %0, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator4nextB3L_.exit, %_RNvXsvT_NtNtCs1lnireelaHN_13gen_lsp_types9generated10structuresNtB6_10DiagnosticNtNtCshzWfHUSfYae_4core5clone5Clone5clone.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_5chain5ChainIB12_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB2f_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB46_20DiagnosticCollection15diagnostics_for0EIB1r_B1O_B3W_NCB43_s_0EEINtB1t_7FlattenINtNtB6_10filter_map9FilterMapIB1r_INtNtNtBa_5slice4iter4IterNtB46_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1R_6OptionNtNtB48_8flycheck16PackageSpecifierENtB46_25PackageFlycheckDiagnosticENCB43_s0_0ENCB43_s1_0EEEENtNtNtB8_6traits8iterator8Iterator9size_hintB48_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(240) %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca i64, align 8                ; 5 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13447)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !10, !alias.scope !13447, !noalias !13446, !noundef !7
  %.not.i = icmp eq i64 %i.c, -1
  %i.d = load i64, ptr %1, align 8, !range !15, !alias.scope !13447, !noalias !13446, !noundef !7 ; 3 uses
  %.not7.i = icmp eq i64 %i.d, 2                  ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.p, label %bb.k

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13451)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !13452, !noalias !13453, !noundef !7 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !13454, !noalias !13455, !nonnull !7, !noundef !7
  %i.h = ptrtoint ptr %.val3.i.i.i.i to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i: ; preds = %bb.e, %bb.d
  %.sroa.7.0.i.i.i = phi i64 [ %i.k, %bb.e ], [ 0, %bb.d ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !13452, !noalias !13453, !noundef !7 ; 2 uses
  %.not53.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not53.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val3.i61.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !13456, !noalias !13457, !nonnull !7, !noundef !7
  %i.o = ptrtoint ptr %.val3.i61.i.i.i to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i: ; preds = %bb.f, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
  %.sroa.8.0.i.i.i = phi i64 [ %i.r, %bb.f ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i ]
  %i.s = add nuw nsw i64 %.sroa.8.0.i.i.i, %.sroa.7.0.i.i.i ; 3 uses
  %i.t = trunc nuw i64 %i.d to i1
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !13458, !noalias !13459, !noundef !7
  %.not.i.i.i.i.i.i = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !13458, !noalias !13459
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %.val.i.i.i.i.i.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !13458, !noalias !13459, !noundef !7
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.z, null
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i62.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !13458, !noalias !13459
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %.val.i62.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.u, align 8, !alias.scope !13458, !noalias !13459, !noundef !7 ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val61.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !13458, !noalias !13459, !nonnull !7
  %i.ad = icmp eq ptr %.val61.i.i.i.i.i.i, %i.ab
  %or.cond.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.ad
  %2 = add i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i
  %i.ae = or i64 %2, %.sroa.7.0.i.i.i.i.i.i
  %i.af = icmp eq i64 %i.ae, 0
  %or.cond59.i.i.i = select i1 %or.cond.i.i.i.i.i.i, i1 %i.af, i1 false
  br i1 %or.cond59.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %i.s, ptr %0, align 8, !alias.scope !13453, !noalias !13452
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i

bb.i:                                             ; preds = %bb.g, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i
  store i64 %i.s, ptr %0, align 8, !alias.scope !13453, !noalias !13452
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ag, align 8, !alias.scope !13453, !noalias !13452
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i: ; preds = %bb.i, %bb.h
  %.sink78.i.i.i = phi i64 [ 16, %bb.i ], [ 8, %bb.h ]
  %.sink.i.i.i = phi i64 [ %i.s, %bb.i ], [ 0, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.sink78.i.i.i
  store i64 %.sink.i.i.i, ptr %i.ah, align 8, !alias.scope !13453, !noalias !13452
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

bb.j:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !13446, !noalias !13447
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.ai, align 8, !alias.scope !13446, !noalias !13447
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.aj, align 8, !alias.scope !13446, !noalias !13447
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

bb.k:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13460
  call fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1O_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3F_20DiagnosticCollection15diagnostics_for0EIB10_B1n_B3v_NCB3C_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3H_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #46, !noalias !13446
  %i.ak = load i64, ptr %i.a, align 8, !noalias !13460, !noundef !7
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !8, !noalias !13460, !noundef !7
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !13460 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13460
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13464)
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !13465, !noalias !13466, !noundef !7 ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i10.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i.i.i11.i = load ptr, ptr %i.ar, align 8, !alias.scope !13467, !noalias !13468, !nonnull !7, !noundef !7
  %i.as = ptrtoint ptr %.val3.i.i.i11.i to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub nuw i64 %i.as, %i.at
  %i.av = udiv exact i64 %i.au, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i: ; preds = %bb.l, %bb.k
  %.sroa.7.0.i.i13.i = phi i64 [ %i.av, %bb.l ], [ 0, %bb.k ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !13465, !noalias !13466, !noundef !7 ; 2 uses
  %.not53.i.i14.i = icmp eq ptr %i.ax, null
  br i1 %.not53.i.i14.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val3.i61.i.i15.i = load ptr, ptr %i.ay, align 8, !alias.scope !13469, !noalias !13470, !nonnull !7, !noundef !7
  %i.az = ptrtoint ptr %.val3.i61.i.i15.i to i64
  %i.ba = ptrtoint ptr %i.ax to i64
  %i.bb = sub nuw i64 %i.az, %i.ba
  %i.bc = udiv exact i64 %i.bb, 312
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i: ; preds = %bb.m, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i
  %.sroa.8.0.i.i17.i = phi i64 [ %i.bc, %bb.m ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i12.i ]
  %i.bd = add nuw nsw i64 %.sroa.8.0.i.i17.i, %.sroa.7.0.i.i13.i ; 2 uses
  %i.be = trunc nuw i64 %i.d to i1
  br i1 %i.be, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !13471, !noalias !13472, !noundef !7
  %.not.i.i.i.i.i20.i = icmp eq ptr %i.bh, null
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i.i21.i = load i64, ptr %i.bi, align 8, !alias.scope !13471, !noalias !13472
  %.sroa.7.0.i.i.i.i.i22.i = select i1 %.not.i.i.i.i.i20.i, i64 0, i64 %.val.i.i.i.i.i.i21.i ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !13471, !noalias !13472, !noundef !7
  %.not53.i.i.i.i.i23.i = icmp eq ptr %i.bk, null
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i62.i.i.i.i.i24.i = load i64, ptr %i.bl, align 8, !alias.scope !13471, !noalias !13472
  %.sroa.8.0.i.i.i.i.i25.i = select i1 %.not53.i.i.i.i.i23.i, i64 0, i64 %.val.i62.i.i.i.i.i24.i
  %i.bm = load ptr, ptr %i.bf, align 8, !alias.scope !13471, !noalias !13472, !noundef !7 ; 2 uses
  %.not54.i.i.i.i.i26.i = icmp eq ptr %i.bm, null
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val61.i.i.i.i.i27.i = load ptr, ptr %i.bn, align 8, !alias.scope !13471, !noalias !13472, !nonnull !7
  %i.bo = icmp eq ptr %.val61.i.i.i.i.i27.i, %i.bm
  %or.cond.i.i.i.i.i28.i = select i1 %.not54.i.i.i.i.i26.i, i1 true, i1 %i.bo
  %3 = add i64 %.sroa.8.0.i.i.i.i.i25.i, %.sroa.7.0.i.i.i.i.i22.i
  %i.bp = or i64 %3, %.sroa.7.0.i.i.i.i.i22.i
  %i.bq = icmp eq i64 %i.bp, 0
  %or.cond59.i.i29.i = select i1 %or.cond.i.i.i.i.i28.i, i1 %i.bq, i1 false
  br i1 %or.cond59.i.i29.i, label %bb.o, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i

bb.o:                                             ; preds = %bb.n, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtB5_5slice4iter4IterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i16.i
  store i64 1, ptr %.sroa.5.i, align 8, !alias.scope !13473, !noalias !13474
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i: ; preds = %bb.o, %bb.n
  %.sink78.i.i18.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.o ], [ %.sroa.5.i, %bb.n ]
  %.sink.i.i19.i = phi i64 [ %i.bd, %bb.o ], [ 0, %bb.n ]
  store i64 %.sink.i.i19.i, ptr %.sink78.i.i18.sroa.phi.i, align 8, !alias.scope !13473, !noalias !13474
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load i64, ptr %.sroa.5.i, align 8, !range !8, !noalias !13460, !noundef !7
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8, !noalias !13460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.br = tail call i64 @llvm.uadd.sat.i64(i64 %i.ak, i64 %i.bd)
  %i.bs = and i64 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, %i.am
  %or.cond.not.i = icmp ne i64 %i.bs, 0           ; 2 uses
  %i.bt = add i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i, %i.ao ; 2 uses
  %i.bu = icmp uge i64 %i.bt, %i.ao
  %.sroa.46.0.i = select i1 %or.cond.not.i, i64 %i.bt, i64 undef
  %narrow.i = select i1 %or.cond.not.i, i1 %i.bu, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %i.br, ptr %0, align 8, !alias.scope !13446, !noalias !13447
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.bv, align 8, !alias.scope !13446, !noalias !13447
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0.i, ptr %i.bw, align 8, !alias.scope !13446, !noalias !13447
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

bb.p:                                             ; preds = %bb.b
  tail call fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1O_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3F_20DiagnosticCollection15diagnostics_for0EIB10_B1n_B3v_NCB3C_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3H_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b) #46
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtB6_7flatten7FlatMapINtNtBa_6option8IntoIterRTjINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures10DiagnosticEEERB1S_NCNvMNtCs6u1mgJOKDyY_13rust_analyzer11diagnosticsNtB3J_20DiagnosticCollection15diagnostics_for0EIB14_B1r_B3z_NCB3G_s_0EEINtB16_7FlattenINtNtB6_10filter_map9FilterMapIB14_INtNtNtBa_5slice4iter4IterNtB3J_27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtB1u_6OptionNtNtB3L_8flycheck16PackageSpecifierENtB3J_25PackageFlycheckDiagnosticENCB3G_s0_0ENCB3G_s1_0EEENtNtNtB8_6traits8iterator8Iterator9size_hintB3L_.exit: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit.i, %bb.j, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs6u1mgJOKDyY_13rust_analyzer11diagnostics27WorkspaceFlycheckDiagnosticEINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map6ValuesINtNtBb_6option6OptionNtNtB2g_8flycheck16PackageSpecifierENtB2e_25PackageFlycheckDiagnosticENCNvMB2e_NtB2e_20DiagnosticCollection15diagnostics_fors0_0ENCB5Q_s1_0EENtNtNtB9_6traits8iterator8Iterator9size_hintB2g_.exit30.i, %bb.p
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2y_15CargoTargetSpec13runnable_args0EENtNtNtB8_6traits8iterator8Iterator4nextB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13480)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13480
  store ptr %i.c, ptr %i.b, align 8, !noalias !13482
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !13483, !noalias !13484, !nonnull !7, !noundef !7 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !13483, !noalias !13484 ; 2 uses
  %i.f = icmp eq ptr %.promoted.i.i, %i.e
  br i1 %i.f, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.h, %bb.b ], [ %.promoted.i.i, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !alias.scope !13483, !noalias !13484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13482
  store ptr %i.g, ptr %i.a, align 8, !noalias !13482, !captures !53
  %i.i = call noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtBW_15CargoTargetSpec13runnable_args0INtB7_5FnMutTRRNtNtCsbSS6DM8SDEO_5alloc6string6StringEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !13481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13482
  br i1 %i.i, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = icmp eq ptr %i.h, %i.e
  br i1 %i.j, label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread, label %.lr.ph.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13480
  br label %bb.d

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13480
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  br label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit.thread, %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2d_15CargoTargetSpec13runnable_args0ENtNtNtB9_6traits8iterator8Iterator4nextB2f_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer11target_specNtB2y_15CargoTargetSpec13runnable_args0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2A_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  store i64 0, ptr %0, align 8, !alias.scope !13487
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13487
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13487
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs6u1mgJOKDyY_13rust_analyzer6config10SnippetDefEEENtNtNtB8_6traits8iterator8Iterator9size_hintB2E_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 160                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !13490
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13490
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13490
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCs8yjYO7b73r2_10serde_json5value5ValueEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 104                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !13493
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13493
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13493
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENtNtNtB8_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((8, 12)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !alias.scope !13499, !nonnull !7, !noundef !7 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !13499, !nonnull !7, !noundef !7
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.e, ptr %1, align 8, !alias.scope !13499
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(12) %i.f, i64 12, i1 false)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !13500, !noalias !13501, !nonnull !7, !noundef !7
  store ptr %i.g, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtCs9R0CJ7nmiec_5paths10AbsPathBufEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !13504
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !13504
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !13504
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCsbSS6DM8SDEO_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
end_hunk_0
