Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_cli-d3ae94fb06329e99.iceoryx2_cli.d11e4d958562b065-cgu.0?download=true
inline.NumInlined: 156
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvXNtCs2wk0oZsur5i_6anyhow7contextINtNtCs8Chj7Szqq0n_4core6result6ResultNtCsgamQOnaNDe8_14cargo_metadata8MetadataNtNtB1c_6errors5ErrorEINtB5_7ContextB1a_B1P_E7contextReECshX8c74mBP8L_12iceoryx2_cli:bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i64 208, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNtCs2wk0oZsur5i_6anyhow7contextINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCsbqH9stoieM8_5alloc6string6StringNtNtCsigunbJSLHCW_3std3env8VarErrorEINtB5_7ContextB1a_B1M_E7contextReECshX8c74mBP8L_12iceoryx2_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !11, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.e = call fastcc noundef nonnull ptr @_RINvXNtNtCs2wk0oZsur5i_6anyhow7context3extNtNtCsigunbJSLHCW_3std3env8VarErrorNtB3_8StdError11ext_contextReECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXNtCs2wk0oZsur5i_6anyhow7contextINtNtCs8Chj7Szqq0n_4core6result6ResultNtNtCsigunbJSLHCW_3std7process10ExitStatusNtNtNtBD_2io5error5ErrorEINtB5_7ContextB1a_B1Q_E12with_contextNtNtCsbqH9stoieM8_5alloc6string6StringNCNvXs1_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3A_23ExternalCommandExecutorNtB3A_15CommandExecutor7execute0EB3C_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load i32, ptr %1, align 8, !range !181, !noundef !4
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  store ptr %i.g, ptr %i.a, align 8, !noalias !182
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsG_NtCsigunbJSLHCW_3std4pathNtB5_7PathBufNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !182
  call void @_RNvNvNtCsbqH9stoieM8_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @10, ptr noundef nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  %i.h = call fastcc noundef nonnull ptr @_RINvXNtNtCs2wk0oZsur5i_6anyhow7context3extNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCsbqH9stoieM8_5alloc6string6StringECshX8c74mBP8L_12iceoryx2_cli(ptr noundef nonnull %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load i32, ptr %i.j, align 4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.k, ptr %i.l, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvXNtNtCs2wk0oZsur5i_6anyhow7context3extNtNtCsgamQOnaNDe8_14cargo_metadata6errors5ErrorNtB3_8StdError11ext_contextReECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = tail call noundef align 8 ptr @_RNvNtCs2wk0oZsur5i_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @5) #20
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs2_NtCsigunbJSLHCW_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = call noundef nonnull ptr @_RINvMNtCs2wk0oZsur5i_6anyhow5errorNtB5_5Error22construct_from_contextReNtNtCsgamQOnaNDe8_14cargo_metadata6errors5ErrorECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a) #20
  ret ptr %i.c
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvXNtNtCs2wk0oZsur5i_6anyhow7context3extNtNtCsigunbJSLHCW_3std3env8VarErrorNtB3_8StdError11ext_contextReECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = tail call noundef align 8 ptr @_RNvNtCs2wk0oZsur5i_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @7) #20
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs2_NtCsigunbJSLHCW_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = call noundef nonnull ptr @_RINvMNtCs2wk0oZsur5i_6anyhow5errorNtB5_5Error22construct_from_contextReNtNtCsigunbJSLHCW_3std3env8VarErrorECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a) #20
  ret ptr %i.c
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_RINvXNtNtCs2wk0oZsur5i_6anyhow7context3extNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorNtB3_8StdError11ext_contextNtNtCsbqH9stoieM8_5alloc6string6StringECshX8c74mBP8L_12iceoryx2_cli(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %0, ptr %i.b, align 8
  %i.c = call noundef align 8 ptr @_RNvNtCs2wk0oZsur5i_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @9) #20
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMs2_NtCsigunbJSLHCW_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.e = call noundef nonnull ptr @_RINvMNtCs2wk0oZsur5i_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCsbqH9stoieM8_5alloc6string6StringNtNtNtCs8Chj7Szqq0n_4core2io5error5ErrorECshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a) #20
  ret ptr %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs8Chj7Szqq0n_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3str4iter5SplitcENvYNtNtCsigunbJSLHCW_3std4path7PathBufINtNtBc_7convert4FromReE4fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB2u_4find5checkB1r_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3K_15HostEnvironmentNtB3K_11Environment13install_paths0E0INtNtNtBc_3ops12control_flow11ControlFlowB1r_EEB3M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 22 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8, !noalias !217
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !217
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 3 uses
  %.promoted.i = load i8, ptr %i.f, align 1, !alias.scope !218
  %.promoted25.i = load i64, ptr %1, align 8, !alias.scope !216 ; 4 uses
  %i.g = trunc nuw i8 %.promoted.i to i1
  br i1 %i.g, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2e_ENvYB2e_INtNtBa_7convert4FromB2c_E4fromNCINvNvBK_4find5checkB2e_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB4H_15HostEnvironmentNtB4H_11Environment13install_paths0E0E0B2O_EB4J_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !218, !nonnull !4, !noundef !4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !218, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !219, !noundef !4 ; 7 uses
  %.not.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !216 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i8, ptr %i.t, align 8, !range !220, !alias.scope !216
  %i.v = trunc nuw i8 %i.u to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !216 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %.promoted29.i = load i64, ptr %i.j, align 8, !alias.scope !219
  br label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  store i8 1, ptr %i.f, align 1, !alias.scope !221
  %.not.i3.i.i.us.i = icmp ne i64 %.pre2.i.i.i.i, %.promoted25.i
  %.not.i3.i.i.us.fr.i = freeze i1 %.not.i3.i.i.us.i ; 2 uses
  %or.cond.not.i.i.i.us.i = or i1 %.not.i3.i.i.us.fr.i, %i.v
  %i.y = sub nuw i64 %.pre2.i.i.i.i, %.promoted25.i ; 6 uses
  %.sroa.0.1.i.i.us.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted25.i
  br i1 %or.cond.not.i.i.i.us.i, label %.lr.ph.split.us.split.us.i, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2e_ENvYB2e_INtNtBa_7convert4FromB2c_E4fromNCINvNvBK_4find5checkB2e_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB4H_15HostEnvironmentNtB4H_11Environment13install_paths0E0E0B2O_EB4J_.exit

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !226
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.y, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #20, !noalias !227
  %i.z = load i64, ptr %i.a, align 8, !range !11, !noalias !226, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1                ; 2 uses
  %i.ab = load i64, ptr %i.w, align 8, !range !12, !noalias !226, !noundef !4 ; 6 uses
  br i1 %.not.i3.i.i.us.fr.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.i, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.us.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.us.i: ; preds = %.lr.ph.split.us.split.us.i
  br i1 %i.aa, label %.split.us.i, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.us.i, !prof !10

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.us.i: ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.us.i
  %i.ac = load ptr, ptr %i.x, align 8, !noalias !226, !nonnull !4, !noundef !4
  %i.ad = icmp samesign ule i64 %i.y, %i.ab
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  store i64 %i.ab, ptr %i.b, align 8, !noalias !225
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !225
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.ae = call noundef zeroext i1 @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtBV_15HostEnvironmentNtBV_11Environment13install_paths0INtB7_5FnMutTRNtNtCsigunbJSLHCW_3std4path7PathBufEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #20, !noalias !229
  br i1 %i.ae, label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.us.i, label %._crit_edge.sink.split.sink.split.i

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.us.i: ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.us.i
  %.sroa.08.0.copyload.us.us.us.i = load i64, ptr %i.b, align 8, !alias.scope !230, !noalias !231 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !230, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  %.not.i.us.us.us.i = icmp eq i64 %.sroa.08.0.copyload.us.us.us.i, -1
  br i1 %.not.i.us.us.us.i, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2e_ENvYB2e_INtNtBa_7convert4FromB2c_E4fromNCINvNvBK_4find5checkB2e_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB4H_15HostEnvironmentNtB4H_11Environment13install_paths0E0E0B2O_EB4J_.exit.sink.split, label %.split34.us.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.i: ; preds = %.lr.ph.split.us.split.us.i
  br i1 %i.aa, label %.split.us.i, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.i, !prof !10

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.i: ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.i
  %i.af = load ptr, ptr %i.x, align 8, !noalias !226, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp samesign ule i64 %i.y, %i.ab
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull readonly align 1 %.sroa.0.1.i.i.us.i, i64 range(i64 0, -9223372036854775808) %i.y, i1 false), !noalias !232
  store i64 %i.ab, ptr %i.b, align 8, !noalias !225
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !225
  store i64 %i.y, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !225
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.ah = call noundef zeroext i1 @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtBV_15HostEnvironmentNtBV_11Environment13install_paths0INtB7_5FnMutTRNtNtCsigunbJSLHCW_3std4path7PathBufEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #20, !noalias !229
  br i1 %i.ah, label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.i, label %._crit_edge.sink.split.sink.split.i

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.i: ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.i
  %.sroa.08.0.copyload.us.us.i = load i64, ptr %i.b, align 8, !alias.scope !230, !noalias !231 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !230, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  %.not.i.us.us.i = icmp eq i64 %.sroa.08.0.copyload.us.us.i, -1
  br i1 %.not.i.us.us.i, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2e_ENvYB2e_INtNtBa_7convert4FromB2c_E4fromNCINvNvBK_4find5checkB2e_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB4H_15HostEnvironmentNtB4H_11Environment13install_paths0E0E0B2O_EB4J_.exit.sink.split, label %.split34.us.i

.lr.ph.split.i:                                   ; preds = %bb.g, %.lr.ph.split.preheader.i
  %i.ai = phi i64 [ %i.be, %bb.g ], [ %.promoted29.i, %.lr.ph.split.preheader.i ] ; 3 uses
  %.lcssa192728.i = phi i64 [ %.lcssa1926.i, %bb.g ], [ %.promoted25.i, %.lr.ph.split.preheader.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.aj = icmp ult i64 %i.l, %i.ai
  br i1 %i.aj, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i, label %.lr.ph.split.preheader.i.i.i.i

.lr.ph.split.preheader.i.i.i.i:                   ; preds = %.lr.ph.split.i
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !219 ; 2 uses
  br label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i.i
  %i.ak = phi i64 [ %i.ay, %bb.d ], [ %i.ai, %.lr.ph.split.preheader.i.i.i.i ] ; 4 uses
  %i.al = sub nuw i64 %i.l, %i.ak                 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ak ; 2 uses
  %i.an = icmp samesign ult i64 %i.al, 16
  br i1 %i.an, label %.preheader.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.l, %i.ak
  br i1 %.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i
  %i.ao = call { i64, i64 } @_RNvNtNtCs8Chj7Szqq0n_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef range(i64 0, -9223372036854775808) %i.al) #20, !noalias !233 ; 2 uses
  %i.ap = extractvalue { i64, i64 } %i.ao, 0
  %i.aq = extractvalue { i64, i64 } %i.ao, 1
  %i.ar = trunc nuw i64 %i.ap to i1
  br i1 %i.ar, label %.loopexit.i.i.i.i, label %.loopexit15.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i.i = phi i64 [ %i.av, %bb.c ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.04.011.i.i.i.i.i
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !234, !noalias !233, !noundef !4
  %i.au = icmp eq i8 %i.at, %.pre.i.i.i.i
  br i1 %i.au, label %.loopexit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.av = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.av, %i.al
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit15.i.i.i.i, label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i.i = phi i64 [ %i.aq, %bb.b ], [ %.sroa.04.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.aw = icmp ult i64 %.sroa.5.0.i.i.i.i.i, %i.al
  call void @llvm.assume(i1 %i.aw)
  %i.ax = add i64 %i.ak, 1
  %i.ay = add i64 %i.ax, %.sroa.5.0.i.i.i.i.i     ; 10 uses
  store i64 %i.ay, ptr %i.j, align 8, !alias.scope !219
  %.not11.i.i.i.i = icmp ult i64 %i.ay, %i.p
  %.not12.i.i.i.i = icmp ugt i64 %i.ay, %.val1.i.i.i
  %or.cond.i.i.i.i = or i1 %.not11.i.i.i.i, %.not12.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.d, label %bb.e

.loopexit15.i.i.i.i:                              ; preds = %bb.b, %.preheader.i.i.i.i.i, %bb.c
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !219
  br label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i.i
  %i.az = icmp ult i64 %i.l, %i.ay
  br i1 %i.az, label %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i, label %.lr.ph.split.i.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i.i
  %i.ba = sub nuw i64 %i.ay, %i.p                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ba
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bb, ptr nonnull %i.m, i64 %i.p), !noalias !235
  %i.bc = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bc, label %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i, label %bb.d

_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i: ; preds = %bb.e
  store i64 %i.ay, ptr %1, align 8, !alias.scope !218
  br label %select.unfold.i

_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i: ; preds = %bb.d, %.loopexit15.i.i.i.i, %.lr.ph.split.i
  %i.bd = phi i64 [ %i.ai, %.lr.ph.split.i ], [ %i.l, %.loopexit15.i.i.i.i ], [ %i.ay, %bb.d ]
  store i8 1, ptr %i.f, align 1, !alias.scope !221
  %.not.i3.i.i.i = icmp ne i64 %.pre2.i.i.i.i, %.lcssa192728.i
  %or.cond.not.i.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.i
  br i1 %or.cond.not.i.i.i.i, label %select.unfold.i, label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2e_ENvYB2e_INtNtBa_7convert4FromB2c_E4fromNCINvNvBK_4find5checkB2e_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB4H_15HostEnvironmentNtB4H_11Environment13install_paths0E0E0B2O_EB4J_.exit

select.unfold.i:                                  ; preds = %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i
  %i.be = phi i64 [ %i.ay, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %i.bd, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i ]
  %.lcssa1926.i = phi i64 [ %i.ay, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.lcssa192728.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i ]
  %i.bf = phi i1 [ false, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ true, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i ]
  %.pn.i = phi i64 [ %i.ba, %_RNvXs_NtNtCs8Chj7Szqq0n_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i ], [ %.pre2.i.i.i.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i ] ; 2 uses
  %.sroa.4.1.i.i.i = sub nuw i64 %.pn.i, %.lcssa192728.i ; 4 uses
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.lcssa192728.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !226
  call void @_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.sroa.4.1.i.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1) #20, !noalias !227
  %i.bg = load i64, ptr %i.a, align 8, !range !11, !noalias !226, !noundef !4
  %i.bh = trunc nuw i64 %i.bg to i1
  %i.bi = load i64, ptr %i.w, align 8, !range !12, !noalias !226, !noundef !4 ; 3 uses
  br i1 %i.bh, label %.split.us.i, label %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.i, !prof !10

.split.us.i:                                      ; preds = %select.unfold.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.i, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.us.i
  %.us-phi.i = phi i64 [ %i.ab, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.i ], [ %i.ab, %_RNvMsf_NtNtCs8Chj7Szqq0n_4core3str4iterINtB5_13SplitInternalcE7get_endCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.us.us.us.i ], [ %i.bi, %select.unfold.i ]
  %i.bj = load i64, ptr %i.x, align 8, !noalias !226
  call void @_RNvNtCsbqH9stoieM8_5alloc7raw_vec12handle_error(i64 noundef %.us-phi.i, i64 %i.bj) #23, !noalias !227
  unreachable

_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.i: ; preds = %select.unfold.i
  %i.bk = load ptr, ptr %i.x, align 8, !noalias !226, !nonnull !4, !noundef !4 ; 2 uses
  %i.bl = icmp samesign ule i64 %.sroa.4.1.i.i.i, %i.bi
  call void @llvm.assume(i1 %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !226
  %.not.i.i.i.i5.i = icmp eq i64 %.pn.i, %.lcssa192728.i
  br i1 %.not.i.i.i.i5.i, label %_RNvYNvYNtNtCsigunbJSLHCW_3std4path7PathBufINtNtCs8Chj7Szqq0n_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCshX8c74mBP8L_12iceoryx2_cli.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bk, ptr nonnull readonly align 1 %.sroa.0.1.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.4.1.i.i.i, i1 false), !noalias !232
  br label %_RNvYNvYNtNtCsigunbJSLHCW_3std4path7PathBufINtNtCs8Chj7Szqq0n_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCshX8c74mBP8L_12iceoryx2_cli.exit.i.i

_RNvYNvYNtNtCsigunbJSLHCW_3std4path7PathBufINtNtCs8Chj7Szqq0n_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCshX8c74mBP8L_12iceoryx2_cli.exit.i.i: ; preds = %bb.f, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.i
  store i64 %i.bi, ptr %i.b, align 8, !noalias !225
  store ptr %i.bk, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !225
  store i64 %.sroa.4.1.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !225
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.bm = call noundef zeroext i1 @_RNvXs1_NtNtNtCs8Chj7Szqq0n_4core3ops8function5implsQNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtBV_15HostEnvironmentNtBV_11Environment13install_paths0INtB7_5FnMutTRNtNtCsigunbJSLHCW_3std4path7PathBufEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b) #20, !noalias !229
  br i1 %i.bm, label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.i, label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.thread.i

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.thread.i: ; preds = %_RNvYNvYNtNtCsigunbJSLHCW_3std4path7PathBufINtNtCs8Chj7Szqq0n_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCshX8c74mBP8L_12iceoryx2_cli.exit.i.i
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #20, !noalias !229
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #20, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  br label %bb.g

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.i: ; preds = %_RNvYNvYNtNtCsigunbJSLHCW_3std4path7PathBufINtNtCs8Chj7Szqq0n_4core7convert4FromReE4fromINtNtNtBJ_3ops8function5FnMutTB1f_EE8call_mutCshX8c74mBP8L_12iceoryx2_cli.exit.i.i
  %.sroa.08.0.copyload.i = load i64, ptr %i.b, align 8, !alias.scope !230, !noalias !231 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, i64 16, i1 false), !alias.scope !230, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  %.not.i.i = icmp eq i64 %.sroa.08.0.copyload.i, -1
  br i1 %.not.i.i, label %bb.g, label %.split34.us.i

._crit_edge.sink.split.sink.split.i:              ; preds = %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.i, %_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCshX8c74mBP8L_12iceoryx2_cli.exit.i.i.i.i.us.us.us.i
  call void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #20, !noalias !229
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCshX8c74mBP8L_12iceoryx2_cli(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #20, !noalias !229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !225
  br label %_RINvYINtNtNtCs8Chj7Szqq0n_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBQ_8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB2e_ENvYB2e_INtNtBa_7convert4FromB2c_E4fromNCINvNvBK_4find5checkB2e_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB4H_15HostEnvironmentNtB4H_11Environment13install_paths0E0E0B2O_EB4J_.exit.sink.split

.split34.us.i:                                    ; preds = %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.us.i
  %.us-phi35.i = phi i64 [ %.sroa.08.0.copyload.us.us.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.i ], [ %.sroa.08.0.copyload.us.us.us.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.us.us.us.i ], [ %.sroa.08.0.copyload.i, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldReNtNtCsigunbJSLHCW_3std4path7PathBufuINtNtNtBa_3ops12control_flow11ControlFlowB11_ENvYB11_INtNtBa_7convert4FromBZ_E4fromNCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB11_QNCNvXs_NtCshX8c74mBP8L_12iceoryx2_cli7commandNtB3Y_15HostEnvironmentNtB3Y_11Environment13install_paths0E0E0B40_.exit.i ]
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_0
