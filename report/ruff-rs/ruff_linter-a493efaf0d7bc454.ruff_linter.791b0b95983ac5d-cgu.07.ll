Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.07?download=true
inline.NumInlined: 5011
inline.NumDeleted: 2021
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_arg:bb.a
  %i.fx = phi ptr [ %i.fw, %bb.ap ], [ %i.fs, %bb.ao ] ; 2 uses
  %.val.i = load i32, ptr %i.fx, align 8, !range !26, !noalias !6814, !noundef !5
  %i.fy = icmp eq i32 %.val.i, 27
  br i1 %i.fy, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_args_0EB2z_.exit, label %bb.ap

bb.aq:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_args_0EB2z_.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ap, %bb.ao
  %i.ga = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dl)
          to label %bb.ar unwind label %bb.aw     ; 3 uses

bb.ar:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsEhZmuQNqkz_11ruff_linter.exit
  %i.gb = load ptr, ptr %i.dl, align 8, !nonnull !5, !noundef !5
  %i.gc = load i64, ptr %i.gb, align 8, !noundef !5 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ga) ]
  %.idx109 = mul nuw nsw i64 %i.gc, 120
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx109
  %.not.not.not.i56.not103 = icmp eq i64 %i.gc, 0
  br i1 %.not.not.not.i56.not103, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_args_0EB2z_.exit, label %.lr.ph105

bb.as:                                            ; preds = %.lr.ph105
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gf, i64 120 ; 2 uses
  %.not.not.not.i56.not = icmp eq ptr %i.ge, %i.gd
  br i1 %.not.not.not.i56.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_args_0EB2z_.exit, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.ar, %bb.as
  %i.gf = phi ptr [ %i.ge, %bb.as ], [ %i.ga, %bb.ar ] ; 2 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 95
  %.val.i57 = load i8, ptr %i.gg, align 1, !range !16, !noalias !6815, !noundef !5
  %.not.i.i = icmp eq i8 %.val.i57, -1
  br i1 %.not.i.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_args_0EB2z_.exit, label %bb.as

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_args_0EB2z_.exit: ; preds = %.lr.ph102, %.lr.ph105, %bb.as, %bb.ar
  %.sroa.016.0 = phi i8 [ 2, %bb.ar ], [ 2, %bb.as ], [ 1, %.lr.ph105 ], [ 1, %.lr.ph102 ]
  invoke void @_RINvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB3_3Fix16applicable_editsINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtB5_4edit4EditEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i8 noundef %.sroa.016.0)
          to label %bb.at unwind label %bb.aq

bb.at:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg20missing_maxsplit_args_0EB2z_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.e, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.av unwind label %bb.au

.critedge:                                        ; preds = %bb.bb, %bb.ba, %bb.aq, %bb.au
  %.pn = phi { ptr, i32 } [ %i.gh, %bb.au ], [ %i.fz, %bb.aq ], [ %i.gi, %bb.ba ], [ %i.gi, %bb.bb ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e) #37
          to label %.thread74 unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %.loopexit86

bb.aw:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsEhZmuQNqkz_11ruff_linter.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.fh, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gj = icmp eq ptr %.val.i58, null
  %i.gk = extractelement <2 x i64> %i.fj, i64 0   ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  %or.cond.i.i.i = select i1 %i.gj, i1 true, i1 %i.gl
  br i1 %or.cond.i.i.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i58) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i58, i64 noundef range(i64 1, 0) %i.gk, i64 noundef 1) #39, !noalias !6816
  br label %bb.ba

bb.az:                                            ; preds = %.critedge
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ba:                                            ; preds = %bb.aw, %bb.ax, %bb.ay
  %i.gn = icmp eq ptr %.sroa.0.0.copyload, null
  %i.go = icmp eq i64 %.sroa.4.0.copyload, 0
  %or.cond.i.i = select i1 %i.gn, i1 true, i1 %i.go
  br i1 %or.cond.i.i, label %.critedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4.0.copyload, i64 noundef 1) #39
  br label %.critedge

bb.bc:                                            ; preds = %bb.am
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.fh, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gp = icmp eq ptr %.val.i58, null
  %i.gq = extractelement <2 x i64> %i.fj, i64 0   ; 2 uses
  %i.gr = icmp eq i64 %i.gq, 0
  %or.cond.i.i.i61 = select i1 %i.gp, i1 true, i1 %i.gr
  br i1 %or.cond.i.i.i61, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i58) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i58, i64 noundef range(i64 1, 0) %i.gq, i64 noundef 1) #39, !noalias !6817
  br label %bb.bf

.thread74:                                        ; preds = %bb.bg, %bb.bf, %.critedge
  %.pn44.pn72 = phi { ptr, i32 } [ %.pn, %.critedge ], [ %.pn44.pn.ph, %bb.bg ], [ %.pn44.pn.ph, %bb.bf ]
  resume { ptr, i32 } %.pn44.pn72

bb.bf:                                            ; preds = %bb.ah, %bb.bc, %bb.bd, %bb.be
  %.pn44.pn.ph = phi { ptr, i32 } [ %i.eu, %bb.ah ], [ %lpad.thr_comm, %bb.bc ], [ %lpad.thr_comm, %bb.bd ], [ %lpad.thr_comm, %bb.be ] ; 2 uses
  %.val = load ptr, ptr %i.h, align 8, !noundef !5 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val49 = load i64, ptr %i.gs, align 8          ; 2 uses
  %i.gt = icmp eq ptr %.val, null
  %i.gu = icmp eq i64 %.val49, 0
  %or.cond.i.i63 = select i1 %i.gt, i1 true, i1 %i.gu
  br i1 %or.cond.i.i63, label %.thread74, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val49, i64 noundef 1) #39
  br label %.thread74
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20missing_maxsplit_arg9is_string(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !26, !noundef !5
  %i.b = icmp eq i32 %i.a, 28
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12only_binding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %i.c) ; 2 uses
  %.not9 = icmp eq i32 %i.d, 0
  br i1 %.not9, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel16lookup_attribute(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1, ptr noundef nonnull align 8 %0) ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = add i32 %i.d, -1
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %i.i
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing9is_string(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.i, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #36
  unreachable

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.j, %bb.i
  %.sroa.0.1 = phi i1 [ %i.u, %bb.i ], [ %i.y, %bb.j ], [ %i.n, %bb.e ], [ false, %bb.b ]
  ret i1 %.sroa.0.1

bb.h:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = add i32 %i.e, -1
  %i.r = zext i32 %i.q to i64                     ; 3 uses
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.t = load i32, ptr %0, align 8, !range !26, !noundef !5
  %i.u = icmp eq i32 %i.t, 19
  br label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.w, i64 %i.r
  %i.y = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing9is_string(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %1)
  br label %bb.g

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop20useless_else_on_loop(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 104811045873349726) %3, ptr nofree noundef nonnull readonly align 8 %4, i64 noundef range(i64 0, 104811045873349726) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [12 x i8], align 4                ; 6 uses
  %i.n = icmp eq i64 %5, 0
  br i1 %i.n, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop16loop_exits_early.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = mul nuw nsw i64 %3, 88
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %.not.not.not.i.not22 = icmp eq i64 %3, 0
  br i1 %.not.not.not.i.not22, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop16loop_exits_early.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i23, i64 88 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.p, %i.o
  br i1 %.not.not.not.i.not, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop16loop_exits_early.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i23 = phi ptr [ %i.p, %bb.c ], [ %2, %bb.b ] ; 2 uses
  %i.q = tail call fastcc noundef zeroext i1 @_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop16loop_exits_early0Bb_(ptr noundef nonnull align 8 %.sroa.0.0.i23), !inline_history !6818
  br i1 %i.q, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop16loop_exits_early.exit.thread, label %bb.c

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop16loop_exits_early.exit: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i64, ptr %i.u, align 8, !noundef !5
  call void @_RNvNtCskLngH8kgpZI_15ruff_python_ast10identifier5else_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.m, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
  %i.w = load i32, ptr %i.m, align 4, !range !19, !noundef !5
  %i.x = trunc nuw i32 %i.w to i1
  br i1 %i.x, label %bb.d, label %bb.da, !prof !7

bb.d:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules20useless_else_on_loop16loop_exits_early.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.z = load i32, ptr %i.y, align 4, !noundef !5 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5, !align !9, !noundef !5
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules20useless_else_on_loop17UselessElseOnLoopEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noundef nonnull align 8 %i.ad, i32 noundef %i.z, i32 noundef %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6831
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !6832, !nonnull !5, !align !9, !noundef !5 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !6832, !nonnull !5, !align !9, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !6832, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr [88 x i8], ptr %4, i64 %5 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -88    ; 2 uses
  %i.al = load ptr, ptr %i.ae, align 8, !noalias !6833, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !6833, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 84 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 4, !range !27, !noalias !6833, !noundef !5 ; 2 uses
  %i.aq = icmp samesign ugt i8 %i.ap, 1
  %i.ar = zext nneg i8 %i.ap to i64
  %i.as = add nsw i64 %i.ar, -1
  %i.at = select i1 %i.aq, i64 %i.as, i64 0
  switch i64 %i.at, label %bb.e [
    i64 0, label %bb.f
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
    i64 8, label %bb.l
    i64 9, label %bb.m
    i64 10, label %bb.n
    i64 11, label %bb.o
    i64 12, label %bb.p
    i64 13, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i
    i64 22, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i
    i64 23, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i
    i64 24, label %bb.x
  ]

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.j:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.k:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.l:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.m:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.n:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.o:                                             ; preds = %bb.d
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.p:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.q:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 48
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.r:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.s:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.t:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.u:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.v:                                             ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.w:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

bb.x:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %.sroa.0.0.in.i.i.i.i = phi ptr [ %i.bm, %bb.x ], [ %4, %bb.d ], [ %4, %bb.d ], [ %4, %bb.d ], [ %i.bl, %bb.w ], [ %i.bk, %bb.v ], [ %i.bj, %bb.u ], [ %i.bi, %bb.t ], [ %i.bh, %bb.s ], [ %i.bg, %bb.r ], [ %i.bf, %bb.q ], [ %4, %bb.d ], [ %i.be, %bb.p ], [ %i.bd, %bb.o ], [ %i.bc, %bb.n ], [ %i.bb, %bb.m ], [ %i.ba, %bb.l ], [ %i.az, %bb.k ], [ %i.ay, %bb.j ], [ %i.ax, %bb.i ], [ %i.aw, %bb.h ], [ %i.av, %bb.g ], [ %4, %bb.d ], [ %i.au, %bb.f ], [ %4, %bb.d ]
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 8, !noalias !6833, !noundef !5
  %i.bn = invoke { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace21indentation_at_offset(i32 noundef %.sroa.0.0.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.an)
          to label %.noexc1 unwind label %bb.db

.noexc1:                                          ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i.i.i
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0
  %.not22.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not22.i.i.i, label %bb.at, label %bb.y

bb.y:                                             ; preds = %.noexc1
  %i.bp = load ptr, ptr %i.ae, align 8, !noalias !6833, !nonnull !5, !noundef !5
  %i.bq = load i64, ptr %i.am, align 8, !noalias !6833, !noundef !5
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bs = load i8, ptr %i.br, align 4, !range !27, !noalias !6833, !noundef !5 ; 2 uses
  %i.bt = icmp samesign ugt i8 %i.bs, 1
  %i.bu = zext nneg i8 %i.bs to i64
  %i.bv = add nsw i64 %i.bu, -1
  %i.bw = select i1 %i.bt, i64 %i.bv, i64 0
  switch i64 %i.bw, label %bb.z [
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules23assert_raises_exceptionNtB4_13ExceptionKindNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 9)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 13)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules32loop_variable_overrides_iteratorNtB4_10NameFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = load i32, ptr %1, align 8, !range !26, !noundef !5
  switch i32 %i.c, label %bb.b [
    i32 4, label %bb.c
    i32 8, label %bb.k
    i32 9, label %bb.k
    i32 10, label %bb.k
    i32 11, label %bb.k
    i32 28, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_exprNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules32loop_variable_overrides_iterator10NameFinderEB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 %1)
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB20_5ChainIB2u_INtNtNtB5_5slice4iter4IterBJ_EB2L_EB2L_ENtNtNtB24_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  tail call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast7visitor9walk_exprNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules32loop_variable_overrides_iterator10NameFinderEB11_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !align !9, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB20_5ChainIB2u_INtNtNtB5_5slice4iter4IterBJ_EB2L_EB2L_ENtNtNtB24_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.j = load i8, ptr %i.i, align 1, !range !20, !alias.scope !8135, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !8135, !noundef !5
  %i.m = and i64 %i.l, 72057594037927935
  %i.n = icmp ult i8 %i.j, -48
  %i.o = zext i8 %i.j to i64
  %i.p = add nsw i64 %i.o, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 16)
  %.sroa.0.0.i = select i1 %i.n, i64 %spec.store.select.i, i64 %i.m
  %i.q = icmp ugt i8 %i.j, -49
  %i.r = load ptr, ptr %i.h, align 8, !alias.scope !8135
  %.sroa.01.0.i = select i1 %i.q, ptr %i.r, ptr %i.h
  %i.s = tail call noundef align 8 ptr @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i, ptr noundef nonnull align 8 %1) ; 0 uses
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB20_5ChainIB2u_INtNtNtB5_5slice4iter4IterBJ_EB2L_EB2L_ENtNtNtB24_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.c
  call void @_RNvMs1N_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10Parameters24iter_non_variadic_params(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noundef nonnull align 8 %i.g)
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB20_5ChainIB2u_INtNtNtB5_5slice4iter4IterBJ_EB2L_EB2L_ENtNtNtB24_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.lr.ph, %bb.i, %bb.k, %bb.d, %bb.c, %bb.b
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit, %bb.e
  %.sroa.11.0 = phi ptr [ %.sroa.11.0.copyload, %bb.e ], [ %.sroa.11.1.ph, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit ] ; 6 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.e ], [ %.sroa.8.119.ph, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit ] ; 6 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %bb.e ], [ %.sroa.5.221.ph, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.e ], [ %.sroa.0.123.ph, %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit ]
  %i.u = trunc nuw i64 %.sroa.0.0 to i1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp eq ptr %.sroa.5.0, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.v = icmp eq ptr %.sroa.5.0, %.sroa.7.0.copyload
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.5.0, i64 80
  br i1 %i.v, label %select.unfold.i.i.i, label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit

select.unfold.i.i.i:                              ; preds = %.sink.split.i.i.i.i, %bb.g
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.8.0, null
  %i.x = icmp eq ptr %.sroa.8.0, %.sroa.10.0.copyload
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.x
  br i1 %or.cond.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.8.0, i64 80
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.f, %select.unfold.i.i.i
  %.sroa.5.2.ph = phi ptr [ null, %select.unfold.i.i.i ], [ %.sroa.5.0, %bb.f ]
  %.not.i.i = icmp eq ptr %.sroa.11.0, null
  %i.z = icmp eq ptr %.sroa.11.0, %.sroa.13.0.copyload
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.z
  br i1 %or.cond.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB20_5ChainIB2u_INtNtNtB5_5slice4iter4IterBJ_EB2L_EB2L_ENtNtNtB24_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.11.0, i64 80
  br label %_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainINtNtNtB8_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1g_ERB1G_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %.sink.split.i.i.i.i, %bb.j
  %.sroa.0.123.ph = phi i64 [ 0, %bb.j ], [ 1, %.sink.split.i.i.i.i ], [ 1, %bb.h ]
  %.sroa.5.221.ph = phi ptr [ %.sroa.5.2.ph, %bb.j ], [ %i.w, %.sink.split.i.i.i.i ], [ null, %bb.h ]
  %.sroa.8.119.ph = phi ptr [ %.sroa.8.0, %bb.j ], [ %.sroa.8.0, %.sink.split.i.i.i.i ], [ %i.y, %bb.h ]
  %.sroa.11.1.ph = phi ptr [ %i.aa, %bb.j ], [ %.sroa.11.0, %.sink.split.i.i.i.i ], [ %.sroa.11.0, %bb.h ]
  %.sroa.0.0.i8.ph = phi ptr [ %.sroa.11.0, %bb.j ], [ %.sroa.5.0, %.sink.split.i.i.i.i ], [ %.sroa.8.0, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.ph, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.ph, i64 55
  %i.ad = load i8, ptr %i.ac, align 1, !range !20, !alias.scope !8136, !noundef !5 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i8.ph, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !8136, !noundef !5
  %i.ag = and i64 %i.af, 72057594037927935
  %i.ah = icmp ult i8 %i.ad, -48
  %i.ai = zext i8 %i.ad to i64
  %i.aj = add nsw i64 %i.ai, -192
  %spec.store.select.i9 = call i64 @llvm.umin.i64(i64 %i.aj, i64 16)
  %.sroa.0.0.i10 = select i1 %i.ah, i64 %spec.store.select.i9, i64 %i.ag ; 2 uses
  %i.ak = icmp ugt i8 %i.ad, -49
  %i.al = load ptr, ptr %i.ab, align 8, !alias.scope !8136
  %.sroa.01.0.i11 = select i1 %i.ak, ptr %i.al, ptr %i.ab ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8137
  %i.am = call noundef i64 @_RINvYNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i11, i64 noundef range(i64 -192, 72057594037927936) %.sroa.0.0.i10), !noalias !8138
  call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEE12remove_entryNCINvNtB8_3map14equivalent_keyeBQ_BS_E0ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i11, i64 noundef range(i64 -192, 72057594037927936) %.sroa.0.0.i10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8137
  br label %bb.f

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.aq, 184
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB20_5ChainIB2u_INtNtNtB5_5slice4iter4IterBJ_EB2L_EB2L_ENtNtNtB24_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.sroa.02.037 = phi ptr [ %i.at, %.lr.ph ], [ %i.ao, %bb.k ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.02.037, i64 184 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.037, i64 96
  tail call void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules32loop_variable_overrides_iteratorNtB4_10NameFinderNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 %i.au)
  %i.av = icmp eq ptr %i.at, %i.ar
  br i1 %i.av, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB20_5ChainIB2u_INtNtNtB5_5slice4iter4IterBJ_EB2L_EB2L_ENtNtNtB24_6traits8iterator8Iterator4next0ECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules11ast_bool_opNtB4_16CompareWithTupleNtNtBc_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @561, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules11ast_bool_opNtB4_16CompareWithTupleNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @346, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules15unittest_assertNtB4_14UnittestAssertINtNtCs4NRVxsYgnAr_4core7convert7TryFromReE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 9)) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %3 = alloca [24 x i8], align 8                  ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  switch i64 %2, label %.split [
    i64 17, label %bb.b
    i64 18, label %bb.d
    i64 16, label %bb.f
    i64 24, label %bb.h
    i64 15, label %bb.j
    i64 11, label %bb.l
    i64 12, label %bb.n
    i64 6, label %bb.p
    i64 10, label %bb.v
    i64 21, label %bb.x
    i64 13, label %bb.ad
    i64 8, label %bb.ah
    i64 20, label %bb.az
    i64 14, label %bb.bf
    i64 19, label %bb.bl
    i64 22, label %bb.bp
    i64 7, label %bb.cd
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load i128, ptr %1, align 1
  %i.e = xor i128 %i.d, 129544911738653654436911609868025295713
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i128
  %i.i = xor i128 %i.h, 108
  %i.j = or i128 %i.e, %i.i
  %i.k = icmp ne i128 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.d:                                             ; preds = %bb.a
  %i.o = load i128, ptr %1, align 1
  %i.p = xor i128 %i.o, 129544911738653654436911609868025295713
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = load i16, ptr %i.q, align 1
  %i.s = zext i16 %i.r to i128
  %i.t = xor i128 %i.s, 29548
  %i.u = or i128 %i.p, %i.t
  %i.v = icmp ne i128 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.y, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.f:                                             ; preds = %bb.a
  %i.z = load i128, ptr %1, align 1
  %i.aa = icmp ne i128 %i.z, 144062658356250006610236029360672043873
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.al

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ad, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.h:                                             ; preds = %bb.a
  %i.ae = load i128, ptr %1, align 1
  %i.af = xor i128 %i.ae, 140074953861740328846121987310676570977
  %i.ag = getelementptr i8, ptr %1, i64 16
  %i.ah = load i64, ptr %i.ag, align 1
  %i.ai = zext i64 %i.ah to i128
  %i.aj = xor i128 %i.ai, 8387236747759809390
  %i.ak = or i128 %i.af, %i.aj
  %i.al = icmp ne i128 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %.split

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.ao, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.j:                                             ; preds = %bb.a
  %i.ap = load i64, ptr %1, align 1
  %i.aq = xor i64 %i.ap, 7585315707075916641
  %i.ar = getelementptr i8, ptr %1, i64 7
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = xor i64 %i.as, 7809652358194160489
  %i.au = or i64 %i.aq, %i.at
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 4, ptr %i.ay, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.l:                                             ; preds = %bb.a
  %i.az = load i64, ptr %1, align 1
  %i.ba = xor i64 %i.az, 8162057934356050785
  %i.bb = getelementptr i8, ptr %1, i64 3
  %i.bc = load i64, ptr %i.bb, align 1
  %i.bd = xor i64 %i.bc, 7809652358194164325
  %i.be = or i64 %i.ba, %i.bd
  %i.bf = icmp ne i64 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 5, ptr %i.bi, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.n:                                             ; preds = %bb.a
  %i.bj = load i64, ptr %1, align 1
  %i.bk = xor i64 %i.bj, 8162057934356050785
  %i.bl = getelementptr i8, ptr %1, i64 8
  %i.bm = load i32, ptr %i.bl, align 1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = xor i64 %i.bn, 1936482677
  %i.bp = or i64 %i.bk, %i.bo
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.o, label %bb.an

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 6, ptr %i.bt, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.p:                                             ; preds = %bb.a
  %i.bu = load i32, ptr %1, align 1
  %i.bv = xor i32 %i.bu, 1818845542
  %i.bw = getelementptr i8, ptr %1, i64 4
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = zext i16 %i.bx to i32
  %i.bz = xor i32 %i.by, 26185
  %i.ca = or i32 %i.bv, %i.bz
  %i.cb = icmp ne i32 %i.ca, 0
  %i.cc = zext i1 %i.cb to i32
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.q, label %.split

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 7, ptr %i.ce, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.r:                                             ; preds = %bb.b
  %i.cf = load i128, ptr %1, align 1
  %i.cg = xor i128 %i.cf, 129544911738653654436911594298885628262
  %i.ch = getelementptr i8, ptr %1, i64 16
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = zext i8 %i.ci to i128
  %i.ck = xor i128 %i.cj, 108
  %i.cl = or i128 %i.cg, %i.ck
  %i.cm = icmp ne i128 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.s, label %.split

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 8, ptr %i.cp, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.t:                                             ; preds = %bb.l
  %i.cq = load i64, ptr %1, align 1
  %i.cr = xor i64 %i.cq, 8162042365216383334
  %i.cs = getelementptr i8, ptr %1, i64 3
  %i.ct = load i64, ptr %i.cs, align 1
  %i.cu = xor i64 %i.ct, 7809652358193236332
  %i.cv = or i64 %i.cr, %i.cu
  %i.cw = icmp ne i64 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules15unittest_assertNtB4_14UnittestAssertINtNtCs4NRVxsYgnAr_4core7convert7TryFromReE8try_from:bb.a

bb.bi:                                            ; preds = %bb.bh
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 29, ptr %i.ki, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bj:                                            ; preds = %bb.ap
  %i.kj = load i64, ptr %1, align 1
  %i.kk = xor i64 %i.kj, 8020476021070590817
  %i.kl = getelementptr i8, ptr %1, i64 3
  %i.km = load i64, ptr %i.kl, align 1
  %i.kn = xor i64 %i.km, 7947011038878397029
  %i.ko = or i64 %i.kk, %i.kn
  %i.kp = icmp ne i64 %i.ko, 0
  %i.kq = zext i1 %i.kp to i32
  %i.kr = icmp eq i32 %i.kq, 0
  br i1 %i.kr, label %bb.bk, label %bb.br

bb.bk:                                            ; preds = %bb.bj
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 30, ptr %i.ks, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bl:                                            ; preds = %bb.a
  %i.kt = load i128, ptr %1, align 1
  %i.ku = xor i128 %i.kt, 129539763241660955254564622072594789217
  %i.kv = getelementptr i8, ptr %1, i64 3
  %i.kw = load i128, ptr %i.kv, align 1
  %i.kx = xor i128 %i.kw, 134768303749499425089660855374316860005
  %i.ky = or i128 %i.ku, %i.kx
  %i.kz = icmp ne i128 %i.ky, 0
  %i.la = zext i1 %i.kz to i32
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.bm, label %bb.bt

bb.bm:                                            ; preds = %bb.bl
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 31, ptr %i.lc, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bn:                                            ; preds = %bb.bf
  %i.ld = load i64, ptr %1, align 1
  %i.le = xor i64 %i.ld, 8020476021070590817
  %i.lf = getelementptr i8, ptr %1, i64 6
  %i.lg = load i64, ptr %i.lf, align 1
  %i.lh = xor i64 %i.lg, 8675453942071848782
  %i.li = or i64 %i.le, %i.lh
  %i.lj = icmp ne i64 %i.li, 0
  %i.lk = zext i1 %i.lj to i32
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %bb.bn
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 32, ptr %i.lm, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bp:                                            ; preds = %bb.a
  %i.ln = load i128, ptr %1, align 1
  %i.lo = xor i128 %i.ln, 102934534846790721950411533356136362849
  %i.lp = getelementptr i8, ptr %1, i64 6
  %i.lq = load i128, ptr %i.lp, align 1
  %i.lr = xor i128 %i.lq, 153387758748182104301021522498719870798
  %i.ls = or i128 %i.lo, %i.lr
  %i.lt = icmp ne i128 %i.ls, 0
  %i.lu = zext i1 %i.lt to i32
  %i.lv = icmp eq i32 %i.lu, 0
  br i1 %i.lv, label %bb.bq, label %.split

bb.bq:                                            ; preds = %bb.bp
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 33, ptr %i.lw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.br:                                            ; preds = %bb.bj
  %i.lx = load i64, ptr %1, align 1
  %i.ly = xor i64 %i.lx, 7301025980598154081
  %i.lz = getelementptr i8, ptr %1, i64 3
  %i.ma = load i64, ptr %i.lz, align 1
  %i.mb = xor i64 %i.ma, 8675453942071849573
  %i.mc = or i64 %i.ly, %i.mb
  %i.md = icmp ne i64 %i.mc, 0
  %i.me = zext i1 %i.md to i32
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.bs, label %.split

bb.bs:                                            ; preds = %bb.br
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 34, ptr %i.mg, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bt:                                            ; preds = %bb.bl
  %i.mh = load i128, ptr %1, align 1
  %i.mi = xor i128 %i.mh, 132197851547404650297446392733191336801
  %i.mj = getelementptr i8, ptr %1, i64 3
  %i.mk = load i128, ptr %i.mj, align 1
  %i.ml = xor i128 %i.mk, 153387758748182104301021522498719871589
  %i.mm = or i128 %i.mi, %i.ml
  %i.mn = icmp ne i128 %i.mm, 0
  %i.mo = zext i1 %i.mn to i32
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 35, ptr %i.mq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bt
  %i.mr = load i128, ptr %1, align 1
  %i.ms = xor i128 %i.mr, 150563088408058461672171961131241534305
  %i.mt = getelementptr i8, ptr %1, i64 3
  %i.mu = load i128, ptr %i.mt, align 1
  %i.mv = xor i128 %i.mu, 144062658356231820647076784294772109925
  %i.mw = or i128 %i.ms, %i.mv
  %i.mx = icmp ne i128 %i.mw, 0
  %i.my = zext i1 %i.mx to i32
  %i.mz = icmp eq i32 %i.my, 0
  br i1 %i.mz, label %bb.bw, label %.split

bb.bw:                                            ; preds = %bb.bv
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 36, ptr %i.na, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bx:                                            ; preds = %bb.bn
  %i.nb = load i64, ptr %1, align 1
  %i.nc = xor i64 %i.nb, 7301307455574864737
  %i.nd = getelementptr i8, ptr %1, i64 6
  %i.ne = load i64, ptr %i.nd, align 1
  %i.nf = xor i64 %i.ne, 7809652358194160979
  %i.ng = or i64 %i.nc, %i.nf
  %i.nh = icmp ne i64 %i.ng, 0
  %i.ni = zext i1 %i.nh to i32
  %i.nj = icmp eq i32 %i.ni, 0
  br i1 %i.nj, label %bb.by, label %.split

bb.by:                                            ; preds = %bb.bx
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 37, ptr %i.nk, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.bz:                                            ; preds = %bb.at
  %i.nl = load i64, ptr %1, align 1
  %i.nm = xor i64 %i.nl, 8238337653044638561
  %i.nn = getelementptr i8, ptr %1, i64 8
  %i.no = load i16, ptr %i.nn, align 1
  %i.np = zext i16 %i.no to i64
  %i.nq = xor i64 %i.np, 25973
  %i.nr = or i64 %i.nm, %i.nq
  %i.ns = icmp ne i64 %i.nr, 0
  %i.nt = zext i1 %i.ns to i32
  %i.nu = icmp eq i32 %i.nt, 0
  br i1 %i.nu, label %bb.ca, label %.split

bb.ca:                                            ; preds = %bb.bz
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 38, ptr %i.nv, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.cb:                                            ; preds = %bb.al
  %i.nw = load i128, ptr %1, align 1
  %i.nx = icmp ne i128 %i.nw, 144062658356231863186412254454044914529
  %i.ny = zext i1 %i.nx to i32
  %i.nz = icmp eq i32 %i.ny, 0
  br i1 %i.nz, label %bb.cc, label %.split

bb.cc:                                            ; preds = %bb.cb
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 39, ptr %i.oa, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.cd:                                            ; preds = %bb.a
  %i.ob = load i32, ptr %1, align 1
  %i.oc = xor i32 %i.ob, 1702064993
  %i.od = getelementptr i8, ptr %1, i64 3
  %i.oe = load i32, ptr %i.od, align 1
  %i.of = xor i32 %i.oe, 1601466981
  %i.og = or i32 %i.oc, %i.of
  %i.oh = icmp ne i32 %i.og, 0
  %i.oi = zext i1 %i.oh to i32
  %i.oj = icmp eq i32 %i.oi, 0
  br i1 %i.oj, label %bb.ce, label %.split

.split:                                           ; preds = %bb.cb, %bb.bz, %bb.bx, %bb.br, %bb.bp, %bb.bh, %bb.bd, %bb.an, %bb.af, %bb.ad, %bb.r, %bb.p, %bb.h, %bb.bv, %bb.bb, %bb.aj, %bb.a, %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull @562, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 40, ptr %i.ok, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %.split, %bb.ce, %bb.cc, %bb.ca, %bb.by, %bb.bw, %bb.bu, %bb.bs, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25legacy_form_pytest_raisesNtB4_17PytestContextTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1, !range !28, !noundef !5 ; 2 uses
  %i.d = zext nneg i8 %i.c to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25legacy_form_pytest_raisesNtB4_17PytestContextTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, i64 %i.d
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.e = zext nneg i8 %i.c to i64
  %switch.gep17 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules25legacy_form_pytest_raisesNtB4_17PytestContextTypeNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.781, i64 %i.e
  %switch.load18 = load i8, ptr %switch.gep17, align 1
  %switch.ext = zext i8 %switch.load18 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8
  store i64 %switch.ext, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.43.0..sroa_idx, align 8
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !5, !align !9, !noundef !5
  %i.j = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noundef nonnull @487, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19redefined_loop_nameNtB4_16OuterBindingKindNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !23, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @489, i64 noundef 16)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @488, i64 noundef 10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules22unnecessary_from_floatNtB4_10MethodNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !23, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 10)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules25check_and_remove_from_setNtB4_21CheckAndRemoveFromSetNtNtBc_9violation22AlwaysFixableViolation7message(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8142
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.f, ptr %i.c, align 8, !noalias !8142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8142
  %i.g = tail call { ptr, i64 } @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippetNtB2_17SourceCodeSnippet17truncated_display(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !8143 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.h, ptr %i.b, align 8, !noalias !8142
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !8142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8142
  store ptr %i.c, ptr %i.a, align 8, !noalias !8142
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !8142
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8, !noalias !8142
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !8142
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @88, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @565, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #37
          to label %common.resume unwind label %bb.e

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.l, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules25check_and_remove_from_setNtB4_21CheckAndRemoveFromSetNtNtBc_9violation22AlwaysFixableViolation9fix_title(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8147
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.f, ptr %i.c, align 8, !noalias !8147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8147
  %i.g = tail call { ptr, i64 } @_RNvMNtNtCsEhZmuQNqkz_11ruff_linter3fix7snippetNtB2_17SourceCodeSnippet17truncated_display(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !8148 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 0
  %i.i = extractvalue { ptr, i64 } %i.g, 1
  store ptr %i.h, ptr %i.b, align 8, !noalias !8147
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.i, ptr %i.j, align 8, !noalias !8147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8147
  store ptr %i.c, ptr %i.a, align 8, !noalias !8147
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !8147
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.k, align 8, !noalias !8147
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !8147
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @88, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @346, ptr noundef nonnull %i.d)
          to label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionReE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
end_hunk_2
