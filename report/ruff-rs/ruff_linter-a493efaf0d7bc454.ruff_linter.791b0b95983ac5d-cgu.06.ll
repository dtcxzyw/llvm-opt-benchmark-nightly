Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmt:bb.a
bb.g:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.bk = load ptr, ptr %i.bj, align 8, !align !6, !noundef !5 ; 2 uses
  %.not142 = icmp eq ptr %i.bk, null
  br i1 %.not142, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %.val187 = load i32, ptr %i.bl, align 8, !noundef !5 ; 2 uses
  %i.bm = load i8, ptr %i.am, align 4, !range !29, !noalias !7665, !noundef !5 ; 2 uses
  %i.bn = icmp samesign ugt i8 %i.bm, 1
  %i.bo = zext nneg i8 %i.bm to i64
  %i.bp = add nsw i64 %i.bo, -1
  %i.bq = select i1 %i.bn, i64 %i.bp, i64 0
  switch i64 %i.bq, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 3, label %bb.k
    i64 4, label %bb.l
    i64 5, label %bb.m
    i64 6, label %bb.n
    i64 7, label %bb.o
    i64 8, label %bb.p
    i64 9, label %bb.q
    i64 10, label %bb.r
    i64 11, label %bb.s
    i64 12, label %bb.t
    i64 13, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 14, label %bb.u
    i64 15, label %bb.v
    i64 16, label %bb.w
    i64 17, label %bb.x
    i64 18, label %bb.y
    i64 19, label %bb.z
    i64 20, label %bb.aa
    i64 21, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 22, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 23, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
    i64 24, label %bb.ab
  ]

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.k:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.l:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.m:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.n:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.o:                                             ; preds = %bb.h
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.p:                                             ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.q:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.r:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.s:                                             ; preds = %bb.h
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.t:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.u:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.v:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.w:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.x:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.y:                                             ; preds = %bb.h
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.z:                                             ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.aa:                                            ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

bb.ab:                                            ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %.sroa.0.0.in.i.i = phi ptr [ %i.cj, %bb.ab ], [ %1, %bb.h ], [ %1, %bb.h ], [ %1, %bb.h ], [ %i.ci, %bb.aa ], [ %i.ch, %bb.z ], [ %i.cg, %bb.y ], [ %i.cf, %bb.x ], [ %i.ce, %bb.w ], [ %i.cd, %bb.v ], [ %i.cc, %bb.u ], [ %1, %bb.h ], [ %i.cb, %bb.t ], [ %i.ca, %bb.s ], [ %i.bz, %bb.r ], [ %i.by, %bb.q ], [ %i.bx, %bb.p ], [ %i.bw, %bb.o ], [ %i.bv, %bb.n ], [ %i.bu, %bb.m ], [ %i.bt, %bb.l ], [ %i.bs, %bb.k ], [ %1, %bb.h ], [ %i.br, %bb.j ], [ %1, %bb.h ]
  %.sroa.0.0.i.i = load i32, ptr %.sroa.0.0.in.i.i, align 8, !noalias !7665, !noundef !5 ; 2 uses
  %.not.i = icmp ugt i32 %.val187, %.sroa.0.0.i.i
  br i1 %.not.i, label %bb.ac, label %_RNCNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmts_0Bb_.exit, !prof !9

bb.ac:                                            ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #35, !noalias !7665
  unreachable

_RNCNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmts_0Bb_.exit: ; preds = %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit.i
  %i.ck = call noundef zeroext i1 @_RNvMs0_NtCs8w9c0syp1Hj_13ruff_notebook4cellNtB5_11CellOffsets17has_cell_boundary(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bk, i32 noundef %.val187, i32 noundef %.sroa.0.0.i.i)
  br i1 %i.ck, label %bb.ad, label %bb.f

bb.ad:                                            ; preds = %_RNCNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB7_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_stmts_0Bb_.exit
  %i.cl = load i32, ptr %i.ba, align 8, !noundef !5
  %i.cm = and i32 %i.cl, -8193
  store i32 %i.cm, ptr %i.ba, align 8
  br label %bb.f

._crit_edge555:                                   ; preds = %bb.f, %bb.ag, %bb.an
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.co = or i32 %.pre, 65536
  store i32 %i.co, ptr %i.cn, align 8
  %i.cp = and i32 %.pre, 8192
  %i.cq = icmp ne i32 %i.cp, 0
  %i.cr = icmp eq i8 %i.be, 25
  %or.cond446 = or i1 %i.cr, %i.cq
  br i1 %or.cond446, label %bb.ah, label %bb.ap

bb.ae:                                            ; preds = %bb.f
  %i.cs = or i32 %.pre, 65536
  store i32 %i.cs, ptr %.phi.trans.insert, align 8
  br label %bb.ah

bb.af:                                            ; preds = %bb.f
  %i.ct = or i32 %.pre, 65536
  store i32 %i.ct, ptr %.phi.trans.insert, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cv = load i8, ptr %i.cu, align 8, !range !15, !noundef !5
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.ah, label %bb.ai

bb.ag:                                            ; preds = %bb.f
  %i.cx = and i32 %.pre, 65536
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.an, label %._crit_edge555

bb.ah:                                            ; preds = %bb.aq, %bb.al, %bb.ak, %bb.ai, %bb.aj, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %._crit_edge555, %bb.ap, %bb.aw, %bb.am, %bb.af, %bb.ao, %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 59 uses
  %i.da = load i32, ptr %i.cz, align 8, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1139 ; 4 uses
  %i.dc = load i8, ptr %i.db, align 1, !range !7666, !noundef !5 ; 2 uses
  %.not144 = icmp eq i8 %i.dc, -1
  %.pre556 = load i8, ptr %i.am, align 4, !range !29 ; 3 uses
  br i1 %.not144, label %bb.bb, label %bb.ax

bb.ai:                                            ; preds = %bb.af
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.de = load i8, ptr %i.dd, align 1, !range !24, !noundef !5 ; 4 uses
  %.not143 = icmp eq i8 %i.de, -1
  br i1 %.not143, label %bb.ah, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dg = load i64, ptr %i.df, align 8, !alias.scope !7667, !noundef !5
  %i.dh = and i64 %i.dg, 72057594037927935
  %i.di = icmp ult i8 %i.de, -48
  %i.dj = zext i8 %i.de to i64
  %i.dk = add nsw i64 %i.dj, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 16)
  %.sroa.0.0.i = select i1 %i.di, i64 %spec.store.select.i, i64 %i.dh
  %i.dl = icmp eq i64 %.sroa.0.0.i, 10
  br i1 %i.dl, label %bb.ak, label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  %i.dm = icmp ugt i8 %i.de, -49
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !7667
  %.sroa.01.0.i = select i1 %i.dm, ptr %i.do, ptr %i.dn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i) ]
  %i.dp = load i64, ptr %.sroa.01.0.i, align 1
  %i.dq = xor i64 %i.dp, 7310034288222035807
  %i.dr = getelementptr i8, ptr %.sroa.01.0.i, i64 8
  %i.ds = load i16, ptr %i.dr, align 1
  %i.dt = zext i16 %i.ds to i64
  %i.du = xor i64 %i.dt, 24415
  %i.dv = or i64 %i.dq, %i.du
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.al, label %bb.ah

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ec = load i64, ptr %i.eb, align 8, !noundef !5
  %i.ed = getelementptr inbounds nuw [80 x i8], ptr %i.ea, i64 %i.ec
  store ptr %i.ea, ptr %i.ak, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ed, ptr %i.ee, align 8
  %i.ef = call fastcc noundef zeroext i1 @_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB2t_7CheckerNtNtBU_7visitor7Visitor10visit_stmts0_0EB2x_(ptr noalias noundef align 8 dereferenceable(16) %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br i1 %i.ef, label %bb.am, label %bb.ah

bb.am:                                            ; preds = %bb.al
  %i.eg = or i32 %.pre, 81920
  store i32 %i.eg, ptr %.phi.trans.insert, align 8
  br label %bb.ah

bb.an:                                            ; preds = %bb.ag
  %i.eh = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ei = load i32, ptr %i.eh, align 8, !range !11, !noundef !5
  %i.ej = icmp eq i32 %i.ei, 19
  br i1 %i.ej, label %bb.ao, label %._crit_edge555

bb.ao:                                            ; preds = %bb.an
  %i.ek = or disjoint i32 %.pre, 65536
  store i32 %i.ek, ptr %.phi.trans.insert, align 8
  br label %bb.ah

bb.ap:                                            ; preds = %._crit_edge555
  %i.el = call noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers25is_assignment_to_a_dunder(ptr noundef nonnull align 8 %1)
  br i1 %i.el, label %bb.ah, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel18current_statements(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  %i.em = call noundef zeroext i1 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers15in_nested_blockINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB15_7sources10successors10SuccessorsNtNtCs7bpTdHNYxeX_20ruff_python_semantic5nodes6NodeIdNCNvMB2J_NtB2J_5Nodes12ancestor_ids0ENCNvMs_NtB2L_5modelNtB4g_13SemanticModel18current_statements0EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br i1 %i.em, label %bb.ah, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.en = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7imports24is_matplotlib_activation(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.en, label %bb.ah, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eo = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7imports24is_sys_path_modification(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.eo, label %bb.ah, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ep = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7imports26is_os_environ_modification(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.ep, label %bb.ah, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eq = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7imports22is_pytest_importorskip(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.eq, label %bb.ah, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.er = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze7imports29is_site_sys_path_modification(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.er, label %bb.ah, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.es = load i32, ptr %i.cn, align 8, !noundef !5
  %i.et = or i32 %i.es, 8192
  store i32 %i.et, ptr %i.cn, align 8
  br label %bb.ah

bb.ax:                                            ; preds = %bb.ah
  %i.eu = icmp eq i8 %.pre556, 21
  br i1 %i.eu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ev = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ew = load i32, ptr %i.ev, align 8, !range !11, !noundef !5
  %i.ex = icmp eq i32 %i.ew, 19
  br i1 %i.ex, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ba, %bb.ay
  store i8 -1, ptr %i.db, align 1
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  %i.ey = icmp eq i8 %i.dc, 3
  %..i = select i1 %i.ey, i32 16777216, i32 524288
  %i.ez = or i32 %..i, %i.da
  store i32 %i.ez, ptr %i.cz, align 8
  br label %bb.az

bb.bb:                                            ; preds = %bb.ah, %bb.az
  %i.fa = icmp samesign ugt i8 %.pre556, 1
  %i.fb = zext nneg i8 %.pre556 to i64
  %i.fc = add nsw i64 %i.fb, -1
  %i.fd = select i1 %i.fa, i64 %i.fc, i64 0
  switch i64 %i.fd, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit [
    i64 6, label %bb.bc
    i64 16, label %bb.be
    i64 17, label %bb.bf
    i64 18, label %bb.bg
    i64 19, label %bb.bh
  ]

_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit: ; preds = %bb.dx, %bb.dq, %bb.db, %bb.cd, %bb.ds, %bb.dm, %bb.cq, %bb.bj, %bb.bd, %bb.bc, %bb.bh, %bb.bg, %bb.bb
  %i.fe = load i8, ptr %i.am, align 4, !range !29, !noundef !5 ; 2 uses
  %i.ff = icmp samesign ugt i8 %i.fe, 1
  %i.fg = zext nneg i8 %i.fe to i64
  %i.fh = add nsw i64 %i.fg, -1
  %i.fi = select i1 %i.ff, i64 %i.fh, i64 0
  switch i64 %i.fi, label %bb.dy [
    i64 0, label %bb.dz
    i64 1, label %bb.ea
    i64 4, label %bb.eb
    i64 7, label %bb.ec
    i64 8, label %bb.ee
    i64 9, label %bb.ef
    i64 10, label %bb.eg
    i64 11, label %bb.eh
    i64 14, label %bb.ei
    i64 15, label %bb.ek
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fj = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !range !11, !noalias !7668, !noundef !5
  %i.fl = icmp eq i32 %i.fk, 28
  br i1 %i.fl, label %bb.bd, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit

bb.bd:                                            ; preds = %bb.bc
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fn = call { i32, i32 } @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12resolve_load(ptr noalias noundef nonnull align 8 dereferenceable(472) %i.al, ptr noundef nonnull align 8 %i.fm) ; 0 uses
  br label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit

bb.be:                                            ; preds = %bb.bb
  %i.fo = call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12at_top_level(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.fo, label %bb.bi, label %bb.bj

bb.bf:                                            ; preds = %bb.bb
  %i.fp = call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel12at_top_level(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.al)
  br i1 %i.fp, label %bb.cm, label %bb.cn

bb.bg:                                            ; preds = %bb.bb
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 8, !range !35, !noundef !5
  %i.fs = icmp eq i32 %i.fr, 1
  br i1 %i.fs, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit, label %bb.dm

bb.bh:                                            ; preds = %bb.bb
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 8, !range !35, !noundef !5
  %i.fv = icmp eq i32 %i.fu, 1
  br i1 %i.fv, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit, label %bb.ds

bb.bi:                                            ; preds = %bb.be
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 560
  call void @_RNvMNtCsEhZmuQNqkz_11ruff_linter8importerNtB2_8Importer12visit_import(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.fw, ptr noundef nonnull align 8 %1)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bi
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !5 ; 2 uses
  %.idx524 = mul nuw nsw i64 %i.ga, 80
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx524
  %i.gc = icmp eq i64 %i.ga, 0
  br i1 %i.gc, label %_RNvMs6_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16handle_node_load.exit, label %.lr.ph474

.lr.ph474:                                        ; preds = %bb.bj
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5103.sroa.4.0..sroa.5103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5103.sroa.5.0..sroa.5103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5103.sroa.6.0..sroa.5103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.5103.sroa.7.0..sroa.5103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.5103.sroa.8.0..sroa.5103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %.sroa.5103.sroa.9.0..sroa.5103.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.6104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.7105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5109.sroa.4.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5109.sroa.5.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.5109.sroa.6.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.5109.sroa.7.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.5109.sroa.8.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %.sroa.5109.sroa.9.0..sroa.5109.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.7111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 65
end_hunk_0
