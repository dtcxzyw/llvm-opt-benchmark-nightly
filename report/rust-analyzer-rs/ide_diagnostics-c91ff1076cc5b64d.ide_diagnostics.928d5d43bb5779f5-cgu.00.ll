Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_diagnostics-c91ff1076cc5b64d.ide_diagnostics.928d5d43bb5779f5-cgu.00?download=true
inline.NumInlined: 2826
inline.NumDeleted: 1639
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB2c_6option8IntoIterB11_EINtNtB28_10filter_map9FilterMapINtNtB28_7flatten7FlatMapIB2W_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB28_6copied6CopiedINtNtNtB2c_5slice4iter4IterNtB4V_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB7g_4Type24type_and_const_arguments0ENCB79_s_0EEE9from_iterCscA5P7HRgTCP_15ide_diagnostics:bb.a
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.am = load i8, ptr %i.c, align 8, !range !18, !noalias !4337, !noundef !7
  %.not.i.i = icmp eq i8 %i.am, -1
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4337
  %i.an = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4338, !noalias !4339, !noundef !7 ; 4 uses
  %i.ao = icmp ult i64 %i.an, 384307168202282326
  call void @llvm.assume(i1 %i.ao)
  %i.ap = load i64, ptr %i.i, align 8, !range !13, !alias.scope !4338, !noalias !4339, !noundef !7
  %i.aq = icmp eq i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.y, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4337
  call void @llvm.experimental.noalias.scope.decl(metadata !4340)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !4341)
  %i.as = load i8, ptr %i.ar, align 8, !range !24, !alias.scope !4342, !noalias !4338, !noundef !7 ; 3 uses
  %i.at = icmp eq i8 %i.as, -2
  br i1 %i.at, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !4343)
  call void @llvm.experimental.noalias.scope.decl(metadata !4344)
  call void @llvm.experimental.noalias.scope.decl(metadata !4345)
  %i.au = icmp eq i8 %i.as, -1
  br i1 %i.au, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !4346)
  call void @llvm.experimental.noalias.scope.decl(metadata !4347)
  %switch.i.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.as, 25
  br i1 %switch.i.i.i.i.i.i.i.i.i, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4348)
  call void @llvm.experimental.noalias.scope.decl(metadata !4349)
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !4350, !noalias !4338, !nonnull !7, !noundef !7
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !4351
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.x, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.av) #23
          to label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit unwind label %bb.af

bb.y:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4337
  invoke fastcc void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtB6_10filter_map9FilterMapINtNtB6_7flatten7FlatMapIB10_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB6_6copied6CopiedINtNtNtBa_5slice4iter4IterNtB3p_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB5I_4Type24type_and_const_arguments0ENCB5B_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.e)
          to label %bb.ac unwind label %bb.z

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.ad, %bb.ac, %bb.s
  %i.az = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4338, !noalias !4339, !nonnull !7, !noundef !7
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bb = add nuw nsw i64 %i.an, 1
  store i64 %i.bb, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4338, !noalias !4339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4337
  br label %bb.p

bb.z:                                             ; preds = %bb.ad, %bb.y
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4352)
  call void @llvm.experimental.noalias.scope.decl(metadata !4353)
  %i.bd = load i8, ptr %i.b, align 8, !range !19, !alias.scope !4354, !noalias !4337, !noundef !7
  %switch.i.i.i.i = icmp samesign ult i8 %i.bd, 25
  br i1 %switch.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4355)
  call void @llvm.experimental.noalias.scope.decl(metadata !4356)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !4357, !noalias !4337, !nonnull !7, !noundef !7
  %i.bg = atomicrmw sub ptr %i.bf, i64 1 release, align 8, !noalias !4357
  %i.bh = icmp eq i64 %i.bg, 1
  br i1 %i.bh, label %bb.ab, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be) #23
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.ae

bb.ac:                                            ; preds = %bb.y
  %i.bi = load i64, ptr %i.a, align 8, !noalias !4337, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4337
  %i.bj = call i64 @llvm.uadd.sat.i64(i64 %i.bi, i64 1) ; 2 uses
  %i.bk = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4358, !noalias !4339, !noundef !7 ; 2 uses
  %i.bl = load i64, ptr %i.i, align 8, !range !13, !alias.scope !4358, !noalias !4339, !noundef !7
  %i.bm = sub i64 %i.bl, %i.bk
  %i.bn = icmp ugt i64 %i.bj, %i.bm
  br i1 %i.bn, label %bb.ad, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i, !prof !12

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bk, i64 noundef range(i64 1, 0) %i.bj, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrE7reserveCscA5P7HRgTCP_15ide_diagnostics.exit.i.i unwind label %bb.z

bb.ae:                                            ; preds = %bb.ab, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.af:                                            ; preds = %bb.x
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i, %bb.af
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.af ], [ %.pn.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str7SmolStrECscA5P7HRgTCP_15ide_diagnostics.exit.i.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %bb.ah unwind label %bb.ag

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtB1T_6option8IntoIterBR_EINtNtB1P_10filter_map9FilterMapINtNtB1P_7flatten7FlatMapIB2D_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtB1P_6copied6CopiedINtNtNtB1T_5slice4iter4IterNtB4B_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6W_4Type24type_and_const_arguments0ENCB6P_s_0EEE11spec_extendCscA5P7HRgTCP_15ide_diagnostics.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapIB1e_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtBG_6copied6CopiedINtNtNtB4_5slice4iter4IterNtB3D_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB5W_4Type24type_and_const_arguments0ENCB5P_s_0EEECscA5P7HRgTCP_15ide_diagnostics.exit

bb.ag:                                            ; preds = %bb.l, %bb.ai, %.body
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ah:                                            ; preds = %.body, %bb.ai
  %.pn9 = phi { ptr, i32 } [ %.pn.ph, %bb.ai ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn9

bb.ai:                                            ; preds = %bb.b, %bb.l, %bb.j, %bb.k
  %.pn.ph = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.v, %bb.l ], [ %i.v, %bb.j ], [ %i.v, %bb.k ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtB4_6option8IntoIterNtCs42xZ1oUXfIG_8smol_str7SmolStrEINtNtBG_10filter_map9FilterMapINtNtBG_7flatten7FlatMapIB1e_TNtCsileJQcQObtj_7hir_def5AdtIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg11GenericArgsEEINtNtBG_6copied6CopiedINtNtNtB4_5slice4iter4IterNtB3D_10GenericArgEENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB5W_4Type24type_and_const_arguments0ENCB5P_s_0EEECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(112) %1) #25
          to label %bb.ah unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB2k_4take4TakeINtNtB2k_7flatten7FlattenINtNtB2o_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvB13_18syntax_diagnostics0EE9from_iterB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [12 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [112 x i8], align 8               ; 4 uses
  %i.l = alloca [112 x i8], align 8               ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [112 x i8], align 8               ; 4 uses
  %i.o = alloca [112 x i8], align 8               ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator4nextB2Z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %i.o, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #31
  %i.q = load i64, ptr %i.o, align 8, !range !8, !noundef !7
  %.not = icmp eq i64 %i.q, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !4389, !noalias !4390, !noundef !7 ; 3 uses
  %i.t = icmp eq i64 %i.s, 0                      ; 2 uses
  br i1 %i.t, label %bb.f, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i: ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !4391, !noalias !4392, !noundef !7 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !4391, !noalias !4392, !nonnull !7
  %i.x = ptrtoint ptr %.val3.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = lshr exact i64 %i.z, 5
  %.sroa.7.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !4391, !noalias !4392, !noundef !7 ; 2 uses
  %.not53.i.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3.i61.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !4391, !noalias !4392, !nonnull !7
  %i.ae = ptrtoint ptr %.val3.i61.i.i.i.i to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = lshr exact i64 %i.ag, 5
  %.sroa.8.0.i.i.i.i = select i1 %.not53.i.i.i.i, i64 0, i64 %i.ah
  %i.ai = add nuw nsw i64 %.sroa.8.0.i.i.i.i, %.sroa.7.0.i.i.i.i
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.s, i64 %i.ai)
  %i.aj = tail call i64 @llvm.umax.i64(i64 %..i.i.i, i64 3)
  %i.ak = add nuw nsw i64 %i.aj, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.am, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.d

bb.d:                                             ; preds = %.loopexit66, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.f
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEBD_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.n) #25
          to label %bb.q unwind label %bb.p

bb.f:                                             ; preds = %bb.b, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i
  %..i.sink.i.i = phi i64 [ %i.ak, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i ], [ 4, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %..i.sink.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 112)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.f
  %i.ao = load i64, ptr %i.m, align 8, !range !25, !noundef !7
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !38, !noundef !7 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %.noexc
  %i.at = load i64, ptr %i.as, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #29
          to label %.noexc5 unwind label %bb.e

.noexc5:                                          ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %.noexc
  %i.au = load ptr, ptr %i.as, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.av = icmp ule i64 %..i.sink.i.i, %i.ar
  tail call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.au, ptr noundef nonnull align 8 dereferenceable(112) %i.o, i64 112, i1 false)
  store i64 %i.ar, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.037.0.copyload = load i64, ptr %1, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.539.0.copyload = load ptr, ptr %.sroa.539.0..sroa_idx, align 8 ; 7 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8 ; 5 uses
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8 ; 5 uses
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8 ; 7 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.30.0.copyload = load ptr, ptr %.sroa.30.0..sroa_idx, align 8 ; 5 uses
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.38.0.copyload = load ptr, ptr %.sroa.38.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4394)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4395
  br i1 %i.t, label %.loopexit66, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.fr21.i.i.i.i11 = freeze i64 %.sroa.037.0.copyload
  %i.aw = trunc i64 %.fr21.i.i.i.i11 to i1        ; 2 uses
  %.not.i.us.peel.i.i.i.i14 = icmp eq ptr %.sroa.11.0.copyload, null
  %i.ax = icmp eq ptr %.sroa.11.0.copyload, %.sroa.20.0.copyload
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.11.0.copyload, i64 32 ; 2 uses
  %or.cond = select i1 %.not.i.us.peel.i.i.i.i14, i1 true, i1 %i.ax ; 2 uses
  br i1 %i.aw, label %.split.us.preheader.i.i.i.i26, label %.split.i.i.i.i15

.split.us.preheader.i.i.i.i26:                    ; preds = %bb.i
  br i1 %or.cond, label %select.unfold.us.peel.i.i.i.i29, label %bb.j

select.unfold.us.peel.i.i.i.i29:                  ; preds = %.split.us.preheader.i.i.i.i26
  %.not4.us.peel.i.i.i.i30 = icmp eq ptr %.sroa.539.0.copyload, null
  br i1 %.not4.us.peel.i.i.i.i30, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, label %.sink.split.i.us.peel26.i.i.i.i31

.sink.split.i.us.peel26.i.i.i.i31:                ; preds = %select.unfold.us.peel.i.i.i.i29
  %.idx.i.i.i.i32 = shl nuw nsw i64 %.sroa.9.0.copyload, 5
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.539.0.copyload, i64 %.idx.i.i.i.i32 ; 2 uses
  %i.ba = icmp eq i64 %.sroa.9.0.copyload, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.539.0.copyload, i64 32
  br i1 %i.ba, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, label %bb.j

.split.i.i.i.i15:                                 ; preds = %bb.i
  br i1 %or.cond, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, label %bb.j

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21: ; preds = %.split.i.i.i.i15, %.sink.split.i.us.peel26.i.i.i.i31, %select.unfold.us.peel.i.i.i.i29
  %.sroa.20.6 = phi ptr [ %.sroa.20.0.copyload, %select.unfold.us.peel.i.i.i.i29 ], [ %i.az, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.20.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.539.6 = phi ptr [ null, %select.unfold.us.peel.i.i.i.i29 ], [ null, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.539.0.copyload, %.split.i.i.i.i15 ]
  %.not.i6.i.i.i.i22 = icmp eq ptr %.sroa.25.0.copyload, null
  br i1 %.not.i6.i.i.i.i22, label %.loopexit66, label %.sink.split.i7.i.i.i.i23

.sink.split.i7.i.i.i.i23:                         ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.30.0.copyload) ]
  %i.bc = icmp eq ptr %.sroa.25.0.copyload, %.sroa.30.0.copyload
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.25.0.copyload, i64 32
  br i1 %i.bc, label %.loopexit66, label %bb.j

bb.j:                                             ; preds = %.split.i.i.i.i15, %.split.us.preheader.i.i.i.i26, %.sink.split.i7.i.i.i.i23, %.sink.split.i.us.peel26.i.i.i.i31
  %.sroa.25.4 = phi ptr [ %i.bd, %.sink.split.i7.i.i.i.i23 ], [ %.sroa.25.0.copyload, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.25.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.25.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.20.5 = phi ptr [ %.sroa.20.6, %.sink.split.i7.i.i.i.i23 ], [ %i.az, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.20.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.20.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.11.6 = phi ptr [ null, %.sink.split.i7.i.i.i.i23 ], [ %i.bb, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %i.ay, %.split.us.preheader.i.i.i.i26 ], [ %i.ay, %.split.i.i.i.i15 ]
  %.sroa.539.5 = phi ptr [ %.sroa.539.6, %.sink.split.i7.i.i.i.i23 ], [ null, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.539.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.539.0.copyload, %.split.i.i.i.i15 ]
  %.sroa.0.0.i.ph.i18 = phi ptr [ %.sroa.25.0.copyload, %.sink.split.i7.i.i.i.i23 ], [ %.sroa.539.0.copyload, %.sink.split.i.us.peel26.i.i.i.i31 ], [ %.sroa.11.0.copyload, %.split.us.preheader.i.i.i.i26 ], [ %.sroa.11.0.copyload, %.split.i.i.i.i15 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4396
  store ptr %.sroa.0.0.i.ph.i18, ptr %i.e, align 8, !noalias !4397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4397
  store i8 1, ptr %i.d, align 8, !noalias !4397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4397
  store ptr %i.e, ptr %i.b, align 8, !noalias !4397
  %.sroa.42.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB6_7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.42.0..sroa_idx.i.i20, align 8, !noalias !4397
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @9, ptr noundef nonnull %i.b)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4397
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4397
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.38.0.copyload) ]
  %i.be = load i32, ptr %.sroa.38.0.copyload, align 4, !noalias !4397, !noundef !7
  %i.bf = load ptr, ptr %i.e, align 8, !noalias !4397, !nonnull !7, !align !37, !noundef !7
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.be, ptr %i.bh, align 8, !noalias !4397
  %i.bi = load <2 x i32>, ptr %i.bg, align 8, !noalias !4398
  store <2 x i32> %i.bi, ptr %i.a, align 8, !noalias !4397
  invoke void @_RINvMs_CscA5P7HRgTCP_15ide_diagnosticsNtB5_10Diagnostic3newNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEB5_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.a)
          to label %.noexc6 unwind label %.loopexit.split-lp

.noexc6:                                          ; preds = %.noexc34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4396
  %.pr = load i64, ptr %i.l, align 8, !noalias !4395
  %.not2.i.i = icmp eq i64 %.pr, -1
  br i1 %.not2.i.i, label %.loopexit66, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.noexc6
  %i.bj = ptrtoint ptr %.sroa.30.0.copyload to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %.sroa.9.0.copyload, 5
  %i.bk = icmp eq i64 %.sroa.9.0.copyload, 0
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.noexc7
  %.sroa.33.0.in = phi i64 [ %.sroa.33.0, %.noexc7 ], [ %i.s, %.lr.ph.i.i.preheader ]
  %.sroa.25.0 = phi ptr [ %.sroa.25.1, %.noexc7 ], [ %.sroa.25.4, %.lr.ph.i.i.preheader ] ; 9 uses
  %.sroa.20.0 = phi ptr [ %.sroa.20.1, %.noexc7 ], [ %.sroa.20.5, %.lr.ph.i.i.preheader ] ; 6 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.1, %.noexc7 ], [ %.sroa.11.6, %.lr.ph.i.i.preheader ] ; 7 uses
  %.sroa.539.0 = phi ptr [ %.sroa.539.1, %.noexc7 ], [ %.sroa.539.5, %.lr.ph.i.i.preheader ] ; 7 uses
  %.sroa.33.0 = add i64 %.sroa.33.0.in, -1        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false), !noalias !4395
  %i.bm = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4400, !noundef !7 ; 5 uses
  %i.bn = icmp ult i64 %i.bm, 82351536043346213
  call void @llvm.assume(i1 %i.bn)
  %i.bo = load i64, ptr %i.p, align 8, !range !13, !alias.scope !4399, !noalias !4400, !noundef !7
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.k, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.bq = icmp eq i64 %.sroa.33.0, 0
  br i1 %i.bq, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i: ; preds = %bb.k
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.11.0, null
  %i.br = ptrtoint ptr %.sroa.20.0 to i64
  %i.bs = ptrtoint ptr %.sroa.11.0 to i64
  %i.bt = sub nuw i64 %i.br, %i.bs
  %i.bu = lshr exact i64 %i.bt, 5
  %.sroa.7.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 0, i64 %i.bu
  %.not53.i.i.i.i.i.i = icmp eq ptr %.sroa.25.0, null
  %i.bv = ptrtoint ptr %.sroa.25.0 to i64
  %i.bw = sub nuw i64 %i.bj, %i.bv
  %i.bx = lshr exact i64 %i.bw, 5
  %.sroa.8.0.i.i.i.i.i.i = select i1 %.not53.i.i.i.i.i.i, i64 0, i64 %i.bx
  %i.by = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i.i, %.sroa.8.0.i.i.i.i.i.i
  %..i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.33.0, i64 %i.by)
  %i.bz = add nuw nsw i64 %..i.i.i.i.i, 1
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i, %.lr.ph.i.i
  %i.ca = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4400, !nonnull !7, !noundef !7
  %i.cb = getelementptr inbounds nuw [112 x i8], ptr %i.ca, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.cb, ptr noundef nonnull align 8 dereferenceable(112) %i.l, i64 112, i1 false), !noalias !4400
  %i.cc = add nuw nsw i64 %i.bm, 1
  store i64 %i.cc, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !4399, !noalias !4400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4395
  %i.cd = icmp eq i64 %.sroa.33.0, 0
  br i1 %i.cd, label %.loopexit66, label %bb.l

bb.l:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i
  %.not.i.us.peel.i.i.i.i = icmp eq ptr %.sroa.11.0, null
  %i.ce = icmp eq ptr %.sroa.11.0, %.sroa.20.0
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 32 ; 2 uses
  %or.cond63 = select i1 %.not.i.us.peel.i.i.i.i, i1 true, i1 %i.ce ; 2 uses
  br i1 %i.aw, label %.split.us.preheader.i.i.i.i, label %.split.i.i.i.i

.split.us.preheader.i.i.i.i:                      ; preds = %bb.l
  br i1 %or.cond63, label %select.unfold.us.peel.i.i.i.i, label %bb.m

select.unfold.us.peel.i.i.i.i:                    ; preds = %.split.us.preheader.i.i.i.i
  %.not4.us.peel.i.i.i.i = icmp eq ptr %.sroa.539.0, null
  br i1 %.not4.us.peel.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, label %.sink.split.i.us.peel26.i.i.i.i

.sink.split.i.us.peel26.i.i.i.i:                  ; preds = %select.unfold.us.peel.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.539.0, i64 %.idx.i.i.i.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.539.0, i64 32
  br i1 %i.bk, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, label %bb.m

.split.i.i.i.i:                                   ; preds = %bb.l
  br i1 %or.cond63, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, label %bb.m

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i: ; preds = %.split.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i, %select.unfold.us.peel.i.i.i.i
  %.sroa.20.2 = phi ptr [ %.sroa.20.0, %select.unfold.us.peel.i.i.i.i ], [ %i.cg, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.20.0, %.split.i.i.i.i ]
  %.sroa.539.2 = phi ptr [ null, %select.unfold.us.peel.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.539.0, %.split.i.i.i.i ]
  %.not.i6.i.i.i.i = icmp eq ptr %.sroa.25.0, null
  br i1 %.not.i6.i.i.i.i, label %.loopexit66, label %.sink.split.i7.i.i.i.i

.sink.split.i7.i.i.i.i:                           ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.30.0.copyload) ]
  %i.ci = icmp eq ptr %.sroa.25.0, %.sroa.30.0.copyload
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.25.0, i64 32
  br i1 %i.ci, label %.loopexit66, label %bb.m

bb.m:                                             ; preds = %.split.i.i.i.i, %.split.us.preheader.i.i.i.i, %.sink.split.i7.i.i.i.i, %.sink.split.i.us.peel26.i.i.i.i
  %.sroa.25.1 = phi ptr [ %i.cj, %.sink.split.i7.i.i.i.i ], [ %.sroa.25.0, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.25.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.25.0, %.split.i.i.i.i ]
  %.sroa.20.1 = phi ptr [ %.sroa.20.2, %.sink.split.i7.i.i.i.i ], [ %i.cg, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.20.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.20.0, %.split.i.i.i.i ]
  %.sroa.11.1 = phi ptr [ null, %.sink.split.i7.i.i.i.i ], [ %i.ch, %.sink.split.i.us.peel26.i.i.i.i ], [ %i.cf, %.split.us.preheader.i.i.i.i ], [ %i.cf, %.split.i.i.i.i ]
  %.sroa.539.1 = phi ptr [ %.sroa.539.2, %.sink.split.i7.i.i.i.i ], [ null, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.539.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.539.0, %.split.i.i.i.i ]
  %.sroa.0.0.i.ph.i = phi ptr [ %.sroa.25.0, %.sink.split.i7.i.i.i.i ], [ %.sroa.539.0, %.sink.split.i.us.peel26.i.i.i.i ], [ %.sroa.11.0, %.split.us.preheader.i.i.i.i ], [ %.sroa.11.0, %.split.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4401
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4401
  store ptr %.sroa.0.0.i.ph.i, ptr %i.j, align 8, !noalias !4402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4402
  store i8 1, ptr %i.i, align 8, !noalias !4402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4402
  store ptr %i.j, ptr %i.g, align 8, !noalias !4402
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorNtB6_7Display3fmtCscA5P7HRgTCP_15ide_diagnostics, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !4402
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @9, ptr noundef nonnull %i.g)
          to label %.noexc8 unwind label %.loopexit

.noexc8:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4402
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4402
  %i.ck = load i32, ptr %.sroa.38.0.copyload, align 4, !noalias !4402, !noundef !7
  %i.cl = load ptr, ptr %i.j, align 8, !noalias !4402, !nonnull !7, !align !37, !noundef !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i32 %i.ck, ptr %i.bl, align 8, !noalias !4402
  %i.cn = load <2 x i32>, ptr %i.cm, align 8, !noalias !4403
  store <2 x i32> %i.cn, ptr %i.f, align 8, !noalias !4402
  invoke void @_RINvMs_CscA5P7HRgTCP_15ide_diagnosticsNtB5_10Diagnostic3newNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperNtCs4sl5YdnrCxp_3vfs6FileIdEEB5_(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.f)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4401
  %.pr52 = load i64, ptr %i.l, align 8, !noalias !4395
  %.not.i.i = icmp eq i64 %.pr52, -1
  br i1 %.not.i.i, label %.loopexit66, label %.lr.ph.i.i

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEBD_(ptr noalias nofree noundef align 8 dereferenceable(112) %i.k) #25
          to label %.body unwind label %bb.o, !noalias !4400

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_4take4TakeINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEENCNvCscA5P7HRgTCP_15ide_diagnostics18syntax_diagnostics0ENtNtNtB9_6traits8iterator8Iterator9size_hintB2Z_.exit.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i, %bb.k
  %..i.sink.i.i.i.i = phi i64 [ %i.bz, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEENtNtNtB9_6traits8iterator8Iterator9size_hintCscA5P7HRgTCP_15ide_diagnostics.exit.i.i.i.i ], [ 1, %bb.k ]
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.bm, i64 noundef %..i.sink.i.i.i.i, i64 noundef 8, i64 noundef 112)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i unwind label %bb.n, !noalias !4400

bb.o:                                             ; preds = %bb.n
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24, !noalias !4400
  unreachable

.loopexit:                                        ; preds = %bb.m, %.noexc8
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.j, %.noexc34
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.co, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticEEB1a_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #25
          to label %bb.q unwind label %bb.p

.loopexit66:                                      ; preds = %.noexc7, %.sink.split.i7.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtCscA5P7HRgTCP_15ide_diagnostics10DiagnosticE7reserveBG_.exit.i.i, %.sink.split.i7.i.i.i.i23, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterRSNtNtCsjJXvCMGntp8_6syntax12syntax_error11SyntaxErrorEEINtB5_8FuseImplBY_E4nextCscA5P7HRgTCP_15ide_diagnostics.exit.thread.i.i.i.i21, %bb.h, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4395
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  br label %bb.d

bb.p:                                             ; preds = %.body, %bb.e
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.q:                                             ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.an, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEINtB2_18SpecFromIterNestedB11_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtB2f_5chain5ChainINtNtB2j_6option8IntoIterNtNtB6_6string6StringEINtNtB2f_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB6B_s2_0EE9from_iterB6H_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 4 uses
  %i.b = alloca [200 x i8], align 8               ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [152 x i8], align 8               ; 8 uses
  %i.e = alloca [200 x i8], align 8               ; 4 uses
  %i.f = alloca [200 x i8], align 8               ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtB7_5chain5ChainINtNtBb_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB7_10filter_map9FilterMapINtNtNtB2v_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB4U_s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB50_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(200) %i.f, ptr noalias nofree noundef align 8 dereferenceable(152) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !15, !noundef !7
  %.not = icmp eq i64 %i.i, 2
  br i1 %.not, label %bb.d, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr noundef nonnull align 8 dereferenceable(200) %i.f, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 200)
          to label %.noexc unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtBG_5chain5ChainINtNtB4_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtBG_10filter_map9FilterMapINtNtNtB2I_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB57_s2_0EEB5d_(ptr noalias nofree noundef align 8 dereferenceable(152) %1)
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtCs6oosyzwIepl_6ide_db7assists6AssistEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtB1W_5chain5ChainINtNtB20_6option8IntoIterNtNtB6_6string6StringEINtNtB1W_10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EEENCB6i_s2_0EE11spec_extendB6o_.exit, %bb.d
  ret void

bb.f:                                             ; preds = %bb.g, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs6oosyzwIepl_6ide_db7assists6AssistECscA5P7HRgTCP_15ide_diagnostics(ptr noalias nofree noundef align 8 dereferenceable(200) %i.e) #25
          to label %bb.t unwind label %bb.r

.noexc:                                           ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtBa_6option8IntoIterNtNtCsbSS6DM8SDEO_5alloc6string6StringEINtNtB6_10filter_map9FilterMapINtNtNtB1r_3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENCNvNtNtCscA5P7HRgTCP_15ide_diagnostics8handlers10typed_hole5fixess1_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB3W_.exit.i.i
  %i.m = load i64, ptr %i.c, align 8, !range !25, !noundef !7
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !38, !noundef !7 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.n, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %.noexc
  %i.r = load i64, ptr %i.q, align 8
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #29
          to label %.noexc4 unwind label %bb.f

end_hunk_0
