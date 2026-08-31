Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expr-c49a31e1b3bb1312.uu_expr.1dfcadec2fff7288-cgu.0?download=true
inline.NumInlined: 1053
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RNvMs1_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8StringOp4eval:bb.a
  %.sroa.04.1.i.i.i = phi i1 [ %i.pa, %bb.bq ], [ false, %bb.bp ] ; 2 uses
  %.not.i.i.i.i79.i.i.i = icmp eq ptr %.sroa.0.0.i112.i.i, %i.cu
  br i1 %.not.i.i.i.i79.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_NtNtNtB5_3str4iter5CharsEE4peek0ECs2zCsf9UsIrc_7uu_expr.exit83.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.pc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i112.i.i, i64 1 ; 3 uses
  %i.pd = load i8, ptr %.sroa.0.0.i112.i.i, align 1, !noalias !776, !noundef !4 ; 5 uses
  %i.pe = icmp sgt i8 %i.pd, -1
  br i1 %i.pe, label %bb.bt, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit12.i.i.i.i.i80.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit12.i.i.i.i.i80.i.i.i: ; preds = %bb.bs
  %i.pf = and i8 %i.pd, 31
  %i.pg = zext nneg i8 %i.pf to i32               ; 3 uses
  %i.ph = icmp ne ptr %i.pc, %i.cu
  call void @llvm.assume(i1 %i.ph)
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i112.i.i, i64 2 ; 3 uses
  %i.pj = load i8, ptr %i.pc, align 1, !noalias !776, !noundef !4
  %i.pk = shl nuw nsw i32 %i.pg, 6
  %i.pl = and i8 %i.pj, 63
  %i.pm = zext nneg i8 %i.pl to i32               ; 2 uses
  %i.pn = or disjoint i32 %i.pk, %i.pm
  %i.po = icmp samesign ugt i8 %i.pd, -33
  br i1 %i.po, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit14.i.i.i.i.i81.i.i.i, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.pp = zext nneg i8 %i.pd to i32
  br label %bb.bw

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit14.i.i.i.i.i81.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit12.i.i.i.i.i80.i.i.i
  %i.pq = icmp ne ptr %i.pi, %i.cu
  call void @llvm.assume(i1 %i.pq)
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i112.i.i, i64 3 ; 3 uses
  %i.ps = load i8, ptr %i.pi, align 1, !noalias !776, !noundef !4
  %i.pt = shl nuw nsw i32 %i.pm, 6
  %i.pu = and i8 %i.ps, 63
  %i.pv = zext nneg i8 %i.pu to i32
  %i.pw = or disjoint i32 %i.pt, %i.pv            ; 2 uses
  %i.px = shl nuw nsw i32 %i.pg, 12
  %i.py = or disjoint i32 %i.pw, %i.px
  %i.pz = icmp samesign ugt i8 %i.pd, -17
  br i1 %i.pz, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit16.i.i.i.i.i82.i.i.i, label %bb.bw

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit16.i.i.i.i.i82.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit14.i.i.i.i.i81.i.i.i
  %i.qa = icmp ne ptr %i.pr, %i.cu
  call void @llvm.assume(i1 %i.qa)
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i112.i.i, i64 4
  %i.qc = load i8, ptr %i.pr, align 1, !noalias !776, !noundef !4
  %i.qd = shl nuw nsw i32 %i.pg, 18
  %i.qe = and i32 %i.qd, 1835008
  %i.qf = shl nuw nsw i32 %i.pw, 6
  %i.qg = and i8 %i.qc, 63
  %i.qh = zext nneg i8 %i.qg to i32
  %i.qi = or disjoint i32 %i.qf, %i.qh
  %i.qj = or disjoint i32 %i.qi, %i.qe
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !775
  call void @_RNvMs4_CslwwPJGKhBTm_4onigNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 24) #24, !noalias !775
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.qk = load i64, ptr %i.ak, align 8, !range !478, !alias.scope !788, !noalias !775, !noundef !4
  %.not.i84.i.i.i = icmp eq i64 %i.qk, -1
  br i1 %.not.i84.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCslwwPJGKhBTm_4onig5RegexNtBJ_5ErrorE6expectCs2zCsf9UsIrc_7uu_expr.exit.i.i.i, label %bb.bv, !prof !130

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !775
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 24, ptr noundef nonnull %i.ah, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #25, !noalias !791
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCslwwPJGKhBTm_4onig5RegexNtBJ_5ErrorE6expectCs2zCsf9UsIrc_7uu_expr.exit.i.i.i: ; preds = %bb.bu
  %i.ql = load ptr, ptr %i.fz, align 8, !alias.scope !788, !noalias !775, !noundef !4
  store ptr %i.ql, ptr %i.al, align 8, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !775
  call void @_RNvMNtCslwwPJGKhBTm_4onig4findNtB4_5Regex8captures(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %.sink) #24, !noalias !775
  %i.qm = load ptr, ptr %i.aj, align 8, !noalias !775, !noundef !4
  %.not68.i.i.i = icmp eq ptr %i.qm, null
  br i1 %.not68.i.i.i, label %bb.fi, label %bb.cj

bb.bw:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit16.i.i.i.i.i82.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit14.i.i.i.i.i81.i.i.i, %bb.bt, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit12.i.i.i.i.i80.i.i.i
  %.sroa.0.5.ph.i.i.i = phi ptr [ %i.pc, %bb.bt ], [ %i.pi, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit12.i.i.i.i.i80.i.i.i ], [ %i.pr, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit14.i.i.i.i.i81.i.i.i ], [ %i.qb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit16.i.i.i.i.i82.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i78.ph.i.i.i = phi i32 [ %i.pp, %bb.bt ], [ %i.pn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit12.i.i.i.i.i80.i.i.i ], [ %i.py, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit14.i.i.i.i.i81.i.i.i ], [ %i.qj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2zCsf9UsIrc_7uu_expr.exit16.i.i.i.i.i82.i.i.i ] ; 2 uses
  %i.qn = icmp eq i32 %.sroa.01.0.i.i.i, 0
  br i1 %i.qn, label %bb.bp, label %bb.by

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_NtNtNtB5_3str4iter5CharsEE4peek0ECs2zCsf9UsIrc_7uu_expr.exit83.i.i.i: ; preds = %bb.br
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %.val.i85.i.i.i = load i64, ptr %i.am, align 8, !range !40, !alias.scope !792, !noalias !775, !noundef !4 ; 2 uses
  %i.qo = icmp eq i64 %.val.i85.i.i.i, 0
  br i1 %i.qo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2zCsf9UsIrc_7uu_expr.exit.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_NtNtNtB5_3str4iter5CharsEE4peek0ECs2zCsf9UsIrc_7uu_expr.exit83.i.i.i
  %.val1.i86.i.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !792, !noalias !775, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i86.i.i.i, i64 noundef %.val.i85.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !795
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2zCsf9UsIrc_7uu_expr.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2zCsf9UsIrc_7uu_expr.exit.i.i.i: ; preds = %bb.bx, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableIB1O_NtNtNtB5_3str4iter5CharsEE4peek0ECs2zCsf9UsIrc_7uu_expr.exit83.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !775
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECs2zCsf9UsIrc_7uu_expr.exit109.i.i

bb.by:                                            ; preds = %bb.bw
  call void @llvm.experimental.noalias.scope.decl(metadata !796)
  %i.qp = icmp sgt i64 %.sink, -1
  call void @llvm.assume(i1 %i.qp)
  %i.qq = icmp samesign ult i32 %.sroa.01.0.i.i.i, 128 ; 2 uses
  br i1 %i.qq, label %bb.cb, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.qr = icmp samesign ult i32 %.sroa.01.0.i.i.i, 2048
  br i1 %i.qr, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qs = icmp samesign ult i32 %.sroa.01.0.i.i.i, 65536
  %..i.i.i.i = select i1 %i.qs, i64 3, i64 4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %.sroa.0.0.i87.i.i.i = phi i64 [ 2, %bb.bz ], [ %..i.i.i.i, %bb.ca ], [ 1, %bb.by ] ; 3 uses
  %i.qt = load i64, ptr %i.am, align 8, !range !40, !alias.scope !799, !noalias !775, !noundef !4
  %i.qu = sub nsw i64 %i.qt, %.sink
  %i.qv = icmp ugt i64 %.sroa.0.0.i87.i.i.i, %i.qu
  br i1 %i.qv, label %bb.cc, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i, !prof !126

bb.cc:                                            ; preds = %bb.cb
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2zCsf9UsIrc_7uu_expr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.sink, i64 noundef %.sroa.0.0.i87.i.i.i, i64 noundef 1, i64 noundef 1) #24, !noalias !775
  %.pre.i.i.i = load ptr, ptr %.sroa.444.0..sroa_idx.i.i.i, align 8, !alias.scope !796, !noalias !775
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i: ; preds = %bb.cc, %bb.cb
  %i.qw = phi ptr [ %.pre.i.i.i, %bb.cc ], [ %.ph, %bb.cb ] ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 %.sink ; 10 uses
  br i1 %i.qq, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i
  %i.qy = icmp samesign ult i32 %.sroa.01.0.i.i.i, 2048
  %i.qz = trunc i32 %.sroa.01.0.i.i.i to i8
  %i.ra = and i8 %i.qz, 63
  %i.rb = or disjoint i8 %i.ra, -128              ; 3 uses
  %i.rc = lshr i32 %.sroa.01.0.i.i.i, 6
  %i.rd = trunc i32 %i.rc to i8                   ; 2 uses
  %i.re = and i8 %i.rd, 63
  %i.rf = or disjoint i8 %i.re, -128              ; 2 uses
  %i.rg = lshr i32 %.sroa.01.0.i.i.i, 12
  %i.rh = trunc i32 %i.rg to i8                   ; 2 uses
  %i.ri = and i8 %i.rh, 63
  %i.rj = or disjoint i8 %i.ri, -128
  %i.rk = lshr i32 %.sroa.01.0.i.i.i, 18
  %i.rl = trunc nuw nsw i32 %i.rk to i8
  %i.rm = or disjoint i8 %i.rl, -16
  br i1 %i.qy, label %bb.cf, label %bb.cg

bb.ce:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs2zCsf9UsIrc_7uu_expr.exit.i.i.i.i
  %i.rn = trunc nuw nsw i32 %.sroa.01.0.i.i.i to i8
  store i8 %i.rn, ptr %i.qx, align 1, !noalias !802
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.ro = or disjoint i8 %i.rd, -64
  store i8 %i.ro, ptr %i.qx, align 1, !noalias !802
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  store i8 %i.rb, ptr %i.rp, align 1, !noalias !802
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i

bb.cg:                                            ; preds = %bb.cd
  %i.rq = icmp samesign ult i32 %.sroa.01.0.i.i.i, 65536
  br i1 %i.rq, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.rr = or disjoint i8 %i.rh, -32
  store i8 %i.rr, ptr %i.qx, align 1, !noalias !802
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  store i8 %i.rf, ptr %i.rs, align 1, !noalias !802
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  store i8 %i.rb, ptr %i.rt, align 1, !noalias !802
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i

bb.ci:                                            ; preds = %bb.cg
  store i8 %i.rm, ptr %i.qx, align 1, !noalias !802
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qx, i64 1
  store i8 %i.rj, ptr %i.ru, align 1, !noalias !802
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  store i8 %i.rf, ptr %i.rv, align 1, !noalias !802
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qx, i64 3
  store i8 %i.rb, ptr %i.rw, align 1, !noalias !802
  br label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String4push.exit.i.i.i: ; preds = %bb.ci, %bb.ch, %bb.cf, %bb.ce
  %i.rx = add nuw i64 %.sroa.0.0.i87.i.i.i, %.sink
  br label %.sink.split

bb.cj:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCslwwPJGKhBTm_4onig5RegexNtBJ_5ErrorE6expectCs2zCsf9UsIrc_7uu_expr.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 56, i1 false), !noalias !775
  %i.ry = call { ptr, i64 } @_RNvMs_NtCslwwPJGKhBTm_4onig4findNtB4_8Captures2at(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ai, i64 noundef 0) #24, !noalias !775 ; 2 uses
  %i.rz = extractvalue { ptr, i64 } %i.ry, 0      ; 2 uses
  %.not69.i.i.i = icmp eq ptr %i.rz, null         ; 2 uses
  %i.sa = extractvalue { ptr, i64 } %i.ry, 1      ; 2 uses
  %.sroa.414.0.i.i.i = select i1 %.not69.i.i.i, i64 0, i64 %i.sa ; 8 uses
  %.sroa.012.0.i.i.i = select i1 %.not69.i.i.i, ptr inttoptr (i64 1 to ptr), ptr %i.rz ; 20 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.cn, %bb.cj
  %i.sb = phi i64 [ %i.sq, %bb.cn ], [ 0, %bb.cj ] ; 4 uses
  %i.sc = sub nuw i64 %.sroa.414.0.i.i.i, %i.sb   ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 %i.sb ; 2 uses
  %i.se = icmp samesign ult i64 %i.sc, 16
  br i1 %i.se, label %.preheader.i.i.i.i.i.i, label %bb.ck

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i88.i.i.i = icmp eq i64 %i.sc, 0
  br i1 %.not.i.i.i88.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.ck:                                            ; preds = %.lr.ph.split.i.i.i.i.i
  %i.sf = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.sd, i64 noundef range(i64 0, -9223372036854775808) %i.sc) #24, !noalias !803
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.cl, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.sc, %bb.cl ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.cl ]
  %i.sg = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.sh = insertvalue { i64, i64 } %i.sg, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.cl
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.sl, %bb.cl ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.sj = load i8, ptr %i.si, align 1, !alias.scope !809, !noalias !803, !noundef !4
  %i.sk = icmp eq i8 %i.sj, 44
  br i1 %i.sk, label %._crit_edge.i.i.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.sl = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.sl, %i.sc
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i, %bb.ck
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.sh, %._crit_edge.i.i.i.i.i.i ], [ %i.sf, %bb.ck ] ; 2 uses
  %i.sm = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.sn = trunc nuw i64 %i.sm to i1
  br i1 %i.sn, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.so = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1 ; 2 uses
  %i.sp = add i64 %i.sb, 1
  %i.sq = add i64 %i.sp, %i.so                    ; 4 uses
  %.not12.i.i.i.i.i = icmp ugt i64 %i.sq, %.sroa.414.0.i.i.i
  %i.sr = add i64 %i.so, %i.sb                    ; 15 uses
  %or.cond.i.not.i.i.i.i = icmp ult i64 %i.sr, %.sroa.414.0.i.i.i
  br i1 %or.cond.i.not.i.i.i.i, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.co, %bb.cm
  br i1 %.not12.i.i.i.i.i, label %bb.cq, label %.lr.ph.split.i.i.i.i.i

bb.co:                                            ; preds = %bb.cm
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 %i.sr
  %lhsc.i.i.i.i = load i8, ptr %i.ss, align 1, !alias.scope !813, !noalias !814
  %i.st = icmp eq i8 %lhsc.i.i.i.i, 44
  br i1 %i.st, label %bb.cp, label %bb.cn

bb.cp:                                            ; preds = %bb.co
  %i.su = sub nuw i64 %.sroa.414.0.i.i.i, %i.sq   ; 11 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 %i.sq ; 10 uses
  %i.sw = icmp eq i64 %i.sr, 0                    ; 3 uses
  %i.sx = icmp eq i64 %i.su, 0                    ; 3 uses
  %or.cond.i.i.i = select i1 %i.sw, i1 %i.sx, i1 false
  br i1 %or.cond.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.df

bb.cq:                                            ; preds = %bb.cn, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i
  switch i64 %.sroa.414.0.i.i.i, label %thread-pre-split.i.i.i.i [
    i64 0, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
    i64 1, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.sy = load i8, ptr %.sroa.012.0.i.i.i, align 1, !alias.scope !815, !noalias !775, !noundef !4 ; 2 uses
  switch i8 %i.sy, label %bb.cs [
    i8 43, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
    i8 45, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
  ]

thread-pre-split.i.i.i.i:                         ; preds = %bb.cq
  %.pr.i.i.i.i = load i8, ptr %.sroa.012.0.i.i.i, align 1, !alias.scope !815, !noalias !775
  br label %bb.cs

bb.cs:                                            ; preds = %thread-pre-split.i.i.i.i, %bb.cr
  %i.sz = phi i8 [ %.pr.i.i.i.i, %thread-pre-split.i.i.i.i ], [ %i.sy, %bb.cr ]
  switch i8 %i.sz, label %bb.cz [
    i8 43, label %bb.ct
    i8 45, label %bb.cu
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.ta = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 1
  %i.tb = add nsw i64 %.sroa.414.0.i.i.i, -1
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cs
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 1 ; 2 uses
  %i.td = add nsw i64 %.sroa.414.0.i.i.i, -1      ; 3 uses
  %i.te = icmp samesign ult i64 %.sroa.414.0.i.i.i, 5
  br i1 %i.te, label %.preheader117.i.i.i.i, label %.lr.ph.i.i.i.i

.preheader117.i.i.i.i:                            ; preds = %bb.cu
  %.not104138.i.i.i.i = icmp eq i64 %i.td, 0
  br i1 %.not104138.i.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph142.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cu, %bb.cx
  %.sroa.0.1137.i.i.i.i = phi ptr [ %i.tf, %bb.cx ], [ %i.tc, %bb.cu ] ; 2 uses
  %.sroa.26.1136.i.i.i.i = phi i64 [ %i.tg, %bb.cx ], [ %i.td, %bb.cu ]
  %.sroa.085.0135.i.i.i.i = phi i16 [ %i.tr, %bb.cx ], [ 0, %bb.cu ]
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.0.1137.i.i.i.i, i64 1
  %i.tg = add nsw i64 %.sroa.26.1136.i.i.i.i, -1  ; 2 uses
  %i.th = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.0135.i.i.i.i, i16 10) ; 2 uses
  %i.ti = extractvalue { i16, i1 } %i.th, 0
  %i.tj = extractvalue { i16, i1 } %i.th, 1
  br i1 %i.tj, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.cv, !prof !126

bb.cv:                                            ; preds = %.lr.ph.i.i.i.i
  %i.tk = load i8, ptr %.sroa.0.1137.i.i.i.i, align 1, !alias.scope !815, !noalias !775, !noundef !4
  %i.tl = zext i8 %i.tk to i32
  %i.tm = add nsw i32 %i.tl, -48                  ; 2 uses
  %i.tn = icmp ult i32 %i.tm, 10
  br i1 %i.tn, label %bb.cw, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.cw:                                            ; preds = %bb.cv
  %i.to = trunc nuw nsw i32 %i.tm to i16
  %i.tp = call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.ti, i16 %i.to) ; 2 uses
  %i.tq = extractvalue { i16, i1 } %i.tp, 1
  br i1 %i.tq, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.cx, !prof !126

bb.cx:                                            ; preds = %bb.cw
  %i.tr = extractvalue { i16, i1 } %i.tp, 0
  %.not103.i.i.i.i = icmp eq i64 %i.tg, 0
  br i1 %.not103.i.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph142.i.i.i.i:                                ; preds = %.preheader117.i.i.i.i, %bb.cy
  %.sroa.0.2141.i.i.i.i = phi ptr [ %i.tw, %bb.cy ], [ %i.tc, %.preheader117.i.i.i.i ] ; 2 uses
  %.sroa.26.2140.i.i.i.i = phi i64 [ %i.tv, %bb.cy ], [ %i.td, %.preheader117.i.i.i.i ]
  %i.ts = load i8, ptr %.sroa.0.2141.i.i.i.i, align 1, !alias.scope !815, !noalias !775, !noundef !4
  %i.tt = add i8 %i.ts, -48
  %i.tu = icmp ult i8 %i.tt, 10
  br i1 %i.tu, label %bb.cy, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.cy:                                            ; preds = %.lr.ph142.i.i.i.i
  %i.tv = add nsw i64 %.sroa.26.2140.i.i.i.i, -1  ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0.2141.i.i.i.i, i64 1
  %.not104.i.i.i.i = icmp eq i64 %i.tv, 0
  br i1 %.not104.i.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph142.i.i.i.i

bb.cz:                                            ; preds = %bb.ct, %bb.cs
  %.sroa.26.0.i.i.i.i = phi i64 [ %i.tb, %bb.ct ], [ %i.sa, %bb.cs ] ; 5 uses
  %.sroa.0.0.i89.i.i.i = phi ptr [ %i.ta, %bb.ct ], [ %.sroa.012.0.i.i.i, %bb.cs ] ; 4 uses
  %i.tx = icmp samesign ult i64 %.sroa.26.0.i.i.i.i, 4
  br i1 %i.tx, label %.preheader.i.i.i.i, label %.preheader114.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.cz
  %.not106147.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i, 0
  br i1 %.not106147.i.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph151.i.i.i.i

.preheader114.i.i.i.i:                            ; preds = %bb.cz, %bb.dc
  %.sroa.0.3146.i.i.i.i = phi ptr [ %i.ty, %bb.dc ], [ %.sroa.0.0.i89.i.i.i, %bb.cz ] ; 2 uses
  %.sroa.26.3145.i.i.i.i = phi i64 [ %i.tz, %bb.dc ], [ %.sroa.26.0.i.i.i.i, %bb.cz ]
  %.sroa.085.3144.i.i.i.i = phi i16 [ %i.uk, %bb.dc ], [ 0, %bb.cz ]
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.3146.i.i.i.i, i64 1
  %i.tz = add nsw i64 %.sroa.26.3145.i.i.i.i, -1  ; 2 uses
  %i.ua = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.3144.i.i.i.i, i16 10) ; 2 uses
  %i.ub = extractvalue { i16, i1 } %i.ua, 0
  %i.uc = extractvalue { i16, i1 } %i.ua, 1
  br i1 %i.uc, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.da, !prof !126

bb.da:                                            ; preds = %.preheader114.i.i.i.i
  %i.ud = load i8, ptr %.sroa.0.3146.i.i.i.i, align 1, !alias.scope !815, !noalias !775, !noundef !4
  %i.ue = zext i8 %i.ud to i32
  %i.uf = add nsw i32 %i.ue, -48                  ; 2 uses
  %i.ug = icmp ult i32 %i.uf, 10
  br i1 %i.ug, label %bb.db, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.db:                                            ; preds = %bb.da
  %i.uh = trunc nuw nsw i32 %i.uf to i16
  %i.ui = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.ub, i16 %i.uh) ; 2 uses
  %i.uj = extractvalue { i16, i1 } %i.ui, 1
  br i1 %i.uj, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.dc, !prof !126

bb.dc:                                            ; preds = %bb.db
  %i.uk = extractvalue { i16, i1 } %i.ui, 0
  %.not105.i.i.i.i = icmp eq i64 %i.tz, 0
  br i1 %.not105.i.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.preheader114.i.i.i.i

.lr.ph151.i.i.i.i:                                ; preds = %.preheader.i.i.i.i
  %i.ul = load i8, ptr %.sroa.0.0.i89.i.i.i, align 1, !alias.scope !815, !noalias !775, !noundef !4
  %i.um = add i8 %i.ul, -48
  %i.un = icmp ult i8 %i.um, 10
  br i1 %i.un, label %bb.dd, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.dd:                                            ; preds = %.lr.ph151.i.i.i.i
  %.not106.i.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i.i, 1
  br i1 %.not106.i.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph151.i.i.i.i.1

.lr.ph151.i.i.i.i.1:                              ; preds = %bb.dd
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i89.i.i.i, i64 1
  %i.up = load i8, ptr %i.uo, align 1, !alias.scope !815, !noalias !775, !noundef !4
  %i.uq = add i8 %i.up, -48
  %i.ur = icmp ult i8 %i.uq, 10
  br i1 %i.ur, label %bb.de, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.de:                                            ; preds = %.lr.ph151.i.i.i.i.1
  %.not106.i.i.i.i.1 = icmp eq i64 %.sroa.26.0.i.i.i.i, 2
  br i1 %.not106.i.i.i.i.1, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph151.i.i.i.i.2

.lr.ph151.i.i.i.i.2:                              ; preds = %bb.de
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i89.i.i.i, i64 2
  %i.ut = load i8, ptr %i.us, align 1, !alias.scope !815, !noalias !775, !noundef !4
  %i.uu = add i8 %i.ut, -48
  %i.uv = icmp ult i8 %i.uu, 10
  %spec.select = select i1 %i.uv, i64 -1, i64 13
  br label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i: ; preds = %.lr.ph151.i.i.i.i.2, %.lr.ph151.i156.i.i.i.2, %.lr.ph151.i119.i.i.i.2, %bb.cx, %bb.cw, %bb.cv, %.lr.ph.i.i.i.i, %bb.cy, %.lr.ph142.i.i.i.i, %bb.dc, %bb.db, %bb.da, %.preheader114.i.i.i.i, %bb.dd, %.lr.ph151.i.i.i.i, %.lr.ph151.i.i.i.i.1, %bb.de, %bb.dn, %bb.do, %bb.ds, %bb.dt, %bb.du, %bb.eb, %bb.ec, %bb.eg, %bb.eh, %bb.ei, %bb.ez, %bb.ey, %.lr.ph142.i216.i.i.i, %bb.fe, %bb.fd, %.lr.ph151.i230.i.i.i, %bb.fh, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit237.i.i.i, %bb.ev, %bb.ev, %.preheader.i154.i.i.i, %.preheader117.i140.i.i.i, %bb.dv, %bb.dv, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.thread.i.i.i, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i, %.preheader.i117.i.i.i, %.preheader117.i103.i.i.i, %bb.dh, %bb.dh, %bb.dg, %.preheader.i.i.i.i, %.preheader117.i.i.i.i, %bb.cr, %bb.cr, %bb.cq, %bb.cp
  %.sink.i113.i.i = phi i64 [ 13, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i ], [ %..i114.i.i, %bb.fh ], [ 13, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit237.i.i.i ], [ 13, %bb.ev ], [ -1, %bb.cp ], [ -1, %.preheader.i117.i.i.i ], [ 13, %bb.cr ], [ 13, %bb.dg ], [ 13, %bb.dh ], [ 13, %bb.dh ], [ 13, %bb.dv ], [ 13, %bb.dv ], [ 13, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.thread.i.i.i ], [ 13, %bb.cr ], [ -1, %bb.eb ], [ -1, %bb.ds ], [ -1, %.preheader117.i.i.i.i ], [ -1, %bb.eg ], [ -1, %.preheader.i.i.i.i ], [ 13, %bb.ev ], [ 13, %.lr.ph142.i.i.i.i ], [ 13, %bb.ez ], [ -1, %bb.dn ], [ 13, %bb.fe ], [ -1, %bb.do ], [ -1, %bb.dt ], [ -1, %bb.eh ], [ -1, %bb.ec ], [ -1, %.preheader117.i140.i.i.i ], [ -1, %.preheader.i154.i.i.i ], [ -1, %.preheader117.i103.i.i.i ], [ 13, %.lr.ph151.i230.i.i.i ], [ -1, %.lr.ph151.i156.i.i.i.2 ], [ 13, %.lr.ph142.i216.i.i.i ], [ 13, %bb.cq ], [ -1, %bb.dc ], [ 13, %bb.fd ], [ 13, %bb.ey ], [ -1, %.lr.ph151.i119.i.i.i.2 ], [ -1, %bb.ei ], [ -1, %bb.cx ], [ -1, %bb.du ], [ 13, %.lr.ph151.i.i.i.i ], [ -1, %bb.dd ], [ 13, %.lr.ph151.i.i.i.i.1 ], [ -1, %bb.de ], [ %spec.select, %.lr.ph151.i.i.i.i.2 ], [ 13, %bb.db ], [ 13, %bb.da ], [ 13, %.preheader114.i.i.i.i ], [ -1, %bb.cy ], [ 13, %bb.cv ], [ 13, %.lr.ph.i.i.i.i ], [ 13, %bb.cw ]
  call void @_RNvXs0_NtCslwwPJGKhBTm_4onig6regionNtB5_6RegionNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ga) #24, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !775
  br label %bb.fi

bb.df:                                            ; preds = %bb.cp
  br i1 %i.sx, label %bb.dg, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.i.i.i

_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.i.i.i: ; preds = %bb.dm, %bb.dl, %.lr.ph.i91.i.i.i, %.lr.ph142.i105.i.i.i, %bb.dr, %bb.dq, %.preheader114.i112.i.i.i, %.lr.ph151.i119.i.i.i, %.lr.ph151.i119.i.i.i.1, %.lr.ph151.i119.i.i.i.2, %bb.df
  br i1 %i.sw, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.thread.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i

bb.dg:                                            ; preds = %bb.df
  switch i64 %i.sr, label %thread-pre-split.i124.i.i.i [
    i64 0, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
    i64 1, label %bb.dh
  ]

bb.dh:                                            ; preds = %bb.dg
  %i.uw = load i8, ptr %.sroa.012.0.i.i.i, align 1, !alias.scope !818, !noalias !775, !noundef !4 ; 2 uses
  switch i8 %i.uw, label %bb.di [
    i8 43, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
    i8 45, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
  ]

thread-pre-split.i124.i.i.i:                      ; preds = %bb.dg
  %.pr.i125.i.i.i = load i8, ptr %.sroa.012.0.i.i.i, align 1, !alias.scope !818, !noalias !775
  br label %bb.di

bb.di:                                            ; preds = %thread-pre-split.i124.i.i.i, %bb.dh
end_hunk_0
begin_hunk_1_@_RNvMs1_NtCs2zCsf9UsIrc_7uu_expr11syntax_treeNtB5_8StringOp4eval:bb.a
.lr.ph151.i119.i.i.i.1:                           ; preds = %bb.dt
  %i.wm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i111.i.i.i, i64 1
  %i.wn = load i8, ptr %i.wm, align 1, !alias.scope !818, !noalias !775, !noundef !4
  %i.wo = add i8 %i.wn, -48
  %i.wp = icmp ult i8 %i.wo, 10
  br i1 %i.wp, label %bb.du, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.i.i.i

bb.du:                                            ; preds = %.lr.ph151.i119.i.i.i.1
  %.not106.i123.i.i.i.1 = icmp eq i64 %.sroa.26.0.i110.i.i.i, 2
  br i1 %.not106.i123.i.i.i.1, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph151.i119.i.i.i.2

.lr.ph151.i119.i.i.i.2:                           ; preds = %bb.du
  %i.wq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i111.i.i.i, i64 2
  %i.wr = load i8, ptr %i.wq, align 1, !alias.scope !818, !noalias !775, !noundef !4
  %i.ws = add i8 %i.wr, -48
  %i.wt = icmp ult i8 %i.ws, 10
  br i1 %i.wt, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.i.i.i

_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i: ; preds = %bb.ea, %bb.dz, %.lr.ph.i128.i.i.i, %.lr.ph142.i142.i.i.i, %bb.ef, %bb.ee, %.preheader114.i149.i.i.i, %.lr.ph151.i156.i.i.i, %.lr.ph151.i156.i.i.i.1, %.lr.ph151.i156.i.i.i.2, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.i.i.i
  %brmerge.i.i.i = or i1 %i.sw, %i.sx
  br i1 %brmerge.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.split60.i.i.i

_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.thread.i.i.i: ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.i.i.i
  switch i64 %i.su, label %thread-pre-split.i161.i.i.i [
    i64 0, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
    i64 1, label %bb.dv
  ]

bb.dv:                                            ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.thread.i.i.i
  %i.wu = load i8, ptr %i.sv, align 1, !alias.scope !821, !noalias !775, !noundef !4 ; 2 uses
  switch i8 %i.wu, label %bb.dw [
    i8 43, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
    i8 45, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
  ]

thread-pre-split.i161.i.i.i:                      ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit126.thread.thread.i.i.i
  %.pr.i162.i.i.i = load i8, ptr %i.sv, align 1, !alias.scope !821, !noalias !775
  br label %bb.dw

bb.dw:                                            ; preds = %thread-pre-split.i161.i.i.i, %bb.dv
  %i.wv = phi i8 [ %.pr.i162.i.i.i, %thread-pre-split.i161.i.i.i ], [ %i.wu, %bb.dv ]
  switch i8 %i.wv, label %bb.ed [
    i8 43, label %bb.dx
    i8 45, label %bb.dy
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.ww = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  %i.wx = add nsw i64 %i.su, -1
  br label %bb.ed

bb.dy:                                            ; preds = %bb.dw
  %i.wy = getelementptr inbounds nuw i8, ptr %i.sv, i64 1 ; 2 uses
  %i.wz = add nsw i64 %i.su, -1                   ; 3 uses
  %i.xa = icmp samesign ult i64 %i.su, 5
  br i1 %i.xa, label %.preheader117.i140.i.i.i, label %.lr.ph.i128.i.i.i

.preheader117.i140.i.i.i:                         ; preds = %bb.dy
  %.not104138.i141.i.i.i = icmp eq i64 %i.wz, 0
  br i1 %.not104138.i141.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph142.i142.i.i.i

.lr.ph.i128.i.i.i:                                ; preds = %bb.dy, %bb.eb
  %.sroa.0.1137.i129.i.i.i = phi ptr [ %i.xb, %bb.eb ], [ %i.wy, %bb.dy ] ; 2 uses
  %.sroa.26.1136.i130.i.i.i = phi i64 [ %i.xc, %bb.eb ], [ %i.wz, %bb.dy ]
  %.sroa.085.0135.i131.i.i.i = phi i16 [ %i.xn, %bb.eb ], [ 0, %bb.dy ]
  %i.xb = getelementptr inbounds nuw i8, ptr %.sroa.0.1137.i129.i.i.i, i64 1
  %i.xc = add nsw i64 %.sroa.26.1136.i130.i.i.i, -1 ; 2 uses
  %i.xd = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.0135.i131.i.i.i, i16 10) ; 2 uses
  %i.xe = extractvalue { i16, i1 } %i.xd, 0
  %i.xf = extractvalue { i16, i1 } %i.xd, 1
  br i1 %i.xf, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i, label %bb.dz, !prof !126

bb.dz:                                            ; preds = %.lr.ph.i128.i.i.i
  %i.xg = load i8, ptr %.sroa.0.1137.i129.i.i.i, align 1, !alias.scope !821, !noalias !775, !noundef !4
  %i.xh = zext i8 %i.xg to i32
  %i.xi = add nsw i32 %i.xh, -48                  ; 2 uses
  %i.xj = icmp ult i32 %i.xi, 10
  br i1 %i.xj, label %bb.ea, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i

bb.ea:                                            ; preds = %bb.dz
  %i.xk = trunc nuw nsw i32 %i.xi to i16
  %i.xl = call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.xe, i16 %i.xk) ; 2 uses
  %i.xm = extractvalue { i16, i1 } %i.xl, 1
  br i1 %i.xm, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i, label %bb.eb, !prof !126

bb.eb:                                            ; preds = %bb.ea
  %i.xn = extractvalue { i16, i1 } %i.xl, 0
  %.not103.i134.i.i.i = icmp eq i64 %i.xc, 0
  br i1 %.not103.i134.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph.i128.i.i.i

.lr.ph142.i142.i.i.i:                             ; preds = %.preheader117.i140.i.i.i, %bb.ec
  %.sroa.0.2141.i143.i.i.i = phi ptr [ %i.xs, %bb.ec ], [ %i.wy, %.preheader117.i140.i.i.i ] ; 2 uses
  %.sroa.26.2140.i144.i.i.i = phi i64 [ %i.xr, %bb.ec ], [ %i.wz, %.preheader117.i140.i.i.i ]
  %i.xo = load i8, ptr %.sroa.0.2141.i143.i.i.i, align 1, !alias.scope !821, !noalias !775, !noundef !4
  %i.xp = add i8 %i.xo, -48
  %i.xq = icmp ult i8 %i.xp, 10
  br i1 %i.xq, label %bb.ec, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i

bb.ec:                                            ; preds = %.lr.ph142.i142.i.i.i
  %i.xr = add nsw i64 %.sroa.26.2140.i144.i.i.i, -1 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %.sroa.0.2141.i143.i.i.i, i64 1
  %.not104.i146.i.i.i = icmp eq i64 %i.xr, 0
  br i1 %.not104.i146.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph142.i142.i.i.i

bb.ed:                                            ; preds = %bb.dx, %bb.dw
  %.sroa.26.0.i147.i.i.i = phi i64 [ %i.wx, %bb.dx ], [ %i.su, %bb.dw ] ; 5 uses
  %.sroa.0.0.i148.i.i.i = phi ptr [ %i.ww, %bb.dx ], [ %i.sv, %bb.dw ] ; 4 uses
  %i.xt = icmp samesign ult i64 %.sroa.26.0.i147.i.i.i, 4
  br i1 %i.xt, label %.preheader.i154.i.i.i, label %.preheader114.i149.i.i.i

.preheader.i154.i.i.i:                            ; preds = %bb.ed
  %.not106147.i155.i.i.i = icmp eq i64 %.sroa.26.0.i147.i.i.i, 0
  br i1 %.not106147.i155.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph151.i156.i.i.i

.preheader114.i149.i.i.i:                         ; preds = %bb.ed, %bb.eg
  %.sroa.0.3146.i150.i.i.i = phi ptr [ %i.xu, %bb.eg ], [ %.sroa.0.0.i148.i.i.i, %bb.ed ] ; 2 uses
  %.sroa.26.3145.i151.i.i.i = phi i64 [ %i.xv, %bb.eg ], [ %.sroa.26.0.i147.i.i.i, %bb.ed ]
  %.sroa.085.3144.i152.i.i.i = phi i16 [ %i.yg, %bb.eg ], [ 0, %bb.ed ]
  %i.xu = getelementptr inbounds nuw i8, ptr %.sroa.0.3146.i150.i.i.i, i64 1
  %i.xv = add nsw i64 %.sroa.26.3145.i151.i.i.i, -1 ; 2 uses
  %i.xw = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.3144.i152.i.i.i, i16 10) ; 2 uses
  %i.xx = extractvalue { i16, i1 } %i.xw, 0
  %i.xy = extractvalue { i16, i1 } %i.xw, 1
  br i1 %i.xy, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i, label %bb.ee, !prof !126

bb.ee:                                            ; preds = %.preheader114.i149.i.i.i
  %i.xz = load i8, ptr %.sroa.0.3146.i150.i.i.i, align 1, !alias.scope !821, !noalias !775, !noundef !4
  %i.ya = zext i8 %i.xz to i32
  %i.yb = add nsw i32 %i.ya, -48                  ; 2 uses
  %i.yc = icmp ult i32 %i.yb, 10
  br i1 %i.yc, label %bb.ef, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.yd = trunc nuw nsw i32 %i.yb to i16
  %i.ye = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.xx, i16 %i.yd) ; 2 uses
  %i.yf = extractvalue { i16, i1 } %i.ye, 1
  br i1 %i.yf, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i, label %bb.eg, !prof !126

bb.eg:                                            ; preds = %bb.ef
  %i.yg = extractvalue { i16, i1 } %i.ye, 0
  %.not105.i153.i.i.i = icmp eq i64 %i.xv, 0
  br i1 %.not105.i153.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.preheader114.i149.i.i.i

.lr.ph151.i156.i.i.i:                             ; preds = %.preheader.i154.i.i.i
  %i.yh = load i8, ptr %.sroa.0.0.i148.i.i.i, align 1, !alias.scope !821, !noalias !775, !noundef !4
  %i.yi = add i8 %i.yh, -48
  %i.yj = icmp ult i8 %i.yi, 10
  br i1 %i.yj, label %bb.eh, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i

bb.eh:                                            ; preds = %.lr.ph151.i156.i.i.i
  %.not106.i160.i.i.i = icmp eq i64 %.sroa.26.0.i147.i.i.i, 1
  br i1 %.not106.i160.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph151.i156.i.i.i.1

.lr.ph151.i156.i.i.i.1:                           ; preds = %bb.eh
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i.i.i, i64 1
  %i.yl = load i8, ptr %i.yk, align 1, !alias.scope !821, !noalias !775, !noundef !4
  %i.ym = add i8 %i.yl, -48
  %i.yn = icmp ult i8 %i.ym, 10
  br i1 %i.yn, label %bb.ei, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i

bb.ei:                                            ; preds = %.lr.ph151.i156.i.i.i.1
  %.not106.i160.i.i.i.1 = icmp eq i64 %.sroa.26.0.i147.i.i.i, 2
  br i1 %.not106.i160.i.i.i.1, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %.lr.ph151.i156.i.i.i.2

.lr.ph151.i156.i.i.i.2:                           ; preds = %bb.ei
  %i.yo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i148.i.i.i, i64 2
  %i.yp = load i8, ptr %i.yo, align 1, !alias.scope !821, !noalias !775, !noundef !4
  %i.yq = add i8 %i.yp, -48
  %i.yr = icmp ult i8 %i.yq, 10
  br i1 %i.yr, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i

.split60.i.i.i:                                   ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.i.i.i
  %cond.i.i.i = icmp eq i64 %i.sr, 1
  %i.ys = load i8, ptr %.sroa.012.0.i.i.i, align 1, !alias.scope !824, !noalias !775 ; 2 uses
  br i1 %cond.i.i.i, label %bb.ej, label %thread-pre-split.i198.i.i.i

bb.ej:                                            ; preds = %.split60.i.i.i
  switch i8 %i.ys, label %.lr.ph151.i193.i.i.i.preheader [
    i8 43, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i
    i8 45, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i
  ]

.lr.ph151.i193.i.i.i.preheader:                   ; preds = %bb.eq, %bb.ej
  %.sroa.0.4150.i194.i.i.i.ph = phi ptr [ %.sroa.012.0.i.i.i, %bb.ej ], [ %.sroa.0.0.i185.i.i.i, %bb.eq ]
  %.sroa.26.4149.i195.i.i.i.ph = phi i64 [ 1, %bb.ej ], [ %.sroa.26.0.i184.i.i.i, %bb.eq ]
  br label %.lr.ph151.i193.i.i.i

thread-pre-split.i198.i.i.i:                      ; preds = %.split60.i.i.i
  switch i8 %i.ys, label %bb.eq [
    i8 43, label %bb.ek
    i8 45, label %bb.el
  ]

bb.ek:                                            ; preds = %thread-pre-split.i198.i.i.i
  %i.yt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 1
  %i.yu = add nsw i64 %i.sr, -1
  br label %bb.eq

bb.el:                                            ; preds = %thread-pre-split.i198.i.i.i
  %i.yv = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 1 ; 2 uses
  %i.yw = icmp samesign ult i64 %i.sr, 5
  br i1 %i.yw, label %.lr.ph142.i179.i.i.i, label %.lr.ph.i165.i.i.i.preheader

.lr.ph.i165.i.i.i.preheader:                      ; preds = %bb.el
  %4 = add nsw i64 %i.sr, -1
  br label %.lr.ph.i165.i.i.i

.loopexit.i172.i.i.i:                             ; preds = %bb.eo, %9, %bb.ep, %18, %bb.et, %bb.eu
  %.sroa.085.1.i173.i.i.i = phi i16 [ %21, %18 ], [ %i.aat, %bb.eu ], [ %i.aak, %bb.et ], [ %11, %9 ], [ %i.zw, %bb.ep ], [ %i.zl, %bb.eo ]
  %i.yx = zext i16 %.sroa.085.1.i173.i.i.i to i32
  %i.yy = shl nuw i32 %i.yx, 16
  br label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

.lr.ph.i165.i.i.i:                                ; preds = %.lr.ph.i165.i.i.i.preheader, %bb.eo
  %.sroa.0.1137.i166.i.i.i = phi ptr [ %i.yz, %bb.eo ], [ %i.yv, %.lr.ph.i165.i.i.i.preheader ] ; 3 uses
  %.sroa.26.1136.i167.i.i.i = phi i64 [ %i.za, %bb.eo ], [ %4, %.lr.ph.i165.i.i.i.preheader ]
  %.sroa.085.0135.i168.i.i.i = phi i16 [ %i.zl, %bb.eo ], [ 0, %.lr.ph.i165.i.i.i.preheader ]
  %i.yz = getelementptr inbounds nuw i8, ptr %.sroa.0.1137.i166.i.i.i, i64 1
  %i.za = add nsw i64 %.sroa.26.1136.i167.i.i.i, -1 ; 2 uses
  %i.zb = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.0135.i168.i.i.i, i16 10) ; 2 uses
  %i.zc = extractvalue { i16, i1 } %i.zb, 0
  %i.zd = extractvalue { i16, i1 } %i.zb, 1
  br i1 %i.zd, label %.loopexit113.sink.split.i174.i.i.i, label %bb.em, !prof !126

bb.em:                                            ; preds = %.lr.ph.i165.i.i.i
  %i.ze = load i8, ptr %.sroa.0.1137.i166.i.i.i, align 1, !alias.scope !824, !noalias !775, !noundef !4
  %i.zf = zext i8 %i.ze to i32
  %i.zg = add nsw i32 %i.zf, -48                  ; 2 uses
  %i.zh = icmp ult i32 %i.zg, 10
  br i1 %i.zh, label %bb.en, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

bb.en:                                            ; preds = %bb.em
  %i.zi = trunc nuw nsw i32 %i.zg to i16
  %i.zj = call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.zc, i16 %i.zi) ; 2 uses
  %i.zk = extractvalue { i16, i1 } %i.zj, 1
  br i1 %i.zk, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i, label %bb.eo, !prof !126

bb.eo:                                            ; preds = %bb.en
  %i.zl = extractvalue { i16, i1 } %i.zj, 0       ; 2 uses
  %.not103.i171.i.i.i = icmp eq i64 %i.za, 0
  br i1 %.not103.i171.i.i.i, label %.loopexit.i172.i.i.i, label %.lr.ph.i165.i.i.i

.loopexit113.sink.split.i174.i.i.i:               ; preds = %.lr.ph.i165.i.i.i, %.preheader114.i186.i.i.i
  %.sroa.0.3146.lcssa.sink.i175.i.i.i = phi ptr [ %.sroa.0.3146.i187.i.i.i, %.preheader114.i186.i.i.i ], [ %.sroa.0.1137.i166.i.i.i, %.lr.ph.i165.i.i.i ]
  %.sink189.i176.i.i.i = phi i32 [ 513, %.preheader114.i186.i.i.i ], [ 769, %.lr.ph.i165.i.i.i ]
  %i.zm = load i8, ptr %.sroa.0.3146.lcssa.sink.i175.i.i.i, align 1, !alias.scope !824, !noalias !775, !noundef !4
  %i.zn = add i8 %i.zm, -48
  %i.zo = icmp ult i8 %i.zn, 10
  %i.zp = select i1 %i.zo, i32 %.sink189.i176.i.i.i, i32 257
  br label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

.lr.ph142.i179.i.i.i:                             ; preds = %bb.el
  %5 = load i8, ptr %i.yv, align 1, !alias.scope !824, !noalias !775, !noundef !4
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -48                        ; 2 uses
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %9, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

9:                                                ; preds = %.lr.ph142.i179.i.i.i
  %10 = trunc nuw nsw i32 %7 to i16               ; 2 uses
  %11 = sub nsw i16 0, %10
  %.not104.i183.i.i.i = icmp eq i64 %i.sr, 2
  br i1 %.not104.i183.i.i.i, label %.loopexit.i172.i.i.i, label %.lr.ph142.i179.i.i.i.a

.lr.ph142.i179.i.i.i.a:                           ; preds = %9
  %12 = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 2
  %i.zq = load i8, ptr %12, align 1, !alias.scope !824, !noalias !775, !noundef !4
  %i.zr = zext i8 %i.zq to i32
  %i.zs = add nsw i32 %i.zr, -48                  ; 2 uses
  %i.zt = icmp ult i32 %i.zs, 10
  br i1 %i.zt, label %bb.ep, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

bb.ep:                                            ; preds = %.lr.ph142.i179.i.i.i.a
  %i.zu = mul nsw i16 %10, -10
  %i.zv = trunc nuw nsw i32 %i.zs to i16
  %i.zw = sub nsw i16 %i.zu, %i.zv                ; 2 uses
  %.not104.i183.i.i.i.a = icmp eq i64 %i.sr, 3
  br i1 %.not104.i183.i.i.i.a, label %.loopexit.i172.i.i.i, label %.lr.ph142.i179.i.i.i.2

.lr.ph142.i179.i.i.i.2:                           ; preds = %bb.ep
  %13 = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 3
  %14 = load i8, ptr %13, align 1, !alias.scope !824, !noalias !775, !noundef !4
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, -48                      ; 2 uses
  %17 = icmp ult i32 %16, 10
  br i1 %17, label %18, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

18:                                               ; preds = %.lr.ph142.i179.i.i.i.2
  %19 = mul i16 %i.zw, 10
  %20 = trunc nuw nsw i32 %16 to i16
  %21 = sub i16 %19, %20
  br label %.loopexit.i172.i.i.i

bb.eq:                                            ; preds = %bb.ek, %thread-pre-split.i198.i.i.i
  %.sroa.26.0.i184.i.i.i = phi i64 [ %i.yu, %bb.ek ], [ %i.sr, %thread-pre-split.i198.i.i.i ] ; 3 uses
  %.sroa.0.0.i185.i.i.i = phi ptr [ %i.yt, %bb.ek ], [ %.sroa.012.0.i.i.i, %thread-pre-split.i198.i.i.i ] ; 2 uses
  %i.zx = icmp samesign ult i64 %.sroa.26.0.i184.i.i.i, 4
  br i1 %i.zx, label %.lr.ph151.i193.i.i.i.preheader, label %.preheader114.i186.i.i.i

.preheader114.i186.i.i.i:                         ; preds = %bb.eq, %bb.et
  %.sroa.0.3146.i187.i.i.i = phi ptr [ %i.zy, %bb.et ], [ %.sroa.0.0.i185.i.i.i, %bb.eq ] ; 3 uses
  %.sroa.26.3145.i188.i.i.i = phi i64 [ %i.zz, %bb.et ], [ %.sroa.26.0.i184.i.i.i, %bb.eq ]
  %.sroa.085.3144.i189.i.i.i = phi i16 [ %i.aak, %bb.et ], [ 0, %bb.eq ]
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.0.3146.i187.i.i.i, i64 1
  %i.zz = add nsw i64 %.sroa.26.3145.i188.i.i.i, -1 ; 2 uses
  %i.aaa = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.3144.i189.i.i.i, i16 10) ; 2 uses
  %i.aab = extractvalue { i16, i1 } %i.aaa, 0
  %i.aac = extractvalue { i16, i1 } %i.aaa, 1
  br i1 %i.aac, label %.loopexit113.sink.split.i174.i.i.i, label %bb.er, !prof !126

bb.er:                                            ; preds = %.preheader114.i186.i.i.i
  %i.aad = load i8, ptr %.sroa.0.3146.i187.i.i.i, align 1, !alias.scope !824, !noalias !775, !noundef !4
  %i.aae = zext i8 %i.aad to i32
  %i.aaf = add nsw i32 %i.aae, -48                ; 2 uses
  %i.aag = icmp ult i32 %i.aaf, 10
  br i1 %i.aag, label %bb.es, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

bb.es:                                            ; preds = %bb.er
  %i.aah = trunc nuw nsw i32 %i.aaf to i16
  %i.aai = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.aab, i16 %i.aah) ; 2 uses
  %i.aaj = extractvalue { i16, i1 } %i.aai, 1
  br i1 %i.aaj, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i, label %bb.et, !prof !126

bb.et:                                            ; preds = %bb.es
  %i.aak = extractvalue { i16, i1 } %i.aai, 0     ; 2 uses
  %.not105.i190.i.i.i = icmp eq i64 %i.zz, 0
  br i1 %.not105.i190.i.i.i, label %.loopexit.i172.i.i.i, label %.preheader114.i186.i.i.i

.lr.ph151.i193.i.i.i:                             ; preds = %.lr.ph151.i193.i.i.i.preheader, %bb.eu
  %.sroa.0.4150.i194.i.i.i = phi ptr [ %i.aar, %bb.eu ], [ %.sroa.0.4150.i194.i.i.i.ph, %.lr.ph151.i193.i.i.i.preheader ] ; 2 uses
  %.sroa.26.4149.i195.i.i.i = phi i64 [ %i.aaq, %bb.eu ], [ %.sroa.26.4149.i195.i.i.i.ph, %.lr.ph151.i193.i.i.i.preheader ]
  %.sroa.085.4148.i196.i.i.i = phi i16 [ %i.aat, %bb.eu ], [ 0, %.lr.ph151.i193.i.i.i.preheader ]
  %i.aal = load i8, ptr %.sroa.0.4150.i194.i.i.i, align 1, !alias.scope !824, !noalias !775, !noundef !4
  %i.aam = zext i8 %i.aal to i32
  %i.aan = add nsw i32 %i.aam, -48                ; 2 uses
  %i.aao = icmp ult i32 %i.aan, 10
  br i1 %i.aao, label %bb.eu, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i

bb.eu:                                            ; preds = %.lr.ph151.i193.i.i.i
  %i.aap = mul i16 %.sroa.085.4148.i196.i.i.i, 10
  %i.aaq = add nsw i64 %.sroa.26.4149.i195.i.i.i, -1 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.0.4150.i194.i.i.i, i64 1
  %i.aas = trunc nuw nsw i32 %i.aan to i16
  %i.aat = add i16 %i.aap, %i.aas                 ; 2 uses
  %.not106.i197.i.i.i = icmp eq i64 %i.aaq, 0
  br i1 %.not106.i197.i.i.i, label %.loopexit.i172.i.i.i, label %.lr.ph151.i193.i.i.i

_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i: ; preds = %bb.en, %bb.em, %.lr.ph142.i179.i.i.i, %.lr.ph142.i179.i.i.i.a, %.lr.ph142.i179.i.i.i.2, %bb.es, %bb.er, %.lr.ph151.i193.i.i.i, %.loopexit113.sink.split.i174.i.i.i, %.loopexit.i172.i.i.i, %bb.ej, %bb.ej
  %.sroa.12.0.insert.insert.i164.i.i.i = phi i32 [ 257, %bb.ej ], [ %i.yy, %.loopexit.i172.i.i.i ], [ %i.zp, %.loopexit113.sink.split.i174.i.i.i ], [ 257, %bb.ej ], [ 257, %.lr.ph142.i179.i.i.i ], [ 257, %.lr.ph151.i193.i.i.i ], [ 257, %bb.er ], [ 513, %bb.es ], [ 257, %.lr.ph142.i179.i.i.i.2 ], [ 257, %.lr.ph142.i179.i.i.i.a ], [ 769, %bb.en ], [ 257, %bb.em ] ; 2 uses
  %.sroa.556.0.extract.shift.i.i.i = lshr i32 %.sroa.12.0.insert.insert.i164.i.i.i, 16
  %.sroa.556.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.556.0.extract.shift.i.i.i to i16
  %cond507.i.i.i = icmp eq i64 %i.su, 1
  %i.aau = load i8, ptr %i.sv, align 1, !alias.scope !827, !noalias !775 ; 2 uses
  br i1 %cond507.i.i.i, label %bb.ev, label %thread-pre-split.i235.i.i.i

bb.ev:                                            ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i
  switch i8 %i.aau, label %.lr.ph151.i230.i.i.i.preheader [
    i8 43, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
    i8 45, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i
  ]

.lr.ph151.i230.i.i.i.preheader:                   ; preds = %bb.fc, %bb.ev
  %.sroa.0.4150.i231.i.i.i.ph = phi ptr [ %i.sv, %bb.ev ], [ %.sroa.0.0.i222.i.i.i, %bb.fc ]
  %.sroa.26.4149.i232.i.i.i.ph = phi i64 [ 1, %bb.ev ], [ %.sroa.26.0.i221.i.i.i, %bb.fc ]
  br label %.lr.ph151.i230.i.i.i

thread-pre-split.i235.i.i.i:                      ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit200.i.i.i
  switch i8 %i.aau, label %bb.fc [
    i8 43, label %bb.ew
    i8 45, label %bb.ex
  ]

bb.ew:                                            ; preds = %thread-pre-split.i235.i.i.i
  %i.aav = getelementptr inbounds nuw i8, ptr %i.sv, i64 1
  %i.aaw = add nsw i64 %i.su, -1
  br label %bb.fc

bb.ex:                                            ; preds = %thread-pre-split.i235.i.i.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.sv, i64 1 ; 2 uses
  %i.aay = add nsw i64 %i.su, -1                  ; 2 uses
  %i.aaz = icmp samesign ult i64 %i.su, 5
  br i1 %i.aaz, label %.lr.ph142.i216.i.i.i, label %.lr.ph.i202.i.i.i

.loopexit.i209.i.i.i:                             ; preds = %bb.fa, %bb.fb, %bb.ff, %bb.fg
  %.sroa.085.1.i210.i.i.i = phi i16 [ %i.acb, %bb.fb ], [ %i.acy, %bb.fg ], [ %i.acp, %bb.ff ], [ %i.abo, %bb.fa ]
  %i.aba = zext i16 %.sroa.085.1.i210.i.i.i to i32
  %i.abb = shl nuw i32 %i.aba, 16
  br label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit237.i.i.i

.lr.ph.i202.i.i.i:                                ; preds = %bb.ex, %bb.fa
  %.sroa.0.1137.i203.i.i.i = phi ptr [ %i.abc, %bb.fa ], [ %i.aax, %bb.ex ] ; 3 uses
  %.sroa.26.1136.i204.i.i.i = phi i64 [ %i.abd, %bb.fa ], [ %i.aay, %bb.ex ]
  %.sroa.085.0135.i205.i.i.i = phi i16 [ %i.abo, %bb.fa ], [ 0, %bb.ex ]
  %i.abc = getelementptr inbounds nuw i8, ptr %.sroa.0.1137.i203.i.i.i, i64 1
  %i.abd = add nsw i64 %.sroa.26.1136.i204.i.i.i, -1 ; 2 uses
  %i.abe = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.0135.i205.i.i.i, i16 10) ; 2 uses
  %i.abf = extractvalue { i16, i1 } %i.abe, 0
  %i.abg = extractvalue { i16, i1 } %i.abe, 1
  br i1 %i.abg, label %.loopexit113.sink.split.i211.i.i.i, label %bb.ey, !prof !126

bb.ey:                                            ; preds = %.lr.ph.i202.i.i.i
  %i.abh = load i8, ptr %.sroa.0.1137.i203.i.i.i, align 1, !alias.scope !827, !noalias !775, !noundef !4
  %i.abi = zext i8 %i.abh to i32
  %i.abj = add nsw i32 %i.abi, -48                ; 2 uses
  %i.abk = icmp ult i32 %i.abj, 10
  br i1 %i.abk, label %bb.ez, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.ez:                                            ; preds = %bb.ey
  %i.abl = trunc nuw nsw i32 %i.abj to i16
  %i.abm = call { i16, i1 } @llvm.ssub.with.overflow.i16(i16 %i.abf, i16 %i.abl) ; 2 uses
  %i.abn = extractvalue { i16, i1 } %i.abm, 1
  br i1 %i.abn, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.fa, !prof !126

bb.fa:                                            ; preds = %bb.ez
  %i.abo = extractvalue { i16, i1 } %i.abm, 0     ; 2 uses
  %.not103.i208.i.i.i = icmp eq i64 %i.abd, 0
  br i1 %.not103.i208.i.i.i, label %.loopexit.i209.i.i.i, label %.lr.ph.i202.i.i.i

.loopexit113.sink.split.i211.i.i.i:               ; preds = %.lr.ph.i202.i.i.i, %.preheader114.i223.i.i.i
  %.sroa.0.3146.lcssa.sink.i212.i.i.i = phi ptr [ %.sroa.0.3146.i224.i.i.i, %.preheader114.i223.i.i.i ], [ %.sroa.0.1137.i203.i.i.i, %.lr.ph.i202.i.i.i ]
  %.sink189.i213.i.i.i = phi i32 [ 513, %.preheader114.i223.i.i.i ], [ 769, %.lr.ph.i202.i.i.i ]
  %i.abp = load i8, ptr %.sroa.0.3146.lcssa.sink.i212.i.i.i, align 1, !alias.scope !827, !noalias !775, !noundef !4
  %i.abq = add i8 %i.abp, -48
  %i.abr = icmp ult i8 %i.abq, 10
  %i.abs = select i1 %i.abr, i32 %.sink189.i213.i.i.i, i32 257
  br label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit237.i.i.i

.lr.ph142.i216.i.i.i:                             ; preds = %bb.ex, %bb.fb
  %.sroa.0.2141.i217.i.i.i = phi ptr [ %i.abz, %bb.fb ], [ %i.aax, %bb.ex ] ; 2 uses
  %.sroa.26.2140.i218.i.i.i = phi i64 [ %i.aby, %bb.fb ], [ %i.aay, %bb.ex ]
  %.sroa.085.2139.i219.i.i.i = phi i16 [ %i.acb, %bb.fb ], [ 0, %bb.ex ]
  %i.abt = load i8, ptr %.sroa.0.2141.i217.i.i.i, align 1, !alias.scope !827, !noalias !775, !noundef !4
  %i.abu = zext i8 %i.abt to i32
  %i.abv = add nsw i32 %i.abu, -48                ; 2 uses
  %i.abw = icmp ult i32 %i.abv, 10
  br i1 %i.abw, label %bb.fb, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.fb:                                            ; preds = %.lr.ph142.i216.i.i.i
  %i.abx = mul i16 %.sroa.085.2139.i219.i.i.i, 10
  %i.aby = add nsw i64 %.sroa.26.2140.i218.i.i.i, -1 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %.sroa.0.2141.i217.i.i.i, i64 1
  %i.aca = trunc nuw nsw i32 %i.abv to i16
  %i.acb = sub i16 %i.abx, %i.aca                 ; 2 uses
  %.not104.i220.i.i.i = icmp eq i64 %i.aby, 0
  br i1 %.not104.i220.i.i.i, label %.loopexit.i209.i.i.i, label %.lr.ph142.i216.i.i.i

bb.fc:                                            ; preds = %bb.ew, %thread-pre-split.i235.i.i.i
  %.sroa.26.0.i221.i.i.i = phi i64 [ %i.aaw, %bb.ew ], [ %i.su, %thread-pre-split.i235.i.i.i ] ; 3 uses
  %.sroa.0.0.i222.i.i.i = phi ptr [ %i.aav, %bb.ew ], [ %i.sv, %thread-pre-split.i235.i.i.i ] ; 2 uses
  %i.acc = icmp samesign ult i64 %.sroa.26.0.i221.i.i.i, 4
  br i1 %i.acc, label %.lr.ph151.i230.i.i.i.preheader, label %.preheader114.i223.i.i.i

.preheader114.i223.i.i.i:                         ; preds = %bb.fc, %bb.ff
  %.sroa.0.3146.i224.i.i.i = phi ptr [ %i.acd, %bb.ff ], [ %.sroa.0.0.i222.i.i.i, %bb.fc ] ; 3 uses
  %.sroa.26.3145.i225.i.i.i = phi i64 [ %i.ace, %bb.ff ], [ %.sroa.26.0.i221.i.i.i, %bb.fc ]
  %.sroa.085.3144.i226.i.i.i = phi i16 [ %i.acp, %bb.ff ], [ 0, %bb.fc ]
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.0.3146.i224.i.i.i, i64 1
  %i.ace = add nsw i64 %.sroa.26.3145.i225.i.i.i, -1 ; 2 uses
  %i.acf = call { i16, i1 } @llvm.smul.with.overflow.i16(i16 %.sroa.085.3144.i226.i.i.i, i16 10) ; 2 uses
  %i.acg = extractvalue { i16, i1 } %i.acf, 0
  %i.ach = extractvalue { i16, i1 } %i.acf, 1
  br i1 %i.ach, label %.loopexit113.sink.split.i211.i.i.i, label %bb.fd, !prof !126

bb.fd:                                            ; preds = %.preheader114.i223.i.i.i
  %i.aci = load i8, ptr %.sroa.0.3146.i224.i.i.i, align 1, !alias.scope !827, !noalias !775, !noundef !4
  %i.acj = zext i8 %i.aci to i32
  %i.ack = add nsw i32 %i.acj, -48                ; 2 uses
  %i.acl = icmp ult i32 %i.ack, 10
  br i1 %i.acl, label %bb.fe, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.fe:                                            ; preds = %bb.fd
  %i.acm = trunc nuw nsw i32 %i.ack to i16
  %i.acn = call { i16, i1 } @llvm.sadd.with.overflow.i16(i16 %i.acg, i16 %i.acm) ; 2 uses
  %i.aco = extractvalue { i16, i1 } %i.acn, 1
  br i1 %i.aco, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.ff, !prof !126

bb.ff:                                            ; preds = %bb.fe
  %i.acp = extractvalue { i16, i1 } %i.acn, 0     ; 2 uses
  %.not105.i227.i.i.i = icmp eq i64 %i.ace, 0
  br i1 %.not105.i227.i.i.i, label %.loopexit.i209.i.i.i, label %.preheader114.i223.i.i.i

.lr.ph151.i230.i.i.i:                             ; preds = %.lr.ph151.i230.i.i.i.preheader, %bb.fg
  %.sroa.0.4150.i231.i.i.i = phi ptr [ %i.acw, %bb.fg ], [ %.sroa.0.4150.i231.i.i.i.ph, %.lr.ph151.i230.i.i.i.preheader ] ; 2 uses
  %.sroa.26.4149.i232.i.i.i = phi i64 [ %i.acv, %bb.fg ], [ %.sroa.26.4149.i232.i.i.i.ph, %.lr.ph151.i230.i.i.i.preheader ]
  %.sroa.085.4148.i233.i.i.i = phi i16 [ %i.acy, %bb.fg ], [ 0, %.lr.ph151.i230.i.i.i.preheader ]
  %i.acq = load i8, ptr %.sroa.0.4150.i231.i.i.i, align 1, !alias.scope !827, !noalias !775, !noundef !4
  %i.acr = zext i8 %i.acq to i32
  %i.acs = add nsw i32 %i.acr, -48                ; 2 uses
  %i.act = icmp ult i32 %i.acs, 10
  br i1 %i.act, label %bb.fg, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.fg:                                            ; preds = %.lr.ph151.i230.i.i.i
  %i.acu = mul i16 %.sroa.085.4148.i233.i.i.i, 10
  %i.acv = add nsw i64 %.sroa.26.4149.i232.i.i.i, -1 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.sroa.0.4150.i231.i.i.i, i64 1
  %i.acx = trunc nuw nsw i32 %i.acs to i16
  %i.acy = add i16 %i.acu, %i.acx                 ; 2 uses
  %.not106.i234.i.i.i = icmp eq i64 %i.acv, 0
  br i1 %.not106.i234.i.i.i, label %.loopexit.i209.i.i.i, label %.lr.ph151.i230.i.i.i

_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit237.i.i.i: ; preds = %.loopexit113.sink.split.i211.i.i.i, %.loopexit.i209.i.i.i
  %.sroa.12.0.insert.insert.i201.i.i.i = phi i32 [ %i.abs, %.loopexit113.sink.split.i211.i.i.i ], [ %i.abb, %.loopexit.i209.i.i.i ] ; 2 uses
  %i.acz = trunc i32 %.sroa.12.0.insert.insert.i164.i.i.i to i1
  %i.ada = trunc i32 %.sroa.12.0.insert.insert.i201.i.i.i to i1
  %or.cond73.i.i.i = select i1 %i.acz, i1 true, i1 %i.ada
  br i1 %or.cond73.i.i.i, label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, label %bb.fh

bb.fh:                                            ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit237.i.i.i
  %.sroa.559.0.extract.shift.i.i.i = lshr i32 %.sroa.12.0.insert.insert.i201.i.i.i, 16
  %.sroa.559.0.extract.trunc.i.i.i = trunc nuw i32 %.sroa.559.0.extract.shift.i.i.i to i16
  %i.adb = icmp sgt i16 %.sroa.556.0.extract.trunc.i.i.i, %.sroa.559.0.extract.trunc.i.i.i
  %..i114.i.i = select i1 %i.adb, i64 11, i64 -1
  br label %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i

bb.fi:                                            ; preds = %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCslwwPJGKhBTm_4onig5RegexNtBJ_5ErrorE6expectCs2zCsf9UsIrc_7uu_expr.exit.i.i.i
  %.sroa.0179.0.i.i = phi i64 [ %.sink.i113.i.i, %_RNvMsn_NtCs6JMX4GRUq9U_4core3nums27from_ascii_bytes_radix_impl.exit163.thread.thread.i.i.i ], [ 11, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtCslwwPJGKhBTm_4onig5RegexNtBJ_5ErrorE6expectCs2zCsf9UsIrc_7uu_expr.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !775
  call void @_RNvXs5_CslwwPJGKhBTm_4onigNtB5_5RegexNtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.al) #24, !noalias !775
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !775
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %.val.i238.i.i.i = load i64, ptr %i.am, align 8, !range !40, !alias.scope !830, !noalias !775, !noundef !4 ; 2 uses
  %i.adc = icmp eq i64 %.val.i238.i.i.i, 0
  br i1 %i.adc, label %_RINvNtCs2zCsf9UsIrc_7uu_expr11syntax_tree23verify_range_quantifierINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekable8PeekableNtNtNtB1b_3str4iter5CharsEEB4_.exit.i.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.ph, i64 noundef %.val.i238.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !833
  br label %_RINvNtCs2zCsf9UsIrc_7uu_expr11syntax_tree23verify_range_quantifierINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekable8PeekableNtNtNtB1b_3str4iter5CharsEEB4_.exit.i.i

_RINvNtCs2zCsf9UsIrc_7uu_expr11syntax_tree23verify_range_quantifierINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekable8PeekableNtNtNtB1b_3str4iter5CharsEEB4_.exit.i.i: ; preds = %bb.fj, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !775
  %.not71.i.i = icmp eq i64 %.sroa.0179.0.i.i, -1
  br i1 %.not71.i.i, label %bb.fl, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtB5_3str4iter5CharsE4peek0ECs2zCsf9UsIrc_7uu_expr.exit109.i.i

bb.fk:                                            ; preds = %bb.bl
  %.not.i115.i.i = icmp eq i64 %i.gc, 0
  br i1 %.not.i115.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs2zCsf9UsIrc_7uu_expr.exit.thread.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs2zCsf9UsIrc_7uu_expr.exit.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs2zCsf9UsIrc_7uu_expr.exit.i.i: ; preds = %bb.fk
  %i.add = getelementptr i8, ptr %i.gb, i64 %i.gc
  %i.ade = getelementptr i8, ptr %i.add, i64 -1
  %rhsc.i.i = load i8, ptr %i.ade, align 1, !noalias !662
  %i.adf = icmp eq i8 %rhsc.i.i, 92
  br i1 %i.adf, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String3pop.exit.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs2zCsf9UsIrc_7uu_expr.exit.thread.i.i

bb.fl:                                            ; preds = %_RINvNtCs2zCsf9UsIrc_7uu_expr11syntax_tree23verify_range_quantifierINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekable8PeekableNtNtNtB1b_3str4iter5CharsEEB4_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.adg = load i64, ptr %.sroa.546.0..sroa_idx.i.i, align 8, !alias.scope !834, !noalias !662, !noundef !4 ; 6 uses
  %i.adh = icmp sgt i64 %i.adg, -1
  call void @llvm.assume(i1 %i.adh)
end_hunk_1
