Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.02?download=true
inline.NumInlined: 11832
inline.NumDeleted: 4831
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0CsfcROwRM8ZtH_11polars_plan:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr), !dbg !108086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.cs, i64 24, i1 false), !dbg !108094, !alias.scope !106898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !dbg !108086
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cu, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @736)
          to label %bb.tq unwind label %bb.to, !dbg !108095

bb.tn:                                            ; preds = %bb.to, %bb.tk
  %.pn137 = phi { ptr, i32 } [ %i.awh, %bb.to ], [ %i.avq, %bb.tk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !108086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !108086
  call void @llvm.experimental.noalias.scope.decl(metadata !106899), !dbg !108096
  call void @llvm.experimental.noalias.scope.decl(metadata !106900), !dbg !108097
  call void @llvm.experimental.noalias.scope.decl(metadata !106901), !dbg !108098
  call void @llvm.experimental.noalias.scope.decl(metadata !106902), !dbg !108099
  %i.awe = load ptr, ptr %i.cv, align 8, !dbg !108100, !alias.scope !106903, !nonnull !4698, !noundef !4698
  %i.awf = atomicrmw sub ptr %i.awe, i64 1 release, align 8, !dbg !108101, !noalias !106903
  %i.awg = icmp eq i64 %i.awf, 1, !dbg !108102
  br i1 %i.awg, label %bb.tp, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit, !dbg !108102

bb.to:                                            ; preds = %bb.tm
  %i.awh = landingpad { ptr, i32 }
          cleanup
  br label %bb.tn

bb.tp:                                            ; preds = %bb.tn
  fence acquire, !dbg !108103
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cv) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit unwind label %bb.bf, !dbg !108104

bb.tq:                                            ; preds = %bb.tm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct), !dbg !108086
  %.sroa.5786.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !108086
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5786.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.cu, i64 24, i1 false), !dbg !108086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu), !dbg !108086
  store i64 4, ptr %i.cm, align 8, !dbg !108086
  call void @llvm.experimental.noalias.scope.decl(metadata !106904), !dbg !108096
  call void @llvm.experimental.noalias.scope.decl(metadata !106905), !dbg !108105
  call void @llvm.experimental.noalias.scope.decl(metadata !106906), !dbg !108106
  call void @llvm.experimental.noalias.scope.decl(metadata !106907), !dbg !108107
  %i.awi = load ptr, ptr %i.cv, align 8, !dbg !108108, !alias.scope !106908, !nonnull !4698, !noundef !4698
  %i.awj = atomicrmw sub ptr %i.awi, i64 1 release, align 8, !dbg !108109, !noalias !106908
  %i.awk = icmp eq i64 %i.awj, 1, !dbg !108110
  br i1 %i.awk, label %bb.tr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit355, !dbg !108110

bb.tr:                                            ; preds = %bb.tq
  fence acquire, !dbg !108111
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cv) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit355 unwind label %bb.tt, !dbg !108112

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.tn, %bb.tp, %bb.tt
  %.pn141 = phi { ptr, i32 } [ %i.awo, %bb.tt ], [ %.pn137, %bb.tp ], [ %.pn137, %bb.tn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !108096
  call void @llvm.experimental.noalias.scope.decl(metadata !106909), !dbg !108096
  call void @llvm.experimental.noalias.scope.decl(metadata !106910), !dbg !108113
  call void @llvm.experimental.noalias.scope.decl(metadata !106911), !dbg !108114
  call void @llvm.experimental.noalias.scope.decl(metadata !106912), !dbg !108115
  %i.awl = load ptr, ptr %i.cw, align 8, !dbg !108116, !alias.scope !106913, !nonnull !4698, !noundef !4698
  %i.awm = atomicrmw sub ptr %i.awl, i64 1 release, align 8, !dbg !108117, !noalias !106913
  %i.awn = icmp eq i64 %i.awm, 1, !dbg !108118
  br i1 %i.awn, label %bb.ts, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit357, !dbg !108118

bb.ts:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit
  fence acquire, !dbg !108119
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cw) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit357 unwind label %bb.bf, !dbg !108120

bb.tt:                                            ; preds = %bb.tr
  %i.awo = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit355: ; preds = %bb.tq, %bb.tr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !dbg !108096
  call void @llvm.experimental.noalias.scope.decl(metadata !106914), !dbg !108096
  call void @llvm.experimental.noalias.scope.decl(metadata !106915), !dbg !108121
  call void @llvm.experimental.noalias.scope.decl(metadata !106916), !dbg !108122
  call void @llvm.experimental.noalias.scope.decl(metadata !106917), !dbg !108123
  %i.awp = load ptr, ptr %i.cw, align 8, !dbg !108124, !alias.scope !106918, !nonnull !4698, !noundef !4698
  %i.awq = atomicrmw sub ptr %i.awp, i64 1 release, align 8, !dbg !108125, !noalias !106918
  %i.awr = icmp eq i64 %i.awq, 1, !dbg !108126
  br i1 %i.awr, label %bb.tu, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit359, !dbg !108126

bb.tu:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit355
  fence acquire, !dbg !108127
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cw) #51
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit359 unwind label %bb.tv, !dbg !108128

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit357: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit, %bb.ts, %bb.tv
  %.pn143 = phi { ptr, i32 } [ %i.aws, %bb.tv ], [ %.pn141, %bb.ts ], [ %.pn141, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !108096
  br label %bb.ty, !dbg !107093

bb.tv:                                            ; preds = %bb.tu
  %i.aws = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit357

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit359: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit355, %bb.tu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw), !dbg !108096
  br label %bb.tw, !dbg !107093

bb.tw:                                            ; preds = %_RNvXs1_NtCscgRAwXFJnXP_4core7convertINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEINtB5_4IntoINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferB15_EE4intoCsfcROwRM8ZtH_11polars_plan.exit329, %bb.sk, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc11collections9vec_deque8VecDequeINtNtBN_6borrow3CowNtNtCsh8eZTKRCwoO_3std4path4PathEEECsfcROwRM8ZtH_11polars_plan.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit445, %_RNvXs1_NtCscgRAwXFJnXP_4core7convertINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEINtB5_4IntoINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferB15_EE4intoCsfcROwRM8ZtH_11polars_plan.exit344, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit359
  %i.awt = getelementptr inbounds nuw i8, ptr %1, i64 283, !dbg !107315 ; 2 uses
  %i.awu = load i8, ptr %i.awt, align 1, !dbg !107315, !range !5104, !noundef !4698
  %i.awv = trunc nuw i8 %i.awu to i1, !dbg !107315
  br i1 %i.awv, label %bb.adg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit450, !dbg !107315

bb.tx:                                            ; preds = %bb.th
  %i.aww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !108129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !108130
  br label %bb.ty, !dbg !107093

_RNvXs1_NtCscgRAwXFJnXP_4core7convertINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEINtB5_4IntoINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferB15_EE4intoCsfcROwRM8ZtH_11polars_plan.exit344: ; preds = %bb.th
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !dbg !108129
  %i.awx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !108131
  %i.awy = load i64, ptr %i.awx, align 8, !dbg !108131, !noundef !4698
  %i.awz = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !108132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.awz, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false), !dbg !108133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !dbg !108130
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 32, !dbg !108132
  store i64 %i.awy, ptr %.sroa.540.0..sroa_idx, align 8, !dbg !108132
  store i64 18, ptr %i.cm, align 8, !dbg !108132
  br label %bb.tw, !dbg !108134

bb.ty:                                            ; preds = %.body323, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit475, %bb.tf, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit357, %bb.dt, %bb.sj, %.body313, %bb.tx
  %.pn204.pn = phi { ptr, i32 } [ %.pn197, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit475 ], [ %i.aub, %bb.sj ], [ %i.kj, %bb.dt ], [ %.pn143, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathECsfcROwRM8ZtH_11polars_plan.exit357 ], [ %i.aww, %bb.tx ], [ %i.avk, %bb.tf ], [ %.pn124, %.body313 ], [ %eh.lpad-body324, %.body323 ] ; 4 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %1, i64 283, !dbg !107315
  %i.axb = load i8, ptr %i.axa, align 1, !dbg !107315, !range !5104, !noundef !4698
  %i.axc = trunc nuw i8 %i.axb to i1, !dbg !107315
  br i1 %i.axc, label %bb.aet, label %bb.aes, !dbg !107315

bb.tz:                                            ; preds = %.lr.ph1228, %bb.vx
  %i.axd = phi ptr [ %i.kr, %.lr.ph1228 ], [ %i.bce, %bb.vx ] ; 4 uses
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 16, !dbg !108135
  store ptr %i.axe, ptr %i.ks, align 8, !dbg !108136, !alias.scope !106895
  %i.axf = load i64, ptr %i.kv, align 8, !dbg !108137, !alias.scope !106919, !noundef !4698 ; 2 uses
  %i.axg = add i64 %i.axf, 1, !dbg !108138
  store i64 %i.axg, ptr %i.kv, align 8, !dbg !108138, !alias.scope !106919
  store i64 %i.axf, ptr %i.kw, align 8, !dbg !108139
  store i8 1, ptr %i.kx, align 2, !dbg !108140
  store ptr %i.axd, ptr %i.kz, align 8, !dbg !108140
  store ptr null, ptr %i.ky, align 8, !dbg !108140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !dbg !108141
  %.val222 = load ptr, ptr %i.axd, align 8, !dbg !108141, !nonnull !4698, !noundef !4698
  %i.axh = getelementptr i8, ptr %i.axd, i64 8, !dbg !108141
  %.val223 = load i64, ptr %i.axh, align 8, !dbg !108141, !noundef !4698
  %i.axi = getelementptr inbounds nuw i8, ptr %.val222, i64 16, !dbg !108142
  invoke void @_RNvMNtCs2mZqlW55729_12polars_utils7pl_pathNtB2_6PlPath6scheme(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ee, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.axi, i64 noundef %.val223)
          to label %bb.ub unwind label %bb.ua, !dbg !108143

bb.ua:                                            ; preds = %bb.tz
  %i.axj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !108144
  br label %.loopexit.split-lp945, !dbg !108145

bb.ub:                                            ; preds = %bb.tz
  %i.axk = load i64, ptr %i.ee, align 8, !dbg !108141, !range !5975, !noundef !4698
  %i.axl = and i64 %i.axk, 14, !dbg !108144
  %switch = icmp eq i64 %i.axl, 10, !dbg !108144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee), !dbg !108144
  br i1 %switch, label %.critedge, label %bb.vl, !dbg !108144

.critedge:                                        ; preds = %bb.ub
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !dbg !108146
  %i.axm = load ptr, ptr %i.la, align 8, !dbg !108146, !nonnull !4698, !align !4821, !noundef !4698 ; 11 uses
  %i.axn = load ptr, ptr %i.ky, align 8, !dbg !108147, !noalias !106922, !noundef !4698 ; 2 uses
  %.not.i360 = icmp eq ptr %i.axn, null, !dbg !108147
  br i1 %.not.i360, label %bb.uc, label %bb.ud, !dbg !108148

bb.uc:                                            ; preds = %.critedge
  %i.axo = load ptr, ptr %i.kz, align 8, !dbg !108149, !noalias !106922, !nonnull !4698, !align !4821, !noundef !4698 ; 2 uses
  %.pre.i363 = load ptr, ptr %i.axo, align 8, !dbg !108150, !noalias !106922
  br label %bb.ud, !dbg !108151

bb.ud:                                            ; preds = %bb.uc, %.critedge
  %i.axp = phi ptr [ %.pre.i363, %bb.uc ], [ %i.axn, %.critedge ], !dbg !108150
  %.sroa.09.0.i = phi ptr [ %i.axo, %bb.uc ], [ %i.ky, %.critedge ], !dbg !108152
  %i.axq = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 8, !dbg !108150
  %i.axr = load i64, ptr %i.axq, align 8, !dbg !108150, !noalias !106922, !noundef !4698
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axp, i64 16, !dbg !108153
  %i.axt = invoke { ptr, i64 } @_RNvMNtCs2mZqlW55729_12polars_utils7pl_pathNtB2_6PlPath12strip_scheme(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.axs, i64 noundef %i.axr)
          to label %.noexc364.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108154 ; 2 uses

.noexc364.a:                                      ; preds = %bb.ud
  %i.axu = extractvalue { ptr, i64 } %i.axt, 0, !dbg !108154 ; 14 uses
  %i.axv = extractvalue { ptr, i64 } %i.axt, 1, !dbg !108154 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !108155, !noalias !106925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !108155, !noalias !106925
  invoke void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.axu, i64 noundef %i.axv, ptr noalias noundef nonnull readonly captures(address, read_provenance) @576, i64 noundef range(i64 4, 16) 4)
          to label %.noexc365.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108156

.noexc365.a:                                      ; preds = %.noexc364.a
  invoke fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.z, ptr noalias noundef align 8 dereferenceable(104) %i.y)
          to label %.noexc366.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108157

.noexc366.a:                                      ; preds = %.noexc365.a
  %i.axw = load i64, ptr %i.z, align 8, !dbg !108158, !range !4740, !noalias !106925, !noundef !4698
  %i.axx = trunc nuw i64 %i.axw to i1, !dbg !108159
  %i.axy = load i64, ptr %i.lb, align 8, !dbg !108159, !noalias !106925 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !108160, !noalias !106925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !108160, !noalias !106925
  br i1 %i.axx, label %bb.ue, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !108161

bb.ue:                                            ; preds = %.noexc366.a
  %i.axz = add i64 %i.axy, 4, !dbg !108162        ; 17 uses
  %i.aya = icmp eq i64 %i.axz, 0, !dbg !108163    ; 2 uses
  br i1 %i.aya, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.uf, !dbg !108163

bb.uf:                                            ; preds = %bb.ue
  %.not.i.i362 = icmp ult i64 %i.axz, %i.axv, !dbg !108164
  br i1 %.not.i.i362, label %bb.ug, label %.split.i.i, !dbg !108164

.split.i.i:                                       ; preds = %bb.uf
  %i.ayb = icmp eq i64 %i.axz, %i.axv, !dbg !108165
  br i1 %i.ayb, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108166

bb.ug:                                            ; preds = %bb.uf
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.axz, !dbg !108167
  %i.ayd = load i8, ptr %i.ayc, align 1, !dbg !108167, !alias.scope !106926, !noalias !106922, !noundef !4698
  %i.aye = icmp sgt i8 %i.ayd, -65, !dbg !108168
  br i1 %i.aye, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108166

_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.ug, %.split.i.i, %bb.ue
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.axz, !dbg !108169 ; 3 uses
  %i.ayg = sub nuw i64 %i.axv, %i.axz, !dbg !108170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !108171, !noalias !106927
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !108171, !noalias !106927
  invoke void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.w, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ayf, i64 noundef %i.ayg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @578, i64 noundef range(i64 4, 16) 15)
          to label %.noexc367.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108172

.noexc367.a:                                      ; preds = %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  invoke fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef align 8 dereferenceable(104) %i.w)
          to label %.noexc368 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108173

.noexc368:                                        ; preds = %.noexc367.a
  %i.ayh = load i64, ptr %i.x, align 8, !dbg !108174, !range !4740, !noalias !106927, !noundef !4698
  %i.ayi = trunc nuw i64 %i.ayh to i1, !dbg !108175
  %i.ayj = load i64, ptr %i.lc, align 8, !dbg !108175, !noalias !106927 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !108176, !noalias !106927
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !108176, !noalias !106927
  br i1 %i.ayi, label %bb.uh, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread, !dbg !108177

bb.uh:                                            ; preds = %.noexc368
  %i.ayk = add i64 %i.ayj, %i.axz, !dbg !108178   ; 19 uses
  %i.ayl = icmp eq i64 %i.ayk, 0, !dbg !108179    ; 2 uses
  br i1 %i.ayl, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %bb.ui, !dbg !108179

bb.ui:                                            ; preds = %bb.uh
  %.not.i58.i = icmp ult i64 %i.ayk, %i.axv, !dbg !108180
  br i1 %.not.i58.i, label %bb.uj, label %.split.i59.i, !dbg !108180

.split.i59.i:                                     ; preds = %bb.ui
  %i.aym = icmp eq i64 %i.ayk, %i.axv, !dbg !108181
  br i1 %i.aym, label %bb.uk, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108182

bb.uj:                                            ; preds = %bb.ui
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.ayk, !dbg !108183
  %i.ayo = load i8, ptr %i.ayn, align 1, !dbg !108183, !alias.scope !106929, !noalias !106922, !noundef !4698
  %i.ayp = icmp sgt i8 %i.ayo, -65, !dbg !108184
  br i1 %i.ayp, label %bb.uk, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108182

bb.uk:                                            ; preds = %bb.uj, %.split.i59.i
  %i.ayq = icmp samesign ult i64 %i.ayk, 16, !dbg !108185
  br i1 %i.ayq, label %.lr.ph.i.i.i, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i, !dbg !108185

.lr.ph.i.i.i:                                     ; preds = %bb.uk, %bb.ul
  %.sroa.01.05.i.i.i = phi i64 [ %i.ayu, %bb.ul ], [ 0, %bb.uk ] ; 2 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axu, i64 %.sroa.01.05.i.i.i, !dbg !108186
  %i.ays = load i8, ptr %i.ayr, align 1, !dbg !108186, !alias.scope !106930, !noalias !106922, !noundef !4698
  %i.ayt = icmp eq i8 %i.ays, 47, !dbg !108186
  br i1 %i.ayt, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.ul, !dbg !108186

bb.ul:                                            ; preds = %.lr.ph.i.i.i
  %i.ayu = add nuw nsw i64 %.sroa.01.05.i.i.i, 1, !dbg !108187 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ayu, %i.ayk, !dbg !108188
  br i1 %exitcond.not.i.i.i, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %.lr.ph.i.i.i, !dbg !108188

_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i: ; preds = %bb.uk
  %i.ayv = invoke { i64, i64 } @_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.axu, i64 noundef range(i64 0, -9223372036854775808) %i.ayk)
          to label %.noexc370 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108189

.noexc370:                                        ; preds = %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  %i.ayw = extractvalue { i64, i64 } %i.ayv, 0, !dbg !108190
  %i.ayx = icmp eq i64 %i.ayw, 1, !dbg !108191
  br i1 %i.ayx, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, !dbg !108192

_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i: ; preds = %bb.ul, %.noexc370, %bb.uh
  %i.ayy = icmp samesign ult i64 %i.axv, 16, !dbg !108193
  br i1 %i.ayy, label %.preheader.i.i62.i, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.i, !dbg !108193

.preheader.i.i62.i:                               ; preds = %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  %.not.i.i63.i = icmp eq i64 %i.axv, 0, !dbg !108194
  br i1 %.not.i.i63.i, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.thread.i, label %.lr.ph.i.i64.i, !dbg !108194

.lr.ph.i.i64.i:                                   ; preds = %.preheader.i.i62.i, %bb.um
  %.sroa.01.05.i.i65.i = phi i64 [ %i.azc, %bb.um ], [ 0, %.preheader.i.i62.i ] ; 2 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.axu, i64 %.sroa.01.05.i.i65.i, !dbg !108195
  %i.aza = load i8, ptr %i.ayz, align 1, !dbg !108195, !alias.scope !106931, !noalias !106922, !noundef !4698
  %i.azb = icmp eq i8 %i.aza, 63, !dbg !108195
  br i1 %i.azb, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.um, !dbg !108195

bb.um:                                            ; preds = %.lr.ph.i.i64.i
  %i.azc = add nuw nsw i64 %.sroa.01.05.i.i65.i, 1, !dbg !108196 ; 2 uses
  %exitcond.not.i.i66.i = icmp eq i64 %i.azc, %i.axv, !dbg !108194
  br i1 %exitcond.not.i.i66.i, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.thread.i, label %.lr.ph.i.i64.i, !dbg !108194

_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.i: ; preds = %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i
  %i.azd = invoke { i64, i64 } @_RNvNtNtCscgRAwXFJnXP_4core5slice6memchr14memchr_aligned(i8 noundef 63, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.axu, i64 noundef range(i64 0, -9223372036854775808) %i.axv)
          to label %.noexc372 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108197

.noexc372:                                        ; preds = %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.i
  %i.aze = extractvalue { i64, i64 } %i.azd, 0, !dbg !108198
  %i.azf = icmp eq i64 %i.aze, 1, !dbg !108199
  br i1 %i.azf, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread, label %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.thread.i, !dbg !108200

_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.thread.i: ; preds = %bb.um, %.noexc372, %.preheader.i.i62.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !108201, !noalias !106922
  %i.azg = icmp eq i64 %i.axy, 0, !dbg !108202
  br i1 %i.azg, label %bb.up, label %bb.un, !dbg !108202

bb.un:                                            ; preds = %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.thread.i
  %.not.i68.i = icmp ult i64 %i.axy, %i.axv, !dbg !108203
  br i1 %.not.i68.i, label %bb.uo, label %.split.i69.i, !dbg !108203

.split.i69.i:                                     ; preds = %bb.un
  %i.azh = icmp eq i64 %i.axy, %i.axv, !dbg !108204
  br i1 %i.azh, label %bb.up, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108205

bb.uo:                                            ; preds = %bb.un
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.axy, !dbg !108206
  %i.azj = load i8, ptr %i.azi, align 1, !dbg !108206, !alias.scope !106933, !noalias !106922, !noundef !4698
  %i.azk = icmp sgt i8 %i.azj, -65, !dbg !108207
  br i1 %i.azk, label %bb.up, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108205

bb.up:                                            ; preds = %bb.uo, %.split.i69.i, %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.thread.i
  store ptr %i.axu, ptr %i.ae, align 8, !dbg !108208, !noalias !106922
  store i64 %i.axy, ptr %i.ld, align 8, !dbg !108208, !noalias !106922
  %.not.i72.i = icmp ugt i64 %i.axz, %i.ayk, !dbg !108209
  br i1 %.not.i72.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, label %bb.uq, !dbg !108209

bb.uq:                                            ; preds = %bb.up
  br i1 %i.aya, label %bb.us, label %bb.ur, !dbg !108210

bb.ur:                                            ; preds = %bb.uq
  %.not5.i.i = icmp ult i64 %i.axz, %i.axv, !dbg !108211
  br i1 %.not5.i.i, label %bb.ut, label %.split.i73.i, !dbg !108211

bb.us:                                            ; preds = %bb.ut, %.split.i73.i, %bb.uq
  br i1 %i.ayl, label %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread33.i, label %bb.uu, !dbg !108212

_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread33.i: ; preds = %bb.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !108213, !noalias !106922
  br label %bb.uw, !dbg !108214

.split.i73.i:                                     ; preds = %bb.ur
  %i.azl = icmp eq i64 %i.axz, %i.axv, !dbg !108215
  br i1 %i.azl, label %bb.us, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108216

bb.ut:                                            ; preds = %bb.ur
  %i.azm = load i8, ptr %i.ayf, align 1, !dbg !108217, !alias.scope !106936, !noalias !106922, !noundef !4698
  %i.azn = icmp sgt i8 %i.azm, -65, !dbg !108218
  br i1 %i.azn, label %bb.us, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108216

bb.uu:                                            ; preds = %bb.us
  %.not6.i.i = icmp ult i64 %i.ayk, %i.axv, !dbg !108219
  br i1 %.not6.i.i, label %bb.uv, label %.split7.i.i, !dbg !108219

.split7.i.i:                                      ; preds = %bb.uu
  %i.azo = icmp eq i64 %i.ayk, %i.axv, !dbg !108220
  br i1 %i.azo, label %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108221

bb.uv:                                            ; preds = %bb.uu
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.ayk, !dbg !108222
  %i.azq = load i8, ptr %i.azp, align 1, !dbg !108222, !alias.scope !106936, !noalias !106922, !noundef !4698
  %i.azr = icmp sgt i8 %i.azq, -65, !dbg !108223
  br i1 %i.azr, label %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108221

_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.uv, %.split7.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !108213, !noalias !106922
  %i.azs = add i64 %i.ayk, 15, !dbg !108224       ; 2 uses
  %i.azt = icmp eq i64 %i.azs, 0, !dbg !108214
  br i1 %i.azt, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.i, label %bb.uw, !dbg !108214

bb.uw:                                            ; preds = %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread33.i
  %i.azu = phi i64 [ 15, %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread33.i ], [ %i.azs, %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ] ; 6 uses
  %.not.i76.i = icmp ult i64 %i.azu, %i.axv, !dbg !108225
  br i1 %.not.i76.i, label %bb.ux, label %.split.i77.i, !dbg !108225

.split.i77.i:                                     ; preds = %bb.uw
  %i.azv = icmp eq i64 %i.azu, %i.axv, !dbg !108226
  br i1 %i.azv, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108227

bb.ux:                                            ; preds = %bb.uw
  %i.azw = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.azu, !dbg !108228
  %i.azx = load i8, ptr %i.azw, align 1, !dbg !108228, !alias.scope !106938, !noalias !106922, !noundef !4698
  %i.azy = icmp sgt i8 %i.azx, -65, !dbg !108229
  br i1 %i.azy, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.i, label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, !dbg !108227

_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.i: ; preds = %bb.ux, %.split.i77.i, %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %i.azz = phi i64 [ %i.azu, %bb.ux ], [ %i.axv, %.split.i77.i ], [ 0, %_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ] ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axu, i64 %i.azz, !dbg !108230
  %i.bab = sub nuw i64 %i.axv, %i.azz, !dbg !108231
  store ptr %i.baa, ptr %i.ad, align 8, !dbg !108232, !noalias !106922
  store i64 %i.bab, ptr %i.le, align 8, !dbg !108232, !noalias !106922
  call void @llvm.experimental.noalias.scope.decl(metadata !106939), !dbg !108233
  %i.bac = load i64, ptr %i.axm, align 8, !dbg !108234, !range !4858, !alias.scope !106939, !noalias !106922, !noundef !4698
  %.not.i81.i = icmp eq i64 %i.bac, 2, !dbg !108234
  br i1 %.not.i81.i, label %bb.uy, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !108235

bb.uy:                                            ; preds = %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !108236, !noalias !106940
  invoke void @_RNvXNtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB2_12CloudOptionsNtNtCscgRAwXFJnXP_4core7default7Default7default(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.v)
          to label %.noexc375.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108237

.noexc375.a:                                      ; preds = %bb.uy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.axm, ptr noundef nonnull align 8 dereferenceable(144) %i.v, i64 144, i1 false), !dbg !108238, !noalias !106922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !108239, !noalias !106940
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !108240

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %.noexc375.a, %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.i
  %i.bad = getelementptr inbounds nuw i8, ptr %i.axm, i64 104, !dbg !108241 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106941), !dbg !108242
  %i.bae = load i64, ptr %i.bad, align 8, !dbg !108243, !range !5129, !noalias !106922, !noundef !4698
  switch i64 %i.bae, label %.split.i [
    i64 5, label %bb.uz
    i64 0, label %bb.vb
  ], !dbg !108244

bb.uz:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !108245, !noalias !106942
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 1, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108245

.noexc376:                                        ; preds = %bb.uz
  %i.baf = load i64, ptr %i.u, align 8, !dbg !108245, !range !4740, !noalias !106942, !noundef !4698
  %i.bag = trunc nuw i64 %i.baf to i1, !dbg !108246
  %i.bah = load i64, ptr %i.lf, align 8, !dbg !108247, !range !4741, !noalias !106942, !noundef !4698 ; 3 uses
  br i1 %i.bag, label %bb.va, label %.thread1553, !dbg !108246, !prof !4710

bb.va:                                            ; preds = %.noexc376
  %i.bai = load i64, ptr %i.lg, align 8, !dbg !108248, !noalias !106942
  br label %.invoke, !dbg !108249

.thread1553:                                      ; preds = %.noexc376
  %i.baj = load ptr, ptr %i.lg, align 8, !dbg !108250, !noalias !106942, !nonnull !4698, !noundef !4698
  %i.bak = icmp ne i64 %i.bah, 0, !dbg !108251
  call void @llvm.assume(i1 %i.bak), !dbg !108252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !108253, !noalias !106942
  store i64 0, ptr %i.bad, align 8, !dbg !108254, !alias.scope !106941, !noalias !106922
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.axm, i64 112, !dbg !108254
  store i64 %i.bah, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !dbg !108254, !alias.scope !106941, !noalias !106922
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.axm, i64 120, !dbg !108254
  store ptr %i.baj, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !dbg !108254, !alias.scope !106941, !noalias !106922
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.axm, i64 128, !dbg !108254
  store i64 0, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !dbg !108254, !alias.scope !106941, !noalias !106922
  br label %bb.vd, !dbg !108255

_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke: ; preds = %.split.i77.i, %bb.ux, %bb.up, %.split.i73.i, %bb.ut, %.split7.i.i, %bb.uv, %.split.i69.i, %bb.uo, %.split.i59.i, %bb.uj, %.split.i.i, %bb.ug
  %i.bal = phi i64 [ %i.axz, %bb.up ], [ 0, %.split.i69.i ], [ 0, %.split.i59.i ], [ %i.axz, %.split.i.i ], [ %i.axz, %bb.ug ], [ 0, %bb.uj ], [ 0, %bb.uo ], [ %i.axz, %bb.uv ], [ %i.axz, %.split7.i.i ], [ %i.axz, %bb.ut ], [ %i.axz, %.split.i73.i ], [ %i.azu, %bb.ux ], [ %i.azu, %.split.i77.i ]
  %i.bam = phi i64 [ %i.ayk, %bb.up ], [ %i.axy, %.split.i69.i ], [ %i.ayk, %.split.i59.i ], [ %i.axv, %.split.i.i ], [ %i.axv, %bb.ug ], [ %i.ayk, %bb.uj ], [ %i.axy, %bb.uo ], [ %i.ayk, %bb.uv ], [ %i.ayk, %.split7.i.i ], [ %i.ayk, %bb.ut ], [ %i.ayk, %.split.i73.i ], [ %i.axv, %bb.ux ], [ %i.axv, %.split.i77.i ]
  %i.ban = phi ptr [ @581, %bb.up ], [ @580, %.split.i69.i ], [ @579, %.split.i59.i ], [ @577, %.split.i.i ], [ @577, %bb.ug ], [ @579, %bb.uj ], [ @580, %bb.uo ], [ @581, %bb.uv ], [ @581, %.split7.i.i ], [ @581, %bb.ut ], [ @581, %.split.i73.i ], [ @582, %bb.ux ], [ @582, %.split.i77.i ]
  invoke void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.axu, i64 noundef %i.axv, i64 noundef %i.bal, i64 noundef %i.bam, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ban) #50
          to label %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108256

_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.cont: ; preds = %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke
  unreachable

bb.vb:                                            ; preds = %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsfcROwRM8ZtH_11polars_plan.exit.i
  %.phi.trans.insert1429 = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %.pre1430 = load i64, ptr %.phi.trans.insert1429, align 8, !dbg !108257, !noalias !106922 ; 2 uses
  %.not53.i = icmp eq i64 %.pre1430, 0, !dbg !108255
  br i1 %.not53.i, label %bb.vd, label %bb.vc, !dbg !108255

bb.vc:                                            ; preds = %bb.vb
  %i.bao = getelementptr inbounds nuw i8, ptr %i.axm, i64 120, !dbg !108258
  %i.bap = load ptr, ptr %i.bao, align 8, !dbg !108258, !noalias !106922, !nonnull !4698, !noundef !4698
  %i.baq = getelementptr [32 x i8], ptr %i.bap, i64 %.pre1430, !dbg !108259
  %i.bar = getelementptr i8, ptr %i.baq, i64 -32, !dbg !108259
  %i.bas = load i8, ptr %i.bar, align 8, !dbg !108260, !range !5835, !noalias !106922, !noundef !4698
  %i.bat = icmp eq i8 %i.bas, 2, !dbg !108261
  br i1 %i.bat, label %.split.i, label %bb.vd, !dbg !108261

bb.vd:                                            ; preds = %.thread1553, %bb.vc, %bb.vb
  %i.bau = getelementptr inbounds nuw i8, ptr %i.axm, i64 112, !dbg !108262 ; 2 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %i.axm, i64 128, !dbg !108257 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !dbg !108263, !noalias !106922
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !108264, !noalias !106922
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, i64 noundef %i.ayj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc379 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108264

.noexc379:                                        ; preds = %bb.vd
  %i.baw = load i64, ptr %i.aa, align 8, !dbg !108264, !range !4740, !noalias !106922, !noundef !4698
  %i.bax = trunc nuw i64 %i.baw to i1, !dbg !108265
  %i.bay = load i64, ptr %i.lh, align 8, !dbg !108266, !range !4741, !noalias !106922, !noundef !4698 ; 3 uses
  br i1 %i.bax, label %bb.ve, label %bb.vf, !dbg !108265, !prof !4710

bb.ve:                                            ; preds = %.noexc379
  %i.baz = load i64, ptr %i.li, align 8, !dbg !108267, !noalias !106922
  br label %.invoke, !dbg !108268

.invoke:                                          ; preds = %bb.va, %bb.ve
  %i.bba = phi i64 [ %i.bay, %bb.ve ], [ %i.bah, %bb.va ]
  %i.bbb = phi i64 [ %i.baz, %bb.ve ], [ %i.bai, %bb.va ]
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.bba, i64 %i.bbb) #46
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108269

.cont:                                            ; preds = %.invoke
  unreachable

bb.vf:                                            ; preds = %.noexc379
  %i.bbc = load ptr, ptr %i.li, align 8, !dbg !108270, !noalias !106922, !nonnull !4698, !noundef !4698 ; 2 uses
  %i.bbd = icmp ule i64 %i.ayj, %i.bay, !dbg !108271
  call void @llvm.assume(i1 %i.bbd), !dbg !108272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !108273, !noalias !106922
  %.not54.i = icmp eq i64 %i.ayj, 0, !dbg !108274
  br i1 %.not54.i, label %bb.vg, label %bb.vk, !dbg !108274

bb.vg:                                            ; preds = %bb.vk, %bb.vf
  store i8 2, ptr %i.ac, align 8, !dbg !108263, !noalias !106922
  store i64 %i.bay, ptr %i.lj, align 8, !dbg !108263, !noalias !106922
  store ptr %i.bbc, ptr %.sroa.433.0..sroa_idx.i, align 8, !dbg !108263, !noalias !106922
  store i64 %i.ayj, ptr %.sroa.534.0..sroa_idx.i, align 8, !dbg !108263, !noalias !106922
  %i.bbe = load i64, ptr %i.bav, align 8, !dbg !108275, !alias.scope !106945, !noundef !4698 ; 3 uses
  %i.bbf = load i64, ptr %i.bau, align 8, !dbg !108276, !range !5082, !alias.scope !106945, !noundef !4698
  %i.bbg = icmp eq i64 %i.bbe, %i.bbf, !dbg !108277
  br i1 %i.bbg, label %bb.vh, label %.noexc381, !dbg !108277

bb.vh:                                            ; preds = %bb.vg
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB7_6string6StringEE8grow_oneCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bau)
          to label %.noexc381 unwind label %bb.vi, !dbg !108278, !noalias !106946

bb.vi:                                            ; preds = %bb.vh
  %i.bbh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtCsgZ49sUHp3tW_5alloc6string6StringEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac) #45
          to label %.body484 unwind label %bb.vj, !dbg !108279

bb.vj:                                            ; preds = %bb.vi
  %i.bbi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !108280
  unreachable, !dbg !108280

.noexc381:                                        ; preds = %bb.vh, %bb.vg
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.axm, i64 120, !dbg !108281
  %i.bbk = load ptr, ptr %i.bbj, align 8, !dbg !108281, !alias.scope !106945, !nonnull !4698, !noundef !4698
  %i.bbl = getelementptr inbounds nuw [32 x i8], ptr %i.bbk, i64 %i.bbe, !dbg !108282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bbl, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !dbg !108283
  %i.bbm = add i64 %i.bbe, 1, !dbg !108284
  store i64 %i.bbm, ptr %i.bav, align 8, !dbg !108284, !alias.scope !106945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !108285, !noalias !106922
  br label %.split.i, !dbg !108286

bb.vk:                                            ; preds = %bb.vf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bbc, ptr nonnull align 1 %i.ayf, i64 %i.ayj, i1 false), !dbg !108287, !noalias !106922
  br label %bb.vg, !dbg !108288

.split.i:                                         ; preds = %.noexc381, %bb.vc, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCslpwjCj2YNBy_9polars_io5cloud7options12CloudOptionsE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsfcROwRM8ZtH_11polars_plan.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !dbg !108289, !noalias !106922
  store ptr %i.ae, ptr %i.ab, align 8, !dbg !108289, !noalias !106922
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.438.0..sroa_idx.i, align 8, !dbg !108289, !noalias !106922
  store ptr %i.ad, ptr %i.lk, align 8, !dbg !108289, !noalias !106922
  store ptr @_RNvXs1i_NtCscgRAwXFJnXP_4core3fmtReNtB6_7Display3fmtCsfcROwRM8ZtH_11polars_plan, ptr %.sroa.442.0..sroa_idx.i, align 8, !dbg !108289, !noalias !106922
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ed, ptr noundef nonnull @584, ptr noundef nonnull %i.ab)
          to label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108290

bb.vl:                                            ; preds = %bb.ub
  %.sroa.0648.0.copyload.pre1432.pre = load ptr, ptr %i.ky, align 8, !dbg !108291
  br label %bb.wa, !dbg !108292

_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !108293, !noalias !106922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !108294, !noalias !106922
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !108295, !noalias !106922
  %.pr894 = load i64, ptr %i.ed, align 8, !dbg !108146
  %.not148.not = icmp eq i64 %.pr894, -9223372036854775808, !dbg !108146
  br i1 %.not148.not, label %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread, label %bb.vm, !dbg !108296

bb.vm:                                            ; preds = %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.ed, i64 24, i1 false), !dbg !108297
  %i.bbn = invoke { ptr, i64 } @_RINvMs4_NtCs2mZqlW55729_12polars_utils7pl_pathNtB6_9PlRefPath3newNtNtCsgZ49sUHp3tW_5alloc6string6StringECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ec)
          to label %bb.vn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108298 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.i, %bb.vd, %bb.uz, %bb.uy, %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit67.i, %_RNvXs2_NtNtCscgRAwXFJnXP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i, %.noexc367.a, %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, %.noexc365.a, %.noexc364.a, %bb.ud, %_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit80.thread.i.invoke, %.invoke, %bb.vm
  %lpad.loopexit.split-lp1913 = landingpad { ptr, i32 }
          cleanup
  br label %.body484

bb.vn:                                            ; preds = %bb.vm
  %i.bbo = extractvalue { ptr, i64 } %i.bbn, 0, !dbg !108298 ; 3 uses
  %i.bbp = extractvalue { ptr, i64 } %i.bbn, 1, !dbg !108298 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106949), !dbg !108299
  %i.bbq = load ptr, ptr %i.ky, align 8, !dbg !108300, !alias.scope !106949, !noundef !4698 ; 2 uses
  %i.bbr = icmp eq ptr %i.bbq, null, !dbg !108300
  br i1 %i.bbr, label %bb.vr, label %bb.vo, !dbg !108300

bb.vo:                                            ; preds = %bb.vn
  %i.bbs = atomicrmw sub ptr %i.bbq, i64 1 release, align 8, !dbg !108301, !noalias !106950
  %i.bbt = icmp eq i64 %i.bbs, 1, !dbg !108302
  br i1 %i.bbt, label %bb.vp, label %bb.vr, !dbg !108302

bb.vp:                                            ; preds = %bb.vo
  fence acquire, !dbg !108303
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ky) #51
          to label %bb.vr unwind label %bb.vq, !dbg !108304

bb.vq:                                            ; preds = %bb.vp
  %i.bbu = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr %i.kx, align 2, !dbg !108299
  store ptr %i.bbo, ptr %i.ky, align 8, !dbg !108299
  store i64 %i.bbp, ptr %i.kz, align 8, !dbg !108299
  br label %.body484, !dbg !108299

bb.vr:                                            ; preds = %bb.vp, %bb.vn, %bb.vo
  store i8 1, ptr %i.kx, align 2, !dbg !108299
  store ptr %i.bbo, ptr %i.ky, align 8, !dbg !108299
  store i64 %i.bbp, ptr %i.kz, align 8, !dbg !108299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !108305
  br label %bb.wa, !dbg !108306

.body484:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.vi, %bb.vq
  %.pn149.pn = phi { ptr, i32 } [ %i.bbu, %bb.vq ], [ %i.bbh, %bb.vi ], [ %lpad.loopexit.split-lp1913, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !108305
  br label %.loopexit.split-lp945, !dbg !108307

_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i64.i, %.noexc370, %.noexc372, %.noexc368, %.noexc366.a, %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed), !dbg !108305
  store i8 0, ptr %i.kx, align 2, !dbg !108308
  %.sroa.0551.0.copyload = load ptr, ptr %i.ky, align 8, !dbg !108308 ; 2 uses
  %.sroa.5552.0.copyload = load i64, ptr %i.kz, align 8, !dbg !108308 ; 2 uses
  %.not.i384 = icmp eq ptr %.sroa.0551.0.copyload, null, !dbg !108309
  br i1 %.not.i384, label %bb.vt, label %bb.vs, !dbg !108310

bb.vs:                                            ; preds = %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread
  %i.bbv = insertvalue { ptr, i64 } poison, ptr %.sroa.0551.0.copyload, 0, !dbg !108311
  %i.bbw = insertvalue { ptr, i64 } %i.bbv, i64 %.sroa.5552.0.copyload, 1, !dbg !108311
  br label %_RNvMs1_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE10into_ownedCsfcROwRM8ZtH_11polars_plan.exit, !dbg !108311

bb.vt:                                            ; preds = %_RNCNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0s_0CsfcROwRM8ZtH_11polars_plan.exit.thread
  %i.bbx = inttoptr i64 %.sroa.5552.0.copyload to ptr, !dbg !108312
  %i.bby = invoke { ptr, i64 } @_RNvXNtCsgZ49sUHp3tW_5alloc6borrowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathNtB2_7ToOwned8to_ownedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bbx)
          to label %_RNvMs1_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE10into_ownedCsfcROwRM8ZtH_11polars_plan.exit unwind label %.loopexit.split-lp945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108313

_RNvMs1_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE10into_ownedCsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.vs, %bb.vt
  %.merged.i = phi { ptr, i64 } [ %i.bbw, %bb.vs ], [ %i.bby, %bb.vt ], !dbg !108314 ; 2 uses
  %i.bbz = extractvalue { ptr, i64 } %.merged.i, 0, !dbg !108308
  %i.bca = extractvalue { ptr, i64 } %.merged.i, 1, !dbg !108308
  invoke void @_RNvMNCNvNtCslpwjCj2YNBy_9polars_io10path_utils17expand_paths_hive0INtB2_8OutPathsNCB2_0E4pushCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.ll, ptr noundef nonnull %i.bbz, i64 noundef %i.bca)
          to label %bb.vu unwind label %.loopexit.split-lp945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108315

.loopexit.split-lp945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.vt, %_RNvMs1_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE10into_ownedCsfcROwRM8ZtH_11polars_plan.exit, %bb.te, %bb.td, %bb.we, %bb.sp, %bb.wd
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp945

bb.vu:                                            ; preds = %_RNvMs1_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathE10into_ownedCsfcROwRM8ZtH_11polars_plan.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !dbg !108316
  %i.bcb = load i64, ptr %i.kw, align 8, !dbg !108317, !noundef !4698
  invoke void @_RNvMNtCslpwjCj2YNBy_9polars_io10path_utilsNtB2_14HiveIdxTracker6update(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.eb, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.bcb)
          to label %bb.vv unwind label %bb.vw, !dbg !108318

bb.vv:                                            ; preds = %bb.vu
  %i.bcc = load i64, ptr %i.eb, align 8, !dbg !108319, !range !5135, !alias.scope !106952, !noundef !4698 ; 2 uses
  %.not.i386 = icmp eq i64 %i.bcc, 18, !dbg !108319
  br i1 %.not.i386, label %bb.vx, label %bb.vy, !dbg !108320

bb.vw:                                            ; preds = %bb.vu
  %i.bcd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !108321
  br label %.loopexit.split-lp945, !dbg !108307

bb.vx:                                            ; preds = %bb.vv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !108321
  store i8 0, ptr %i.kx, align 2, !dbg !108077
  %i.bce = load ptr, ptr %i.ks, align 8, !dbg !107307, !alias.scope !106895, !nonnull !4698, !noundef !4698 ; 2 uses
  %i.bcf = load ptr, ptr %i.kt, align 8, !dbg !107306, !alias.scope !106895, !nonnull !4698, !noundef !4698
  %i.bcg = icmp eq ptr %i.bce, %i.bcf, !dbg !107308
  br i1 %i.bcg, label %.loopexit, label %bb.tz, !dbg !107309

bb.vy:                                            ; preds = %bb.vv
  %.sroa.8555.0..sroa_idx556 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8, !dbg !108322
  %.sroa.2558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8, !dbg !108323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2558.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.8555.0..sroa_idx556, i64 64, i1 false), !dbg !108322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !dbg !108321
  store i64 %i.bcc, ptr %i.cm, align 8, !dbg !108323, !alias.scope !106953
  br label %bb.vz, !dbg !108324

bb.vz:                                            ; preds = %bb.acw, %bb.acx, %bb.acz, %bb.adb, %bb.vy
  %i.bch = getelementptr inbounds nuw i8, ptr %1, i64 282, !dbg !108077 ; 2 uses
  %i.bci = load i8, ptr %i.bch, align 2, !dbg !108077, !range !5104, !noundef !4698
  %i.bcj = trunc nuw i8 %i.bci to i1, !dbg !108077
  br i1 %i.bcj, label %bb.adc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathEECsfcROwRM8ZtH_11polars_plan.exit445, !dbg !108077

bb.wa:                                            ; preds = %bb.vl, %bb.vr
  %.sroa.0648.0.copyload.pre1432 = phi ptr [ %.sroa.0648.0.copyload.pre1432.pre, %bb.vl ], [ %i.bbo, %bb.vr ], !dbg !108291 ; 2 uses
  %i.bck = getelementptr i8, ptr %1, i64 80, !dbg !108325
  %.val240 = load i64, ptr %i.bck, align 8, !dbg !108325, !noundef !4698 ; 2 uses
  %i.bcl = icmp ult i64 %.val240, 576460752303423488, !dbg !108326
  call void @llvm.assume(i1 %i.bcl), !dbg !108327
  %i.bcm = getelementptr inbounds nuw i8, ptr %1, i64 264, !dbg !108328
  store i64 %.val240, ptr %i.bcm, align 8, !dbg !108328
  %i.bcn = getelementptr inbounds nuw i8, ptr %1, i64 280, !dbg !108329 ; 2 uses
  %i.bco = load i8, ptr %i.bcn, align 8, !dbg !108329, !range !5104, !noundef !4698
  %i.bcp = trunc nuw i8 %i.bco to i1, !dbg !108329
  br i1 %i.bcp, label %bb.we, label %bb.wb, !dbg !108329

bb.wb:                                            ; preds = %._crit_edge1431, %bb.wa
  %.sroa.0648.0.copyload = phi ptr [ %.sroa.0648.0.copyload.pre, %._crit_edge1431 ], [ %.sroa.0648.0.copyload.pre1432, %bb.wa ], !dbg !108291 ; 2 uses
  store i8 0, ptr %i.kx, align 2, !dbg !108291
  %.sroa.5649.0.copyload = load i64, ptr %i.kz, align 8, !dbg !108291 ; 2 uses
  %.not.i388 = icmp eq ptr %.sroa.0648.0.copyload, null, !dbg !108330
  br i1 %.not.i388, label %bb.wd, label %bb.wc, !dbg !108331

bb.wc:                                            ; preds = %bb.wb
  %i.bcq = insertvalue { ptr, i64 } poison, ptr %.sroa.0648.0.copyload, 0, !dbg !108332
  %i.bcr = insertvalue { ptr, i64 } %i.bcq, i64 %.sroa.5649.0.copyload, 1, !dbg !108332
  br label %bb.wh, !dbg !108332

bb.wd:                                            ; preds = %bb.wb
  %i.bcs = inttoptr i64 %.sroa.5649.0.copyload to ptr, !dbg !108333
  %i.bct = invoke { ptr, i64 } @_RNvXNtCsgZ49sUHp3tW_5alloc6borrowNtNtCs2mZqlW55729_12polars_utils7pl_path9PlRefPathNtB2_7ToOwned8to_ownedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bcs)
          to label %bb.wh unwind label %.loopexit.split-lp945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108334

bb.we:                                            ; preds = %bb.wa
  %.not.i392 = icmp eq ptr %.sroa.0648.0.copyload.pre1432, null, !dbg !108335
  %i.bcu = load ptr, ptr %i.kz, align 8, !dbg !108336, !alias.scope !106955, !nonnull !4698, !align !4821
  %.sroa.0.0.i393 = select i1 %.not.i392, ptr %i.bcu, ptr %i.ky, !dbg !108336 ; 2 uses
  %.val220 = load ptr, ptr %.sroa.0.0.i393, align 8, !dbg !108337, !nonnull !4698, !noundef !4698
  %i.bcv = getelementptr i8, ptr %.sroa.0.0.i393, i64 8, !dbg !108337
  %.val221 = load i64, ptr %i.bcv, align 8, !dbg !108337, !noundef !4698
  %i.bcw = getelementptr inbounds nuw i8, ptr %.val220, i64 16, !dbg !108338
  %i.bcx = invoke noundef zeroext i1 @_RNvNtCslpwjCj2YNBy_9polars_io10path_utils8has_glob(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bcw, i64 noundef %.val221)
          to label %bb.wf unwind label %.loopexit.split-lp945.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !108339

bb.wf:                                            ; preds = %bb.we
  br i1 %i.bcx, label %bb.wg, label %._crit_edge1431, !dbg !108339

._crit_edge1431:                                  ; preds = %bb.wf
  %.sroa.0648.0.copyload.pre = load ptr, ptr %i.ky, align 8, !dbg !108291
  br label %bb.wb, !dbg !108339

bb.wg:                                            ; preds = %bb.wf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !dbg !108340
  %i.bcy = load i64, ptr %i.kw, align 8, !dbg !108341, !noundef !4698
  invoke void @_RNvMNtCslpwjCj2YNBy_9polars_io10path_utilsNtB2_14HiveIdxTracker6update(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ea, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.bcy)
          to label %bb.wi unwind label %bb.wj, !dbg !108342

bb.wh:                                            ; preds = %bb.wd, %bb.wc
  %.merged.i389 = phi { ptr, i64 } [ %i.bcr, %bb.wc ], [ %i.bct, %bb.wd ], !dbg !108343 ; 2 uses
  %i.bcz = extractvalue { ptr, i64 } %.merged.i389, 0, !dbg !108291
  %i.bda = extractvalue { ptr, i64 } %.merged.i389, 1, !dbg !108291
  %i.bdb = load ptr, ptr %i.la, align 8, !dbg !108344, !nonnull !4698, !align !4821, !noundef !4698 ; 2 uses
  %i.bdc = load i64, ptr %i.bdb, align 8, !dbg !108345, !range !4858, !alias.scope !106956, !noundef !4698
end_hunk_0
