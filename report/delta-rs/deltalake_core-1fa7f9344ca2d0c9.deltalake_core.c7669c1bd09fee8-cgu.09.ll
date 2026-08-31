Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.09?download=true
inline.NumInlined: 12053
inline.NumDeleted: 5555
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RNvXsg_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a

bb.ci:                                            ; preds = %bb.ch
  %i.ou = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ow = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ov, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ou) #46
  br i1 %i.ow, label %bb.cj, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cj:                                            ; preds = %bb.ci
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.oy = load ptr, ptr %i.ox, align 16, !alias.scope !24075, !noalias !24078, !nonnull !4, !noundef !4 ; 6 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.pa = load ptr, ptr %i.oz, align 16, !alias.scope !24078, !noalias !24075, !nonnull !4, !noundef !4 ; 6 uses
  %i.pb = icmp eq ptr %i.oy, %i.pa
  br i1 %i.pb, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24083)
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 64
  %i.pd = load ptr, ptr %i.pc, align 8, !alias.scope !24080, !noalias !24085, !nonnull !4, !noundef !4 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 64
  %i.pf = load ptr, ptr %i.pe, align 8, !alias.scope !24083, !noalias !24086, !nonnull !4, !noundef !4 ; 4 uses
  %i.pg = icmp eq ptr %i.pd, %i.pf
  br i1 %i.pg, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24090)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 24
  %i.pi = load i64, ptr %i.ph, align 8, !alias.scope !24087, !noalias !24092, !noundef !4 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.pk = load i64, ptr %i.pj, align 8, !alias.scope !24090, !noalias !24093, !noundef !4
  %i.pl = icmp eq i64 %i.pi, %i.pk
  br i1 %i.pl, label %bb.cm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cm:                                            ; preds = %bb.cl
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  %i.po = load ptr, ptr %i.pm, align 8, !alias.scope !24090, !noalias !24093, !nonnull !4, !noundef !4
  %i.pp = load ptr, ptr %i.pn, align 8, !alias.scope !24087, !noalias !24092, !nonnull !4, !noundef !4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  %i.ps = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.pq, ptr noundef nonnull %i.pr, i64 noundef %i.pi), !noalias !24094
  br i1 %i.ps, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20: ; preds = %bb.cm
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pd, i64 32
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.pv = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pu), !noalias !24095
  br i1 %i.pv, label %bb.cn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cn:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i20, %bb.ck
  %i.pw = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !24080, !noalias !24085, !noundef !4 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pz = load i64, ptr %i.py, align 8, !alias.scope !24083, !noalias !24086, !noundef !4
  %i.qa = icmp eq i64 %i.px, %i.pz
  br i1 %i.qa, label %bb.co, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.co:                                            ; preds = %bb.cn
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.qc = load ptr, ptr %i.qb, align 8, !alias.scope !24083, !noalias !24086, !nonnull !4, !noundef !4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !alias.scope !24080, !noalias !24085, !nonnull !4, !noundef !4
  %i.qf = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.qe, ptr noundef nonnull %i.qc, i64 noundef %i.px), !noalias !24095
  br i1 %i.qf, label %bb.cp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cp:                                            ; preds = %bb.co
  %i.qg = getelementptr inbounds nuw i8, ptr %i.oy, i64 56
  %i.qh = load i64, ptr %i.qg, align 8, !alias.scope !24080, !noalias !24085, !noundef !4 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pa, i64 56
  %i.qj = load i64, ptr %i.qi, align 8, !alias.scope !24083, !noalias !24086, !noundef !4
  %i.qk = icmp eq i64 %i.qh, %i.qj
  br i1 %i.qk, label %bb.cq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cq:                                            ; preds = %bb.cp
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pa, i64 48
  %i.qm = load ptr, ptr %i.ql, align 8, !alias.scope !24083, !noalias !24086, !nonnull !4, !noundef !4
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oy, i64 48
  %i.qo = load ptr, ptr %i.qn, align 8, !alias.scope !24080, !noalias !24085, !nonnull !4, !noundef !4
  %i.qp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.qo, ptr noundef nonnull %i.qm, i64 noundef %i.qh), !noalias !24095
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cr:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24096)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24099)
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.qr = load i8, ptr %i.qq, align 8, !range !3, !alias.scope !24096, !noalias !24099, !noundef !4
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.qt = load i8, ptr %i.qs, align 8, !range !3, !alias.scope !24099, !noalias !24096, !noundef !4
  %i.qu = icmp eq i8 %i.qr, %i.qt
  br i1 %i.qu, label %bb.cs, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.qx = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCsjhHCjzi9uUI_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.qw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.qv) #46
  br i1 %i.qx, label %bb.ct, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ct:                                            ; preds = %bb.cs
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.qz = load ptr, ptr %i.qy, align 16, !alias.scope !24096, !noalias !24099, !nonnull !4, !noundef !4 ; 6 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rb = load ptr, ptr %i.ra, align 16, !alias.scope !24099, !noalias !24096, !nonnull !4, !noundef !4 ; 6 uses
  %i.rc = icmp eq ptr %i.qz, %i.rb
  br i1 %i.rc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24104)
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 64
  %i.re = load ptr, ptr %i.rd, align 8, !alias.scope !24101, !noalias !24106, !nonnull !4, !noundef !4 ; 4 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 64
  %i.rg = load ptr, ptr %i.rf, align 8, !alias.scope !24104, !noalias !24107, !nonnull !4, !noundef !4 ; 4 uses
  %i.rh = icmp eq ptr %i.re, %i.rg
  br i1 %i.rh, label %bb.cx, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24111)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rj = load i64, ptr %i.ri, align 8, !alias.scope !24108, !noalias !24113, !noundef !4 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rg, i64 24
  %i.rl = load i64, ptr %i.rk, align 8, !alias.scope !24111, !noalias !24114, !noundef !4
  %i.rm = icmp eq i64 %i.rj, %i.rl
  br i1 %i.rm, label %bb.cw, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %bb.cv
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rg, i64 16
  %i.ro = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rp = load ptr, ptr %i.rn, align 8, !alias.scope !24111, !noalias !24114, !nonnull !4, !noundef !4
  %i.rq = load ptr, ptr %i.ro, align 8, !alias.scope !24108, !noalias !24113, !nonnull !4, !noundef !4
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rt = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.rr, ptr noundef nonnull %i.rs, i64 noundef %i.rj), !noalias !24115
  br i1 %i.rt, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i23, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i23: ; preds = %bb.cw
  %i.ru = getelementptr inbounds nuw i8, ptr %i.re, i64 32
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rg, i64 32
  %i.rw = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ru, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.rv), !noalias !24116
  br i1 %i.rw, label %bb.cx, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cx:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i23, %bb.cu
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qz, i64 32
  %i.ry = load i64, ptr %i.rx, align 8, !alias.scope !24101, !noalias !24106, !noundef !4 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rb, i64 32
  %i.sa = load i64, ptr %i.rz, align 8, !alias.scope !24104, !noalias !24107, !noundef !4
  %i.sb = icmp eq i64 %i.ry, %i.sa
  br i1 %i.sb, label %bb.cy, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cy:                                            ; preds = %bb.cx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !alias.scope !24104, !noalias !24107, !nonnull !4, !noundef !4
  %i.se = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.sf = load ptr, ptr %i.se, align 8, !alias.scope !24101, !noalias !24106, !nonnull !4, !noundef !4
  %i.sg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.sf, ptr noundef nonnull %i.sd, i64 noundef %i.ry), !noalias !24116
  br i1 %i.sg, label %bb.cz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.cz:                                            ; preds = %bb.cy
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qz, i64 56
  %i.si = load i64, ptr %i.sh, align 8, !alias.scope !24101, !noalias !24106, !noundef !4 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.rb, i64 56
  %i.sk = load i64, ptr %i.sj, align 8, !alias.scope !24104, !noalias !24107, !noundef !4
  %i.sl = icmp eq i64 %i.si, %i.sk
  br i1 %i.sl, label %bb.da, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.da:                                            ; preds = %bb.cz
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rb, i64 48
  %i.sn = load ptr, ptr %i.sm, align 8, !alias.scope !24104, !noalias !24107, !nonnull !4, !noundef !4
  %i.so = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  %i.sp = load ptr, ptr %i.so, align 8, !alias.scope !24101, !noalias !24106, !nonnull !4, !noundef !4
  %i.sq = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.sp, ptr noundef nonnull %i.sn, i64 noundef %i.si), !noalias !24116
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.db:                                            ; preds = %bb.b
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24120)
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.su = load i8, ptr %i.st, align 16, !range !3, !alias.scope !24117, !noalias !24120, !noundef !4
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.sw = load i8, ptr %i.sv, align 16, !range !3, !alias.scope !24120, !noalias !24117, !noundef !4
  %i.sx = icmp eq i8 %i.su, %i.sw
  br i1 %i.sx, label %bb.dc, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %bb.db
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.sz = load i8, ptr %i.sy, align 1, !range !3, !alias.scope !24117, !noalias !24120, !noundef !4
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.tb = load i8, ptr %i.ta, align 1, !range !3, !alias.scope !24120, !noalias !24117, !noundef !4
  %i.tc = icmp eq i8 %i.sz, %i.tb
  br i1 %i.tc, label %bb.dd, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.dc
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24125)
  %i.td = load ptr, ptr %i.sr, align 8, !alias.scope !24127, !noalias !24128, !noundef !4 ; 2 uses
  %i.te = icmp ne ptr %i.td, null                 ; 2 uses
  %i.tf = load ptr, ptr %i.ss, align 8, !alias.scope !24128, !noalias !24127, !noundef !4 ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null                 ; 3 uses
  %not..i.i = xor i1 %i.tg, true
  %i.th = xor i1 %i.te, %i.tg
  br i1 %i.th, label %bb.de, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.de:                                            ; preds = %bb.dd
  br i1 %i.te, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  tail call void @llvm.assume(i1 %not..i.i)
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tj = load i64, ptr %i.ti, align 16, !alias.scope !24127, !noalias !24128, !noundef !4 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.tl = load i64, ptr %i.tk, align 16, !alias.scope !24128, !noalias !24127, !noundef !4
  %i.tm = icmp eq i64 %i.tj, %i.tl
  br i1 %i.tm, label %bb.dh, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dg:                                            ; preds = %bb.de
  tail call void @llvm.assume(i1 %i.tg)
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.to = load i64, ptr %i.tn, align 8, !alias.scope !24127, !noalias !24128, !noundef !4 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.tq = load i64, ptr %i.tp, align 8, !alias.scope !24128, !noalias !24127, !noundef !4
  %i.tr = icmp eq i64 %i.to, %i.tq
  br i1 %i.tr, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dh:                                            ; preds = %bb.df
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tf, i64 16
  %i.tt = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  %bcmp8.i.i = tail call i32 @bcmp(ptr nonnull %i.tt, ptr nonnull %i.ts, i64 %i.tj), !noalias !24129
  %i.tu = icmp eq i32 %bcmp8.i.i, 0
  br i1 %i.tu, label %bb.di, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.di:                                            ; preds = %bb.dh
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.tw = load i64, ptr %i.tv, align 16, !alias.scope !24127, !noalias !24128, !noundef !4 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ty = load i64, ptr %i.tx, align 16, !alias.scope !24128, !noalias !24127, !noundef !4
  %i.tz = icmp eq i64 %i.tw, %i.ty
  br i1 %i.tz, label %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.di, %bb.dg
  %.sink.i.i = phi i64 [ 8, %bb.dg ], [ 16, %bb.di ] ; 2 uses
  %.sink14.i.i = phi i64 [ %i.to, %bb.dg ], [ %i.tw, %bb.di ]
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ss, i64 %.sink.i.i
  %i.ub = load ptr, ptr %i.ua, align 8, !alias.scope !24128, !noalias !24127, !nonnull !4, !noundef !4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.sink.i.i
  %i.ue = load ptr, ptr %i.ud, align 8, !alias.scope !24127, !noalias !24128, !nonnull !4, !noundef !4
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 16
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.uf, ptr nonnull %i.uc, i64 %.sink14.i.i), !noalias !24129
  %i.ug = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.ug, label %bb.dj, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dj:                                            ; preds = %_RNvXs3_NtCsjhHCjzi9uUI_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ui = load ptr, ptr %i.uh, align 8, !alias.scope !24117, !noalias !24120, !nonnull !4, !noundef !4 ; 6 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.uk = load ptr, ptr %i.uj, align 8, !alias.scope !24120, !noalias !24117, !nonnull !4, !noundef !4 ; 6 uses
  %i.ul = icmp eq ptr %i.ui, %i.uk
  br i1 %i.ul, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24133)
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 64
  %i.un = load ptr, ptr %i.um, align 8, !alias.scope !24130, !noalias !24135, !nonnull !4, !noundef !4 ; 4 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 64
  %i.up = load ptr, ptr %i.uo, align 8, !alias.scope !24133, !noalias !24136, !nonnull !4, !noundef !4 ; 4 uses
  %i.uq = icmp eq ptr %i.un, %i.up
  br i1 %i.uq, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24140)
  %i.ur = getelementptr inbounds nuw i8, ptr %i.un, i64 24
  %i.us = load i64, ptr %i.ur, align 8, !alias.scope !24137, !noalias !24142, !noundef !4 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.uu = load i64, ptr %i.ut, align 8, !alias.scope !24140, !noalias !24143, !noundef !4
  %i.uv = icmp eq i64 %i.us, %i.uu
  br i1 %i.uv, label %bb.dm, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dm:                                            ; preds = %bb.dl
  %i.uw = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %i.un, i64 16
  %i.uy = load ptr, ptr %i.uw, align 8, !alias.scope !24140, !noalias !24143, !nonnull !4, !noundef !4
  %i.uz = load ptr, ptr %i.ux, align 8, !alias.scope !24137, !noalias !24142, !nonnull !4, !noundef !4
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 16
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  %i.vc = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.va, ptr noundef nonnull %i.vb, i64 noundef %i.us), !noalias !24144
  br i1 %i.vc, label %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i26, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i26: ; preds = %bb.dm
  %i.vd = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.ve = getelementptr inbounds nuw i8, ptr %i.up, i64 32
  %i.vf = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB13_ENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ve), !noalias !24145
  br i1 %i.vf, label %bb.dn, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dn:                                            ; preds = %_RNvXse_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6SchemaNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit.i.i26, %bb.dk
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ui, i64 32
  %i.vh = load i64, ptr %i.vg, align 8, !alias.scope !24130, !noalias !24135, !noundef !4 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uk, i64 32
  %i.vj = load i64, ptr %i.vi, align 8, !alias.scope !24133, !noalias !24136, !noundef !4
  %i.vk = icmp eq i64 %i.vh, %i.vj
  br i1 %i.vk, label %bb.do, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.dn
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.vm = load ptr, ptr %i.vl, align 8, !alias.scope !24133, !noalias !24136, !nonnull !4, !noundef !4
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ui, i64 24
  %i.vo = load ptr, ptr %i.vn, align 8, !alias.scope !24130, !noalias !24135, !nonnull !4, !noundef !4
  %i.vp = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtB9_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.vo, ptr noundef nonnull %i.vm, i64 noundef %i.vh), !noalias !24145
  br i1 %i.vp, label %bb.dp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %bb.do
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ui, i64 56
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !24130, !noalias !24135, !noundef !4 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.uk, i64 56
  %i.vt = load i64, ptr %i.vs, align 8, !alias.scope !24133, !noalias !24136, !noundef !4
  %i.vu = icmp eq i64 %i.vr, %i.vt
  br i1 %i.vu, label %bb.dq, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dq:                                            ; preds = %bb.dp
  %i.vv = getelementptr inbounds nuw i8, ptr %i.uk, i64 48
  %i.vw = load ptr, ptr %i.vv, align 8, !alias.scope !24133, !noalias !24136, !nonnull !4, !noundef !4
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ui, i64 48
  %i.vy = load ptr, ptr %i.vx, align 8, !alias.scope !24130, !noalias !24135, !nonnull !4, !noundef !4
  %i.vz = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCsjhHCjzi9uUI_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.vy, ptr noundef nonnull %i.vw, i64 noundef %i.vr), !noalias !24145
  br label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dr:                                            ; preds = %bb.b
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wb = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24146)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24149)
  %i.wc = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.wd = load i8, ptr %i.wc, align 16, !range !3, !alias.scope !24146, !noalias !24149, !noundef !4
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.wf = load i8, ptr %i.we, align 16, !range !3, !alias.scope !24149, !noalias !24146, !noundef !4
  %i.wg = icmp eq i8 %i.wd, %i.wf
  br i1 %i.wg, label %bb.ds, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ds:                                            ; preds = %bb.dr
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.wi = load i8, ptr %i.wh, align 1, !range !3, !alias.scope !24146, !noalias !24149, !noundef !4
  %i.wj = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.wk = load i8, ptr %i.wj, align 1, !range !3, !alias.scope !24149, !noalias !24146, !noundef !4
  %i.wl = icmp eq i8 %i.wi, %i.wk
  br i1 %i.wl, label %bb.dt, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.ds
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.wn = load i64, ptr %i.wm, align 16, !alias.scope !24146, !noalias !24149, !noundef !4 ; 2 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.wp = load i64, ptr %i.wo, align 16, !alias.scope !24149, !noalias !24146, !noundef !4
  %i.wq = icmp eq i64 %i.wn, %i.wp
  br i1 %i.wq, label %bb.du, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %bb.dt
  %i.wr = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ws = load ptr, ptr %i.wr, align 8, !alias.scope !24149, !noalias !24146, !nonnull !4, !noundef !4
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.wu = load ptr, ptr %i.wt, align 8, !alias.scope !24146, !noalias !24149, !nonnull !4, !noundef !4
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull %i.wu, ptr nonnull %i.ws, i64 %i.wn), !noalias !24151, !inline_history !24152
  %i.wv = icmp eq i32 %bcmp.i28, 0
  br i1 %i.wv, label %bb.dv, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dv:                                            ; preds = %bb.du
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.wx = load i64, ptr %i.ww, align 8, !range !56, !alias.scope !24146, !noalias !24149, !noundef !4
  %.not.i29 = icmp eq i64 %i.wx, -9223372036854775808
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.wz = load i64, ptr %i.wy, align 8, !range !56, !alias.scope !24149, !noalias !24146, !noundef !4
  %i.xa = icmp eq i64 %i.wz, -9223372036854775808 ; 2 uses
  br i1 %.not.i29, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  br i1 %i.xa, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  br i1 %i.xa, label %bb.dz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dy:                                            ; preds = %bb.dw
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.xc = load i64, ptr %i.xb, align 8, !alias.scope !24146, !noalias !24149, !noundef !4 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.xe = load i64, ptr %i.xd, align 8, !alias.scope !24149, !noalias !24146, !noundef !4
  %i.xf = icmp eq i64 %i.xc, %i.xe
  br i1 %i.xf, label %.split, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.dy
  %i.xg = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.xh = load ptr, ptr %i.xg, align 16, !alias.scope !24149, !noalias !24146, !nonnull !4, !noundef !4
  %i.xi = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.xj = load ptr, ptr %i.xi, align 16, !alias.scope !24146, !noalias !24149, !nonnull !4, !noundef !4
  %i.xk = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %i.xj, ptr noundef nonnull %i.xh, i64 noundef %i.xc), !noalias !24151, !inline_history !24152
  br i1 %i.xk, label %bb.dz, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.dz:                                            ; preds = %.split, %bb.dx
  %i.xl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.xm = load i8, ptr %i.xl, align 16, !range !11364, !alias.scope !24146, !noalias !24149, !noundef !4
  %.not8.i = icmp eq i8 %i.xm, 41
  %i.xn = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.xo = load i8, ptr %i.xn, align 16, !range !11364, !alias.scope !24149, !noalias !24146, !noundef !4
  %i.xp = icmp eq i8 %i.xo, 41                    ; 2 uses
  br i1 %.not8.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.xp, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %.split34

bb.eb:                                            ; preds = %bb.dz
  br i1 %i.xp, label %bb.ec, label %_RNvXsn_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

.split34:                                         ; preds = %bb.ea
end_hunk_0
