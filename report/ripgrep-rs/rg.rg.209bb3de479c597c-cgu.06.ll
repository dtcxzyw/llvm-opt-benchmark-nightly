Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.06?download=true
inline.NumInlined: 969
inline.NumDeleted: 430
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB4_8ReplacerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherE11replace_allCs2NzvFoTxuAy_2rg:bb.a
  %i.fc = add i64 %i.fb, %gepdiff.i.i.i.i.i.i.i.i, !dbg !12839 ; 4 uses
  store i64 %i.fc, ptr %i.ab, align 8, !dbg !12839, !alias.scope !12819, !noalias !12822
  call void @llvm.experimental.noalias.scope.decl(metadata !12841), !dbg !12844
  %i.fd = icmp sgt i64 %i.fc, -1, !dbg !12845
  call void @llvm.assume(i1 %i.fd), !dbg !12853
  call void @llvm.experimental.noalias.scope.decl(metadata !12854), !dbg !12857
  call void @llvm.experimental.noalias.scope.decl(metadata !12859), !dbg !12857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12861, !noalias !12864
  store ptr %0, ptr %i.c, align 8, !dbg !12861, !noalias !12864
  store ptr %3, ptr %i.as, align 8, !dbg !12861, !noalias !12864
  store i64 %.sroa.13.0, ptr %i.at, align 8, !dbg !12861, !noalias !12864
  call void @llvm.experimental.noalias.scope.decl(metadata !12872), !dbg !12875
  call void @llvm.experimental.noalias.scope.decl(metadata !12876), !dbg !12875
  br i1 %i.ax, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !dbg !12878

.thread.i.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.backedge.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef 0), !dbg !12883, !noalias !12891
  %i.fe = load i64, ptr %i.ab, align 8, !dbg !12894, !alias.scope !12897, !noalias !12900, !noundef !15 ; 2 uses
  %i.ff = icmp sgt i64 %i.fe, -1, !dbg !12901
  call void @llvm.assume(i1 %i.ff), !dbg !12902
  br label %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i, !dbg !12903

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.be.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i ], [ %7, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.20.0.be.i.i.i.i.i.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i.i.i.i.i.i ], [ %8, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.fg = getelementptr i8, ptr %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, !dbg !12904 ; 2 uses
  %i.fh = load atomic ptr, ptr @_RNvNvNtNtNtCsiykmk5uyuii_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !dbg !12919, !noalias !12936, !nonnull !15, !noundef !15
  %i.fi = call { i64, ptr } %i.fh(i8 noundef 36, ptr noundef nonnull readonly %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly %i.fg), !dbg !12939, !noalias !12941, !inline_history !12942 ; 2 uses
  %i.fj = extractvalue { i64, ptr } %i.fi, 0, !dbg !12943
  %i.fk = trunc nuw i64 %i.fj to i1, !dbg !12944
  br i1 %i.fk, label %bb.ba, label %bb.az, !dbg !12944

bb.az:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i), !dbg !12883, !noalias !12891
  %i.fl = load i64, ptr %i.ab, align 8, !dbg !12894, !alias.scope !12947, !noalias !12900, !noundef !15 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, -1, !dbg !12901
  call void @llvm.assume(i1 %i.fm), !dbg !12902
  %i.fn = load ptr, ptr %i.aw, align 8, !dbg !12949, !alias.scope !12947, !noalias !12900, !nonnull !15, !noundef !15
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fl, !dbg !12954
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, i1 false), !dbg !12956, !noalias !12891
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !dbg !12958, !alias.scope !12947, !noalias !12900
  br label %_RINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1T_8ReplacerRRNtB5_12RegexMatcherE11replace_all00ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i, !dbg !12959

bb.ba:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = extractvalue { i64, ptr } %i.fi, 1, !dbg !12943
  %i.fq = call noundef i64 @_RNvXNtCsiykmk5uyuii_6memchr3extPhNtB2_7Pointer8distanceCs2NzvFoTxuAy_2rg(ptr noundef %i.fp, ptr noundef nonnull readonly %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i), !dbg !12960, !noalias !12891 ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.fq, %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, !dbg !12962
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i), !dbg !12962
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fq, !dbg !12964 ; 6 uses
  call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z, i64 noundef %i.fq), !dbg !12978, !noalias !12891
  %i.fs = load i64, ptr %i.ab, align 8, !dbg !12982, !alias.scope !12985, !noalias !12900, !noundef !15 ; 3 uses
  %i.ft = icmp sgt i64 %i.fs, -1, !dbg !12988
  call void @llvm.assume(i1 %i.ft), !dbg !12989
  %.not.i43.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fq, 0, !dbg !12990
  br i1 %.not.i43.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i, label %bb.bb, !dbg !12990

bb.bb:                                            ; preds = %bb.ba
  %i.fu = load ptr, ptr %i.aw, align 8, !dbg !12991, !alias.scope !12985, !noalias !12900, !nonnull !15, !noundef !15
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fs, !dbg !12996
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull readonly align 1 %.sroa.0.086.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fq, i1 false), !dbg !12998, !noalias !12891
  %.pre.i44.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ab, align 8, !dbg !13000, !alias.scope !12985, !noalias !12900
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i, !dbg !13001

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bb, %bb.ba
  %i.fw = phi i64 [ %.pre.i44.i.i.i.i.i.i.i.i.i.i.i, %bb.bb ], [ %i.fs, %bb.ba ], !dbg !13000
  %i.fx = add i64 %i.fw, %i.fq, !dbg !13000       ; 4 uses
  store i64 %i.fx, ptr %i.ab, align 8, !dbg !13000, !alias.scope !12985, !noalias !12900
  %i.fy = sub nuw nsw i64 %.sroa.20.085.i.i.i.i.i.i.i.i.i.i.i, %i.fq, !dbg !13002 ; 12 uses
  %i.fz = icmp ult i64 %i.fy, 2, !dbg !13008
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 1, !dbg !13008 ; 2 uses
  br i1 %i.fz, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13013

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i
  %.val.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ga, align 1, !dbg !13016, !alias.scope !13018, !noalias !13021, !noundef !15 ; 2 uses
  %i.gb = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 36, !dbg !13022
  br i1 %i.gb, label %bb.bz, label %bb.bc, !dbg !13027

bb.bc:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !13028), !dbg !13031
  %i.gc = load i8, ptr %i.fr, align 1, !dbg !13032, !alias.scope !13036, !noalias !13037, !noundef !15
  %i.gd = icmp eq i8 %i.gc, 36, !dbg !13032
  br i1 %i.gd, label %bb.bd, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, !dbg !13032

bb.bd:                                            ; preds = %bb.bc
  %i.ge = icmp eq i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i, 123, !dbg !13039 ; 3 uses
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ge, i64 2, i64 1, !dbg !13039 ; 6 uses
  %.not3240.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %i.fy, !dbg !13041
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13041 ; 3 uses
  br i1 %.not3240.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13047

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.be
  %i.gg = phi ptr [ %i.go, %bb.be ], [ %i.gf, %bb.bd ] ; 2 uses
  %.sroa.010.041.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gn, %bb.be ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bd ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gg, align 1, !dbg !13050, !alias.scope !13052, !noalias !13037, !noundef !15 ; 3 uses
  %i.gh = add i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -58, !dbg !13055
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.gh, -10, !dbg !13055
  %i.gi = and i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, -33, !dbg !13055
  %i.gj = add i8 %i.gi, -91, !dbg !13055
  %i.gk = icmp ult i8 %i.gj, -26, !dbg !13055
  %or.cond7.i.i.i.not61.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gk, !dbg !13055
  %i.gl = icmp ne i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 95, !dbg !13055
  %.sroa.0.0.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.gl, %or.cond7.i.i.i.not61.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13060 ; 2 uses
  br i1 %.sroa.0.0.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, !dbg !13060

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.be, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fy, %bb.be ], [ %.sroa.010.041.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13061 ; 4 uses
  %.lcssa39.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fg, %bb.be ], [ %i.gg, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13041
  %i.gm = icmp eq i64 %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13062
  br i1 %i.gm, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf, !dbg !13062

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bd
  br i1 %i.ge, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13062

.thread.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13063, !noalias !13064
  br label %bb.bh, !dbg !13065

bb.be:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = add nuw nsw i64 %.sroa.010.041.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !13072 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.gn, !dbg !13041
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %i.fy, !dbg !13041
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13047

bb.bf:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13063, !noalias !13064
  %.not.i47.i.i.i.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %i.fy
  br i1 %.not.i47.i.i.i.i.i.i.i.i.i.i.i, label %bb.bg, label %bb.bh, !dbg !13065, !prof !13073

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #22, !dbg !13074, !noalias !13075
  unreachable, !dbg !13074

bb.bh:                                            ; preds = %bb.bf, %.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.010.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf ] ; 3 uses
  %.not32.lcssa6673.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.not.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf ]
  %.lcssa396772.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gf, %.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa39.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bf ]
  %i.gp = sub nuw nsw i64 %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13076
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gf, i64 noundef %i.gp), !dbg !13063, !noalias !13077
  call void @llvm.experimental.noalias.scope.decl(metadata !13078), !dbg !13081
  %i.gq = load i64, ptr %i.b, align 8, !dbg !13082, !range !915, !alias.scope !13078, !noalias !13064, !noundef !15
  %i.gr = trunc nuw i64 %i.gq to i1, !dbg !13085
  br i1 %i.gr, label %bb.bi, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13085, !prof !838

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13086, !noalias !13087
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.au, i64 16, i1 false), !dbg !13086, !noalias !13064
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 24, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #22, !dbg !13088, !noalias !13090
  unreachable, !dbg !13088

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh
  %i.gs = load ptr, ptr %i.au, align 8, !dbg !13091, !alias.scope !13078, !noalias !13064, !nonnull !15, !noundef !15 ; 5 uses
  %i.gt = load i64, ptr %i.av, align 8, !dbg !13091, !alias.scope !13078, !noalias !13064, !noundef !15 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13092, !noalias !13064
  br i1 %i.ge, label %bb.bx, label %bb.bj, !dbg !13093

bb.bj:                                            ; preds = %bb.by, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jm, %bb.by ], [ %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13061 ; 4 uses
  switch i64 %i.gt, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.bk
  ], !dbg !13095

bb.bk:                                            ; preds = %bb.bj
  %i.gu = load i8, ptr %i.gs, align 1, !dbg !13110, !alias.scope !13112, !noalias !13077, !noundef !15 ; 2 uses
  switch i8 %i.gu, label %bb.bl [
    i8 43, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  ], !dbg !13110

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.bj
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gs, align 1, !dbg !13110, !alias.scope !13112, !noalias !13077
  br label %bb.bl, !dbg !13110

bb.bl:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk
  %i.gv = phi i8 [ %.pr.i.i.i.i.i.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gu, %bb.bk ], !dbg !13110
  %cond.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gv, 43, !dbg !13110 ; 2 uses
  %i.gw = sext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13110
  %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %i.gt, %i.gw, !dbg !13110 ; 10 uses
  %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = zext i1 %cond.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13110
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.sroa.0.0.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13110 ; 9 uses
  %i.gx = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9
  br i1 %i.gx, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !dbg !13115

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.bl
  %.not5668.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !13120
  br i1 %.not5668.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13120

.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.bo
  %.not55.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hb, 0, !dbg !13122
  br i1 %.not55.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, !dbg !13122

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bp, %bb.bq, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bv, %bb.bw, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.045.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.jk, %bb.bw ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hm, %bb.bp ], [ %i.hu, %bb.bq ], [ %i.ib, %bb.br ], [ %i.ii, %bb.bs ], [ %i.ip, %bb.bt ], [ %i.iw, %bb.bu ], [ %i.jd, %bb.bv ], [ %i.hi, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], !dbg !13124
  %i.gy = zext i32 %.sroa.045.1.i.i.i.i.i.i.i.i.i.i.i.i.i to i64, !dbg !13125
  %i.gz = shl nuw i64 %i.gy, 32, !dbg !13125
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13125

.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.bl, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288 = phi ptr [ %i.ha, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i.i.i.i.i.i.i.i.i287 = phi i64 [ %i.hb, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bl ]
  %.sroa.045.0.i.i.i.i.i.i.i.i.i.i.i.i.i286 = phi i32 [ %i.hi, %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bl ]
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288, i64 1, !dbg !13126
  %i.hb = add nsw i64 %.sroa.15.1.i.i.i.i.i.i.i.i.i.i.i.i.i287, -1, !dbg !13126 ; 2 uses
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i.i.i.i.i.i.i.i.i.i.i.i.i286, i32 10), !dbg !13127 ; 2 uses
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !13127 ; 2 uses
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !13127
  %i.hc = load i8, ptr %.sroa.0.1.i.i.i.i.i.i.i.i.i.i.i.i.i288, align 1, !dbg !13133, !alias.scope !13112, !noalias !13077, !noundef !15 ; 2 uses
  br i1 %11, label %bb.bn, label %bb.bm, !dbg !13135, !prof !838

bb.bm:                                            ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hd = zext i8 %i.hc to i32, !dbg !13139
  %i.he = add nsw i32 %i.hd, -48, !dbg !13140     ; 2 uses
  %i.hf = icmp ult i32 %i.he, 10, !dbg !13149
  br i1 %i.hf, label %bb.bo, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13151

bb.bn:                                            ; preds = %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hg = add i8 %i.hc, -48, !dbg !13152
  %i.hh = icmp ult i8 %i.hg, 10, !dbg !13152
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.hh, i64 513, i64 257, !dbg !13151
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13151

bb.bo:                                            ; preds = %bb.bm
  %i.hi = add i32 %i.he, %10, !dbg !13154         ; 3 uses
  %i.hj = icmp ult i32 %i.hi, %10, !dbg !13154
  br i1 %i.hj, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.preheader60.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13158, !prof !838

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hk = load i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.hl = zext i8 %i.hk to i32, !dbg !13161
  %i.hm = add nsw i32 %i.hl, -48, !dbg !13162     ; 3 uses
  %i.hn = icmp ult i32 %i.hm, 10, !dbg !13165
  br i1 %i.hn, label %bb.bp, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !13120
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1, !dbg !13120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1:               ; preds = %bb.bp
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 1, !dbg !13167
  %i.hp = load i8, ptr %i.ho, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.hq = zext i8 %i.hp to i32, !dbg !13161
  %i.hr = add nsw i32 %i.hq, -48, !dbg !13162     ; 2 uses
  %i.hs = icmp ult i32 %i.hr, 10, !dbg !13165
  br i1 %i.hs, label %bb.bq, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ht = mul nuw nsw i32 %i.hm, 10, !dbg !13168
  %i.hu = add nuw nsw i32 %i.hr, %i.ht, !dbg !13169 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 2, !dbg !13120
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2, !dbg !13120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2:               ; preds = %bb.bq
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2, !dbg !13167
  %i.hw = load i8, ptr %i.hv, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.hx = zext i8 %i.hw to i32, !dbg !13161
  %i.hy = add nsw i32 %i.hx, -48, !dbg !13162     ; 2 uses
  %i.hz = icmp ult i32 %i.hy, 10, !dbg !13165
  br i1 %i.hz, label %bb.br, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.br:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ia = mul nuw nsw i32 %i.hu, 10, !dbg !13168
  %i.ib = add nuw nsw i32 %i.hy, %i.ia, !dbg !13169 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3, !dbg !13120
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.2, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3, !dbg !13120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3:               ; preds = %bb.br
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 3, !dbg !13167
  %i.id = load i8, ptr %i.ic, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.ie = zext i8 %i.id to i32, !dbg !13161
  %i.if = add nsw i32 %i.ie, -48, !dbg !13162     ; 2 uses
  %i.ig = icmp ult i32 %i.if, 10, !dbg !13165
  br i1 %i.ig, label %bb.bs, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.ih = mul nuw nsw i32 %i.ib, 10, !dbg !13168
  %i.ii = add nuw nsw i32 %i.if, %i.ih, !dbg !13169 ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4, !dbg !13120
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4, !dbg !13120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4:               ; preds = %bb.bs
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 4, !dbg !13167
  %i.ik = load i8, ptr %i.ij, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.il = zext i8 %i.ik to i32, !dbg !13161
  %i.im = add nsw i32 %i.il, -48, !dbg !13162     ; 2 uses
  %i.in = icmp ult i32 %i.im, 10, !dbg !13165
  br i1 %i.in, label %bb.bt, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.bt:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4
  %i.io = mul i32 %i.ii, 10, !dbg !13168
  %i.ip = add i32 %i.im, %i.io, !dbg !13169       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 5, !dbg !13120
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.4, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5, !dbg !13120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5:               ; preds = %bb.bt
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 5, !dbg !13167
  %i.ir = load i8, ptr %i.iq, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.is = zext i8 %i.ir to i32, !dbg !13161
  %i.it = add nsw i32 %i.is, -48, !dbg !13162     ; 2 uses
  %i.iu = icmp ult i32 %i.it, 10, !dbg !13165
  br i1 %i.iu, label %bb.bu, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5
  %i.iv = mul i32 %i.ip, 10, !dbg !13168
  %i.iw = add i32 %i.it, %i.iv, !dbg !13169       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 6, !dbg !13120
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.5, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6, !dbg !13120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6:               ; preds = %bb.bu
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 6, !dbg !13167
  %i.iy = load i8, ptr %i.ix, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.iz = zext i8 %i.iy to i32, !dbg !13161
  %i.ja = add nsw i32 %i.iz, -48, !dbg !13162     ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 10, !dbg !13165
  br i1 %i.jb, label %bb.bv, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.bv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6
  %i.jc = mul i32 %i.iw, 10, !dbg !13168
  %i.jd = add i32 %i.ja, %i.jc, !dbg !13169       ; 2 uses
  %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = icmp eq i64 %.sroa.15.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 7, !dbg !13120
  br i1 %.not56.i.i.i.i.i.i.i.i.i.i.i.i.i.6, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7, !dbg !13120

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7:               ; preds = %bb.bv
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 7, !dbg !13167
  %i.jf = load i8, ptr %i.je, align 1, !dbg !13160, !alias.scope !13112, !noalias !13077, !noundef !15
  %i.jg = zext i8 %i.jf to i32, !dbg !13161
  %i.jh = add nsw i32 %i.jg, -48, !dbg !13162     ; 2 uses
  %i.ji = icmp ult i32 %i.jh, 10, !dbg !13165
  br i1 %i.ji, label %bb.bw, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13166

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7
  %i.jj = mul i32 %i.jd, 10, !dbg !13168
  %i.jk = add i32 %i.jh, %i.jj, !dbg !13169
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13120

bb.bx:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6expectCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %.not32.lcssa6673.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, !dbg !13171

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bx
  %.val.i28.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.lcssa396772.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !dbg !13174, !alias.scope !13176, !noalias !13037, !noundef !15
  %i.jl = icmp eq i8 %.val.i28.i.i.i.i.i.i.i.i.i.i.i.i, 125, !dbg !13179
  br i1 %i.jl, label %bb.by, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i, !dbg !13184

bb.by:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jm = add nuw i64 %.sroa.010.0.lcssa6574.i.i.i.i.i.i.i.i.i.i.i.i, 1, !dbg !13185
  br label %bb.bj, !dbg !13186

bb.bz:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.jn = load i64, ptr %i.z, align 8, !dbg !13187, !range !420, !alias.scope !13197, !noalias !12900, !noundef !15
  %i.jo = icmp eq i64 %i.fx, %i.jn, !dbg !13200
  br i1 %i.jo, label %bb.ca, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13200

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #24, !dbg !13201, !noalias !12891
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i, !dbg !13202

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  %i.jp = load ptr, ptr %i.aw, align 8, !dbg !13203, !alias.scope !13197, !noalias !12900, !nonnull !15, !noundef !15
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.fx, !dbg !13212
  store i8 36, ptr %i.jq, align 1, !dbg !13215, !noalias !12891
  %i.jr = add i64 %i.fx, 1, !dbg !13219
  store i64 %i.jr, ptr %i.ab, align 8, !dbg !13219, !alias.scope !13197, !noalias !12900
  %i.js = add nsw i64 %i.fy, -2, !dbg !13220
  %i.jt = getelementptr inbounds nuw i8, ptr %i.fr, i64 2, !dbg !13224
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13230

.loopexit.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.bo, %bb.bm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %bb.bn, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bk, %bb.bk, %bb.bj
  %.sroa.8.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gz, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 257, %bb.bk ], [ 1, %bb.bj ], [ 257, %bb.bk ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bn ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.7 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.6 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.5 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.4 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.3 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.2 ], [ 257, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.1 ], [ 257, %bb.bm ], [ 513, %bb.bo ], !dbg !13125 ; 2 uses
  %i.ju = trunc i64 %.sroa.8.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i to i1, !dbg !13232 ; 2 uses
  %.sroa.526.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i = lshr i64 %.sroa.8.0.insert.insert.i.i.i.i.i.i.i.i.i.i.i.i.i, 32, !dbg !13233 ; 2 uses
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ju, i64 %i.gt, i64 %.sroa.526.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13233
  %i.jv = icmp ugt i64 %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, %i.fy, !dbg !13234
  br i1 %i.jv, label %bb.cd, label %bb.cc, !dbg !13234, !prof !838

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCNvNtCs7LWxN68iDgu_12grep_matcher11interpolate12find_cap_ref0ECs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bx, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNvNtCs7LWxN68iDgu_12grep_matcher11interpolate19is_valid_cap_letterECs2NzvFoTxuAy_2rg.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bc, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs2NzvFoTxuAy_2rg.exit45.i.i.i.i.i.i.i.i.i.i.i
  %i.jw = load i64, ptr %i.ab, align 8, !dbg !13239, !alias.scope !13242, !noalias !12900, !noundef !15 ; 3 uses
  %i.jx = load i64, ptr %i.z, align 8, !dbg !13245, !range !420, !alias.scope !13242, !noalias !12900, !noundef !15
  %i.jy = icmp eq i64 %i.jw, %i.jx, !dbg !13248
  br i1 %i.jy, label %bb.cb, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i, !dbg !13248

bb.cb:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #24, !dbg !13249, !noalias !12891
  br label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i, !dbg !13250

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cb, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRhE6map_orbNCINvNtCs7LWxN68iDgu_12grep_matcher11interpolate11interpolateNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtB10_8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB3q_8ReplacerRRNtB20_12RegexMatcherE11replace_all00E0B3h_E0ECs2NzvFoTxuAy_2rg.exit.thread.thread.i.i.i.i.i.i.i.i.i.i.i
  %i.jz = load ptr, ptr %i.aw, align 8, !dbg !13251, !alias.scope !13242, !noalias !12900, !nonnull !15, !noundef !15
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jw, !dbg !13256
  store i8 36, ptr %i.ka, align 1, !dbg !13258, !noalias !12891
  %i.kb = add i64 %i.jw, 1, !dbg !13260
  store i64 %i.kb, ptr %i.ab, align 8, !dbg !13260, !alias.scope !13242, !noalias !12900
  %i.kc = add nsw i64 %i.fy, -1, !dbg !13261
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13230

.backedge.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cl, %bb.cg, %bb.cf, %bb.ce, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.20.0.be.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kc, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i ], [ %i.js, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ke, %bb.ce ], [ %i.ke, %bb.cg ], [ %i.ke, %bb.cf ], [ %i.ke, %bb.cl ], [ %i.ke, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.be.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ga, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit48.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jt, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE8push_mutCs2NzvFoTxuAy_2rg.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kf, %bb.ce ], [ %i.kf, %bb.cg ], [ %i.kf, %bb.cf ], [ %i.kf, %bb.cl ], [ %i.kf, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.kd = icmp eq i64 %.sroa.20.0.be.i.i.i.i.i.i.i.i.i.i.i, 0, !dbg !13265
  br i1 %i.kd, label %.thread.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !dbg !12878

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  %i.ke = sub nuw nsw i64 %i.fy, %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13268 ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.fr, i64 %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, !dbg !13269 ; 5 uses
  br i1 %i.ju, label %bb.cf, label %bb.ce, !dbg !13274

bb.cd:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.010.1.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.fy, i64 noundef %i.fy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22, !dbg !13275, !noalias !12891
  unreachable, !dbg !13275

bb.ce:                                            ; preds = %bb.cc
  call fastcc void @_RNCINvYNtNtCsdq8xsXUia3c_10grep_regex7matcher13RegexCapturesNtCs7LWxN68iDgu_12grep_matcher8Captures11interpolateNCNCNvMs_NtCshhHc5tDBDRu_12grep_printer4utilINtB1V_8ReplacerRRNtB7_12RegexMatcherE11replace_all00E0Cs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 noundef %.sroa.526.0.extract.shift.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #23, !dbg !13276, !noalias !13278
  br label %.backedge.i.i.i.i.i.i.i.i.i.i.i, !dbg !13279

bb.cf:                                            ; preds = %bb.cc
  %.val.i.i50.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val, align 8, !dbg !13280, !noalias !13288, !nonnull !15, !align !917, !noundef !15
  %i.kg = getelementptr i8, ptr %.val.i.i50.i.i.i.i.i.i.i.i.i.i.i, i64 48, !dbg !13293
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.kg, align 8, !dbg !13293, !noalias !13296, !nonnull !15, !noundef !15 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, !dbg !13299
  %i.ki = load ptr, ptr %i.kh, align 8, !dbg !13299, !noalias !13313, !nonnull !15, !noundef !15
  %i.kj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24, !dbg !13299
  %i.kk = load ptr, ptr %i.kj, align 8, !dbg !13299, !noalias !13313, !nonnull !15, !align !917, !noundef !15 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16, !dbg !13316
  %i.km = load i64, ptr %i.kl, align 8, !dbg !13316, !range !2627, !invariant.load !15, !noalias !13313
  %i.kn = add nsw i64 %i.km, -1, !dbg !13316
  %i.ko = and i64 %i.kn, -16, !dbg !13316
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.ko, !dbg !13316
end_hunk_0
begin_hunk_1_@_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeRSNtNtBR_5jsont8SubMatchECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryejECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryemECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeyECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtBR_5jsont4DataEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_4util12NiceDurationECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont3EndECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont4DataECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont5BeginECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont5MatchECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont7ContextECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5stats5StatsECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeRSNtNtBR_5jsont8SubMatchECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryejECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryemECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_15PrettyFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeyECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtBR_5jsont4DataEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_4util12NiceDurationECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont3EndECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont4DataECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont5BeginECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont5MatchECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5jsont7ContextECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_5stats5StatsECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeRSNtNtBR_5jsont8SubMatchECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeReECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryejECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryemECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvYINtNtCsgixc6xHyZOO_10serde_json3ser8CompoundQINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtB6_16CompactFormatterENtNtCs696aDvbrEFJ_10serde_core3ser12SerializeMap15serialize_entryeyECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentINtNtCsexYYUdYSQU6_5alloc4sync3ArceEE10equivalentCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #9

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newNtNtB7_6string6StringECsc0anycpf6TS_6ignore(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB18_4PoolINtNtCsexYYUdYSQU6_5alloc3vec3VecjEFEB2a_E3get0jECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsexYYUdYSQU6_5alloc3vec3VecjEFEB16_E8get_slowCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB18_4PoolINtNtCsexYYUdYSQU6_5alloc3vec3VecjEFEB2a_E9put_value0jECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxIBX_jEEEE8try_lockCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe13RefUnwindSafeNtNtB2d_6marker4SendNtB3K_4SyncNtB32_10UnwindSafeEL_EE8get_slowCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE9put_value0jECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEEE8try_lockCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs3_NtCsgwyS1EwTFAS_8grep_cli10decompressNtB5_19DecompressionReader5close(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs2_NtCsgwyS1EwTFAS_8grep_cli7processNtNtNtCskKLDkoKarTP_4core2io5error5ErrorINtNtBI_7convert4FromNtB5_12CommandErrorE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs3_Cs8XVSHBVmna6_7globsetNtB6_7GlobSet8is_matchRNtNtCsG258MDvU3F_3std4path4PathECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RINvMs_NtCsc0anycpf6TS_6ignore9overridesNtB5_8Override7matchedRNtNtCsG258MDvU3F_3std4path4PathECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMsi_NtCsG258MDvU3F_3std7processNtB6_7Command5stdinNtB6_5StdioECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(200), i32 noundef range(i32 0, 5), i32) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvMs4_NtCsgwyS1EwTFAS_8grep_cli7processNtB5_13CommandReader5close(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack11is_explicit(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCs2NzvFoTxuAy_2rg8haystackNtB4_8Haystack4path(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB5_8Searcher20set_binary_detection(ptr noalias nofree noundef align 8 dereferenceable(264), i8 noundef range(i8 0, 3), i8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio5stdin() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i1 } @_RNvMs1_NtNtCsG258MDvU3F_3std2io5stdioNtB5_5Stdin4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCskKLDkoKarTP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxINtNtB7_3vec3VecjEEE8grow_oneCsc0anycpf6TS_6ignore(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex5CacheEE8grow_oneCs8XVSHBVmna6_7globset(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs7LWxN68iDgu_12grep_matcher5MatchE8grow_oneCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #9

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtCsc0anycpf6TS_6ignore9overridesNtB4_8Override5empty(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtNtCsgPiXjGfBJkm_14regex_automata4meta5regexNtB5_5Regex15create_captures(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs0_NtCsgixc6xHyZOO_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtCshhHc5tDBDRu_12grep_printer4utilNtB5_12NiceDurationNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs8XVSHBVmna6_7globset20GlobSetMatchStrategyENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsc0anycpf6TS_6ignore9gitignore4GlobENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshqpdr3wwzuw_13grep_searcher11line_buffer15BinaryDetectionNtB6_5Debug3fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionINtNtB7_3vec3VechEEE9drop_slowCshhHc5tDBDRu_12grep_printer(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketNtNtCsgwyS1EwTFAS_8grep_cli7process12CommandErrorEE9drop_slowB1w_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsgPiXjGfBJkm_14regex_automata4util4pool4PoolINtNtB7_3vec3VecjEEE9drop_slowCsc0anycpf6TS_6ignore(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtCshhHc5tDBDRu_12grep_printer9hyperlink20HyperlinkConfigInnerE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsgPiXjGfBJkm_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsgPiXjGfBJkm_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtCs6Ur84ob3I15_9termcolor6BufferENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYINtNtCshhHc5tDBDRu_12grep_printer7counter13CounterWriterNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef align 8 dereferenceable(80), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs8_NtNtCsexYYUdYSQU6_5alloc2io4utilINtB5_5LinesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCsG258MDvU3F_3std2fs4FileEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs2NzvFoTxuAy_2rg(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECs2NzvFoTxuAy_2rg(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { cold }
attributes #19 = { cold noreturn nounwind }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { noinline noreturn }
attributes #23 = { inlinehint }
attributes #24 = { noinline }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.dbg.cu = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"Dwarf Version", i32 4}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!7 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !8, producer: "clang LLVM (rustc version 1.100.0-nightly (bff8e12ff 2026-08-26))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "crates/core/main.rs/@/rg.209bb3de479c597c-cgu.06", directory: "/opt-bench/work/ripgrep-rs/ripgrep")
!9 = distinct !DISubprogram(name: "build<termcolor::Buffer>", linkageName: "_RINvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB6_19SearchWorkerBuilder5buildNtCs6Ur84ob3I15_9termcolor6BufferEB8_", scope: !11, file: !10, line: 63, type: !14, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!10 = !DIFile(filename: "crates/core/search.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "987a0daff38f937aa5303594ee56d124")
!11 = !DINamespace(name: "SearchWorkerBuilder", scope: !12)
!12 = !DINamespace(name: "search", scope: !13)
!13 = !DINamespace(name: "rg", scope: null)
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 69, column: 13, scope: !9)
!17 = !DILocation(line: 69, column: 34, scope: !9)
!18 = !DILocation(line: 85, column: 5, scope: !9)
!19 = !DILocation(line: 83, column: 10, scope: !20, inlinedAt: !25)
!20 = distinct !DISubprogram(name: "clone", linkageName: "_RNvXsa_NtCsgwyS1EwTFAS_8grep_cli7processNtB5_20CommandReaderBuilderNtNtCskKLDkoKarTP_4core5clone5Clone5clone", scope: !22, file: !21, line: 83, type: !14, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!21 = !DIFile(filename: "crates/cli/src/process.rs", directory: "/opt-bench/work/ripgrep-rs/ripgrep", checksumkind: CSK_MD5, checksum: "3f47f844cb51250da52666f51d500057")
!22 = !DINamespace(name: "{impl#12}", scope: !23)
!23 = !DINamespace(name: "process", scope: !24)
!24 = !DINamespace(name: "grep_cli", scope: null)
!25 = !DILocation(line: 70, column: 52, scope: !26)
!26 = distinct !DILexicalBlock(scope: !9, file: !10, line: 69, column: 9)
!27 = !{i8 0, i8 2}
!28 = !DILocation(line: 71, column: 30, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !10, line: 70, column: 9)
!30 = !DILocation(line: 66, column: 12, scope: !31, inlinedAt: !36)
!31 = distinct !DISubprogram(name: "then<grep_cli::decompress::DecompressionReaderBuilder, rg::search::{impl#2}::build::{closure_env#0}<termcolor::Buffer>>", linkageName: "_RINvMNtCskKLDkoKarTP_4core4boolb4thenNtNtCsgwyS1EwTFAS_8grep_cli10decompress26DecompressionReaderBuilderNCINvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB1N_19SearchWorkerBuilder5buildNtCs6Ur84ob3I15_9termcolor6BufferE0EB1P_", scope: !33, file: !32, line: 65, type: !14, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!32 = !DIFile(filename: "library/core/src/bool.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "6db51c379835b188370e0dff17958163")
!33 = !DINamespace(name: "{impl#0}", scope: !34)
!34 = !DINamespace(name: "bool", scope: !35)
!35 = !DINamespace(name: "core", scope: null)
!36 = !DILocation(line: 71, column: 48, scope: !29)
!37 = !DILocation(line: 66, column: 24, scope: !31, inlinedAt: !36)
!38 = !DILocation(line: 73, column: 17, scope: !39, inlinedAt: !37)
!39 = distinct !DISubprogram(name: "{closure#0}<termcolor::Buffer>", linkageName: "_RNCINvMs0_NtCs2NzvFoTxuAy_2rg6searchNtB8_19SearchWorkerBuilder5buildNtCs6Ur84ob3I15_9termcolor6BufferE0Ba_", scope: !40, file: !10, line: 71, type: !14, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !15)
!40 = !DINamespace(name: "build", scope: !41)
!41 = !DINamespace(name: "{impl#2}", scope: !12)
!42 = !DILocation(line: 66, scope: !31, inlinedAt: !36)
!43 = !DILocation(line: 77, column: 9, scope: !44)
end_hunk_1
