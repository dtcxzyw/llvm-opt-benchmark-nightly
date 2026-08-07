inline.NumInlined: 3215
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB4_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmt:bb.a
  %i.bz = add nsw i64 %i.bx, -1                   ; 2 uses
  %.not.i63 = icmp eq i64 %i.bx, 0
  br i1 %.not.i63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit
  %i.ca = load ptr, ptr %i.ay, align 8, !alias.scope !7883, !nonnull !4, !noundef !4 ; 2 uses
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.ca, i64 %i.bz ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !noalias !7883, !noundef !4 ; 2 uses
  %i.ce = icmp ult i64 %i.cd, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp eq i64 %i.cd, 0
  br i1 %i.cf, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit, label %bb.aa

bb.z:                                             ; preds = %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.bz, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #28, !noalias !7883
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 25
  store i8 %.sroa.0.0.i62, ptr %i.cg, align 1, !noalias !7883
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7883
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i8 0, ptr %i.ch, align 8, !noalias !7883
  store i64 0, ptr %i.q, align 8, !noalias !7883
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7883
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7883
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 25
  store i8 -1, ptr %i.ci, align 1, !noalias !7883
  %i.cj = load i64, ptr %i.bw, align 8, !range !57, !alias.scope !7886, !noalias !7889, !noundef !4
  %i.ck = icmp eq i64 %i.bx, %i.cj
  br i1 %i.ck, label %bb.ab, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bw)
          to label %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i unwind label %bb.ac, !noalias !7889

._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i: ; preds = %bb.ab
  %.pre.i = load ptr, ptr %i.ay, align 8, !alias.scope !7886, !noalias !7889
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.q) #26
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.fs, %bb.fm, %bb.fg, %bb.fa, %bb.et, %bb.em, %bb.eg, %bb.dz, %bb.dt, %bb.dn, %bb.dh, %bb.db, %bb.cv, %bb.cp, %bb.cb, %bb.bb, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.xb, %bb.fm ], [ %i.cl, %bb.ac ], [ %i.er, %bb.bb ], [ %i.ib, %bb.cb ], [ %i.le, %bb.cp ], [ %i.mc, %bb.cv ], [ %i.na, %bb.db ], [ %i.nz, %bb.dh ], [ %i.ox, %bb.dn ], [ %i.pw, %bb.dt ], [ %i.qu, %bb.dz ], [ %i.sb, %bb.eg ], [ %i.ta, %bb.em ], [ %i.tz, %bb.et ], [ %i.uz, %bb.fa ], [ %i.wc, %bb.fg ], [ %i.ya, %bb.fs ]
  resume { ptr, i32 } %common.resume.op

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i: ; preds = %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i, %bb.aa
  %i.cn = phi ptr [ %.pre.i, %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i ], [ %i.ca, %bb.aa ]
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %i.cn, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %i.cp = add nuw nsw i64 %i.bx, 1
  store i64 %i.cp, ptr %i.au, align 8, !alias.scope !7886, !noalias !7889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !7883
  br label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit

_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i, %bb.y, %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.cr = load i64, ptr %i.cq, align 8, !range !204, !noundef !4
  %.not58 = icmp eq i64 %i.cr, 2
  br i1 %.not58, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit78, label %bb.af

bb.ae:                                            ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
  store i64 0, ptr %0, align 8
  %i.cs = icmp eq ptr %i.as, %i.ap
  br i1 %i.cs, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit.thread, label %.lr.ph361, !llvm.loop !7891

bb.af:                                            ; preds = %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit
  %i.ct = tail call noundef align 4 ptr @_RINvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB6_8PeekableINtNtNtBc_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE7next_ifNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2A_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts0_0EB2G_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 %1)
  %.not59 = icmp eq ptr %i.ct, null
  br i1 %.not59, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit78, label %.preheader

.preheader:                                       ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %.promoted205 = load i64, ptr %i.cq, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.df = trunc nuw i64 %.promoted205 to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7895)
  br i1 %i.df, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66thread-pre-split.peel, label %bb.ag

bb.ag:                                            ; preds = %.preheader
  %i.dg = load ptr, ptr %i.cu, align 8, !alias.scope !7897, !noalias !7892, !nonnull !4, !noundef !4 ; 3 uses
  %i.dh = load ptr, ptr %i.cw, align 8, !alias.scope !7897, !noalias !7892, !nonnull !4, !noundef !4
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i64.peel, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store ptr %i.dj, ptr %i.cu, align 8, !alias.scope !7897, !noalias !7892
  br label %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i64.peel

_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i64.peel: ; preds = %bb.ah, %bb.ag
  %.sroa.0.0.i.i.i65.peel = phi ptr [ %i.dg, %bb.ah ], [ null, %bb.ag ] ; 2 uses
  store i64 1, ptr %i.cq, align 8, !alias.scope !7892, !noalias !7895
  store ptr %.sroa.0.0.i.i.i65.peel, ptr %i.cv, align 8, !alias.scope !7892, !noalias !7895
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66thread-pre-split.peel: ; preds = %.preheader
  %.pr196.peel = load ptr, ptr %i.cv, align 8
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.peel

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.peel: ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66thread-pre-split.peel, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i64.peel
  %i.dk = phi ptr [ %.pr196.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66thread-pre-split.peel ], [ %.sroa.0.0.i.i.i65.peel, %_RNCNvMs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters8peekableINtB7_8PeekableINtNtNtBd_5slice4iter4IterNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE4peek0CsEhZmuQNqkz_11ruff_linter.exit.i64.peel ] ; 2 uses
  %.not60.peel = icmp eq ptr %i.dk, null
  br i1 %.not60.peel, label %.loopexit277, label %bb.ai

bb.ai:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.peel
  %i.dl = load i8, ptr %i.cx, align 4, !range !5507, !noundef !4 ; 2 uses
  %i.dm = icmp samesign ugt i8 %i.dl, 1
  %i.dn = zext nneg i8 %i.dl to i64
  %i.do = add nsw i64 %i.dn, -1
  %i.dp = select i1 %i.dm, i64 %i.do, i64 0       ; 2 uses
  switch i64 %i.dp, label %.loopexit278 [
    i64 0, label %bb.ap
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel
    i64 3, label %bb.ao
    i64 4, label %bb.an
    i64 5, label %bb.am
    i64 6, label %bb.an
    i64 7, label %bb.an
    i64 8, label %bb.am
    i64 9, label %bb.ao
    i64 10, label %bb.al
    i64 11, label %bb.am
    i64 12, label %bb.am
    i64 13, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel
    i64 14, label %bb.ak
    i64 15, label %bb.aj
    i64 16, label %bb.ao
    i64 17, label %bb.ap
    i64 18, label %bb.ao
    i64 19, label %bb.ao
    i64 20, label %bb.aj
    i64 21, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel
    i64 22, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel
    i64 23, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel
    i64 24, label %bb.an
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel

bb.ak:                                            ; preds = %bb.ai
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel

bb.al:                                            ; preds = %bb.ai
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel

bb.am:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel

bb.an:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel

bb.ao:                                            ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel

bb.ap:                                            ; preds = %bb.ai, %bb.ai
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai, %bb.ai
  %.sroa.0.0.in.i68.peel = phi ptr [ %1, %bb.ai ], [ %1, %bb.ai ], [ %1, %bb.ai ], [ %1, %bb.ai ], [ %i.db, %bb.ap ], [ %1, %bb.ai ], [ %i.da, %bb.ao ], [ %i.cy, %bb.an ], [ %i.dd, %bb.am ], [ %i.cz, %bb.aj ], [ %i.dc, %bb.ak ], [ %1, %bb.ai ], [ %i.de, %bb.al ]
  %.sroa.0.0.i69.peel = load i32, ptr %.sroa.0.0.in.i68.peel, align 8, !noundef !4
  %i.dq = load i32, ptr %i.dk, align 4, !noundef !4
  %.not61.peel = icmp ult i32 %.sroa.0.0.i69.peel, %i.dq
  br i1 %.not61.peel, label %.loopexit277, label %.peel.next275

.peel.next275:                                    ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel
  store i64 0, ptr %i.cq, align 8
  %i.dr = load ptr, ptr %i.cw, align 8, !alias.scope !7902, !noalias !7904, !nonnull !4, !noundef !4 ; 2 uses
  %.promoted351 = load ptr, ptr %i.cu, align 8, !alias.scope !7902, !noalias !7904 ; 2 uses
  %i.ds = icmp eq ptr %.promoted351, %i.dr
  br i1 %i.ds, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.thread, label %.lr.ph362

_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit78: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i75, %bb.ax, %bb.af, %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 84 ; 2 uses
  %i.du = load i8, ptr %i.dt, align 4, !range !5507, !noundef !4 ; 4 uses
  %i.dv = icmp samesign ugt i8 %i.du, 1
  %i.dw = add nsw i8 %i.du, -17
  %switch = icmp ult i8 %i.dw, 2
  br i1 %switch, label %bb.be, label %.loopexit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.thread: ; preds = %bb.bd, %.peel.next275
  store i64 1, ptr %i.cq, align 8, !alias.scope !7904, !noalias !7906
  store ptr null, ptr %i.cv, align 8, !alias.scope !7904, !noalias !7906
  br label %.loopexit277

.lr.ph362:                                        ; preds = %.peel.next275, %bb.bd
  %i.dx = phi ptr [ %i.dy, %bb.bd ], [ %.promoted351, %.peel.next275 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7906)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 3 uses
  store ptr %i.dy, ptr %i.cu, align 8, !alias.scope !7902, !noalias !7904
  store i64 1, ptr %i.cq, align 8, !alias.scope !7904, !noalias !7906
  store ptr %i.dx, ptr %i.cv, align 8, !alias.scope !7904, !noalias !7906
  switch i64 %i.dp, label %.loopexit278 [
    i64 0, label %bb.aq
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71
    i64 3, label %bb.ar
    i64 4, label %bb.as
    i64 5, label %bb.at
    i64 6, label %bb.as
    i64 7, label %bb.as
    i64 8, label %bb.at
    i64 9, label %bb.ar
    i64 10, label %bb.au
    i64 11, label %bb.at
    i64 12, label %bb.at
    i64 13, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71
    i64 14, label %bb.av
    i64 15, label %bb.aw
    i64 16, label %bb.ar
    i64 17, label %bb.aq
    i64 18, label %bb.ar
    i64 19, label %bb.ar
    i64 20, label %bb.aw
    i64 21, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71
    i64 22, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71
    i64 23, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71
    i64 24, label %bb.as
  ]

.loopexit278:                                     ; preds = %.lr.ph362, %bb.ai
  unreachable

bb.aq:                                            ; preds = %.lr.ph362, %.lr.ph362
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71

bb.ar:                                            ; preds = %.lr.ph362, %.lr.ph362, %.lr.ph362, %.lr.ph362, %.lr.ph362
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71

bb.as:                                            ; preds = %.lr.ph362, %.lr.ph362, %.lr.ph362, %.lr.ph362
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71

bb.at:                                            ; preds = %.lr.ph362, %.lr.ph362, %.lr.ph362, %.lr.ph362
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71

bb.au:                                            ; preds = %.lr.ph362
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71

bb.av:                                            ; preds = %.lr.ph362
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71

bb.aw:                                            ; preds = %.lr.ph362, %.lr.ph362
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71: ; preds = %.lr.ph362, %.lr.ph362, %.lr.ph362, %.lr.ph362, %.lr.ph362, %.lr.ph362, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw
  %.sroa.0.0.in.i68 = phi ptr [ %i.cy, %bb.as ], [ %1, %.lr.ph362 ], [ %1, %.lr.ph362 ], [ %1, %.lr.ph362 ], [ %i.de, %bb.au ], [ %i.da, %bb.ar ], [ %1, %.lr.ph362 ], [ %i.db, %bb.aq ], [ %1, %.lr.ph362 ], [ %i.cz, %bb.aw ], [ %i.dc, %bb.av ], [ %1, %.lr.ph362 ], [ %i.dd, %bb.at ]
  %.sroa.0.0.i69 = load i32, ptr %.sroa.0.0.in.i68, align 8, !noundef !4
  %i.dz = load i32, ptr %i.dx, align 4, !noundef !4
  %.not61 = icmp ult i32 %.sroa.0.0.i69, %i.dz
  br i1 %.not61, label %.loopexit277, label %bb.bd

.loopexit277:                                     ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.thread, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71.peel, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.peel
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7907)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !alias.scope !7907, !noundef !4 ; 6 uses
  %i.ed = icmp ult i64 %i.ec, 288230376151711744
  tail call void @llvm.assume(i1 %i.ed)
  %i.ee = add nsw i64 %i.ec, -1                   ; 2 uses
  %.not.i72 = icmp eq i64 %i.ec, 0
  br i1 %.not.i72, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.loopexit277
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !7907, !nonnull !4, !noundef !4 ; 2 uses
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %i.eg, i64 %i.ee ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load i64, ptr %i.ei, align 8, !noalias !7907, !noundef !4 ; 2 uses
  %i.ek = icmp ult i64 %i.ej, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = icmp eq i64 %i.ej, 0
  br i1 %i.el, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit78, label %bb.az

bb.ay:                                            ; preds = %.loopexit277
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ee, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #28, !noalias !7907
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 25
  store i8 -1, ptr %i.em, align 1, !noalias !7907
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7907
  %i.en = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 0, ptr %i.en, align 8, !noalias !7907
  store i64 0, ptr %i.p, align 8, !noalias !7907
  %.sroa.4.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i73, align 8, !noalias !7907
  %.sroa.5.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i74, align 8, !noalias !7907
  %i.eo = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  store i8 -1, ptr %i.eo, align 1, !noalias !7907
  %i.ep = load i64, ptr %i.ea, align 8, !range !57, !alias.scope !7910, !noalias !7913, !noundef !4
  %i.eq = icmp eq i64 %i.ec, %i.ep
  br i1 %i.eq, label %bb.ba, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i75

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i76 unwind label %bb.bb, !noalias !7913

._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i76: ; preds = %bb.ba
  %.pre.i77 = load ptr, ptr %i.ef, align 8, !alias.scope !7910, !noalias !7913
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i75

bb.bb:                                            ; preds = %bb.ba
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockEBJ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p) #26
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i75: ; preds = %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i76, %bb.az
  %i.et = phi ptr [ %.pre.i77, %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i76 ], [ %i.eg, %bb.az ]
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.et, i64 %i.ec
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  %i.ev = add nuw nsw i64 %i.ec, 1
  store i64 %i.ev, ptr %i.eb, align 8, !alias.scope !7910, !noalias !7913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7907
  br label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit78

bb.bd:                                            ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit71
  store i64 0, ptr %i.cq, align 8
  %i.ew = icmp eq ptr %i.dy, %i.dr
  br i1 %i.ew, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_RNtNtCs2MoD74u7shA_14ruff_text_size4size8TextSizeEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB23_8PeekableINtNtNtB5_5slice4iter4IterBN_EE4peek0ECsEhZmuQNqkz_11ruff_linter.exit66.thread, label %.lr.ph362, !llvm.loop !7915

bb.be:                                            ; preds = %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit78
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !4, !align !7554, !noundef !4 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !4 ; 2 uses
  %.idx366 = shl nuw nsw i64 %i.fa, 3
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx366
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not.not.not.i.not363 = icmp eq i64 %i.fa, 0
  br i1 %.not.not.not.i.not363, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2v_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0EB2B_.exit, label %.lr.ph365

bb.bf:                                            ; preds = %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i
  %.not.not.not.i.not = icmp eq ptr %i.fk, %i.fb
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2v_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0EB2B_.exit, label %.lr.ph365

.lr.ph365:                                        ; preds = %bb.be, %bb.bf
  %i.fj = phi ptr [ %i.fk, %bb.bf ], [ %i.ey, %bb.be ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %.val3.i = load i32, ptr %i.fj, align 4, !noalias !7916, !noundef !4
  %i.fl = getelementptr i8, ptr %i.fj, i64 4
  %.val4.i = load i32, ptr %i.fl, align 4, !noalias !7916, !noundef !4
  switch i8 %i.du, label %bb.bg [
    i8 1, label %bb.bh
    i8 2, label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i
    i8 3, label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i
    i8 4, label %bb.bi
    i8 5, label %bb.bj
    i8 6, label %bb.bk
    i8 7, label %bb.bj
    i8 8, label %bb.bj
    i8 9, label %bb.bk
    i8 10, label %bb.bi
    i8 11, label %bb.bl
    i8 12, label %bb.bk
    i8 13, label %bb.bk
    i8 14, label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i
    i8 15, label %bb.bm
    i8 16, label %bb.bn
    i8 17, label %bb.bi
    i8 18, label %bb.bh
    i8 19, label %bb.bi
    i8 20, label %bb.bi
    i8 21, label %bb.bn
    i8 22, label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i
    i8 23, label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i
    i8 24, label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i
    i8 25, label %bb.bj
  ]

bb.bg:                                            ; preds = %.lr.ph365
  unreachable

bb.bh:                                            ; preds = %.lr.ph365, %.lr.ph365
  br label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i

bb.bi:                                            ; preds = %.lr.ph365, %.lr.ph365, %.lr.ph365, %.lr.ph365, %.lr.ph365
  br label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i

bb.bj:                                            ; preds = %.lr.ph365, %.lr.ph365, %.lr.ph365, %.lr.ph365
  br label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i

bb.bk:                                            ; preds = %.lr.ph365, %.lr.ph365, %.lr.ph365, %.lr.ph365
  br label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i

bb.bl:                                            ; preds = %.lr.ph365
  br label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i

bb.bm:                                            ; preds = %.lr.ph365
  br label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i

bb.bn:                                            ; preds = %.lr.ph365, %.lr.ph365
  br label %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i

_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.lr.ph365, %.lr.ph365, %.lr.ph365, %.lr.ph365, %.lr.ph365, %.lr.ph365
  %.sroa.0.0.in.i.i.i = phi ptr [ %i.fc, %bb.bj ], [ %1, %.lr.ph365 ], [ %1, %.lr.ph365 ], [ %1, %.lr.ph365 ], [ %i.fi, %bb.bl ], [ %i.fe, %bb.bi ], [ %1, %.lr.ph365 ], [ %i.ff, %bb.bh ], [ %1, %.lr.ph365 ], [ %i.fd, %bb.bn ], [ %i.fg, %bb.bm ], [ %1, %.lr.ph365 ], [ %i.fh, %bb.bk ]
  %.sroa.0.0.i.i.i79 = load i32, ptr %.sroa.0.0.in.i.i.i, align 8, !noalias !7916, !noundef !4 ; 2 uses
  %.not.i.i = icmp ule i32 %.val3.i, %.sroa.0.0.i.i.i79
  %i.fm = icmp ult i32 %.sroa.0.0.i.i.i79, %.val4.i
  %.sroa.0.0.i.i = and i1 %.not.i.i, %i.fm
  br i1 %.sroa.0.0.i.i, label %.loopexit, label %bb.bf

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2v_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0EB2B_.exit: ; preds = %bb.bf, %bb.be
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7919)
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fo = load i64, ptr %i.fn, align 8, !alias.scope !7919, !noundef !4 ; 3 uses
  %i.fp = icmp ult i64 %i.fo, 288230376151711744
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = add nsw i64 %i.fo, -1                   ; 2 uses
  %.not.i80 = icmp eq i64 %i.fo, 0
  br i1 %.not.i80, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2v_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0EB2B_.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !alias.scope !7919, !nonnull !4, !noundef !4
  %i.ft = getelementptr inbounds nuw [32 x i8], ptr %i.fs, i64 %i.fq ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !alias.scope !7922, !noalias !7919, !noundef !4 ; 3 uses
  %i.fw = load i64, ptr %i.ft, align 8, !range !57, !alias.scope !7922, !noalias !7919, !noundef !4
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.bp, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder12track_import.exit

bb.bp:                                            ; preds = %bb.bo
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ft), !noalias !7919
  br label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder12track_import.exit

bb.bq:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2v_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0EB2B_.exit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fq, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #28, !noalias !7919
  unreachable

_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder12track_import.exit: ; preds = %bb.bo, %bb.bp
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !7922, !noalias !7919, !nonnull !4, !noundef !4
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fv
  store ptr %1, ptr %i.ga, align 8, !noalias !7919
  %i.gb = add i64 %i.fv, 1
  store i64 %i.gb, ptr %i.fu, align 8, !alias.scope !7922, !noalias !7919
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.gd = load i8, ptr %i.gc, align 1, !range !1109, !alias.scope !7919, !noundef !4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store i8 %i.gd, ptr %i.ge, align 8, !noalias !7919
  br label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit94

_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit94: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i91, %bb.bx, %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder12track_import.exit
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 113 ; 5 uses
  %i.gg = load i8, ptr %i.gf, align 1, !range !1109, !noundef !4
  store i8 1, ptr %i.gf, align 1
  %i.gh = load i8, ptr %i.dt, align 4, !range !5507, !noundef !4 ; 2 uses
  %i.gi = icmp samesign ugt i8 %i.gh, 1
  %i.gj = zext nneg i8 %i.gh to i64
  %i.gk = add nsw i64 %i.gj, -1
  %i.gl = select i1 %i.gi, i64 %i.gk, i64 0
  switch i64 %i.gl, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit101 [
    i64 0, label %bb.cd
    i64 1, label %bb.ce
    i64 8, label %bb.cf
    i64 9, label %bb.cg
    i64 10, label %bb.ch
    i64 11, label %bb.ci
    i64 12, label %bb.cj
    i64 14, label %bb.ck
  ]

.loopexit:                                        ; preds = %_RNCNvXs_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB6_12BlockBuilderNtNtCskLngH8kgpZI_15ruff_python_ast17statement_visitor16StatementVisitor10visit_stmts2_0Bc_.exit.i, %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit78
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7925)
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !7925, !noundef !4 ; 3 uses
  %i.go = icmp ult i64 %i.gn, 288230376151711744
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = add nsw i64 %i.gn, -1                   ; 2 uses
  %.not.i81 = icmp eq i64 %i.gn, 0
  br i1 %.not.i81, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.loopexit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !7925, !nonnull !4, !noundef !4
  %i.gs = getelementptr inbounds nuw [32 x i8], ptr %i.gr, i64 %i.gp
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !noalias !7925, !noundef !4 ; 2 uses
  %i.gv = icmp ult i64 %i.gu, 1152921504606846976
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp eq i64 %i.gu, 0
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.gy = load i8, ptr %i.gx, align 1, !range !1109, !alias.scope !7925
  %i.gz = trunc nuw i8 %i.gy to i1
  %or.cond.i82 = select i1 %i.gw, i1 true, i1 %i.gz
  br i1 %or.cond.i82, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87, label %bb.bt

bb.bs:                                            ; preds = %.loopexit
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gp, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #28, !noalias !7925
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hb = load i8, ptr %i.ha, align 8, !range !1109, !alias.scope !7925, !noundef !4
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hd = zext nneg i8 %i.du to i64
  %i.he = add nsw i64 %i.hd, -1
  %i.hf = select i1 %i.dv, i64 %i.he, i64 0
  switch i64 %i.hf, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87 [
    i64 0, label %bb.bv
    i64 1, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !7925, !nonnull !4, !align !10, !noundef !4
  %i.hi = tail call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort7helpers17has_comment_break(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.hh), !noalias !7925
  %..i86 = select i1 %i.hi, i8 0, i8 2
  br label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87

bb.bw:                                            ; preds = %bb.bu
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !7925, !nonnull !4, !align !10, !noundef !4
  %i.hl = tail call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort7helpers17has_comment_break(ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.hk), !noalias !7925
  %not..i83 = xor i1 %i.hl, true
  %.3.i84 = zext i1 %not..i83 to i8
  br label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87

_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87: ; preds = %bb.br, %bb.bt, %bb.bu, %bb.bv, %bb.bw
  %.sroa.0.0.i85 = phi i8 [ %.3.i84, %bb.bw ], [ -1, %bb.br ], [ 0, %bb.bu ], [ 0, %bb.bt ], [ %..i86, %bb.bv ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7928)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hn = load i64, ptr %i.gm, align 8, !alias.scope !7928, !noundef !4 ; 6 uses
  %i.ho = icmp ult i64 %i.hn, 288230376151711744
  tail call void @llvm.assume(i1 %i.ho)
  %i.hp = add nsw i64 %i.hn, -1                   ; 2 uses
  %.not.i88 = icmp eq i64 %i.hn, 0
  br i1 %.not.i88, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87
  %i.hq = load ptr, ptr %i.gq, align 8, !alias.scope !7928, !nonnull !4, !noundef !4 ; 2 uses
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hq, i64 %i.hp ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ht = load i64, ptr %i.hs, align 8, !noalias !7928, !noundef !4 ; 2 uses
  %i.hu = icmp ult i64 %i.ht, 1152921504606846976
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = icmp eq i64 %i.ht, 0
  br i1 %i.hv, label %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder8finalize.exit94, label %bb.bz

bb.by:                                            ; preds = %_RNvMNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5blockNtB2_12BlockBuilder11trailer_for.exit87
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hp, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #28, !noalias !7928
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 25
  store i8 %.sroa.0.0.i85, ptr %i.hw, align 1, !noalias !7928
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7928
  %i.hx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i8 0, ptr %i.hx, align 8, !noalias !7928
  store i64 0, ptr %i.o, align 8, !noalias !7928
  %.sroa.4.0..sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i89, align 8, !noalias !7928
  %.sroa.5.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i90, align 8, !noalias !7928
  %i.hy = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  store i8 -1, ptr %i.hy, align 1, !noalias !7928
  %i.hz = load i64, ptr %i.hm, align 8, !range !57, !alias.scope !7931, !noalias !7934, !noundef !4
  %i.ia = icmp eq i64 %i.hn, %i.hz
  br i1 %i.ia, label %bb.ca, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit.i91

bb.ca:                                            ; preds = %bb.bz
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hm)
          to label %._RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort5block5BlockE8push_mutBM_.exit_crit_edge.i92 unwind label %bb.cb, !noalias !7934

end_hunk_0
