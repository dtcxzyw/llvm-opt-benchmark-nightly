inline.NumInlined: 4640
inline.NumDeleted: 2561
begin_hunk_0_@_ZN6duckdb13ParquetReader4ScanERNS_13ClientContextERNS_22ParquetReaderScanStateERNS_9DataChunkE:bb.a
  br i1 %or.cond.not, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lf = load i8, ptr %i.bn, align 1, !tbaa !918, !range !72, !noundef !73
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.bo, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lh = call noundef i64 @_ZN6duckdb13ParquetReader22GetGroupCompressedSizeERNS_22ParquetReaderScanStateE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr noundef nonnull align 8 dereferenceable(248) %3)
  %.not229 = icmp eq i64 %i.lh, 0
  br i1 %.not229, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.li = call noundef i64 @_ZN6duckdb13ParquetReader14GetGroupOffsetERNS_22ParquetReaderScanStateE(ptr noundef nonnull align 8 dereferenceable(432) %1, ptr noundef nonnull align 8 dereferenceable(248) %3)
  call void @_ZN6duckdb19ThriftFileTransport8PrefetchEmm(ptr noundef nonnull align 8 dereferenceable(129) %i.ac, i64 noundef %i.li, i64 noundef %i.kp)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  store i8 1, ptr %i.bn, align 1, !tbaa !918
  br label %bb.bo

bb.bg:                                            ; preds = %bb.bb
  br i1 %i.ld, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %bb.bg
  %i.lj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lb) ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !548 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 8 ; 2 uses
  %.not347379 = icmp eq ptr %i.ll, %i.lm
  br i1 %.not347379, label %.loopexit, label %.lr.ph383

.lr.ph383:                                        ; preds = %bb.bh, %.lr.ph383
  %.0188381 = phi i1 [ %spec.select, %.lr.ph383 ], [ false, %bb.bh ]
  %.sroa.0319.0380 = phi ptr [ %i.lr, %.lr.ph383 ], [ %i.ll, %bb.bh ] ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.0319.0380, i64 40
  %i.lo = call noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ln)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  %i.lq = load i8, ptr %i.lp, align 8, !tbaa !804
  %.not228 = icmp ne i8 %i.lq, 6
  %spec.select = select i1 %.not228, i1 true, i1 %.0188381 ; 2 uses
  %i.lr = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0319.0380) #29 ; 2 uses
  %.not347 = icmp eq ptr %i.lr, %i.lm
  br i1 %.not347, label %.loopexit, label %.lr.ph383

.loopexit:                                        ; preds = %.lr.ph383, %bb.bh, %bb.bg
  %.1187 = phi i1 [ false, %bb.bg ], [ false, %bb.bh ], [ %spec.select, %.lr.ph383 ]
  %i.ls = call noundef ptr @_ZNK6duckdb10unique_ptrINS_12ColumnReaderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
  %i.lt = call noundef nonnull align 8 dereferenceable(536) ptr @_ZN6duckdb12ColumnReader4CastINS_18StructColumnReaderEEERT_v(ptr noundef nonnull align 8 dereferenceable(512) %i.ls)
  %i.lu = load ptr, ptr %i.cp, align 8, !tbaa !921
  %i.lv = load ptr, ptr %i.co, align 8, !tbaa !636
  %.not393 = icmp eq ptr %i.lu, %i.lv
  br i1 %.not393, label %._crit_edge389, label %.lr.ph388

._crit_edge389:                                   ; preds = %bb.bm, %.loopexit
  %i.lw = load ptr, ptr %i.bf, align 8, !tbaa !547
  invoke void @_ZNSt8_Rb_treeIPN6duckdb8ReadHeadES2_St9_IdentityIS2_ENS0_18ReadHeadComparatorESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef %i.lw)
          to label %_ZN6duckdb19ThriftFileTransport20FinalizeRegistrationEv.exit unwind label %bb.bi

bb.bi:                                            ; preds = %._crit_edge389
  %i.lx = landingpad { ptr, i32 }
          catch ptr null
  %i.ly = extractvalue { ptr, i32 } %i.lx, 0
  call void @__clang_call_terminate(ptr %i.ly) #28
  unreachable

_ZN6duckdb19ThriftFileTransport20FinalizeRegistrationEv.exit: ; preds = %._crit_edge389
  store ptr null, ptr %i.bf, align 8, !tbaa !547
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !548
  store ptr %i.bj, ptr %i.bl, align 8, !tbaa !549
  store i64 0, ptr %i.bm, align 8, !tbaa !550
  br i1 %.1187, label %bb.bo, label %bb.bn

.lr.ph388:                                        ; preds = %.loopexit, %bb.bm
  %.0190385 = phi i64 [ %i.mx, %bb.bm ], [ 0, %.loopexit ] ; 4 uses
  %i.lz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_22MultiFileLocalColumnIdELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 noundef %.0190385)
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !159
  %i.mb = load ptr, ptr %i.lb, align 8, !tbaa !633
  %.not348 = icmp eq ptr %i.mb, null
  br i1 %.not348, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph388
  %i.mc = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lb) ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !547 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.me, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, label %.lr.ph.i.i.i274

.lr.ph.i.i.i274:                                  ; preds = %bb.bj, %.lr.ph.i.i.i274
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i274 ], [ %i.me, %bb.bj ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i274 ], [ %i.mf, %bb.bj ]
  %i.mg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !159
  %i.mi = icmp ult i64 %i.mh, %.0190385           ; 2 uses
  %.19.i.i.i = select i1 %i.mi, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.mi, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !795 ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i275, label %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i274, !llvm.loop !796

_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i274
  %i.mj = icmp eq ptr %.19.i.i.i, %i.mf
  br i1 %i.mj, label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !159
  %i.mm = icmp ult i64 %.0190385, %i.ml
  %spec.select.i.i = select i1 %i.mm, ptr %i.mf, ptr %.19.i.i.i
  br label %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit

_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit: ; preds = %bb.bj, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %bb.bk
  %.sroa.0.0.i.i = phi ptr [ %i.mf, %bb.bj ], [ %i.mf, %_ZNSt8_Rb_treeImSt4pairIKmN6duckdb10unique_ptrINS2_11TableFilterESt14default_deleteIS4_ELb1EEEESt10_Select1stIS8_ESt4lessImESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %spec.select.i.i, %bb.bk ] ; 2 uses
  %i.mn = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14TableFilterSetESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lb)
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %.not349 = icmp eq ptr %.sroa.0.0.i.i, %i.mo
  br i1 %.not349, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.mq = call noundef ptr @_ZNK6duckdb10unique_ptrINS_11TableFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mp)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load i8, ptr %i.mr, align 8, !tbaa !804
  %.not = icmp eq i8 %i.ms, 6
  br label %bb.bm

bb.bm:                                            ; preds = %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit, %bb.bl, %.lr.ph388
  %.1193 = phi i1 [ true, %.lr.ph388 ], [ true, %_ZNSt3mapImN6duckdb10unique_ptrINS0_11TableFilterESt14default_deleteIS2_ELb1EEESt4lessImESaISt4pairIKmS5_EEE4findERS9_.exit ], [ %.not, %bb.bl ]
  %i.mt = call noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb18StructColumnReader14GetChildReaderEm(ptr noundef nonnull align 8 dereferenceable(536) %i.lt, i64 noundef %i.ma) ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !113
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 80
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(512) %i.mt, ptr noundef nonnull align 8 dereferenceable(129) %i.ac, i1 noundef zeroext %.1193)
  %i.mx = add nuw i64 %.0190385, 1                ; 2 uses
  %i.my = load ptr, ptr %i.cp, align 8, !tbaa !921
  %i.mz = load ptr, ptr %i.co, align 8, !tbaa !636
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = ptrtoint ptr %i.mz to i64
  %i.nc = sub i64 %i.na, %i.nb
  %i.nd = ashr exact i64 %i.nc, 3
  %i.ne = icmp ult i64 %i.mx, %i.nd
  br i1 %i.ne, label %.lr.ph388, label %._crit_edge389, !llvm.loop !933

bb.bn:                                            ; preds = %_ZN6duckdb19ThriftFileTransport20FinalizeRegistrationEv.exit
  call void @_ZN6duckdb15ReadAheadBuffer8PrefetchEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ay)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bf, %bb.bc, %bb.bn, %_ZN6duckdb19ThriftFileTransport20FinalizeRegistrationEv.exit, %bb.aq, %bb.ap
  call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %4)
  call void @_ZN6duckdb11AsyncResultC1ENS_16SourceResultTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext 0)
  br label %bb.ei

bb.bp:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.nf = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_24ParquetFileMetadataCacheELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l)
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !273
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 48
  %i.nj = load i64, ptr %i.g, align 8, !tbaa !695
  %i.nk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(248) %3, i64 noundef %i.nj)
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !159
  %i.nm = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ni, i64 noundef %i.nl)
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 40
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !800 ; 2 uses
  %i.np = load i64, ptr %i.j, align 8, !tbaa !801 ; 2 uses
  %i.nq = sub i64 %i.no, %i.np
  %i.nr = tail call noundef i64 @llvm.umin.i64(i64 %i.nq, i64 2048) ; 6 uses
  store i64 %i.nr, ptr %i.a, align 8, !tbaa !159
  %i.ns = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  store i64 %i.nr, ptr %i.ns, align 8, !tbaa !934
  %i.nt = icmp eq i64 %i.no, %i.np
  br i1 %i.nt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i8 1, ptr %i.d, align 8, !tbaa !832
  tail call void @_ZN6duckdb11AsyncResultC1ENS_16SourceResultTypeE(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext 1)
  br label %bb.eh

bb.br:                                            ; preds = %bb.bp
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.nv = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12ColumnReaderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nu)
  %i.nw = tail call noundef nonnull align 8 dereferenceable(432) ptr @_ZN6duckdb12ColumnReader6ReaderEv(ptr noundef nonnull align 8 dereferenceable(512) %i.nv)
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 272 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !546
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !544
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.nz, i8 0, i64 %i.ob, i1 false)
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 152 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !546
  %i.oe = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !544
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.od, i8 0, i64 %i.of, i1 false)
  %i.og = load ptr, ptr %i.ny, align 8, !tbaa !546 ; 4 uses
  %i.oh = load ptr, ptr %i.oc, align 8, !tbaa !546 ; 4 uses
  %i.oi = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_12ColumnReaderESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nu)
  %i.oj = tail call noundef nonnull align 8 dereferenceable(536) ptr @_ZN6duckdb12ColumnReader4CastINS_18StructColumnReaderEEERT_v(ptr noundef nonnull align 8 dereferenceable(512) %i.oi) ; 5 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %17 = load ptr, ptr %i.ok, align 8, !tbaa !633
  %18 = icmp ne ptr %17, null
  %i.ol = load ptr, ptr %i.nx, align 8
  %19 = icmp ne ptr %i.ol, null
  %or.cond342 = select i1 %18, i1 true, i1 %19
  br i1 %or.cond342, label %bb.bs, label %.preheader351.a

.preheader351.a:                                  ; preds = %bb.br
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !921
  %i.op = load ptr, ptr %i.om, align 8, !tbaa !636
  %.not391.a = icmp eq ptr %i.oo, %i.op
  br i1 %.not391.a, label %.loopexit352, label %.lr.ph373

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.oq = load i64, ptr %i.ns, align 8, !tbaa !934
  store i64 %i.oq, ptr %i.b, align 8, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 6 uses
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !921 ; 2 uses
  %i.ou = load ptr, ptr %i.or, align 8, !tbaa !636 ; 2 uses
  %i.ov = ptrtoint ptr %i.ot to i64
  %i.ow = ptrtoint ptr %i.ou to i64
  %i.ox = sub i64 %i.ov, %i.ow
  %i.oy = ashr exact i64 %i.ox, 3                 ; 4 uses
  store ptr null, ptr %13, align 8, !tbaa !948
  %i.oz = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store i32 0, ptr %i.oz, align 8, !tbaa !950
  %i.pa = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr null, ptr %i.pa, align 8, !tbaa !948
  %i.pb = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  store i32 0, ptr %i.pb, align 8, !tbaa !950
  %i.pc = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 4 uses
  store ptr null, ptr %i.pc, align 8, !tbaa !951
  %.not.i.i.i276 = icmp eq ptr %i.ot, %i.ou
  br i1 %.not.i.i.i276, label %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pd = add nsw i64 %i.oy, 63                   ; 2 uses
  %i.pe = lshr i64 %i.pd, 3
  %i.pf = and i64 %i.pe, 2305843009213693944
  %i.pg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pf) #27
          to label %.noexc277 unwind label %bb.ce ; 4 uses

.noexc277:                                        ; preds = %bb.bt
  %i.ph = lshr i64 %i.pd, 6                       ; 2 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %i.ph
  store ptr %i.pi, ptr %i.pc, align 8, !tbaa !951
  store ptr %i.pg, ptr %13, align 8
  store i32 0, ptr %i.oz, align 8
  %i.pj = sdiv i64 %i.oy, 64
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.pg, i64 %i.pj
  %i.pl = and i64 %i.oy, -9223372036854775745
  %i.pm = icmp ugt i64 %i.pl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.pm, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.pk, i64 %storemerge.idx.i.i.i.i.i.i
  %i.pn = trunc i64 %i.oy to i32
  %i.po = and i32 %i.pn, 63
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.pa, align 8
  store i32 %i.po, ptr %i.pb, align 8
  %.idx.i.i = shl nuw nsw i64 %i.ph, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.pg, i8 -1, i64 %.idx.i.i, i1 false)
  br label %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit

_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit: ; preds = %.noexc277, %bb.bs
  %i.pp = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 6 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.pq, align 8, !tbaa !861
  %i.pr = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !348 ; 8 uses
  store ptr null, ptr %i.pr, align 8, !tbaa !348
  %.not.i.i.i.i.i278 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i.i.i.i278, label %bb.ca, label %bb.bu

bb.bu:                                            ; preds = %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 4 uses
  %i.pu = load atomic i64, ptr %i.pt acquire, align 8 ; 2 uses
  %i.pv = icmp eq i64 %i.pu, 4294967297
  %i.pw = trunc i64 %i.pu to i32                  ; 2 uses
  br i1 %i.pv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  store i32 0, ptr %i.pt, align 8, !tbaa !349
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  store i32 0, ptr %i.px, align 4, !tbaa !351
  %i.py = load ptr, ptr %i.ps, align 8, !tbaa !113
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8
  tail call void %i.qa(ptr noundef nonnull align 8 dereferenceable(16) %i.ps) #24, !inline_history !954
  %i.qb = load ptr, ptr %i.ps, align 8, !tbaa !113
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.qd = load ptr, ptr %i.qc, align 8
  tail call void %i.qd(ptr noundef nonnull align 8 dereferenceable(16) %i.ps) #24, !inline_history !954
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bu
  %i.qe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !257
  %.not.i.i.i.i.i.i = icmp eq i8 %i.qe, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.qf = add nsw i32 %i.pw, -1
  store i32 %i.qf, ptr %i.pt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.bw
  %i.qg = atomicrmw volatile add ptr %i.pt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.by, %bb.bx
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.pw, %bb.bx ], [ %i.qg, %bb.by ]
  %i.qh = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.qh, label %bb.bz, label %bb.ca, !prof !268

bb.bz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ps) #24
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bv, %_ZN6duckdb6vectorIbLb1ESaIbEECI2St6vectorIbS1_EEmRKbRKS1_.exit
  store ptr null, ptr %i.pp, align 8, !tbaa !863
  %i.qi = load ptr, ptr %i.nx, align 8, !tbaa !626
  %.not343 = icmp eq ptr %i.qi, null              ; 2 uses
  br i1 %.not343, label %bb.cg, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qj = load i64, ptr %i.j, align 8, !tbaa !801
  %i.qk = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !920
  %i.qm = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_12DeleteFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.nx)
          to label %bb.cc unwind label %bb.cf     ; 2 uses

bb.cc:                                            ; preds = %bb.cb
  %i.qn = add i64 %i.ql, %i.qj
  %i.qo = load i64, ptr %i.a, align 8, !tbaa !159
  %i.qp = load ptr, ptr %i.qm, align 8, !tbaa !113
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = invoke noundef i64 %i.qr(ptr noundef nonnull align 8 dereferenceable(8) %i.qm, i64 noundef %i.qn, i64 noundef %i.qo, ptr noundef nonnull align 8 dereferenceable(24) %i.pp)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  store i64 %i.qs, ptr %i.b, align 8, !tbaa !159
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bt
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit290

bb.cf:                                            ; preds = %bb.cc, %bb.cb
  %i.qu = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.cg:                                            ; preds = %bb.cd, %bb.ca
  %i.qv = load ptr, ptr %i.ok, align 8, !tbaa !633
  %.not344 = icmp eq ptr %i.qv, null
  br i1 %.not344, label %bb.cz, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qw = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 4 uses
  %i.qx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qw)
          to label %bb.ci unwind label %bb.cq

bb.ci:                                            ; preds = %bb.ch
  %i.qy = invoke i64 @_ZNK6duckdb14AdaptiveFilter11BeginFilterEv(ptr noundef nonnull align 8 dereferenceable(168) %i.qx)
          to label %.preheader353 unwind label %bb.cq

.preheader353:                                    ; preds = %bb.ci
  %i.qz = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %3, i64 224 ; 3 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !838
  %i.rc = load ptr, ptr %i.qz, align 8, !tbaa !837
  %i.rd = icmp eq ptr %i.rb, %i.rc
  %i.re = load i64, ptr %i.b, align 8
  %i.rf = icmp eq i64 %i.re, 0
  %or.cond365 = select i1 %i.rd, i1 true, i1 %i.rf
  br i1 %or.cond365, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader353
  %i.rg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_14AdaptiveFilterESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.qw)
          to label %bb.cj unwind label %.loopexit.split-lp

bb.cj:                                            ; preds = %.lr.ph.preheader
  %i.rh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.rg, i64 noundef 0)
          to label %bb.ck unwind label %.loopexit.split-lp

bb.ck:                                            ; preds = %bb.cj
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !159
  %i.rj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_17ParquetScanFilterELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qz, i64 noundef %i.ri)
          to label %bb.cl unwind label %.loopexit.split-lp ; 3 uses

bb.cl:                                            ; preds = %bb.ck
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !818 ; 3 uses
  %i.rl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_22MultiFileLocalColumnIdELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.or, i64 noundef %i.rk)
          to label %_ZN6duckdb23MultiFileLocalColumnIdsINS_22MultiFileLocalColumnIdEEixENS_19MultiFileLocalIndexE.exit.peel unwind label %.loopexit.split-lp407

_ZN6duckdb23MultiFileLocalColumnIdsINS_22MultiFileLocalColumnIdEEixENS_19MultiFileLocalIndexE.exit.peel: ; preds = %bb.cl
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !159
  %i.rn = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.rk)
          to label %bb.cm unwind label %.loopexit.split-lp412

bb.cm:                                            ; preds = %_ZN6duckdb23MultiFileLocalColumnIdsINS_22MultiFileLocalColumnIdEEixENS_19MultiFileLocalIndexE.exit.peel
  %i.ro = invoke noundef nonnull align 8 dereferenceable(512) ptr @_ZN6duckdb18StructColumnReader14GetChildReaderEm(ptr noundef nonnull align 8 dereferenceable(536) %i.oj, i64 noundef %i.rm)
          to label %bb.cn unwind label %.loopexit.split-lp417 ; 2 uses

bb.cn:                                            ; preds = %bb.cm
  %i.rp = load i64, ptr %i.a, align 8, !tbaa !159 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !955, !nonnull !73, !align !238
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  %i.rt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb10unique_ptrINS_16TableFilterStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.rs)
          to label %bb.co unwind label %.loopexit.split-lp417
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE17_M_realloc_insertIJRNS0_13ClientContextERKmRNS0_11TableFilterEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !829, !alias.scope !1262, !noalias !1259
  store i64 %i.x, ptr %i.v, align 8, !tbaa !829, !alias.scope !1259, !noalias !1262
  store ptr null, ptr %i.w, align 8, !tbaa !829, !alias.scope !1262, !noalias !1259
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1265

_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.z, %.lr.ph.i.i.i.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i28, label %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i29

.lr.ph.i.i.i.i29:                                 ; preds = %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i29
  %.012.i.i.i.i30 = phi ptr [ %i.af, %.lr.ph.i.i.i.i29 ], [ %i.aa, %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i.i31 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i29 ], [ %1, %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1269)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i30, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i31, i64 16, i1 false), !alias.scope !1271
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !829, !alias.scope !1269, !noalias !1266
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !829, !alias.scope !1266, !noalias !1269
  store ptr null, ptr %i.ac, align 8, !tbaa !829, !alias.scope !1269, !noalias !1266
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i31, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i30, i64 24 ; 2 uses
  %.not.i.i.i.i32 = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i.i32, label %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i.i29, !llvm.loop !1265

_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34: ; preds = %.lr.ph.i.i.i.i29, %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i33 = phi ptr [ %i.aa, %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.af, %.lr.ph.i.i.i.i29 ]
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN6duckdb17ParquetScanFilterESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34
  call void @_ZdlPv(ptr noundef nonnull %i.c) #26
  br label %_ZNSt12_Vector_baseIN6duckdb17ParquetScanFilterESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb17ParquetScanFilterESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !837
  store ptr %.0.lcssa.i.i.i.i33, ptr %i.a, align 8, !tbaa !838
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !844
  ret void

bb.e:                                             ; preds = %_ZN6duckdb17ParquetScanFilterD2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

_ZN6duckdb17ParquetScanFilterD2Ev.exit:           ; preds = %_ZNKSt6vectorIN6duckdb17ParquetScanFilterESaIS1_EE12_M_check_lenEmPKc.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  %i.al = call ptr @__cxa_begin_catch(ptr %i.ak) #24 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.p) #26
  invoke void @__cxa_rethrow() #25
          to label %bb.h unwind label %bb.e

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ai

bb.g:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  call void @__clang_call_terminate(ptr %i.an) #28
  unreachable

bb.h:                                             ; preds = %_ZN6duckdb17ParquetScanFilterD2Ev.exit
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb24ParquetPartitionRowGroupESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb24ParquetPartitionRowGroupESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24, !inline_history !1272
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb24ParquetPartitionRowGroupESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN6duckdb24ParquetPartitionRowGroupESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN6duckdb24ParquetPartitionRowGroupESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1020 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !257
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #24
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb17PartitionRowGroupD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6duckdb24ParquetPartitionRowGroupD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6duckdb24ParquetPartitionRowGroup19GetColumnStatisticsERKNS_12StorageIndexE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.302") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6duckdb12StorageIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1273, !nonnull !73, !align !238
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !898
  %i.g = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_19ParquetColumnSchemaELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1274
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = tail call noundef nonnull align 8 dereferenceable(157) ptr @_ZNK6duckdb6vectorINS_19ParquetColumnSchemaELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.a)
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !1273, !nonnull !73, !align !238
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_14ParquetOptionsELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1275
  %i.o = load i64, ptr %i.e, align 8, !tbaa !898
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @_ZNK6duckdb19ParquetColumnSchema5StatsERKN14duckdb_parquet12FileMetaDataERKNS_14ParquetOptionsEmRKNS_6vectorINS1_11ColumnChunkELb1ESaIS9_EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.302") align 8 %0, ptr noundef nonnull align 8 dereferenceable(157) %i.k, ptr noundef nonnull align 8 dereferenceable(361) %i.l, ptr noundef nonnull align 8 dereferenceable(57) %i.n, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6duckdb24ParquetPartitionRowGroup13MinMaxIsExactERKNS_14BaseStatisticsERKNS_12StorageIndexE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6duckdb12StorageIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1273, !nonnull !73, !align !238
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !898
  %i.g = tail call noundef nonnull align 8 dereferenceable(91) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet8RowGroupELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(753) ptr @_ZNK6duckdb6vectorIN14duckdb_parquet11ColumnChunkELb1ESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.a) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 752
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 2
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  %i.n = load i16, ptr %i.m, align 8
  %i.o = and i16 %i.n, 8
  %.not11 = icmp ne i16 %i.o, 0
  %3 = getelementptr inbounds nuw i8, ptr %i.i, i64 346
  %4 = load i8, ptr %3, align 2
  %or.cond.not = icmp ugt i8 %4, -65
  %or.cond = select i1 %.not11, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 345
  %i.q = load i8, ptr %i.p, align 1, !tbaa !1276, !range !72, !noundef !73
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 344
  %i.t = load i8, ptr %i.s, align 8, !range !72
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = select i1 %i.r, i1 %i.u, i1 false
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.v, %bb.c ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef i64 @_ZNK6duckdb12StorageIndex15GetPrimaryIndexEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb12optional_ptrINS_19ParquetColumnSchemaELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1274
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK6duckdb12optional_ptrINS_14ParquetOptionsELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1275
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #25
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !47     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !907  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1277   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

_ZNKSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 40                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 230584300921369395)
  %i.l = select i1 %i.j, i64 230584300921369395, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 40
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 20, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !348  ; 2 uses
  %i.v = load <2 x ptr>, ptr %i.s, align 8, !tbaa !286
  store <2 x ptr> %i.v, ptr %i.r, align 8, !tbaa !286
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt16allocator_traitsISaIN6duckdb19PartitionStatisticsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE12_M_check_lenEmPKc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !257
  %.not.i.i.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.w, align 4, !tbaa !3
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !3
  br label %_ZNSt16allocator_traitsISaIN6duckdb19PartitionStatisticsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt16allocator_traitsISaIN6duckdb19PartitionStatisticsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit

_ZNSt16allocator_traitsISaIN6duckdb19PartitionStatisticsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %_ZNKSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb19PartitionStatisticsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt16allocator_traitsISaIN6duckdb19PartitionStatisticsEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %.lr.ph.i.i.i.i
end_hunk_1
