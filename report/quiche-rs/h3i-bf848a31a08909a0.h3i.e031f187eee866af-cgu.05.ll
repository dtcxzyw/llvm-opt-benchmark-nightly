Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.05?download=true
inline.NumInlined: 374
inline.NumDeleted: 177
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvYINtNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6prompt12SelectPromptReEINtNtB9_6prompt6PromptINtNtNtBb_2ui7backend7BackendNtNtNtBb_8terminal9crossterm18CrosstermKeyReaderNtB21_17CrosstermTerminalEE6promptCsjfnSKV9Rz3v_3h3i:bb.a
_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEEECsjfnSKV9Rz3v_3h3i.exit.i: ; preds = %bb.o
    #dbg_value(ptr %i.e, !3095, !DIExpression(), !19110)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.thread unwind label %.loopexit, !dbg !20197

.thread:                                          ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEEECsjfnSKV9Rz3v_3h3i.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20185, !noalias !19724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20198
  br label %bb.ab, !dbg !20199

bb.r:                                             ; preds = %bb.n
    #dbg_value(ptr %i.bb, !19759, !DIExpression(), !19112)
  %.not39.i = icmp eq ptr %i.bb, null, !dbg !20200
  br i1 %.not39.i, label %bb.o, label %bb.s, !dbg !20201

bb.s:                                             ; preds = %bb.r
    #dbg_value(ptr %i.bb, !19710, !DIExpression(), !19113)
    #dbg_value(ptr %i.bb, !19767, !DIExpression(), !19115)
    #dbg_value(ptr %i.bb, !19772, !DIExpression(), !19116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !20202, !noalias !19724
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull %i.bb)
          to label %bb.t unwind label %bb.i, !dbg !20202, !noalias !19805

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !20203, !noalias !19840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !20204, !noalias !19724
  br label %bb.u, !dbg !20205

bb.u:                                             ; preds = %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !20194, !noalias !19724
    #dbg_value(ptr %i.e, !3090, !DIExpression(), !19118)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEEECsjfnSKV9Rz3v_3h3i.exit41.i unwind label %bb.v, !dbg !20206, !noalias !19805

bb.v:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.e, !3095, !DIExpression(), !19120)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.w, !dbg !20207, !noalias !19805

bb.w:                                             ; preds = %bb.v
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !20206, !noalias !19805
  unreachable, !dbg !20206

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEEECsjfnSKV9Rz3v_3h3i.exit41.i: ; preds = %bb.u
    #dbg_value(ptr %i.e, !3095, !DIExpression(), !19122)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc172 unwind label %.loopexit, !dbg !20208

.noexc172:                                        ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCs8Nb2mar7w9E_7inquire11list_option10ListOptionRReEEECsjfnSKV9Rz3v_3h3i.exit41.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !20185, !noalias !19724
  br label %bb.z, !dbg !20209

bb.x:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !20210, !noalias !19840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !20211, !noalias !19724
  br label %bb.u, !dbg !20205

bb.y:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !20212, !noalias !19805
  unreachable, !dbg !20212

bb.z:                                             ; preds = %.noexc172, %bb.g
  %.pr = load i64, ptr %i.q, align 8, !dbg !20213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !20198
  %.not150 = icmp eq i64 %.pr, -1, !dbg !20213
  br i1 %.not150, label %bb.ab, label %bb.aa, !dbg !20199

bb.aa:                                            ; preds = %bb.z
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20214
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !20215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !20216
  store i64 1, ptr %0, align 8, !dbg !20214
  br label %bb.bw, !dbg !20217

bb.ab:                                            ; preds = %.thread, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !20216
  %i.bi = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend12frame_finishCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2, i1 noundef zeroext false)
          to label %bb.ac unwind label %.loopexit, !dbg !20218 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.bi, !19636, !DIExpression(), !19845)
  %.not151 = icmp eq ptr %i.bi, null, !dbg !20219
  br i1 %.not151, label %bb.b, label %bb.ad, !dbg !20220

bb.ad:                                            ; preds = %bb.ac
    #dbg_value(ptr %i.bi, !19418, !DIExpression(), !19846)
    #dbg_value(ptr %i.bi, !19680, !DIExpression(), !19849)
    #dbg_value(ptr %i.bi, !19684, !DIExpression(), !19850)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !20221
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.bi)
          to label %bb.cq unwind label %.loopexit.split-lp, !dbg !20221

bb.ae:                                            ; preds = %bb.b
  %i.bj = load i64, ptr %i.p, align 8, !dbg !20222, !range !19851, !noundef !1246 ; 2 uses
  %.not152 = icmp eq i64 %i.bj, -1, !dbg !20222
  %.sroa.078.0.copyload = load i64, ptr %i.ab, align 8, !dbg !20223 ; 2 uses
  br i1 %.not152, label %bb.ag, label %bb.af, !dbg !20224

bb.af:                                            ; preds = %bb.ae
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !20225
  %.sroa.584.0.copyload = load i64, ptr %.sroa.584.0..sroa_idx, align 8, !dbg !20225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !20226
    #dbg_value(i64 %i.bj, !19421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19852)
    #dbg_value(i64 %i.bj, !19536, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19855)
    #dbg_value(i64 %.sroa.078.0.copyload, !19421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19852)
    #dbg_value(i64 %.sroa.078.0.copyload, !19536, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19855)
    #dbg_value(i64 %.sroa.584.0.copyload, !19421, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19852)
    #dbg_value(i64 %.sroa.584.0.copyload, !19536, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19855)
    #dbg_value(i64 %i.bj, !19541, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19856)
    #dbg_value(i64 %.sroa.078.0.copyload, !19541, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19856)
    #dbg_value(i64 %.sroa.584.0.copyload, !19541, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !19856)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20227
  store i64 %i.bj, ptr %i.bk, align 8, !dbg !20227
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !20227
  store i64 %.sroa.078.0.copyload, ptr %.sroa.486.0..sroa_idx, align 8, !dbg !20227
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !20227
  store i64 %.sroa.584.0.copyload, ptr %.sroa.587.0..sroa_idx, align 8, !dbg !20227
  store i64 1, ptr %0, align 8, !dbg !20227
  br label %bb.bw, !dbg !20217

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !20226
    #dbg_value(i64 %.sroa.078.0.copyload, !19420, !DIExpression(), !19857)
  %i.bl = invoke i64 @_RINvMNtNtCs8Nb2mar7w9E_7inquire7prompts6actionINtB3_6ActionNtNtNtB5_6select6action18SelectPromptActionE8from_keyNtNtBZ_6config12SelectConfigECsjfnSKV9Rz3v_3h3i(i64 %.sroa.078.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %bb.ah unwind label %.loopexit, !dbg !20228 ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0118.0.extract.trunc = trunc i64 %i.bl to i8, !dbg !20228 ; 4 uses
    #dbg_value(i8 %.sroa.0118.0.extract.trunc, !19423, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19858)
    #dbg_value(i64 %i.bl, !19423, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 56), !19858)
  %.not153 = icmp eq i8 %.sroa.0118.0.extract.trunc, -1, !dbg !20229
  br i1 %.not153, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %bb.ai, !dbg !20230

bb.ai:                                            ; preds = %bb.ah
    #dbg_value(i8 %.sroa.0118.0.extract.trunc, !19424, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19860)
    #dbg_value(i64 %i.bl, !19424, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 56), !19860)
  %i.bm = icmp ugt i8 %.sroa.0118.0.extract.trunc, 8, !dbg !20231
  %i.bn = add i8 %.sroa.0118.0.extract.trunc, -9, !dbg !20232
  %trunc = select i1 %i.bm, i8 %i.bn, i8 3, !dbg !20231
  switch i8 %trunc, label %bb.aj [
    i8 0, label %bb.ak
    i8 1, label %bb.cd
    i8 2, label %bb.an
    i8 3, label %bb.ao
  ], !dbg !20232

bb.aj:                                            ; preds = %bb.ai
  unreachable, !dbg !20233

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !19862), !dbg !20234
    #dbg_value(ptr %1, !19863, !DIExpression(), !19132)
    #dbg_value(ptr %1, !19879, !DIExpression(), !19135)
    #dbg_value(ptr %1, !19884, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19138)
    #dbg_value(ptr %1, !19886, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19141)
  %i.bo = load i64, ptr %i.w, align 8, !dbg !20235, !alias.scope !19862, !noalias !19888, !noundef !1246
    #dbg_value(ptr poison, !19889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19149)
    #dbg_value(ptr poison, !19902, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19152)
    #dbg_value(i64 %i.bo, !19889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19149)
    #dbg_value(i64 %i.bo, !19902, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19152)
  %i.bp = load i64, ptr %i.ad, align 8, !dbg !20236, !alias.scope !19862, !noalias !19888, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.bp, !19899, !DIExpression(), !19149)
    #dbg_value(i64 %i.bp, !19905, !DIExpression(), !19152)
  %i.bq = icmp ult i64 %i.bp, %i.bo, !dbg !20237
  br i1 %i.bq, label %bb.al, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20237

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !19907), !dbg !20238
    #dbg_value(ptr %1, !19908, !DIExpression(), !19159)
    #dbg_value(ptr %1, !19915, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19162)
    #dbg_value(ptr %1, !19917, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19165)
    #dbg_value(ptr %1, !19919, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19168)
    #dbg_value(ptr poison, !19921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19171)
    #dbg_value(ptr poison, !19924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19174)
    #dbg_value(i64 %i.bo, !19921, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19171)
    #dbg_value(i64 %i.bo, !19924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19174)
    #dbg_value(i64 %i.bp, !19922, !DIExpression(), !19171)
    #dbg_value(i64 %i.bp, !19925, !DIExpression(), !19174)
  %i.br = load ptr, ptr %i.v, align 8, !dbg !20239, !alias.scope !19927, !noalias !19928, !nonnull !1246, !noundef !1246
    #dbg_value(ptr %i.br, !19921, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19171)
    #dbg_value(ptr %i.br, !19924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19174)
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bp, !dbg !20240
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !20241, !noalias !19929, !noundef !1246 ; 5 uses
    #dbg_value(i64 %i.bt, !19912, !DIExpression(), !19182)
  call void @llvm.experimental.noalias.scope.decl(metadata !19930), !dbg !20242
    #dbg_value(ptr %1, !19931, !DIExpression(), !19190)
    #dbg_value(ptr %1, !19940, !DIExpression(), !19193)
    #dbg_value(ptr %1, !19942, !DIExpression(), !19196)
    #dbg_value(ptr %1, !19944, !DIExpression(), !19199)
    #dbg_value(i64 %i.bt, !19935, !DIExpression(), !19190)
    #dbg_value(i64 %i.bt, !19950, !DIExpression(), !19202)
    #dbg_value(i64 %i.bt, !19955, !DIExpression(), !19205)
    #dbg_value(i64 1, !19958, !DIExpression(), !19208)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !20243 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !dbg !20243, !alias.scope !19964, !noalias !19928, !noundef !1246 ; 4 uses
    #dbg_value(i64 %i.bv, !19936, !DIExpression(), !19209)
  %i.bw = icmp ult i64 %i.bv, 576460752303423488, !dbg !20244
  call void @llvm.assume(i1 %i.bw), !dbg !20245
  %.not.i.i.i = icmp ult i64 %i.bt, %i.bv, !dbg !20246
  br i1 %.not.i.i.i, label %bb.bj, label %bb.am, !dbg !20246, !prof !2791

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE11swap_remove13assert_failed(i64 noundef %i.bt, i64 noundef %i.bv) #22
          to label %.noexc173 unwind label %.loopexit.split-lp, !dbg !20247

.noexc173:                                        ; preds = %bb.am
  unreachable, !dbg !20247

bb.an:                                            ; preds = %bb.ai
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20248
  store i64 -9223372036854775804, ptr %i.bx, align 8, !dbg !20248
  store i64 1, ptr %0, align 8, !dbg !20248
  br label %bb.bw, !dbg !20249

bb.ao:                                            ; preds = %bb.ai
    #dbg_value(i8 %.sroa.0118.0.extract.trunc, !19437, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19965)
    #dbg_value(i64 %i.bl, !19437, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 56), !19965)
    #dbg_value(i8 %.sroa.0118.0.extract.trunc, !19966, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19220)
    #dbg_value(i64 %i.bl, !19966, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 56), !19220)
    #dbg_value(ptr %1, !19980, !DIExpression(), !19220)
  %i.by = add i64 %i.bl, 253, !dbg !20250
  %i.bz = and i64 %i.by, 255, !dbg !20250
  %i.ca = icmp ugt i8 %.sroa.0118.0.extract.trunc, 2, !dbg !20250
  %i.cb = add nuw nsw i64 %i.bz, 1, !dbg !20250
  %i.cc = select i1 %i.ca, i64 %i.cb, i64 0, !dbg !20250
  switch i64 %i.cc, label %bb.ap [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
    i64 2, label %bb.at
    i64 3, label %bb.ay
    i64 4, label %bb.ba
    i64 5, label %bb.bc
    i64 6, label %bb.be
  ], !dbg !20251

default.unreachable:                              ; preds = %.noexc175
  unreachable

bb.ap:                                            ; preds = %bb.ao
  unreachable, !dbg !20252

bb.aq:                                            ; preds = %bb.ao
    #dbg_value(i8 %.sroa.0118.0.extract.trunc, !19982, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !19221)
    #dbg_value(i64 %i.bl, !19982, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 8, 56), !19221)
    #dbg_value(ptr %1, !19987, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value), !19229)
  %i.cd = load i64, ptr %i.u, align 8, !dbg !20253, !range !2876, !alias.scope !20002, !noalias !20003, !noundef !1246
  %.not.i174 = icmp eq i64 %i.cd, -1, !dbg !20253
  br i1 %.not.i174, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %bb.bg, !dbg !20254

bb.ar:                                            ; preds = %bb.ao
    #dbg_value(ptr poison, !20004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19241)
    #dbg_value(ptr poison, !20004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19241)
    #dbg_value(ptr %1, !20027, !DIExpression(DW_OP_plus_uconst, 48), !19246)
    #dbg_value(ptr %1, !20031, !DIExpression(), !19247)
    #dbg_value(ptr %1, !20020, !DIExpression(), !19248)
    #dbg_value(ptr %1, !20034, !DIExpression(), !19251)
    #dbg_value(i64 1, !20021, !DIExpression(), !19248)
    #dbg_value(i64 1, !20037, !DIExpression(), !19254)
    #dbg_value(i64 1, !20040, !DIExpression(), !19257)
    #dbg_value(i64 1, !20038, !DIExpression(), !19259)
    #dbg_value(i1 true, !20022, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19248)
  %i.ce = load i64, ptr %i.ad, align 8, !dbg !20255, !alias.scope !20043, !noalias !20003, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.ce, !20038, !DIExpression(), !19254)
    #dbg_value(i64 poison, !20024, !DIExpression(), !19262)
    #dbg_value(i64 poison, !20038, !DIExpression(), !19264)
    #dbg_value(i64 %i.ce, !20041, !DIExpression(), !19257)
  %i.cf = icmp eq i64 %i.ce, 0, !dbg !20256
  br i1 %i.cf, label %bb.as, label %.thread.i, !dbg !20256

bb.as:                                            ; preds = %bb.ar
    #dbg_value(i64 1, !20024, !DIExpression(), !19262)
    #dbg_value(i64 1, !20038, !DIExpression(), !19264)
    #dbg_value(i64 poison, !20014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19241)
    #dbg_value(i64 poison, !20014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19241)
    #dbg_value(ptr undef, !20031, !DIExpression(DW_OP_deref), !19247)
    #dbg_value(ptr undef, !20032, !DIExpression(DW_OP_deref), !19247)
    #dbg_value(ptr undef, !20004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19241)
    #dbg_value(ptr undef, !20004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19241)
    #dbg_value(ptr undef, !20027, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 48), !19265)
  %i.cg = load i64, ptr %i.w, align 8, !dbg !20257, !alias.scope !20043, !noalias !20003, !noundef !1246 ; 3 uses
    #dbg_value(i64 %i.cg, !20037, !DIExpression(), !19264)
  %i.ch = icmp ult i64 %i.cg, 1152921504606846976, !dbg !20258
  call void @llvm.assume(i1 %i.ch), !dbg !20259
    #dbg_value(i64 %i.cg, !20035, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !19251)
    #dbg_value(i64 %i.cg, !20023, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value), !19266)
  %.not.i.i = icmp samesign ult i64 %i.cg, 2, !dbg !20260
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %.thread.i, !dbg !20260

.thread.i:                                        ; preds = %bb.ar, %bb.as
  %.sroa.01.0.i36.i.in = phi i64 [ %i.cg, %bb.as ], [ %i.ce, %bb.ar ]
  %.sroa.01.0.i36.i = add i64 %.sroa.01.0.i36.i.in, -1, !dbg !20261
  store i64 %.sroa.01.0.i36.i, ptr %i.ad, align 8, !dbg !20262, !alias.scope !20043, !noalias !20003
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20263

bb.at:                                            ; preds = %bb.ao
    #dbg_value(ptr %1, !20045, !DIExpression(), !19270)
    #dbg_value(ptr %1, !20051, !DIExpression(), !19273)
    #dbg_value(i64 1, !20047, !DIExpression(), !19270)
    #dbg_value(i64 1, !20054, !DIExpression(), !19276)
    #dbg_value(i1 true, !20048, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19270)
  %i.ci = load i64, ptr %i.ad, align 8, !dbg !20264, !alias.scope !20057, !noalias !20003, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.ci, !20055, !DIExpression(), !19276)
  %i.cj = call i64 @llvm.uadd.sat.i64(i64 %i.ci, i64 1), !dbg !20265 ; 3 uses
    #dbg_value(i64 %i.cj, !20049, !DIExpression(), !19279)
    #dbg_value(i64 %i.cj, !20052, !DIExpression(), !19273)
    #dbg_value(ptr %1, !20058, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19282)
  %i.ck = load i64, ptr %i.w, align 8, !dbg !20266, !alias.scope !20057, !noalias !20003, !noundef !1246 ; 4 uses
  %i.cl = icmp ult i64 %i.ck, 1152921504606846976, !dbg !20267
  call void @llvm.assume(i1 %i.cl), !dbg !20268
  %.not.i13.i = icmp ult i64 %i.cj, %i.ck, !dbg !20269
  br i1 %.not.i13.i, label %bb.av, label %bb.au, !dbg !20269

bb.au:                                            ; preds = %bb.at
    #dbg_value(ptr %1, !20060, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19285)
    #dbg_value(ptr %1, !20058, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19287)
  %i.cm = icmp eq i64 %i.ck, 0, !dbg !20270
  br i1 %i.cm, label %bb.av, label %bb.aw, !dbg !20271

bb.av:                                            ; preds = %bb.aw, %bb.au, %bb.at
  %.sroa.01.0.i14.i = phi i64 [ %i.cj, %bb.at ], [ 0, %bb.au ], [ %i.cn, %bb.aw ], !dbg !20272 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i14.i, !20052, !DIExpression(), !19273)
    #dbg_value(i64 %.sroa.01.0.i14.i, !20049, !DIExpression(), !19279)
  %.not13.i.i = icmp eq i64 %.sroa.01.0.i14.i, %i.ci, !dbg !20273
  br i1 %.not13.i.i, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %bb.ax, !dbg !20273

bb.aw:                                            ; preds = %bb.au
    #dbg_value(ptr %1, !20058, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19289)
  %i.cn = urem i64 %i.cj, %i.ck, !dbg !20274
  br label %bb.av, !dbg !20275

bb.ax:                                            ; preds = %bb.av
  store i64 %.sroa.01.0.i14.i, ptr %i.ad, align 8, !dbg !20276, !alias.scope !20057, !noalias !20003
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20277

bb.ay:                                            ; preds = %bb.ao
  %i.co = load i64, ptr %i.ac, align 8, !dbg !20278, !alias.scope !20002, !noalias !20003, !noundef !1246
    #dbg_value(ptr poison, !20004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19292)
    #dbg_value(ptr poison, !20004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19292)
    #dbg_value(ptr %1, !20027, !DIExpression(DW_OP_plus_uconst, 48), !19295)
    #dbg_value(ptr %1, !20031, !DIExpression(), !19296)
    #dbg_value(ptr %1, !20020, !DIExpression(), !19297)
    #dbg_value(ptr %1, !20034, !DIExpression(), !19299)
    #dbg_value(i64 %i.co, !20021, !DIExpression(), !19297)
    #dbg_value(i64 %i.co, !20037, !DIExpression(), !19301)
    #dbg_value(i64 %i.co, !20040, !DIExpression(), !19303)
    #dbg_value(i64 %i.co, !20038, !DIExpression(), !19305)
    #dbg_value(i1 false, !20022, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19297)
  %i.cp = load i64, ptr %i.ad, align 8, !dbg !20279, !alias.scope !20065, !noalias !20003, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.cp, !20037, !DIExpression(), !19305)
  %i.cq = call i64 @llvm.usub.sat.i64(i64 %i.cp, i64 %i.co), !dbg !20280 ; 2 uses
    #dbg_value(i64 %i.cq, !20035, !DIExpression(), !19299)
    #dbg_value(i64 %i.cq, !20023, !DIExpression(), !19308)
  %.not.i16.i = icmp eq i64 %i.cq, %i.cp, !dbg !20281
  br i1 %.not.i16.i, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %bb.az, !dbg !20281

bb.az:                                            ; preds = %bb.ay
  store i64 %i.cq, ptr %i.ad, align 8, !dbg !20282, !alias.scope !20065, !noalias !20003
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20283

bb.ba:                                            ; preds = %bb.ao
  %i.cr = load i64, ptr %i.ac, align 8, !dbg !20284, !alias.scope !20002, !noalias !20003, !noundef !1246
    #dbg_value(ptr %1, !20045, !DIExpression(), !19310)
    #dbg_value(ptr %1, !20051, !DIExpression(), !19312)
    #dbg_value(i64 %i.cr, !20047, !DIExpression(), !19310)
    #dbg_value(i64 %i.cr, !20054, !DIExpression(), !19314)
    #dbg_value(i1 false, !20048, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19310)
  %i.cs = load i64, ptr %i.ad, align 8, !dbg !20285, !alias.scope !20066, !noalias !20003, !noundef !1246 ; 2 uses
    #dbg_value(i64 %i.cs, !20055, !DIExpression(), !19314)
  %i.ct = call i64 @llvm.uadd.sat.i64(i64 %i.cs, i64 %i.cr), !dbg !20286 ; 2 uses
    #dbg_value(i64 %i.ct, !20049, !DIExpression(), !19317)
    #dbg_value(i64 %i.ct, !20052, !DIExpression(), !19312)
    #dbg_value(ptr %1, !20058, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19319)
  %i.cu = load i64, ptr %i.w, align 8, !dbg !20287, !alias.scope !20066, !noalias !20003, !noundef !1246 ; 3 uses
  %i.cv = icmp ult i64 %i.cu, 1152921504606846976, !dbg !20288
  call void @llvm.assume(i1 %i.cv), !dbg !20289
  %.not.i18.i = icmp ult i64 %i.ct, %i.cu, !dbg !20290
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.cu, i64 1), !dbg !20290
  %.sroa.01.0.i19.i = select i1 %.not.i18.i, i64 %i.ct, i64 %spec.select.i, !dbg !20290 ; 2 uses
    #dbg_value(i64 %.sroa.01.0.i19.i, !20052, !DIExpression(), !19312)
    #dbg_value(i64 %.sroa.01.0.i19.i, !20049, !DIExpression(), !19317)
  %.not13.i20.i = icmp eq i64 %.sroa.01.0.i19.i, %i.cs, !dbg !20291
  br i1 %.not13.i20.i, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %bb.bb, !dbg !20291

bb.bb:                                            ; preds = %bb.ba
  store i64 %.sroa.01.0.i19.i, ptr %i.ad, align 8, !dbg !20292, !alias.scope !20066, !noalias !20003
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20293

bb.bc:                                            ; preds = %bb.ao
    #dbg_value(ptr poison, !20004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19322)
    #dbg_value(ptr poison, !20004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19322)
    #dbg_value(ptr %1, !20027, !DIExpression(DW_OP_plus_uconst, 48), !19325)
    #dbg_value(ptr %1, !20031, !DIExpression(), !19326)
    #dbg_value(ptr %1, !20020, !DIExpression(), !19327)
    #dbg_value(ptr %1, !20034, !DIExpression(), !19329)
    #dbg_value(i64 -1, !20021, !DIExpression(), !19327)
    #dbg_value(i64 -1, !20037, !DIExpression(), !19331)
    #dbg_value(i64 -1, !20040, !DIExpression(), !19333)
    #dbg_value(i64 -1, !20038, !DIExpression(), !19335)
    #dbg_value(i1 false, !20022, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19327)
  %i.cw = load i64, ptr %i.ad, align 8, !dbg !20294, !alias.scope !20067, !noalias !20003, !noundef !1246
    #dbg_value(i64 %i.cw, !20037, !DIExpression(), !19335)
    #dbg_value(i64 0, !20035, !DIExpression(), !19329)
    #dbg_value(i64 0, !20023, !DIExpression(), !19338)
  %.not.i23.i = icmp eq i64 %i.cw, 0, !dbg !20295
  br i1 %.not.i23.i, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %bb.bd, !dbg !20295

bb.bd:                                            ; preds = %bb.bc
  store i64 0, ptr %i.ad, align 8, !dbg !20296, !alias.scope !20067, !noalias !20003
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20297

bb.be:                                            ; preds = %bb.ao
    #dbg_value(ptr %1, !20045, !DIExpression(), !19340)
    #dbg_value(ptr %1, !20051, !DIExpression(), !19342)
    #dbg_value(i64 -1, !20047, !DIExpression(), !19340)
    #dbg_value(i64 -1, !20054, !DIExpression(), !19344)
    #dbg_value(i1 false, !20048, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !19340)
  %i.cx = load i64, ptr %i.ad, align 8, !dbg !20298, !alias.scope !20068, !noalias !20003, !noundef !1246
    #dbg_value(i64 %i.cx, !20055, !DIExpression(), !19344)
    #dbg_value(i64 -1, !20049, !DIExpression(), !19347)
    #dbg_value(i64 -1, !20052, !DIExpression(), !19342)
    #dbg_value(ptr %1, !20058, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19349)
  %i.cy = load i64, ptr %i.w, align 8, !dbg !20299, !alias.scope !20068, !noalias !20003, !noundef !1246 ; 2 uses
  %i.cz = icmp ult i64 %i.cy, 1152921504606846976, !dbg !20300
  call void @llvm.assume(i1 %i.cz), !dbg !20301
    #dbg_value(ptr %1, !20060, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19351)
    #dbg_value(ptr %1, !20058, !DIExpression(DW_OP_plus_uconst, 48, DW_OP_stack_value), !19353)
  %spec.select29.i = call i64 @llvm.usub.sat.i64(i64 %i.cy, i64 1), !dbg !20302 ; 2 uses
    #dbg_value(i64 %spec.select29.i, !20052, !DIExpression(), !19342)
    #dbg_value(i64 %spec.select29.i, !20049, !DIExpression(), !19347)
  %.not13.i27.i = icmp eq i64 %spec.select29.i, %i.cx, !dbg !20303
  br i1 %.not13.i27.i, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, label %bb.bf, !dbg !20303

bb.bf:                                            ; preds = %bb.be
  store i64 %spec.select29.i, ptr %i.ad, align 8, !dbg !20304, !alias.scope !20068, !noalias !20003
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20305

bb.bg:                                            ; preds = %bb.aq
    #dbg_value(ptr %i.u, !19983, !DIExpression(), !19354)
  %i.da = invoke noundef i8 @_RNvMNtCs8Nb2mar7w9E_7inquire5inputNtB2_5Input6handle(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.u, i64 %i.bl)
          to label %.noexc175 unwind label %.loopexit, !dbg !20306

.noexc175:                                        ; preds = %bb.bg
    #dbg_value(i8 %i.da, !19984, !DIExpression(), !19355)
    #dbg_value(i8 %i.da, !20069, !DIExpression(), !19358)
    #dbg_value(i8 %i.da, !20076, !DIExpression(), !19361)
  switch i8 %i.da, label %default.unreachable [
    i8 0, label %bb.bh
    i8 2, label %bb.bi
    i8 1, label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge
  ], !dbg !20307

bb.bh:                                            ; preds = %.noexc175
  invoke fastcc void @_RNvMNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB2_12SelectPromptReE10run_scorerCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(240) %1)
          to label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge unwind label %.loopexit, !dbg !20308

bb.bi:                                            ; preds = %.noexc175
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge, !dbg !20309

_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit.backedge: ; preds = %bb.bi, %.noexc175, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.av, %.thread.i, %bb.as, %bb.aq, %bb.bh, %bb.ak, %bb.ah
  %.sroa.067.0.be = phi i8 [ %.sroa.067.1, %bb.ah ], [ 0, %bb.ak ], [ 0, %bb.bd ], [ 0, %bb.bf ], [ 0, %.thread.i ], [ 0, %bb.ax ], [ 0, %bb.az ], [ 0, %bb.bb ], [ 1, %bb.aq ], [ 1, %bb.bi ], [ 0, %.noexc175 ], [ 1, %bb.as ], [ 1, %bb.av ], [ 1, %bb.ay ], [ 1, %bb.ba ], [ 1, %bb.bc ], [ 1, %bb.be ], [ 0, %bb.bh ]
  br label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE6handleCsjfnSKV9Rz3v_3h3i.exit, !dbg !20156

bb.bj:                                            ; preds = %bb.al
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !20310
  %i.dc = load ptr, ptr %i.db, align 8, !dbg !20310, !alias.scope !19964, !noalias !19928, !nonnull !1246, !noundef !1246 ; 2 uses
    #dbg_value(ptr %i.dc, !19953, !DIExpression(), !19202)
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.bt, !dbg !20311 ; 3 uses
    #dbg_value(ptr %i.dd, !20081, !DIExpression(), !19370)
  %i.de = load ptr, ptr %i.dd, align 8, !dbg !20312, !noalias !20085, !nonnull !1246, !noundef !1246
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8, !dbg !20312
  %i.dg = load i64, ptr %i.df, align 8, !dbg !20312, !noalias !20085, !noundef !1246
    #dbg_value(ptr %i.de, !19937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19371)
    #dbg_value(i64 %i.dg, !19937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19371)
    #dbg_value(ptr %i.dc, !19938, !DIExpression(), !19372)
    #dbg_value(ptr %i.dc, !19956, !DIExpression(), !19374)
    #dbg_value(ptr %i.dc, !19956, !DIExpression(), !19205)
  %i.dh = add nsw i64 %i.bv, -1, !dbg !20313      ; 2 uses
    #dbg_value(i64 %i.dh, !19955, !DIExpression(), !19374)
    #dbg_value(i64 %i.dh, !19948, !DIExpression(), !19199)
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dh, !dbg !20314
    #dbg_value(ptr %i.di, !19961, !DIExpression(), !19208)
    #dbg_value(ptr %i.dd, !19962, !DIExpression(), !19208)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !dbg !20315, !noalias !20085
  store i64 %i.dh, ptr %i.bu, align 8, !dbg !20316, !alias.scope !19964, !noalias !19928
    #dbg_value(ptr %i.de, !19427, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !20086)
    #dbg_value(i64 %i.dg, !19427, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !20086)
    #dbg_value(i64 %i.bt, !19427, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !20086)
  store ptr %i.de, ptr %i.r, align 8, !dbg !20317
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !20317
  store i64 %i.dg, ptr %.sroa.431.0..sroa_idx, align 8, !dbg !20317
  %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16, !dbg !20317
  store i64 %i.bt, ptr %.sroa.431.sroa.4.0..sroa.431.0..sroa_idx.sroa_idx, align 8, !dbg !20317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !20318
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 200, !dbg !20319
  %.val = load ptr, ptr %i.dj, align 8, !dbg !20319, !nonnull !1246, !noundef !1246
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 208, !dbg !20319
  %.val164 = load ptr, ptr %i.dk, align 8, !dbg !20319, !nonnull !1246, !align !3932, !noundef !1246
    #dbg_value(ptr poison, !20087, !DIExpression(), !19377)
    #dbg_value(ptr %i.r, !20091, !DIExpression(), !19377)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val164, i64 40, !dbg !20320
  %i.dm = load ptr, ptr %i.dl, align 8, !dbg !20320, !invariant.load !1246, !noalias !20093, !nonnull !1246
  invoke void %i.dm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, i64 noundef %i.bt) #28
          to label %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE13format_answerCsjfnSKV9Rz3v_3h3i.exit unwind label %bb.bk, !dbg !20320, !inline_history !19381

bb.bk:                                            ; preds = %bb.bj, %bb.by, %bb.bu
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE13format_answerCsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.bj
  %i.do = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend11frame_setupCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2)
          to label %bb.bm unwind label %bb.bl, !dbg !20321 ; 2 uses

bb.bl:                                            ; preds = %bb.bt, %bb.br, %bb.bq, %bb.bo, %bb.bn, %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE13format_answerCsjfnSKV9Rz3v_3h3i.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #23
          to label %.body unwind label %bb.cc, !dbg !20322

bb.bm:                                            ; preds = %_RNvXs_NtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6promptINtB4_12SelectPromptReEINtNtB8_6prompt6PromptINtNtNtBa_2ui7backend7BackendNtNtNtBa_8terminal9crossterm18CrosstermKeyReaderNtB26_17CrosstermTerminalEE13format_answerCsjfnSKV9Rz3v_3h3i.exit
    #dbg_value(ptr %i.do, !19636, !DIExpression(), !20095)
  %.not160 = icmp eq ptr %i.do, null, !dbg !20323
  br i1 %.not160, label %bb.bo, label %bb.bn, !dbg !20324

bb.bn:                                            ; preds = %bb.bm
    #dbg_value(ptr %i.do, !19441, !DIExpression(), !20096)
    #dbg_value(ptr %i.do, !19680, !DIExpression(), !20099)
    #dbg_value(ptr %i.do, !19688, !DIExpression(), !20100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !20325
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %i.do)
          to label %bb.ca unwind label %bb.bl, !dbg !20325

bb.bo:                                            ; preds = %bb.bm
  %.val167 = load ptr, ptr %i.s, align 8, !dbg !20326, !nonnull !1246, !noundef !1246
  %.val168 = load i64, ptr %i.t, align 8, !dbg !20326, !noundef !1246
    #dbg_value(ptr %i.o, !20101, !DIExpression(), !20104)
    #dbg_value(ptr %i.o, !20105, !DIExpression(), !20108)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !20327
  %i.dr = load ptr, ptr %i.dq, align 8, !dbg !20327, !nonnull !1246, !noundef !1246
  %i.ds = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !20328
  %i.dt = load i64, ptr %i.ds, align 8, !dbg !20328, !noundef !1246
  %i.du = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend25render_prompt_with_answerCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val167, i64 noundef %.val168, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dr, i64 noundef %i.dt)
          to label %bb.bp unwind label %bb.bl, !dbg !20329 ; 2 uses

bb.bp:                                            ; preds = %bb.bo
    #dbg_value(ptr %i.du, !19636, !DIExpression(), !20115)
  %.not161 = icmp eq ptr %i.du, null, !dbg !20330
  br i1 %.not161, label %bb.br, label %bb.bq, !dbg !20331

bb.bq:                                            ; preds = %bb.bp
    #dbg_value(ptr %i.du, !19443, !DIExpression(), !20116)
    #dbg_value(ptr %i.du, !19680, !DIExpression(), !20119)
    #dbg_value(ptr %i.du, !19689, !DIExpression(), !20120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !20332
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %i.du)
          to label %bb.bz unwind label %bb.bl, !dbg !20332

bb.br:                                            ; preds = %bb.bp
  %i.dv = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend12frame_finishCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2, i1 noundef zeroext true)
          to label %bb.bs unwind label %bb.bl, !dbg !20333 ; 2 uses

bb.bs:                                            ; preds = %bb.br
    #dbg_value(ptr %i.dv, !19636, !DIExpression(), !20122)
  %.not162 = icmp eq ptr %i.dv, null, !dbg !20334
  br i1 %.not162, label %bb.bu, label %bb.bt, !dbg !20335

bb.bt:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.dv, !19445, !DIExpression(), !20123)
    #dbg_value(ptr %i.dv, !19680, !DIExpression(), !20126)
    #dbg_value(ptr %i.dv, !19690, !DIExpression(), !20127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !20336
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.dv)
          to label %bb.bx unwind label %bb.bl, !dbg !20336

bb.bu:                                            ; preds = %bb.bs
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !dbg !20338
  store i64 0, ptr %0, align 8, !dbg !20337
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.bv unwind label %bb.bk, !dbg !20322

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !20322
  br label %bb.bw, !dbg !20153

bb.bw:                                            ; preds = %bb.an, %bb.cp, %bb.co, %bb.cn, %bb.cm, %bb.aa, %bb.cq, %bb.cr, %bb.af, %bb.cb, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !20339
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCs8Nb2mar7w9E_7inquire7prompts6select6prompt12SelectPromptReEECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef align 8 dereferenceable(240) %1), !dbg !20153
  ret void, !dbg !20340

bb.bx:                                            ; preds = %bb.bt
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !20341
  store i64 1, ptr %0, align 8, !dbg !20341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !20342
  br label %bb.by, !dbg !20343

bb.by:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.cb unwind label %bb.bk, !dbg !20322

bb.bz:                                            ; preds = %bb.bq
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20344
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !20344
  store i64 1, ptr %0, align 8, !dbg !20344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !20345
  br label %bb.by, !dbg !20343

bb.ca:                                            ; preds = %bb.bn
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !20346
  store i64 1, ptr %0, align 8, !dbg !20346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !20347
  br label %bb.by, !dbg !20343

bb.cb:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !20322
  br label %bb.bw, !dbg !20339

bb.cc:                                            ; preds = %bb.bl, %.body
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !dbg !20348
  unreachable, !dbg !20348

bb.cd:                                            ; preds = %bb.ai
    #dbg_value(i1 true, !19428, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !20129)
  %i.eb = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend11frame_setupCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2)
          to label %bb.ce unwind label %.loopexit.split-lp, !dbg !20349 ; 2 uses

bb.ce:                                            ; preds = %bb.cd
    #dbg_value(ptr %i.eb, !19636, !DIExpression(), !20131)
  %.not156 = icmp eq ptr %i.eb, null, !dbg !20350
  br i1 %.not156, label %bb.cg, label %bb.cf, !dbg !20351

bb.cf:                                            ; preds = %bb.ce
    #dbg_value(ptr %i.eb, !19431, !DIExpression(), !20132)
    #dbg_value(ptr %i.eb, !19680, !DIExpression(), !20135)
    #dbg_value(ptr %i.eb, !19685, !DIExpression(), !20136)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !20352
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull %i.eb)
          to label %bb.cp unwind label %.loopexit.split-lp, !dbg !20352

bb.cg:                                            ; preds = %bb.ce
  %.val165 = load ptr, ptr %i.s, align 8, !dbg !20353, !nonnull !1246, !noundef !1246
  %.val166 = load i64, ptr %i.t, align 8, !dbg !20353, !noundef !1246
  %i.ec = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend22render_canceled_promptCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val165, i64 noundef %.val166)
          to label %bb.ch unwind label %.loopexit.split-lp, !dbg !20354 ; 2 uses

bb.ch:                                            ; preds = %bb.cg
    #dbg_value(ptr %i.ec, !19636, !DIExpression(), !20138)
  %.not157 = icmp eq ptr %i.ec, null, !dbg !20355
  br i1 %.not157, label %bb.cj, label %bb.ci, !dbg !20356

bb.ci:                                            ; preds = %bb.ch
    #dbg_value(ptr %i.ec, !19433, !DIExpression(), !20139)
    #dbg_value(ptr %i.ec, !19680, !DIExpression(), !20142)
    #dbg_value(ptr %i.ec, !19686, !DIExpression(), !20143)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !20357
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noundef nonnull %i.ec)
          to label %bb.co unwind label %.loopexit.split-lp, !dbg !20357

bb.cj:                                            ; preds = %bb.ch
  %i.ed = invoke noundef ptr @_RNvXs_NtNtCs8Nb2mar7w9E_7inquire2ui7backendINtB4_7BackendNtNtNtB8_8terminal9crossterm18CrosstermKeyReaderNtBV_17CrosstermTerminalENtB4_13CommonBackend12frame_finishCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(888) %2, i1 noundef zeroext true)
          to label %bb.ck unwind label %.loopexit.split-lp, !dbg !20358 ; 2 uses

bb.ck:                                            ; preds = %bb.cj
    #dbg_value(ptr %i.ed, !19636, !DIExpression(), !20145)
  %.not158 = icmp eq ptr %i.ed, null, !dbg !20359
  br i1 %.not158, label %bb.cm, label %bb.cl, !dbg !20360

bb.cl:                                            ; preds = %bb.ck
    #dbg_value(ptr %i.ed, !19435, !DIExpression(), !20146)
    #dbg_value(ptr %i.ed, !19680, !DIExpression(), !20149)
    #dbg_value(ptr %i.ed, !19687, !DIExpression(), !20150)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !20361
  invoke void @_RNvXs1_NtCs8Nb2mar7w9E_7inquire5errorNtB5_12InquireErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtBX_2io5error5ErrorE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %i.ed)
          to label %bb.cn unwind label %.loopexit.split-lp, !dbg !20361

bb.cm:                                            ; preds = %bb.ck
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !20362
  store i64 -9223372036854775805, ptr %i.ee, align 8, !dbg !20362
  store i64 1, ptr %0, align 8, !dbg !20362
end_hunk_0
