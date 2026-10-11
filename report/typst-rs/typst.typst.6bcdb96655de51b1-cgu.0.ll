Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RNvXs2C_NtCs9fPPV5zPXBl_5typst4argsNtB6_11PdfStandardNtNtCsj1PC5XHMKi0_12clap_builder6derive9ValueEnum17to_possible_value:bb.a
bb.au:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8, !alias.scope !44092, !noalias !44093
  %.sroa.4.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @1030, ptr %.sroa.4.0..sroa_idx.i156, align 8, !alias.scope !44092, !noalias !44093
  %.sroa.5.0..sroa_idx9.i157 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx9.i157, align 8, !alias.scope !44092, !noalias !44093
  %i.du = getelementptr inbounds nuw i8, ptr %i.s, i64 48 ; 2 uses
  store i64 -1, ptr %i.du, align 8, !alias.scope !44092, !noalias !44093
  %i.dv = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %i.dv, align 8, !alias.scope !44092, !noalias !44093
  %.sroa.10.24..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.24..sroa_idx.i158, align 8, !alias.scope !44092, !noalias !44093
  %.sroa.11.24..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  store i64 0, ptr %.sroa.11.24..sroa_idx.i159, align 8, !alias.scope !44092, !noalias !44093
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store i8 0, ptr %i.dw, align 8, !alias.scope !44092, !noalias !44093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44094)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44095
  invoke void @_RNvXs2_NtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1031, i64 noundef range(i64 4, 774) 8)
          to label %_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i161 unwind label %bb.av, !noalias !44096

bb.av:                                            ; preds = %bb.au
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i161: ; preds = %bb.au
  %i.dy = load i64, ptr %i.b, align 8, !range !55, !noalias !44095, !noundef !28 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit166, label %bb.aw

bb.aw:                                            ; preds = %_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i161
  %.sroa.4.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i160, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i162, i64 16, i1 false), !noalias !44095
  br label %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit166

_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit166: ; preds = %_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i161, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44095
  store i64 %i.dy, ptr %i.du, align 8, !alias.scope !44094, !noalias !44097
  %.sroa.6.0..sroa_idx4.i164 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i164, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i160, i64 16, i1 false), !noalias !44097
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i160)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.s, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.ba

bb.ax:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i64 0, ptr %i.r, align 8, !alias.scope !44098, !noalias !44099
  %.sroa.4.0..sroa_idx.i167 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @1032, ptr %.sroa.4.0..sroa_idx.i167, align 8, !alias.scope !44098, !noalias !44099
  %.sroa.5.0..sroa_idx9.i168 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 4, ptr %.sroa.5.0..sroa_idx9.i168, align 8, !alias.scope !44098, !noalias !44099
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 2 uses
  store i64 -1, ptr %i.ea, align 8, !alias.scope !44098, !noalias !44099
  %i.eb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %i.eb, align 8, !alias.scope !44098, !noalias !44099
  %.sroa.10.24..sroa_idx.i169 = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.24..sroa_idx.i169, align 8, !alias.scope !44098, !noalias !44099
  %.sroa.11.24..sroa_idx.i170 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 0, ptr %.sroa.11.24..sroa_idx.i170, align 8, !alias.scope !44098, !noalias !44099
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  store i8 0, ptr %i.ec, align 8, !alias.scope !44098, !noalias !44099
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44100)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44101
  invoke void @_RNvXs2_NtNtCsj1PC5XHMKi0_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCs3oUPovFnLWP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @544, i64 noundef range(i64 4, 774) 8)
          to label %_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i172 unwind label %bb.ay, !noalias !44102

bb.ay:                                            ; preds = %bb.ax
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i172: ; preds = %bb.ax
  %i.ee = load i64, ptr %i.a, align 8, !range !55, !noalias !44101, !noundef !28 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, -1
  br i1 %i.ef, label %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit177, label %bb.az

bb.az:                                            ; preds = %_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i172
  %.sroa.4.0..sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i171, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i173, i64 16, i1 false), !noalias !44101
  br label %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit177

_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit177: ; preds = %_RNvXsh_NtNtCsj1PC5XHMKi0_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCs9fPPV5zPXBl_5typst.exit.i172, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44101
  store i64 %i.ee, ptr %i.ea, align 8, !alias.scope !44100, !noalias !44103
  %.sroa.6.0..sroa_idx4.i175 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i175, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i171, i64 16, i1 false), !noalias !44103
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i171)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit177, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit166, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit155, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit144, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit133, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit122, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit111, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit100, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit89, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit78, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit67, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit56, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit45, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit34, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit23, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit12, %_RINvMNtNtCsj1PC5XHMKi0_12clap_builder7builder14possible_valueNtB3_13PossibleValue4helpReECs9fPPV5zPXBl_5typst.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXs2_NtCs9fPPV5zPXBl_5typst5worldNtB5_11SystemFilesNtNtCsc4241EHy6Do_9typst_kit5files10FileLoader4load(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 8 %1, i16 noundef range(i16 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.830 = alloca [32 x i8], align 8          ; 4 uses
  %i.l = alloca [2 x i8], align 2                 ; 2 uses
  store i16 %2, ptr %i.l, align 2
  %i.m = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, i64 8) acquire, align 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.i, ptr %i.h, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.b
  %i.o = load i16, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8EMPTY_ID, align 8, !range !30, !noundef !28
  %i.p = icmp eq i16 %2, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit
  %i.q = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, i64 8) acquire, align 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit22, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit22

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit22: ; preds = %bb.c, %bb.d
  %i.s = load i16, ptr @_RNvNtCs9fPPV5zPXBl_5typst5world8STDIN_ID, align 8, !range !30, !noundef !28
  %i.t = icmp eq i16 %2, %i.s
  br i1 %i.t, label %bb.h, label %bb.g

bb.e:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !44126
  %i.u = call noundef align 16 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44126 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newAhj0_ECs9fPPV5zPXBl_5typst.exit, !prof !29

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 32) #61, !noalias !44126
  unreachable

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newAhj0_ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.e
  store i64 1, ptr %i.u, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i128 0, ptr %.sroa.5.0..sroa_idx.i, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @39, ptr %i.x, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.ah

bb.g:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call fastcc void @_RNvMs1_NtCs9fPPV5zPXBl_5typst5worldNtB5_11SystemFiles4root(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.j, ptr noundef nonnull align 8 %1, i16 noundef %2)
  %i.y = load i32, ptr %i.j, align 8, !range !31, !noundef !28 ; 2 uses
  %.not = icmp eq i32 %i.y, -1
  br i1 %.not, label %bb.ab, label %bb.aa

bb.h:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !44127
  store i64 0, ptr %i.e, align 8, !noalias !44127
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.z, align 8, !noalias !44127
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.aa, align 8, !noalias !44127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !44127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !44127
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio5stdin()
          to label %bb.l unwind label %bb.k, !noalias !44127

bb.i:                                             ; preds = %3, %.thread.i, %bb.k
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %3 ], [ %lpad.thr_comm.i.a, %.thread.i ], [ %i.ad, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44128)
  %.val.i.i = load i64, ptr %i.e, align 8, !range !37, !alias.scope !44128, !noalias !44127, !noundef !28 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i, 0
  br i1 %i.ac, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val1.i.i = load ptr, ptr %i.z, align 8, !alias.scope !44128, !noalias !44127, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44129
  br label %common.resume

bb.k:                                             ; preds = %bb.l, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.l:                                             ; preds = %bb.h
  store ptr %i.ab, ptr %i.c, align 8, !noalias !44127
  %i.ae = invoke { i64, ptr } @_RNvXs3_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_5StdinNtNtNtCs1xwejQucwHj_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.m unwind label %bb.k, !noalias !44127 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.af = extractvalue { i64, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, ptr } %i.ae, 1      ; 9 uses
  store i64 %i.af, ptr %i.d, align 8, !noalias !44127
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !noalias !44127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !44127
  %i.ai = trunc nuw i64 %i.af to i1
  br i1 %i.ai, label %bb.n, label %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.aj = ptrtoint ptr %i.ag to i64               ; 4 uses
  %i.ak = and i64 %i.aj, 3                        ; 2 uses
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %bb.o
    i64 3, label %bb.p
    i64 0, label %bb.q
    i64 1, label %bb.r
  ], !prof !66

default.unreachable:                              ; preds = %bb.t, %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.al = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc.i unwind label %3, !noalias !44127

.noexc.i:                                         ; preds = %bb.o
  %i.am = lshr i64 %i.aj, 32
  %i.an = trunc nuw i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !44127, !nonnull !28, !noundef !28
  %i.aq = invoke noundef i8 %i.ap(i32 noundef %i.an)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i unwind label %3, !noalias !44127, !inline_history !20

bb.p:                                             ; preds = %bb.n
  %i.ar = lshr i64 %i.aj, 32
  %i.as = icmp ult ptr %i.ag, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i.i = trunc i64 %i.ar to i8 ; 2 uses
  %i.at = icmp ne i8 %switch.idx.cast.i.i.i.i, -1
  call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 %i.at)
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

bb.q:                                             ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.av = load i8, ptr %i.au, align 8, !range !123, !noalias !44127, !noundef !28
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

bb.r:                                             ; preds = %bb.n
  %i.aw = getelementptr i8, ptr %i.ag, i64 31
  %i.ax = load i8, ptr %i.aw, align 8, !range !123, !noalias !44127, !noundef !28
  br label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i

_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread: ; preds = %bb.m, %bb.y
  %.sroa.627.sroa.4.4.copyload = load i64, ptr %i.e, align 8
  %.sroa.627.sroa.6.4.copyload = load ptr, ptr %i.z, align 8
  %.sroa.627.sroa.7.4.copyload = load i64, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44127
  br label %bb.aj

.thread.i:                                        ; preds = %bb.v, %bb.s
  %lpad.thr_comm.i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %.noexc.i
  %.sroa.0.0.i.i = phi i8 [ %i.ax, %bb.r ], [ %switch.idx.cast.i.i.i.i, %bb.p ], [ %i.av, %bb.q ], [ %i.aq, %.noexc.i ]
  %i.ay = icmp eq i8 %.sroa.0.0.i.i, 11
  br i1 %i.ay, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44127
  invoke void @_RNvMsd_NtCsdaEETE4DqmE_13typst_library4diagNtB5_9FileError7from_io(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noundef nonnull %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @445, i64 noundef 7)
          to label %bb.w unwind label %.thread.i, !noalias !44127

bb.t:                                             ; preds = %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error4kind.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44130
  switch i64 %i.ak, label %default.unreachable [
    i64 2, label %bb.y
    i64 3, label %bb.u
    i64 0, label %bb.y
    i64 1, label %bb.v
  ], !prof !66

bb.u:                                             ; preds = %bb.t
  %i.az = icmp ult ptr %i.ag, inttoptr (i64 188978561024 to ptr)
  %i.ba = and i64 %i.aj, 1095216660480
  %i.bb = icmp ne i64 %i.ba, 1095216660480
  call void @llvm.assume(i1 %i.az)
  call void @llvm.assume(i1 %i.bb)
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  %i.bc = getelementptr i8, ptr %i.ag, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bc, ptr %i.bd, align 8, !alias.scope !44131, !noalias !44130
  store i8 3, ptr %i.a, align 8, !alias.scope !44131, !noalias !44130
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bd)
          to label %bb.y unwind label %.thread.i, !noalias !44127

bb.w:                                             ; preds = %bb.s
  %i.be = load <2 x i32>, ptr %i.b, align 8
  %.sroa.0.0.copyload26 = load i32, ptr %i.b, align 8
  %.sroa.627.sroa.4.0..sroa.627.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.627.sroa.4.0.copyload36 = load i64, ptr %.sroa.627.sroa.4.0..sroa.627.0..sroa_idx28.sroa_idx, align 8 ; 2 uses
  %.sroa.627.sroa.6.0..sroa.627.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.627.sroa.6.0.copyload37 = load ptr, ptr %.sroa.627.sroa.6.0..sroa.627.0..sroa_idx28.sroa_idx, align 8 ; 2 uses
  %.sroa.627.sroa.7.0..sroa.627.0..sroa_idx28.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.627.sroa.7.0.copyload38 = load i64, ptr %.sroa.627.sroa.7.0..sroa.627.0..sroa_idx28.sroa_idx, align 8 ; 2 uses
  %.sroa.830.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.830.0..sroa_idx31, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !44127
  call void @llvm.experimental.noalias.scope.decl(metadata !44132)
  %.val.i8.i = load i64, ptr %i.e, align 8, !range !37, !alias.scope !44132, !noalias !44127, !noundef !28 ; 2 uses
  %i.bf = icmp eq i64 %.val.i8.i, 0
  br i1 %i.bf, label %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val1.i9.i = load ptr, ptr %i.z, align 8, !alias.scope !44132, !noalias !44127, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i9.i, i64 noundef %.val.i8.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44133
  br label %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit

bb.y:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44130
  br label %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread

3:                                                ; preds = %.noexc.i, %bb.o
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ah) #62
          to label %bb.i unwind label %bb.z, !noalias !44127

bb.z:                                             ; preds = %3
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !44127
  unreachable

common.resume:                                    ; preds = %bb.al, %bb.am, %bb.ac, %bb.ad, %bb.i, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.ac ], [ %.pn.i, %bb.i ], [ %.pn.i, %bb.j ], [ %i.bj, %bb.ad ], [ %i.br, %bb.am ], [ %i.br, %bb.al ]
  resume { ptr, i32 } %common.resume.op

_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !44127
  %.not18 = icmp eq i32 %.sroa.0.0.copyload26, -1
  br i1 %.not18, label %bb.aj, label %bb.ai

bb.aa:                                            ; preds = %bb.g
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.511.0..sroa_idx, i64 32, i1 false)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.410.0..sroa_idx, i64 28, i1 false)
  store i32 %i.y, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

bb.ab:                                            ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  %i.bi = invoke noundef nonnull align 8 ptr @_RNvXs1_NtCs5PEMdK7bMAG_12typst_syntax4pathNtB5_6FileIdNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.l)
          to label %bb.ae unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20 = load i64, ptr %i.k, align 8, !range !37, !alias.scope !92, !noundef !28 ; 2 uses
  %i.bk = icmp eq i64 %.val20, 0
  br i1 %i.bk, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val21 = load ptr, ptr %i.bl, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %.val20, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44134
  br label %common.resume

bb.ae:                                            ; preds = %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  invoke void @_RNvMs3_NtCsc4241EHy6Do_9typst_kit5filesNtB5_6FsRoot4load(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bm)
          to label %bb.af unwind label %bb.ac

bb.af:                                            ; preds = %bb.ae
  %.val = load i64, ptr %i.k, align 8, !range !37, !alias.scope !92, !noundef !28 ; 2 uses
  %i.bn = icmp eq i64 %.val, 0
  br i1 %i.bn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.val19 = load ptr, ptr %i.bo, align 8, !nonnull !28, !noundef !28
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44135
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

bb.ah:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newAhj0_ECs9fPPV5zPXBl_5typst.exit, %bb.an, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsc4241EHy6Do_9typst_kit5files6FsRootECs9fPPV5zPXBl_5typst.exit23, %bb.aa
  ret void

bb.ai:                                            ; preds = %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit
  %.sroa.843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.843.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.830, i64 32, i1 false)
  store <2 x i32> %i.be, ptr %0, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.627.sroa.4.0.copyload36, ptr %.sroa.541.0..sroa_idx, align 8
  %.sroa.642.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.627.sroa.6.0.copyload37, ptr %.sroa.642.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.627.sroa.7.0.copyload38, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.an

bb.aj:                                            ; preds = %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit
  %.sroa.627.sroa.4.052 = phi i64 [ %.sroa.627.sroa.4.4.copyload, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread ], [ %.sroa.627.sroa.4.0.copyload36, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit ] ; 3 uses
  %.sroa.627.sroa.6.051 = phi ptr [ %.sroa.627.sroa.6.4.copyload, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread ], [ %.sroa.627.sroa.6.0.copyload37, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit ] ; 3 uses
  %.sroa.627.sroa.7.050 = phi i64 [ %.sroa.627.sroa.7.4.copyload, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit.thread ], [ %.sroa.627.sroa.7.0.copyload38, %_RNvNtCs9fPPV5zPXBl_5typst5world15read_from_stdin.exit ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !44136
  %i.bp = call noundef align 16 dereferenceable_or_null(64) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44136 ; 8 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.ak, label %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit, !prof !29

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef 64) #61
          to label %.noexc.i25 unwind label %bb.al, !noalias !44137

.noexc.i25:                                       ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = icmp eq i64 %.sroa.627.sroa.4.052, 0
  br i1 %i.bs, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.627.sroa.6.051) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.627.sroa.6.051, i64 noundef %.sroa.627.sroa.4.052, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !44138
  br label %common.resume

_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.aj
  store i64 1, ptr %i.bp, align 16, !noalias !44137
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 1, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !44137
  %.sroa.5.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store i128 0, ptr %.sroa.5.0..sroa_idx.i24, align 16, !noalias !44137
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  store i64 %.sroa.627.sroa.4.052, ptr %.sroa.6.0..sroa_idx.i, align 16, !noalias !44137
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store ptr %.sroa.627.sroa.6.051, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !44137
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 %.sroa.627.sroa.7.050, ptr %.sroa.9.0..sroa_idx.i, align 16, !noalias !44137
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bp, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @40, ptr %i.bu, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.an

bb.an:                                            ; preds = %_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations5bytesNtB3_5Bytes3newINtNtCs1xwejQucwHj_5alloc3vec3VechEECs9fPPV5zPXBl_5typst.exit, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  br label %bb.ah
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !44141, !noundef !28 ; 2 uses
  %.not.i = icmp sgt i8 %i.b, -1                  ; 2 uses
  %i.c = and i8 %i.b, 127
  %i.d = zext nneg i8 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !alias.scope !44141, !nonnull !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !44141
  %.sroa.3.0.i = select i1 %.not.i, i64 %i.g, i64 %i.d
  %.sroa.0.0.i = select i1 %.not.i, ptr %i.e, ptr %0
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.3.0.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs2_NtCsf1gSX8u3EQ2_10rayon_core3jobINtB5_8StackJobINtNtB7_5latch8LatchRefNtBT_9LockLatchENCNCINvMs4_NtB7_8registryNtB1E_8Registry14in_worker_coldNCINvNtB7_4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB31_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtB2Z_3map11MapConsumerIB6V_IB6V_INtNtB2Z_10while_some17WhileSomeConsumerNtNtB2Z_6extend15ListVecConsumerENCINvNvXs2_NtB31_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtB2Z_20FromParallelIteratorIB94_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtBaG_7compile16write_virtual_fss_0ENvMs0_B4C_B4z_4refsEE0NCB2S_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBd9_3vec3VecBaC_EEBd2_E0TBd2_Bd2_EE00Bey_ENtB5_3Job7executeBaG_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [136 x i8], align 16              ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.13 = alloca [32 x i8], align 8           ; 5 uses
  %.sroa.9 = alloca [32 x i8], align 8            ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load <2 x ptr>, ptr %i.d, align 8
  %.sroa.0.0.copyload = load ptr, ptr %i.d, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !38

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsf1gSX8u3EQ2_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.f, align 8, !noalias !44146, !noundef !28 ; 2 uses
  %i.g = icmp eq ptr %.val.i.i, null
  br i1 %i.g, label %bb.c, label %bb.d, !prof !105

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @361, i64 noundef 54, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @371) #65
          to label %.noexc unwind label %bb.e, !inline_history !44145

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44146
  store <2 x ptr> %i.e, ptr %i.b, align 16, !noalias !44147
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %.sroa.666.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %.sroa.666.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, i64 88, i1 false)
  invoke fastcc void @_RNCINvNtCsf1gSX8u3EQ2_10rayon_core4join12join_contextNCINvNvNtNtCsa3eaf3mS27M_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB10_5slice12IterProducerINtCsjFU9swAW47b_8indexmap6BucketNtNtCs5PEMdK7bMAG_12typst_syntax4path11VirtualPathNtNtNtCsdaEETE4DqmE_13typst_library11foundations5bytes5BytesEEINtNtBY_3map11MapConsumerIB4U_IB4U_INtNtBY_10while_some17WhileSomeConsumerNtNtBY_6extend15ListVecConsumerENCINvNvXs2_NtB10_6resultINtNtCs3oUPovFnLWP_4core6result6ResultppEINtBY_20FromParallelIteratorIB70_ppEE13from_par_iter2okNtNtCs9fPPV5zPXBl_5typst4args6OutputNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ENCNvNtB8B_7compile16write_virtual_fss_0ENvMs0_B2B_B2y_4refsEE0NCBR_s_0INtNtNtCs1xwejQucwHj_5alloc11collections11linked_list10LinkedListINtNtBb3_3vec3VecB8x_EEBaW_E0B8B_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(136) %i.b, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext true) #60
          to label %bb.k unwind label %bb.e, !inline_history !44145

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.l unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
end_hunk_0
