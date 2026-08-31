Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_query_executor-4674f759d6ee6b99.influxdb3_query_executor.2f371c9a5b18ce51-cgu.10?download=true
inline.NumInlined: 4139
inline.NumDeleted: 1124
begin_hunk_0_@_RNvXse_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_12DdlStatementNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq:bb.a
  %i.ph = load ptr, ptr %i.pg, align 16, !alias.scope !12174, !noalias !12171, !nonnull !4, !noundef !4 ; 6 uses
  %i.pi = icmp eq ptr %i.pf, %i.ph
  br i1 %i.pi, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12179)
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 64
  %i.pk = load ptr, ptr %i.pj, align 8, !alias.scope !12176, !noalias !12181, !nonnull !4, !noundef !4 ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 64
  %i.pm = load ptr, ptr %i.pl, align 8, !alias.scope !12179, !noalias !12182, !nonnull !4, !noundef !4 ; 4 uses
  %i.pn = icmp eq ptr %i.pk, %i.pm
  br i1 %i.pn, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.po = getelementptr inbounds nuw i8, ptr %i.pk, i64 16
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12186)
  %i.pq = load ptr, ptr %i.po, align 8, !alias.scope !12183, !noalias !12188, !nonnull !4, !noundef !4 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %i.ps = load i64, ptr %i.pr, align 8, !alias.scope !12183, !noalias !12188, !noundef !4 ; 2 uses
  %i.pt = load ptr, ptr %i.pp, align 8, !alias.scope !12186, !noalias !12189, !nonnull !4, !noundef !4 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pm, i64 24
  %i.pv = load i64, ptr %i.pu, align 8, !alias.scope !12186, !noalias !12189, !noundef !4
  %i.pw = icmp eq ptr %i.pq, %i.pt
  %i.px = icmp eq i64 %i.ps, %i.pv                ; 2 uses
  %i.py = and i1 %i.pw, %i.px
  br i1 %i.py, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.px, label %bb.cq, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cq:                                            ; preds = %bb.cp
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  %i.qb = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.pz, ptr noundef nonnull %i.qa, i64 noundef %i.ps), !noalias !12190
  br i1 %i.qb, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20: ; preds = %bb.cq, %bb.co
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pm, i64 32
  %i.qe = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qd), !noalias !12191
  br i1 %i.qe, label %bb.cr, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cr:                                            ; preds = %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i20, %bb.cn
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pf, i64 32
  %i.qg = load i64, ptr %i.qf, align 8, !alias.scope !12176, !noalias !12181, !noundef !4 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  %i.qi = load i64, ptr %i.qh, align 8, !alias.scope !12179, !noalias !12182, !noundef !4
  %i.qj = icmp eq i64 %i.qg, %i.qi
  br i1 %i.qj, label %bb.cs, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cs:                                            ; preds = %bb.cr
  %i.qk = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.ql = load ptr, ptr %i.qk, align 8, !alias.scope !12179, !noalias !12182, !nonnull !4, !noundef !4
  %i.qm = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8, !alias.scope !12176, !noalias !12181, !nonnull !4, !noundef !4
  %i.qo = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtB9_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.qn, ptr noundef nonnull %i.ql, i64 noundef %i.qg), !noalias !12191
  br i1 %i.qo, label %bb.ct, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ct:                                            ; preds = %bb.cs
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pf, i64 56
  %i.qq = load i64, ptr %i.qp, align 8, !alias.scope !12176, !noalias !12181, !noundef !4 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.ph, i64 56
  %i.qs = load i64, ptr %i.qr, align 8, !alias.scope !12179, !noalias !12182, !noundef !4
  %i.qt = icmp eq i64 %i.qq, %i.qs
  br i1 %i.qt, label %bb.cu, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cu:                                            ; preds = %bb.ct
  %i.qu = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  %i.qv = load ptr, ptr %i.qu, align 8, !alias.scope !12179, !noalias !12182, !nonnull !4, !noundef !4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.pf, i64 48
  %i.qx = load ptr, ptr %i.qw, align 8, !alias.scope !12176, !noalias !12181, !nonnull !4, !noundef !4
  %i.qy = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qv, i64 noundef %i.qq), !noalias !12191
  br label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cv:                                            ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12195)
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ra = load i8, ptr %i.qz, align 8, !range !2490, !alias.scope !12192, !noalias !12195, !noundef !4
  %i.rb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.rc = load i8, ptr %i.rb, align 8, !range !2490, !alias.scope !12195, !noalias !12192, !noundef !4
  %i.rd = icmp eq i8 %i.ra, %i.rc
  br i1 %i.rd, label %bb.cw, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cw:                                            ; preds = %bb.cv
  %i.re = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.rg = tail call fastcc noundef zeroext i1 @_RNvXsg_NtCslWccy9wMl4f_17datafusion_common15table_referenceNtB5_14TableReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.rf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.re)
  br i1 %i.rg, label %bb.cx, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.cx:                                            ; preds = %bb.cw
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ri = load ptr, ptr %i.rh, align 16, !alias.scope !12192, !noalias !12195, !nonnull !4, !noundef !4 ; 6 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.rk = load ptr, ptr %i.rj, align 16, !alias.scope !12195, !noalias !12192, !nonnull !4, !noundef !4 ; 6 uses
  %i.rl = icmp eq ptr %i.ri, %i.rk
  br i1 %i.rl, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12200)
  %i.rm = getelementptr inbounds nuw i8, ptr %i.ri, i64 64
  %i.rn = load ptr, ptr %i.rm, align 8, !alias.scope !12197, !noalias !12202, !nonnull !4, !noundef !4 ; 4 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 64
  %i.rp = load ptr, ptr %i.ro, align 8, !alias.scope !12200, !noalias !12203, !nonnull !4, !noundef !4 ; 4 uses
  %i.rq = icmp eq ptr %i.rn, %i.rp
  br i1 %i.rq, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12204)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12207)
  %i.rt = load ptr, ptr %i.rr, align 8, !alias.scope !12204, !noalias !12209, !nonnull !4, !noundef !4 ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rv = load i64, ptr %i.ru, align 8, !alias.scope !12204, !noalias !12209, !noundef !4 ; 2 uses
  %i.rw = load ptr, ptr %i.rs, align 8, !alias.scope !12207, !noalias !12210, !nonnull !4, !noundef !4 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.ry = load i64, ptr %i.rx, align 8, !alias.scope !12207, !noalias !12210, !noundef !4
  %i.rz = icmp eq ptr %i.rt, %i.rw
  %i.sa = icmp eq i64 %i.rv, %i.ry                ; 2 uses
  %i.sb = and i1 %i.rz, %i.sa
  br i1 %i.sb, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %i.sa, label %bb.db, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.db:                                            ; preds = %bb.da
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  %i.se = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.sc, ptr noundef nonnull %i.sd, i64 noundef %i.rv), !noalias !12211
  br i1 %i.se, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23: ; preds = %bb.db, %bb.cz
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rn, i64 32
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rp, i64 32
  %i.sh = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.sg), !noalias !12212
  br i1 %i.sh, label %bb.dc, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dc:                                            ; preds = %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i23, %bb.cy
  %i.si = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %i.sj = load i64, ptr %i.si, align 8, !alias.scope !12197, !noalias !12202, !noundef !4 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.rk, i64 32
  %i.sl = load i64, ptr %i.sk, align 8, !alias.scope !12200, !noalias !12203, !noundef !4
  %i.sm = icmp eq i64 %i.sj, %i.sl
  br i1 %i.sm, label %bb.dd, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dd:                                            ; preds = %bb.dc
  %i.sn = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.so = load ptr, ptr %i.sn, align 8, !alias.scope !12200, !noalias !12203, !nonnull !4, !noundef !4
  %i.sp = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !alias.scope !12197, !noalias !12202, !nonnull !4, !noundef !4
  %i.sr = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtB9_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.sq, ptr noundef nonnull %i.so, i64 noundef %i.sj), !noalias !12212
  br i1 %i.sr, label %bb.de, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.de:                                            ; preds = %bb.dd
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ri, i64 56
  %i.st = load i64, ptr %i.ss, align 8, !alias.scope !12197, !noalias !12202, !noundef !4 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.rk, i64 56
  %i.sv = load i64, ptr %i.su, align 8, !alias.scope !12200, !noalias !12203, !noundef !4
  %i.sw = icmp eq i64 %i.st, %i.sv
  br i1 %i.sw, label %bb.df, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.df:                                            ; preds = %bb.de
  %i.sx = getelementptr inbounds nuw i8, ptr %i.rk, i64 48
  %i.sy = load ptr, ptr %i.sx, align 8, !alias.scope !12200, !noalias !12203, !nonnull !4, !noundef !4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.ri, i64 48
  %i.ta = load ptr, ptr %i.sz, align 8, !alias.scope !12197, !noalias !12202, !nonnull !4, !noundef !4
  %i.tb = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.ta, ptr noundef nonnull %i.sy, i64 noundef %i.st), !noalias !12212
  br label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dg:                                            ; preds = %bb.b
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12216)
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.tf = load i8, ptr %i.te, align 16, !range !2490, !alias.scope !12213, !noalias !12216, !noundef !4
  %i.tg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.th = load i8, ptr %i.tg, align 16, !range !2490, !alias.scope !12216, !noalias !12213, !noundef !4
  %i.ti = icmp eq i8 %i.tf, %i.th
  br i1 %i.ti, label %bb.dh, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dh:                                            ; preds = %bb.dg
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.tk = load i8, ptr %i.tj, align 1, !range !2490, !alias.scope !12213, !noalias !12216, !noundef !4
  %i.tl = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.tm = load i8, ptr %i.tl, align 1, !range !2490, !alias.scope !12216, !noalias !12213, !noundef !4
  %i.tn = icmp eq i8 %i.tk, %i.tm
  br i1 %i.tn, label %bb.di, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.di:                                            ; preds = %bb.dh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12221)
  %i.to = load ptr, ptr %i.tc, align 8, !alias.scope !12223, !noalias !12224, !noundef !4 ; 3 uses
  %i.tp = icmp ne ptr %i.to, null                 ; 2 uses
  %i.tq = load ptr, ptr %i.td, align 8, !alias.scope !12224, !noalias !12223, !noundef !4 ; 4 uses
  %i.tr = icmp eq ptr %i.tq, null                 ; 2 uses
  %i.ts = xor i1 %i.tp, %i.tr
  br i1 %i.ts, label %bb.dj, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dj:                                            ; preds = %bb.di
  br i1 %i.tp, label %bb.dk, label %bb.dl

.sink.split.i.i:                                  ; preds = %bb.do, %bb.dl
  %.sink.i.i = phi ptr [ %i.ug, %bb.dl ], [ %i.uu, %bb.do ]
  %.sink20.i.i = phi ptr [ %i.uc, %bb.dl ], [ %i.uq, %bb.do ]
  %.sink19.i.i = phi i64 [ %i.ue, %bb.dl ], [ %i.us, %bb.do ]
  %i.tt = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %i.tu = getelementptr inbounds nuw i8, ptr %.sink20.i.i, i64 16
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.tu, ptr nonnull %i.tt, i64 %.sink19.i.i), !noalias !12225
  %i.tv = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.tv, label %bb.dp, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dk:                                            ; preds = %bb.dj
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.tw = load i64, ptr %2, align 16, !alias.scope !12223, !noalias !12224, !noundef !4 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ty = load i64, ptr %i.tx, align 16, !alias.scope !12224, !noalias !12223, !noundef !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tq) ]
  %i.tz = icmp eq ptr %i.to, %i.tq
  %i.ua = icmp eq i64 %i.tw, %i.ty                ; 2 uses
  %i.ub = and i1 %i.tz, %i.ua
  br i1 %i.ub, label %bb.do, label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  tail call void @llvm.assume(i1 %i.tr)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uc = load ptr, ptr %3, align 16, !alias.scope !12223, !noalias !12224, !nonnull !4, !noundef !4 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ue = load i64, ptr %i.ud, align 8, !alias.scope !12223, !noalias !12224, !noundef !4 ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ug = load ptr, ptr %i.uf, align 16, !alias.scope !12224, !noalias !12223, !nonnull !4, !noundef !4 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ui = load i64, ptr %i.uh, align 8, !alias.scope !12224, !noalias !12223, !noundef !4
  %i.uj = icmp eq ptr %i.uc, %i.ug                ; 2 uses
  %i.uk = icmp eq i64 %i.ue, %i.ui                ; 2 uses
  %i.ul = and i1 %i.uj, %i.uk
  %.not.i.i = xor i1 %i.uk, true
  %brmerge.i.i = or i1 %i.uj, %.not.i.i
  br i1 %brmerge.i.i, label %_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %.sink.split.i.i

bb.dm:                                            ; preds = %bb.dk
  br i1 %i.ua, label %bb.dn, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dn:                                            ; preds = %bb.dm
  %i.um = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.un = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %bcmp8.i.i = tail call i32 @bcmp(ptr nonnull %i.un, ptr nonnull %i.um, i64 %i.tw), !noalias !12225
  %i.uo = icmp eq i32 %bcmp8.i.i, 0
  br i1 %i.uo, label %bb.do, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.do:                                            ; preds = %bb.dn, %bb.dk
  %i.up = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.uq = load ptr, ptr %i.up, align 8, !alias.scope !12223, !noalias !12224, !nonnull !4, !noundef !4 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.us = load i64, ptr %i.ur, align 16, !alias.scope !12223, !noalias !12224, !noundef !4 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.uu = load ptr, ptr %i.ut, align 8, !alias.scope !12224, !noalias !12223, !nonnull !4, !noundef !4 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.uw = load i64, ptr %i.uv, align 16, !alias.scope !12224, !noalias !12223, !noundef !4
  %i.ux = icmp eq ptr %i.uq, %i.uu                ; 2 uses
  %i.uy = icmp eq i64 %i.us, %i.uw                ; 2 uses
  %i.uz = and i1 %i.ux, %i.uy
  %.not10.i.i = xor i1 %i.uy, true
  %brmerge11.i.i = or i1 %i.ux, %.not10.i.i
  br i1 %brmerge11.i.i, label %_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, label %.sink.split.i.i

_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i: ; preds = %bb.do, %bb.dl
  %.sroa.0.0.shrunk.i.i = phi i1 [ %i.uz, %bb.do ], [ %i.ul, %bb.dl ]
  br i1 %.sroa.0.0.shrunk.i.i, label %bb.dp, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dp:                                            ; preds = %_RNvXs3_NtCslWccy9wMl4f_17datafusion_common16schema_referenceNtB5_15SchemaReferenceNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i, %.sink.split.i.i
  %i.va = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.vb = load ptr, ptr %i.va, align 8, !alias.scope !12213, !noalias !12216, !nonnull !4, !noundef !4 ; 6 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.vd = load ptr, ptr %i.vc, align 8, !alias.scope !12216, !noalias !12213, !nonnull !4, !noundef !4 ; 6 uses
  %i.ve = icmp eq ptr %i.vb, %i.vd
  br i1 %i.ve, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12229)
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vb, i64 64
  %i.vg = load ptr, ptr %i.vf, align 8, !alias.scope !12226, !noalias !12231, !nonnull !4, !noundef !4 ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vd, i64 64
  %i.vi = load ptr, ptr %i.vh, align 8, !alias.scope !12229, !noalias !12232, !nonnull !4, !noundef !4 ; 4 uses
  %i.vj = icmp eq ptr %i.vg, %i.vi
  br i1 %i.vj, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 16
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12236)
  %i.vm = load ptr, ptr %i.vk, align 8, !alias.scope !12233, !noalias !12238, !nonnull !4, !noundef !4 ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  %i.vo = load i64, ptr %i.vn, align 8, !alias.scope !12233, !noalias !12238, !noundef !4 ; 2 uses
  %i.vp = load ptr, ptr %i.vl, align 8, !alias.scope !12236, !noalias !12239, !nonnull !4, !noundef !4 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vr = load i64, ptr %i.vq, align 8, !alias.scope !12236, !noalias !12239, !noundef !4
  %i.vs = icmp eq ptr %i.vm, %i.vp
  %i.vt = icmp eq i64 %i.vo, %i.vr                ; 2 uses
  %i.vu = and i1 %i.vs, %i.vt
  br i1 %i.vu, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  br i1 %i.vt, label %bb.dt, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dt:                                            ; preds = %bb.ds
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %i.vx = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.vv, ptr noundef nonnull %i.vw, i64 noundef %i.vo), !noalias !12240
  br i1 %i.vx, label %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26: ; preds = %bb.dt, %bb.dr
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vi, i64 32
  %i.wa = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringB13_ENtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eqCs43kcu4yvms7_24influxdb3_query_executor(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.vz), !noalias !12241
  br i1 %i.wa, label %bb.du, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.du:                                            ; preds = %_RNvXse_NtCsj9JzdWj4GcM_12arrow_schema6schemaNtB5_6SchemaNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i26, %bb.dq
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vb, i64 32
  %i.wc = load i64, ptr %i.wb, align 8, !alias.scope !12226, !noalias !12231, !noundef !4 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vd, i64 32
  %i.we = load i64, ptr %i.wd, align 8, !alias.scope !12229, !noalias !12232, !noundef !4
  %i.wf = icmp eq i64 %i.wc, %i.we
  br i1 %i.wf, label %bb.dv, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dv:                                            ; preds = %bb.du
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vd, i64 24
  %i.wh = load ptr, ptr %i.wg, align 8, !alias.scope !12229, !noalias !12232, !nonnull !4, !noundef !4
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vb, i64 24
  %i.wj = load ptr, ptr %i.wi, align 8, !alias.scope !12226, !noalias !12231, !nonnull !4, !noundef !4
  %i.wk = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpINtNtB9_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.wj, ptr noundef nonnull %i.wh, i64 noundef %i.wc), !noalias !12241
  br i1 %i.wk, label %bb.dw, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dw:                                            ; preds = %bb.dv
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vb, i64 56
  %i.wm = load i64, ptr %i.wl, align 8, !alias.scope !12226, !noalias !12231, !noundef !4 ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.vd, i64 56
  %i.wo = load i64, ptr %i.wn, align 8, !alias.scope !12229, !noalias !12232, !noundef !4
  %i.wp = icmp eq i64 %i.wm, %i.wo
  br i1 %i.wp, label %bb.dx, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dx:                                            ; preds = %bb.dw
  %i.wq = getelementptr inbounds nuw i8, ptr %i.vd, i64 48
  %i.wr = load ptr, ptr %i.wq, align 8, !alias.scope !12229, !noalias !12232, !nonnull !4, !noundef !4
  %i.ws = getelementptr inbounds nuw i8, ptr %i.vb, i64 48
  %i.wt = load ptr, ptr %i.ws, align 8, !alias.scope !12226, !noalias !12231, !nonnull !4, !noundef !4
  %i.wu = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslWccy9wMl4f_17datafusion_common23functional_dependencies20FunctionalDependenceINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.wt, ptr noundef nonnull %i.wr, i64 noundef %i.wm), !noalias !12241
  br label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dy:                                            ; preds = %bb.b
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12245)
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.wy = load i8, ptr %i.wx, align 16, !range !2490, !alias.scope !12242, !noalias !12245, !noundef !4
  %i.wz = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.xa = load i8, ptr %i.wz, align 16, !range !2490, !alias.scope !12245, !noalias !12242, !noundef !4
  %i.xb = icmp eq i8 %i.wy, %i.xa
  br i1 %i.xb, label %bb.dz, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.dz:                                            ; preds = %bb.dy
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.xd = load i8, ptr %i.xc, align 1, !range !2490, !alias.scope !12242, !noalias !12245, !noundef !4
  %i.xe = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.xf = load i8, ptr %i.xe, align 1, !range !2490, !alias.scope !12245, !noalias !12242, !noundef !4
  %i.xg = icmp eq i8 %i.xd, %i.xf
  br i1 %i.xg, label %bb.ea, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ea:                                            ; preds = %bb.dz
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.xi = load i64, ptr %i.xh, align 16, !alias.scope !12242, !noalias !12245, !noundef !4 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.xk = load i64, ptr %i.xj, align 16, !alias.scope !12245, !noalias !12242, !noundef !4
  %i.xl = icmp eq i64 %i.xi, %i.xk
  br i1 %i.xl, label %bb.eb, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.eb:                                            ; preds = %bb.ea
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.xn = load ptr, ptr %i.xm, align 8, !alias.scope !12245, !noalias !12242, !nonnull !4, !noundef !4
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.xp = load ptr, ptr %i.xo, align 8, !alias.scope !12242, !noalias !12245, !nonnull !4, !noundef !4
  %bcmp.i28 = tail call i32 @bcmp(ptr nonnull %i.xp, ptr nonnull %i.xn, i64 %i.xi), !noalias !12247, !inline_history !12248
  %i.xq = icmp eq i32 %bcmp.i28, 0
  br i1 %i.xq, label %bb.ec, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ec:                                            ; preds = %bb.eb
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.xs = load i64, ptr %i.xr, align 8, !range !820, !alias.scope !12242, !noalias !12245, !noundef !4
  %.not.i29 = icmp eq i64 %i.xs, -1
  %i.xt = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.xu = load i64, ptr %i.xt, align 8, !range !820, !alias.scope !12245, !noalias !12242, !noundef !4
  %i.xv = icmp eq i64 %i.xu, -1                   ; 2 uses
  br i1 %.not.i29, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  br i1 %i.xv, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit, label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  br i1 %i.xv, label %bb.eg, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.ef:                                            ; preds = %bb.ed
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.xx = load i64, ptr %i.xw, align 8, !alias.scope !12242, !noalias !12245, !noundef !4 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.xz = load i64, ptr %i.xy, align 8, !alias.scope !12245, !noalias !12242, !noundef !4
  %i.ya = icmp eq i64 %i.xx, %i.xz
  br i1 %i.ya, label %.split, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

.split:                                           ; preds = %bb.ef
  %i.yb = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.yc = load ptr, ptr %i.yb, align 16, !alias.scope !12245, !noalias !12242, !nonnull !4, !noundef !4
  %i.yd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ye = load ptr, ptr %i.yd, align 16, !alias.scope !12242, !noalias !12245, !nonnull !4, !noundef !4
  %i.yf = tail call noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddl18OperateFunctionArgINtB5_14SlicePartialEqBC_E17equal_same_lengthCs43kcu4yvms7_24influxdb3_query_executor(ptr noundef nonnull %i.ye, ptr noundef nonnull %i.yc, i64 noundef %i.xx), !noalias !12247, !inline_history !12248
  br i1 %i.yf, label %bb.eg, label %_RNvXsl_NtNtCs7fnekraeopg_15datafusion_expr12logical_plan3ddlNtB5_19CreateExternalTableNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.eg:                                            ; preds = %.split, %bb.ee
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.yh = load i8, ptr %i.yg, align 16, !range !3049, !alias.scope !12242, !noalias !12245, !noundef !4
  %.not8.i = icmp eq i8 %i.yh, -1
  %i.yi = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.yj = load i8, ptr %i.yi, align 16, !range !3049, !alias.scope !12245, !noalias !12242, !noundef !4
  %i.yk = icmp eq i8 %i.yj, -1                    ; 2 uses
  br i1 %.not8.i, label %bb.ei, label %bb.eh
end_hunk_0
