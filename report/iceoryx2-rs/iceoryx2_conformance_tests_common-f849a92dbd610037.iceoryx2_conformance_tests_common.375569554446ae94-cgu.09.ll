Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_conformance_tests_common-f849a92dbd610037.iceoryx2_conformance_tests_common.375569554446ae94-cgu.09?download=true
inline.NumInlined: 3519
inline.NumDeleted: 992
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 122
begin_hunk_0_@_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB9_7set_val9SetValZSTE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 184
  store i16 %i.bp, ptr %i.bq, align 8, !noalias !220
  %i.br = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bl
  %i.bt = load ptr, ptr %i.bs, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 176
  store ptr %i.m, ptr %i.bu, align 8, !noalias !220
  %i.bv = trunc nuw nsw i64 %i.bl to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 184
  store i16 %i.bv, ptr %i.bw, align 8, !noalias !220
  %i.bx = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.by = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.br
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 176
  store ptr %i.m, ptr %i.cb, align 8, !noalias !220
  %i.cc = trunc nuw nsw i64 %i.br to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 184
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !220
  %exitcond.not.i.i.3 = icmp eq i64 %i.bx, %i.ab
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ce = load i16, ptr %i.z, align 2, !noalias !220, !noundef !5
  %i.cf = add i16 %i.ce, -1
  store i16 %i.cf, ptr %i.z, align 2, !noalias !220
  %i.cg = icmp ugt i64 %i.o, 1
  br i1 %i.cg, label %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB4_7set_val9SetValZSTEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B2d_NtB3S_14LeafOrInternalEB3g_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB4_7set_val9SetValZSTEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 6 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.w
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.ck = shl nuw nsw i64 %i.v, 3
  %i.cl = add nuw nsw i64 %i.ck, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.cj, i64 %i.cl, i1 false), !alias.scope !225, !noalias !220
  %i.cm = add nuw nsw i64 %i.v, 1
  %xtraiter11 = and i64 %i.cm, 3                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB4_7set_val9SetValZSTEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.cn, %.lr.ph.i5.i.prol ], [ %i.w, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB4_7set_val9SetValZSTEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ] ; 4 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB4_7set_val9SetValZSTEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ]
  %i.cn = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.co = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.sroa.0.06.i6.i.prol
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 176
  store ptr %i.c, ptr %i.cr, align 8, !noalias !220
  %i.cs = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 184
  store i16 %i.cs, ptr %i.ct, align 8, !noalias !220
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !219

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB4_7set_val9SetValZSTEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %i.w, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB4_7set_val9SetValZSTEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ], [ %i.cn, %.lr.ph.i5.i.prol ]
  %i.cu = icmp ult i16 %i.u, 3
  br i1 %i.cu, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B2d_NtB3S_14LeafOrInternalEB3g_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.dn, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.cv = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.sroa.0.06.i6.i
  %i.cx = load ptr, ptr %i.cw, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 176
  store ptr %i.c, ptr %i.cy, align 8, !noalias !220
  %i.cz = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 184
  store i16 %i.cz, ptr %i.da, align 8, !noalias !220
  %i.db = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cv
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 176
  store ptr %i.c, ptr %i.de, align 8, !noalias !220
  %i.df = trunc nuw nsw i64 %i.cv to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 184
  store i16 %i.df, ptr %i.dg, align 8, !noalias !220
  %i.dh = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.db
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 176
  store ptr %i.c, ptr %i.dk, align 8, !noalias !220
  %i.dl = trunc nuw nsw i64 %i.db to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 184
  store i16 %i.dl, ptr %i.dm, align 8, !noalias !220
  %i.dn = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.do = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.dh
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !220, !nonnull !5, !noundef !5 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 176
  store ptr %i.c, ptr %i.dr, align 8, !noalias !220
  %i.ds = trunc nuw nsw i64 %i.dh to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 184
  store i16 %i.ds, ptr %i.dt, align 8, !noalias !220
  %exitcond.not.i7.i.3 = icmp eq i64 %i.dh, %i.x
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B2d_NtB3S_14LeafOrInternalEB3g_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB9_7set_val9SetValZSTE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B2d_NtB3S_14LeafOrInternalEB3g_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %.sink.i = phi i64 [ 192, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ], [ 288, %.lr.ph.i5.i ], [ 288, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %.sink.i, i64 noundef 8) #22, !noalias !220
  %i.du = select i1 %i.g, i64 %i.w, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.du, %3
  store ptr %i.c, ptr %0, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.dw, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 142 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !5
  %i.e = zext i16 %i.d to i64                     ; 4 uses
  %i.f = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 142
  %i.j = load i16, ptr %i.i, align 2, !noundef !5
  %i.k = zext i16 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.k, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.l = load ptr, ptr %1, align 8, !alias.scope !245, !nonnull !5, !noundef !5 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !245, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !245, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !245, !nonnull !5, !noundef !5 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 142
  %i.t = load i16, ptr %i.s, align 2, !noalias !245, !noundef !5 ; 2 uses
  %i.u = zext i16 %i.t to i64                     ; 4 uses
  %i.v = add nuw nsw i64 %i.e, 1                  ; 7 uses
  %i.w = add nuw nsw i64 %i.v, %i.u               ; 3 uses
  %i.x = icmp samesign ult i64 %i.w, 12
  br i1 %i.x, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #24, !noalias !245
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 142 ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !245, !noundef !5
  %i.aa = zext i16 %i.z to i64                    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !245, !noundef !5 ; 6 uses
  %i.ad = trunc nuw nsw i64 %i.w to i16
  store i16 %i.ad, ptr %i.c, align 2, !noalias !245
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !246, !noalias !245, !noundef !5
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %i.ai = xor i64 %i.ac, -1
  %i.aj = add i64 %i.aa, %i.ai                    ; 2 uses
  %i.ak = shl nuw nsw i64 %i.aj, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.ah, i64 %i.ak, i1 false), !alias.scope !246, !noalias !245
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.e
  store i64 %i.ag, ptr %i.am, align 8, !noalias !245
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.v
  %i.ap = shl nuw nsw i64 %i.u, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull readonly align 8 %i.an, i64 %i.ap, i1 false), !alias.scope !247, !noalias !245
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ac ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !248, !noalias !245, !noundef !5
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  %i.au = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %i.at, i64 %i.au, i1 false), !alias.scope !248, !noalias !245
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.e
  store i32 %i.as, ptr %i.aw, align 4, !noalias !245
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.v
  %i.az = shl nuw nsw i64 %i.u, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull readonly align 8 %i.ax, i64 %i.az, i1 false), !alias.scope !249, !noalias !245
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 6 uses
  %i.bb = add i64 %i.ac, 1                        ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.bd, i64 %i.ak, i1 false), !alias.scope !250, !noalias !245
  %i.be = icmp ult i64 %i.bb, %i.aa
  br i1 %i.be, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.bf = xor i64 %i.ac, -1
  %i.bg = add i64 %i.bf, %i.aa
  %i.bh = add nsw i64 %i.aa, -2
  %i.bi = sub i64 %i.bh, %i.ac
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.bj, %.lr.ph.i.i.prol ], [ %i.bb, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bj = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.bk = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.i.prol
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.l, ptr %i.bm, align 8, !noalias !245
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 140
  store i16 %i.bn, ptr %i.bo, align 4, !noalias !245
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !240

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.bb, %.lr.ph.i.i.preheader ], [ %i.bj, %.lr.ph.i.i.prol ]
  %i.bp = icmp ult i64 %i.bi, 3
  br i1 %i.bp, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.cf, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bq = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.l, ptr %i.bs, align 8, !noalias !245
  %i.bt = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 140
  store i16 %i.bt, ptr %i.bu, align 4, !noalias !245
  %i.bv = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bq
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.l, ptr %i.bx, align 8, !noalias !245
  %i.by = trunc nuw nsw i64 %i.bq to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 140
  store i16 %i.by, ptr %i.bz, align 4, !noalias !245
  %i.ca = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bv
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.l, ptr %i.cc, align 8, !noalias !245
  %i.cd = trunc nuw nsw i64 %i.bv to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 140
  store i16 %i.cd, ptr %i.ce, align 4, !noalias !245
  %i.cf = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.cg = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ca
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.l, ptr %i.ci, align 8, !noalias !245
  %i.cj = trunc nuw nsw i64 %i.ca to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 140
  store i16 %i.cj, ptr %i.ck, align 4, !noalias !245
  %exitcond.not.i.i.3 = icmp eq i64 %i.cf, %i.aa
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.cl = load i16, ptr %i.y, align 2, !noalias !245, !noundef !5
  %i.cm = add i16 %i.cl, -1
  store i16 %i.cm, ptr %i.y, align 2, !noalias !245
  %i.cn = icmp ugt i64 %i.n, 1
  br i1 %i.cn, label %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3L_14LeafOrInternalEB39_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 6 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.v
  %i.cq = getelementptr inbounds nuw i8, ptr %i.r, i64 144
  %i.cr = add nuw nsw i64 %i.ap, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cp, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.cq, i64 %i.cr, i1 false), !alias.scope !251, !noalias !245
  %i.cs = add nuw nsw i64 %i.u, 1
  %xtraiter11 = and i64 %i.cs, 3                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.ct, %.lr.ph.i5.i.prol ], [ %i.v, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ] ; 4 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ]
  %i.ct = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.cu = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.0.06.i6.i.prol
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.cw, align 8, !noalias !245
  %i.cx = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 140
  store i16 %i.cx, ptr %i.cy, align 4, !noalias !245
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !244

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %i.v, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ], [ %i.ct, %.lr.ph.i5.i.prol ]
  %i.cz = icmp ult i16 %i.t, 3
  br i1 %i.cz, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3L_14LeafOrInternalEB39_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.dp, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.da = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.0.06.i6.i
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.dc, align 8, !noalias !245
  %i.dd = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 140
  store i16 %i.dd, ptr %i.de, align 4, !noalias !245
  %i.df = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.da
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.dh, align 8, !noalias !245
  %i.di = trunc nuw nsw i64 %i.da to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 140
  store i16 %i.di, ptr %i.dj, align 4, !noalias !245
  %i.dk = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.df
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.dm, align 8, !noalias !245
  %i.dn = trunc nuw nsw i64 %i.df to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 140
  store i16 %i.dn, ptr %i.do, align 4, !noalias !245
  %i.dp = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.dq = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.dk
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !245, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.ds, align 8, !noalias !245
  %i.dt = trunc nuw nsw i64 %i.dk to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 140
  store i16 %i.dt, ptr %i.du, align 4, !noalias !245
  %exitcond.not.i7.i.3 = icmp eq i64 %i.dk, %i.w
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3L_14LeafOrInternalEB39_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3L_14LeafOrInternalEB39_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %.sink.i = phi i64 [ 144, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ], [ 240, %.lr.ph.i5.i ], [ 240, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %.sink.i, i64 noundef 8) #22, !noalias !245
  %i.dv = select i1 %i.f, i64 %i.v, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.dv, %3
  store ptr %i.b, ptr %0, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.dx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1242 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !5
  %i.g = zext i16 %i.f to i64                     ; 4 uses
  %i.h = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1242
  %i.l = load i16, ptr %i.k, align 2, !noundef !5
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.m, %bb.b ], [ %i.g, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !273)
  %i.n = load ptr, ptr %1, align 8, !alias.scope !273, !nonnull !5, !noundef !5 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !273, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !273, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !273, !nonnull !5, !noundef !5 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1242
end_hunk_0
begin_hunk_1_@_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3H_13OccupiedEntryB1L_lE9remove_kv0NtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  br i1 %i.bd, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE15bulk_steal_leftCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d, i64 noundef 1) #22
  %i.be = add i64 %i.l, 1
  store ptr %i.f, ptr %i.e, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.z, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.be, ptr %i.bg, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call fastcc void @_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.d, i64 noundef 1, i64 noundef %i.l) #22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 2 uses
  %i.bj = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !1768, !noundef !5 ; 3 uses
  %.not.i23 = icmp eq ptr %i.bm, null
  br i1 %.not.i23, label %.sink.split, label %bb.p

bb.m:                                             ; preds = %bb.g
  call fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE16bulk_steal_rightCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c, i64 noundef 1) #22
  store ptr %i.f, ptr %i.e, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.z, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.l, ptr %i.bo, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  call fastcc void @_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.c, i64 noundef 0, i64 noundef %i.l) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.p:                                             ; preds = %bb.l
  %.sroa.21.8..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.25.8..sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.21.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.25.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 142
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !1769, !noundef !5 ; 2 uses
  %i.br = icmp ugt i16 %i.bq, 4
  br i1 %i.br, label %_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.bs = add i64 %i.bi, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %.pre = phi i16 [ %i.gw, %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ], [ %i.bq, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.0.i88 = phi ptr [ %i.bu, %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ], [ %i.bm, %.lr.ph.preheader ] ; 6 uses
  %.sroa.3.0.i87 = phi i64 [ %i.bv, %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ], [ %i.bs, %.lr.ph.preheader ] ; 5 uses
  %i.bt = zext nneg i16 %.pre to i64              ; 7 uses
  %i.bu = load ptr, ptr %.sroa.0.0.i88, align 8, !noalias !1770, !noundef !5 ; 16 uses
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %i.bv = add i64 %.sroa.3.0.i87, 1               ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i88, i64 140
  %i.bx = load i16, ptr %i.bw, align 4, !noalias !1770 ; 3 uses
  %.not.i.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 142
  %i.bz = load i16, ptr %i.by, align 2, !noalias !1771, !noundef !5
  %.not62.i.i.i = icmp eq i16 %i.bz, 0
  br i1 %.not62.i.i.i, label %bb.s, label %bb.u, !prof !6

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @950, ptr noundef nonnull inttoptr (i64 123 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @951) #24, !noalias !1771
  unreachable

bb.t:                                             ; preds = %.lr.ph
  %.not.i.i25 = icmp eq i16 %.pre, 0
  br i1 %.not.i.i25, label %bb.z, label %_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread

bb.u:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 152
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !1771, !nonnull !5, !noundef !5 ; 3 uses
  store ptr %i.bu, ptr %i.a, align 8, !noalias !1769
  store i64 %i.bv, ptr %.sink.i.sroa.gep44, align 8, !noalias !1769
  store i64 0, ptr %.sink.i.sroa.gep53, align 8, !noalias !1769
  store ptr %.sroa.0.0.i88, ptr %.sink.i.sroa.gep47, align 8, !noalias !1769
  store i64 %.sroa.3.0.i87, ptr %.sroa.21.8..sroa_idx.i.i, align 8, !noalias !1769
  store ptr %i.cb, ptr %.sink.i.sroa.gep50, align 8, !noalias !1769
  store i64 %.sroa.3.0.i87, ptr %.sroa.25.8..sroa_idx.i.i, align 8, !noalias !1769
  %i.cc = add nuw nsw i64 %i.bt, 1                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 142
  %i.ce = load i16, ptr %i.cd, align 2, !noalias !1769, !noundef !5
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = add nuw nsw i64 %i.cc, %i.cf            ; 2 uses
  %i.ch = icmp samesign ult i64 %i.cg, 12
  br i1 %i.ch, label %._crit_edge.thread, label %bb.x

bb.v:                                             ; preds = %bb.q
  %i.ci = zext nneg i16 %i.bx to i64
  %i.cj = add nsw i64 %i.ci, -1                   ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 144
  %i.cl = icmp ult i16 %i.bx, 13
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !1771, !nonnull !5, !noundef !5 ; 3 uses
  store ptr %i.bu, ptr %i.b, align 8, !noalias !1769
  store i64 %i.bv, ptr %.sink.i.sroa.gep, align 8, !noalias !1769
  store i64 %i.cj, ptr %.sink.i.sroa.gep52, align 8, !noalias !1769
  store ptr %i.cn, ptr %.sink.i.sroa.gep46, align 8, !noalias !1769
  store i64 %.sroa.3.0.i87, ptr %.sroa.21.8..sroa_idx8.i.i, align 8, !noalias !1769
  store ptr %.sroa.0.0.i88, ptr %.sink.i.sroa.gep49, align 8, !noalias !1769
  store i64 %.sroa.3.0.i87, ptr %.sroa.25.8..sroa_idx12.i.i, align 8, !noalias !1769
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 142
  %i.cp = load i16, ptr %i.co, align 2, !noalias !1769, !noundef !5
  %i.cq = zext i16 %i.cp to i64                   ; 3 uses
  %i.cr = add nuw nsw i64 %i.bt, 1
  %i.cs = add nuw nsw i64 %i.cr, %i.cq
  %i.ct = icmp samesign ult i64 %i.cs, 12
  br i1 %i.ct, label %._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = sub nuw nsw i64 5, %i.bt
  call fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE15bulk_steal_leftCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b, i64 noundef %i.cu) #22, !noalias !1769
  br label %_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread

bb.x:                                             ; preds = %bb.u
  %i.cv = sub nuw nsw i64 5, %i.bt
  call fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE16bulk_steal_rightCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a, i64 noundef %i.cv) #22, !noalias !1769
  br label %_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread

_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread: ; preds = %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %bb.p, %bb.t, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.sink.split

._crit_edge:                                      ; preds = %bb.v
  %.pre104 = add nuw nsw i64 %i.cq, 1             ; 2 uses
  %.pre106 = add nuw nsw i64 %.pre104, %i.bt      ; 2 uses
  %i.cw = icmp samesign ult i64 %.pre106, 12
  br i1 %i.cw, label %._crit_edge.thread, label %bb.y, !prof !12

bb.y:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #24, !noalias !1772
  unreachable

._crit_edge.thread:                               ; preds = %bb.u, %._crit_edge
  %i.cx = phi ptr [ %i.cn, %._crit_edge ], [ %.sroa.0.0.i88, %bb.u ] ; 9 uses
  %i.cy = phi ptr [ %.sroa.0.0.i88, %._crit_edge ], [ %i.cb, %bb.u ] ; 4 uses
  %i.cz = phi i64 [ %i.cj, %._crit_edge ], [ 0, %bb.u ] ; 5 uses
  %.pre-phi125 = phi i64 [ %i.cq, %._crit_edge ], [ %i.bt, %bb.u ] ; 2 uses
  %.pre-phi103124 = phi i64 [ %i.bt, %._crit_edge ], [ %i.cf, %bb.u ] ; 2 uses
  %.pre-phi105123 = phi i64 [ %.pre104, %._crit_edge ], [ %i.cc, %bb.u ] ; 7 uses
  %.pre-phi107122 = phi i64 [ %.pre106, %._crit_edge ], [ %i.cg, %bb.u ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 142
  %i.db = getelementptr inbounds nuw i8, ptr %i.bu, i64 142 ; 4 uses
  %i.dc = load i16, ptr %i.db, align 2, !noalias !1772, !noundef !5
  %i.dd = zext i16 %i.dc to i64                   ; 5 uses
  %i.de = trunc nuw nsw i64 %.pre-phi107122 to i16
  store i16 %i.de, ptr %i.da, align 2, !noalias !1772
  %i.df = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.cz ; 3 uses
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !1773, !noalias !1772, !noundef !5
  %i.di = getelementptr i8, ptr %i.dg, i64 8
  %i.dj = xor i64 %i.cz, -1
  %i.dk = add nsw i64 %i.dd, %i.dj                ; 2 uses
  %i.dl = shl nuw nsw i64 %i.dk, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dg, ptr align 8 %i.di, i64 %i.dl, i1 false), !alias.scope !1773, !noalias !1772
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.pre-phi125
  store i64 %i.dh, ptr %i.dn, align 8, !noalias !1772
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.pre-phi105123
  %i.dq = shl nuw nsw i64 %.pre-phi103124, 3      ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull readonly align 8 %i.do, i64 %i.dq, i1 false), !alias.scope !1774, !noalias !1772
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.cz ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 4, !alias.scope !1775, !noalias !1772, !noundef !5
  %i.du = getelementptr i8, ptr %i.ds, i64 4
  %i.dv = shl nuw nsw i64 %i.dk, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ds, ptr align 4 %i.du, i64 %i.dv, i1 false), !alias.scope !1775, !noalias !1772
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cx, i64 96 ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.pre-phi125
  store i32 %i.dt, ptr %i.dx, align 4, !noalias !1772
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.pre-phi105123
  %i.ea = shl nuw nsw i64 %.pre-phi103124, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dz, ptr nonnull readonly align 8 %i.dy, i64 %i.ea, i1 false), !alias.scope !1776, !noalias !1772
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bu, i64 144 ; 6 uses
  %i.ec = add nuw nsw i64 %i.cz, 1                ; 5 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ec ; 2 uses
  %i.ee = getelementptr i8, ptr %i.ed, i64 8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr align 8 %i.ee, i64 %i.dl, i1 false), !alias.scope !1777, !noalias !1772
  %i.ef = icmp samesign ult i64 %i.ec, %i.dd
  br i1 %i.ef, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge.thread
  %i.eg = sub nuw nsw i64 %i.dd, %i.ec
  %reass.sub = sub nsw i64 %i.dd, %i.cz
  %i.eh = add nsw i64 %reass.sub, -2
  %xtraiter = and i64 %i.eg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.ei, %.lr.ph.i.i.prol ], [ %i.ec, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ei = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.ej = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ej), !noalias !1769
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.0.06.i.i.prol
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.bu, ptr %i.el, align 8, !noalias !1772
  %i.em = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 140
  store i16 %i.em, ptr %i.en, align 4, !noalias !1772
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1754

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.ec, %.lr.ph.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.prol ]
  %i.eo = icmp ult i64 %i.eh, 3
  br i1 %i.eo, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.fe, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.0.06.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.bu, ptr %i.er, align 8, !noalias !1772
  %i.es = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 140
  store i16 %i.es, ptr %i.et, align 4, !noalias !1772
  %i.eu = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ep
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.bu, ptr %i.ew, align 8, !noalias !1772
  %i.ex = trunc nuw nsw i64 %i.ep to i16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 140
  store i16 %i.ex, ptr %i.ey, align 4, !noalias !1772
  %i.ez = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.eu
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.bu, ptr %i.fb, align 8, !noalias !1772
  %i.fc = trunc nuw nsw i64 %i.eu to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 140
  store i16 %i.fc, ptr %i.fd, align 4, !noalias !1772
  %i.fe = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.ff = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.ff), !noalias !1769
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ez
  %i.fh = load ptr, ptr %i.fg, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.bu, ptr %i.fh, align 8, !noalias !1772
  %i.fi = trunc nuw nsw i64 %i.ez to i16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 140
  store i16 %i.fi, ptr %i.fj, align 4, !noalias !1772
  %exitcond.not.i.i.3 = icmp eq i64 %i.fe, %i.dd
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge.thread
  %i.fk = load i16, ptr %i.db, align 2, !noalias !1772, !noundef !5
  %i.fl = add i16 %i.fk, -1
  store i16 %i.fl, ptr %i.db, align 2, !noalias !1772
  %i.fm = icmp ugt i64 %i.bv, 1
  br i1 %i.fm, label %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.cx, i64 144 ; 6 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.pre-phi105123
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cy, i64 144
  %i.fq = add nuw nsw i64 %i.dq, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fo, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fp, i64 %i.fq, i1 false), !alias.scope !1778, !noalias !1772
  %i.fr = add nuw nsw i64 %.pre-phi107122, 1
  %i.fs = sub nsw i64 %i.fr, %.pre-phi105123
  %i.ft = sub nsw i64 %.pre-phi107122, %.pre-phi105123
  %xtraiter156 = and i64 %i.fs, 3                 ; 2 uses
  %lcmp.mod157.not = icmp eq i64 %xtraiter156, 0
  br i1 %lcmp.mod157.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.fu, %.lr.ph.i5.i.prol ], [ %.pre-phi105123, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ] ; 4 uses
  %prol.iter158 = phi i64 [ %prol.iter158.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ]
  %i.fu = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.fv = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.fv), !noalias !1769
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.sroa.0.06.i6.i.prol
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cx, ptr %i.fx, align 8, !noalias !1772
  %i.fy = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 140
  store i16 %i.fy, ptr %i.fz, align 4, !noalias !1772
  %prol.iter158.next = add i64 %prol.iter158, 1   ; 2 uses
  %prol.iter158.cmp.not = icmp eq i64 %prol.iter158.next, %xtraiter156
  br i1 %prol.iter158.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !1758

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %.pre-phi105123, %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceINtNtNtCs8Chj7Szqq0n_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlEEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ], [ %i.fu, %.lr.ph.i5.i.prol ]
  %i.ga = icmp ult i64 %i.ft, 3
  br i1 %i.ga, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.gq, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.gb = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.sroa.0.06.i6.i
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cx, ptr %i.gd, align 8, !noalias !1772
  %i.ge = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 140
  store i16 %i.ge, ptr %i.gf, align 4, !noalias !1772
  %i.gg = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gb
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cx, ptr %i.gi, align 8, !noalias !1772
  %i.gj = trunc nuw nsw i64 %i.gb to i16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 140
  store i16 %i.gj, ptr %i.gk, align 4, !noalias !1772
  %i.gl = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gg
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cx, ptr %i.gn, align 8, !noalias !1772
  %i.go = trunc nuw nsw i64 %i.gg to i16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 140
  store i16 %i.go, ptr %i.gp, align 4, !noalias !1772
  %i.gq = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.gr = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.gr), !noalias !1769
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.gl
  %i.gt = load ptr, ptr %i.gs, align 8, !noalias !1772, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.cx, ptr %i.gt, align 8, !noalias !1772
  %i.gu = trunc nuw nsw i64 %i.gl to i16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 140
  store i16 %i.gu, ptr %i.gv, align 4, !noalias !1772
  %exitcond.not.i7.i.3 = icmp eq i64 %i.gl, %.pre-phi107122
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_lNtB3M_8InternalEB3a_ECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i
  %.sink.i26 = phi i64 [ 144, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.i ], [ 240, %.lr.ph.i5.i ], [ 240, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cy, i64 noundef %.sink.i26, i64 noundef 8) #22, !noalias !1772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.gw = load i16, ptr %i.db, align 2, !noalias !1769, !noundef !5 ; 2 uses
  %i.gx = icmp ugt i16 %i.gw, 4
  br i1 %i.gx, label %_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, label %.lr.ph

bb.z:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 1, ptr %2, align 1, !alias.scope !1779
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3fixINtNtB7_4node7NodeRefNtNtBV_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1f_14LeafOrInternalE31fix_node_and_affected_ancestorsNtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.a
  %.sroa.0.0.sink = phi ptr [ %i.f, %bb.a ], [ %i.bj, %.sink.split ]
  %.sroa.7.0.sink = phi i64 [ %i.z, %bb.a ], [ %i.bi, %.sink.split ]
  %.sroa.11.0.sink = phi i64 [ %i.l, %bb.a ], [ %i.bl, %.sink.split ]
  store i64 %i.n, ptr %0, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.u, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0.sink, ptr %i.gz, align 8
  %.sroa.7.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.sink, ptr %.sroa.7.0..sroa_idx5, align 8
  %.sroa.11.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.0.sink, ptr %.sroa.11.0..sroa_idx11, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCsbqH9stoieM8_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB4N_13OccupiedEntryB1L_B2N_E9remove_kv0NtNtBb_5alloc6GlobalECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 13 uses
  %i.d = alloca [56 x i8], align 8                ; 13 uses
  %i.e = alloca [112 x i8], align 8               ; 3 uses
  %i.f = alloca [56 x i8], align 8                ; 11 uses
  %i.g = alloca [56 x i8], align 8                ; 11 uses
  %i.h = alloca [24 x i8], align 8                ; 16 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !1824, !noalias !1825, !nonnull !5, !noundef !5 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1242 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noalias !1826, !noundef !5 ; 3 uses
end_hunk_1
begin_hunk_2_@_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTE16bulk_steal_rightCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ag, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader ]
  %i.ag = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ah = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.0.06.i23.epil
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  store ptr %i.h, ptr %i.ak, align 8
  %i.al = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 184
  store i16 %i.al, ptr %i.am, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, !llvm.loop !31415

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @942, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @948) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.v
  %i.aq = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.an, i64 %i.aq, i1 false), !alias.scope !31423
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %1
  %i.as = shl nuw nsw i64 %i.n, 3
  %i.at = add nuw nsw i64 %i.as, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.at, i1 false), !alias.scope !31424
  %i.au = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.v
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 176
  store ptr %i.c, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %i.v to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 184
  store i16 %i.ay, ptr %i.az, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bb = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 176
  store ptr %i.c, ptr %i.be, align 8
  %i.bf = trunc nuw nsw i64 %i.ba to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 184
  store i16 %i.bf, ptr %i.bg, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bi = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 176
  store ptr %i.c, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %i.bh to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 184
  store i16 %i.bm, ptr %i.bn, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bp = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 176
  store ptr %i.c, ptr %i.bs, align 8
  %i.bt = trunc nuw nsw i64 %i.bo to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 184
  store i16 %i.bt, ptr %i.bu, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.bw = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 176
  store ptr %i.c, ptr %i.bz, align 8
  %i.ca = trunc nuw nsw i64 %i.bv to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 184
  store i16 %i.ca, ptr %i.cb, align 8
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cc = add nuw nsw i64 %i.k, 1
  %i.cd = sub nsw i64 %i.cc, %1                   ; 2 uses
  %xtraiter = and i64 %i.cd, 3                    ; 3 uses
  %i.ce = icmp samesign ult i64 %i.n, 3
  br i1 %i.ce, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader
  %unroll_iter = and i64 %i.cd, -4
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %i.cx, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ]
  %i.cf = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.0.06.i23
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 176
  store ptr %i.h, ptr %i.ci, align 8
  %i.cj = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 184
  store i16 %i.cj, ptr %i.ck, align 8
  %i.cl = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cf
  %i.cn = load ptr, ptr %i.cm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 176
  store ptr %i.h, ptr %i.co, align 8
  %i.cp = trunc nuw nsw i64 %i.cf to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 184
  store i16 %i.cp, ptr %i.cq, align 8
  %i.cr = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cl
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  store ptr %i.h, ptr %i.cu, align 8
  %i.cv = trunc nuw nsw i64 %i.cl to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 184
  store i16 %i.cv, ptr %i.cw, align 8
  %i.cx = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.cy = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cr
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 176
  store ptr %i.h, ptr %i.db, align 8
  %i.dc = trunc nuw nsw i64 %i.cr to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 184
  store i16 %i.dc, ptr %i.dd, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB8_7set_val9SetValZSTNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE15bulk_steal_leftCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 142 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !5
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 142 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !5
  %i.j = zext i16 %i.i to i64                     ; 4 uses
  %i.k = add nuw nsw i64 %1, %i.j                 ; 3 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @938, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @939) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @940, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @941) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.e, %1                 ; 4 uses
  %i.n = trunc nuw i64 %i.m to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw nsw i64 %i.k to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %1
  %i.r = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.p, i64 %i.r, i1 false), !alias.scope !31441
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.u = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !alias.scope !31442
  %i.v = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.e, %i.v               ; 4 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31444)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_slicelECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @903, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @904) #24, !noalias !31445
  unreachable

_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_slicelECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.v
  %i.ab = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !31445
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.v
  %i.ae = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 4 %i.ad, i64 %i.ae, i1 false), !alias.scope !31446
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.m
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.m
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !5
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.val17 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.val17 ; 2 uses
  %i.ao = load i64, ptr %i.al, align 8, !noundef !5
  store i64 %i.ag, ptr %i.al, align 8
  %i.ap = load i32, ptr %i.an, align 4, !noundef !5
  store i32 %i.ai, ptr %i.an, align 4
  %i.aq = getelementptr [8 x i8], ptr %i.g, i64 %1
  store i64 %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.w
  store i32 %i.ap, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  %i.au = icmp eq i64 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  %i.ax = icmp eq i64 %i.aw, 0                    ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_slicelECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  br i1 %i.ax, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.j, !prof !8

bb.h:                                             ; preds = %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_slicelECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.cb, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ay = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i.epil
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.ba, align 8
  %i.bb = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 140
  store i16 %i.bb, ptr %i.bc, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.i, !llvm.loop !31435

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @942, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @943) #24
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 8 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %1
  %i.bf = add nuw nsw i64 %i.r, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !31447
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.v
  %i.bi = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bh, i64 %i.bi, i1 false), !alias.scope !31448
  %i.bj = add nuw nsw i64 %1, %i.j
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %xtraiter = and i64 %i.bk, 3                    ; 3 uses
  %i.bl = icmp samesign ult i64 %i.k, 3
  br i1 %i.bl, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bk, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.cb, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bm = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 140
  store i16 %i.bp, ptr %i.bq, align 4
  %i.br = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bm
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bm to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 140
  store i16 %i.bu, ptr %i.bv, align 4
  %i.bw = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.by, align 8
  %i.bz = trunc nuw nsw i64 %i.br to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 140
  store i16 %i.bz, ptr %i.ca, align 4
  %i.cb = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bw
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.bw to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 140
  store i16 %i.ce, ptr %i.cf, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlE16bulk_steal_rightCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 142 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !5 ; 6 uses
  %i.e = zext i16 %i.d to i64                     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 142 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !5
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %i.k = add nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @944, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @945) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @946, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @947) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.j, %1                 ; 4 uses
  %i.n = trunc nuw nsw i64 %i.k to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw i64 %i.m to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = add nsw i64 %1, -1                       ; 3 uses
  %i.q = getelementptr [8 x i8], ptr %i.g, i64 %1
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p
  %i.u = load i32, ptr %i.t, align 4, !noundef !5
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  %i.aa = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %i.r, ptr %i.x, align 8
  %i.ab = load i32, ptr %i.z, align 4, !noundef !5
  store i32 %i.u, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.e
  store i64 %i.aa, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.e
  store i32 %i.ab, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ah = add nuw nsw i64 %i.e, 1                 ; 5 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %i.aj = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr nonnull readonly align 8 %i.ag, i64 %i.aj, i1 false), !alias.scope !31465
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  %i.al = shl nuw nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr nonnull readonly align 8 %i.s, i64 %i.al, i1 false), !alias.scope !31466
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %1
  %i.an = shl nuw nsw i64 %i.m, 3                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.am, i64 %i.an, i1 false), !alias.scope !31467
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.ap = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 4 %i.ao, i64 %i.ap, i1 false), !alias.scope !31468
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.av, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.e
  br i1 %i.av, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader ], [ %i.dd, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aw, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ax = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23.epil
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.az, align 8
  %i.ba = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 140
  store i16 %i.ba, ptr %i.bb, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, !llvm.loop !31459

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @942, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @948) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bc, i64 %i.bf, i1 false), !alias.scope !31469
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %1
  %i.bh = add nuw nsw i64 %i.an, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bh, i1 false), !alias.scope !31470
  %i.bi = icmp ult i16 %i.d, 11
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.bk, align 8
  %i.bl = trunc nuw nsw i64 %i.ah to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 140
  store i16 %i.bl, ptr %i.bm, align 4
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bo = icmp samesign ult i16 %i.d, 10
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.bq, align 8
  %i.br = trunc nuw nsw i64 %i.bn to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 140
  store i16 %i.br, ptr %i.bs, align 4
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = add nuw nsw i64 %i.e, 3                 ; 2 uses
  %i.bu = icmp samesign ult i16 %i.d, 9
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bt to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 140
  store i16 %i.bx, ptr %i.by, align 4
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = add nuw nsw i64 %i.e, 4                 ; 2 uses
  %i.ca = icmp samesign ult i16 %i.d, 8
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.cc, align 8
  %i.cd = trunc nuw nsw i64 %i.bz to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 140
  store i16 %i.cd, ptr %i.ce, align 4
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nuw nsw i64 %i.e, 5                 ; 2 uses
  %i.cg = icmp ne i16 %i.d, 7
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.ci, align 8
  %i.cj = trunc nuw nsw i64 %i.cf to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 140
  store i16 %i.cj, ptr %i.ck, align 4
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cl = add nuw nsw i64 %i.j, 1
  %i.cm = sub nsw i64 %i.cl, %1                   ; 2 uses
  %xtraiter = and i64 %i.cm, 3                    ; 3 uses
  %i.cn = icmp samesign ult i64 %i.m, 3
  br i1 %i.cn, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader
  %unroll_iter = and i64 %i.cm, -4
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %i.dd, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ]
  %i.co = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 140
  store i16 %i.cr, ptr %i.cs, align 4
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.co
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.cv, align 8
  %i.cw = trunc nuw nsw i64 %i.co to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 140
  store i16 %i.cw, ptr %i.cx, align 4
  %i.cy = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ct
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.da, align 8
  %i.db = trunc nuw nsw i64 %i.ct to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 140
  store i16 %i.db, ptr %i.dc, align 4
  %i.dd = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.de = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cy
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.dg, align 8
  %i.dh = trunc nuw nsw i64 %i.cy to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 140
  store i16 %i.dh, ptr %i.di, align 4
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexlNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE15bulk_steal_leftCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [80 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1242 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !5
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1242 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !5
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @938, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @939) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @940, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @941) #24
  unreachable

bb.e:                                             ; preds = %bb.c
end_hunk_2
begin_hunk_3_@_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyEE16bulk_steal_rightCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common:bb.a
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, !llvm.loop !31512

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @942, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @948) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 1248 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 1248 ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.ba = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ax, i64 %i.ba, i1 false), !alias.scope !31523
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %1
  %i.bc = shl nuw nsw i64 %i.n, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !alias.scope !31524
  %i.be = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ab
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1232
  store ptr %i.c, ptr %i.bh, align 8
  %i.bi = trunc nuw nsw i64 %i.ab to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 1240
  store i16 %i.bi, ptr %i.bj, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bl = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bk
  %i.bn = load ptr, ptr %i.bm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1232
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bk to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1240
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1232
  store ptr %i.c, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.br to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1240
  store i16 %i.bw, ptr %i.bx, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bz = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.by
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1232
  store ptr %i.c, ptr %i.cc, align 8
  %i.cd = trunc nuw nsw i64 %i.by to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1240
  store i16 %i.cd, ptr %i.ce, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.cg = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 1232
  store ptr %i.c, ptr %i.cj, align 8
  %i.ck = trunc nuw nsw i64 %i.cf to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 1240
  store i16 %i.ck, ptr %i.cl, align 8
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = add nuw nsw i64 %i.k, 1
  %i.cn = sub nsw i64 %i.cm, %1                   ; 2 uses
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp samesign ult i64 %i.n, 3
  br i1 %i.co, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %i.dh, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ]
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1232
  store ptr %i.h, ptr %i.cs, align 8
  %i.ct = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 1240
  store i16 %i.ct, ptr %i.cu, align 8
  %i.cv = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cp
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 1232
  store ptr %i.h, ptr %i.cy, align 8
  %i.cz = trunc nuw nsw i64 %i.cp to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 1240
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cv
  %i.dd = load ptr, ptr %i.dc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1232
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cv to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 1240
  store i16 %i.df, ptr %i.dg, align 8
  %i.dh = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.di = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.db
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1232
  store ptr %i.h, ptr %i.dl, align 8
  %i.dm = trunc nuw nsw i64 %i.db to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 1240
  store i16 %i.dm, ptr %i.dn, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsg6ZEkMtNi4J_8iceoryx27service12service_hash11ServiceHashTNtNtNtCsej06kWhEKj7_21iceoryx2_bb_lock_free4mpmc9container15ContainerHandleyENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexE15bulk_steal_leftCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 142 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !5
  %i.e = zext i16 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 142 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !5
  %i.j = zext i16 %i.i to i64                     ; 4 uses
  %i.k = add nuw nsw i64 %1, %i.j                 ; 3 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @938, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @939) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @940, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @941) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.e, %1                 ; 4 uses
  %i.n = trunc nuw i64 %i.m to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw nsw i64 %i.k to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %1
  %i.r = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.p, i64 %i.r, i1 false), !alias.scope !31541
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %1
  %i.u = shl nuw nsw i64 %i.j, 3                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !alias.scope !31542
  %i.v = add nuw nsw i64 %i.m, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.e, %i.v               ; 4 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31544)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @903, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @904) #24, !noalias !31545
  unreachable

_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.v
  %i.ab = shl nuw nsw i64 %i.w, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull readonly align 4 %i.aa, i64 %i.ab, i1 false), !alias.scope !31545
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.v
  %i.ae = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ad, i64 %i.ae, i1 false), !alias.scope !31546
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.m
  %i.ag = load i32, ptr %i.af, align 4, !noundef !5
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.m
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.aj, align 8, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.val17 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.val17 ; 2 uses
  %i.ao = load i32, ptr %i.al, align 4, !noundef !5
  store i32 %i.ag, ptr %i.al, align 4
  %i.ap = load i64, ptr %i.an, align 8, !noundef !5
  store i64 %i.ai, ptr %i.an, align 8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.w
  store i32 %i.ao, ptr %i.aq, align 4
  %i.ar = getelementptr [8 x i8], ptr %i.g, i64 %1
  store i64 %i.ap, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  %i.au = icmp eq i64 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5
  %i.ax = icmp eq i64 %i.aw, 0                    ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  br i1 %i.ax, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.j, !prof !8

bb.h:                                             ; preds = %_RINvNtNtNtCsbqH9stoieM8_5alloc11collections5btree4node13move_to_sliceNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.cb, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ay = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i.epil
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.ba, align 8
  %i.bb = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 140
  store i16 %i.bb, ptr %i.bc, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, label %bb.i, !llvm.loop !31535

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @942, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @943) #24
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 8 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %1
  %i.bf = add nuw nsw i64 %i.u, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !31547
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.v
  %i.bi = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bh, i64 %i.bi, i1 false), !alias.scope !31548
  %i.bj = add nuw nsw i64 %1, %i.j
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %xtraiter = and i64 %i.bk, 3                    ; 3 uses
  %i.bl = icmp samesign ult i64 %i.k, 3
  br i1 %i.bl, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bk, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.cb, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bm = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 140
  store i16 %i.bp, ptr %i.bq, align 4
  %i.br = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bm
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bm to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 140
  store i16 %i.bu, ptr %i.bv, align 4
  %i.bw = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.br
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.by, align 8
  %i.bz = trunc nuw nsw i64 %i.br to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 140
  store i16 %i.bz, ptr %i.ca, align 4
  %i.cb = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bw
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.bw to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 140
  store i16 %i.ce, ptr %i.cf, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_16BalancingContextlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexE16bulk_steal_rightCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 142 ; 2 uses
  %i.d = load i16, ptr %i.c, align 2, !noundef !5 ; 6 uses
  %i.e = zext i16 %i.d to i64                     ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 142 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noundef !5
  %i.j = zext i16 %i.i to i64                     ; 3 uses
  %i.k = add nuw nsw i64 %1, %i.e                 ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, 12
  br i1 %i.l, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @944, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @945) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.j
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @946, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @947) #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = sub nuw nsw i64 %i.j, %1                 ; 4 uses
  %i.n = trunc nuw nsw i64 %i.k to i16
  store i16 %i.n, ptr %i.c, align 2
  %i.o = trunc nuw i64 %i.m to i16
  store i16 %i.o, ptr %i.h, align 2
  %i.p = add nsw i64 %1, -1                       ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !noundef !5
  %i.t = getelementptr [8 x i8], ptr %i.g, i64 %1
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.v, align 8, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.val18 ; 2 uses
  %i.aa = load i32, ptr %i.x, align 4, !noundef !5
  store i32 %i.s, ptr %i.x, align 4
  %i.ab = load i64, ptr %i.z, align 8, !noundef !5
  store i64 %i.u, ptr %i.z, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.e
  store i32 %i.aa, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.e
  store i64 %i.ab, ptr %i.af, align 8
  %i.ag = add nuw nsw i64 %i.e, 1                 ; 5 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = shl nuw nsw i64 %i.p, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull readonly align 4 %i.q, i64 %i.ai, i1 false), !alias.scope !31565
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ag
  %i.al = shl nuw nsw i64 %i.p, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.aj, i64 %i.al, i1 false), !alias.scope !31566
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %1
  %i.an = shl nuw nsw i64 %i.m, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 4 %i.am, i64 %i.an, i1 false), !alias.scope !31567
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %1
  %i.ap = shl nuw nsw i64 %i.m, 3                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false), !alias.scope !31568
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !5
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.av, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.e
  br i1 %i.av, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader ], [ %i.dd, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aw, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ax = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23.epil
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.az, align 8
  %i.ba = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 140
  store i16 %i.ba, ptr %i.bb, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, !llvm.loop !31559

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @942, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @948) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ag
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bc, i64 %i.bf, i1 false), !alias.scope !31569
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %1
  %i.bh = add nuw nsw i64 %i.ap, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bh, i1 false), !alias.scope !31570
  %i.bi = icmp ult i16 %i.d, 11
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ag
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.bk, align 8
  %i.bl = trunc nuw nsw i64 %i.ag to i16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 140
  store i16 %i.bl, ptr %i.bm, align 4
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = add nuw nsw i64 %i.e, 2                 ; 2 uses
  %i.bo = icmp samesign ult i16 %i.d, 10
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.bq, align 8
  %i.br = trunc nuw nsw i64 %i.bn to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 140
  store i16 %i.br, ptr %i.bs, align 4
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = add nuw nsw i64 %i.e, 3                 ; 2 uses
  %i.bu = icmp samesign ult i16 %i.d, 9
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bt
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bt to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 140
  store i16 %i.bx, ptr %i.by, align 4
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = add nuw nsw i64 %i.e, 4                 ; 2 uses
  %i.ca = icmp samesign ult i16 %i.d, 8
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.cc, align 8
  %i.cd = trunc nuw nsw i64 %i.bz to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 140
  store i16 %i.cd, ptr %i.ce, align 4
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = add nuw nsw i64 %i.e, 5                 ; 2 uses
  %i.cg = icmp ne i16 %i.d, 7
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cf
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.b, ptr %i.ci, align 8
  %i.cj = trunc nuw nsw i64 %i.cf to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 140
  store i16 %i.cj, ptr %i.ck, align 4
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cl = add nuw nsw i64 %i.j, 1
  %i.cm = sub nsw i64 %i.cl, %1                   ; 2 uses
  %xtraiter = and i64 %i.cm, 3                    ; 3 uses
  %i.cn = icmp samesign ult i64 %i.m, 3
  br i1 %i.cn, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.epil.preheader, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader
  %unroll_iter = and i64 %i.cm, -4
  br label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit

_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit: ; preds = %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %i.dd, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit ]
  %i.co = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 140
  store i16 %i.cr, ptr %i.cs, align 4
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.co
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.cv, align 8
  %i.cw = trunc nuw nsw i64 %i.co to i16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 140
  store i16 %i.cw, ptr %i.cx, align 4
  %i.cy = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.ct
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.da, align 8
  %i.db = trunc nuw nsw i64 %i.ct to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 140
  store i16 %i.db, ptr %i.dc, align 4
  %i.dd = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.de = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.de)
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cy
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.g, ptr %i.dg, align 8
  %i.dh = trunc nuw nsw i64 %i.cy to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 140
  store i16 %i.dh, ptr %i.di, align 4
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCslxWRlZ2j4ks_17iceoryx2_bb_posix14deadline_queue18DeadlineQueueIndexNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCs8Chj7Szqq0n_4core3ops5range5RangejEECs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCs8tG85QUCESg_24iceoryx2_bb_system_types9file_path8FilePathNtNtNtCs7gufeB8TUC6_12iceoryx2_cal15dynamic_storage13process_local12StorageEntryNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [264 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.d
  %i.h = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsbqH9stoieM8_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtCsg6ZEkMtNi4J_8iceoryx211identifiers14UniqueServerIdNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCs4KxsrW0yyQ2_33iceoryx2_conformance_tests_common(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ult i64 %i.c, 11
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h
}
end_hunk_3
