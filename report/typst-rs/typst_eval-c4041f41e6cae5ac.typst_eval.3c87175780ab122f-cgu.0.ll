Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_eval-c4041f41e6cae5ac.typst_eval.3c87175780ab122f-cgu.0?download=true
inline.NumInlined: 6644
inline.NumDeleted: 3025
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_RNvXs_NtCs5cbCQMMIObr_10typst_eval5rulesNtNtCs5PEMdK7bMAG_12typst_syntax3ast8ShowRuleNtB6_4Eval4eval:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  store i64 %i.bc, ptr %i.ad, align 16
  %.sroa.4192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.bf, ptr %.sroa.4192.0..sroa_idx, align 8
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %i.bh, ptr %.sroa.5193.0..sroa_idx, align 16
  br label %bb.z

bb.ac:                                            ; preds = %bb.ax, %bb.af, %bb.ae, %bb.z
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ad:                                            ; preds = %bb.z
  %i.cs = extractvalue { i64, ptr } %i.co, 0      ; 3 uses
  %i.ct = extractvalue { i64, ptr } %i.co, 1      ; 4 uses
  %i.cu = icmp eq i64 %i.cs, 50
  br i1 %i.cu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvXNtCs5cbCQMMIObr_10typst_eval5rulesNtNtCs5PEMdK7bMAG_12typst_syntax3ast7SetRuleNtB4_4Eval4eval(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.ag unwind label %bb.ac

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval4codeNtNtCs5PEMdK7bMAG_12typst_syntax3ast4ExprNtB6_4Eval4eval(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, i64 noundef %i.cs, ptr noundef %i.ct, ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2)
          to label %bb.av unwind label %bb.ac

bb.ag:                                            ; preds = %bb.ae
  %i.cv = load i64, ptr %i.ac, align 8, !range !36, !noundef !35
  %i.cw = trunc nuw i64 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !35, !noundef !35 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noundef !35 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.cw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.da, ptr %i.dc, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.at

bb.ai:                                            ; preds = %bb.ag, %bb.bq
  %.sroa.7100.0 = phi i64 [ %.sroa.6130.0.copyload, %bb.bq ], [ undef, %bb.ag ]
  %i.dd = phi i64 [ %i.fe, %bb.bq ], [ %i.da, %bb.ag ] ; 3 uses
  %i.de = phi ptr [ %i.fc, %bb.bq ], [ %i.cy, %bb.ag ] ; 3 uses
  %i.df = phi i64 [ %i.ez, %bb.bq ], [ 2, %bb.ag ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dg, ptr noundef nonnull align 16 dereferenceable(64) %i.ad, i64 64, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !range !38, !noundef !35 ; 3 uses
  store i64 %i.df, ptr %i.y, align 16
  %.sroa.398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.de, ptr %.sroa.398.0..sroa_idx, align 8
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.dd, ptr %.sroa.599.0..sroa_idx, align 16
  %.sroa.7100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %.sroa.7100.0, ptr %.sroa.7100.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store i64 %i.di, ptr %i.dj, align 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  store i8 0, ptr %i.dk, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !19656)
  %i.dl = load i64, ptr %i.dg, align 16, !range !68, !alias.scope !19656, !noalias !19657, !noundef !35
  %i.dm = icmp ult i64 %i.dl, 2                   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.y, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !19656, !noalias !19657, !nonnull !35, !align !45 ; 2 uses
  %i.dp = icmp eq ptr %i.do, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout4page1__NtB9_8PageElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %or.cond39.i = select i1 %i.dm, i1 %i.dp, i1 false
  br i1 %or.cond39.i, label %bb.aj, label %_RNvNtCs5cbCQMMIObr_10typst_eval5rules20check_show_page_rule.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !19658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !19658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !19658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !19658
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.p, i8 0, i64 15, i1 false), !noalias !19658
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  store i8 -128, ptr %.sroa.3.0..sroa_idx.i, align 1, !noalias !19658
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @259, i64 noundef 46)
          to label %bb.al unwind label %bb.ak, !noalias !19658

bb.ak:                                            ; preds = %bb.aj
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p) #44
          to label %.body unwind label %bb.as, !noalias !19658

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !noalias !19658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !19658
  call void @llvm.experimental.noalias.scope.decl(metadata !19659)
  call void @llvm.experimental.noalias.scope.decl(metadata !19660)
  %i.ds = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.di)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i unwind label %bb.an, !noalias !19661 ; 2 uses

bb.am:                                            ; preds = %bb.an
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19661
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.q) #44
          to label %.body unwind label %bb.am, !noalias !19662

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.al
  %i.dv = extractvalue { i64, i64 } %i.ds, 1
  %i.dw = extractvalue { i64, i64 } %i.ds, 0
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  store i8 1, ptr %i.dx, align 8, !alias.scope !19659, !noalias !19663
  store i64 %i.dw, ptr %i.r, align 8, !alias.scope !19659, !noalias !19663
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.dv, ptr %i.dy, align 8, !alias.scope !19659, !noalias !19663
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.q, i64 16, i1 false), !alias.scope !19664, !noalias !19658
  %i.ea = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ea, align 8, !alias.scope !19659, !noalias !19663
  %i.eb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 0, ptr %i.eb, align 8, !alias.scope !19659, !noalias !19663
  %i.ec = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 3 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.ec, align 8, !alias.scope !19659, !noalias !19663
  %i.ed = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 3 uses
  store i64 0, ptr %i.ed, align 8, !alias.scope !19659, !noalias !19663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !19658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !19658
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.o, i8 0, i64 15, i1 false), !noalias !19658
  %.sroa.3.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.o, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.3.0..sroa_idx8.i, align 1, !noalias !19658
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @260, i64 noundef 43)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i unwind label %bb.ao, !noalias !19658

bb.ao:                                            ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.o) #44
          to label %.body.i unwind label %bb.as, !noalias !19658

bb.ap:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs5cbCQMMIObr_10typst_eval(ptr %.sroa.041.0.copyload.i, i8 %.sroa.543.0.copyload.i) #44
          to label %.body.i unwind label %bb.aq, !noalias !19665, !inline_history !47

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i: ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i
  %.sroa.041.0.copyload.i = load ptr, ptr %i.o, align 8, !noalias !19658 ; 2 uses
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.442.0..sroa_idx.i, i64 7, i1 false), !noalias !19658
  %.sroa.543.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx8.i, align 1, !noalias !19658 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !19658
  call void @llvm.experimental.noalias.scope.decl(metadata !19666)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ec, i64 noundef 1)
          to label %bb.ar unwind label %bb.ap, !noalias !19667, !inline_history !47

bb.aq:                                            ; preds = %bb.ap
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19665, !inline_history !47
  unreachable

.body.i:                                          ; preds = %bb.ap, %bb.ao
  %.pn.i = phi { ptr, i32 } [ %i.ee, %bb.ao ], [ %i.ef, %bb.ap ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.r) #44
          to label %.body unwind label %bb.as, !noalias !19658

bb.ar:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i
  %i.eh = load ptr, ptr %i.ec, align 8, !alias.scope !19666, !noalias !19667, !nonnull !35, !noundef !35
  %i.ei = load i64, ptr %i.ed, align 8, !alias.scope !19666, !noalias !19667, !noundef !35 ; 2 uses
  %i.ej = getelementptr inbounds nuw [32 x i8], ptr %i.eh, i64 %i.ei ; 5 uses
  store i64 1, ptr %i.ej, align 8, !noalias !19668
  %.sroa.4.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i139, align 8, !noalias !19668
  %.sroa.5.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %.sroa.041.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i140, align 8, !noalias !19668
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i, i64 7, i1 false), !noalias !19668
  %.sroa.740.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 31
  store i8 %.sroa.543.0.copyload.i, ptr %.sroa.740.0..sroa_idx.i, align 1, !noalias !19668
  %i.ek = add i64 %i.ei, 1
  store i64 %i.ek, ptr %i.ed, align 8, !alias.scope !19666, !noalias !19667
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.s, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false), !noalias !19658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !19658
  invoke fastcc void @_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.dq, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.s) #48
          to label %.thread unwind label %bb.br

.thread:                                          ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !19658
  br label %_RNvNtCs5cbCQMMIObr_10typst_eval5rules24check_show_par_set_block.exit

bb.as:                                            ; preds = %.body.i, %bb.ao, %bb.ak
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19658
  unreachable

bb.at:                                            ; preds = %bb.aw, %bb.cj, %bb.ah
  %i.em = load i64, ptr %i.ad, align 16, !range !68, !alias.scope !19669, !noundef !35
  %i.en = icmp eq i64 %i.em, -1
  br i1 %i.en, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs5cbCQMMIObr_10typst_eval.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.ad), !inline_history !17
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs5cbCQMMIObr_10typst_eval.exit

bb.av:                                            ; preds = %bb.af
  %i.eo = load i64, ptr %i.aa, align 8, !range !39, !noundef !35 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, -1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.er = load ptr, ptr %i.eq, align 8            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.et = load i64, ptr %i.es, align 8            ; 2 uses
  br i1 %i.ep, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.er, ptr %i.eu, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.et, ptr %i.ev, align 16
  store i64 -1, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.at

bb.ax:                                            ; preds = %bb.av
  %.sroa.6126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.6126.0.copyload = load i64, ptr %.sroa.6126.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  store i64 %i.eo, ptr %i.z, align 8
  %.sroa.688.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.er, ptr %.sroa.688.0..sroa_idx89, align 8
  %.sroa.891.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.et, ptr %.sroa.891.0..sroa_idx92, align 8
  %.sroa.1094.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 %.sroa.6126.0.copyload, ptr %.sroa.1094.0..sroa_idx95, align 8
  invoke void @_RNvXs1l_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_14TransformationNtNtB8_4cast9FromValue10from_value(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.ay unwind label %bb.ac

bb.ay:                                            ; preds = %bb.ax
  %i.ew = invoke noundef nonnull align 8 ptr @_RNvXs3_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_4ExprNtB5_7AstNode10to_untyped(i64 noundef %i.cs, ptr noundef %i.ct)
          to label %bb.az unwind label %bb.ck

.body144.thread223:                               ; preds = %.noexc142, %bb.bo
  %lpad.thr_comm221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.az:                                            ; preds = %bb.ay
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !range !38, !noundef !35
  %i.ez = load i64, ptr %i.ab, align 8, !range !67, !noundef !35 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, -1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8            ; 10 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.fe = load i64, ptr %i.fd, align 8            ; 4 uses
  br i1 %i.fa, label %bb.ba, label %bb.bq

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %.not.i.i.i.i = icmp eq ptr %i.fc, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ff = getelementptr inbounds i8, ptr %i.fc, i64 -16
  %i.fg = load atomic i64, ptr %i.ff acquire, align 8, !noalias !19670
  %i.fh = icmp eq i64 %i.fg, 1
  %i.fi = zext i1 %i.fh to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i: ; preds = %bb.bb, %bb.ba
  %.sroa.02.0.i.i.i.i = phi i8 [ %i.fi, %bb.bb ], [ 1, %bb.ba ] ; 2 uses
  store ptr %i.fc, ptr %i.l, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.fe, ptr %i.fj, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %.sroa.02.0.i.i.i.i, ptr %i.fk, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  store i64 0, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %i.fe, ptr %i.fm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %.not8.i = icmp eq i64 %i.fe, 0
  br i1 %.not8.i, label %bb.bc, label %bb.bd, !prof !40

bb.bc:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #42
          to label %bb.be unwind label %.body.thread5.i

bb.bd:                                            ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs5cbCQMMIObr_10typst_eval.exit.i
  store i64 1, ptr %i.fl, align 8
  %i.fn = trunc nuw i8 %.sroa.02.0.i.i.i.i to i1
  br i1 %i.fn, label %bb.bg, label %bb.bf

.body.thread5.i:                                  ; preds = %bb.bj, %bb.bc
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.be:                                            ; preds = %bb.bc
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fc, i64 15
  %i.fp = load i8, ptr %i.fo, align 1, !noundef !35
  %.not.i = icmp sgt i8 %i.fp, -1
  %i.fq = getelementptr i8, ptr %i.fc, i64 8      ; 2 uses
  br i1 %.not.i, label %bb.bh, label %bb.bk

bb.bg:                                            ; preds = %bb.bd
  %.sroa.013.0.copyload.i = load ptr, ptr %i.fc, align 8
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.515.0.copyload.i = load i64, ptr %.sroa.515.0..sroa_idx.i, align 8
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bf
  %.val.i141 = load ptr, ptr %i.fc, align 8, !nonnull !35, !noundef !35 ; 4 uses
  %.val27.i = load i64, ptr %i.fq, align 8        ; 2 uses
  %.not.i.i.i = icmp eq ptr %.val.i141, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fr = getelementptr inbounds i8, ptr %.val.i141, i64 -16
  %i.fs = atomicrmw add ptr %i.fr, i64 1 monotonic, align 8
  %i.ft = icmp slt i64 %i.fs, 0
  br i1 %i.ft, label %bb.bj, label %bb.bl, !prof !40

bb.bj:                                            ; preds = %bb.bi
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs5cbCQMMIObr_10typst_eval(ptr noundef nonnull %.val.i141) #42
          to label %.noexc.i unwind label %.body.thread5.i

.noexc.i:                                         ; preds = %bb.bj
  unreachable

bb.bk:                                            ; preds = %bb.bf
  %.sroa.019.0.copyload.i = load ptr, ptr %i.fc, align 1
  %.sroa.420.0.copyload.i = load i64, ptr %i.fq, align 1
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bi, %bb.bh, %bb.bg
  %.sroa.515.0.i = phi i64 [ %.sroa.515.0.copyload.i, %bb.bg ], [ %.sroa.420.0.copyload.i, %bb.bk ], [ %.val27.i, %bb.bi ], [ %.val27.i, %bb.bh ]
  %.sroa.013.0.i = phi ptr [ %.sroa.013.0.copyload.i, %bb.bg ], [ %.sroa.019.0.copyload.i, %bb.bk ], [ %.val.i141, %bb.bi ], [ inttoptr (i64 16 to ptr), %bb.bh ]
  store ptr %.sroa.013.0.i, ptr %i.n, align 8
  %.sroa.3.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.515.0.i, ptr %.sroa.3.sroa.4.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !19671)
  call void @llvm.experimental.noalias.scope.decl(metadata !19672)
  %i.fu = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.ey)
          to label %bb.bo unwind label %bb.bn, !noalias !19673 ; 2 uses

bb.bm:                                            ; preds = %bb.bn
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19673
  unreachable

bb.bn:                                            ; preds = %bb.bl
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.n) #44
          to label %.body.thread.i unwind label %bb.bm, !noalias !19671

bb.bo:                                            ; preds = %bb.bl
  %i.fx = extractvalue { i64, i64 } %i.fu, 1
  %i.fy = extractvalue { i64, i64 } %i.fu, 0
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i8 0, ptr %i.fz, align 8, !alias.scope !19671, !noalias !19672
  store i64 %i.fy, ptr %i.m, align 8, !alias.scope !19671, !noalias !19672
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.fx, ptr %i.ga, align 8, !alias.scope !19671, !noalias !19672
  %i.gb = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gb, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false), !alias.scope !19673
  %i.gc = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.gc, align 8, !alias.scope !19671, !noalias !19672
  %i.gd = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.gd, align 8, !alias.scope !19671, !noalias !19672
  %i.ge = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %i.ge, align 8, !alias.scope !19671, !noalias !19672
  %i.gf = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 0, ptr %i.gf, align 8, !alias.scope !19671, !noalias !19672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic10with_hintsINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtB1k_6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.k, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.m, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.l)
          to label %.noexc142 unwind label %.body144.thread223

.noexc142:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.gg = invoke fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.k)
          to label %bb.cj unwind label %.body144.thread223 ; 2 uses

.body.thread.i:                                   ; preds = %bb.bn, %.body.thread5.i
  %eh.lpad-body4.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread5.i ], [ %i.fw, %bb.bn ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterNtNtBG_6string9EcoStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(40) %i.l) #44
          to label %bb.cl unwind label %bb.bp

bb.bp:                                            ; preds = %.body.thread.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.bq:                                            ; preds = %bb.az
  %.sroa.6130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.6130.0.copyload = load i64, ptr %.sroa.6130.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ai

bb.br:                                            ; preds = %bb.cg, %bb.ar
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bt, %bb.bw, %.body.i151, %bb.br, %bb.ak, %bb.an, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.dr, %bb.ak ], [ %i.du, %bb.an ], [ %.pn.i, %.body.i ], [ %i.gi, %bb.br ], [ %i.hn, %bb.bw ], [ %.pn.i152, %.body.i151 ], [ %i.hk, %bb.bt ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles6RecipeECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 16 dereferenceable(112) %i.y) #44
          to label %common.resume unwind label %bb.ci

_RNvNtCs5cbCQMMIObr_10typst_eval5rules20check_show_page_rule.exit: ; preds = %bb.ai
  br i1 %i.dm, label %bb.bs, label %_RNvNtCs5cbCQMMIObr_10typst_eval5rules24check_show_par_set_block.exit

bb.bs:                                            ; preds = %_RNvNtCs5cbCQMMIObr_10typst_eval5rules20check_show_page_rule.exit
  %i.gj = icmp eq ptr %i.do, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library5model3par1__NtB9_7ParElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.gk = icmp eq i64 %i.df, 2
  %or.cond.i = and i1 %i.gj, %i.gk
  br i1 %or.cond.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %_RNvNtCs5cbCQMMIObr_10typst_eval5rules24check_show_par_set_block.exit

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %bb.bs, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge
  %.sroa.12.0.i.i = phi i64 [ %.sroa.12.1.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ %i.dd, %bb.bs ] ; 3 uses
  %.sroa.08.0.i20.i.i.i = phi ptr [ %.sroa.08.0.i19.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ %i.de, %bb.bs ] ; 4 uses
  %.sroa.08.025.i15.i.i.i = phi ptr [ %.sroa.08.025.i14.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ inttoptr (i64 16 to ptr), %bb.bs ] ; 2 uses
  %i.gl = phi ptr [ %i.gp, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ inttoptr (i64 16 to ptr), %bb.bs ] ; 2 uses
  %i.gm = icmp eq ptr %.sroa.08.025.i15.i.i.i, %i.gl
  br i1 %i.gm, label %.lr.ph.i.i.i.i.preheader, label %.loopexit.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.not.i.i.i.i156.peel = icmp eq ptr %.sroa.08.0.i20.i.i.i, null
  %i.gn = icmp eq i64 %.sroa.12.0.i.i, 0
  %or.cond = select i1 %.not.i.i.i.i156.peel, i1 true, i1 %i.gn
  br i1 %or.cond, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i, label %.loopexit.loopexit.i.i.i

.loopexit.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.preheader
  %.idx.i.i.i.i = shl nuw nsw i64 %.sroa.12.0.i.i, 7
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i20.i.i.i, i64 %.idx.i.i.i.i
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.loopexit.loopexit.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.sroa.12.1.i.i = phi i64 [ undef, %.loopexit.loopexit.i.i.i ], [ %.sroa.12.0.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %.sroa.08.0.i19.i.i.i = phi ptr [ null, %.loopexit.loopexit.i.i.i ], [ %.sroa.08.0.i20.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %.sroa.08.025.i14.i.i.i = phi ptr [ %.sroa.08.0.i20.i.i.i, %.loopexit.loopexit.i.i.i ], [ %.sroa.08.025.i15.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %.lcssa.i.i.i.i = phi ptr [ %i.go, %.loopexit.loopexit.i.i.i ], [ %i.gl, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ] ; 4 uses
  %i.gp = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i, i64 -128
  %i.gq = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i, i64 -112
  %i.gr = load i64, ptr %i.gq, align 16, !range !71, !noalias !19674, !noundef !35 ; 2 uses
  %i.gs = icmp ne i64 %i.gr, 4
  call void @llvm.assume(i1 %i.gs)
  %.not.i5.i.i.i = icmp eq i64 %i.gr, 3
  br i1 %.not.i5.i.i.i, label %.split.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge

.split.i.i.i:                                     ; preds = %.loopexit.i.i.i
  %i.gt = getelementptr i8, ptr %.lcssa.i.i.i.i, i64 -88
  %.val4.i.i.i.i = load ptr, ptr %i.gt, align 8, !noalias !19674, !nonnull !35, !align !45, !noundef !35
  %i.gu = getelementptr i8, ptr %.lcssa.i.i.i.i, i64 -72
  %.val5.i.i.i.i = load i8, ptr %i.gu, align 8, !noalias !19674
  %i.gv = icmp eq ptr %.val4.i.i.i.i, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB9_9BlockElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.gw = icmp eq i8 %.val5.i.i.i.i, 9
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_6layout9container9BlockElemKh9_ECs5cbCQMMIObr_10typst_eval.exit.thread.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge: ; preds = %.split.i.i.i, %.loopexit.i.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKh9_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.preheader, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge
  %.sroa.12.0.i60.i = phi i64 [ %.sroa.12.1.i65.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ %i.dd, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.sroa.08.0.i20.i.i61.i = phi ptr [ %.sroa.08.0.i19.i.i66.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ %i.de, %.lr.ph.i.i.i.i.preheader ] ; 4 uses
  %.sroa.08.025.i15.i.i62.i = phi ptr [ %.sroa.08.025.i14.i.i67.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.gx = phi ptr [ %i.hb, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge ], [ inttoptr (i64 16 to ptr), %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %i.gy = icmp eq ptr %.sroa.08.025.i15.i.i62.i, %i.gx
  br i1 %i.gy, label %.lr.ph.i.i.i75.i.preheader, label %.loopexit.i.i63.i

.lr.ph.i.i.i75.i.preheader:                       ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.not.i.i.i79.i.peel = icmp eq ptr %.sroa.08.0.i20.i.i61.i, null
  %i.gz = icmp eq i64 %.sroa.12.0.i60.i, 0
  %or.cond252 = select i1 %.not.i.i.i79.i.peel, i1 true, i1 %i.gz
  br i1 %or.cond252, label %_RNvNtCs5cbCQMMIObr_10typst_eval5rules24check_show_par_set_block.exit, label %.loopexit.loopexit.i.i89.i

.loopexit.loopexit.i.i89.i:                       ; preds = %.lr.ph.i.i.i75.i.preheader
  %.idx.i.i.i90.i = shl nuw nsw i64 %.sroa.12.0.i60.i, 7
  %i.ha = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i20.i.i61.i, i64 %.idx.i.i.i90.i
  br label %.loopexit.i.i63.i

.loopexit.i.i63.i:                                ; preds = %.loopexit.loopexit.i.i89.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i
  %.sroa.12.1.i65.i = phi i64 [ undef, %.loopexit.loopexit.i.i89.i ], [ %.sroa.12.0.i60.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %.sroa.08.0.i19.i.i66.i = phi ptr [ null, %.loopexit.loopexit.i.i89.i ], [ %.sroa.08.0.i20.i.i61.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %.sroa.08.025.i14.i.i67.i = phi ptr [ %.sroa.08.0.i20.i.i61.i, %.loopexit.loopexit.i.i89.i ], [ %.sroa.08.025.i15.i.i62.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ]
  %.lcssa.i.i.i68.i = phi ptr [ %i.ha, %.loopexit.loopexit.i.i89.i ], [ %i.gx, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i ] ; 4 uses
  %i.hb = getelementptr inbounds i8, ptr %.lcssa.i.i.i68.i, i64 -128
  %i.hc = getelementptr inbounds i8, ptr %.lcssa.i.i.i68.i, i64 -112
  %i.hd = load i64, ptr %i.hc, align 16, !range !71, !noalias !19675, !noundef !35 ; 2 uses
  %i.he = icmp ne i64 %i.hd, 4
  call void @llvm.assume(i1 %i.he)
  %.not.i5.i.i69.i = icmp eq i64 %i.hd, 3
  br i1 %.not.i5.i.i69.i, label %.split.i.i70.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge

.split.i.i70.i:                                   ; preds = %.loopexit.i.i63.i
  %i.hf = getelementptr i8, ptr %.lcssa.i.i.i68.i, i64 -88
  %.val4.i.i.i71.i = load ptr, ptr %i.hf, align 8, !noalias !19675, !nonnull !35, !align !45, !noundef !35
  %i.hg = getelementptr i8, ptr %.lcssa.i.i.i68.i, i64 -72
  %.val5.i.i.i72.i = load i8, ptr %i.hg, align 8, !noalias !19675
  %i.hh = icmp eq ptr %.val4.i.i.i71.i, @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB9_9BlockElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE
  %i.hi = icmp eq i8 %.val5.i.i.i72.i, 10
  %.sroa.0.0.i.i.i.i.i73.i = select i1 %i.hh, i1 %i.hi, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i73.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_6layout9container9BlockElemKh9_ECs5cbCQMMIObr_10typst_eval.exit.thread.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i.backedge: ; preds = %.split.i.i70.i, %.loopexit.i.i63.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowuENCINvMsk_B21_NtB21_10StyleChain3hasNtNtNtB25_6layout9container9BlockElemKha_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB2Z_NCB3Z_s_0E0E0Cs5cbCQMMIObr_10typst_eval.exit.i.i.i

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_6layout9container9BlockElemKh9_ECs5cbCQMMIObr_10typst_eval.exit.thread.i: ; preds = %.split.i.i.i, %.split.i.i70.i
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.g, i8 0, i64 15, i1 false), !noalias !19676
  %.sroa.4.0..sroa_idx.i147 = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 -128, ptr %.sroa.4.0..sroa_idx.i147, align 1, !noalias !19676
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @261, i64 noundef 56)
          to label %bb.bu unwind label %bb.bt, !noalias !19676

bb.bt:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_6layout9container9BlockElemKh9_ECs5cbCQMMIObr_10typst_eval.exit.thread.i
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #44
          to label %.body unwind label %bb.ch, !noalias !19676

bb.bu:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain3hasNtNtNtBa_6layout9container9BlockElemKh9_ECs5cbCQMMIObr_10typst_eval.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !19676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19676
  call void @llvm.experimental.noalias.scope.decl(metadata !19677)
  call void @llvm.experimental.noalias.scope.decl(metadata !19678)
  %i.hl = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.di)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i150 unwind label %bb.bw, !noalias !19679 ; 2 uses

bb.bv:                                            ; preds = %bb.bw
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19679
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.h) #44
          to label %.body unwind label %bb.bv, !noalias !19680

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i150: ; preds = %bb.bu
  %i.ho = extractvalue { i64, i64 } %i.hl, 1
  %i.hp = extractvalue { i64, i64 } %i.hl, 0
  %i.hq = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store i8 1, ptr %i.hq, align 8, !alias.scope !19677, !noalias !19681
  store i64 %i.hp, ptr %i.i, align 8, !alias.scope !19677, !noalias !19681
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.ho, ptr %i.hr, align 8, !alias.scope !19677, !noalias !19681
  %i.hs = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.h, i64 16, i1 false), !alias.scope !19682, !noalias !19676
  %i.ht = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %i.ht, align 8, !alias.scope !19677, !noalias !19681
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 0, ptr %i.hu, align 8, !alias.scope !19677, !noalias !19681
  %i.hv = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.hv, align 8, !alias.scope !19677, !noalias !19681
  %i.hw = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 5 uses
  store i64 0, ptr %i.hw, align 8, !alias.scope !19677, !noalias !19681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !19676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.f, i8 0, i64 15, i1 false), !noalias !19676
  %.sroa.4.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.f, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.4.0..sroa_idx11.i, align 1, !noalias !19676
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @262, i64 noundef 36)
          to label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i153 unwind label %bb.bx, !noalias !19676

bb.bx:                                            ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i150
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #44
          to label %.body.i151 unwind label %bb.ch, !noalias !19676

bb.by:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i153
  %i.hy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs5cbCQMMIObr_10typst_eval(ptr %.sroa.0105.0.copyload.i, i8 %.sroa.5107.0.copyload.i) #44
          to label %.body.i151 unwind label %bb.bz, !noalias !19683, !inline_history !47

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i153: ; preds = %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic7warningNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval.exit.i150
  %.sroa.0105.0.copyload.i = load ptr, ptr %i.f, align 8, !noalias !19676 ; 2 uses
  %.sroa.4106.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i146)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i146, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4106.0..sroa_idx.i, i64 7, i1 false), !noalias !19676
  %.sroa.5107.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx11.i, align 1, !noalias !19676 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !19676
  call void @llvm.experimental.noalias.scope.decl(metadata !19684)
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hv, i64 noundef 1)
          to label %bb.ca unwind label %bb.by, !noalias !19685, !inline_history !47

bb.bz:                                            ; preds = %bb.by
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19683, !inline_history !47
  unreachable

.body.i151:                                       ; preds = %bb.cd, %bb.cb, %bb.by, %bb.bx
  %.pn.i152 = phi { ptr, i32 } [ %i.hx, %bb.bx ], [ %i.ie, %bb.cb ], [ %i.hy, %bb.by ], [ %i.if, %bb.cd ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #44
          to label %.body unwind label %bb.ch, !noalias !19676

bb.ca:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i153
  %i.ia = load ptr, ptr %i.hv, align 8, !alias.scope !19684, !noalias !19685, !nonnull !35, !noundef !35 ; 3 uses
  %i.ib = load i64, ptr %i.hw, align 8, !alias.scope !19684, !noalias !19685, !noundef !35 ; 2 uses
  %i.ic = getelementptr inbounds nuw [32 x i8], ptr %i.ia, i64 %i.ib ; 5 uses
  store i64 1, ptr %i.ic, align 8, !noalias !19686
  %.sroa.4.0..sroa_idx103.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx103.i, align 8, !noalias !19686
  %.sroa.5.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  store ptr %.sroa.0105.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i154, align 8, !noalias !19686
  %.sroa.7.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.0..sroa_idx.i155, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7.i146, i64 7, i1 false), !noalias !19686
  %.sroa.7104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ic, i64 31
  store i8 %.sroa.5107.0.copyload.i, ptr %.sroa.7104.0..sroa_idx.i, align 1, !noalias !19686
  %i.id = add i64 %i.ib, 1                        ; 2 uses
  store i64 %i.id, ptr %i.hw, align 8, !alias.scope !19684, !noalias !19685
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.e, i8 0, i64 15, i1 false), !noalias !19676
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.e, i64 15 ; 2 uses
  store i8 -128, ptr %.sroa.4.0..sroa_idx13.i, align 1, !noalias !19676
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @263, i64 noundef 72)
          to label %bb.cc unwind label %bb.cb, !noalias !19676

bb.cb:                                            ; preds = %bb.ca
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #44
          to label %.body.i151 unwind label %bb.ch, !noalias !19676

bb.cc:                                            ; preds = %bb.ca
  %.sroa.0113.0.copyload.i = load ptr, ptr %i.e, align 8, !noalias !19676 ; 2 uses
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7111.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7111.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.4114.0..sroa_idx.i, i64 7, i1 false), !noalias !19676
  %.sroa.5115.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx13.i, align 1, !noalias !19676 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19676
  call void @llvm.experimental.noalias.scope.decl(metadata !19687)
  %.not.i.i92.i = icmp eq ptr %i.ia, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i92.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i94.i, label %bb.ce

bb.cd:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i94.i
  %i.if = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtBE_8DiagSpanEECs5cbCQMMIObr_10typst_eval(ptr %.sroa.0113.0.copyload.i, i8 %.sroa.5115.0.copyload.i) #44
          to label %.body.i151 unwind label %bb.cf, !noalias !19688, !inline_history !47

bb.ce:                                            ; preds = %bb.cc
  %i.ig = getelementptr i8, ptr %i.ia, i64 -8
  %.val.i.i93.i = load i64, ptr %i.ig, align 8, !noalias !19688, !noundef !35
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i94.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i94.i: ; preds = %bb.ce, %bb.cc
  %.sroa.02.0.i.i95.i = phi i64 [ %.val.i.i93.i, %bb.ce ], [ 0, %bb.cc ]
  %i.ih = icmp eq i64 %i.id, %.sroa.02.0.i.i95.i
  %i.ii = zext i1 %i.ih to i64
  invoke fastcc void @_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtB6_6string9EcoStringNtBJ_8DiagSpanEE7reserveCs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.hv, i64 noundef %i.ii)
          to label %bb.cg unwind label %bb.cd, !noalias !19689, !inline_history !47

bb.cf:                                            ; preds = %bb.cd
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19688, !inline_history !47
  unreachable

bb.cg:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecINtNtCs5PEMdK7bMAG_12typst_syntax4span7SpannedNtNtBN_6string9EcoStringNtB1O_8DiagSpanEE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i94.i
  %i.ik = load ptr, ptr %i.hv, align 8, !alias.scope !19687, !noalias !19689, !nonnull !35, !noundef !35
  %i.il = load i64, ptr %i.hw, align 8, !alias.scope !19687, !noalias !19689, !noundef !35 ; 2 uses
  %i.im = getelementptr inbounds nuw [32 x i8], ptr %i.ik, i64 %i.il ; 5 uses
  store i64 1, ptr %i.im, align 8, !noalias !19690
  %.sroa.4109.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i64 0, ptr %.sroa.4109.0..sroa_idx.i, align 8, !noalias !19690
  %.sroa.5110.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  store ptr %.sroa.0113.0.copyload.i, ptr %.sroa.5110.0..sroa_idx.i, align 8, !noalias !19690
  %.sroa.7111.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7111.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.7111.i, i64 7, i1 false), !noalias !19690
  %.sroa.7112.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.im, i64 31
  store i8 %.sroa.5115.0.copyload.i, ptr %.sroa.7112.0..sroa_idx.i, align 1, !noalias !19690
  %i.in = add i64 %i.il, 1
  store i64 %i.in, ptr %i.hw, align 8, !alias.scope !19687, !noalias !19689
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7111.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !19676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !19676
  invoke fastcc void @_RNvMs2_NvNtCsdaEETE4DqmE_13typst_library6engines_1__NtB5_18___ComemoSurfaceMut4warn(ptr noalias nofree noundef readonly align 8 dereferenceable(24) %i.hj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.j) #48
          to label %.noexc159 unwind label %bb.br

.noexc159:                                        ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19676
  br label %_RNvNtCs5cbCQMMIObr_10typst_eval5rules24check_show_par_set_block.exit

bb.ch:                                            ; preds = %bb.cb, %.body.i151, %bb.bx, %bb.bt
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43, !noalias !19676
  unreachable

_RNvNtCs5cbCQMMIObr_10typst_eval5rules24check_show_par_set_block.exit: ; preds = %.lr.ph.i.i.i75.i.preheader, %.thread, %.noexc159, %bb.bs, %_RNvNtCs5cbCQMMIObr_10typst_eval5rules20check_show_page_rule.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.y, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs5cbCQMMIObr_10typst_eval.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs5cbCQMMIObr_10typst_eval.exit: ; preds = %bb.aa, %bb.at, %bb.au, %_RNvNtCs5cbCQMMIObr_10typst_eval5rules24check_show_par_set_block.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  ret void

bb.ci:                                            ; preds = %bb.cm, %bb.ck, %.body
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.cj:                                            ; preds = %.noexc142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.iq = extractvalue { ptr, i64 } %i.gg, 0
  %i.ir = extractvalue { ptr, i64 } %i.gg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.iq, ptr %i.is, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ir, ptr %i.it, align 16
  store i64 -1, ptr %0, align 16
  br label %bb.at

bb.ck:                                            ; preds = %bb.ay
  %lpad.thr_comm.split-lp222 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationNtNtB13_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab) #44
          to label %bb.cl unwind label %bb.ci

bb.cl:                                            ; preds = %bb.ac, %bb.ck, %.body144.thread223, %.body.thread.i
  %.pn.ph = phi { ptr, i32 } [ %lpad.thr_comm221, %.body144.thread223 ], [ %lpad.thr_comm.split-lp222, %bb.ck ], [ %i.cr, %bb.ac ], [ %eh.lpad-body4.i, %.body.thread.i ] ; 2 uses
  %i.iu = load i64, ptr %i.ad, align 16, !range !68, !alias.scope !19691, !noundef !35
  %i.iv = icmp eq i64 %i.iu, -1
  br i1 %i.iv, label %common.resume, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %i.ad)
          to label %common.resume unwind label %bb.ci, !inline_history !17
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtCs5cbCQMMIObr_10typst_eval6accessNtNtCs5PEMdK7bMAG_12typst_syntax3ast5IdentNtB4_6Access6access(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef align 8 dereferenceable(384) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !range !38, !noundef !35 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 376
  %i.j = load i64, ptr %i.i, align 8, !noundef !35
  %i.k = icmp eq i64 %i.j, %i.h
  br i1 %i.k, label %bb.c, label %bb.b

.sink.split:                                      ; preds = %bb.g, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5scope7BindingNtNtB14_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = call { ptr, i64 } @_RNvXsA_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_5IdentNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5scopeNtB2_6Scopes7get_mut(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.o)
  %i.p = load ptr, ptr %i.c, align 8, !noundef !35 ; 2 uses
  %.not4 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not4, label %bb.n, label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = call { ptr, i64 } @_RNvXsA_NtCs5PEMdK7bMAG_12typst_syntax3astNtB5_5IdentNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) ; 2 uses
  %i.t = extractvalue { ptr, i64 } %i.s, 0
  %i.u = extractvalue { ptr, i64 } %i.s, 1
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations5scopeNtB2_6Scopes3get(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.u)
  %i.v = load ptr, ptr %i.e, align 8, !noundef !35 ; 5 uses
  %.not3 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %.not3, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val9 = load i64, ptr %i.w, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.v, inttoptr (i64 16 to ptr)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %.sink.split, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %bb.d
  %i.y = atomicrmw sub ptr %i.x, i64 1 release, align 8
  %.not.i.i.i.i = icmp eq i64 %i.y, 1
  br i1 %.not.i.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %.sink.split

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVecNtNtBN_6string9EcoStringENtNtNtB5_3ops4drop4Drop4drop0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr i8, ptr %i.v, i64 -8
  %.val.i.i.i.i.i = load i64, ptr %i.z, align 8, !noundef !35 ; 2 uses
  %i.aa = icmp ult i64 %.val.i.i.i.i.i, 1152921504606846976
  %i.ab = shl i64 %.val.i.i.i.i.i, 4              ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 9223372036854775784
  %narrow.i.i.i.i.i.i = and i1 %i.aa, %i.ac
  br i1 %narrow.i.i.i.i.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i, label %bb.e, !prof !37

bb.e:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #42
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecNtNtBN_6string9EcoStringE8capacity0ECs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.ad = add nuw nsw i64 %i.ab, 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.x, ptr %i.ae, align 8
  store i64 8, ptr %i.a, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ad, ptr %i.af, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs5cbCQMMIObr_10typst_eval(ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef %.val9)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtB7_6string9EcoStringE4sizeCs5cbCQMMIObr_10typst_eval.exit.i.i.i.i
  call void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ak, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %i.w, align 8, !nonnull !35, !align !45, !noundef !35 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aj = ptrtoint ptr %i.ai to i64
  invoke fastcc void @_RNvXsj_NtNtCsdaEETE4DqmE_13typst_library11foundations5valueNtB5_5ValueNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5scope7BindingNtNtB14_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval(ptr null, i64 %i.aj) #44
          to label %common.resume unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvMNtCs5cbCQMMIObr_10typst_eval2vmNtB2_2Vm5trace(ptr noalias nofree noundef nonnull align 8 dereferenceable(384) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5scope7BindingNtNtB14_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit19 unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtNtCsdaEETE4DqmE_13typst_library11foundations5scope7BindingNtNtB14_4diag12HintedStringEECs5cbCQMMIObr_10typst_eval.exit19: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #43
  unreachable

bb.m:                                             ; preds = %bb.b
  %i.am = load i64, ptr %i.q, align 8, !noundef !35
  br label %bb.r

bb.n:                                             ; preds = %bb.b
  %i.an = load ptr, ptr %i.q, align 8, !nonnull !35, !align !45, !noundef !35
  call void @_RNvMs3_NtNtCsdaEETE4DqmE_13typst_library11foundations5scopeNtB5_7Binding5write(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.an)
  %i.ao = load i64, ptr %i.b, align 8, !range !36, !noundef !35
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ar = call { ptr, i64 } @_RNvMs8_NtCsdaEETE4DqmE_13typst_library4diagNtB5_12HintedString3new(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.aq) ; 2 uses
  %i.as = extractvalue { ptr, i64 } %i.ar, 0
  %i.at = extractvalue { ptr, i64 } %i.ar, 1
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.aq, align 8, !nonnull !35, !align !45, !noundef !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8
  store ptr null, ptr %0, align 8
  br label %bb.q

end_hunk_0
