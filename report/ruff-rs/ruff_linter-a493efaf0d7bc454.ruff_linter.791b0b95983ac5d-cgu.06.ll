Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.06?download=true
inline.NumInlined: 7974
inline.NumDeleted: 2408
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze9statement9statement:bb.a
  br i1 %.not44.i, label %bb.pf, label %bb.pd

bb.pc:                                            ; preds = %bb.oz
  br i1 %.not45.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i, label %bb.pi

bb.pd:                                            ; preds = %bb.pb
  %i.bcj = load i32, ptr %i.bcf, align 8, !range !11, !noalias !6496, !noundef !5
  %i.bck = icmp eq i32 %i.bcj, 22
  br i1 %i.bck, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bcf, i64 16
  %i.bcm = load i8, ptr %i.bcl, align 8, !range !15, !noalias !6496, !noundef !5
  %i.bcn = trunc nuw i8 %i.bcm to i1
  br i1 %i.bcn, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i, label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd, %bb.pb
  br i1 %.not45.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variance.exit, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.bco = load i32, ptr %i.bcg, align 8, !range !11, !noalias !6496, !noundef !5
  %i.bcp = icmp eq i32 %i.bco, 22
  br i1 %i.bcp, label %bb.ph, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variance.exit

bb.ph:                                            ; preds = %bb.pg
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16
  %i.bcr = load i8, ptr %i.bcq, align 8, !range !15, !noalias !6496, !noundef !5
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.i

bb.pi:                                            ; preds = %bb.pc
  %i.bcs = load i32, ptr %i.bcg, align 8, !range !11, !noalias !6496, !noundef !5
  %i.bct = icmp eq i32 %i.bcs, 22
  br i1 %i.bct, label %bb.pj, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i

bb.pj:                                            ; preds = %bb.pi
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16
  %i.bcv = load i8, ptr %i.bcu, align 8, !range !15, !noalias !6496, !noundef !5
  %i.bcw = xor i8 %i.bcv, 1
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.i

bb.pk:                                            ; preds = %bb.pa
  %i.bcx = load i32, ptr %i.bcf, align 8, !range !11, !noalias !6496, !noundef !5
  %i.bcy = icmp eq i32 %i.bcx, 22
  br i1 %i.bcy, label %bb.pl, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i

bb.pl:                                            ; preds = %bb.pk
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcf, i64 16
  %i.bda = load i8, ptr %i.bcz, align 8, !range !15, !noalias !6496, !noundef !5
  %i.bdb = xor i8 %i.bda, 1
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.i: ; preds = %bb.pl, %bb.pj, %bb.ph
  %.sroa.08.0.i.i = phi i8 [ %i.bcr, %bb.ph ], [ %i.bdb, %bb.pl ], [ %i.bcw, %bb.pj ]
  %i.bdc = trunc nuw i8 %.sroa.08.0.i.i to i1
  br i1 %i.bdc, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variance.exit

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i: ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.i, %bb.pk, %bb.pi, %bb.pe, %bb.pc, %bb.pa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.bdd = load ptr, ptr %i.bca, align 8, !nonnull !5, !noundef !5
  call void @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel22resolve_qualified_name(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bbr, ptr noundef nonnull align 8 %i.bdd)
  %i.bde = load i64, ptr %i.at, align 8, !range !26, !noundef !5
  %.not46.i = icmp eq i64 %i.bde, 2
  br i1 %.not46.i, label %bb.px, label %bb.pm

bb.pm:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.an, ptr noundef nonnull align 8 dereferenceable(144) %i.at, i64 144, i1 false)
  %i.bdf = invoke noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27match_typing_qualified_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bbr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 9)
          to label %bb.po unwind label %bb.pn

bb.pn:                                            ; preds = %bb.pp, %bb.pm
  %i.bdg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.an) #34
          to label %common.resume unwind label %bb.pw

bb.po:                                            ; preds = %bb.pm
  br i1 %i.bdf, label %bb.pr, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.bdh = invoke noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel27match_typing_qualified_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.bbr, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 7)
          to label %bb.pq unwind label %bb.pn

bb.pq:                                            ; preds = %bb.pp
  %..i.i = select i1 %i.bdh, i8 0, i8 2
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pq, %bb.po
  %.sroa.0.0.i.i665 = phi i8 [ %..i.i, %bb.pq ], [ 1, %bb.po ] ; 2 uses
  %i.bdi = load i64, ptr %i.an, align 8, !range !7, !alias.scope !6497, !noundef !5
  %i.bdj = icmp eq i64 %i.bdi, 0
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  br i1 %i.bdj, label %bb.ps, label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.bdk)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variances0_0Bb_.exit.i

bb.pt:                                            ; preds = %bb.pr
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.pu

bb.pu:                                            ; preds = %bb.pt
  %i.bdl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdk)
          to label %common.resume unwind label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.bdm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.pt
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bdk)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variances0_0Bb_.exit.i

bb.pw:                                            ; preds = %bb.pn
  %i.bdn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variances0_0Bb_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %.not47.i = icmp eq i8 %.sroa.0.0.i.i665, 2
  br i1 %.not47.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variance.exit, label %bb.py

bb.px:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8mismatch.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variance.exit

bb.py:                                            ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variances0_0Bb_.exit.i
  br i1 %.not44.i, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.bdo = load i32, ptr %i.bcf, align 8, !range !11, !noundef !5
  %i.bdp = icmp eq i32 %i.bdo, 22
  br i1 %i.bdp, label %bb.qb, label %.thread34.i.i

bb.qa:                                            ; preds = %bb.qb, %bb.py
  %.sroa.06.0.i.i = phi i8 [ 2, %bb.py ], [ %i.bdr, %bb.qb ] ; 4 uses
  br i1 %.not45.i, label %.thread27.i.i, label %bb.qc

.thread34.i.i:                                    ; preds = %bb.pz
  br i1 %.not45.i, label %.thread51.i.i, label %.thread42.i.i

bb.qb:                                            ; preds = %bb.pz
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bcf, i64 16
  %i.bdr = load i8, ptr %i.bdq, align 8, !range !15, !noundef !5
  br label %bb.qa

bb.qc:                                            ; preds = %bb.qa
  %i.bds = load i32, ptr %i.bcg, align 8, !range !11, !noundef !5
  %i.bdt = icmp eq i32 %i.bds, 22
  br i1 %i.bdt, label %bb.qd, label %.thread.i.i

.thread42.i.i:                                    ; preds = %.thread34.i.i
  %i.bdu = load i32, ptr %i.bcg, align 8, !range !11, !noundef !5
  %i.bdv = icmp eq i32 %i.bdu, 22
  br i1 %i.bdv, label %.thread22.thread56.i.i, label %.thread51.i.i

.thread22.thread56.i.i:                           ; preds = %.thread42.i.i
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16
  %i.bdx = load i8, ptr %i.bdw, align 8, !range !15, !noundef !5
  br label %.thread51.i.i

bb.qd:                                            ; preds = %bb.qc
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bcg, i64 16
  %i.bdz = load i8, ptr %i.bdy, align 8, !range !15, !noundef !5 ; 2 uses
  %.not16.i.i = icmp eq i8 %.sroa.06.0.i.i, 2
  br i1 %.not16.i.i, label %.thread51.i.i, label %.thread22.i.i

.thread27.i.i:                                    ; preds = %bb.qa
  switch i8 %.sroa.06.0.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.thread.i [
    i8 2, label %.thread51.i.i
    i8 0, label %.thread51.i.i
  ]

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.thread.i: ; preds = %.thread27.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bea = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bcd, i64 noundef %i.bce, ptr noalias noundef nonnull readonly captures(address, read_provenance) @841, i64 noundef 3) ; 2 uses
  %i.beb = extractvalue { ptr, i64 } %i.bea, 0
  %i.bec = extractvalue { ptr, i64 } %i.bea, 1
  %i.bed = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.beb, i64 noundef %i.bec, ptr noalias noundef nonnull readonly captures(address, read_provenance) @842, i64 noundef 7) ; 2 uses
  %i.bee = extractvalue { ptr, i64 } %i.bed, 0
  %i.bef = extractvalue { ptr, i64 } %i.bed, 1
  store ptr %i.bee, ptr %i.as, align 8
  %i.beg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.bef, ptr %i.beg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  br label %.split.i

.thread.i.i:                                      ; preds = %bb.qc
  %.not1619.i.i = icmp eq i8 %.sroa.06.0.i.i, 2
  br i1 %.not1619.i.i, label %.thread51.i.i, label %.thread22.i.i

.thread51.i.i:                                    ; preds = %.thread22.i.i, %.thread.i.i, %.thread27.i.i, %.thread27.i.i, %bb.qd, %.thread22.thread56.i.i, %.thread42.i.i, %.thread34.i.i
  %.sroa.09.021.i.i = phi i8 [ 0, %.thread.i.i ], [ %i.bdx, %.thread22.thread56.i.i ], [ %.sroa.09.02025.i.i, %.thread22.i.i ], [ %i.bdz, %bb.qd ], [ 0, %.thread27.i.i ], [ 0, %.thread34.i.i ], [ 0, %.thread42.i.i ], [ 0, %.thread27.i.i ]
  %..i54.i = xor i8 %.sroa.09.021.i.i, 3
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.i

.thread22.i.i:                                    ; preds = %.thread.i.i, %bb.qd
  %.sroa.09.02025.i.i = phi i8 [ 0, %.thread.i.i ], [ %i.bdz, %bb.qd ] ; 2 uses
  %i.beh = trunc nuw i8 %.sroa.06.0.i.i to i1
  br i1 %i.beh, label %bb.qe, label %.thread51.i.i

bb.qe:                                            ; preds = %.thread22.i.i
  %spec.select.i.i = xor i8 %.sroa.09.02025.i.i, 1
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.i: ; preds = %bb.qe, %.thread51.i.i
  %.sroa.05.0.i.i = phi i8 [ %spec.select.i.i, %bb.qe ], [ %..i54.i, %.thread51.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.bei = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bcd, i64 noundef %i.bce, ptr noalias noundef nonnull readonly captures(address, read_provenance) @841, i64 noundef 3) ; 2 uses
  %i.bej = extractvalue { ptr, i64 } %i.bei, 0
  %i.bek = extractvalue { ptr, i64 } %i.bei, 1
  %i.bel = call { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre16trim_end_matchesReECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bej, i64 noundef %i.bek, ptr noalias noundef nonnull readonly captures(address, read_provenance) @842, i64 noundef 7) ; 2 uses
  %i.bem = extractvalue { ptr, i64 } %i.bel, 0    ; 2 uses
  %i.ben = extractvalue { ptr, i64 } %i.bel, 1    ; 6 uses
  store ptr %i.bem, ptr %i.as, align 8
  %i.beo = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %i.ben, ptr %i.beo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  switch i8 %.sroa.05.0.i.i, label %default.unreachable [
    i8 0, label %bb.qf
    i8 1, label %.split.i
    i8 2, label %.split39.i
    i8 3, label %bb.qg
  ]

bb.qf:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance28type_name_incorrect_variance.exit

.split.i:                                         ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.i, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr %i.as, ptr %i.aq, align 8
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.424.0..sroa_idx.i, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull @843, ptr noundef nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.qh

.split39.i:                                       ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr %i.as, ptr %i.ap, align 8
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.420.0..sroa_idx.i, align 8
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noundef nonnull @844, ptr noundef nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.qh

bb.qg:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance8variance.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, i64 noundef %i.ben, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bep = load i64, ptr %i.am, align 8, !range !7, !noundef !5
  %i.beq = trunc nuw i64 %i.bep to i1
  %i.ber = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.bes = load i64, ptr %i.ber, align 8, !range !8, !noundef !5 ; 3 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  br i1 %i.beq, label %bb.qi, label %bb.qj, !prof !9

bb.qh:                                            ; preds = %bb.qk, %.split39.i, %.split.i
  %.sroa.05.0.i63.i = phi i8 [ 3, %bb.qk ], [ 2, %.split39.i ], [ 1, %.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.al, i64 noundef %i.bce, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.qm unwind label %bb.qz

bb.qi:                                            ; preds = %bb.qg
  %i.beu = load i64, ptr %i.bet, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bes, i64 %i.beu) #35
  unreachable

bb.qj:                                            ; preds = %bb.qg
  %i.bev = load ptr, ptr %i.bet, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bew = icmp ule i64 %i.ben, %i.bes
  call void @llvm.assume(i1 %i.bew)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.not48.i = icmp eq i64 %i.ben, 0
  br i1 %.not48.i, label %bb.qk, label %bb.ql

bb.qk:                                            ; preds = %bb.ql, %bb.qj
  store i64 %i.bes, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx.i666 = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.bev, ptr %.sroa.4.0..sroa_idx.i666, align 8
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.ben, ptr %.sroa.616.0..sroa_idx.i, align 8
  br label %bb.qh

bb.ql:                                            ; preds = %bb.qj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bev, ptr nonnull align 1 %i.bem, i64 %i.ben, i1 false)
  br label %bb.qk

bb.qm:                                            ; preds = %bb.qh
  %i.bex = load i64, ptr %i.al, align 8, !range !7, !noundef !5
  %i.bey = trunc nuw i64 %i.bex to i1
  %i.bez = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.bfa = load i64, ptr %i.bez, align 8, !range !8, !noundef !5 ; 3 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  br i1 %i.bey, label %bb.qn, label %bb.qo, !prof !9

bb.qn:                                            ; preds = %bb.qm
  %i.bfc = load i64, ptr %i.bfb, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bfa, i64 %i.bfc) #35
          to label %bb.qy unwind label %bb.qz

bb.qo:                                            ; preds = %bb.qm
  %i.bfd = load ptr, ptr %i.bfb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bfe = icmp ule i64 %i.bce, %i.bfa
  call void @llvm.assume(i1 %i.bfe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.not49.i = icmp eq i64 %i.bce, 0
  br i1 %.not49.i, label %switch.lookup2048, label %bb.qp

switch.lookup2048:                                ; preds = %bb.qp, %bb.qo
  %i.bff = load ptr, ptr %i.bca, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bfg = load i32, ptr %i.bff, align 8, !range !11, !noundef !5 ; 2 uses
  %i.bfh = zext nneg i32 %i.bfg to i64
  %switch.gep2049 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr.561, i64 %i.bfh
  %switch.load2050 = load i8, ptr %switch.gep2049, align 1
  %switch.ext2051 = zext i8 %switch.load2050 to i64
  %i.bfi = zext nneg i32 %i.bfg to i64
  %switch.gep2052 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7CheckerNtNtCskLngH8kgpZI_15ruff_python_ast7visitor7Visitor10visit_expr.562, i64 %i.bfi
  %switch.load2053 = load i8, ptr %switch.gep2052, align 1
  %switch.ext2054 = zext i8 %switch.load2053 to i64
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bff, i64 %switch.ext2051
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bff, i64 %switch.ext2054
  %.sroa.0.0.i55.i = load i32, ptr %i.bfj, align 4, !noundef !5
  %.sroa.34.0.i.i669 = load i32, ptr %i.bfk, align 4, !noundef !5
  %i.bfl = load ptr, ptr %i.fa, align 8, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !6499
  store i64 %i.bfa, ptr %i.ak, align 8, !noalias !6498
  %.sroa.4.0..sroa_idx73.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.bfd, ptr %.sroa.4.0..sroa_idx73.i, align 8, !noalias !6498
  %.sroa.5.0..sroa_idx.i670 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %i.bce, ptr %.sroa.5.0..sroa_idx.i670, align 8, !noalias !6498
  %.sroa.6.0..sroa_idx.i671 = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i671, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 2 uses
  store i8 %.sroa.0.0.i.i665, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !6498
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 49 ; 2 uses
  store i8 %.sroa.05.0.i63.i, ptr %.sroa.8.0..sroa_idx.i, align 1, !noalias !6498
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 32
  %i.bfn = invoke noundef nonnull align 8 ptr @_RINvMNtNtCs4NRVxsYgnAr_4core4cell4onceINtB3_8OnceCellNtCs9BeaGo73rC4_16ruff_source_file10SourceFileE15get_or_try_initNCINvB2_11get_or_initNCNvMs9_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB2k_14LazySourceFile3get0E0zEB2o_(ptr noundef nonnull align 8 %i.bfm, ptr noundef nonnull align 8 %i.bfl)
          to label %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i.i unwind label %bb.qw, !noalias !6499

bb.qp:                                            ; preds = %bb.qo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bfd, ptr nonnull align 1 %i.bcd, i64 %i.bce, i1 false)
  br label %switch.lookup2048

_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i.i: ; preds = %switch.lookup2048
  %.val.i.i672 = load ptr, ptr %i.bfn, align 8, !noalias !6499 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !6500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !6501
  store ptr %.sroa.7.0..sroa_idx.i, ptr %i.ag, align 8, !noalias !6501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !6501
  store ptr %i.ak, ptr %i.af, align 8, !noalias !6501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !6501
  store ptr %.sroa.8.0..sroa_idx.i, ptr %i.ae, align 8, !noalias !6501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !6501
  store ptr %.sroa.6.0..sroa_idx.i671, ptr %i.ad, align 8, !noalias !6501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !6501
  store ptr %i.ag, ptr %i.ac, align 8, !noalias !6501
  %.sroa.42.0..sroa_idx.i.i.i.i673 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance7VarKindNtB6_7Display3fmtBG_, ptr %.sroa.42.0..sroa_idx.i.i.i.i673, align 8, !noalias !6501
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.af, ptr %i.bfo, align 8, !noalias !6501
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !6501
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ae, ptr %i.bfp, align 8, !noalias !6501
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance11VarVarianceNtB6_7Display3fmtBG_, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !6501
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %i.ad, ptr %i.bfq, align 8, !noalias !6501
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !6501
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull @968, ptr noundef nonnull %i.ac)
          to label %bb.qq unwind label %.thread.i.i.i, !noalias !6499

.thread.i.i.i:                                    ; preds = %bb.qs, %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i.i
  %i.bfr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules28type_name_incorrect_variance25TypeNameIncorrectVarianceEBL_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ak) #34
          to label %common.resume unwind label %bb.qu, !noalias !6499

bb.qq:                                            ; preds = %_RNvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_11LintContext11source_file.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !6501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !6501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !6501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !6501
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !6501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !6500
  store i64 -1, ptr %i.ai, align 8, !alias.scope !6502, !noalias !6500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !6500
  store i64 -1, ptr %i.ah, align 8, !noalias !6500
end_hunk_0
