Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_server-0e0535aff1c63326.ty_server.3b8259ff8edbf41-cgu.10?download=true
inline.NumInlined: 1358
inline.NumDeleted: 689
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBX_7NodeRefNtNtBX_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1u_4LeafENtB1u_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB46_13OccupiedEntryB1K_B2D_E9remove_kv0NtNtBb_5alloc6GlobalEB2H_:bb.a
  store ptr %i.by, ptr %i.et, align 8, !noalias !216
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 1416
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !216
  %i.ew = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.er
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.by, ptr %i.ey, align 8, !noalias !216
  %i.ez = trunc nuw nsw i64 %i.er to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 1416
  store i16 %i.ez, ptr %i.fa, align 8, !noalias !216
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ew
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.by, ptr %i.fd, align 8, !noalias !216
  %i.fe = trunc nuw nsw i64 %i.ew to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 1416
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !216
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.fh = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.fh)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.by, ptr %i.fj, align 8, !noalias !216
  %i.fk = trunc nuw nsw i64 %i.fb to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 1416
  store i16 %i.fk, ptr %i.fl, align 8, !noalias !216
  %exitcond.not.i.i.3 = icmp eq i64 %i.fg, %i.df
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge103.thread
  %i.fm = load i16, ptr %i.de, align 2, !noalias !216, !noundef !10
  %i.fn = add i16 %i.fm, -1
  store i16 %i.fn, ptr %i.de, align 2, !noalias !216
  %i.fo = icmp ugt i64 %i.bz, 1
  br i1 %i.fo, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEEB31_.exit.i, label %.noexc28

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEEB31_.exit.i: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.db, i64 1424 ; 6 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.pre-phi110129
  %i.fr = getelementptr inbounds nuw i8, ptr %i.dc, i64 1424
  %i.fs = shl nuw nsw i64 %.pre-phi108130, 3
  %i.ft = add nuw nsw i64 %i.fs, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fq, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fr, i64 %i.ft, i1 false), !alias.scope !222, !noalias !216
  %i.fu = add nuw nsw i64 %.pre-phi112128, 1
  %i.fv = sub nsw i64 %i.fu, %.pre-phi110129
  %i.fw = sub nsw i64 %.pre-phi112128, %.pre-phi110129
  %xtraiter162 = and i64 %i.fv, 3                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEEB31_.exit.i, %.lr.ph.i8.i.prol
  %.sroa.0.06.i9.i.prol = phi i64 [ %i.fx, %.lr.ph.i8.i.prol ], [ %.pre-phi110129, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEEB31_.exit.i ] ; 4 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %.lr.ph.i8.i.prol ], [ 0, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEEB31_.exit.i ]
  %i.fx = add nuw nsw i64 %.sroa.0.06.i9.i.prol, 1 ; 2 uses
  %i.fy = icmp samesign ult i64 %.sroa.0.06.i9.i.prol, 12
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.0.06.i9.i.prol
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.db, ptr %i.ga, align 8, !noalias !216
  %i.gb = trunc nuw nsw i64 %.sroa.0.06.i9.i.prol to i16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 1416
  store i16 %i.gb, ptr %i.gc, align 8, !noalias !216
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !202

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEEB31_.exit.i
  %.sroa.0.06.i9.i.unr = phi i64 [ %.pre-phi110129, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceEEEB31_.exit.i ], [ %i.fx, %.lr.ph.i8.i.prol ]
  %i.gd = icmp ult i64 %i.fw, 3
  br i1 %i.gd, label %.noexc28, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.sroa.0.06.i9.i = phi i64 [ %i.gt, %.lr.ph.i8.i ], [ %.sroa.0.06.i9.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 7 uses
  %i.ge = add nuw nsw i64 %.sroa.0.06.i9.i, 1     ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.sroa.0.06.i9.i
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.db, ptr %i.gg, align 8, !noalias !216
  %i.gh = trunc nuw nsw i64 %.sroa.0.06.i9.i to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 1416
  store i16 %i.gh, ptr %i.gi, align 8, !noalias !216
  %i.gj = add nuw nsw i64 %.sroa.0.06.i9.i, 2     ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.ge
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.db, ptr %i.gl, align 8, !noalias !216
  %i.gm = trunc nuw nsw i64 %i.ge to i16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 1416
  store i16 %i.gm, ptr %i.gn, align 8, !noalias !216
  %i.go = add nuw nsw i64 %.sroa.0.06.i9.i, 3     ; 3 uses
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.gj
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.db, ptr %i.gq, align 8, !noalias !216
  %i.gr = trunc nuw nsw i64 %i.gj to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 1416
  store i16 %i.gr, ptr %i.gs, align 8, !noalias !216
  %i.gt = add nuw nsw i64 %.sroa.0.06.i9.i, 4
  %i.gu = icmp ult i64 %.sroa.0.06.i9.i, 9
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.go
  %i.gw = load ptr, ptr %i.gv, align 8, !noalias !216, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.db, ptr %i.gw, align 8, !noalias !216
  %i.gx = trunc nuw nsw i64 %i.go to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 1416
  store i16 %i.gx, ptr %i.gy, align 8, !noalias !216
  %exitcond.not.i10.i.3 = icmp eq i64 %i.go, %.pre-phi112128
  br i1 %exitcond.not.i10.i.3, label %.noexc28, label %.lr.ph.i8.i

.noexc28:                                         ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.i
  %.sink.i29 = phi i64 [ 1424, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEB2m_.exit.i ], [ 1520, %.lr.ph.i8.i ], [ 1520, %.lr.ph.i8.i.prol.loopexit ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %.sink.i29, i64 noundef 8) #33, !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.gz = load i16, ptr %i.de, align 2, !noalias !213, !noundef !10 ; 2 uses
  %i.ha = icmp ugt i16 %i.gz, 4
  br i1 %i.ha, label %.thread, label %.lr.ph

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i8 1, ptr %2, align 1, !alias.scope !223
  br label %.sink.split

.sink.split:                                      ; preds = %bb.aa, %.thread, %bb.m
  %.sink.ph = phi ptr [ %i.e, %bb.m ], [ %i.i, %.thread ], [ %i.i, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.a
  %.sink = phi ptr [ %i.e, %bb.a ], [ %.sink.ph, %.sink.split ]
  %.sroa.0.0.sink = phi ptr [ %i.j, %bb.a ], [ %i.bn, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.ac, %bb.a ], [ %i.bm, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.p, %bb.a ], [ %i.bp, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %.sink, i64 128, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0.sink, ptr %i.hb, align 8
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.ac:                                            ; preds = %bb.e
  %i.hc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.ad:                                            ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE5rangeB17_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB17_EEB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !238 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !10  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  br label %bb.c

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i: ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1952
  %i.f = load ptr, ptr %i.e, align 8, !noalias !240, !nonnull !10, !noundef !10
  %i.g = add i64 %i.h, -1
  br label %bb.c

default.unreachable:                              ; preds = %.noexc.i, %.noexc99.i
  unreachable

bb.c:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i, %bb.b
  %i.h = phi i64 [ %i.g, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %.sroa.0.0187.i.i = phi ptr [ %i.f, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i ], [ %i.b, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1946
  %i.k = load i16, ptr %i.j, align 2, !noalias !241, !noundef !10 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.l, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i94.i.i153, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i94.i.i153 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i93.i.i152 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.q = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i94.i.i153)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !239

.noexc.i:                                         ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i
  %i.r = add nuw nsw i64 %.sroa.8.0.i.i93.i.i152, 1 ; 3 uses
  switch i8 %i.q, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread
    i8 1, label %bb.d
  ]

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i: ; preds = %bb.d, %.noexc.i, %bb.c
  %.sroa.097.0.jt0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i93.i.i152, %.noexc.i ] ; 4 uses
  %.not.jt0.i.i = icmp eq i64 %.sroa.097.0.jt0.i.i, 0
  %i.s = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %.not.jt0.i.i, label %bb.e, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i

bb.e:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i
  br i1 %i.s, label %.loopexit135.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.l, !noalias !239

.loopexit135.i:                                   ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1D_EEB2A_.exit unwind label %bb.f, !noalias !239

bb.f:                                             ; preds = %.loopexit135.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g, !noalias !239

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !239
  unreachable

common.resume:                                    ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.h ], [ %i.t, %bb.f ], [ %i.cy, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i
  br i1 %i.s, label %._crit_edge.i, label %.preheader.i

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread: ; preds = %.noexc.i
  %.not231.i9 = icmp eq i64 %i.h, 0
  br i1 %.not231.i9, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread: ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1952 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.x = add i64 %i.h, -1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.r
  %i.z = load ptr, ptr %i.y, align 8, !noalias !239, !nonnull !10, !noundef !10
  br label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i

._crit_edge.i:                                    ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i
  %.sroa.066.0.lcssa.i = phi ptr [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i ], [ %i.bp, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread ], [ %.ph333.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i ], [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader ], [ %.lcssa161.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ], [ %i.bt, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i ]
  %.sroa.075.0.lcssa.i = phi ptr [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i ], [ %i.bs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread ], [ %.ph.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i ], [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader ], [ %.lcssa.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ], [ %i.bv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i ]
  %.sroa.081.0.lcssa.i = phi i64 [ %.sroa.097.0.jt0.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ], [ %i.r, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread ], [ %.sroa.0105.0.jt3.ph.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.sroa.0105.0.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i8 0, i64 16, i1 false), !alias.scope !239
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1D_EEB2A_.exit unwind label %bb.h, !noalias !239

bb.h:                                             ; preds = %._crit_edge.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i, !noalias !239

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !239
  unreachable

.preheader.i:                                     ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1952 ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.097.0.jt0.i.i, 12
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.097.0.jt0.i.i
  br label %bb.j

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.bt, i64 1952
  %i.ag = getelementptr inbounds nuw i8, ptr %i.bv, i64 1952
  %i.ah = icmp samesign ult i64 %.sroa.0105.0.jt0.i, 12
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.0105.0.jt0.i
  br label %bb.j

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i
  %i.aj = phi ptr [ %i.bp, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ]
  %i.ak = phi i64 [ %i.bq, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.unr195, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ]
  %i.al = phi ptr [ %i.bs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.unr196, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1952
  %i.an = load ptr, ptr %i.am, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1952
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1952
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1952
  %i.at = load ptr, ptr %i.as, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1952
  %i.av = load ptr, ptr %i.au, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1952
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1952
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1952
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1952
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1952
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1952
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1952
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1952
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1952
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !239, !nonnull !10, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1952
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 2 uses
  %i.bq = add i64 %i.ak, -8                       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1952
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 2 uses
  %.not.jt3.i.7 = icmp eq i64 %i.bq, 0
  br i1 %.not.jt3.i.7, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i, !llvm.loop !232

bb.j:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i, %.preheader.i
  %.in = phi ptr [ %i.ai, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i ], [ %i.ae, %.preheader.i ]
  %.in12 = phi i64 [ %i.bu, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i ], [ %i.h, %.preheader.i ]
  %.in13 = phi ptr [ %i.af, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i ], [ %i.ac, %.preheader.i ]
  %i.bt = load ptr, ptr %.in13, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 3 uses
  %i.bu = add i64 %.in12, -1                      ; 3 uses
  %i.bv = load ptr, ptr %.in, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1946
  %i.by = load i16, ptr %i.bx, align 2, !noalias !242, !noundef !10 ; 2 uses
  %i.bz = zext i16 %i.by to i64                   ; 3 uses
  %.idx159 = mul nuw nsw i64 %i.bz, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx159
  %i.cb = icmp eq i16 %i.by, 0
  br i1 %i.cb, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i

bb.k:                                             ; preds = %.noexc99.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i97.i156, i64 24 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ca
  br i1 %i.cd, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i: ; preds = %bb.j, %bb.k
  %.sroa.0.01.i.i97.i156 = phi ptr [ %i.cc, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %.sroa.8.0.i.i96.i155 = phi i64 [ %i.cf, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ce = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i97.i156)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !239

.noexc99.i:                                       ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i
  %i.cf = add nuw nsw i64 %.sroa.8.0.i.i96.i155, 1 ; 2 uses
  switch i8 %i.ce, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i
    i8 0, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i
    i8 1, label %bb.k
  ]

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i: ; preds = %.noexc99.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread
  %.ph.i = phi ptr [ %i.z, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.bv, %.noexc99.i ] ; 2 uses
  %.ph332.i = phi i64 [ %i.x, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.bu, %.noexc99.i ] ; 3 uses
  %.ph333.i = phi ptr [ %i.w, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.bt, %.noexc99.i ] ; 2 uses
  %.sroa.0105.0.jt3.ph.i = phi i64 [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.cf, %.noexc99.i ] ; 3 uses
  %.not.jt3.i46 = icmp eq i64 %.ph332.i, 0
  br i1 %.not.jt3.i46, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.ph333.i, i64 1952
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 3 uses
  %i.ci = add i64 %.ph332.i, -1                   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.ph.i, i64 1952
  %i.ck = icmp samesign ult i64 %.sroa.0105.0.jt3.ph.i, 12
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.sroa.0105.0.jt3.ph.i
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 3 uses
  %.not.jt3.i.peel = icmp eq i64 %i.ci, 0
  br i1 %.not.jt3.i.peel, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader
  %i.cn = add i64 %.ph332.i, -2
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol
  %i.co = phi ptr [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %i.cp = phi i64 [ %i.ct, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ %i.ci, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %i.cq = phi ptr [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1952
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 3 uses
  %i.ct = add i64 %i.cp, -1                       ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1952
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !239, !nonnull !10, !noundef !10 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol, !llvm.loop !237

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160
  %.lcssa161.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.unr = phi ptr [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.unr195 = phi i64 [ %i.ci, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.ct, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.unr196 = phi ptr [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %i.cw = icmp ult i64 %i.cn, 7
  br i1 %i.cw, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i: ; preds = %bb.k, %.noexc99.i, %bb.j
  %.sroa.0105.0.jt0.i = phi i64 [ %i.bz, %bb.j ], [ %i.bz, %bb.k ], [ %.sroa.8.0.i.i96.i155, %.noexc99.i ] ; 3 uses
  %.not.jt0.i = icmp eq i64 %i.bu, 0
  br i1 %.not.jt0.i, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !239
  unreachable

_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1D_EEB2A_.exit: ; preds = %.loopexit135.i, %._crit_edge.i
  %.sroa.9.0 = phi i64 [ undef, %.loopexit135.i ], [ %.sroa.081.0.lcssa.i, %._crit_edge.i ]
  %.sroa.6.0 = phi ptr [ null, %.loopexit135.i ], [ %.sroa.075.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ null, %.loopexit135.i ], [ %.sroa.066.0.lcssa.i, %._crit_edge.i ]
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE6removeB17_EB24_:bb.a
  store i64 0, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !281
  %.sroa.511.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.de, ptr %.sroa.511.0..sroa_idx.i.i.i.i, align 8, !noalias !281
  call fastcc void @_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBX_7NodeRefNtNtBX_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1u_4LeafENtB1u_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4a_13OccupiedEntryB1K_B2D_E9remove_kv0NtNtBb_5alloc6GlobalEB2H_(ptr noalias noundef align 8 captures(none) dereferenceable(200) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull dereferenceable(1) %i.g), !noalias !282
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.sroa.017.0.copyload.i.i.i.i = load ptr, ptr %i.df, align 8, !noalias !281, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.418.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %.sroa.418.0.copyload.i.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i.i.i, align 8, !noalias !281 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !281 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.copyload.i.i.i.i, i64 1946
  %i.dh = load i16, ptr %i.dg, align 2, !noalias !283, !noundef !10
  %i.di = zext i16 %i.dh to i64
  %i.dj = icmp ult i64 %.sroa.5.0.copyload.i.i.i.i, %i.di
  br i1 %i.dj, label %bb.h, label %.lr.ph.i16.i.i.i.i

.lr.ph.i16.i.i.i.i:                               ; preds = %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1j_14LeafOrInternalE14last_leaf_edgeB2w_.exit.i.i.i.i, %.lr.ph.i16.i.i.i.i
  %.sroa.0.022.i.i.i.i.i = phi ptr [ %i.dk, %.lr.ph.i16.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1j_14LeafOrInternalE14last_leaf_edgeB2w_.exit.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i16.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1j_14LeafOrInternalE14last_leaf_edgeB2w_.exit.i.i.i.i ]
  %i.dk = load ptr, ptr %.sroa.0.022.i.i.i.i.i, align 8, !noalias !284, !nonnull !10, !noundef !10 ; 3 uses
  %i.dl = add i64 %.sroa.5.021.i.i.i.i.i, 1       ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i, i64 1944
  %i.dn = load i16, ptr %i.dm, align 8, !noalias !284 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 1946
  %i.dp = load i16, ptr %i.do, align 2, !noalias !283, !noundef !10
  %i.dq = icmp ult i16 %i.dn, %i.dp
  br i1 %i.dq, label %._crit_edge.loopexit.i.i.i.i.i, label %.lr.ph.i16.i.i.i.i

._crit_edge.loopexit.i.i.i.i.i:                   ; preds = %.lr.ph.i16.i.i.i.i
  %i.dr = zext i16 %i.dn to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1j_14LeafOrInternalE14last_leaf_edgeB2w_.exit.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.dr, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1j_14LeafOrInternalE14last_leaf_edgeB2w_.exit.i.i.i.i ] ; 3 uses
  %.sroa.531.0.i.i.i.i = phi i64 [ %i.dl, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.418.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1j_14LeafOrInternalE14last_leaf_edgeB2w_.exit.i.i.i.i ]
  %.sroa.030.0.i.i.i.i = phi ptr [ %i.dk, %._crit_edge.loopexit.i.i.i.i.i ], [ %.sroa.017.0.copyload.i.i.i.i, %_RNvMsn_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB7_4node7NodeRefNtNtBZ_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1j_14LeafOrInternalE14last_leaf_edgeB2w_.exit.i.i.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 8
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.030.0.i.i.i.i, i64 272
  %i.dv = getelementptr inbounds nuw [152 x i8], ptr %i.du, i64 %.sroa.7.0.i.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.dt, i64 24, i1 false), !noalias !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !279
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.dw, ptr noundef nonnull align 8 dereferenceable(152) %i.dv, i64 152, i1 false), !noalias !279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.dv, ptr noundef nonnull readonly align 8 dereferenceable(152) %i.ac, i64 152, i1 false), !noalias !279
  %i.dx = icmp eq i64 %.sroa.531.0.i.i.i.i, 0
  br i1 %i.dx, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4j_13OccupiedEntryB1L_B2E_E9remove_kv0NtNtBc_5alloc6GlobalEB2I_.exit.i.i.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4j_13OccupiedEntryB1L_B2E_E9remove_kv0NtNtBc_5alloc6GlobalEB2I_.exit.i.i.loopexit.i

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4j_13OccupiedEntryB1L_B2E_E9remove_kv0NtNtBc_5alloc6GlobalEB2I_.exit.i.i.loopexit.i: ; preds = %bb.h
  %i.dy = icmp samesign ult i64 %.sroa.7.0.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.dy)
  br label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4j_13OccupiedEntryB1L_B2E_E9remove_kv0NtNtBc_5alloc6GlobalEB2I_.exit.i.i.i

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4j_13OccupiedEntryB1L_B2E_E9remove_kv0NtNtBc_5alloc6GlobalEB2I_.exit.i.i.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4j_13OccupiedEntryB1L_B2E_E9remove_kv0NtNtBc_5alloc6GlobalEB2I_.exit.i.i.loopexit.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.e, ptr noundef nonnull align 8 dereferenceable(176) %i.a, i64 176, i1 false), !noalias !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !277
  br label %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4n_13OccupiedEntryB1I_B2B_E9remove_kv0NtNtB9_5alloc6GlobalEB2F_.exit.i.i

_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4n_13OccupiedEntryB1I_B2B_E9remove_kv0NtNtB9_5alloc6GlobalEB2F_.exit.i.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB8_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1v_8InternalENtB1v_2KVE18remove_internal_kvNCNvMs5_NtNtB8_3map5entryINtB4j_13OccupiedEntryB1L_B2E_E9remove_kv0NtNtBc_5alloc6GlobalEB2I_.exit.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.f, ptr noundef nonnull align 8 dereferenceable(176) %i.e, i64 176, i1 false), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !276
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !273, !noalias !286, !noundef !10
  %i.eb = add i64 %i.ea, -1
  store i64 %i.eb, ptr %i.dz, align 8, !alias.scope !273, !noalias !286
  %i.ec = load i8, ptr %i.g, align 1, !range !12, !noalias !276, !noundef !10
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.i, label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit

bb.i:                                             ; preds = %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4n_13OccupiedEntryB1I_B2B_E9remove_kv0NtNtB9_5alloc6GlobalEB2F_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  %.not.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.l, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #32
          to label %.noexc.i.i unwind label %bb.k, !noalias !288

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateEEB1z_(ptr noalias noundef align 8 dereferenceable(176) %i.f) #34
          to label %common.resume unwind label %bb.m, !noalias !288

bb.l:                                             ; preds = %bb.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 1952
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !289, !nonnull !10, !noundef !10 ; 2 uses
  store ptr %i.eg, ptr %1, align 8, !alias.scope !290, !noalias !286
  %i.eh = add i64 %i.k, -1
  store i64 %i.eh, ptr %i.j, align 8, !alias.scope !290, !noalias !286
  store ptr null, ptr %i.eg, align 8, !noalias !289
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 2048, i64 noundef 8) #33, !noalias !289
  br label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit

bb.m:                                             ; preds = %bb.k
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !288
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ee, %bb.k ], [ %i.ej, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit: ; preds = %_RINvMNtNtNtCscdodAO9FK5_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBV_7NodeRefNtNtBV_6marker3MutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1s_14LeafOrInternalENtB1s_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB4n_13OccupiedEntryB1I_B2B_E9remove_kv0NtNtB9_5alloc6GlobalEB2F_.exit.i.i, %bb.l
  %.sroa.0.0.copyload1 = load i64, ptr %i.f, align 8, !noalias !291 ; 2 uses
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7.0..sroa_idx2, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !276
  %.not = icmp eq i64 %.sroa.0.0.copyload1, -1
  br i1 %.not, label %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit.thread, label %bb.n

bb.n:                                             ; preds = %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7, i64 168, i1 false)
  store i64 %.sroa.0.0.copyload1, ptr %i.h, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.n
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.7, i64 16
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.el, i64 152, i1 false)
  br label %bb.q

_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit.thread: ; preds = %._crit_edge, %bb.a, %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE12remove_entryB17_EB24_.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufECsjNt1Wzngcv_9ty_server.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateE9range_mutB17_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB17_EEB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !306 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !10  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  br label %bb.c

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i.i: ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1952
  %i.f = load ptr, ptr %i.e, align 8, !noalias !308, !nonnull !10, !noundef !10
  %i.g = add i64 %i.h, -1
  br label %bb.c

default.unreachable:                              ; preds = %.noexc.i, %.noexc99.i
  unreachable

bb.c:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i.i, %bb.b
  %i.h = phi i64 [ %i.g, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %.sroa.0.0187.i.i = phi ptr [ %i.f, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i.i ], [ %i.b, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1946
  %i.k = load i16, ptr %i.j, align 2, !noalias !309, !noundef !10 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.l, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i94.i.i153, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i94.i.i153 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i93.i.i152 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.q = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i94.i.i153)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !307

.noexc.i:                                         ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i
  %i.r = add nuw nsw i64 %.sroa.8.0.i.i93.i.i152, 1 ; 3 uses
  switch i8 %i.q, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i.i
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i.thread
    i8 1, label %bb.d
  ]

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i.i: ; preds = %bb.d, %.noexc.i, %bb.c
  %.sroa.097.0.jt0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i93.i.i152, %.noexc.i ] ; 4 uses
  %.not.jt0.i.i = icmp eq i64 %.sroa.097.0.jt0.i.i, 0
  %i.s = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %.not.jt0.i.i, label %bb.e, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i

bb.e:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i.i
  br i1 %i.s, label %.loopexit135.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.l, !noalias !307

.loopexit135.i:                                   ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1E_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1E_EEB2B_.exit unwind label %bb.f, !noalias !307

bb.f:                                             ; preds = %.loopexit135.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g, !noalias !307

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !307
  unreachable

common.resume:                                    ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.h ], [ %i.t, %bb.f ], [ %i.cy, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i.i
  br i1 %i.s, label %._crit_edge.i, label %.preheader.i

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i.thread: ; preds = %.noexc.i
  %.not231.i9 = icmp eq i64 %i.h, 0
  br i1 %.not231.i9, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.i.thread

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.i.thread: ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i.thread
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1952 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.x = add i64 %i.h, -1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.r
  %i.z = load ptr, ptr %i.y, align 8, !noalias !307, !nonnull !10, !noundef !10
  br label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i

._crit_edge.i:                                    ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i.thread, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i
  %.sroa.066.0.lcssa.i = phi ptr [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i ], [ %i.bp, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i ], [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i.thread ], [ %.ph333.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i ], [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader ], [ %.lcssa161.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit ], [ %i.bt, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i ]
  %.sroa.075.0.lcssa.i = phi ptr [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i ], [ %i.bs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i ], [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i.thread ], [ %.ph.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i ], [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader ], [ %.lcssa.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit ], [ %i.bv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i ]
  %.sroa.081.0.lcssa.i = phi i64 [ %.sroa.097.0.jt0.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit ], [ %i.r, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i.thread ], [ %.sroa.0105.0.jt3.ph.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i ], [ %.sroa.0105.0.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i8 0, i64 16, i1 false), !alias.scope !307
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1E_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1E_EEB2B_.exit unwind label %bb.h, !noalias !307

bb.h:                                             ; preds = %._crit_edge.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i, !noalias !307

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !307
  unreachable

.preheader.i:                                     ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1A_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1A_EEB2x_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1952 ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.097.0.jt0.i.i, 12
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.097.0.jt0.i.i
  br label %bb.j

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.bt, i64 1952
  %i.ag = getelementptr inbounds nuw i8, ptr %i.bv, i64 1952
  %i.ah = icmp samesign ult i64 %.sroa.0105.0.jt0.i, 12
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.0105.0.jt0.i
  br label %bb.j

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i
  %i.aj = phi ptr [ %i.bp, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i ], [ %.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit ]
  %i.ak = phi i64 [ %i.bq, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i ], [ %.unr195, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit ]
  %i.al = phi ptr [ %i.bs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i ], [ %.unr196, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1952
  %i.an = load ptr, ptr %i.am, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1952
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1952
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1952
  %i.at = load ptr, ptr %i.as, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1952
  %i.av = load ptr, ptr %i.au, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1952
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1952
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1952
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1952
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1952
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1952
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1952
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1952
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1952
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !307, !nonnull !10, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1952
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 2 uses
  %i.bq = add i64 %i.ak, -8                       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1952
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 2 uses
  %.not.jt3.i.7 = icmp eq i64 %i.bq, 0
  br i1 %.not.jt3.i.7, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i, !llvm.loop !300

bb.j:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i, %.preheader.i
  %.in = phi ptr [ %i.ai, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i ], [ %i.ae, %.preheader.i ]
  %.in12 = phi i64 [ %i.bu, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i ], [ %i.h, %.preheader.i ]
  %.in13 = phi ptr [ %i.af, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i ], [ %i.ac, %.preheader.i ]
  %i.bt = load ptr, ptr %.in13, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 3 uses
  %i.bu = add i64 %.in12, -1                      ; 3 uses
  %i.bv = load ptr, ptr %.in, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1946
  %i.by = load i16, ptr %i.bx, align 2, !noalias !310, !noundef !10 ; 2 uses
  %i.bz = zext i16 %i.by to i64                   ; 3 uses
  %.idx159 = mul nuw nsw i64 %i.bz, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx159
  %i.cb = icmp eq i16 %i.by, 0
  br i1 %i.cb, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i

bb.k:                                             ; preds = %.noexc99.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i97.i156, i64 24 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ca
  br i1 %i.cd, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i: ; preds = %bb.j, %bb.k
  %.sroa.0.01.i.i97.i156 = phi ptr [ %i.cc, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %.sroa.8.0.i.i96.i155 = phi i64 [ %i.cf, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ce = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i97.i156)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !307

.noexc99.i:                                       ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i
  %i.cf = add nuw nsw i64 %.sroa.8.0.i.i96.i155, 1 ; 2 uses
  switch i8 %i.ce, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i
    i8 0, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i
    i8 1, label %bb.k
  ]

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i: ; preds = %.noexc99.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.i.thread
  %.ph.i = phi ptr [ %i.z, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.i.thread ], [ %i.bv, %.noexc99.i ] ; 2 uses
  %.ph332.i = phi i64 [ %i.x, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.i.thread ], [ %i.bu, %.noexc99.i ] ; 3 uses
  %.ph333.i = phi ptr [ %i.w, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.i.thread ], [ %i.bt, %.noexc99.i ] ; 2 uses
  %.sroa.0105.0.jt3.ph.i = phi i64 [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.i.thread ], [ %i.cf, %.noexc99.i ] ; 3 uses
  %.not.jt3.i46 = icmp eq i64 %.ph332.i, 0
  br i1 %.not.jt3.i46, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt3.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.ph333.i, i64 1952
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 3 uses
  %i.ci = add i64 %.ph332.i, -1                   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.ph.i, i64 1952
  %i.ck = icmp samesign ult i64 %.sroa.0105.0.jt3.ph.i, 12
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.sroa.0105.0.jt3.ph.i
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 3 uses
  %.not.jt3.i.peel = icmp eq i64 %i.ci, 0
  br i1 %.not.jt3.i.peel, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader
  %i.cn = add i64 %.ph332.i, -2
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol
  %i.co = phi ptr [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ], [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ]
  %i.cp = phi i64 [ %i.ct, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ], [ %i.ci, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ]
  %i.cq = phi ptr [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ], [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1952
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 3 uses
  %i.ct = add i64 %i.cp, -1                       ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1952
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !307, !nonnull !10, !noundef !10 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol, !llvm.loop !305

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol.loopexit: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160
  %.lcssa161.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ], [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ], [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ]
  %.unr = phi ptr [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ], [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ]
  %.unr195 = phi i64 [ %i.ci, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ], [ %i.ct, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ]
  %.unr196 = phi ptr [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.preheader160 ], [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i.prol ]
  %i.cw = icmp ult i64 %i.cn, 7
  br i1 %i.cw, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt3.i

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_upper_bound_indexB1B_EB2y_.exit.jt0.i: ; preds = %bb.k, %.noexc99.i, %bb.j
  %.sroa.0105.0.jt0.i = phi i64 [ %i.bz, %bb.j ], [ %i.bz, %bb.k ], [ %.sroa.8.0.i.i96.i155, %.noexc99.i ] ; 3 uses
  %.not.jt0.i = icmp eq i64 %i.bu, 0
  br i1 %.not.jt0.i, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1i_14LeafOrInternalE22find_lower_bound_indexB1B_EB2y_.exit.jt0.i

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !307
  unreachable

_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1E_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1E_EEB2B_.exit: ; preds = %.loopexit135.i, %._crit_edge.i
  %.sroa.9.0 = phi i64 [ undef, %.loopexit135.i ], [ %.sroa.081.0.lcssa.i, %._crit_edge.i ]
  %.sroa.6.0 = phi ptr [ null, %.loopexit135.i ], [ %.sroa.075.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ null, %.loopexit135.i ], [ %.sroa.066.0.lcssa.i, %._crit_edge.i ]
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server.exit: ; preds = %bb.m
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.p

bb.p:                                             ; preds = %_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker6ValMutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session12ProjectStateNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1E_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1E_EEB2B_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceE3getB17_EB24_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !315 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !10  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !10
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.3.0.i = phi i64 [ %i.c, %bb.b ], [ %i.s, %bb.e ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.a, %bb.b ], [ %i.r, %bb.e ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1418
  %i.f = load i16, ptr %i.e, align 2, !noalias !316, !noundef !10 ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.g, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.i = icmp eq i16 %i.f, 0
  br i1 %i.i, label %.loopexit.loopexit.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i

bb.d:                                             ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i24, i64 24 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.8.0.i.i23, 1
  %i.l = icmp eq ptr %i.j, %i.h
  br i1 %i.l, label %.loopexit.loopexit.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i24 = phi ptr [ %i.j, %bb.d ], [ %i.d, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i23 = phi i64 [ %i.k, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.m = tail call noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i24), !noalias !317
  switch i8 %i.m, label %default.unreachable [
    i8 -1, label %.loopexit.loopexit.i.i
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit
    i8 1, label %bb.d
  ]

default.unreachable:                              ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i
  unreachable

.loopexit.loopexit.i.i:                           ; preds = %bb.d, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i, %bb.c
  %.sroa.4.0.i.ph.i = phi i64 [ %i.g, %bb.c ], [ %i.g, %bb.d ], [ %.sroa.8.0.i.i23, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.3.0.i, 0
  br i1 %i.n, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit.thread, label %bb.e

bb.e:                                             ; preds = %.loopexit.loopexit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1424
  %i.p = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 12
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.4.0.i.ph.i
  %i.r = load ptr, ptr %i.q, align 8, !noalias !317, !nonnull !10, !noundef !10
  %i.s = add i64 %.sroa.3.0.i, -1
  br label %bb.c

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit.thread: ; preds = %.loopexit.loopexit.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.v, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit ], [ null, %.loopexit.loopexit.i.i ]
  ret ptr %.sroa.0.0

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i
  %i.t = icmp samesign ult i64 %.sroa.8.0.i.i23, 11
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 272
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %i.u, i64 %.sroa.8.0.i.i23
  br label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE11search_treeB1z_EB2w_.exit.thread
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceE5rangeB17_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB17_EEB24_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !332 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !noundef !10  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.d = load i64, ptr %i.c, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  br label %bb.c

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i: ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1424
  %i.f = load ptr, ptr %i.e, align 8, !noalias !334, !nonnull !10, !noundef !10
  %i.g = add i64 %i.h, -1
  br label %bb.c

default.unreachable:                              ; preds = %.noexc.i, %.noexc99.i
  unreachable

bb.c:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i, %bb.b
  %i.h = phi i64 [ %i.g, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i ], [ %i.d, %bb.b ] ; 5 uses
  %.sroa.0.0187.i.i = phi ptr [ %i.f, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i ], [ %i.b, %bb.b ] ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1418
  %i.k = load i16, ptr %i.j, align 2, !noalias !335, !noundef !10 ; 2 uses
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %.idx = mul nuw nsw i64 %i.l, 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.n = icmp eq i16 %i.k, 0
  br i1 %i.n, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i94.i.i153, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.01.i.i94.i.i153 = phi ptr [ %i.o, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %.sroa.8.0.i.i93.i.i152 = phi i64 [ %i.r, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.q = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i94.i.i153)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !333

.noexc.i:                                         ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i
  %i.r = add nuw nsw i64 %.sroa.8.0.i.i93.i.i152, 1 ; 3 uses
  switch i8 %i.q, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i
    i8 0, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread
    i8 1, label %bb.d
  ]

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i: ; preds = %bb.d, %.noexc.i, %bb.c
  %.sroa.097.0.jt0.i.i = phi i64 [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %.sroa.8.0.i.i93.i.i152, %.noexc.i ] ; 4 uses
  %.not.jt0.i.i = icmp eq i64 %.sroa.097.0.jt0.i.i, 0
  %i.s = icmp eq i64 %i.h, 0                      ; 2 uses
  br i1 %.not.jt0.i.i, label %bb.e, label %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i

bb.e:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i
  br i1 %i.s, label %.loopexit135.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i, %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i95.i.i
  %lpad.loopexit.split-lp162 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #34
          to label %common.resume unwind label %bb.l, !noalias !333

.loopexit135.i:                                   ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1D_EEB2A_.exit unwind label %bb.f, !noalias !333

bb.f:                                             ; preds = %.loopexit135.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.g, !noalias !333

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !333
  unreachable

common.resume:                                    ; preds = %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.split-lp162, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.aa, %bb.h ], [ %i.t, %bb.f ], [ %i.cy, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i.i
  br i1 %i.s, label %._crit_edge.i, label %.preheader.i

_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread: ; preds = %.noexc.i
  %.not231.i9 = icmp eq i64 %i.h, 0
  br i1 %.not231.i9, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread: ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1424 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.x = add i64 %i.h, -1
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.r
  %i.z = load ptr, ptr %i.y, align 8, !noalias !333, !nonnull !10, !noundef !10
  br label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i

._crit_edge.i:                                    ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i
  %.sroa.066.0.lcssa.i = phi ptr [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i ], [ %i.bp, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread ], [ %.ph333.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i ], [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader ], [ %.lcssa161.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ], [ %i.bt, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i ]
  %.sroa.075.0.lcssa.i = phi ptr [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i ], [ %i.bs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.sroa.0.0187.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread ], [ %.ph.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i ], [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader ], [ %.lcssa.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ], [ %i.bv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i ]
  %.sroa.081.0.lcssa.i = phi i64 [ %.sroa.097.0.jt0.i.i, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ], [ %i.r, %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i.thread ], [ %.sroa.0105.0.jt3.ph.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.sroa.0105.0.jt0.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i8 0, i64 16, i1 false), !alias.scope !333
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1D_EEB2A_.exit unwind label %bb.h, !noalias !333

bb.h:                                             ; preds = %._crit_edge.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i, !noalias !333

bb.i:                                             ; preds = %bb.h
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !333
  unreachable

.preheader.i:                                     ; preds = %_RINvMs_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBX_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1h_14LeafOrInternalE27search_tree_for_bifurcationB1z_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1z_EEB2w_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0187.i.i, i64 1424 ; 2 uses
  %i.ad = icmp samesign ult i64 %.sroa.097.0.jt0.i.i, 12
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.097.0.jt0.i.i
  br label %bb.j

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.bt, i64 1424
  %i.ag = getelementptr inbounds nuw i8, ptr %i.bv, i64 1424
  %i.ah = icmp samesign ult i64 %.sroa.0105.0.jt0.i, 12
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.sroa.0105.0.jt0.i
  br label %bb.j

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i
  %i.aj = phi ptr [ %i.bp, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.unr, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ]
  %i.ak = phi i64 [ %i.bq, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.unr195, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ]
  %i.al = phi ptr [ %i.bs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i ], [ %.unr196, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 1424
  %i.an = load ptr, ptr %i.am, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1424
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1424
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1424
  %i.at = load ptr, ptr %i.as, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1424
  %i.av = load ptr, ptr %i.au, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1424
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 1424
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 1424
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1424
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 1424
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1424
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 1424
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 1424
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 1424
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !333, !nonnull !10, !noundef !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1424
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 2 uses
  %i.bq = add i64 %i.ak, -8                       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1424
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 2 uses
  %.not.jt3.i.7 = icmp eq i64 %i.bq, 0
  br i1 %.not.jt3.i.7, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i, !llvm.loop !326

bb.j:                                             ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i, %.preheader.i
  %.in = phi ptr [ %i.ai, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i ], [ %i.ae, %.preheader.i ]
  %.in12 = phi i64 [ %i.bu, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i ], [ %i.h, %.preheader.i ]
  %.in13 = phi ptr [ %i.af, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i ], [ %i.ac, %.preheader.i ]
  %i.bt = load ptr, ptr %.in13, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 3 uses
  %i.bu = add i64 %.in12, -1                      ; 3 uses
  %i.bv = load ptr, ptr %.in, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1418
  %i.by = load i16, ptr %i.bx, align 2, !noalias !336, !noundef !10 ; 2 uses
  %i.bz = zext i16 %i.by to i64                   ; 3 uses
  %.idx159 = mul nuw nsw i64 %i.bz, 24
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx159
  %i.cb = icmp eq i16 %i.by, 0
  br i1 %i.cb, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i

bb.k:                                             ; preds = %.noexc99.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i97.i156, i64 24 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ca
  br i1 %i.cd, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i, label %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i

_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i: ; preds = %bb.j, %bb.k
  %.sroa.0.01.i.i97.i156 = phi ptr [ %i.cc, %bb.k ], [ %i.bw, %bb.j ] ; 2 uses
  %.sroa.8.0.i.i96.i155 = phi i64 [ %i.cf, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.ce = invoke noundef range(i8 -1, 2) i8 @_RNvXs1H_CshFWUtO0bu8g_6caminoNtB6_11Utf8PathBufNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.01.i.i97.i156)
          to label %.noexc99.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !333

.noexc99.i:                                       ; preds = %_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEENtNtNtB8_6traits8iterator8Iterator4nextCsjNt1Wzngcv_9ty_server.exit.i.i98.i
  %i.cf = add nuw nsw i64 %.sroa.8.0.i.i96.i155, 1 ; 2 uses
  switch i8 %i.ce, label %default.unreachable [
    i8 -1, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i
    i8 0, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i
    i8 1, label %bb.k
  ]

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i: ; preds = %.noexc99.i, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread
  %.ph.i = phi ptr [ %i.z, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.bv, %.noexc99.i ] ; 2 uses
  %.ph332.i = phi i64 [ %i.x, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.bu, %.noexc99.i ] ; 3 uses
  %.ph333.i = phi ptr [ %i.w, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.bt, %.noexc99.i ] ; 2 uses
  %.sroa.0105.0.jt3.ph.i = phi i64 [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.i.thread ], [ %i.cf, %.noexc99.i ] ; 3 uses
  %.not.jt3.i46 = icmp eq i64 %.ph332.i, 0
  br i1 %.not.jt3.i46, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt3.preheader.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.ph333.i, i64 1424
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 3 uses
  %i.ci = add i64 %.ph332.i, -1                   ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.ph.i, i64 1424
  %i.ck = icmp samesign ult i64 %.sroa.0105.0.jt3.ph.i, 12
  call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.sroa.0105.0.jt3.ph.i
  %i.cm = load ptr, ptr %i.cl, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 3 uses
  %.not.jt3.i.peel = icmp eq i64 %i.ci, 0
  br i1 %.not.jt3.i.peel, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader
  %i.cn = add i64 %.ph332.i, -2
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol
  %i.co = phi ptr [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %i.cp = phi i64 [ %i.ct, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ %i.ci, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %i.cq = phi ptr [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %prol.iter = phi i64 [ %prol.iter.next, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ], [ 0, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 1424
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 3 uses
  %i.ct = add i64 %i.cp, -1                       ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 1424
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !333, !nonnull !10, !noundef !10 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol, !llvm.loop !331

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol.loopexit: ; preds = %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160
  %.lcssa161.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.unr = phi ptr [ %i.ch, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cs, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.unr195 = phi i64 [ %i.ci, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.ct, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %.unr196 = phi ptr [ %i.cm, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.preheader160 ], [ %i.cv, %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i.prol ]
  %i.cw = icmp ult i64 %i.cn, 7
  br i1 %i.cw, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt3.i

_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_upper_bound_indexB1A_EB2x_.exit.jt0.i: ; preds = %bb.k, %.noexc99.i, %bb.j
  %.sroa.0105.0.jt0.i = phi i64 [ %i.bz, %bb.j ], [ %i.bz, %bb.k ], [ %.sroa.8.0.i.i96.i155, %.noexc99.i ] ; 3 uses
  %.not.jt0.i = icmp eq i64 %i.bu, 0
  br i1 %.not.jt0.i, label %._crit_edge.i, label %_RINvMs0_NtNtNtCscdodAO9FK5_5alloc11collections5btree6searchINtNtB8_4node7NodeRefNtNtBY_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1i_14LeafOrInternalE22find_lower_bound_indexB1A_EB2x_.exit.jt0.i

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #35, !noalias !333
  unreachable

_RINvMsd_NtNtNtCscdodAO9FK5_5alloc11collections5btree8navigateINtNtB8_4node7NodeRefNtNtB10_6marker5ImmutNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufNtNtCsjNt1Wzngcv_9ty_server7session9WorkspaceNtB1k_14LeafOrInternalE30find_leaf_edges_spanning_rangeB1D_INtNtNtCs4NRVxsYgnAr_4core3ops5range16RangeToInclusiveB1D_EEB2A_.exit: ; preds = %.loopexit135.i, %._crit_edge.i
  %.sroa.9.0 = phi i64 [ undef, %.loopexit135.i ], [ %.sroa.081.0.lcssa.i, %._crit_edge.i ]
  %.sroa.6.0 = phi ptr [ null, %.loopexit135.i ], [ %.sroa.075.0.lcssa.i, %._crit_edge.i ]
  %.sroa.0.0 = phi ptr [ null, %.loopexit135.i ], [ %.sroa.066.0.lcssa.i, %._crit_edge.i ]
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !333
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %.sroa.54.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsjNt1Wzngcv_9ty_server(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtB4_3ops5range16RangeToInclusiveNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufEECsjNt1Wzngcv_9ty_server.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_1
