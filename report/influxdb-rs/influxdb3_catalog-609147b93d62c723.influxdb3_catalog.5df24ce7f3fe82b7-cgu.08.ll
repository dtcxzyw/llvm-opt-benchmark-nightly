Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_catalog-609147b93d62c723.influxdb3_catalog.5df24ce7f3fe82b7-cgu.08?download=true
inline.NumInlined: 3953
inline.NumDeleted: 1700
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_RNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_15TableDefinition14update_columns:bb.a

.thread119.loopexit.split-lp:                     ; preds = %bb.bd, %bb.bo
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread106

bb.j:                                             ; preds = %bb.cg
  %lpad.thr_comm.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %.thread90

bb.k:                                             ; preds = %bb.g, %bb.i, %bb.h
  %.sroa.6.0.i = phi i16 [ %i.ax, %bb.i ], [ undef, %bb.h ], [ undef, %bb.g ]
  %.sroa.4.0.i = phi i16 [ %i.av, %bb.i ], [ %i.at, %bb.h ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi i16 [ 2, %bb.i ], [ 1, %bb.h ], [ 0, %bb.g ]
  %.sroa.6.0.insert.ext.i = zext i16 %.sroa.6.0.i to i48
  %.sroa.6.0.insert.shift.i = shl nuw i48 %.sroa.6.0.insert.ext.i, 32
  %.sroa.4.0.insert.ext.i = zext i16 %.sroa.4.0.i to i48
  %.sroa.4.0.insert.shift.i = shl nuw nsw i48 %.sroa.4.0.insert.ext.i, 16
  %.sroa.4.0.insert.insert.i = or disjoint i48 %.sroa.4.0.insert.shift.i, %.sroa.6.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext nneg i16 %.sroa.0.0.i to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.4.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.q, align 8
  %i.ay = invoke noundef align 8 ptr @_RINvMs3_NtCs96Uix8yqi9Q_8indexmap3mapINtB6_8IndexMapNtCsbFlE7Gjht9i_12influxdb3_id16ColumnIdentifierNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionINtNtCs4NRVxsYgnAr_4core4hash18BuildHasherDefaultNtCsk6FPlRoJNeq_10rustc_hash8FxHasherEE3getBO_EB1I_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %.sroa.015.0, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(6) %i.q)
          to label %_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet9get_by_id.exit unwind label %.thread119.loopexit ; 3 uses

_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet9get_by_id.exit: ; preds = %bb.k
  %.not20 = icmp eq ptr %i.ay, null
  br i1 %.not20, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet9get_by_id.exit
  %.val = load i64, ptr %i.ay, align 8, !range !19, !noundef !11
  switch i64 %.val, label %default.unreachable [
    i64 0, label %_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  br label %_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit

bb.n:                                             ; preds = %bb.l
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %.val30 = load ptr, ptr %i.az, align 8, !nonnull !11, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %.val30, i64 40
  %i.bb = load i8, ptr %i.ba, align 8, !range !14, !noundef !11
  br label %_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit

bb.o:                                             ; preds = %_RNvMsw_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB5_9ColumnSet9get_by_id.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !5575)
  call void @llvm.experimental.noalias.scope.decl(metadata !5576)
  %i.bc = load i64, ptr %.sroa.0.0139, align 8, !range !19, !alias.scope !5576, !noalias !5575, !noundef !11 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 24
  %i.bf = load i16, ptr %i.be, align 8, !alias.scope !5576, !noalias !5575, !noundef !11 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 26
  %i.bh = load i16, ptr %i.bg, align 2, !alias.scope !5576, !noalias !5575 ; 3 uses
  switch i64 %i.bc, label %default.unreachable [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %i.bd, align 8, !alias.scope !5576, !noalias !5575, !nonnull !11, !noundef !11 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !5576, !noalias !5575, !noundef !11
  %i.bl = atomicrmw add ptr %i.bi, i64 1 monotonic, align 8, !noalias !5577
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 28
  %i.bo = load i16, ptr %i.bn, align 4, !alias.scope !5576, !noalias !5575
  %i.bp = load ptr, ptr %i.bd, align 8, !alias.scope !5576, !noalias !5575, !nonnull !11, !noundef !11 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !5576, !noalias !5575, !noundef !11
  %i.bs = atomicrmw add ptr %i.bp, i64 1 monotonic, align 8, !noalias !5577
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %bb.v, label %bb.u

bb.r:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 28
  %i.bv = load <2 x i16>, ptr %i.bu, align 4, !alias.scope !5576, !noalias !5575
  %i.bw = load ptr, ptr %i.bd, align 8, !alias.scope !5576, !noalias !5575, !nonnull !11, !noundef !11 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !5576, !noalias !5575, !noundef !11
  %i.bz = atomicrmw add ptr %i.bw, i64 1 monotonic, align 8, !noalias !5577
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %bb.x, label %bb.w

bb.s:                                             ; preds = %bb.p
  store ptr %i.bi, ptr %i.ak, align 8, !alias.scope !5575, !noalias !5576
  store i64 %i.bk, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !5575, !noalias !5576
  store i16 %i.bf, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !5575, !noalias !5576
  store i16 %i.bh, ptr %.sroa.69.0..sroa_idx.i, align 2, !alias.scope !5575, !noalias !5576
  br label %bb.y

bb.t:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.q
  store ptr %i.bp, ptr %i.ak, align 8, !alias.scope !5575, !noalias !5576
  store i64 %i.br, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !5575, !noalias !5576
  store i16 %i.bf, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !5575, !noalias !5576
  store i16 %i.bh, ptr %.sroa.69.0..sroa_idx.i, align 2, !alias.scope !5575, !noalias !5576
  store i16 %i.bo, ptr %.sroa.710.0..sroa_idx.i, align 4, !alias.scope !5575, !noalias !5576
  br label %bb.y

bb.v:                                             ; preds = %bb.q
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 32
  %i.cc = load i8, ptr %i.cb, align 8, !range !37, !alias.scope !5576, !noalias !5575, !noundef !11
  store ptr %i.bw, ptr %i.ak, align 8, !alias.scope !5575, !noalias !5576
  store i64 %i.by, ptr %.sroa.47.0..sroa_idx.i, align 8, !alias.scope !5575, !noalias !5576
  store i16 %i.bf, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !5575, !noalias !5576
  store i16 %i.bh, ptr %.sroa.69.0..sroa_idx.i, align 2, !alias.scope !5575, !noalias !5576
  store <2 x i16> %i.bv, ptr %.sroa.710.0..sroa_idx.i, align 4, !alias.scope !5575, !noalias !5576
  store i8 %i.cc, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !5575, !noalias !5576
  br label %bb.y

bb.x:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.w, %bb.u, %bb.s
  store i64 %i.bc, ptr %i.m, align 8, !alias.scope !5575, !noalias !5576
  %i.cd = invoke { i64, ptr } @_RNvXsb_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtNtNtNtBb_7catalog8versions2v216ColumnDefinitionINtNtCs4NRVxsYgnAr_4core7convert4FromNtB5_19ColumnDefinitionLogE4from(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.m)
          to label %bb.z unwind label %.thread119.loopexit ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.ce = extractvalue { i64, ptr } %i.cd, 0      ; 2 uses
  %i.cf = extractvalue { i64, ptr } %i.cd, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !5578)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.ce, ptr %i.j, align 8, !noalias !5578
  store ptr %i.cf, ptr %i.al, align 8, !noalias !5578
  %i.cg = load i64, ptr %i.ae, align 8, !alias.scope !5578, !noundef !11 ; 3 uses
  %i.ch = load i64, ptr %i.r, align 8, !range !22, !alias.scope !5578, !noundef !11
  %i.ci = icmp eq i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.aa, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE8push_mutBM_.exit

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE8grow_oneBT_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE8push_mutBM_.exit unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionEBJ_(ptr noalias noundef align 8 dereferenceable(16) %i.j) #35
          to label %.thread106 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE8push_mutBM_.exit: ; preds = %bb.z, %bb.aa
  %i.cl = load ptr, ptr %i.ad, align 8, !alias.scope !5578, !nonnull !11, !noundef !11
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.cg ; 2 uses
  store i64 %i.ce, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cf, ptr %i.cn, align 8
  %i.co = add i64 %i.cg, 1
  store i64 %i.co, ptr %i.ae, align 8, !alias.scope !5578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionE8push_mutBM_.exit, %bb.ai
  %i.cp = icmp eq ptr %i.am, %i.ah
  br i1 %i.cp, label %._crit_edge, label %bb.e

_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.0.0.i34 = phi i8 [ %i.bb, %bb.n ], [ 5, %bb.m ], [ 7, %bb.l ] ; 6 uses
  %.sroa.0.0.val32 = load i64, ptr %.sroa.0.0139, align 8, !range !19, !noundef !11
  %i.cq = getelementptr i8, ptr %.sroa.0.0139, i64 32 ; 2 uses
  switch i64 %.sroa.0.0.val32, label %default.unreachable [
    i64 0, label %bb.af
    i64 1, label %bb.ae
    i64 2, label %switch.lookup
  ]

bb.ae:                                            ; preds = %_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit
  br label %bb.af

switch.lookup:                                    ; preds = %_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit
  %.sroa.0.0.val33 = load i8, ptr %i.cq, align 8
  %switch.cast = zext i8 %.sroa.0.0.val33 to i48
  %switch.shiftamt = shl nuw nsw i48 %switch.cast, 3
  %switch.downshift = lshr i48 3315714883843, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  %i.cr = add nsw i8 %.sroa.0.0.i34, -5
  %i.cs = icmp samesign ugt i8 %.sroa.0.0.i34, 4  ; 2 uses
  %narrow123 = select i1 %i.cs, i8 %i.cr, i8 1
  br label %bb.ag

bb.af:                                            ; preds = %_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit, %bb.ae
  %.sroa.0.0.i35 = phi i8 [ 7, %_RNCNvMsy_NtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v2NtB7_15TableDefinition14update_columns0Bd_.exit ], [ 5, %bb.ae ] ; 2 uses
  %i.ct = add nsw i8 %.sroa.0.0.i34, -5
  %i.cu = icmp samesign ugt i8 %.sroa.0.0.i34, 4  ; 2 uses
  %narrow = select i1 %i.cu, i8 %i.ct, i8 1
  %i.cv = add nsw i8 %.sroa.0.0.i35, -5
  br label %bb.ag

bb.ag:                                            ; preds = %switch.lookup, %bb.af
  %narrow126 = phi i8 [ %narrow, %bb.af ], [ %narrow123, %switch.lookup ]
  %3 = phi i1 [ %i.cu, %bb.af ], [ %i.cs, %switch.lookup ]
  %.sroa.0.0.i35125 = phi i8 [ %.sroa.0.0.i35, %bb.af ], [ %switch.masked, %switch.lookup ]
  %i.cw = phi i8 [ %i.cv, %bb.af ], [ 1, %switch.lookup ]
  %4 = icmp eq i8 %narrow126, %i.cw
  %i.cx = icmp eq i8 %.sroa.0.0.i34, %.sroa.0.0.i35125
  %or.cond = or i1 %3, %i.cx
  %or.cond127 = select i1 %4, i1 %or.cond, i1 false
  br i1 %or.cond127, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cy = load i64, ptr %1, align 8, !range !24, !noundef !11
  %.not23 = icmp eq i64 %i.cy, -1
  br i1 %.not23, label %bb.aj, label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ad

bb.aj:                                            ; preds = %bb.ah
  %i.cz = load ptr, ptr %i.aj, align 8, !nonnull !11, !align !18, !noundef !11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj
  %.sroa.016.0 = phi ptr [ %i.cz, %bb.aj ], [ %1, %bb.ah ]
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.016.0, i64 1152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !5579
  store i64 0, ptr %i.i, align 8, !noalias !5579
  %.sroa.42.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i37, align 8, !noalias !5579
  %.sroa.53.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i38, align 8, !noalias !5579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !5579
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 1610612768, ptr %i.db, align 8, !noalias !5579
  %.sroa.4.0..sroa_idx.i39 = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i39, align 4, !noalias !5579
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.h, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i40, align 2, !noalias !5579
  store ptr %i.i, ptr %i.h, align 8, !noalias !5579
  %i.dc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @434, ptr %i.dc, align 8, !noalias !5579
  %i.dd = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.da, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.am unwind label %bb.al, !noalias !5580

bb.al:                                            ; preds = %bb.an, %bb.ak
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #35
          to label %.thread106 unwind label %bb.ao, !noalias !5580

bb.am:                                            ; preds = %bb.ak
  br i1 %i.dd, label %bb.an, label %bb.ap, !prof !46

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @435, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #32
          to label %.noexc.i unwind label %bb.al, !noalias !5580

.noexc.i:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.al
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !5580
  unreachable

bb.ap:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !5581
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !5579
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !5579
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !5582)
  %i.dg = load i64, ptr %.sroa.0.0139, align 8, !range !19, !alias.scope !5582, !noundef !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !5582, !nonnull !11, !noundef !11 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0139, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !5582, !noundef !11
  %i.dl = atomicrmw add ptr %i.di, i64 1 monotonic, align 8, !noalias !5582
  %i.dm = icmp slt i64 %i.dl, 0                   ; 3 uses
  switch i64 %i.dg, label %default.unreachable [
    i64 0, label %bb.aq
    i64 1, label %bb.ar
    i64 2, label %bb.as
  ]

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.dm, label %bb.at, label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  br i1 %i.dm, label %bb.au, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  br i1 %i.dm, label %bb.av, label %bb.aw

bb.at:                                            ; preds = %bb.aq
  call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %bb.ar
  call void @llvm.trap()
  unreachable

bb.av:                                            ; preds = %bb.as
  call void @llvm.trap()
  unreachable

bb.aw:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  store ptr %i.di, ptr %i.n, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.dk, ptr %i.dn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5583
  store i64 0, ptr %i.g, align 8, !noalias !5583
  %.sroa.42.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i44, align 8, !noalias !5583
  %.sroa.53.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i45, align 8, !noalias !5583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !5583
  %i.do = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.do, align 8, !noalias !5583
  %.sroa.4.0..sroa_idx.i46 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i46, align 4, !noalias !5583
  %.sroa.5.0..sroa_idx.i47 = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i47, align 2, !noalias !5583
  store ptr %i.g, ptr %i.f, align 8, !noalias !5583
  %i.dp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @434, ptr %i.dp, align 8, !noalias !5583
  %i.dq = invoke noundef zeroext i1 @_RNvXsU_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ay unwind label %bb.ax, !noalias !5584

bb.ax:                                            ; preds = %bb.az, %bb.aw
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #35
          to label %.body49 unwind label %bb.ba, !noalias !5584

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.dq, label %bb.az, label %bb.bb, !prof !46

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @435, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437) #32
          to label %.noexc.i48 unwind label %bb.ax, !noalias !5584

.noexc.i48:                                       ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ax
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34, !noalias !5584
  unreachable

.body49:                                          ; preds = %bb.ax
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs844E4pPEVZX_17influxdb3_catalog(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p) #35
          to label %bb.bj unwind label %bb.bi

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !5585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !5583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5583
  %.sroa.0.0.val = load i64, ptr %.sroa.0.0139, align 8, !range !19, !noundef !11
  switch i64 %.sroa.0.0.val, label %default.unreachable [
    i64 0, label %_RNvMsa_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB5_19ColumnDefinitionLog11column_type.exit54
    i64 1, label %bb.bc
    i64 2, label %switch.lookup175
  ]

bb.bc:                                            ; preds = %bb.bb
  br label %_RNvMsa_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB5_19ColumnDefinitionLog11column_type.exit54

switch.lookup175:                                 ; preds = %bb.bb
  %.sroa.0.0.val31 = load i8, ptr %i.cq, align 8
  %switch.cast176 = zext i8 %.sroa.0.0.val31 to i48
  %switch.shiftamt177 = shl nuw nsw i48 %switch.cast176, 3
  %switch.downshift178 = lshr i48 3315714883843, %switch.shiftamt177
  %switch.masked179 = trunc i48 %switch.downshift178 to i8
  br label %_RNvMsa_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB5_19ColumnDefinitionLog11column_type.exit54

_RNvMsa_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB5_19ColumnDefinitionLog11column_type.exit54: ; preds = %switch.lookup175, %bb.bc, %bb.bb
  %.sroa.0.0.i52 = phi i8 [ 7, %bb.bb ], [ 5, %bb.bc ], [ %switch.masked179, %switch.lookup175 ]
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.6.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 28, ptr %i.dt, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.0.0.i34, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %.sroa.0.0.i52, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(29) %.sroa.6, i64 29, i1 false)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.experimental.noalias.scope.decl(metadata !5586)
  call void @llvm.experimental.noalias.scope.decl(metadata !5587)
  %i.du = load ptr, ptr %i.n, align 8, !alias.scope !5588, !nonnull !11, !noundef !11
  %i.dv = atomicrmw sub ptr %i.du, i64 1 release, align 8, !noalias !5588
  %i.dw = icmp eq i64 %i.dv, 1
  br i1 %i.dw, label %bb.bd, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit

bb.bd:                                            ; preds = %_RNvMsa_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB5_19ColumnDefinitionLog11column_type.exit54
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit unwind label %.thread119.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit: ; preds = %_RNvMsa_NtNtNtCs844E4pPEVZX_17influxdb3_catalog3log8versions2v4NtB5_19ColumnDefinitionLog11column_type.exit54, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs844E4pPEVZX_17influxdb3_catalog7catalog8versions2v216ColumnDefinitionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %bb.bf unwind label %bb.be

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs844E4pPEVZX_17influxdb3_catalog.exit
end_hunk_0
