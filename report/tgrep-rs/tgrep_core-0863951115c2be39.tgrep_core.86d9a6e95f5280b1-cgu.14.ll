Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.14?download=true
begin_hunk_0_@_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringINtNtBd_3vec3VecB1j_EE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core:bb.a
  store i16 %i.bs, ptr %i.bt, align 8, !noalias !164
  %i.bu = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.n, ptr %i.bw, align 8, !noalias !164
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 536
  store i16 %i.bx, ptr %i.by, align 8, !noalias !164
  %i.bz = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.n, ptr %i.cb, align 8, !noalias !164
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 536
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !164
  %i.ce = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.cf = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bz
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.n, ptr %i.ch, align 8, !noalias !164
  %i.ci = trunc nuw nsw i64 %i.bz to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 536
  store i16 %i.ci, ptr %i.cj, align 8, !noalias !164
  %exitcond.not.i.i.3 = icmp eq i64 %i.ce, %i.ac
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ck = load i16, ptr %i.aa, align 2, !noalias !164, !noundef !4
  %i.cl = add i16 %i.ck, -1
  store i16 %i.cl, ptr %i.aa, align 2, !noalias !164
  %i.cm = icmp ugt i64 %i.p, 1
  br i1 %i.cm, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringINtNtB8_3vec3VecB25_EEEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringINtNtBd_3vec3VecB1j_EE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3f_14LeafOrInternalEB2D_ECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringINtNtB8_3vec3VecB25_EEEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 544 ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.cq = shl nuw nsw i64 %i.w, 3
  %i.cr = add nuw nsw i64 %i.cq, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.cp, i64 %i.cr, i1 false), !alias.scope !172, !noalias !164
  %i.cs = add nuw nsw i64 %i.w, 1
  %xtraiter11 = and i64 %i.cs, 3                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringINtNtB8_3vec3VecB25_EEEECsbzNSmZPCnTx_10tgrep_core.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.ct, %.lr.ph.i5.i.prol ], [ %i.x, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringINtNtB8_3vec3VecB25_EEEECsbzNSmZPCnTx_10tgrep_core.exit.i ] ; 4 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringINtNtB8_3vec3VecB25_EEEECsbzNSmZPCnTx_10tgrep_core.exit.i ]
  %i.ct = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.cu = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.0.06.i6.i.prol
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.cw, align 8, !noalias !164
  %i.cx = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 536
  store i16 %i.cx, ptr %i.cy, align 8, !noalias !164
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !163

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringINtNtB8_3vec3VecB25_EEEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %i.x, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringINtNtB8_3vec3VecB25_EEEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.ct, %.lr.ph.i5.i.prol ]
  %i.cz = icmp ult i16 %i.v, 3
  br i1 %i.cz, label %_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringINtNtBd_3vec3VecB1j_EE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3f_14LeafOrInternalEB2D_ECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.dp, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.da = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.0.06.i6.i
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.dc, align 8, !noalias !164
  %i.dd = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 536
  store i16 %i.dd, ptr %i.de, align 8, !noalias !164
  %i.df = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.dh, align 8, !noalias !164
  %i.di = trunc nuw nsw i64 %i.da to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 536
  store i16 %i.di, ptr %i.dj, align 8, !noalias !164
  %i.dk = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.df
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.dm, align 8, !noalias !164
  %i.dn = trunc nuw nsw i64 %i.df to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 536
  store i16 %i.dn, ptr %i.do, align 8, !noalias !164
  %i.dp = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.dq = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dk
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !164, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.d, ptr %i.ds, align 8, !noalias !164
  %i.dt = trunc nuw nsw i64 %i.dk to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 536
  store i16 %i.dt, ptr %i.du, align 8, !noalias !164
  %exitcond.not.i7.i.3 = icmp eq i64 %i.dk, %i.y
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringINtNtBd_3vec3VecB1j_EE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3f_14LeafOrInternalEB2D_ECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringINtNtBd_3vec3VecB1j_EE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1E_NtB3f_14LeafOrInternalEB2D_ECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sink.i = phi i64 [ 544, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 640, %.lr.ph.i5.i ], [ 640, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %.sink.i, i64 noundef 8) #22, !noalias !164
  %i.dv = select i1 %i.h, i64 %i.x, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.dv, %3
  store ptr %i.d, ptr %0, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.dx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringbE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, i64 noundef range(i64 0, 2) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !4
  %i.f = zext i16 %i.e to i64                     ; 4 uses
  %i.g = trunc nuw i64 %2 to i1                   ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 274
  %i.k = load i16, ptr %i.j, align 2, !noundef !4
  %i.l = zext i16 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.pn = phi i64 [ %i.l, %bb.b ], [ %i.f, %bb.a ]
  %.sroa.05.0.in.not = icmp ugt i64 %3, %.pn
  br i1 %.sroa.05.0.in.not, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 142, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.m = load ptr, ptr %1, align 8, !alias.scope !193, !nonnull !4, !noundef !4 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !193, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !193, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !193, !nonnull !4, !noundef !4 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 274
  %i.u = load i16, ptr %i.t, align 2, !noalias !193, !noundef !4 ; 2 uses
  %i.v = zext i16 %i.u to i64                     ; 5 uses
  %i.w = add nuw nsw i64 %i.f, 1                  ; 7 uses
  %i.x = add nuw nsw i64 %i.w, %i.v               ; 3 uses
  %i.y = icmp samesign ult i64 %i.x, 12
  br i1 %i.y, label %bb.g, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20, !noalias !193
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 274 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 2, !noalias !193, !noundef !4
  %i.ab = zext i16 %i.aa to i64                   ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !193, !noundef !4 ; 6 uses
  %i.ae = trunc nuw nsw i64 %i.x to i16
  store i16 %i.ae, ptr %i.d, align 2, !noalias !193
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ad ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false), !noalias !193
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = xor i64 %i.ad, -1
  %i.aj = add i64 %i.ab, %i.ai                    ; 3 uses
  %i.ak = mul nuw nsw i64 %i.aj, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.ah, i64 %i.ak, i1 false), !alias.scope !194, !noalias !195
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.w
  %i.ap = mul nuw nsw i64 %i.v, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull readonly align 8 %i.an, i64 %i.ap, i1 false), !alias.scope !196, !noalias !193
  %i.aq = getelementptr inbounds nuw i8, ptr %i.m, i64 276
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ad ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !range !9, !alias.scope !197, !noalias !193, !noundef !4
  %i.at = getelementptr i8, ptr %i.ar, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr align 1 %i.at, i64 %i.aj, i1 false), !alias.scope !197, !noalias !193
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.f
  store i8 %i.as, ptr %i.av, align 1, !noalias !193
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 276
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull readonly align 4 %i.aw, i64 range(i64 0, 65536) %i.v, i1 false), !alias.scope !198, !noalias !193
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 288 ; 6 uses
  %i.az = add i64 %i.ad, 1                        ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = shl nuw nsw i64 %i.aj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bb, i64 %i.bc, i1 false), !alias.scope !199, !noalias !193
  %i.bd = icmp ult i64 %i.az, %i.ab
  br i1 %i.bd, label %.lr.ph.i.i.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.be = xor i64 %i.ad, -1
  %i.bf = add i64 %i.be, %i.ab
  %i.bg = add nsw i64 %i.ab, -2
  %i.bh = sub i64 %i.bg, %i.ad
  %xtraiter = and i64 %i.bf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.0.06.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.prol ], [ %i.az, %.lr.ph.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bi = add nuw nsw i64 %.sroa.0.06.i.i.prol, 1 ; 2 uses
  %i.bj = icmp ult i64 %.sroa.0.06.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.i.prol
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.m, ptr %i.bl, align 8, !noalias !193
  %i.bm = trunc nuw nsw i64 %.sroa.0.06.i.i.prol to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 272
  store i16 %i.bm, ptr %i.bn, align 8, !noalias !193
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !188

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.0.06.i.i.unr = phi i64 [ %i.az, %.lr.ph.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.prol ]
  %i.bo = icmp ult i64 %i.bh, 3
  br i1 %i.bo, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.0.06.i.i = phi i64 [ %i.ce, %.lr.ph.i.i ], [ %.sroa.0.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 7 uses
  %i.bp = add nuw nsw i64 %.sroa.0.06.i.i, 1      ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.sroa.0.06.i.i
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.m, ptr %i.br, align 8, !noalias !193
  %i.bs = trunc nuw nsw i64 %.sroa.0.06.i.i to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 272
  store i16 %i.bs, ptr %i.bt, align 8, !noalias !193
  %i.bu = add nuw nsw i64 %.sroa.0.06.i.i, 2      ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.m, ptr %i.bw, align 8, !noalias !193
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 272
  store i16 %i.bx, ptr %i.by, align 8, !noalias !193
  %i.bz = add nuw nsw i64 %.sroa.0.06.i.i, 3      ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.m, ptr %i.cb, align 8, !noalias !193
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !193
  %i.ce = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.cf = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bz
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.m, ptr %i.ch, align 8, !noalias !193
  %i.ci = trunc nuw nsw i64 %i.bz to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 272
  store i16 %i.ci, ptr %i.cj, align 8, !noalias !193
  %exitcond.not.i.i.3 = icmp eq i64 %i.ce, %i.ab
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ck = load i16, ptr %i.z, align 2, !noalias !193, !noundef !4
  %i.cl = add i16 %i.ck, -1
  store i16 %i.cl, ptr %i.z, align 2, !noalias !193
  %i.cm = icmp ugt i64 %i.o, 1
  br i1 %i.cm, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i, label %_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringbE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_bNtB2V_14LeafOrInternalEB2j_ECsbzNSmZPCnTx_10tgrep_core.exit

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  %i.cq = shl nuw nsw i64 %i.v, 3
  %i.cr = add nuw nsw i64 %i.cq, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.cp, i64 %i.cr, i1 false), !alias.scope !200, !noalias !193
  %i.cs = add nuw nsw i64 %i.v, 1
  %xtraiter11 = and i64 %i.cs, 3                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.ct, %.lr.ph.i5.i.prol ], [ %i.w, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i ] ; 4 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i ]
  %i.ct = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.cu = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.0.06.i6.i.prol
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.cw, align 8, !noalias !193
  %i.cx = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 272
  store i16 %i.cx, ptr %i.cy, align 8, !noalias !193
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !192

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %i.w, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ %i.ct, %.lr.ph.i5.i.prol ]
  %i.cz = icmp ult i16 %i.u, 3
  br i1 %i.cz, label %_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringbE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_bNtB2V_14LeafOrInternalEB2j_ECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.dp, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.da = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.0.06.i6.i
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.dc, align 8, !noalias !193
  %i.dd = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 272
  store i16 %i.dd, ptr %i.de, align 8, !noalias !193
  %i.df = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.dh, align 8, !noalias !193
  %i.di = trunc nuw nsw i64 %i.da to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 272
  store i16 %i.di, ptr %i.dj, align 8, !noalias !193
  %i.dk = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.df
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.dm, align 8, !noalias !193
  %i.dn = trunc nuw nsw i64 %i.df to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 272
  store i16 %i.dn, ptr %i.do, align 8, !noalias !193
  %i.dp = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.dq = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dk
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !193, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.ds, align 8, !noalias !193
  %i.dt = trunc nuw nsw i64 %i.dk to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 272
  store i16 %i.dt, ptr %i.du, align 8, !noalias !193
  %exitcond.not.i7.i.3 = icmp eq i64 %i.dk, %i.x
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringbE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_bNtB2V_14LeafOrInternalEB2j_ECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringbE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_bNtB2V_14LeafOrInternalEB2j_ECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %.sink.i = phi i64 [ 288, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.i ], [ 384, %.lr.ph.i5.i ], [ 384, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %.sink.i, i64 noundef 8) #22, !noalias !193
  %i.dv = select i1 %i.g, i64 %i.w, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.dv, %3
  store ptr %i.c, ptr %0, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.dx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringbE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_bNtB2W_8InternalEB2k_ECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 274 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !noundef !4
  %i.i = zext i16 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 274
  %i.m = load i16, ptr %i.l, align 2, !noundef !4 ; 2 uses
  %i.n = zext i16 %i.m to i64                     ; 5 uses
  %i.o = add nuw nsw i64 %i.i, 1                  ; 6 uses
  %i.p = add nuw nsw i64 %i.o, %i.n               ; 3 uses
  %i.q = icmp samesign ult i64 %i.p, 12
  br i1 %i.q, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 42, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 274 ; 3 uses
  %i.s = load i16, ptr %i.r, align 2, !noundef !4
  %i.t = zext i16 %i.s to i64                     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4 ; 6 uses
  %i.w = trunc nuw nsw i64 %i.p to i16
  store i16 %i.w, ptr %i.g, align 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %i.v ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %i.aa = xor i64 %i.v, -1
  %i.ab = add i64 %i.t, %i.aa                     ; 3 uses
  %i.ac = mul nuw nsw i64 %i.ab, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.z, i64 %i.ac, i1 false), !alias.scope !219, !noalias !220
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %i.o
  %i.ah = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull readonly align 8 %i.af, i64 %i.ah, i1 false), !alias.scope !221
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.v ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !range !9, !alias.scope !222, !noundef !4
  %i.al = getelementptr i8, ptr %i.aj, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.al, i64 %i.ab, i1 false), !alias.scope !222
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 276 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.i
  store i8 %i.ak, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 276
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull readonly align 4 %i.ao, i64 range(i64 0, 65536) %i.n, i1 false), !alias.scope !223
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 288 ; 6 uses
  %i.ar = add i64 %i.v, 1                         ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = shl nuw nsw i64 %i.ab, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.as, ptr align 8 %i.at, i64 %i.au, i1 false), !alias.scope !224
  %i.av = icmp ult i64 %i.ar, %i.t
  br i1 %i.av, label %.lr.ph.i.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.aw = xor i64 %i.v, -1
  %i.ax = add i64 %i.aw, %i.t
  %i.ay = add nsw i64 %i.t, -2
  %i.az = sub i64 %i.ay, %i.v
  %xtraiter = and i64 %i.ax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.06.i.prol = phi i64 [ %i.ba, %.lr.ph.i.prol ], [ %i.ar, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ba = add nuw nsw i64 %.sroa.0.06.i.prol, 1   ; 2 uses
  %i.bb = icmp ult i64 %.sroa.0.06.i.prol, 12
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.sroa.0.06.i.prol
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bd, align 8
  %i.be = trunc nuw nsw i64 %.sroa.0.06.i.prol to i16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 272
  store i16 %i.be, ptr %i.bf, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !214

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.sroa.0.06.i.unr = phi i64 [ %i.ar, %.lr.ph.i.preheader ], [ %i.ba, %.lr.ph.i.prol ]
  %i.bg = icmp ult i64 %i.az, 3
  br i1 %i.bg, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.06.i = phi i64 [ %i.bw, %.lr.ph.i ], [ %.sroa.0.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.bh = add nuw nsw i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.sroa.0.06.i
  %i.bj = load ptr, ptr %i.bi, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 272
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = add nuw nsw i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bh
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bh to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  store i16 %i.bp, ptr %i.bq, align 8
  %i.br = add nuw nsw i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bm
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bm to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 272
  store i16 %i.bu, ptr %i.bv, align 8
  %i.bw = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bx = icmp ult i64 %.sroa.0.06.i, 9
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.br
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.b, ptr %i.bz, align 8
  %i.ca = trunc nuw nsw i64 %i.br to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 272
  store i16 %i.ca, ptr %i.cb, align 8
  %exitcond.not.i.3 = icmp eq i64 %i.bw, %i.t
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit, label %.lr.ph.i

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.c
  %i.cc = load i16, ptr %i.r, align 2, !noundef !4
  %i.cd = add i16 %i.cc, -1
  store i16 %i.cd, ptr %i.r, align 2
  %i.ce = icmp ugt i64 %i.d, 1
  br i1 %i.ce, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit8

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 288 ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.ci = shl nuw nsw i64 %i.n, 3
  %i.cj = add nuw nsw i64 %i.ci, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ch, i64 %i.cj, i1 false), !alias.scope !225
  %i.ck = add nuw nsw i64 %i.n, 1
  %xtraiter18 = and i64 %i.ck, 3                  ; 2 uses
  %lcmp.mod19.not = icmp eq i64 %xtraiter18, 0
  br i1 %lcmp.mod19.not, label %.lr.ph.i5.prol.loopexit, label %.lr.ph.i5.prol

.lr.ph.i5.prol:                                   ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit, %.lr.ph.i5.prol
  %.sroa.0.06.i6.prol = phi i64 [ %i.cl, %.lr.ph.i5.prol ], [ %i.o, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit ] ; 4 uses
  %prol.iter20 = phi i64 [ %prol.iter20.next, %.lr.ph.i5.prol ], [ 0, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit ]
  %i.cl = add nuw nsw i64 %.sroa.0.06.i6.prol, 1  ; 2 uses
  %i.cm = icmp samesign ult i64 %.sroa.0.06.i6.prol, 12
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.0.06.i6.prol
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.f, ptr %i.co, align 8
  %i.cp = trunc nuw nsw i64 %.sroa.0.06.i6.prol to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  store i16 %i.cp, ptr %i.cq, align 8
  %prol.iter20.next = add i64 %prol.iter20, 1     ; 2 uses
  %prol.iter20.cmp.not = icmp eq i64 %prol.iter20.next, %xtraiter18
  br i1 %prol.iter20.cmp.not, label %.lr.ph.i5.prol.loopexit, label %.lr.ph.i5.prol, !llvm.loop !218

.lr.ph.i5.prol.loopexit:                          ; preds = %.lr.ph.i5.prol, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit
  %.sroa.0.06.i6.unr = phi i64 [ %i.o, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.cl, %.lr.ph.i5.prol ]
  %i.cr = icmp ult i16 %i.m, 3
  br i1 %i.cr, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit8, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.lr.ph.i5.prol.loopexit, %.lr.ph.i5
  %.sroa.0.06.i6 = phi i64 [ %i.dh, %.lr.ph.i5 ], [ %.sroa.0.06.i6.unr, %.lr.ph.i5.prol.loopexit ] ; 7 uses
  %i.cs = add nuw nsw i64 %.sroa.0.06.i6, 1       ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.0.06.i6
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.f, ptr %i.cu, align 8
  %i.cv = trunc nuw nsw i64 %.sroa.0.06.i6 to i16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 272
  store i16 %i.cv, ptr %i.cw, align 8
  %i.cx = add nuw nsw i64 %.sroa.0.06.i6, 2       ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cs
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.f, ptr %i.cz, align 8
  %i.da = trunc nuw nsw i64 %i.cs to i16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 272
  store i16 %i.da, ptr %i.db, align 8
  %i.dc = add nuw nsw i64 %.sroa.0.06.i6, 3       ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cx
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.f, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cx to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 272
  store i16 %i.df, ptr %i.dg, align 8
  %i.dh = add nuw nsw i64 %.sroa.0.06.i6, 4
  %i.di = icmp ult i64 %.sroa.0.06.i6, 9
  tail call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.dc
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.f, ptr %i.dk, align 8
  %i.dl = trunc nuw nsw i64 %i.dc to i16
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 272
  store i16 %i.dl, ptr %i.dm, align 8
  %exitcond.not.i7.3 = icmp eq i64 %i.dc, %i.p
  br i1 %exitcond.not.i7.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit8, label %.lr.ph.i5

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit8: ; preds = %.lr.ph.i5.prol.loopexit, %.lr.ph.i5, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit
  %.sink = phi i64 [ 288, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit ], [ 384, %.lr.ph.i5 ], [ 384, %.lr.ph.i5.prol.loopexit ]
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.sink, i64 noundef 8) #22
  %i.dn = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.do = insertvalue { ptr, i64 } %i.dn, i64 %i.d, 1
  ret { ptr, i64 } %i.do
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringINtNtBc_3vec3VecB1s_ENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringINtNtB6_3vec3VecB1p_EEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 538
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringbNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringbEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReRSB1s_NtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReRSB1p_EE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
end_hunk_0
begin_hunk_1_@_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringINtNtBc_3vec3VecB1i_EE16bulk_steal_rightCsbzNSmZPCnTx_10tgrep_core:bb.a

bb.g:                                             ; preds = %bb.e
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !7

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader ], [ %i.cz, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ar, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader ]
  %i.ar = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.as = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23.epil
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.au, align 8
  %i.av = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 536
  store i16 %i.av, ptr %i.aw, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil, !llvm.loop !1167

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 544 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 544 ; 6 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ae
  %i.ba = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ax, i64 %i.ba, i1 false), !alias.scope !1178
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %1
  %i.bc = shl nuw nsw i64 %i.n, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.bb, i64 %i.bd, i1 false), !alias.scope !1179
  %i.be = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ae
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.bg, align 8
  %i.bh = trunc nuw nsw i64 %i.ae to i16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 536
  store i16 %i.bh, ptr %i.bi, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bk = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bj
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bj to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 536
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.bs, align 8
  %i.bt = trunc nuw nsw i64 %i.bp to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 536
  store i16 %i.bt, ptr %i.bu, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bw = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.by, align 8
  %i.bz = trunc nuw nsw i64 %i.bv to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 536
  store i16 %i.bz, ptr %i.ca, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.cc = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.ce, align 8
  %i.cf = trunc nuw nsw i64 %i.cb to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 536
  store i16 %i.cf, ptr %i.cg, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ch = add nuw nsw i64 %i.k, 1
  %i.ci = sub nsw i64 %i.ch, %1                   ; 2 uses
  %xtraiter = and i64 %i.ci, 3                    ; 3 uses
  %i.cj = icmp samesign ult i64 %i.n, 3
  br i1 %i.cj, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader
  %unroll_iter = and i64 %i.ci, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new ], [ %i.cz, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit ]
  %i.ck = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.0.06.i23
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.cm, align 8
  %i.cn = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 536
  store i16 %i.cn, ptr %i.co, align 8
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ck
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.cr, align 8
  %i.cs = trunc nuw nsw i64 %i.ck to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 536
  store i16 %i.cs, ptr %i.ct, align 8
  %i.cu = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cp
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cp to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 536
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.da = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cu
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.cu to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 536
  store i16 %i.dd, ptr %i.de, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1q_ENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringbE15bulk_steal_leftCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !4
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !4
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !1199
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 4 %i.t, i64 %i.k, i1 false), !alias.scope !1200
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_slicebECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.f, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20, !noalias !1203
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_slicebECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !1203
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull readonly align 1 %i.ad, i64 range(i64 0, 65536) %i.w, i1 false), !alias.scope !1204
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.n
  %i.ag = load i8, ptr %i.af, align 1, !range !9, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.val17 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 276
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.val17 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.am = load i8, ptr %i.al, align 1, !range !9, !noalias !1205, !noundef !4
  store i8 %i.ag, ptr %i.al, align 1, !noalias !1205
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  store i8 %i.am, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !4
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load i64, ptr %i.as, align 8, !noundef !4
  %i.au = icmp eq i64 %i.at, 0                    ; 2 uses
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_slicebECsbzNSmZPCnTx_10tgrep_core.exit
  br i1 %i.au, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.j, !prof !8

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_slicebECsbzNSmZPCnTx_10tgrep_core.exit
  br i1 %i.au, label %bb.j, label %bb.k, !prof !7

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bz, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.loopexit.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.av, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.av = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i.epil
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 272
  store i16 %i.ay, ptr %i.az, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.i, !llvm.loop !1193

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #20
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 288 ; 8 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %1
  %i.bc = shl nuw nsw i64 %i.k, 3
  %i.bd = add nuw nsw i64 %i.bc, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bd, i1 false), !alias.scope !1206
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.v
  %i.bg = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bg, i1 false), !alias.scope !1207
  %i.bh = add nuw nsw i64 %1, %i.k
  %i.bi = add nuw nsw i64 %i.bh, 1                ; 2 uses
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = icmp samesign ult i64 %i.l, 3
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bi, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bz, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bk = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.sroa.0.06.i
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 272
  store i16 %i.bn, ptr %i.bo, align 8
  %i.bp = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bk
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bk to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 272
  store i16 %i.bs, ptr %i.bt, align 8
  %i.bu = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bp
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bp to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 272
  store i16 %i.bx, ptr %i.by, align 8
  %i.bz = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bu
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bu to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtBc_6string6StringbE16bulk_steal_rightCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 274 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !4 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !4
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 5 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  %i.v = load i8, ptr %i.u, align 1, !range !9, !noundef !4
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.val18 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 276
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.val18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.ab = load i8, ptr %i.aa, align 1, !range !9, !noalias !1227, !noundef !4
  store i8 %i.v, ptr %i.aa, align 1, !noalias !1227
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.f
  store i8 %i.ab, ptr %i.af, align 1
  %i.ag = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = mul nuw nsw i64 %i.q, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull readonly align 8 %i.r, i64 %i.ai, i1 false), !alias.scope !1228
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull readonly align 4 %i.t, i64 range(i64 0, 65536) %i.q, i1 false), !alias.scope !1229
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %1
  %i.al = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.ak, i64 %i.al, i1 false), !alias.scope !1230
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr nonnull align 1 %i.am, i64 %i.n, i1 false), !alias.scope !1231
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  %i.ap = icmp eq i64 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = icmp eq i64 %i.ar, 0                    ; 2 uses
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.as, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25, label %bb.h, !prof !8

bb.g:                                             ; preds = %bb.e
  br i1 %i.as, label %bb.h, label %bb.i, !prof !7

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader ], [ %i.db, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.at, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader ]
  %i.at = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.au = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23.epil
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.aw, align 8
  %i.ax = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 272
  store i16 %i.ax, ptr %i.ay, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil, !llvm.loop !1221

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #20
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 288 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 6 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ag
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.az, i64 %i.bc, i1 false), !alias.scope !1232
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %1
  %i.be = shl nuw nsw i64 %i.n, 3
  %i.bf = add nuw nsw i64 %i.be, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.az, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bf, i1 false), !alias.scope !1233
  %i.bg = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ag
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.bi, align 8
  %i.bj = trunc nuw nsw i64 %i.ag to i16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 272
  store i16 %i.bj, ptr %i.bk, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bm = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.bo, align 8
  %i.bp = trunc nuw nsw i64 %i.bl to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  store i16 %i.bp, ptr %i.bq, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bs = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.br
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.br to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 272
  store i16 %i.bv, ptr %i.bw, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bx = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.by = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bx
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bx to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 272
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.c, ptr %i.cg, align 8
  %i.ch = trunc nuw nsw i64 %i.cd to i16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 272
  store i16 %i.ch, ptr %i.ci, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cj = add nuw nsw i64 %i.k, 1
  %i.ck = sub nsw i64 %i.cj, %1                   ; 2 uses
  %xtraiter = and i64 %i.ck, 3                    ; 3 uses
  %i.cl = icmp samesign ult i64 %i.n, 3
  br i1 %i.cl, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader
  %unroll_iter = and i64 %i.ck, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new ], [ %i.db, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit ]
  %i.cm = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.0.06.i23
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.co, align 8
  %i.cp = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 272
  store i16 %i.cp, ptr %i.cq, align 8
  %i.cr = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cm
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.ct, align 8
  %i.cu = trunc nuw nsw i64 %i.cm to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 272
  store i16 %i.cu, ptr %i.cv, align 8
  %i.cw = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cr
  %i.cy = load ptr, ptr %i.cx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.cy, align 8
  %i.cz = trunc nuw nsw i64 %i.cr to i16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 272
  store i16 %i.cz, ptr %i.da, align 8
  %i.db = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dc = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.cw
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.h, ptr %i.de, align 8
  %i.df = trunc nuw nsw i64 %i.cw to i16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 272
  store i16 %i.df, ptr %i.dg, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsf3Ta7LF998c_4core3ops5range5RangejEECsbzNSmZPCnTx_10tgrep_core.exit
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringINtNtBb_3vec3VecB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.d
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1
  ret { ptr, ptr } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, ptr } @_RNvMsP_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5ImmutNtNtBb_6string6StringbNtB1m_14LeafOrInternalENtB1m_2KVE7into_kvCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ult i64 %i.d, 11
  tail call void @llvm.assume(i1 %i.e)
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  %i.i = insertvalue { ptr, ptr } poison, ptr %i.f, 0
  %i.j = insertvalue { ptr, ptr } %i.i, ptr %i.h, 1
  ret { ptr, ptr } %i.j
end_hunk_1
