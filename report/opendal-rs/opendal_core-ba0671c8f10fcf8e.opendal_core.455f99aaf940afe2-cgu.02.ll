Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.02?download=true
inline.NumInlined: 475
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMNtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtB9_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4a_13OccupiedEntryB1I_B23_E9remove_kv0NtNtB9_5alloc6GlobalEB2b_:bb.a
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !41, !nonnull !9, !noundef !9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1154
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !41, !noundef !9 ; 2 uses
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1160
  %i.at = icmp ult i16 %i.aq, 12
  tail call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ar
  %i.av = load ptr, ptr %i.au, align 8, !noalias !41, !nonnull !9, !noundef !9 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1154
  %i.ax = load i16, ptr %i.aw, align 2, !noalias !41, !noundef !9 ; 2 uses
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1160
  %i.ba = icmp ult i16 %i.ax, 12
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ay
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !41, !nonnull !9, !noundef !9 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1154
  %i.be = load i16, ptr %i.bd, align 2, !noalias !41, !noundef !9 ; 2 uses
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 1160
  %i.bh = icmp ult i16 %i.be, 12
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !41, !nonnull !9, !noundef !9 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1154
  %i.bl = load i16, ptr %i.bk, align 2, !noalias !41, !noundef !9 ; 2 uses
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 1160
  %i.bo = icmp ult i16 %i.bl, 12
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !41, !nonnull !9, !noundef !9 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1154
  %i.bs = load i16, ptr %i.br, align 2, !noalias !41, !noundef !9 ; 2 uses
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 1160
  %i.bv = icmp ult i16 %i.bs, 12
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !41, !nonnull !9, !noundef !9 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1154
  %i.bz = load i16, ptr %i.by, align 2, !noalias !41, !noundef !9 ; 2 uses
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 1160
  %i.cc = icmp ult i16 %i.bz, 12
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.ca
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !41, !nonnull !9, !noundef !9 ; 2 uses
  %i.cf = add i64 %.sroa.05.07.i.i, -8            ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i, label %.lr.ph.i.i

_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.c
  %.sroa.03.0.lcssa.i.i = phi ptr [ %i.o, %bb.c ], [ %.lcssa39.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ce, %.lr.ph.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i, i64 1154
  %i.ci = load i16, ptr %i.ch, align 2, !noalias !41, !noundef !9 ; 2 uses
  %i.cj = zext i16 %i.ci to i64
  %i.ck = icmp ne i16 %i.ci, 0
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = add nsw i64 %i.cj, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40
  store ptr %.sroa.03.0.lcssa.i.i, ptr %i.c, align 8, !noalias !40
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !40
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.cl, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !40
  call fastcc void @_RINvMs_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBX_7NodeRefNtNtBX_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1u_4LeafENtB1u_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3X_13OccupiedEntryB1K_B25_E9remove_kv0NtNtBb_5alloc6GlobalEB2d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(128) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull dereferenceable(1) %2), !noalias !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %.sroa.017.0.copyload.i = load ptr, ptr %i.cm, align 8, !noalias !40, !nonnull !9, !noundef !9 ; 3 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %.sroa.418.0.copyload.i = load i64, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !40 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !40 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i, i64 1154
  %i.co = load i16, ptr %i.cn, align 2, !noalias !43, !noundef !9
  %i.cp = zext i16 %i.co to i64
  %i.cq = icmp ult i64 %.sroa.5.0.copyload.i, %i.cp
  br i1 %i.cq, label %bb.d, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i, %.lr.ph.i16.i
  %.sroa.0.022.i.i = phi ptr [ %i.cs, %.lr.ph.i16.i ], [ %.sroa.017.0.copyload.i, %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i ] ; 2 uses
  %.sroa.5.021.i.i = phi i64 [ %i.ct, %.lr.ph.i16.i ], [ %.sroa.418.0.copyload.i, %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 880
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !44, !nonnull !9, !noundef !9 ; 3 uses
  %i.ct = add i64 %.sroa.5.021.i.i, 1             ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i, i64 1152
  %i.cv = load i16, ptr %i.cu, align 8, !noalias !44 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 1154
  %i.cx = load i16, ptr %i.cw, align 2, !noalias !43, !noundef !9
  %i.cy = icmp ult i16 %i.cv, %i.cx
  br i1 %i.cy, label %._crit_edge.loopexit.i.i, label %.lr.ph.i16.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i16.i
  %i.cz = zext i16 %i.cv to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.loopexit.i.i, %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i
  %.sroa.7.0.i = phi i64 [ %i.cz, %._crit_edge.loopexit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i ] ; 5 uses
  %.sroa.531.0.i = phi i64 [ %i.ct, %._crit_edge.loopexit.i.i ], [ %.sroa.418.0.copyload.i, %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i ] ; 5 uses
  %.sroa.030.0.i = phi ptr [ %i.cs, %._crit_edge.loopexit.i.i ], [ %.sroa.017.0.copyload.i, %_RNvMsn_NtNtNtCs6i54tJFfzR_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtBb_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1j_14LeafOrInternalE14last_leaf_edgeB22_.exit.i ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i, i64 888
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.da, i64 %.sroa.7.0.i ; 2 uses
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %.sroa.030.0.i, i64 %.sroa.7.0.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.db, i64 24, i1 false), !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dd, ptr noundef nonnull align 8 dereferenceable(80) %i.dc, i64 80, i1 false), !noalias !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.k, i64 80, i1 false), !noalias !40
  %i.de = icmp eq i64 %.sroa.531.0.i, 0
  br i1 %i.de, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.df = add nuw nsw i64 %.sroa.7.0.i, 1
  br label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB46_13OccupiedEntryB1L_B26_E9remove_kv0NtNtBc_5alloc6GlobalEB2e_.exit

bb.f:                                             ; preds = %bb.d
  %i.dg = icmp samesign ult i64 %.sroa.7.0.i, 11
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr i8, ptr %.sroa.030.0.i, i64 1168
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %.sroa.7.0.i ; 2 uses
  %xtraiter40 = and i64 %.sroa.531.0.i, 7         ; 2 uses
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.f, %.prol.preheader
  %.sroa.017.0.in.i.i.prol = phi ptr [ %i.dj, %.prol.preheader ], [ %i.di, %bb.f ]
  %.sroa.019.0.in.i.i.prol = phi i64 [ %.sroa.019.0.i.i.prol, %.prol.preheader ], [ %.sroa.531.0.i, %bb.f ]
  %prol.iter42 = phi i64 [ %prol.iter42.next, %.prol.preheader ], [ 0, %bb.f ]
  %.sroa.019.0.i.i.prol = add i64 %.sroa.019.0.in.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.prol, align 8, !noalias !45, !nonnull !9, !noundef !9 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.prol, i64 1160 ; 2 uses
  %prol.iter42.next = add i64 %prol.iter42, 1     ; 2 uses
  %prol.iter42.cmp.not = icmp eq i64 %prol.iter42.next, %xtraiter40
  br i1 %prol.iter42.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !38

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.f
  %.sroa.017.0.i.i.lcssa.unr = phi ptr [ poison, %bb.f ], [ %.sroa.017.0.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.unr = phi ptr [ %i.di, %bb.f ], [ %i.dj, %.prol.preheader ]
  %.sroa.019.0.in.i.i.unr = phi i64 [ %.sroa.531.0.i, %bb.f ], [ %.sroa.019.0.i.i.prol, %.prol.preheader ]
  %i.dk = icmp ult i64 %.sroa.531.0.i, 8
  br i1 %i.dk, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB46_13OccupiedEntryB1L_B26_E9remove_kv0NtNtBc_5alloc6GlobalEB2e_.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i = phi ptr [ %i.dt, %.new ], [ %.sroa.017.0.in.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i = phi i64 [ %.sroa.019.0.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i = load ptr, ptr %.sroa.017.0.in.i.i, align 8, !noalias !45, !nonnull !9, !noundef !9
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i, i64 1160
  %.sroa.017.0.i.i.1 = load ptr, ptr %i.dl, align 8, !noalias !45, !nonnull !9, !noundef !9
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.1, i64 1160
  %.sroa.017.0.i.i.2 = load ptr, ptr %i.dm, align 8, !noalias !45, !nonnull !9, !noundef !9
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.2, i64 1160
  %.sroa.017.0.i.i.3 = load ptr, ptr %i.dn, align 8, !noalias !45, !nonnull !9, !noundef !9
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.3, i64 1160
  %.sroa.017.0.i.i.4 = load ptr, ptr %i.do, align 8, !noalias !45, !nonnull !9, !noundef !9
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.4, i64 1160
  %.sroa.017.0.i.i.5 = load ptr, ptr %i.dp, align 8, !noalias !45, !nonnull !9, !noundef !9
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.5, i64 1160
  %.sroa.017.0.i.i.6 = load ptr, ptr %i.dq, align 8, !noalias !45, !nonnull !9, !noundef !9
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.6, i64 1160
  %.sroa.019.0.i.i.7 = add i64 %.sroa.019.0.in.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.7 = load ptr, ptr %i.dr, align 8, !noalias !45, !nonnull !9, !noundef !9 ; 2 uses
  %i.ds = icmp eq i64 %.sroa.019.0.i.i.7, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.7, i64 1160
  br i1 %i.ds, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB46_13OccupiedEntryB1L_B26_E9remove_kv0NtNtBc_5alloc6GlobalEB2e_.exit, label %.new

_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB46_13OccupiedEntryB1L_B26_E9remove_kv0NtNtBc_5alloc6GlobalEB2e_.exit: ; preds = %.prol.loopexit, %.new, %bb.e
  %.sroa.734.0.i = phi i64 [ %i.df, %bb.e ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.032.0.i = phi ptr [ %.sroa.030.0.i, %bb.e ], [ %.sroa.017.0.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.7, %.new ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false), !noalias !46
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.032.0.i, ptr %i.du, align 8, !alias.scope !39, !noalias !46
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !39, !noalias !46
  %.sroa.734.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.734.0.i, ptr %.sroa.734.0..sroa_idx.i, align 8, !alias.scope !39, !noalias !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.g

bb.g:                                             ; preds = %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB46_13OccupiedEntryB1L_B26_E9remove_kv0NtNtBc_5alloc6GlobalEB2e_.exit, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB23_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.0.val, i64 noundef range(i64 0, 4) %1, ptr %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %1, label %default.unreachable15 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

default.unreachable15:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val18 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val19 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 888 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 1154
  %i.e = load i16, ptr %i.d, align 2, !noundef !9 ; 2 uses
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %.idx29 = mul nuw nsw i64 %i.f, 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx29
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %.loopexit.loopexit.i, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.preheader

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.preheader: ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  br label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i

bb.c:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i26, i64 24 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.0.i25, 1
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %.loopexit.loopexit.i, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.preheader, %bb.c
  %.sroa.0.01.i26 = phi ptr [ %i.i, %bb.c ], [ %i.c, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.preheader ] ; 3 uses
  %.sroa.8.0.i25 = phi i64 [ %i.j, %bb.c ], [ 0, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.preheader ] ; 3 uses
  %i.l = getelementptr i8, ptr %.sroa.0.01.i26, i64 8
  %.val7.i = load ptr, ptr %i.l, align 8, !nonnull !9, !noundef !9
  %i.m = getelementptr i8, ptr %.sroa.0.01.i26, i64 16
  %.val8.i = load i64, ptr %i.m, align 8, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val19, i64 range(i64 0, -9223372036854775808) %.val8.i)
  %i.n = tail call i32 @memcmp(ptr nonnull readonly %.val18, ptr nonnull readonly %.val7.i, i64 %spec.store.select.i.i.i.i), !alias.scope !53 ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = icmp eq i32 %i.n, 0
  %i.q = sub nsw i64 %.val19, %.val8.i
  %spec.select.i.i.i.i = select i1 %i.p, i64 %i.q, i64 %i.o
  %i.r = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  switch i8 %i.r, label %bb.d [
    i8 -1, label %.loopexit.loopexit.i
    i8 0, label %bb.j
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i
  unreachable

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %.0.val) ]
  %i.s = getelementptr i8, ptr %2, i64 8
  %.val15 = load ptr, ptr %i.s, align 8           ; 2 uses
  %i.t = getelementptr i8, ptr %2, i64 16
  %.val16 = load i64, ptr %i.t, align 8           ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 888 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 1154
  %i.w = load i16, ptr %i.v, align 2, !noundef !9 ; 2 uses
  %i.x = zext i16 %i.w to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.x, 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %.idx
  %i.z = icmp eq i16 %i.w, 0
  br i1 %i.z, label %.loopexit.loopexit.i31, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.preheader

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.preheader: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  br label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i2123, i64 24 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.y
  br i1 %i.ab, label %.loopexit.loopexit.i31, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22: ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.preheader, %bb.f
  %.sroa.0.01.i2123 = phi ptr [ %i.aa, %bb.f ], [ %i.u, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.preheader ] ; 3 uses
  %.sroa.8.0.i2022 = phi i64 [ %i.ac, %bb.f ], [ 0, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.preheader ] ; 2 uses
  %i.ac = add nuw i64 %.sroa.8.0.i2022, 1         ; 2 uses
  %i.ad = getelementptr i8, ptr %.sroa.0.01.i2123, i64 8
  %.val7.i23 = load ptr, ptr %i.ad, align 8, !nonnull !9, !noundef !9
  %i.ae = getelementptr i8, ptr %.sroa.0.01.i2123, i64 16
  %.val8.i24 = load i64, ptr %i.ae, align 8, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i25 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val16, i64 range(i64 0, -9223372036854775808) %.val8.i24)
  %i.af = tail call i32 @memcmp(ptr nonnull readonly %.val15, ptr nonnull readonly %.val7.i23, i64 %spec.store.select.i.i.i.i25), !alias.scope !54 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub nsw i64 %.val16, %.val8.i24
  %spec.select.i.i.i.i26 = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i26, i64 0)
  switch i8 %i.aj, label %bb.g [
    i8 -1, label %.loopexit.loopexit.i31
    i8 0, label %bb.l
    i8 1, label %bb.f
  ]

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22
  unreachable

bb.h:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ak, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.al = getelementptr inbounds nuw i8, ptr %.0.val, i64 1154
  %i.am = load i16, ptr %i.al, align 2, !noundef !9
  %i.an = zext i16 %i.am to i64
  store i64 %i.an, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ao, align 8
  br label %bb.k

.loopexit.loopexit.i:                             ; preds = %bb.c, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i, %bb.b
  %.sroa.4.0.i.ph = phi i64 [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %.sroa.8.0.i25, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i ]
  store i64 %.sroa.4.0.i.ph, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.aq, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i
  store i64 %.sroa.8.0.i25, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.ar, align 8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.loopexit.i31, %bb.l, %.loopexit.loopexit.i, %bb.j, %bb.i, %bb.h
  ret void

.loopexit.loopexit.i31:                           ; preds = %bb.f, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22, %bb.e
  %.sroa.4.0.i29.ph = phi i64 [ %i.x, %bb.e ], [ %i.x, %bb.f ], [ %.sroa.8.0.i2022, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22 ]
  store i64 %.sroa.4.0.i29.ph, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.at, align 8
  br label %bb.k

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22
  store i64 %i.ac, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.au, align 8
  br label %bb.k
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB23_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.0.val, i64 noundef range(i64 0, 4) %1, ptr %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %1, label %default.unreachable25 [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

default.unreachable25:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val18 = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.b = getelementptr i8, ptr %2, i64 16
  %.val19 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 888 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 1154
  %i.e = load i16, ptr %i.d, align 2, !noundef !9
  %i.f = zext i16 %i.e to i64                     ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.f
  %i.h = icmp samesign eq i64 %3, %i.f
  br i1 %i.h, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.lr.ph

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.lr.ph: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18) ]
  br label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i

bb.c:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i41, i64 24 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i40, 1
  %i.l = icmp eq ptr %i.j, %i.g
  br i1 %i.l, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.lr.ph, %bb.c
  %.sroa.0.01.i41 = phi ptr [ %i.i, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.lr.ph ], [ %i.j, %bb.c ] ; 3 uses
  %.sroa.8.0.i40 = phi i64 [ 0, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i.lr.ph ], [ %i.k, %bb.c ] ; 3 uses
  %i.m = getelementptr i8, ptr %.sroa.0.01.i41, i64 8
  %.val7.i = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  %i.n = getelementptr i8, ptr %.sroa.0.01.i41, i64 16
  %.val8.i = load i64, ptr %i.n, align 8, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val19, i64 range(i64 0, -9223372036854775808) %.val8.i)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.val18, ptr nonnull readonly %.val7.i, i64 %spec.store.select.i.i.i.i), !alias.scope !61 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub nsw i64 %.val19, %.val8.i
  %spec.select.i.i.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i, i64 0)
  switch i8 %i.s, label %bb.d [
    i8 -1, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread4
    i8 0, label %bb.j
    i8 1, label %bb.c
  ]

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i
  unreachable

_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread4: ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i
  %.sroa.4.1.i6 = add i64 %.sroa.8.0.i40, %3
  br label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %.0.val) ]
  %i.t = getelementptr i8, ptr %2, i64 8
  %.val15 = load ptr, ptr %i.t, align 8           ; 2 uses
  %i.u = getelementptr i8, ptr %2, i64 16
  %.val16 = load i64, ptr %i.u, align 8           ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 888 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val, i64 1154
  %i.x = load i16, ptr %i.w, align 2, !noundef !9
  %i.y = zext i16 %i.x to i64                     ; 4 uses
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.y
  %i.aa = icmp samesign eq i64 %3, %i.y
  br i1 %i.aa, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.lr.ph

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.lr.ph: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  br label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22

bb.f:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i2139, i64 24 ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.8.0.i2038, 1
  %i.ae = icmp eq ptr %i.ac, %i.z
  br i1 %i.ae, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread, label %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22

_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22: ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.lr.ph, %bb.f
  %.sroa.0.01.i2139 = phi ptr [ %i.ab, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.lr.ph ], [ %i.ac, %bb.f ] ; 3 uses
  %.sroa.8.0.i2038 = phi i64 [ 0, %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22.lr.ph ], [ %i.ad, %bb.f ] ; 3 uses
  %i.af = getelementptr i8, ptr %.sroa.0.01.i2139, i64 8
  %.val7.i23 = load ptr, ptr %i.af, align 8, !nonnull !9, !noundef !9
  %i.ag = getelementptr i8, ptr %.sroa.0.01.i2139, i64 16
  %.val8.i24 = load i64, ptr %i.ag, align 8, !noundef !9 ; 2 uses
  %spec.store.select.i.i.i.i25 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val16, i64 range(i64 0, -9223372036854775808) %.val8.i24)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.val15, ptr nonnull readonly %.val7.i23, i64 %spec.store.select.i.i.i.i25), !alias.scope !62 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.val16, %.val8.i24
  %spec.select.i.i.i.i26 = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i.i26, i64 0)
  switch i8 %i.al, label %bb.g [
    i8 -1, label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread10
    i8 0, label %bb.l
    i8 1, label %bb.f
  ]

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22
  unreachable

_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread10: ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22
  %.sroa.4.1.i2912 = add i64 %.sroa.8.0.i2038, %3
  br label %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread

bb.h:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.val, i64 1154
  %i.an = load i16, ptr %i.am, align 2, !noundef !9
  %i.ao = zext i16 %i.an to i64
  store i64 %i.ao, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ap, align 8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  store i64 %3, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.aq, align 8
  br label %bb.k

_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread: ; preds = %bb.c, %bb.b, %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread4
  %.sroa.4.0.i3 = phi i64 [ %.sroa.4.1.i6, %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread4 ], [ %i.f, %bb.b ], [ %i.f, %bb.c ]
  store i64 %.sroa.4.0.i3, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.as, align 8
  br label %bb.k

bb.j:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i
  %.sroa.4.1.i = add i64 %3, 1
  %i.at = add i64 %.sroa.4.1.i, %.sroa.8.0.i40
  store i64 %i.at, ptr %0, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 3, ptr %i.au, align 8
  br label %bb.k

bb.k:                                             ; preds = %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread, %bb.l, %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit.thread, %bb.j, %bb.i, %bb.h
  ret void

_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread: ; preds = %bb.f, %bb.e, %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread10
  %.sroa.4.0.i309 = phi i64 [ %.sroa.4.1.i2912, %_RINvMs0_NtNtNtCs6i54tJFfzR_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1i_14LeafOrInternalE14find_key_indexB1A_EB23_.exit33.thread10 ], [ %i.y, %bb.e ], [ %i.y, %bb.f ]
  store i64 %.sroa.4.0.i309, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.aw, align 8
  br label %bb.k

bb.l:                                             ; preds = %_RNvXs_NtNtNtCsgxBkk5gSRhY_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs6i54tJFfzR_5alloc6string6StringEENtNtNtB8_6traits8iterator8Iterator4nextCs5XgW7KoffLW_12opendal_core.exit.i22
  %.sroa.4.1.i29 = add i64 %.sroa.8.0.i2038, %3
  store i64 %.sroa.4.1.i29, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 2, ptr %i.ax, align 8
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB1L_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1154 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !9
  %i.g = zext i16 %i.f to i64                     ; 4 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1154
  %i.l = load i16, ptr %i.k, align 2, !noundef !9
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.m, %bb.b ], [ %i.g, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !84, !nonnull !9, !noundef !9 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !84, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 1154 ; 3 uses
  %i.r = load i16, ptr %i.q, align 2, !noalias !84, !noundef !9
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !84, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !84, !nonnull !9, !noundef !9 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1154
  %i.y = load i16, ptr %i.x, align 2, !noalias !84, !noundef !9 ; 2 uses
  %i.z = zext i16 %i.y to i64                     ; 5 uses
  %i.aa = add nuw nsw i64 %i.g, 1                 ; 7 uses
  %i.ab = add nuw nsw i64 %i.aa, %i.z             ; 3 uses
  %i.ac = icmp samesign ult i64 %i.ab, 12
  br i1 %i.ac, label %bb.g, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #21, !noalias !84
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !84, !noundef !9 ; 6 uses
  %i.af = trunc nuw nsw i64 %i.ab to i16
  store i16 %i.af, ptr %i.e, align 2, !noalias !84
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 888
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false), !noalias !84
  %i.ai = getelementptr i8, ptr %i.ah, i64 24
  %i.aj = xor i64 %i.ae, -1
  %i.ak = add i64 %i.aj, %i.s                     ; 3 uses
  %i.al = mul nuw nsw i64 %i.ak, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.ai, i64 %i.al, i1 false), !alias.scope !85, !noalias !86
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 888 ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 888
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.aa
  %i.aq = mul nuw nsw i64 %i.z, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ap, ptr nonnull readonly align 8 %i.ao, i64 %i.aq, i1 false), !alias.scope !87, !noalias !84
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.n, i64 %i.ae ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.ar, i64 80, i1 false), !noalias !84
  %i.as = getelementptr i8, ptr %i.ar, i64 80
  %i.at = mul nuw nsw i64 %i.ak, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %i.as, i64 %i.at, i1 false), !alias.scope !88, !noalias !89
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.au, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.d, i64 %i.aa
  %i.aw = mul nuw nsw i64 %i.z, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull readonly align 8 %i.w, i64 %i.aw, i1 false), !alias.scope !90, !noalias !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 1160 ; 6 uses
  %i.ay = add i64 %i.ae, 1                        ; 4 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %i.bb = shl nuw nsw i64 %i.ak, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr align 8 %i.ba, i64 %i.bb, i1 false), !alias.scope !91, !noalias !84
  %i.bc = icmp ult i64 %i.ay, %i.s
  br i1 %i.bc, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bd = xor i64 %i.ae, -1
  %i.be = add i64 %i.bd, %i.s
  %i.bf = add nsw i64 %i.s, -2
end_hunk_0
begin_hunk_1_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB11_5error5ErrorEEB13_:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !603, !noundef !9
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.m

bb.m:                                             ; preds = %.body5.i
  invoke void @_RNvXs4_NtCselJpgKOOZlr_6anyhow5errorNtB7_5ErrorNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.t

bb.n:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body5.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !604, !noundef !9
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit.i
  invoke void @_RNvXs4_NtCselJpgKOOZlr_6anyhow5errorNtB7_5ErrorNtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8.i unwind label %bb.p

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.p, %bb.m, %.body5.i
  %.pn2.i = phi { ptr, i32 } [ %i.ag, %bb.p ], [ %.pn.i, %bb.m ], [ %.pn.i, %.body5.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val4.i = load ptr, ptr %i.af, align 8, !alias.scope !605, !align !17, !noundef !9
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEEECs5XgW7KoffLW_12opendal_core(ptr %.val4.i) #23
          to label %common.resume.i unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8.i: ; preds = %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.ah, align 8, !alias.scope !605, !align !17, !noundef !9 ; 5 uses
  %i.ai = icmp eq ptr %.val.i, null
  br i1 %i.ai, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8.i
  %i.aj = load i64, ptr %.val.i, align 8, !range !16, !alias.scope !606, !noundef !9
  %switch.i.i.i.i.i = icmp samesign ult i64 %i.aj, 2
  br i1 %switch.i.i.i.i.i, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ak)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.s

common.resume.i:                                  ; preds = %bb.s, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.al, %bb.s ], [ %.pn2.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.s:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 48, i64 noundef 8) #22
  br label %common.resume.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.r, %bb.q
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 48, i64 noundef 8) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit

bb.t:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit.i, %bb.m, %.body.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxNtNtCs9k3SxhrAWiO_3std9backtrace9BacktraceEECs5XgW7KoffLW_12opendal_core.exit.i.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtCselJpgKOOZlr_6anyhow5ErrorEECs5XgW7KoffLW_12opendal_core.exit8.i, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBC_NtNtB14_6buffer6BufferNtNtB14_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !615, !noundef !9
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !620, !nonnull !9, !noundef !9
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !620
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i = load ptr, ptr %i.g, align 8, !alias.scope !621, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3.i.i = load ptr, ptr %i.h, align 8, !alias.scope !621
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3api13ReadStreamDynEL_EEEB1G_(ptr %.val2.i.i, ptr %.val3.i.i) #23
          to label %.body.i unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !621, !noundef !9 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i = load ptr, ptr %i.j, align 8, !alias.scope !621 ; 6 uses
  %i.k = icmp eq ptr %.val.i.i, null
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtBI_6buffer6BufferNtNtBI_5error5ErrorEEEBK_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.l = load ptr, ptr %.val1.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.l(ptr noundef nonnull %.val.i.i)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtBI_6buffer6BufferNtNtBI_5error5ErrorEEEBK_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtBI_6buffer6BufferNtNtBI_5error5ErrorEEEBK_.exit

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.body.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #22
  br label %.body.i

bb.k:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.i:                                          ; preds = %bb.j, %bb.i, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.f, %bb.d ], [ %i.r, %bb.i ], [ %i.r, %bb.j ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB11_5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.y) #23
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %.body.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.r, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.aj, %bb.r ], [ %i.aj, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtBI_6buffer6BufferNtNtBI_5error5ErrorEEEBK_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs5XgW7KoffLW_12opendal_core5types7context4read11ReadContextEEB1g_.exit.i.i, %bb.g, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtB11_5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aa)
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs5XgW7KoffLW_12opendal_core.exit

bb.m:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.ab, align 8            ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.ac, align 8, !nonnull !9, !align !17, !noundef !9 ; 5 uses
  %i.ad = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ad(ptr noundef nonnull %.val)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs5XgW7KoffLW_12opendal_core.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs5XgW7KoffLW_12opendal_core.exit

bb.q:                                             ; preds = %bb.n
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %common.resume, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.al, i64 noundef range(i64 1, 536870913) %i.ao) #22
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.p, %bb.o, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputINtNtB4_6result6ResultNtNtBI_6buffer6BufferNtNtBI_5error5ErrorEEEBK_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecTReNtNtB7_6string6StringEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVecTReNtNtBG_6string6StringEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync8ArcInnerINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB21_NtNtB2t_6buffer6BufferNtNtB2t_5error5ErrorEEINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !18, !alias.scope !632, !noundef !9
  %i.c = icmp eq i64 %i.b, -2
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1H_NtNtB29_6buffer6BufferNtNtB29_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2b_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBC_NtNtB14_6buffer6BufferNtNtB14_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1H_NtNtB29_6buffer6BufferNtNtB29_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2b_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val7.i = load ptr, ptr %i.e, align 8, !alias.scope !633, !align !17, !noundef !9 ; 2 uses
  %i.f = icmp eq ptr %.val7.i, null
  br i1 %i.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val8.i = load ptr, ptr %i.g, align 8, !alias.scope !633
  %i.h = getelementptr inbounds nuw i8, ptr %.val7.i, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  invoke void %i.i(ptr noundef %.val8.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.i, !inline_history !630

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1H_NtNtB29_6buffer6BufferNtNtB29_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2b_.exit.i: ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i = load ptr, ptr %i.j, align 8, !alias.scope !633, !align !17, !noundef !9 ; 2 uses
  %i.k = icmp eq ptr %.val5.i, null
  br i1 %i.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit11.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1H_NtNtB29_6buffer6BufferNtNtB29_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2b_.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val6.i = load ptr, ptr %i.l, align 8, !alias.scope !633
  %i.m = getelementptr inbounds nuw i8, ptr %.val5.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !9, !noundef !9
  invoke void %i.n(ptr noundef %.val6.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit11.i unwind label %bb.g, !inline_history !630

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.g, %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val3.i = load ptr, ptr %i.o, align 8, !alias.scope !633, !align !17, !noundef !9 ; 2 uses
  %i.p = icmp eq ptr %.val3.i, null
  br i1 %i.p, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit13.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val4.i = load ptr, ptr %i.q, align 8, !alias.scope !633
  %i.r = getelementptr inbounds nuw i8, ptr %.val3.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !9, !noundef !9
  invoke void %i.s(ptr noundef %.val4.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit13.i unwind label %bb.i, !inline_history !630

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit11.i: ; preds = %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1H_NtNtB29_6buffer6BufferNtNtB29_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2b_.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !633, !align !17, !noundef !9 ; 2 uses
  %i.v = icmp eq ptr %.val.i, null
  br i1 %i.v, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1p_NtNtB1R_6buffer6BufferNtNtB1R_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1T_.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit11.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val2.i = load ptr, ptr %i.w, align 8, !alias.scope !633
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9
  tail call void %i.y(ptr noundef %.val2.i), !inline_history !631
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1p_NtNtB1R_6buffer6BufferNtNtB1R_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1T_.exit

bb.i:                                             ; preds = %bb.f, %bb.d
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit13.i: ; preds = %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1p_NtNtB1R_6buffer6BufferNtNtB1R_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1T_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock4LockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit11.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !659, !nonnull !9, !noundef !9
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !659
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #26
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %.body.i unwind label %bb.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core7TrailerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.j) #23
          to label %bb.o unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %.val.i.i = load ptr, ptr %i.k, align 8, !align !17, !noundef !9 ; 2 uses
  %i.l = icmp eq ptr %.val.i.i, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.m = getelementptr i8, ptr %.0.val, i64 104
  %.val1.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !noundef !9
  invoke void %i.o(ptr noundef %.val1.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
end_hunk_1
begin_hunk_2_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_IB20_IBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !693, !nonnull !9, !noundef !9
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !693
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a) #26
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1t_IB1J_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.f)
          to label %.body.i unwind label %bb.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1t_IB1J_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.e, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core7TrailerECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %i.j) #23
          to label %bb.o unwind label %bb.m

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime9scheduler14current_thread6HandleEECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  %.val.i.i = load ptr, ptr %i.k, align 8, !align !17, !noundef !9 ; 2 uses
  %i.l = icmp eq ptr %.val.i.i, null
  br i1 %i.l, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.m = getelementptr i8, ptr %.0.val, i64 104
  %.val1.i.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !noundef !9
  invoke void %i.o(ptr noundef %.val1.i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.g, !inline_history !1

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !696, !noundef !9 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !697
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsgxBkk5gSRhY_4core3ops8function2FnTRL1_INtNtNtCs9k1U6oT1TZJ_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #26
          to label %bb.o unwind label %bb.l

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.f, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CoreINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !700, !noundef !9 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i.i
  %i.y = atomicrmw sub ptr %i.w, i64 1 release, align 8, !noalias !701
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.k, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsgxBkk5gSRhY_4core3ops8function2FnTRL1_INtNtNtCs9k1U6oT1TZJ_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #26
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.m:                                             ; preds = %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1s_IB1I_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEINtNtB1M_4sync3ArcNtNtNtBI_9scheduler14current_thread6HandleEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.j, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit.i.i, %bb.k
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 128, i64 noundef 128) #22
  ret void

bb.o:                                             ; preds = %bb.n, %bb.i, %bb.h, %bb.g, %.body.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ac, %bb.n ], [ %i.p, %bb.g ], [ %i.p, %bb.i ], [ %i.p, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 128, i64 noundef 128) #22
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel7oneshot6SenderINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1q_NtNtB1S_6buffer6BufferNtNtB1S_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtCsK9IUdK075C_15futures_channel7oneshotINtB5_6SenderINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBX_NtNtB1F_6buffer6BufferNtNtB1F_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB11_3any3AnyNtNtB11_6marker4SendEL_EEENtNtNtB11_3ops4drop4Drop4dropB1H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !712, !nonnull !9, !noundef !9
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !712
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1W_NtNtB2o_6buffer6BufferNtNtB2o_5error5ErrorEEINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2q_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1t_NtNtB2b_6buffer6BufferNtNtB2b_5error5ErrorEEINtNtB7_5boxed3BoxDNtNtB1x_3any3AnyNtNtB1x_6marker4SendEL_EEEE9drop_slowB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1W_NtNtB2o_6buffer6BufferNtNtB2o_5error5ErrorEEINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2q_.exit unwind label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.e = load ptr, ptr %0, align 8, !alias.scope !715, !nonnull !9, !noundef !9
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !715
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1W_NtNtB2o_6buffer6BufferNtNtB2o_5error5ErrorEEINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2q_.exit1

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1t_NtNtB2b_6buffer6BufferNtNtB2b_5error5ErrorEEINtNtB7_5boxed3BoxDNtNtB1x_3any3AnyNtNtB1x_6marker4SendEL_EEEE9drop_slowB2d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1W_NtNtB2o_6buffer6BufferNtNtB2o_5error5ErrorEEINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2q_.exit1

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1W_NtNtB2o_6buffer6BufferNtNtB2o_5error5ErrorEEINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2q_.exit1: ; preds = %bb.d, %bb.e
  ret void

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc4sync3ArcINtNtCsK9IUdK075C_15futures_channel7oneshot5InnerINtNtB4_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1W_NtNtB2o_6buffer6BufferNtNtB2o_5error5ErrorEEINtNtBG_5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEEB2q_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !19, !noundef !9
  switch i32 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit [
    i32 0, label %bb.b
    i32 1, label %bb.h
  ]

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.n, %bb.o, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.ab, %bb.o ], [ %i.ab, %bb.n ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !718, !noundef !9
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !718, !noundef !9 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !718 ; 6 uses
  %i.u = icmp eq ptr %.val.i, null
  br i1 %i.u, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !9, !noalias !718 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.l unwind label %bb.n, !noalias !718

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !14, !invariant.load !9, !noalias !718 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !15, !invariant.load !9, !noalias !718
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #22, !noalias !718
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEECs5XgW7KoffLW_12opendal_core.exit

bb.n:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !14, !invariant.load !9, !noalias !718 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %common.resume, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !15, !invariant.load !9, !noalias !718
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #22, !noalias !718
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIB1t_IB1J_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !19, !noundef !9
  switch i32 %i.a, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEECs5XgW7KoffLW_12opendal_core.exit [
    i32 0, label %bb.b
    i32 1, label %bb.i
  ]

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.i, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBC_IBS_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs5XgW7KoffLW_12opendal_core.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 4 uses
  %.val.i.i = load ptr, ptr %.val, align 8        ; 5 uses
  %i.c = getelementptr i8, ptr %.val, i64 8
  %.val1.i.i = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9 ; 5 uses
  %i.d = load ptr, ptr %.val1.i.i, align 8, !invariant.load !9 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.d(ptr noundef nonnull %.val.i.i)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBC_IBS_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.h = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBC_IBS_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs5XgW7KoffLW_12opendal_core.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !14, !invariant.load !9 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !15, !invariant.load !9
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #22
  br label %bb.h

common.resume:                                    ; preds = %bb.o, %bb.p, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.h ], [ %i.ab, %bb.p ], [ %i.ab, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 16, i64 noundef 8) #22
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxIBC_IBS_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.e
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 16, i64 noundef 8) #22
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.i:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !721, !noundef !9
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEECs5XgW7KoffLW_12opendal_core.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !721, !noundef !9 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.t, align 8, !alias.scope !721 ; 6 uses
  %i.u = icmp eq ptr %.val.i, null
  br i1 %i.u, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEECs5XgW7KoffLW_12opendal_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.v = load ptr, ptr %.val1.i, align 8, !invariant.load !9, !noalias !721 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void %i.v(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !721

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !14, !invariant.load !9, !noalias !721 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEECs5XgW7KoffLW_12opendal_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !15, !invariant.load !9, !noalias !721
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #22, !noalias !721
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.o:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !14, !invariant.load !9, !noalias !721 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %common.resume, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !range !15, !invariant.load !9, !noalias !721
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ad, i64 noundef range(i64 1, 536870913) %i.ag) #22, !noalias !721
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !722, !noundef !9
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.c
    i8 2, label %bb.c
    i8 3, label %bb.d
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXNtNtNtCs6i54tJFfzR_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit, %bb.b, %bb.a, %bb.a, %bb.a
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtCsdMEyVxnODSb_10serde_json5value5ValueENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !734, !noundef !9 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !737, !noundef !9
  %i.f = load ptr, ptr %i.c, align 8, !alias.scope !737, !nonnull !9, !align !17, !noundef !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !737, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !737, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !737, !noundef !9
  tail call void %i.h(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %i.l), !noalias !737, !inline_history !729
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer5InnerEBH_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !738
end_hunk_2
begin_hunk_3_@_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core7TrailerECs5XgW7KoffLW_12opendal_core:bb.a
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !796
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task24TaskHarnessScheduleHooksECs5XgW7KoffLW_12opendal_core.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsgxBkk5gSRhY_4core3ops8function2FnTRL1_INtNtNtCs9k1U6oT1TZJ_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBQ_6marker4SendNtB2F_4SyncEL_E9drop_slowB1B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #26
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task24TaskHarnessScheduleHooksECs5XgW7KoffLW_12opendal_core.exit3

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task24TaskHarnessScheduleHooksECs5XgW7KoffLW_12opendal_core.exit3: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task24TaskHarnessScheduleHooksECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #23
          to label %bb.f unwind label %bb.e

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.e)
  ret void

bb.e:                                             ; preds = %.body
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueTNtNtCs6i54tJFfzR_5alloc6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d) #23
          to label %common.resume unwind label %bb.l

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VechEECs5XgW7KoffLW_12opendal_core.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !822)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !823)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !824)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !826, !noundef !9 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !827
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcShE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e) #26
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.k) #23
          to label %common.resume unwind label %bb.k

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i: ; preds = %bb.f, %bb.e, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !830, !noundef !9 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !833, !noundef !9
  %i.r = load ptr, ptr %i.o, align 8, !alias.scope !833, !nonnull !9, !align !17, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !834, !nonnull !9, !noundef !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !833, !noundef !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !833, !noundef !9
  tail call void %i.t(ptr noundef %i.q, ptr noundef %i.v, i64 noundef %i.x), !noalias !834, !inline_history !817
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit

bb.i:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types8metadata8MetadataEBH_.exit.i
  %i.y = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !835
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.j, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l) #26
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit

bb.k:                                             ; preds = %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_.exit: ; preds = %bb.h, %bb.i, %bb.j
  ret void

bb.l:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtCsK9IUdK075C_15futures_channel7oneshotINtB5_5InnerINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBW_NtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE13poll_canceledB1G_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.c = load atomic i8, ptr %i.b seq_cst, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !9, !align !17, !noundef !9 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !align !17, !noundef !9
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noundef !9
  %i.j = tail call { ptr, ptr } %i.g(ptr noundef %i.i) ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = atomicrmw xchg ptr %i.n, i8 1 seq_cst, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8
  %.val4 = load ptr, ptr %i.m, align 8, !align !17, !noundef !9 ; 2 uses
  %i.q = icmp eq ptr %.val4, null
  br i1 %i.q, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs5XgW7KoffLW_12opendal_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 176        ; 2 uses
  %.val5 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val4, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  invoke void %i.t(ptr noundef %.val5)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.f, !inline_history !2

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !9, !noundef !9
  tail call void %i.v(ptr noundef %i.l), !inline_history !3
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.k, ptr %i.m, align 8
  store ptr %i.l, ptr %i.r, align 8
  invoke void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtBZ_4task4wake5WakerEENtNtNtBZ_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.h

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  store ptr %i.k, ptr %i.m, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.l, ptr %i.x, align 8
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtBZ_4task4wake5WakerEENtNtNtBZ_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load atomic i8, ptr %i.b seq_cst, align 8
  %i.z = icmp eq i8 %i.y, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs5XgW7KoffLW_12opendal_core.exit, %bb.e
  %.sroa.0.1 = phi i1 [ %i.z, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECs5XgW7KoffLW_12opendal_core.exit ], [ false, %bb.e ], [ false, %bb.a ]
  ret i1 %.sroa.0.1

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.w
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsK9IUdK075C_15futures_channel7oneshotINtB5_5InnerINtNtCsgxBkk5gSRhY_4core6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIBW_NtNtB1E_6buffer6BufferNtNtB1E_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtB10_3any3AnyNtNtB10_6marker4SendEL_EEE4recvB1G_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.d = load atomic i8, ptr %i.c seq_cst, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !nonnull !9, !align !17, !noundef !9 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !9, !align !17, !noundef !9
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noundef !9
  %i.k = tail call { ptr, ptr } %i.h(ptr noundef %i.j) ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0        ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = extractvalue { ptr, ptr } %i.k, 1        ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.p = atomicrmw xchg ptr %i.o, i8 1 seq_cst, align 1
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.n, ptr %i.b, align 8
  %.val18 = load ptr, ptr %i.n, align 8, !align !17, !noundef !9 ; 2 uses
  %i.q = icmp eq ptr %.val18, null
  br i1 %i.q, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr i8, ptr %1, i64 152        ; 2 uses
  %.val19 = load ptr, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.val18, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !9, !noundef !9
  invoke void %i.t(ptr noundef %.val19)
          to label %bb.h unwind label %bb.e, !inline_history !2

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.n, align 8
  store ptr %i.m, ptr %i.r, align 8
  invoke void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtBZ_4task4wake5WakerEENtNtNtBZ_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !9, !noundef !9
  tail call void %i.w(ptr noundef %i.m), !inline_history !3
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCsK9IUdK075C_15futures_channel4lock7TryLockINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.d, %bb.c
  store ptr %i.l, ptr %i.n, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.m, ptr %i.y, align 8
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionNtNtNtBZ_4task4wake5WakerEENtNtNtBZ_3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load atomic i8, ptr %i.c seq_cst, align 8
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.a, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ac = atomicrmw xchg ptr %i.ab, i8 1 seq_cst, align 1
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.h
  store i64 -3, ptr %0, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %.sroa.03.0.copyload = load i64, ptr %1, align 8 ; 2 uses
  store i64 -2, ptr %1, align 8
  %.not16 = icmp eq i64 %.sroa.03.0.copyload, -2
  br i1 %.not16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.48.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.0..sroa_idx, i64 128, i1 false)
  store i64 %.sroa.03.0.copyload, ptr %0, align 8
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionINtNtBZ_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1x_NtNtB1Z_6buffer6BufferNtNtB1Z_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEEENtNtNtBZ_3ops4drop4Drop4dropB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  call void @_RNvXs3_NtCsK9IUdK075C_15futures_channel4lockINtB5_7TryLockINtNtCsgxBkk5gSRhY_4core6option6OptionINtNtBZ_6result6ResultTNtNtNtNtCs5XgW7KoffLW_12opendal_core5types4read13buffer_stream16ChunkedReadInputIB1x_NtNtB1Z_6buffer6BufferNtNtB1Z_5error5ErrorEEINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtBZ_3any3AnyNtNtBZ_6marker4SendEL_EEEENtNtNtBZ_3ops4drop4Drop4dropB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.o

bb.n:                                             ; preds = %bb.j, %bb.o, %bb.l
  ret void

bb.o:                                             ; preds = %bb.i, %bb.m
  store i64 -2, ptr %0, align 8
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE14drop_referenceCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State7ref_dec(ptr noundef nonnull align 8 %0)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc5boxed3BoxINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core4CellINtNtB4_3pin3PinIBC_DNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEINtNtBG_4sync3ArcNtNtNtB1g_9scheduler14current_thread6HandleEEEECs5XgW7KoffLW_12opendal_core(ptr nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE15try_read_outputCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [24 x i8], align 8            ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = tail call noundef zeroext i1 @_RNvNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harness15can_read_output(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2)
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !842
  store i32 2, ptr %i.d, align 8, !noalias !842
  %i.e = load i32, ptr %i.a, align 8, !range !19, !noalias !842, !noundef !9
  %i.f = icmp eq i32 %i.e, 1
  br i1 %i.f, label %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit, label %bb.c, !prof !12

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 69 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
          to label %bb.d unwind label %bb.e, !noalias !842

bb.d:                                             ; preds = %bb.c
  unreachable

common.resume:                                    ; preds = %bb.e, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4core5StageINtNtB4_3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #23
          to label %common.resume unwind label %bb.f, !noalias !842

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !842
  unreachable

_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !842
  tail call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.j = load i64, ptr %1, align 8, !range !20, !alias.scope !843, !noundef !9
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit

bb.g:                                             ; preds = %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !845, !noundef !9
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !845, !noundef !9 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load ptr, ptr %i.p, align 8, !alias.scope !845 ; 6 uses
  %i.q = icmp eq ptr %.val.i.i, null
  br i1 %i.q, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i, align 8, !invariant.load !9, !noalias !845 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.r(ptr noundef nonnull %.val.i.i)
          to label %bb.k unwind label %bb.m, !noalias !845

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !14, !invariant.load !9, !noalias !845 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !15, !invariant.load !9, !noalias !845
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #22, !noalias !845
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit

bb.m:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !14, !invariant.load !9, !noalias !845 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !15, !invariant.load !9, !noalias !845
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #22, !noalias !845
  br label %.body

bb.o:                                             ; preds = %bb.a, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit
  ret void

.body:                                            ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  br label %common.resume

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtNtB4_4task4poll4PollINtNtB4_6result6ResultuNtNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5error9JoinErrorEEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.l, %bb.k, %bb.h, %bb.g, %_RNCNvMs4_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4coreINtB7_4CoreINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB15_6future6future6Futurep6OutputuNtNtB15_6marker4SendEL_EEINtNtB1B_4sync3ArcNtNtNtBb_9scheduler14current_thread6HandleEE11take_output0Cs5XgW7KoffLW_12opendal_core.exit
  store i64 0, ptr %1, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task7harnessINtB5_7HarnessINtNtCsgxBkk5gSRhY_4core3pin3PinINtNtCs6i54tJFfzR_5alloc5boxed3BoxDNtNtNtB19_6future6future6Futurep6OutputuNtNtB19_6marker4SendEL_EEINtNtB1F_4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE21drop_join_handle_slowCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = tail call { i1, i1 } @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task5stateNtB2_5State33transition_to_join_handle_dropped(ptr noundef nonnull align 8 %0) ; 2 uses
end_hunk_3
