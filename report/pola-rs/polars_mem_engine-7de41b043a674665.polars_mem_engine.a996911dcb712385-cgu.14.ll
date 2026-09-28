Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_mem_engine-7de41b043a674665.polars_mem_engine.a996911dcb712385-cgu.14?download=true
inline.NumInlined: 3189
inline.NumDeleted: 1337
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXsc_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_4ExprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone:bb.a
bb.lr:                                            ; preds = %bb.hl
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !51904
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !51905
  %.val38 = load i48, ptr %i.aaj, align 8, !dbg !51906
  %.val = load ptr, ptr %i.aai, align 16, !dbg !51907 ; 4 uses
  call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !dbg !51908
  %i.aak = call noalias noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !dbg !51909 ; 4 uses
  %i.aal = icmp eq ptr %i.aak, null, !dbg !51910
  br i1 %i.aal, label %bb.ls, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit.i82, !dbg !51911, !prof !1109

bb.ls:                                            ; preds = %bb.lr
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #31
          to label %.noexc83 unwind label %bb.lq, !dbg !51912

.noexc83:                                         ; preds = %bb.ls
  unreachable, !dbg !51912

_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit.i82: ; preds = %bb.lr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !51148), !dbg !51913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !51914
  %i.aam = getelementptr inbounds nuw i8, ptr %.val, i64 23, !dbg !51914
  %i.aan = load i8, ptr %i.aam, align 1, !dbg !51914, !range !1334, !alias.scope !51149, !noalias !51150, !noundef !1103
  %i.aao = icmp eq i8 %i.aan, -40, !dbg !51915
  br i1 %i.aao, label %bb.lt, label %bb.lu, !dbg !51915

bb.lt:                                            ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit.i82
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val) #34
          to label %bb.lw unwind label %bb.lv, !dbg !51916

bb.lu:                                            ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit.i82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val, i64 24, i1 false), !dbg !51917
  br label %bb.lw, !dbg !51918

bb.lv:                                            ; preds = %bb.lt
  %i.aap = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aak, i64 noundef 24, i64 noundef 8) #36, !dbg !51919
  br label %.body84, !dbg !51920

bb.lw:                                            ; preds = %bb.lu, %bb.lt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aak, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !51921, !noalias !51148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !51922
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !dbg !51923
  %i.aaq = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aaq, ptr noundef nonnull align 8 dereferenceable(72) %i.bj, i64 72, i1 false), !dbg !51923
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !51923
  store i48 %.val38, ptr %i.aar, align 8, !dbg !51923
  %i.aas = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !51923
  store ptr %i.aak, ptr %i.aas, align 16, !dbg !51923
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !51923
  store i64 -9223372036854775786, ptr %i.aat, align 16, !dbg !51923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !dbg !51903
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !dbg !51903
  br label %bb.it, !dbg !51173

bb.lx:                                            ; preds = %bb.hm
  %i.aau = load ptr, ptr %i.sj, align 16, !dbg !51924, !nonnull !1103, !noundef !1103
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !51925 ; 2 uses
  %i.aaw = load ptr, ptr %i.aav, align 8, !dbg !51925, !nonnull !1103, !noundef !1103
  %i.aax = atomicrmw add ptr %i.aaw, i64 1 monotonic, align 8, !dbg !51926
  %i.aay = icmp slt i64 %i.aax, 0, !dbg !51927
  br i1 %i.aay, label %bb.lz, label %bb.ma, !dbg !51927

bb.ly:                                            ; preds = %bb.hm
  tail call void @llvm.trap(), !dbg !51928
  unreachable, !dbg !51928

bb.lz:                                            ; preds = %bb.lx
  tail call void @llvm.trap(), !dbg !51929
  unreachable, !dbg !51929

bb.ma:                                            ; preds = %bb.lx
  %i.aaz = load ptr, ptr %i.aav, align 8, !dbg !51930, !nonnull !1103, !noundef !1103
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull readonly align 16 dereferenceable(16) %1, i64 16, i1 false), !dbg !51931
  %i.aba = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51932
  store ptr %i.aau, ptr %i.aba, align 16, !dbg !51932
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51932
  store ptr %i.aaz, ptr %i.abb, align 8, !dbg !51932
  %i.abc = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !51932
  store i64 -9223372036854775785, ptr %i.abc, align 16, !dbg !51932
  br label %bb.it, !dbg !51173

bb.mb:                                            ; preds = %bb.hn
  %i.abd = load ptr, ptr %i.sn, align 8, !dbg !51933, !nonnull !1103, !noundef !1103 ; 3 uses
  store ptr %i.abd, ptr %i.bi, align 8, !dbg !51934
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !dbg !51935
  invoke void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.mf unwind label %bb.md, !dbg !51935

bb.mc:                                            ; preds = %bb.hn
  tail call void @llvm.trap(), !dbg !51936
  unreachable, !dbg !51936

bb.md:                                            ; preds = %bb.mb
  %i.abe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abf = atomicrmw sub ptr %i.abd, i64 1 release, align 8, !dbg !51937, !noalias !51161
  %i.abg = icmp eq i64 %i.abf, 1, !dbg !51938
  br i1 %i.abg, label %bb.me, label %common.resume, !dbg !51938

bb.me:                                            ; preds = %bb.md
  fence acquire, !dbg !51939
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bi) #34
          to label %common.resume unwind label %bb.jb, !dbg !51940

bb.mf:                                            ; preds = %bb.mb
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51941
  store ptr %i.abd, ptr %i.abh, align 8, !dbg !51941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !dbg !51941
  %i.abi = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !51941
  store i64 -9223372036854775784, ptr %i.abi, align 16, !dbg !51941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !dbg !51942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !dbg !51942
  br label %bb.it, !dbg !51173

bb.mg:                                            ; preds = %_RNvXsd_NtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprINtB5_9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtBb_4plan7DslPlanEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.abj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abk = atomicrmw sub ptr %.val39, i64 1 release, align 8, !dbg !51943, !noalias !51162
  %i.abl = icmp eq i64 %i.abk, 1, !dbg !51944
  br i1 %i.abl, label %bb.mh, label %common.resume, !dbg !51944

bb.mh:                                            ; preds = %bb.mg
  fence acquire, !dbg !51945
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4plan7DslPlanE9drop_slowBM_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bg) #34
          to label %common.resume unwind label %bb.jb, !dbg !51946

bb.mi:                                            ; preds = %_RNvXsd_NtNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr9anonymous4exprINtB5_9SpecialEqINtNtCsgZ49sUHp3tW_5alloc4sync3ArcNtNtBb_4plan7DslPlanEENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.abm = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51947
  store ptr %.val39, ptr %i.abm, align 8, !dbg !51947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false), !dbg !51947
  %i.abn = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !51947
  store i64 -9223372036854775783, ptr %i.abn, align 16, !dbg !51947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !dbg !51948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !dbg !51948
  br label %bb.it, !dbg !51173

bb.mj:                                            ; preds = %_RNvXsB_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_13RenameAliasFnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  %i.abo = load ptr, ptr %i.ub, align 8, !dbg !51949, !nonnull !1103, !noundef !1103
  store i8 %i.su, ptr %0, align 16, !dbg !51950
  %.sroa.91452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !51950
  store i8 %.sroa.91452.0, ptr %.sroa.91452.0..sroa_idx, align 1, !dbg !51950
  %.sroa.101453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51950
  store ptr %.sroa.101453.0, ptr %.sroa.101453.0..sroa_idx, align 8, !dbg !51950
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51950
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 16, !dbg !51950
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51950
  store i64 %.sroa.15.sroa.0.0, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !51950
  %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !51950
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.15.sroa.6.0..sroa.15.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15.sroa.6, i64 24, i1 false), !dbg !51950
  %i.abp = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !51950
  store ptr %i.abo, ptr %i.abp, align 8, !dbg !51950
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !51950
  store i64 -9223372036854775782, ptr %i.abq, align 16, !dbg !51950
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.sroa.6), !dbg !51951
  br label %bb.it, !dbg !51173

bb.mk:                                            ; preds = %_RNvXsB_NtNtCsfcROwRM8ZtH_11polars_plan3dsl4exprNtB5_13RenameAliasFnNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit
  tail call void @llvm.trap(), !dbg !51952
  unreachable, !dbg !51952

bb.ml:                                            ; preds = %bb.ip
  %i.abr = landingpad { ptr, i32 }
          cleanup
  br label %.body66, !dbg !51953

.body66:                                          ; preds = %bb.is, %bb.ml
  %eh.lpad-body67 = phi { ptr, i32 } [ %i.abr, %bb.ml ], [ %i.ul, %bb.is ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEECseyIfFeUOWMb_17polars_mem_engine(ptr noalias noundef align 8 dereferenceable(24) %i.be) #32
          to label %common.resume unwind label %bb.jb, !dbg !51953

bb.mm:                                            ; preds = %bb.ir, %bb.iq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ug, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !51954, !noalias !51039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !51955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !dbg !51956
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51956
  store ptr %i.ug, ptr %i.abs, align 8, !dbg !51956
  %i.abt = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !51956
  store i64 -9223372036854775781, ptr %i.abt, align 16, !dbg !51956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !dbg !51953
  br label %bb.it, !dbg !51173
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsc_NtNtNtCsfcROwRM8ZtH_11polars_plan3dsl7options4sinkNtB5_15UnifiedSinkArgsNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 !dbg !1011 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !51957
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 201, !dbg !51958
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 202, !dbg !51959
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !51960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51961
  store ptr %0, ptr %i.a, align 8, !dbg !51961
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @966, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @967, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @143, ptr noalias noundef nonnull readonly captures(address, read_provenance) @430, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @143, ptr noalias noundef nonnull readonly captures(address, read_provenance) @968, i64 noundef 13, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @963, ptr noalias noundef nonnull readonly captures(address, read_provenance) @882, i64 noundef 13, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @964, ptr noalias noundef nonnull readonly captures(address, read_provenance) @969, i64 noundef 21, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @965), !dbg !51962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51963
  ret i1 %i.f, !dbg !51964
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCseyIfFeUOWMb_17polars_mem_engine(ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !51965 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !dbg !52186
  %i.c = tail call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !dbg !52187 ; 11 uses
  %i.d = icmp eq ptr %i.c, null, !dbg !52188
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit, !dbg !52189, !prof !1109

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #31, !dbg !52190
  unreachable, !dbg !52190

_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52137), !dbg !52191
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52139), !dbg !52192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !52193, !noalias !52137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !52193, !noalias !52137
  %i.e = load i64, ptr %.0.val, align 8, !dbg !52193, !range !1114, !alias.scope !52141, !noalias !52142, !noundef !1103 ; 4 uses
  %i.f = icmp ne i64 %i.e, 3, !dbg !52193
  tail call void @llvm.assume(i1 %i.f), !dbg !52193
  %i.g = add nsw i64 %i.e, -2, !dbg !52193
  %i.h = icmp samesign ugt i64 %i.e, 1, !dbg !52193
  %i.i = select i1 %i.h, i64 %i.g, i64 1, !dbg !52193
  switch i64 %i.i, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
    i64 6, label %bb.o
    i64 7, label %bb.p
  ], !dbg !52193

bb.c:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  unreachable, !dbg !52194

bb.d:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52195
  %i.k = load ptr, ptr %i.j, align 8, !dbg !52195, !alias.scope !52141, !noalias !52142, !nonnull !1103, !noundef !1103 ; 2 uses
  %i.l = atomicrmw add ptr %i.k, i64 1 monotonic, align 8, !dbg !52196, !noalias !52146
  %i.m = icmp slt i64 %i.l, 0, !dbg !52197
  br i1 %i.m, label %bb.r, label %bb.q, !dbg !52197

bb.e:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52148), !dbg !52198
  %i.n = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52199
  %i.o = load i64, ptr %i.n, align 8, !dbg !52199, !alias.scope !52150, !noalias !52151
  %i.p = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !52200
  %i.q = load i64, ptr %i.p, align 8, !dbg !52200, !alias.scope !52150, !noalias !52151, !noundef !1103
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !52201
  %i.s = load i64, ptr %i.r, align 8, !dbg !52201, !range !1272, !alias.scope !52150, !noalias !52151, !noundef !1103 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.val, i64 48, !dbg !52202
  %i.u = load i8, ptr %i.t, align 8, !dbg !52202, !range !1144, !alias.scope !52150, !noalias !52151, !noundef !1103
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 49, !dbg !52203
  %i.w = load i8, ptr %i.v, align 1, !dbg !52203, !range !1144, !alias.scope !52150, !noalias !52151, !noundef !1103
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !52204
  %i.y = load ptr, ptr %i.x, align 8, !dbg !52204, !alias.scope !52150, !noalias !52151, !noundef !1103 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null, !dbg !52204
  br i1 %.not.i.i.i, label %bb.g, label %bb.f, !dbg !52205

bb.f:                                             ; preds = %bb.e
  %i.z = atomicrmw add ptr %i.y, i64 1 monotonic, align 8, !dbg !52206, !noalias !52152
  %i.aa = icmp slt i64 %i.z, 0, !dbg !52207
  br i1 %i.aa, label %bb.h, label %bb.g, !dbg !52207

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 40, !dbg !52208
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !52208, !alias.scope !52150, !noalias !52151, !noundef !1103 ; 3 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, null, !dbg !52208
  br i1 %.not4.i.i.i, label %_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, label %bb.i, !dbg !52209

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.trap(), !dbg !52210
  unreachable, !dbg !52210

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8, !dbg !52211, !noalias !52152
  %i.ae = icmp slt i64 %i.ad, 0, !dbg !52212
  br i1 %i.ae, label %bb.j, label %_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i, !dbg !52212

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap(), !dbg !52213
  unreachable, !dbg !52213

_RNvXs1U_NtNtCsfcROwRM8ZtH_11polars_plan3dsl7optionsNtB6_17NDJsonReadOptionsNtNtCscgRAwXFJnXP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.i, %bb.g
  %.sroa.19.sroa.0.0.extract.trunc10.i = trunc i64 %i.s to i8, !dbg !52214
  %.sroa.19.sroa.10.0.extract.shift19.i = lshr i64 %i.s, 8, !dbg !52214
  %.sroa.19.sroa.10.0.extract.trunc20.i = trunc i64 %.sroa.19.sroa.10.0.extract.shift19.i to i8, !dbg !52214
  %.sroa.19.sroa.11.0.extract.shift29.i = and i64 %i.s, -65536, !dbg !52215
  br label %bb.aq, !dbg !52216

bb.k:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 32, !dbg !52217
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !52217, !alias.scope !52141, !noalias !52142, !noundef !1103 ; 3 uses
  %.not15.i.i = icmp eq ptr %i.ag, null, !dbg !52217
  br i1 %.not15.i.i, label %bb.t, label %bb.s, !dbg !52218

bb.l:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !52219
  %i.ai = load i8, ptr %i.ah, align 8, !dbg !52219, !range !1144, !alias.scope !52141, !noalias !52142, !noundef !1103
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.val, i64 17, !dbg !52219
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !52219, !range !1144, !alias.scope !52141, !noalias !52142, !noundef !1103
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52220
  %i.am = load ptr, ptr %i.al, align 8, !dbg !52220, !alias.scope !52141, !noalias !52142, !noundef !1103 ; 3 uses
  %.not.i.i = icmp eq ptr %i.am, null, !dbg !52220
  br i1 %.not.i.i, label %bb.ac, label %bb.ab, !dbg !52221

bb.m:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52222
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !52222, !alias.scope !52141, !noalias !52142, !nonnull !1103, !noundef !1103 ; 2 uses
  %i.ap = atomicrmw add ptr %i.ao, i64 1 monotonic, align 8, !dbg !52223, !noalias !52146
  %i.aq = icmp slt i64 %i.ap, 0, !dbg !52224
  br i1 %i.aq, label %bb.af, label %bb.ae, !dbg !52224

bb.n:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52225 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.val, i64 31, !dbg !52226
  %i.at = load i8, ptr %i.as, align 1, !dbg !52226, !range !1334, !alias.scope !52141, !noalias !52142, !noundef !1103
  %i.au = icmp eq i8 %i.at, -40, !dbg !52227
  br i1 %i.au, label %bb.ai, label %bb.aj, !dbg !52227

bb.o:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.av = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52228 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.val, i64 31, !dbg !52229
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !52229, !range !1334, !alias.scope !52141, !noalias !52142, !noundef !1103
  %i.ay = icmp eq i8 %i.ax, -40, !dbg !52230
  br i1 %i.ay, label %bb.ak, label %bb.al, !dbg !52230

bb.p:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl9file_scan10FileScanIRE13new_uninit_inCseyIfFeUOWMb_17polars_mem_engine.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52231
  %i.ba = load ptr, ptr %i.az, align 8, !dbg !52231, !alias.scope !52141, !noalias !52142, !nonnull !1103, !noundef !1103 ; 2 uses
  %i.bb = atomicrmw add ptr %i.ba, i64 1 monotonic, align 8, !dbg !52232, !noalias !52146
  %i.bc = icmp slt i64 %i.bb, 0, !dbg !52233
  br i1 %i.bc, label %bb.an, label %bb.am, !dbg !52233

bb.q:                                             ; preds = %bb.d
  %i.bd = ptrtoint ptr %i.k to i64, !dbg !52234
  br label %bb.aq, !dbg !52216

bb.r:                                             ; preds = %bb.d
  tail call void @llvm.trap(), !dbg !52235
  unreachable, !dbg !52235

bb.s:                                             ; preds = %bb.k
  %i.be = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8, !dbg !52236, !noalias !52146
  %i.bf = icmp slt i64 %i.be, 0, !dbg !52237
  br i1 %i.bf, label %bb.u, label %bb.t, !dbg !52237

bb.t:                                             ; preds = %bb.s, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 40, !dbg !52238
  %i.bh = load i16, ptr %i.bg, align 8, !dbg !52238, !alias.scope !52141, !noalias !52142
  %i.bi = zext i16 %i.bh to i64, !dbg !52238
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.val, i64 42, !dbg !52239
  %i.bk = load i8, ptr %i.bj, align 2, !dbg !52239, !range !1144, !alias.scope !52141, !noalias !52142, !noundef !1103
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.val, i64 24, !dbg !52240
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !52240, !alias.scope !52141, !noalias !52142, !noundef !1103 ; 3 uses
  %.not16.i.i = icmp eq ptr %i.bm, null, !dbg !52240
  br i1 %.not16.i.i, label %bb.w, label %bb.v, !dbg !52241

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.trap(), !dbg !52242
  unreachable, !dbg !52242

bb.v:                                             ; preds = %bb.t
  %i.bn = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8, !dbg !52243, !noalias !52146
  %i.bo = icmp slt i64 %i.bn, 0, !dbg !52244
  br i1 %i.bo, label %bb.x, label %bb.w, !dbg !52244

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.val, i64 8, !dbg !52245
  %i.bq = load ptr, ptr %i.bp, align 8, !dbg !52245, !alias.scope !52141, !noalias !52142, !noundef !1103 ; 3 uses
  %.not17.i.i = icmp eq ptr %i.bq, null, !dbg !52245
  br i1 %.not17.i.i, label %bb.z, label %bb.y, !dbg !52246

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.trap(), !dbg !52247
  unreachable, !dbg !52247

bb.y:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %.0.val, i64 16, !dbg !52245
  %i.bs = load i64, ptr %i.br, align 8, !dbg !52248, !alias.scope !52141, !noalias !52142, !noundef !1103
  %i.bt = atomicrmw add ptr %i.bq, i64 1 monotonic, align 8, !dbg !52249, !noalias !52146
  %i.bu = icmp slt i64 %i.bt, 0, !dbg !52250
  br i1 %i.bu, label %bb.aa, label %bb.z, !dbg !52250

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sroa.53.0.i.i = phi i64 [ undef, %bb.w ], [ %i.bs, %bb.y ], !dbg !52251 ; 3 uses
  %.sroa.30.2.insert.ext.i = zext nneg i8 %i.bk to i64, !dbg !52252
  %.sroa.30.2.insert.shift.i = shl nuw nsw i64 %.sroa.30.2.insert.ext.i, 16, !dbg !52252
  %.sroa.30.2.insert.insert.i = or disjoint i64 %.sroa.30.2.insert.shift.i, %i.bi, !dbg !52252
  %i.bv = inttoptr i64 %.sroa.30.2.insert.insert.i to ptr, !dbg !52252
  %i.bw = ptrtoint ptr %i.bm to i64, !dbg !52252
  %i.bx = ptrtoint ptr %i.bq to i64, !dbg !52252
  %.sroa.19.sroa.0.0.extract.trunc9.i = trunc i64 %.sroa.53.0.i.i to i8, !dbg !52252
  %.sroa.19.sroa.10.0.extract.shift17.i = lshr i64 %.sroa.53.0.i.i, 8, !dbg !52252
  %.sroa.19.sroa.10.0.extract.trunc18.i = trunc i64 %.sroa.19.sroa.10.0.extract.shift17.i to i8, !dbg !52252
  %.sroa.19.sroa.11.0.extract.shift27.i = and i64 %.sroa.53.0.i.i, -65536, !dbg !52215
  br label %bb.aq, !dbg !52216
end_hunk_0
