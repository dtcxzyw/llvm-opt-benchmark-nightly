Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.09?download=true
inline.NumInlined: 1083
inline.NumDeleted: 596
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB9_3map8BTreeMapNtNtBd_6string6StringNtNtNtB1n_5value5value5ValueEE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalECskIqAKC4t9Ft_2yr:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 536
  store i16 %i.cc, ptr %i.cd, align 8, !noalias !119
  %i.ce = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.cf = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bz
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !119, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.n, ptr %i.ch, align 8, !noalias !119
  %i.ci = trunc nuw nsw i64 %i.bz to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 536
  store i16 %i.ci, ptr %i.cj, align 8, !noalias !119
  %exitcond.not.i.i.3 = icmp eq i64 %i.ce, %i.ac
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1u_5value5value5ValueENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1u_5value5value5ValueENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.ck = load i16, ptr %i.aa, align 2, !noalias !119, !noundef !9
  %i.cl = add i16 %i.ck, -1
  store i16 %i.cl, ptr %i.aa, align 2, !noalias !119
  %i.cm = icmp ugt i64 %i.p, 1
  br i1 %i.cm, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtB29_5value5value5ValueEEEECskIqAKC4t9Ft_2yr.exit.i, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB9_3map8BTreeMapNtNtBd_6string6StringNtNtNtB1n_5value5value5ValueEE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1Z_NtB4o_14LeafOrInternalEB3M_ECskIqAKC4t9Ft_2yr.exit

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtB29_5value5value5ValueEEEECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1u_5value5value5ValueENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 544 ; 6 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.t, i64 544
  %i.cq = shl nuw nsw i64 %i.w, 3
  %i.cr = add nuw nsw i64 %i.cq, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.cp, i64 %i.cr, i1 false), !alias.scope !125, !noalias !119
  %i.cs = add nuw nsw i64 %i.w, 1
  %xtraiter11 = and i64 %i.cs, 3                  ; 2 uses
  %lcmp.mod12.not = icmp eq i64 %xtraiter11, 0
  br i1 %lcmp.mod12.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol

.lr.ph.i5.i.prol:                                 ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtB29_5value5value5ValueEEEECskIqAKC4t9Ft_2yr.exit.i, %.lr.ph.i5.i.prol
  %.sroa.0.06.i6.i.prol = phi i64 [ %i.ct, %.lr.ph.i5.i.prol ], [ %i.x, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtB29_5value5value5ValueEEEECskIqAKC4t9Ft_2yr.exit.i ] ; 4 uses
  %prol.iter13 = phi i64 [ %prol.iter13.next, %.lr.ph.i5.i.prol ], [ 0, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtB29_5value5value5ValueEEEECskIqAKC4t9Ft_2yr.exit.i ]
  %i.ct = add nuw nsw i64 %.sroa.0.06.i6.i.prol, 1 ; 2 uses
  %i.cu = icmp samesign ult i64 %.sroa.0.06.i6.i.prol, 12
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.0.06.i6.i.prol
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !119, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.d, ptr %i.cw, align 8, !noalias !119
  %i.cx = trunc nuw nsw i64 %.sroa.0.06.i6.i.prol to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 536
  store i16 %i.cx, ptr %i.cy, align 8, !noalias !119
  %prol.iter13.next = add i64 %prol.iter13, 1     ; 2 uses
  %prol.iter13.cmp.not = icmp eq i64 %prol.iter13.next, %xtraiter11
  br i1 %prol.iter13.cmp.not, label %.lr.ph.i5.i.prol.loopexit, label %.lr.ph.i5.i.prol, !llvm.loop !118

.lr.ph.i5.i.prol.loopexit:                        ; preds = %.lr.ph.i5.i.prol, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtB29_5value5value5ValueEEEECskIqAKC4t9Ft_2yr.exit.i
  %.sroa.0.06.i6.i.unr = phi i64 [ %i.x, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node13move_to_sliceINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB4_3map8BTreeMapNtNtB8_6string6StringNtNtNtB29_5value5value5ValueEEEECskIqAKC4t9Ft_2yr.exit.i ], [ %i.ct, %.lr.ph.i5.i.prol ]
  %i.cz = icmp ult i16 %i.v, 3
  br i1 %i.cz, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB9_3map8BTreeMapNtNtBd_6string6StringNtNtNtB1n_5value5value5ValueEE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1Z_NtB4o_14LeafOrInternalEB3M_ECskIqAKC4t9Ft_2yr.exit, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i
  %.sroa.0.06.i6.i = phi i64 [ %i.dp, %.lr.ph.i5.i ], [ %.sroa.0.06.i6.i.unr, %.lr.ph.i5.i.prol.loopexit ] ; 7 uses
  %i.da = add nuw nsw i64 %.sroa.0.06.i6.i, 1     ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.0.06.i6.i
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !119, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.d, ptr %i.dc, align 8, !noalias !119
  %i.dd = trunc nuw nsw i64 %.sroa.0.06.i6.i to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 536
  store i16 %i.dd, ptr %i.de, align 8, !noalias !119
  %i.df = add nuw nsw i64 %.sroa.0.06.i6.i, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !119, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.d, ptr %i.dh, align 8, !noalias !119
  %i.di = trunc nuw nsw i64 %i.da to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 536
  store i16 %i.di, ptr %i.dj, align 8, !noalias !119
  %i.dk = add nuw nsw i64 %.sroa.0.06.i6.i, 3     ; 3 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.df
  %i.dm = load ptr, ptr %i.dl, align 8, !noalias !119, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.d, ptr %i.dm, align 8, !noalias !119
  %i.dn = trunc nuw nsw i64 %i.df to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 536
  store i16 %i.dn, ptr %i.do, align 8, !noalias !119
  %i.dp = add nuw nsw i64 %.sroa.0.06.i6.i, 4
  %i.dq = icmp ult i64 %.sroa.0.06.i6.i, 9
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.dk
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !119, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.d, ptr %i.ds, align 8, !noalias !119
  %i.dt = trunc nuw nsw i64 %i.dk to i16
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 536
  store i16 %i.dt, ptr %i.du, align 8, !noalias !119
  %exitcond.not.i7.i.3 = icmp eq i64 %i.dk, %i.y
  br i1 %exitcond.not.i7.i.3, label %_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB9_3map8BTreeMapNtNtBd_6string6StringNtNtNtB1n_5value5value5ValueEE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1Z_NtB4o_14LeafOrInternalEB3M_ECskIqAKC4t9Ft_2yr.exit, label %.lr.ph.i5.i

_RINvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB9_3map8BTreeMapNtNtBd_6string6StringNtNtNtB1n_5value5value5ValueEE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_B1Z_NtB4o_14LeafOrInternalEB3M_ECskIqAKC4t9Ft_2yr.exit: ; preds = %.lr.ph.i5.i.prol.loopexit, %.lr.ph.i5.i, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1u_5value5value5ValueENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i
  %.sink.i = phi i64 [ 544, %_RINvMsp_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1u_5value5value5ValueENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECskIqAKC4t9Ft_2yr.exit.i ], [ 640, %.lr.ph.i5.i ], [ 640, %.lr.ph.i5.i.prol.loopexit ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %.sink.i, i64 noundef 8) #23, !noalias !119
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
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1R_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEE13new_uninit_inB1O_() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1R_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEE13new_uninit_inB1O_() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECskIqAKC4t9Ft_2yr() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEE13new_uninit_inCskIqAKC4t9Ft_2yr() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr null, ptr %i.b, align 16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 802
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1w_5value5value5ValueENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECskIqAKC4t9Ft_2yr() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtBL_3map8BTreeMapNtNtB6_6string6StringNtNtNtB1t_5value5value5ValueEEE13new_uninit_inCskIqAKC4t9Ft_2yr() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 538
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1y_8metadata8MetadataNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECskIqAKC4t9Ft_2yr() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1v_8metadata8MetadataEE13new_uninit_inCskIqAKC4t9Ft_2yr() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 978
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedReNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1A_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEE13new_uninit_inB1x_() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1242
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1Y_E12insert_entry0EB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.0.i23.sroa.4.sroa.0 = alloca [16 x i8], align 8 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.4 = alloca [16 x i8], align 8   ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.747.sroa.0 = alloca [16 x i8], align 8   ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.7286 = alloca [16 x i8], align 8         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !214, !nonnull !9, !noundef !9 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !noalias !215, !noundef !9 ; 2 uses
  %i.k = icmp ugt i16 %i.j, 10
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !214, !noundef !9 ; 6 uses
  %i.n = icmp ult i64 %i.m, 5
  br i1 %i.n, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.o = zext nneg i16 %i.j to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.o, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !217, !noundef !9 ; 6 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.s
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.r ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECskIqAKC4t9Ft_2yr.exit.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.s
  %i.v = sub nsw i64 %i.o, %i.r                   ; 2 uses
  %i.w = mul nuw nsw i64 %i.v, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.w, i1 false), !alias.scope !218, !noalias !219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.y, i64 %i.v, i1 false), !alias.scope !220, !noalias !219
  br label %.thread

bb.e:                                             ; preds = %bb.b
  switch i64 %i.m, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.aa = add i64 %i.m, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.aa, %bb.f ], [ %i.m, %bb.b ], [ %i.m, %bb.e ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.m, %bb.e ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !214, !noundef !9 ; 4 uses
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEE13new_uninit_inB1O_()
          to label %.noexc.i unwind label %bb.m, !noalias !215 ; 8 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr null, ptr %i.ad, align 8, !noalias !221
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 274 ; 2 uses
  store i16 0, ptr %i.ae, align 2, !noalias !221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !222)
  %i.af = load i16, ptr %i.i, align 2, !noalias !223, !noundef !9
  %i.ag = zext i16 %i.af to i64
  %i.ah = xor i64 %.sroa.013.0.i, -1
  %i.ai = add nsw i64 %i.ag, %i.ah                ; 5 uses
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %i.ae, align 2, !alias.scope !222, !noalias !221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !223
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !223
  %i.am = icmp ult i64 %i.ai, 12
  br i1 %i.am, label %bb.n, label %bb.i, !prof !13

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ai, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.k unwind label %bb.j, !noalias !223

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #25
          to label %.thread.i.i unwind label %bb.l, !noalias !223

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !223
  unreachable

.thread.i.i:                                      ; preds = %bb.j
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 288, i64 noundef 8) #23, !noalias !221
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %.noexc.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.013.0.i
  %i.as = load i8, ptr %i.ar, align 1, !range !14, !noalias !223, !noundef !9 ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = mul nuw nsw i64 %i.ai, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull readonly align 8 %i.au, i64 %i.aw, i1 false), !alias.scope !224, !noalias !225
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull readonly align 1 %i.ax, i64 range(i64 0, 65536) %i.ai, i1 false), !alias.scope !226, !noalias !225
  %i.az = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.az, ptr %i.i, align 2, !noalias !223
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !215 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !223
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.ac ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ad, ptr %i.h ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 274 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !227, !noundef !9 ; 2 uses
  %i.bc = zext i16 %i.bb to i64                   ; 2 uses
  %7 = add i16 %i.bb, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bc
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.o, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECskIqAKC4t9Ft_2yr.exit.i17.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECskIqAKC4t9Ft_2yr.exit.i17.i: ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = sub nuw nsw i64 %i.bc, %.sroa.510.0.i   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.be, i64 %i.bi, i1 false), !alias.scope !228, !noalias !227
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 276 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.510.0.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %i.bk, i64 %i.bh, i1 false), !alias.scope !229, !noalias !227
  br label %bb.r

bb.p:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !230
  unreachable

.thread:                                          ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECskIqAKC4t9Ft_2yr.exit.i.i, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 276
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.r
  %i.bp = zext i1 %3 to i8
  store i8 %i.bp, ptr %i.bo, align 1, !alias.scope !220, !noalias !219
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.i, align 2, !noalias !219
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !217, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.q:                                             ; preds = %bb.m, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.an, %.thread.i.i ], [ %i.ap, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #25
          to label %.body unwind label %bb.p, !noalias !230

bb.r:                                             ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECskIqAKC4t9Ft_2yr.exit.i17.i, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 276
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.510.0.i
  %i.bu = zext i1 %3 to i8
  store i8 %i.bu, ptr %i.bt, align 1, !alias.scope !229, !noalias !227
  store i16 %7, ptr %i.ba, align 2, !noalias !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, i64 16, i1 false), !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7286)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bv = load ptr, ptr %i.h, align 8, !noalias !232, !noundef !9 ; 2 uses
  %.not.i179 = icmp eq ptr %i.bv, null
  br i1 %.not.i179, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.0.i23.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bx = icmp eq i64 %i.ac, 0
  %.sroa.7286.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.ah

bb.t:                                             ; preds = %.thread, %bb.r
  %.sink.i63 = phi i64 [ %i.r, %.thread ], [ %.sroa.510.0.i, %bb.r ]
  %.sink53.i62 = phi i64 [ %i.br, %.thread ], [ %spec.select.i, %bb.r ]
  %.sink54.i61 = phi ptr [ %i.h, %.thread ], [ %spec.select31.i, %bb.r ]
  store ptr %.sink54.i61, ptr %0, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink53.i62, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i63, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bl

._crit_edge:                                      ; preds = %bb.bk, %bb.s
  %i.ca = phi i8 [ %i.as, %bb.s ], [ %i.gg, %bb.bk ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload, %bb.s ], [ %.sroa.0.i23.sroa.0.0.copyload, %bb.bk ]
  %.lcssa171 = phi i64 [ 0, %bb.s ], [ %i.da, %bb.bk ] ; 2 uses
  %.lcssa163 = phi ptr [ %i.ad, %bb.s ], [ %i.fs, %bb.bk ] ; 4 uses
  %.lcssa155 = phi i64 [ %i.ac, %bb.s ], [ %i.da, %bb.bk ]
  %.lcssa = phi ptr [ %i.h, %bb.s ], [ %i.cv, %bb.bk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286, i64 16, i1 false)
  store i64 %.sroa.0.0, ptr %i.e, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 %i.ca, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.lcssa155, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.lcssa163, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.lcssa171, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.cb = load ptr, ptr %.val, align 8, !noalias !233, !noundef !9 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cb, null
  br i1 %.not.i19, label %bb.u, label %bb.w, !prof !11

bb.u:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
          to label %bb.v unwind label %bb.af, !noalias !233

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !234, !noalias !233, !noundef !9 ; 2 uses
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEE13new_uninit_inB1T_()
          to label %.noexc.i.i unwind label %bb.aa, !noalias !235 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.w
  store ptr null, ptr %i.ce, align 8, !noalias !235
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 274 ; 3 uses
  store i16 0, ptr %i.cf, align 2, !noalias !235
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 288 ; 2 uses
  store ptr %i.cb, ptr %i.cg, align 8, !noalias !235
  %i.ch = add i64 %i.cd, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.ab, !prof !11

bb.x:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.y unwind label %bb.z, !noalias !235

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 384, i64 noundef 8) #23, !noalias !235
  br label %.body.i.i

bb.aa:                                            ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aa, %bb.z
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %.noexc.i.i
  store ptr %i.ce, ptr %i.cb, align 8, !noalias !236
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  store i16 0, ptr %i.ck, align 8, !noalias !237
  store ptr %i.ce, ptr %.val, align 8, !alias.scope !234, !noalias !233
  store i64 %i.ch, ptr %i.cc, align 8, !alias.scope !234, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 24, i1 false)
  %i.cl = icmp eq i64 %.lcssa171, %i.cd
  br i1 %i.cl, label %bb.ac, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.cm = phi ptr [ @48, %bb.ab ], [ @46, %bb.ac ]
  %i.cn = phi i64 [ 48, %bb.ab ], [ 32, %bb.ac ]
  %i.co = phi ptr [ @49, %bb.ab ], [ @50, %bb.ac ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #24
          to label %.cont.i.i unwind label %bb.ad, !noalias !238

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cp = load i16, ptr %i.cf, align 2, !noalias !238, !noundef !9 ; 3 uses
  %i.cq = icmp ult i16 %i.cp, 11
  br i1 %i.cq, label %bb.bm, label %.invoke.i.i, !prof !12

bb.ad:                                            ; preds = %.invoke.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #25
          to label %.body unwind label %bb.ae, !noalias !233

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !233
  unreachable

bb.af:                                            ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #25
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ah:                                            ; preds = %.lr.ph, %bb.bk
  %.sroa.9.1 = phi i8 [ %i.as, %.lr.ph ], [ %i.gg, %bb.bk ] ; 4 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload, %.lr.ph ], [ %.sroa.0.i23.sroa.0.0.copyload, %bb.bk ]
  %i.cv = phi ptr [ %i.bv, %.lr.ph ], [ %i.kg, %bb.bk ] ; 24 uses
  %i.cw = phi ptr [ %i.h, %.lr.ph ], [ %i.cv, %bb.bk ]
  %i.cx = phi i64 [ %i.ac, %.lr.ph ], [ %i.da, %bb.bk ]
  %i.cy = phi ptr [ %i.ad, %.lr.ph ], [ %i.fs, %bb.bk ] ; 2 uses
  %i.cz = phi i1 [ %i.bx, %.lr.ph ], [ true, %bb.bk ]
  %i.da = add i64 %i.cx, 1                        ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 272
  %i.dc = load i16, ptr %i.db, align 8, !noalias !232 ; 4 uses
  %i.dd = zext i16 %i.dc to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.747.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.1, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.sroa.4.sroa.0)
  br i1 %i.cz, label %bb.aj, label %bb.ai, !prof !12

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !239

bb.aj:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 274 ; 4 uses
  %i.df = load i16, ptr %i.de, align 2, !noalias !239, !noundef !9 ; 5 uses
  %i.dg = icmp ult i16 %i.df, 11
  br i1 %i.dg, label %bb.am, label %bb.al

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ar, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.ak:                                            ; preds = %bb.ai
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.dh = icmp ult i16 %i.dc, 5
  br i1 %i.dh, label %bb.ar, label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.di = zext nneg i16 %i.df to i64              ; 5 uses
  %i.dj = add nuw nsw i16 %i.df, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.dl = add nuw nsw i64 %i.dd, 1                ; 7 uses
  %9 = icmp ugt i16 %i.df, %i.dc
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dd ; 3 uses
  br i1 %9, label %bb.an, label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEB18_.exit.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEB18_.exit.i.i: ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !240
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 276
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dd
  store i8 %.sroa.9.1, ptr %i.do, align 1, !alias.scope !241, !noalias !242
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dl
  %i.dq = sub nuw nsw i64 %i.di, %i.dd            ; 2 uses
  %i.dr = mul nuw nsw i64 %i.dq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.dm, i64 %i.dr, i1 false), !alias.scope !243, !noalias !242
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !240
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 276 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dd
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.dt, i64 %i.dq, i1 false), !alias.scope !241, !noalias !242
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 276
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dd
  store i8 %.sroa.9.1, ptr %i.dw, align 1, !alias.scope !241, !noalias !242
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 288 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dl
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dd
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = sub nuw nsw i64 %i.di, %i.dd
  %i.ec = shl nuw nsw i64 %i.eb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dy, i64 %i.ec, i1 false), !alias.scope !244, !noalias !242
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i.i: ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEB18_.exit.i.i, %bb.an
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  %i.ee = add nuw nsw i64 %i.di, 2                ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dl
  store ptr %i.cy, ptr %i.ef, align 8, !alias.scope !244, !noalias !242
  store i16 %i.dj, ptr %i.de, align 2, !noalias !242
  %i.eg = icmp samesign ult i64 %i.dl, %i.ee
  br i1 %i.eg, label %.lr.ph.i.i.i.preheader, label %.thread68

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i.i
  %i.eh = add nuw nsw i64 %i.di, 1
  %i.ei = sub nsw i64 %i.eh, %i.dd
  %i.ej = sub nsw i64 %i.di, %i.dd
  %xtraiter554 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod555.not = icmp eq i64 %xtraiter554, 0
  br i1 %lcmp.mod555.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.el, %.lr.ph.i.i.i.prol ], [ %i.dl, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter556 = phi i64 [ %prol.iter556.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.el = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.em = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.sroa.0.06.i.i.i.prol
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !242, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cv, ptr %i.eo, align 8, !noalias !242
  %i.ep = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 272
  store i16 %i.ep, ptr %i.eq, align 8, !noalias !242
  %prol.iter556.next = add i64 %prol.iter556, 1   ; 2 uses
  %prol.iter556.cmp.not = icmp eq i64 %prol.iter556.next, %xtraiter554
  br i1 %prol.iter556.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !183

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dl, %.lr.ph.i.i.i.preheader ], [ %i.el, %.lr.ph.i.i.i.prol ]
  %i.er = icmp ult i64 %i.ej, 3
  br i1 %i.er, label %.thread68, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.es = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  %i.et = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fl, %.lr.ph.i.i.i ] ; 7 uses
  %i.ew = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.sroa.0.06.i.i.i
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !242, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cv, ptr %i.ey, align 8, !noalias !242
  %i.ez = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 272
  store i16 %i.ez, ptr %i.fa, align 8, !noalias !242
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ew
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !242, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cv, ptr %i.fd, align 8, !noalias !242
  %i.fe = trunc nuw nsw i64 %i.ew to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 272
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !242
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fb
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !242, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cv, ptr %i.fi, align 8, !noalias !242
  %i.fj = trunc nuw nsw i64 %i.fb to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 272
  store i16 %i.fj, ptr %i.fk, align 8, !noalias !242
  %i.fl = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fm = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.fg
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !242, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cv, ptr %i.fo, align 8, !noalias !242
  %i.fp = trunc nuw nsw i64 %i.fg to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 272
  store i16 %i.fp, ptr %i.fq, align 8, !noalias !242
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fl, %i.ee
  br i1 %exitcond.not.i.i.i.3, label %.thread68, label %.lr.ph.i.i.i

bb.ao:                                            ; preds = %bb.al
  switch i16 %i.dc, label %bb.ap [
    i16 5, label %bb.ar
    i16 6, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.fr = add nsw i64 %i.dd, -7
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.al
  %.sroa.06.0.i = phi i64 [ 5, %bb.aq ], [ 6, %bb.ap ], [ 4, %bb.al ], [ 5, %bb.ao ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.aq ], [ %i.fr, %bb.ap ], [ %i.dd, %bb.al ], [ 5, %bb.ao ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.aq ], [ true, %bb.ap ], [ false, %bb.al ], [ false, %bb.ao ]
  %i.fs = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEE13new_uninit_inB1T_()
          to label %.noexc.i26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !239 ; 14 uses

.noexc.i26:                                       ; preds = %bb.ar
  store ptr null, ptr %i.fs, align 8, !noalias !245
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 274 ; 3 uses
  store i16 0, ptr %i.ft, align 2, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !245
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.fu = load i16, ptr %i.de, align 2, !noalias !248, !noundef !9
  %i.fv = zext i16 %i.fu to i64
  %i.fw = xor i64 %.sroa.06.0.i, -1
  %i.fx = add nsw i64 %i.fv, %i.fw                ; 5 uses
  %i.fy = trunc i64 %i.fx to i16
  store i16 %i.fy, ptr %i.ft, align 2, !alias.scope !247, !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !248
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !noalias !248
  %i.gb = icmp ult i64 %i.fx, 12
  br i1 %i.gb, label %bb.aw, label %bb.as, !prof !13

bb.as:                                            ; preds = %.noexc.i26
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fx, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.au unwind label %bb.at, !noalias !248

bb.at:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #25
          to label %bb.bf unwind label %bb.av, !noalias !248

bb.au:                                            ; preds = %bb.as
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !248
  unreachable

bb.aw:                                            ; preds = %.noexc.i26
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cv, i64 276 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.sroa.06.0.i
  %i.gg = load i8, ptr %i.gf, align 1, !range !14, !noalias !248, !noundef !9 ; 3 uses
  %i.gh = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gk = mul nuw nsw i64 %i.fx, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull readonly align 8 %i.gi, i64 %i.gk, i1 false), !alias.scope !249, !noalias !250
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gh
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fs, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gm, ptr nonnull readonly align 1 %i.gl, i64 range(i64 0, 65536) %i.fx, i1 false), !alias.scope !251, !noalias !250
  %i.gn = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gn, ptr %i.de, align 2, !noalias !248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !252
  store i8 %i.gg, ptr %i.bw, align 8, !alias.scope !246, !noalias !245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !248
  %i.go = load i16, ptr %i.ft, align 2, !noalias !245, !noundef !9 ; 3 uses
  %i.gp = zext i16 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 5 uses
  %i.gr = icmp ult i16 %i.go, 12
  br i1 %i.gr, label %bb.ax, label %bb.az, !prof !13

bb.ax:                                            ; preds = %bb.aw
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 288 ; 6 uses
  %i.gt = zext i16 %i.df to i64
  %i.gu = sub nuw nsw i64 %i.gt, %.sroa.06.0.i
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3N_11VacantEntryB1D_B1Y_E12insert_entry0EB22_:bb.a
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i12.i

bb.bh:                                            ; preds = %.epilog-lcssa
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.ih
  %i.im = sub nuw nsw i64 %i.ie, %.sroa.5.0.i     ; 3 uses
  %i.in = mul nuw nsw i64 %i.im, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.il, ptr nonnull align 8 %i.ii, i64 %i.in, i1 false), !alias.scope !259, !noalias !257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !240
  %i.io = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 276 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %.sroa.5.0.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ih
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.ip, i64 %i.im, i1 false), !alias.scope !258, !noalias !257
  store i8 %.sroa.9.1, ptr %i.ip, align 1, !alias.scope !258, !noalias !257
  %i.ir = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 288 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ih
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.sroa.5.0.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = shl nuw nsw i64 %i.im, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %i.is, i64 %i.iv, i1 false), !alias.scope !260, !noalias !257
  br label %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i12.i

_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i12.i: ; preds = %bb.bh, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEB18_.exit.i11.i
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 288 ; 6 uses
  %i.ix = add nuw nsw i64 %i.ie, 2                ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ih
  store ptr %i.cy, ptr %i.iy, align 8, !alias.scope !260, !noalias !257
  store i16 %i.if, ptr %i.ic, align 2, !noalias !257
  %i.iz = icmp samesign ult i64 %i.ih, %i.ix
  br i1 %i.iz, label %.lr.ph.i.i13.i.preheader, label %.loopexit

.lr.ph.i.i13.i.preheader:                         ; preds = %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i12.i
  %i.ja = add nuw nsw i64 %i.ie, 1
  %i.jb = sub nsw i64 %i.ja, %.sroa.5.0.i
  %i.jc = sub nsw i64 %i.ie, %.sroa.5.0.i
  %xtraiter552 = and i64 %i.jb, 3                 ; 2 uses
  %lcmp.mod553.not = icmp eq i64 %xtraiter552, 0
  br i1 %lcmp.mod553.not, label %.lr.ph.i.i13.i.prol.loopexit, label %.lr.ph.i.i13.i.prol

.lr.ph.i.i13.i.prol:                              ; preds = %.lr.ph.i.i13.i.preheader, %.lr.ph.i.i13.i.prol
  %.sroa.0.06.i.i14.i.prol = phi i64 [ %i.jd, %.lr.ph.i.i13.i.prol ], [ %i.ih, %.lr.ph.i.i13.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i13.i.prol ], [ 0, %.lr.ph.i.i13.i.preheader ]
  %i.jd = add nuw nsw i64 %.sroa.0.06.i.i14.i.prol, 1 ; 2 uses
  %i.je = icmp samesign ult i64 %.sroa.0.06.i.i14.i.prol, 12
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.0.06.i.i14.i.prol
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !257, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jg, align 8, !noalias !257
  %i.jh = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.prol to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 272
  store i16 %i.jh, ptr %i.ji, align 8, !noalias !257
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter552
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.prol.loopexit, label %.lr.ph.i.i13.i.prol, !llvm.loop !213

.lr.ph.i.i13.i.prol.loopexit:                     ; preds = %.lr.ph.i.i13.i.prol, %.lr.ph.i.i13.i.preheader
  %.sroa.0.06.i.i14.i.unr = phi i64 [ %i.ih, %.lr.ph.i.i13.i.preheader ], [ %i.jd, %.lr.ph.i.i13.i.prol ]
  %i.jj = icmp ult i64 %i.jc, 3
  br i1 %i.jj, label %.loopexit, label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i.i13.i.prol.loopexit, %.lr.ph.i.i13.i
  %.sroa.0.06.i.i14.i = phi i64 [ %i.jz, %.lr.ph.i.i13.i ], [ %.sroa.0.06.i.i14.i.unr, %.lr.ph.i.i13.i.prol.loopexit ] ; 7 uses
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i14.i, 1  ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.0.06.i.i14.i
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !257, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jm, align 8, !noalias !257
  %i.jn = trunc nuw nsw i64 %.sroa.0.06.i.i14.i to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 272
  store i16 %i.jn, ptr %i.jo, align 8, !noalias !257
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i14.i, 2  ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jk
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !257, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jr, align 8, !noalias !257
  %i.js = trunc nuw nsw i64 %i.jk to i16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 272
  store i16 %i.js, ptr %i.jt, align 8, !noalias !257
  %i.ju = add nuw nsw i64 %.sroa.0.06.i.i14.i, 3  ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jp
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !257, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jw, align 8, !noalias !257
  %i.jx = trunc nuw nsw i64 %i.jp to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 272
  store i16 %i.jx, ptr %i.jy, align 8, !noalias !257
  %i.jz = add nuw nsw i64 %.sroa.0.06.i.i14.i, 4  ; 2 uses
  %i.ka = icmp ult i64 %.sroa.0.06.i.i14.i, 9
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ju
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !257, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i28, ptr %i.kc, align 8, !noalias !257
  %i.kd = trunc nuw nsw i64 %i.ju to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 272
  store i16 %i.kd, ptr %i.ke, align 8, !noalias !257
  %exitcond.not.i.i15.i.3 = icmp eq i64 %i.jz, %i.ix
  br i1 %exitcond.not.i.i15.i.3, label %.loopexit, label %.lr.ph.i.i13.i

bb.bi:                                            ; preds = %bb.bj
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !240
  unreachable

bb.bj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf
  %.pn.ph.i24 = phi { ptr, i32 } [ %.pn.i.i, %bb.bf ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #25
          to label %.body unwind label %bb.bi, !noalias !240

.thread68:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit73

.loopexit:                                        ; preds = %.lr.ph.i.i13.i.prol.loopexit, %.lr.ph.i.i13.i, %_RINvNtNtNtCsexYYUdYSQU6_5alloc11collections5btree4node12slice_insertINtNtNtCskKLDkoKarTP_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtCskIqAKC4t9Ft_2yr6config13WarningConfigEEEB2t_.exit.i12.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.747.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.sroa.4.sroa.0, i64 16, i1 false), !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not16 = icmp eq i64 %.sroa.0.i23.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit73, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.747.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.sroa.0)
  %i.kg = load ptr, ptr %i.cv, align 8, !noalias !232, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.kg, null
  br i1 %.not.i, label %._crit_edge, label %bb.ah

.loopexit73:                                      ; preds = %.loopexit, %.thread68
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kh, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ki, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7286)
  br label %bb.bl

bb.bl:                                            ; preds = %.loopexit73, %bb.t, %bb.bm
  ret void

bb.bm:                                            ; preds = %bb.ac
  %i.kj = zext nneg i16 %i.cp to i64              ; 3 uses
  %i.kk = add nuw nsw i16 %i.cp, 1
  store i16 %i.kk, ptr %i.cf, align 2, !noalias !238
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %i.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 24, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ce, i64 276
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kj
  store i8 %i.ca, ptr %i.ko, align 1, !noalias !238
  %i.kp = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.kp
  store ptr %.lcssa163, ptr %i.kq, align 8, !noalias !238
  store ptr %i.ce, ptr %.lcssa163, align 8, !noalias !238
  %i.kr = trunc nuw nsw i64 %i.kp to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %.lcssa163, i64 272
  store i16 %i.kr, ptr %i.ks, align 8, !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ku, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7286)
  br label %bb.bl

.body:                                            ; preds = %bb.bj, %bb.af, %bb.ad, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %.pn.ph.i24, %bb.bj ], [ %i.ct, %bb.af ], [ %i.cr, %bb.ad ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3O_11VacantEntryB1D_B1Y_E12insert_entry0EB22_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [48 x i8], align 8   ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [48 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [48 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !359, !nonnull !9, !noundef !9 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !360, !noundef !9 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !359, !noundef !9 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !362, !noundef !9 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !364, !noalias !365
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nuw nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !366, !noalias !365
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !359, !noundef !9 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEE13new_uninit_inB1O_()
          to label %.noexc.i unwind label %bb.o, !noalias !360 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !367
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !367
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.an = load i16, ptr %i.p, align 2, !noalias !369, !noundef !9
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !368, !noalias !367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !369
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !369
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !369
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !13

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.l unwind label %bb.k, !noalias !369

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #25
          to label %bb.n unwind label %bb.m, !noalias !369

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !369
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #25
          to label %.thread.i.i unwind label %bb.m, !noalias !369

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #23, !noalias !367
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !370, !noalias !371
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !372, !noalias !371
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !369
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !360 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !360
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !369
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !373, !noundef !9 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 360 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !375, !noalias !373
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !376, !noalias !373
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !377
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !378, !noalias !365
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !365
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !362, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #25
          to label %bb.u unwind label %bb.s, !noalias !379

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #25
          to label %.critedge20 unwind label %bb.s, !noalias !377

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !380, !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458, i64 48, i1 false), !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !382, !noundef !9 ; 2 uses
  %.not.i177 = icmp eq ptr %i.by, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink50.i67 = phi i64 [ %i.bv, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink51.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select32.i, %bb.v ]
  store ptr %.sink51.i66, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i67, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !383, !noundef !9 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !11

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
          to label %bb.z unwind label %bb.ak, !noalias !383

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !384, !noalias !383, !noundef !9 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEE13new_uninit_inB1T_()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !385 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !385
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !385
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !385
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !11

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.ac unwind label %bb.ad, !noalias !385

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #23, !noalias !385
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !386
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !387
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !384, !noalias !383
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !384, !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !383
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @48, %bb.af ], [ @46, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @49, %bb.af ], [ @50, %bb.ag ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #24
          to label %.cont.i.i unwind label %bb.ah, !noalias !388

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !388, !noundef !9 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !12

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #25
          to label %bb.aj unwind label %bb.ai, !noalias !389

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !383
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #25
          to label %.critedge20 unwind label %bb.ai, !noalias !383

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j) #25
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da) #25
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.ky, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 624
  %i.di = load i16, ptr %i.dh, align 8, !noalias !382 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !12

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !390

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !390, !noundef !9 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !391
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !392, !noalias !393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !391
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !394, !noalias !393
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !395, !noalias !393
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !395, !noalias !393
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !393
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter518 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !393, !nonnull !9, !noundef !9 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !393
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !393
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !327

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !393, !nonnull !9, !noundef !9 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !393
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !393
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !393, !nonnull !9, !noundef !9 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !393
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !393
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !393, !nonnull !9, !noundef !9 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !393
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !393
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !393, !nonnull !9, !noundef !9 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !393
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !393
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEE13new_uninit_inB1T_()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !390 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !396
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !396
  tail call void @llvm.experimental.noalias.scope.decl(metadata !397)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !398, !noundef !9
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !397, !noalias !396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !398
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !398
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !398
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !13

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.bc unwind label %bb.bb, !noalias !398

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #25
          to label %bb.be unwind label %bb.bd, !noalias !398

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !398
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %bb.bo unwind label %bb.bd, !noalias !398

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !399, !noalias !400
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !401, !noalias !400
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !396, !noundef !9 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_1
begin_hunk_2_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3O_11VacantEntryB1D_B1Y_E12insert_entry0EB22_:bb.a
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.iu
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.5.0.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nuw nsw i64 %i.iy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull align 8 %i.je, i64 %i.jh, i1 false), !alias.scope !410, !noalias !407
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 6 uses
  %i.jj = add nuw nsw i64 %i.ir, 2                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.iu
  store ptr %i.de, ptr %i.jk, align 8, !alias.scope !410, !noalias !407
  store i16 %i.is, ptr %i.ip, align 2, !noalias !407
  %i.jl = icmp samesign ult i64 %i.iu, %i.jj
  br i1 %i.jl, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.jm = add nuw nsw i64 %i.ir, 1
  %i.jn = sub nsw i64 %i.jm, %.sroa.5.0.i
  %i.jo = sub nsw i64 %i.ir, %.sroa.5.0.i
  %xtraiter516 = and i64 %i.jn, 3                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i11.i.prol ], [ %i.iu, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jq = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i.prol
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !407, !nonnull !9, !noundef !9 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 352
  store ptr %spec.select.i31, ptr %i.jt, align 8, !noalias !407
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 624
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !407
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter516
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !358

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.iu, %.lr.ph.i.i11.i.preheader ], [ %i.jp, %.lr.ph.i.i11.i.prol ]
  %i.jw = icmp ult i64 %i.jo, 3
  br i1 %i.jw, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kp, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jx = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !407, !nonnull !9, !noundef !9 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 352
  store ptr %spec.select.i31, ptr %i.ka, align 8, !noalias !407
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 624
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !407
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jx
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !407, !nonnull !9, !noundef !9 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 352
  store ptr %spec.select.i31, ptr %i.kg, align 8, !noalias !407
  %i.kh = trunc nuw nsw i64 %i.jx to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 624
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !407
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kd
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !407, !nonnull !9, !noundef !9 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 352
  store ptr %spec.select.i31, ptr %i.km, align 8, !noalias !407
  %i.kn = trunc nuw nsw i64 %i.kd to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 624
  store i16 %i.kn, ptr %i.ko, align 8, !noalias !407
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kq = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kj
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !407, !nonnull !9, !noundef !9 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 352
  store ptr %spec.select.i31, ptr %i.kt, align 8, !noalias !407
  %i.ku = trunc nuw nsw i64 %i.kj to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 624
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !407
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kp, %i.jj
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !411
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIqAKC4t9Ft_2yr6config14MetadataConfigEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #25
          to label %bb.bv unwind label %bb.bt, !noalias !412

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #25
          to label %.critedge20 unwind label %bb.bt, !noalias !411

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4, i64 48, i1 false), !noalias !413
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.db, i64 352
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !382, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.ky, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select32.i, ptr %0, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.la, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.lb = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.lc = add nuw nsw i16 %i.cu, 1
  store i16 %i.lc, ptr %i.ci, align 2, !noalias !388
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cg, i64 360
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  %i.lf = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.lb
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %i.lg, i64 32, i1 false)
  %i.lh = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.lh
  store ptr %.lcssa161, ptr %i.li, align 8, !noalias !388
  %i.lj = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 352
  store ptr %i.cg, ptr %i.lj, align 8, !noalias !388
  %i.lk = trunc nuw nsw i64 %i.lh to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 624
  store i16 %i.lk, ptr %i.ll, align 8, !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select32.i, ptr %0, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ln, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cy, %bb.am ], [ %i.cw, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Q_11VacantEntryB1D_B1Y_E12insert_entry0ECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(48) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [80 x i8], align 16               ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [72 x i8], align 8   ; 5 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 16               ; 6 uses
  %i.g = alloca [48 x i8], align 16               ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [72 x i8], align 8          ; 6 uses
  %i.i = alloca [48 x i8], align 16               ; 6 uses
  %i.j = alloca [112 x i8], align 16              ; 12 uses
  %i.k = alloca [48 x i8], align 16               ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [72 x i8], align 8          ; 5 uses
  %i.m = alloca [48 x i8], align 16               ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [72 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [72 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.m, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !511, !nonnull !9, !noundef !9 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 802 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !512, !noundef !9 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !511, !noundef !9 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 536 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !514, !noundef !9 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !516, !noalias !517
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.i, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false)
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.z
  %i.ag = mul nuw nsw i64 %i.ac, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.af, ptr nonnull align 16 %i.ae, i64 %i.ag, i1 false), !alias.scope !518, !noalias !517
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !511, !noundef !9 ; 4 uses
  %i.ak = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i unwind label %bb.o, !noalias !512 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 528
  store ptr null, ptr %i.al, align 16, !noalias !519
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 802 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !519
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.an = load i16, ptr %i.p, align 2, !noalias !521, !noundef !9
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !520, !noalias !519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !521
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 536 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !521
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !521
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.g, ptr noundef nonnull align 16 dereferenceable(48) %i.au, i64 48, i1 false), !noalias !521
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !13

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.l unwind label %bb.k, !noalias !521

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 16 dereferenceable(48) %i.g) #25
          to label %bb.n unwind label %bb.m, !noalias !521

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !521
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #25
          to label %.thread.i.i unwind label %bb.m, !noalias !521

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 816, i64 noundef 16) #23, !noalias !519
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !522, !noalias !523
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.az
  %i.be = mul nuw nsw i64 %i.aq, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(816) %i.ak, ptr nonnull readonly align 16 %i.bd, i64 %i.be, i1 false), !alias.scope !524, !noalias !523
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !521
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !512 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !512
  %.sroa.458.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458.32..sroa_idx, ptr noundef nonnull align 16 dereferenceable(48) %i.g, i64 48, i1 false), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !521
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 802 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !525, !noundef !9 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 536 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !526)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !527, !noalias !525
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false)
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i, i64 %i.bl
  %i.br = mul nuw nsw i64 %i.bn, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.bq, ptr nonnull align 16 %i.bp, i64 %i.br, i1 false), !alias.scope !528, !noalias !525
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !529
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bt, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.i, i64 48, i1 false), !alias.scope !530, !noalias !517
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !517
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !514, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.m) #25
          to label %bb.u unwind label %bb.s, !noalias !531

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #25
          to label %.critedge20 unwind label %bb.s, !noalias !529

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [48 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bw, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.f, i64 48, i1 false), !alias.scope !532, !noalias !525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.458, i64 72, i1 false), !noalias !533
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 528
  %i.by = load ptr, ptr %i.bx, align 16, !noalias !534, !noundef !9 ; 2 uses
  %.not.i177 = icmp eq ptr %i.by, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 24 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink49.i67 = phi i64 [ %i.bv, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink50.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select31.i, %bb.v ]
  store ptr %.sink50.i66, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink49.i67, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7276, i64 72, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 16
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 16
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 16
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !535, !noundef !9 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !11

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
          to label %bb.z unwind label %bb.ak, !noalias !535

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !536, !noalias !535, !noundef !9 ; 2 uses
  %i.cg = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !537 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 528
  store ptr null, ptr %i.ch, align 16, !noalias !537
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 802 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !537
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 816 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 16, !noalias !537
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !11

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.ac unwind label %bb.ad, !noalias !537

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 912, i64 noundef 16) #23, !noalias !537
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 528
  store ptr %i.cg, ptr %i.cn, align 16, !noalias !538
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 800
  store i16 0, ptr %i.co, align 16, !noalias !539
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !536, !noalias !535
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !536, !noalias !535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(112) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !535
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.cp, i64 48, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @48, %bb.af ], [ @46, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @49, %bb.af ], [ @50, %bb.ag ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #24
          to label %.cont.i.i unwind label %bb.ah, !noalias !540

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !540, !noundef !9 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !12

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.d) #25
          to label %bb.aj unwind label %bb.ai, !noalias !541

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !535
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #25
          to label %.critedge20 unwind label %bb.ai, !noalias !535

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 16 dereferenceable(112) %i.j) #25
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 16 dereferenceable(48) %i.da) #25
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.ky, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 800
  %i.di = load i16, ptr %i.dh, align 16, !noalias !534 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276.32..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !12

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !542

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 802 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !542, !noundef !9 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 536 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !543
  %i.dt = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276.32..sroa_idx, i64 48, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !544, !noalias !545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !543
  %i.dx = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dr
  %i.dz = mul nuw nsw i64 %i.dv, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.dy, ptr nonnull align 16 %i.dx, i64 %i.dz, i1 false), !alias.scope !546, !noalias !545
  %i.ea = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ea, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276.32..sroa_idx, i64 48, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 816 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !547, !noalias !545
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 816
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !547, !noalias !545
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !545
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter518 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 816
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !545, !nonnull !9, !noundef !9 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 528
  store ptr %i.db, ptr %i.et, align 16, !noalias !545
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 800
  store i16 %i.eu, ptr %i.ev, align 16, !noalias !545
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !479

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 816
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 816
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 816
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 816
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !545, !nonnull !9, !noundef !9 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 528
  store ptr %i.db, ptr %i.fe, align 16, !noalias !545
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 800
  store i16 %i.ff, ptr %i.fg, align 16, !noalias !545
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !545, !nonnull !9, !noundef !9 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 528
  store ptr %i.db, ptr %i.fk, align 16, !noalias !545
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 800
  store i16 %i.fl, ptr %i.fm, align 16, !noalias !545
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !545, !nonnull !9, !noundef !9 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 528
  store ptr %i.db, ptr %i.fq, align 16, !noalias !545
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 800
  store i16 %i.fr, ptr %i.fs, align 16, !noalias !545
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !545, !nonnull !9, !noundef !9 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 528
  store ptr %i.db, ptr %i.fx, align 16, !noalias !545
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 800
  store i16 %i.fy, ptr %i.fz, align 16, !noalias !545
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !542 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 528
  store ptr null, ptr %i.gc, align 16, !noalias !548
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 802 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !548
  tail call void @llvm.experimental.noalias.scope.decl(metadata !549)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !550, !noundef !9
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !549, !noalias !548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !550
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 536 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !550
  %i.gl = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %i.gl, i64 48, i1 false), !noalias !550
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !13

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.bc unwind label %bb.bb, !noalias !550

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 16 dereferenceable(48) %i.a) #25
          to label %bb.be unwind label %bb.bd, !noalias !550

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !550
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %bb.bo unwind label %bb.bd, !noalias !550

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 536
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !551, !noalias !552
  %i.gt = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %i.gp
  %i.gu = mul nuw nsw i64 %i.gh, 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(816) %i.gb, ptr nonnull readonly align 16 %i.gt, i64 %i.gu, i1 false), !alias.scope !553, !noalias !552
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !554
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.bz, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !554
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !550
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !548, !noundef !9 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_2
begin_hunk_3_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3Q_11VacantEntryB1D_B1Y_E12insert_entry0ECskIqAKC4t9Ft_2yr:bb.a
  %i.jb = getelementptr inbounds nuw [48 x i8], ptr %spec.select.i31, i64 %i.iu
  %i.jc = mul nuw nsw i64 %i.iy, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.jb, ptr nonnull align 16 %i.ja, i64 %i.jc, i1 false), !alias.scope !561, !noalias !559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ja, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276.32..sroa_idx, i64 48, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 816 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.iu
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.5.0.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nuw nsw i64 %i.iy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull align 8 %i.je, i64 %i.jh, i1 false), !alias.scope !562, !noalias !559
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 816 ; 6 uses
  %i.jj = add nuw nsw i64 %i.ir, 2                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.iu
  store ptr %i.de, ptr %i.jk, align 8, !alias.scope !562, !noalias !559
  store i16 %i.is, ptr %i.ip, align 2, !noalias !559
  %i.jl = icmp samesign ult i64 %i.iu, %i.jj
  br i1 %i.jl, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.jm = add nuw nsw i64 %i.ir, 1
  %i.jn = sub nsw i64 %i.jm, %.sroa.5.0.i
  %i.jo = sub nsw i64 %i.ir, %.sroa.5.0.i
  %xtraiter516 = and i64 %i.jn, 3                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i11.i.prol ], [ %i.iu, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jq = icmp ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i.prol
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !559, !nonnull !9, !noundef !9 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 528
  store ptr %spec.select.i31, ptr %i.jt, align 16, !noalias !559
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 800
  store i16 %i.ju, ptr %i.jv, align 16, !noalias !559
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter516
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !510

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.iu, %.lr.ph.i.i11.i.preheader ], [ %i.jp, %.lr.ph.i.i11.i.prol ]
  %i.jw = icmp ult i64 %i.jo, 3
  br i1 %i.jw, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kp, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jx = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !559, !nonnull !9, !noundef !9 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 528
  store ptr %spec.select.i31, ptr %i.ka, align 16, !noalias !559
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 800
  store i16 %i.kb, ptr %i.kc, align 16, !noalias !559
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jx
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !559, !nonnull !9, !noundef !9 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 528
  store ptr %spec.select.i31, ptr %i.kg, align 16, !noalias !559
  %i.kh = trunc nuw nsw i64 %i.jx to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 800
  store i16 %i.kh, ptr %i.ki, align 16, !noalias !559
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kd
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !559, !nonnull !9, !noundef !9 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 528
  store ptr %spec.select.i31, ptr %i.km, align 16, !noalias !559
  %i.kn = trunc nuw nsw i64 %i.kd to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 800
  store i16 %i.kn, ptr %i.ko, align 16, !noalias !559
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kq = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kj
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !559, !nonnull !9, !noundef !9 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 528
  store ptr %spec.select.i31, ptr %i.kt, align 16, !noalias !559
  %i.ku = trunc nuw nsw i64 %i.kj to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 800
  store i16 %i.ku, ptr %i.kv, align 16, !noalias !559
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kp, %i.jj
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !563
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 16 dereferenceable(48) %i.k) #25
          to label %bb.bv unwind label %bb.bt, !noalias !564

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #25
          to label %.critedge20 unwind label %bb.bt, !noalias !563

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.sroa.4, i64 72, i1 false), !noalias !565
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.750, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.db, i64 528
  %i.ky = load ptr, ptr %i.kx, align 16, !noalias !534, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.ky, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.la, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.lb = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.lc = add nuw nsw i16 %i.cu, 1
  store i16 %i.lc, ptr %i.ci, align 2, !noalias !540
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cg, i64 536
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull align 16 dereferenceable(112) %i.j, i64 24, i1 false)
  %i.lf = getelementptr inbounds nuw [48 x i8], ptr %i.cg, i64 %i.lb
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.lf, ptr noundef nonnull align 8 dereferenceable(48) %i.lg, i64 48, i1 false)
  %i.lh = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.lh
  store ptr %.lcssa161, ptr %i.li, align 8, !noalias !540
  %i.lj = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 528
  store ptr %i.cg, ptr %i.lj, align 16, !noalias !540
  %i.lk = trunc nuw nsw i64 %i.lh to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 800
  store i16 %i.lk, ptr %i.ll, align 16, !noalias !540
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select31.i, ptr %0, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ln, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cy, %bb.am ], [ %i.cw, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1H_5value5value5ValueENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtB2m_5entryINtB4A_11VacantEntryB1D_B2j_E12insert_entry0ECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [40 x i8], align 8   ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [40 x i8], align 8          ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 13 uses
  %.sroa.7276 = alloca [40 x i8], align 8         ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [40 x i8], align 8          ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.l = load ptr, ptr %1, align 8, !alias.scope !663, !nonnull !9, !noundef !9 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 538 ; 4 uses
  %i.n = load i16, ptr %i.m, align 2, !noalias !664, !noundef !9 ; 2 uses
  %i.o = icmp ugt i16 %i.n, 10
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !663, !noundef !9 ; 6 uses
  %i.r = icmp ult i64 %i.q, 5
  br i1 %i.r, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.s = zext nneg i16 %i.n to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.s, 1                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !666, !noundef !9 ; 6 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.w
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.v ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.w
  %i.z = sub nsw i64 %i.s, %i.v
  %i.aa = mul nuw nsw i64 %i.z, 24                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.aa, i1 false), !alias.scope !669, !noalias !670
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !667
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.v
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ac, i64 %i.aa, i1 false), !alias.scope !671, !noalias !670
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.q, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = add i64 %i.q, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ], [ %i.q, %bb.b ], [ %i.q, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.q, %bb.f ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !663, !noundef !9 ; 4 uses
  %i.ah = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtBL_3map8BTreeMapNtNtB6_6string6StringNtNtNtB1t_5value5value5ValueEEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i unwind label %bb.o, !noalias !664 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  store ptr null, ptr %i.ah, align 8, !noalias !672
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 538 ; 2 uses
  store i16 0, ptr %i.ai, align 2, !noalias !672
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.aj = load i16, ptr %i.m, align 2, !noalias !674, !noundef !9
  %i.ak = zext i16 %i.aj to i64
  %i.al = xor i64 %.sroa.013.0.i, -1
  %i.am = add nsw i64 %i.ak, %i.al                ; 4 uses
  %i.an = trunc i64 %i.am to i16
  store i16 %i.an, ptr %i.ai, align 2, !alias.scope !673, !noalias !672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !674
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !674
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !674
  %i.as = icmp ult i64 %i.am, 12
  br i1 %i.as, label %bb.p, label %bb.j, !prof !13

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.am, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.l unwind label %bb.k, !noalias !674

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #25
          to label %bb.n unwind label %bb.m, !noalias !674

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !674
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #25
          to label %.thread.i.i unwind label %bb.m, !noalias !674

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 544, i64 noundef 8) #23, !noalias !672
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.aw = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.az = mul nuw nsw i64 %i.am, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull readonly align 8 %i.ax, i64 %i.az, i1 false), !alias.scope !675, !noalias !676
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.az, i1 false), !alias.scope !677, !noalias !676
  %i.bc = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bc, ptr %i.m, align 2, !noalias !674
  %.sroa.057.0.copyload = load i64, ptr %i.g, align 8, !noalias !664 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !664
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !674
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.ag ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ah, ptr %i.l ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 538 ; 2 uses
  %i.be = load i16, ptr %i.bd, align 2, !noalias !678, !noundef !9 ; 2 uses
  %i.bf = zext i16 %i.be to i64                   ; 2 uses
  %7 = add i16 %i.be, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bf
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bi = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.bi
  %i.bk = sub nuw nsw i64 %i.bf, %.sroa.510.0.i
  %i.bl = mul nuw nsw i64 %i.bk, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr nonnull align 8 %i.bh, i64 %i.bl, i1 false), !alias.scope !681, !noalias !678
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !679
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.510.0.i
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.bn, i64 %i.bl, i1 false), !alias.scope !682, !noalias !678
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !683
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !alias.scope !684, !noalias !670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.m, align 2, !noalias !670
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !666, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.at, %.thread.i.i ], [ %i.av, %bb.o ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %3) #25
          to label %bb.u unwind label %bb.s, !noalias !685

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #25
          to label %.critedge20 unwind label %bb.s, !noalias !683

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 272
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !686, !noalias !678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i16 %7, ptr %i.bd, align 2, !noalias !678
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.458, i64 40, i1 false), !noalias !687
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -2
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bw = load ptr, ptr %i.l, align 8, !noalias !688, !noundef !9 ; 2 uses
  %.not.i177 = icmp eq ptr %i.bw, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.by = icmp eq i64 %i.ag, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.v, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink50.i67 = phi i64 [ %i.bt, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink51.i66 = phi ptr [ %i.l, %.thread ], [ %spec.select32.i, %bb.v ]
  store ptr %.sink51.i66, ptr %0, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i67, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.ca, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dc, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ah, %bb.w ], [ %i.fu, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.ag, %bb.w ], [ %i.dc, %bb.bw ]
  %.lcssa = phi ptr [ %i.l, %bb.w ], [ %i.cx, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %i.i, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.cb = load ptr, ptr %.val, align 8, !noalias !689, !noundef !9 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cb, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !11

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
          to label %bb.z unwind label %bb.ak, !noalias !689

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !690, !noalias !689, !noundef !9 ; 2 uses
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtBL_3map8BTreeMapNtNtB6_6string6StringNtNtNtB1y_5value5value5ValueEEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !691 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  store ptr null, ptr %i.ce, align 8, !noalias !691
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 538 ; 3 uses
  store i16 0, ptr %i.cf, align 2, !noalias !691
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 544 ; 2 uses
  store ptr %i.cb, ptr %i.cg, align 8, !noalias !691
  %i.ch = add i64 %i.cd, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !11

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.ac unwind label %bb.ad, !noalias !691

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 640, i64 noundef 8) #23, !noalias !691
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  store ptr %i.ce, ptr %i.cb, align 8, !noalias !692
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 536
  store i16 0, ptr %i.ck, align 8, !noalias !693
  store ptr %i.ce, ptr %.val, align 8, !alias.scope !690, !noalias !689
  store i64 %i.ch, ptr %i.cc, align 8, !alias.scope !690, !noalias !689
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 24, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.cm = icmp eq i64 %.lcssa169, %i.cd
  br i1 %i.cm, label %bb.ag, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cn = phi ptr [ @48, %bb.af ], [ @46, %bb.ag ]
  %i.co = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.cp = phi ptr [ @49, %bb.af ], [ @50, %bb.ag ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cn, i64 noundef %i.co, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cp) #24
          to label %.cont.i.i unwind label %bb.ah, !noalias !694

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cq = load i16, ptr %i.cf, align 2, !noalias !694, !noundef !9 ; 3 uses
  %i.cr = icmp ult i16 %i.cq, 11
  br i1 %i.cr, label %bb.by, label %.invoke.i.i, !prof !12

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.cl) #25
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !695
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %.critedge20 unwind label %bb.ai, !noalias !695

bb.ak:                                            ; preds = %bb.y
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i) #25
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw) #25
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.cx = phi ptr [ %i.bw, %.lr.ph ], [ %i.kh, %bb.bw ] ; 24 uses
  %i.cy = phi ptr [ %i.l, %.lr.ph ], [ %i.cx, %bb.bw ]
  %i.cz = phi i64 [ %i.ag, %.lr.ph ], [ %i.dc, %bb.bw ]
  %i.da = phi ptr [ %i.ah, %.lr.ph ], [ %i.fu, %bb.bw ] ; 2 uses
  %i.db = phi i1 [ %i.by, %.lr.ph ], [ true, %bb.bw ]
  %i.dc = add i64 %i.cz, 1                        ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 536
  %i.de = load i16, ptr %i.dd, align 8, !noalias !688 ; 4 uses
  %i.df = zext i16 %i.de to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.0.1, ptr %i.j, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.db, label %bb.ap, label %bb.ao, !prof !12

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !696

bb.ap:                                            ; preds = %bb.an
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 538 ; 4 uses
  %i.dh = load i16, ptr %i.dg, align 2, !noalias !696, !noundef !9 ; 5 uses
  %i.di = icmp ult i16 %i.dh, 11
  br i1 %i.di, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp448 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dj = icmp ult i16 %i.de, 5
  br i1 %i.dj, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.dk = zext nneg i16 %i.dh to i64              ; 5 uses
  %i.dl = add nuw nsw i16 %i.dh, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dn = add nuw nsw i64 %i.df, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dh, %i.de
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.df ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !697
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 272
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %i.dn
  %i.ds = sub nuw nsw i64 %i.dk, %i.df
  %i.dt = mul nuw nsw i64 %i.ds, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull align 8 %i.do, i64 %i.dt, i1 false), !alias.scope !698, !noalias !699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !697
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 272 ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.df
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull align 8 %i.dv, i64 %i.dt, i1 false), !alias.scope !700, !noalias !699
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cx, i64 272
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.df
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cx, i64 544 ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.dn
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.df
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = sub nuw nsw i64 %i.dk, %i.df
  %i.ee = shl nuw nsw i64 %i.ed, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr nonnull align 8 %i.ea, i64 %i.ee, i1 false), !alias.scope !701, !noalias !699
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  %i.eg = add nuw nsw i64 %i.dk, 2                ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dn
  store ptr %i.da, ptr %i.eh, align 8, !alias.scope !701, !noalias !699
  store i16 %i.dl, ptr %i.dg, align 2, !noalias !699
  %i.ei = icmp samesign ult i64 %i.dn, %i.eg
  br i1 %i.ei, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.ej = add nuw nsw i64 %i.dk, 1
  %i.ek = sub nsw i64 %i.ej, %i.df
  %i.el = sub nsw i64 %i.dk, %i.df
  %xtraiter521 = and i64 %i.ek, 3                 ; 2 uses
  %lcmp.mod522.not = icmp eq i64 %xtraiter521, 0
  br i1 %lcmp.mod522.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.en, %.lr.ph.i.i.i.prol ], [ %i.dn, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter523 = phi i64 [ %prol.iter523.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.en = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eo = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.sroa.0.06.i.i.i.prol
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !699, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cx, ptr %i.eq, align 8, !noalias !699
  %i.er = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 536
  store i16 %i.er, ptr %i.es, align 8, !noalias !699
  %prol.iter523.next = add i64 %prol.iter523, 1   ; 2 uses
  %prol.iter523.cmp.not = icmp eq i64 %prol.iter523.next, %xtraiter521
  br i1 %prol.iter523.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !631

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dn, %.lr.ph.i.i.i.preheader ], [ %i.en, %.lr.ph.i.i.i.prol ]
  %i.et = icmp ult i64 %i.el, 3
  br i1 %i.et, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cx, i64 544
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fn, %.lr.ph.i.i.i ] ; 7 uses
  %i.ey = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.0.06.i.i.i
  %i.fa = load ptr, ptr %i.ez, align 8, !noalias !699, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cx, ptr %i.fa, align 8, !noalias !699
  %i.fb = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 536
  store i16 %i.fb, ptr %i.fc, align 8, !noalias !699
  %i.fd = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ey
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !699, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cx, ptr %i.ff, align 8, !noalias !699
  %i.fg = trunc nuw nsw i64 %i.ey to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 536
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !699
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.fd
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !699, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cx, ptr %i.fk, align 8, !noalias !699
  %i.fl = trunc nuw nsw i64 %i.fd to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 536
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !699
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fo = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fi
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !699, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %i.cx, ptr %i.fq, align 8, !noalias !699
  %i.fr = trunc nuw nsw i64 %i.fi to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 536
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !699
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fn, %i.eg
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.de, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ft = add nsw i64 %i.df, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ft, %bb.ax ], [ %i.df, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.fu = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtBL_3map8BTreeMapNtNtB6_6string6StringNtNtNtB1y_5value5value5ValueEEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp, !noalias !696 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  store ptr null, ptr %i.fu, align 8, !noalias !702
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 538 ; 3 uses
  store i16 0, ptr %i.fv, align 2, !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !702
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.fw = load i16, ptr %i.dg, align 2, !noalias !704, !noundef !9
  %i.fx = zext i16 %i.fw to i64
  %i.fy = xor i64 %.sroa.06.0.i, -1
  %i.fz = add nsw i64 %i.fx, %i.fy                ; 4 uses
  %i.ga = trunc i64 %i.fz to i16
  store i16 %i.ga, ptr %i.fv, align 2, !alias.scope !703, !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !704
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gc, i64 24, i1 false), !noalias !704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !704
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cx, i64 272 ; 2 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ge, i64 24, i1 false), !noalias !704
  %i.gf = icmp ult i64 %i.fz, 12
  br i1 %i.gf, label %bb.bf, label %bb.ba, !prof !13

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fz, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.bc unwind label %bb.bb, !noalias !704

bb.bb:                                            ; preds = %bb.ba
  %i.gg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #25
          to label %bb.be unwind label %bb.bd, !noalias !704

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !704
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %bb.bo unwind label %bb.bd, !noalias !704

bb.bf:                                            ; preds = %.noexc.i29
  %i.gi = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gb, i64 %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gl = mul nuw nsw i64 %i.fz, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gk, ptr nonnull readonly align 8 %i.gj, i64 %i.gl, i1 false), !alias.scope !705, !noalias !706
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.gi
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fu, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull readonly align 8 %i.gm, i64 %i.gl, i1 false), !alias.scope !707, !noalias !706
  %i.go = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.go, ptr %i.dg, align 2, !noalias !704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !704
  %i.gp = load i16, ptr %i.fv, align 2, !noalias !702, !noundef !9 ; 3 uses
  %i.gq = zext i16 %i.gp to i64
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 5 uses
  %i.gs = icmp ult i16 %i.gp, 12
  br i1 %i.gs, label %bb.bg, label %bb.bi, !prof !13
end_hunk_3
begin_hunk_4_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileINtNtB8_3map8BTreeMapNtNtBc_6string6StringNtNtNtB1H_5value5value5ValueENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtB2m_5entryINtB4A_11VacantEntryB1D_B2j_E12insert_entry0ECskIqAKC4t9Ft_2yr:bb.a
  %i.im = getelementptr inbounds nuw [24 x i8], ptr %i.ih, i64 %i.ii
  %i.in = sub nuw nsw i64 %i.if, %.sroa.5.0.i     ; 2 uses
  %i.io = mul nuw nsw i64 %i.in, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.im, ptr nonnull align 8 %i.ij, i64 %i.io, i1 false), !alias.scope !714, !noalias !713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !697
  %i.ip = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 272 ; 2 uses
  %i.iq = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %.sroa.5.0.i ; 2 uses
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.ii
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ir, ptr nonnull align 8 %i.iq, i64 %i.io, i1 false), !alias.scope !715, !noalias !713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 544 ; 2 uses
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.ii
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.sroa.5.0.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = shl nuw nsw i64 %i.in, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iv, ptr nonnull align 8 %i.it, i64 %i.iw, i1 false), !alias.scope !716, !noalias !713
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ix = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 544 ; 6 uses
  %i.iy = add nuw nsw i64 %i.if, 2                ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.ii
  store ptr %i.da, ptr %i.iz, align 8, !alias.scope !716, !noalias !713
  store i16 %i.ig, ptr %i.id, align 2, !noalias !713
  %i.ja = icmp samesign ult i64 %i.ii, %i.iy
  br i1 %i.ja, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.jb = add nuw nsw i64 %i.if, 1
  %i.jc = sub nsw i64 %i.jb, %.sroa.5.0.i
  %i.jd = sub nsw i64 %i.if, %.sroa.5.0.i
  %xtraiter519 = and i64 %i.jc, 3                 ; 2 uses
  %lcmp.mod520.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod520.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.je, %.lr.ph.i.i11.i.prol ], [ %i.ii, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.je = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jf = icmp ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.0.06.i.i12.i.prol
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !713, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jh, align 8, !noalias !713
  %i.ji = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 536
  store i16 %i.ji, ptr %i.jj, align 8, !noalias !713
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter519
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !662

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.ii, %.lr.ph.i.i11.i.preheader ], [ %i.je, %.lr.ph.i.i11.i.prol ]
  %i.jk = icmp ult i64 %i.jd, 3
  br i1 %i.jk, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.ka, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jl = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %.sroa.0.06.i.i12.i
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !713, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jn, align 8, !noalias !713
  %i.jo = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 536
  store i16 %i.jo, ptr %i.jp, align 8, !noalias !713
  %i.jq = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.jl
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !713, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i31, ptr %i.js, align 8, !noalias !713
  %i.jt = trunc nuw nsw i64 %i.jl to i16
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 536
  store i16 %i.jt, ptr %i.ju, align 8, !noalias !713
  %i.jv = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.jq
  %i.jx = load ptr, ptr %i.jw, align 8, !noalias !713, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jx, align 8, !noalias !713
  %i.jy = trunc nuw nsw i64 %i.jq to i16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 536
  store i16 %i.jy, ptr %i.jz, align 8, !noalias !713
  %i.ka = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kb = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kb)
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.jv
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !713, !nonnull !9, !noundef !9 ; 2 uses
  store ptr %spec.select.i31, ptr %i.kd, align 8, !noalias !713
  %i.ke = trunc nuw nsw i64 %i.jv to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 536
  store i16 %i.ke, ptr %i.kf, align 8, !noalias !713
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.ka, %i.iy
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !697
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp448, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtNtCsgTIQnf6SZNZ_7figment5value5value5ValueEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx) #25
          to label %bb.bv unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment7profile7ProfileECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #25
          to label %.critedge20 unwind label %bb.bt, !noalias !697

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4, i64 40, i1 false), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -2
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.750, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.kh = load ptr, ptr %i.cx, align 8, !noalias !688, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.kh, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select32.i, ptr %0, align 8
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.ki, align 8
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.kk = zext nneg i16 %i.cq to i64              ; 3 uses
  %i.kl = add nuw nsw i16 %i.cq, 1
  store i16 %i.kl, ptr %i.cf, align 2, !noalias !694
  %i.km = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %i.km, i64 %i.kk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kn, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 24, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ce, i64 272
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %i.ko, i64 %i.kk
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kp, ptr noundef nonnull align 8 dereferenceable(24) %i.kq, i64 24, i1 false)
  %i.kr = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.kr
  store ptr %.lcssa161, ptr %i.ks, align 8, !noalias !694
  store ptr %i.ce, ptr %.lcssa161, align 8, !noalias !694
  %i.kt = trunc nuw nsw i64 %i.kr to i16
  %i.ku = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 536
  store i16 %i.kt, ptr %i.ku, align 8, !noalias !694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !689
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %spec.select32.i, ptr %0, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kw, align 8
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cu, %bb.am ], [ %i.cs, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1J_8metadata8MetadataNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3R_11VacantEntryB1D_B2j_E12insert_entry0ECskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [88 x i8], align 8                ; 5 uses
  %.sroa.0.i.sroa.5 = alloca [72 x i8], align 8   ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 6 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  %.sroa.4.i.sroa.4 = alloca [72 x i8], align 8   ; 4 uses
  %i.g = alloca [120 x i8], align 8               ; 9 uses
  %i.h = alloca [80 x i8], align 8                ; 9 uses
  %.sroa.547 = alloca i64, align 8                ; 8 uses
  %.sroa.749 = alloca [72 x i8], align 8          ; 5 uses
  %.sroa.13 = alloca i64, align 8                 ; 5 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca i64, align 8                  ; 6 uses
  %.sroa.8 = alloca [72 x i8], align 8            ; 5 uses
  %.sroa.14 = alloca i64, align 8                 ; 5 uses
  %.sroa.16 = alloca [72 x i8], align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.4)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !809, !nonnull !9, !noundef !9 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 978 ; 4 uses
  %i.l = load i16, ptr %i.k, align 2, !noalias !810, !noundef !9 ; 2 uses
  %i.m = icmp ugt i16 %i.l, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !809, !noundef !9 ; 6 uses
  %i.p = icmp ult i64 %i.o, 5
  br i1 %i.p, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.q = zext nneg i16 %i.l to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.q, 1                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 888 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !812, !noundef !9 ; 6 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.u
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %2, ptr %i.v, align 8, !alias.scope !813, !noalias !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.x = sub nsw i64 %i.q, %i.t                   ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.v, i64 %i.y, i1 false), !alias.scope !813, !noalias !814
  store i64 %2, ptr %i.v, align 8, !alias.scope !813, !noalias !814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.t
  %i.aa = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.u
  %i.ab = mul nuw nsw i64 %i.x, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr nonnull align 8 %i.z, i64 %i.ab, i1 false), !alias.scope !816, !noalias !814
  br label %bb.t

bb.f:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = add i64 %i.o, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ac, %bb.g ], [ %i.o, %bb.b ], [ %i.o, %bb.f ] ; 7 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.o, %bb.f ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !809, !noundef !9 ; 2 uses
  %i.af = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1v_8metadata8MetadataEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i unwind label %bb.n, !noalias !810 ; 7 uses

.noexc.i:                                         ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 880
  store ptr null, ptr %i.ag, align 8, !noalias !817
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 978 ; 2 uses
  store i16 0, ptr %i.ah, align 2, !noalias !817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !818)
  %i.ai = load i16, ptr %i.k, align 2, !noalias !819, !noundef !9
  %i.aj = zext i16 %i.ai to i64
  %i.ak = xor i64 %.sroa.013.0.i, -1
  %i.al = add nsw i64 %i.aj, %i.ak                ; 5 uses
  %i.am = trunc i64 %i.al to i16
  store i16 %i.am, ptr %i.ah, align 2, !alias.scope !818, !noalias !817
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 888 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.013.0.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !819, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !819
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.aq, i64 80, i1 false), !noalias !819
  %i.ar = icmp ult i64 %i.al, 12
  br i1 %i.ar, label %bb.o, label %bb.j, !prof !13

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.al, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.l unwind label %bb.k, !noalias !819

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment8metadata8MetadataECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e) #25
          to label %.thread.i.i unwind label %bb.m, !noalias !819

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !819
  unreachable

.thread.i.i:                                      ; preds = %bb.k
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 984, i64 noundef 8) #23, !noalias !817
  br label %bb.u

bb.n:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %.noexc.i
  %i.av = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 888
  %i.ay = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull readonly align 8 %i.aw, i64 %i.ay, i1 false), !alias.scope !820, !noalias !821
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.av
  %i.ba = mul nuw nsw i64 %i.al, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(984) %i.af, ptr nonnull readonly align 8 %i.az, i64 %i.ba, i1 false), !alias.scope !822, !noalias !821
  %i.bb = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bb, ptr %i.k, align 2, !noalias !819
  %.sroa.4.i.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !noalias !810
  %.sroa.4.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.i.sroa.4.0..sroa_idx, i64 72, i1 false), !noalias !810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !819
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.ae
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.af, ptr %i.j ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 978 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !823, !noundef !9 ; 2 uses
  %i.be = zext i16 %i.bd to i64                   ; 2 uses
  %7 = add i16 %i.bd, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 888 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i64 %2, ptr %i.bg, align 8, !alias.scope !824, !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bh = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bh
  %i.bj = sub nuw nsw i64 %i.be, %.sroa.510.0.i   ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull align 8 %i.bg, i64 %i.bk, i1 false), !alias.scope !824, !noalias !823
  store i64 %2, ptr %i.bg, align 8, !alias.scope !824, !noalias !823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.bl = getelementptr inbounds nuw [80 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bm = getelementptr inbounds nuw [80 x i8], ptr %spec.select31.i, i64 %i.bh
  %i.bn = mul nuw nsw i64 %i.bj, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bl, i64 %i.bn, i1 false), !alias.scope !826, !noalias !823
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bo = getelementptr inbounds nuw [80 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.d, i64 80, i1 false), !alias.scope !827, !noalias !823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i16 %7, ptr %i.bc, align 2, !noalias !823
  store i64 %.sroa.4.i.sroa.0.0.copyload, ptr %.sroa.5, align 8, !noalias !828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.i.sroa.4, i64 72, i1 false), !noalias !828
  br label %bb.v

bb.s:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !829
  unreachable

bb.t:                                             ; preds = %bb.e, %bb.d
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %i.j, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.f, i64 80, i1 false), !alias.scope !830, !noalias !814
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.k, align 2, !noalias !814
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !812, !noundef !9
  br label %bb.v

bb.u:                                             ; preds = %bb.n, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.as, %.thread.i.i ], [ %i.au, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment8metadata8MetadataECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.i) #25
          to label %.body unwind label %bb.s, !noalias !829

bb.v:                                             ; preds = %bb.t, %bb.r
  %.sroa.12.0 = phi ptr [ %i.af, %bb.r ], [ undef, %bb.t ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.ae, %bb.r ], [ undef, %bb.t ] ; 2 uses
  %.sroa.033.0 = phi i64 [ %i.ap, %bb.r ], [ undef, %bb.t ] ; 2 uses
  %.sink55.i.sroa.phi = phi ptr [ %.sroa.14, %bb.r ], [ %.sroa.5, %bb.t ]
  %.sink54.i = phi i64 [ 0, %bb.r ], [ -2, %bb.t ]
  %.sink52.i = phi ptr [ %spec.select31.i, %bb.r ], [ %i.j, %bb.t ] ; 3 uses
  %.sink51.i = phi i64 [ %spec.select.i, %bb.r ], [ %i.bs, %bb.t ] ; 3 uses
  %.sink.i = phi i64 [ %.sroa.510.0.i, %bb.r ], [ %i.t, %bb.t ] ; 3 uses
  store i64 %.sink54.i, ptr %.sink55.i.sroa.phi, align 8, !alias.scope !808
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !831, !noundef !9 ; 3 uses
  %.not = icmp eq i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., -2
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8, i64 72, i1 false)
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.112. = load i64, ptr %.sroa.14, align 8, !noundef !9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.j, i64 880
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !832, !noundef !9 ; 2 uses
  %.not.i119 = icmp eq ptr %i.bu, null
  br i1 %.not.i119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.al

bb.x:                                             ; preds = %bb.v
  store ptr %.sink52.i, ptr %0, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink51.i, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.bx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.bu

._crit_edge:                                      ; preds = %bb.bs, %bb.w
  %.sroa.13184.0 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., %bb.w ], [ %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8., %bb.bs ]
  %.lcssa112 = phi i64 [ %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.112., %bb.w ], [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.112., %bb.bs ] ; 2 uses
  %.sroa.11.0105.lcssa = phi ptr [ %.sroa.12.0, %bb.w ], [ %.sroa.11.0, %bb.bs ] ; 4 uses
  %i.by = phi i64 [ %.sroa.033.0, %bb.w ], [ %.sroa.045.0, %bb.bs ] ; 2 uses
  %.lcssa91 = phi i64 [ %.sroa.10.0, %bb.w ], [ %i.cz, %bb.bs ]
  %.lcssa84 = phi ptr [ %i.j, %bb.w ], [ %i.cv, %bb.bs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.02.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16, i64 72, i1 false)
  store i64 %i.by, ptr %i.g, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store i64 %.sroa.13184.0, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr %.lcssa84, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store i64 %.lcssa91, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr %.sroa.11.0105.lcssa, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store i64 %.lcssa112, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.bz = load ptr, ptr %.val, align 8, !noalias !833, !noundef !9 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.bz, null
  br i1 %.not.i19, label %bb.y, label %bb.aa, !prof !11

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
          to label %bb.z unwind label %bb.aj, !noalias !833

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !834)
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !834, !noalias !833, !noundef !9 ; 2 uses
  %i.cc = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1A_8metadata8MetadataEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !835 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 880
  store ptr null, ptr %i.cd, align 8, !noalias !835
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 978 ; 3 uses
  store i16 0, ptr %i.ce, align 2, !noalias !835
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 984 ; 2 uses
  store ptr %i.bz, ptr %i.cf, align 8, !noalias !835
  %i.cg = add i64 %i.cb, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !11

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.ac unwind label %bb.ad, !noalias !835

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 1080, i64 noundef 8) #23, !noalias !835
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 880
  store ptr %i.cc, ptr %i.cj, align 8, !noalias !836
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 976
  store i16 0, ptr %i.ck, align 8, !noalias !837
  store ptr %i.cc, ptr %.val, align 8, !alias.scope !834, !noalias !833
  store i64 %i.cg, ptr %i.ca, align 8, !alias.scope !834, !noalias !833
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !833
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.sroa.4.0..sroa_idx, i64 80, i1 false)
  %i.cl = icmp eq i64 %.lcssa112, %i.cb
  br i1 %i.cl, label %bb.ag, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cm = phi ptr [ @48, %bb.af ], [ @46, %bb.ag ]
  %i.cn = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.co = phi ptr [ @49, %bb.af ], [ @50, %bb.ag ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #24
          to label %.cont.i.i unwind label %bb.ah, !noalias !838

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cp = load i16, ptr %i.ce, align 2, !noalias !838, !noundef !9 ; 3 uses
  %i.cq = icmp ult i16 %i.cp, 11
  br i1 %i.cq, label %bb.bv, label %.invoke.i.i, !prof !12

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment8metadata8MetadataECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c) #25
          to label %.body unwind label %bb.ai, !noalias !833

bb.ai:                                            ; preds = %bb.ah
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !833
  unreachable

bb.aj:                                            ; preds = %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment8metadata8MetadataECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(80) %.sroa.02.sroa.4.0..sroa_idx) #25
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.al:                                            ; preds = %.lr.ph, %bb.bs
  %.sroa.13184.1 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., %.lr.ph ], [ %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8., %bb.bs ]
  %i.cv = phi ptr [ %i.bu, %.lr.ph ], [ %i.ks, %bb.bs ] ; 26 uses
  %i.cw = phi ptr [ %i.j, %.lr.ph ], [ %i.cv, %bb.bs ]
  %i.cx = phi i64 [ %.sroa.10.0, %.lr.ph ], [ %i.cz, %bb.bs ] ; 2 uses
  %.sroa.045.098121 = phi i64 [ %.sroa.033.0, %.lr.ph ], [ %.sroa.045.0, %bb.bs ] ; 4 uses
  %.sroa.11.0105120 = phi ptr [ %.sroa.12.0, %.lr.ph ], [ %.sroa.11.0, %bb.bs ] ; 2 uses
  %i.cy = phi i64 [ %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.112., %.lr.ph ], [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.112., %bb.bs ]
  %i.cz = add i64 %i.cx, 1                        ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 976
  %i.db = load i16, ptr %i.da, align 8, !noalias !832 ; 4 uses
  %i.dc = zext i16 %i.db to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.13184.1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !839)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5)
  %i.dd = icmp eq i64 %i.cy, %i.cx
  br i1 %i.dd, label %bb.an, label %bb.am, !prof !12

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !840

bb.an:                                            ; preds = %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 978 ; 4 uses
  %i.df = load i16, ptr %i.de, align 2, !noalias !840, !noundef !9 ; 5 uses
  %i.dg = icmp ult i16 %i.df, 11
  br i1 %i.dg, label %bb.aq, label %bb.ap

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dh = icmp ult i16 %i.db, 5
  br i1 %i.dh, label %bb.ax, label %bb.au

bb.aq:                                            ; preds = %bb.an
  %i.di = zext nneg i16 %i.df to i64              ; 5 uses
  %i.dj = add nuw nsw i16 %i.df, 1
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 888 ; 2 uses
  %i.dl = add nuw nsw i64 %i.dc, 1                ; 7 uses
  %9 = icmp ugt i16 %i.df, %i.db
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dc ; 3 uses
  br i1 %9, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %.sroa.045.098121, ptr %i.dm, align 8, !alias.scope !841, !noalias !842
  %i.dn = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dn, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.dl
  %i.dp = sub nuw nsw i64 %i.di, %i.dc            ; 2 uses
  %i.dq = shl nuw nsw i64 %i.dp, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull align 8 %i.dm, i64 %i.dq, i1 false), !alias.scope !841, !noalias !842
  store i64 %.sroa.045.098121, ptr %i.dm, align 8, !alias.scope !841, !noalias !842
  %i.dr = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dc
  %i.ds = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dl
  %i.dt = mul nuw nsw i64 %i.dp, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ds, ptr nonnull align 8 %i.dr, i64 %i.dt, i1 false), !alias.scope !843, !noalias !842
  %i.du = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.du, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 984 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dl
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dc
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = sub nuw nsw i64 %i.di, %i.dc
  %i.ea = shl nuw nsw i64 %i.dz, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dw, i64 %i.ea, i1 false), !alias.scope !844, !noalias !842
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eb = getelementptr inbounds nuw i8, ptr %i.cv, i64 984
  %i.ec = add nuw nsw i64 %i.di, 2                ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dl
  store ptr %.sroa.11.0105120, ptr %i.ed, align 8, !alias.scope !844, !noalias !842
  store i16 %i.dj, ptr %i.de, align 2, !noalias !842
  %i.ee = icmp samesign ult i64 %i.dl, %i.ec
  br i1 %i.ee, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.at
  %i.ef = add nuw nsw i64 %i.di, 1
  %i.eg = sub nsw i64 %i.ef, %i.dc
  %i.eh = sub nsw i64 %i.di, %i.dc
  %xtraiter283 = and i64 %i.eg, 3                 ; 2 uses
  %lcmp.mod284.not = icmp eq i64 %xtraiter283, 0
  br i1 %lcmp.mod284.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cv, i64 984
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ej, %.lr.ph.i.i.i.prol ], [ %i.dl, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter285 = phi i64 [ %prol.iter285.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ej = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.ek = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.sroa.0.06.i.i.i.prol
  %i.em = load ptr, ptr %i.el, align 8, !noalias !842, !nonnull !9, !noundef !9 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 880
  store ptr %i.cv, ptr %i.en, align 8, !noalias !842
  %i.eo = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 976
  store i16 %i.eo, ptr %i.ep, align 8, !noalias !842
  %prol.iter285.next = add i64 %prol.iter285, 1   ; 2 uses
  %prol.iter285.cmp.not = icmp eq i64 %prol.iter285.next, %xtraiter283
  br i1 %prol.iter285.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !777

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dl, %.lr.ph.i.i.i.preheader ], [ %i.ej, %.lr.ph.i.i.i.prol ]
  %i.eq = icmp ult i64 %i.eh, 3
  br i1 %i.eq, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.er = getelementptr inbounds nuw i8, ptr %i.cv, i64 984
  %i.es = getelementptr inbounds nuw i8, ptr %i.cv, i64 984
  %i.et = getelementptr inbounds nuw i8, ptr %i.cv, i64 984
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cv, i64 984
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fn, %.lr.ph.i.i.i ] ; 7 uses
  %i.ev = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.0.06.i.i.i
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !842, !nonnull !9, !noundef !9 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 880
  store ptr %i.cv, ptr %i.ey, align 8, !noalias !842
  %i.ez = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 976
  store i16 %i.ez, ptr %i.fa, align 8, !noalias !842
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.ev
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !842, !nonnull !9, !noundef !9 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 880
  store ptr %i.cv, ptr %i.fe, align 8, !noalias !842
  %i.ff = trunc nuw nsw i64 %i.ev to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 976
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !842
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !842, !nonnull !9, !noundef !9 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 880
  store ptr %i.cv, ptr %i.fk, align 8, !noalias !842
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 976
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !842
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fo = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fh
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !842, !nonnull !9, !noundef !9 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 880
  store ptr %i.cv, ptr %i.fr, align 8, !noalias !842
  %i.fs = trunc nuw nsw i64 %i.fh to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 976
  store i16 %i.fs, ptr %i.ft, align 8, !noalias !842
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fn, %i.ec
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %bb.ap
  switch i16 %i.db, label %bb.av [
    i16 5, label %bb.ax
    i16 6, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.fu = add nsw i64 %i.dc, -7
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.ap
  %.sroa.06.0.i = phi i64 [ 5, %bb.aw ], [ 6, %bb.av ], [ 4, %bb.ap ], [ 5, %bb.au ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.aw ], [ %i.fu, %bb.av ], [ %i.dc, %bb.ap ], [ 5, %bb.au ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.aw ], [ true, %bb.av ], [ false, %bb.ap ], [ false, %bb.au ]
  %i.fv = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1A_8metadata8MetadataEE13new_uninit_inCskIqAKC4t9Ft_2yr()
          to label %.noexc.i25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !840 ; 13 uses

.noexc.i25:                                       ; preds = %bb.ax
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 880
  store ptr null, ptr %i.fw, align 8, !noalias !845
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 978 ; 3 uses
  store i16 0, ptr %i.fx, align 2, !noalias !845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !845
  tail call void @llvm.experimental.noalias.scope.decl(metadata !846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  %i.fy = load i16, ptr %i.de, align 2, !noalias !848, !noundef !9
  %i.fz = zext i16 %i.fy to i64
  %i.ga = xor i64 %.sroa.06.0.i, -1
  %i.gb = add nsw i64 %i.fz, %i.ga                ; 5 uses
  %i.gc = trunc i64 %i.gb to i16
  store i16 %i.gc, ptr %i.fx, align 2, !alias.scope !847, !noalias !845
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cv, i64 888 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.sroa.06.0.i
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !848, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !848
  %i.gg = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.gg, i64 80, i1 false), !noalias !848
  %i.gh = icmp ult i64 %i.gb, 12
  br i1 %i.gh, label %bb.bc, label %bb.ay, !prof !13

bb.ay:                                            ; preds = %.noexc.i25
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gb, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.ba unwind label %bb.az, !noalias !848

bb.az:                                            ; preds = %bb.ay
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment8metadata8MetadataECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #25
          to label %bb.bl unwind label %bb.bb, !noalias !848

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !848
  unreachable

bb.bc:                                            ; preds = %.noexc.i25
  %i.gk = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 888
  %i.gn = shl nuw nsw i64 %i.gb, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull readonly align 8 %i.gl, i64 %i.gn, i1 false), !alias.scope !849, !noalias !850
  %i.go = getelementptr inbounds nuw [80 x i8], ptr %i.cv, i64 %i.gk
  %i.gp = mul nuw nsw i64 %i.gb, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(984) %i.fv, ptr nonnull readonly align 8 %i.go, i64 %i.gp, i1 false), !alias.scope !851, !noalias !850
  %i.gq = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gq, ptr %i.de, align 2, !noalias !848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bv, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !852
  store i64 %i.gf, ptr %i.b, align 8, !alias.scope !846, !noalias !845
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !848
  %i.gr = load i16, ptr %i.fx, align 2, !noalias !845, !noundef !9 ; 3 uses
  %i.gs = zext i16 %i.gr to i64
  %i.gt = add nuw nsw i64 %i.gs, 1                ; 5 uses
  %i.gu = icmp ult i16 %i.gr, 12
  br i1 %i.gu, label %bb.bd, label %bb.bf, !prof !13

bb.bd:                                            ; preds = %bb.bc
end_hunk_4
begin_hunk_5_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1J_8metadata8MetadataNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3R_11VacantEntryB1D_B2j_E12insert_entry0ECskIqAKC4t9Ft_2yr:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.is, ptr nonnull align 8 %i.iq, i64 %i.iu, i1 false), !alias.scope !858, !noalias !857
  store i64 %.sroa.045.098121, ptr %i.iq, align 8, !alias.scope !858, !noalias !857
  %i.iv = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i27, i64 %.sroa.5.0.i ; 2 uses
  %i.iw = getelementptr inbounds nuw [80 x i8], ptr %spec.select.i27, i64 %i.ip
  %i.ix = mul nuw nsw i64 %i.it, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr nonnull align 8 %i.iv, i64 %i.ix, i1 false), !alias.scope !860, !noalias !857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.iv, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !859
  %i.iy = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 984 ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ip
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.sroa.5.0.i
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jb, ptr nonnull align 8 %i.iz, i64 %i.iu, i1 false), !alias.scope !861, !noalias !857
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jc = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 984 ; 6 uses
  %i.jd = add nuw nsw i64 %i.im, 2                ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.ip
  store ptr %.sroa.11.0105120, ptr %i.je, align 8, !alias.scope !861, !noalias !857
  store i16 %i.in, ptr %i.ik, align 2, !noalias !857
  %i.jf = icmp samesign ult i64 %i.ip, %i.jd
  br i1 %i.jf, label %.lr.ph.i.i11.i.preheader, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bp
  %i.jg = add nuw nsw i64 %i.im, 1
  %i.jh = sub nsw i64 %i.jg, %.sroa.5.0.i
  %i.ji = sub nsw i64 %i.im, %.sroa.5.0.i
  %xtraiter281 = and i64 %i.jh, 3                 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jj, %.lr.ph.i.i11.i.prol ], [ %i.ip, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jj = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jk = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jk)
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.sroa.0.06.i.i12.i.prol
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !857, !nonnull !9, !noundef !9 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 880
  store ptr %spec.select.i27, ptr %i.jn, align 8, !noalias !857
  %i.jo = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 976
  store i16 %i.jo, ptr %i.jp, align 8, !noalias !857
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter281
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !807

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.ip, %.lr.ph.i.i11.i.preheader ], [ %i.jj, %.lr.ph.i.i11.i.prol ]
  %i.jq = icmp ult i64 %i.ji, 3
  br i1 %i.jq, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kj, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %.sroa.0.06.i.i12.i
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !857, !nonnull !9, !noundef !9 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 880
  store ptr %spec.select.i27, ptr %i.ju, align 8, !noalias !857
  %i.jv = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jt, i64 976
  store i16 %i.jv, ptr %i.jw, align 8, !noalias !857
  %i.jx = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jr
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !857, !nonnull !9, !noundef !9 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 880
  store ptr %spec.select.i27, ptr %i.ka, align 8, !noalias !857
  %i.kb = trunc nuw nsw i64 %i.jr to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 976
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !857
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jx
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !857, !nonnull !9, !noundef !9 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 880
  store ptr %spec.select.i27, ptr %i.kg, align 8, !noalias !857
  %i.kh = trunc nuw nsw i64 %i.jx to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 976
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !857
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kk = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kk)
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.kd
  %i.km = load ptr, ptr %i.kl, align 8, !noalias !857, !nonnull !9, !noundef !9 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 880
  store ptr %spec.select.i27, ptr %i.kn, align 8, !noalias !857
  %i.ko = trunc nuw nsw i64 %i.kd to i16
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 976
  store i16 %i.ko, ptr %i.kp, align 8, !noalias !857
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kj, %i.jd
  br i1 %exitcond.not.i.i13.i.3, label %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i, label %.lr.ph.i.i11.i

_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i: ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bp
  store i64 %.sroa.0.i.sroa.4.0.copyload, ptr %.sroa.547, align 8, !noalias !862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.749, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.sroa.5, i64 72, i1 false), !noalias !862
  br label %.loopexit

bb.bq:                                            ; preds = %bb.br
  %i.kq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !859
  unreachable

bb.br:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bl
  %.pn.ph.i23 = phi { ptr, i32 } [ %.pn.i.i, %bb.bl ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsgTIQnf6SZNZ_7figment8metadata8MetadataECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h) #25
          to label %.body unwind label %bb.bq, !noalias !859

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i, %bb.at
  %.sroa.11.0 = phi ptr [ %i.fv, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i ], [ undef, %bb.at ], [ undef, %.lr.ph.i.i.i ], [ undef, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.045.0 = phi i64 [ %i.gf, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i ], [ undef, %bb.at ], [ undef, %.lr.ph.i.i.i ], [ undef, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sink41.i.sroa.phi = phi ptr [ %.sroa.13, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i ], [ %.sroa.547, %bb.at ], [ %.sroa.547, %.lr.ph.i.i.i ], [ %.sroa.547, %.lr.ph.i.i.i.prol.loopexit ]
  %.sink.i28 = phi i64 [ %i.cz, %_RNvMsM_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtNtCsgTIQnf6SZNZ_7figment5value3tag3TagNtNtB1I_8metadata8MetadataNtB1m_8InternalENtB1m_4EdgeE10insert_fitCskIqAKC4t9Ft_2yr.exit14.i ], [ -2, %bb.at ], [ -2, %.lr.ph.i.i.i ], [ -2, %.lr.ph.i.i.i.prol.loopexit ]
  store i64 %.sink.i28, ptr %.sink41.i.sroa.phi, align 8, !alias.scope !839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8. = load i64, ptr %.sroa.547, align 8, !range !831, !noundef !9 ; 3 uses
  %.not16 = icmp eq i64 %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8., -2
  br i1 %.not16, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.749, i64 72, i1 false)
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.112. = load i64, ptr %.sroa.13, align 8, !noundef !9 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.cv, i64 880
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !832, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.ks, null
  br i1 %.not.i, label %._crit_edge, label %bb.al

bb.bt:                                            ; preds = %.loopexit
  store ptr %.sink52.i, ptr %0, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink51.i, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.ku, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.x, %bb.bv
  ret void

bb.bv:                                            ; preds = %bb.ag
  %i.kv = zext nneg i16 %i.cp to i64              ; 3 uses
  %i.kw = add nuw nsw i16 %i.cp, 1
  store i16 %i.kw, ptr %i.ce, align 2, !noalias !838
  %i.kx = getelementptr inbounds nuw i8, ptr %i.cc, i64 888
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %i.kv
  store i64 %i.by, ptr %i.ky, align 8, !noalias !838
  %i.kz = getelementptr inbounds nuw [80 x i8], ptr %i.cc, i64 %i.kv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.kz, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.02.sroa.4.0..sroa_idx, i64 80, i1 false)
  %i.la = add nuw nsw i64 %i.kv, 1                ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.la
  store ptr %.sroa.11.0105.lcssa, ptr %i.lb, align 8, !noalias !838
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.11.0105.lcssa, i64 880
  store ptr %i.cc, ptr %i.lc, align 8, !noalias !838
  %i.ld = trunc nuw nsw i64 %i.la to i16
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.11.0105.lcssa, i64 976
  store i16 %i.ld, ptr %i.le, align 8, !noalias !838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %.sink52.i, ptr %0, align 8
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink51.i, ptr %i.lf, align 8
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.lg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.bu

.body:                                            ; preds = %bb.aj, %bb.ah, %bb.br, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i23, %bb.br ], [ %i.ct, %bb.aj ], [ %i.cr, %bb.ah ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3t_11VacantEntryB1D_B1F_E12insert_entry0EB1L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %4, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %5, ptr noalias nofree noundef nonnull readonly captures(none) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %.sroa.5.i.sroa.6 = alloca [96 x i8], align 8   ; 5 uses
  %i.c = alloca [96 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 6 uses
  %i.e = alloca [96 x i8], align 8                ; 5 uses
  %i.f = alloca [96 x i8], align 8                ; 6 uses
  %.sroa.7.i = alloca [96 x i8], align 8          ; 5 uses
  %i.g = alloca [144 x i8], align 8               ; 10 uses
  %i.h = alloca [96 x i8], align 8                ; 5 uses
  %i.i = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.27 = alloca [96 x i8], align 8           ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !960)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !960, !nonnull !9, !noundef !9 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1242 ; 4 uses
  %i.l = load i16, ptr %i.k, align 2, !noalias !961, !noundef !9 ; 2 uses
  %i.m = icmp ugt i16 %i.l, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !960, !noundef !9 ; 6 uses
  %i.p = icmp ult i64 %i.o, 5
  br i1 %i.p, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.q = zext nneg i16 %i.l to i64                ; 2 uses
  %7 = add nuw nsw i64 %i.q, 1                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 1056 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !963, !noundef !9 ; 6 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %7, %i.u
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.t ; 5 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %2, ptr %i.v, align 8, !alias.scope !964, !noalias !965
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %3, ptr %i.w, align 8, !alias.scope !964, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  br label %bb.u

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.u
  %i.y = sub nsw i64 %i.q, %i.t                   ; 2 uses
  %i.z = shl nuw nsw i64 %i.y, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr nonnull align 8 %i.v, i64 %i.z, i1 false), !alias.scope !964, !noalias !965
  store ptr %2, ptr %i.v, align 8, !alias.scope !964, !noalias !965
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %3, ptr %i.aa, align 8, !alias.scope !964, !noalias !966
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  %i.ab = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.t
  %i.ac = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.u
  %i.ad = mul nuw nsw i64 %i.y, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ab, i64 %i.ad, i1 false), !alias.scope !968, !noalias !966
  br label %bb.u

bb.f:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ae = add i64 %i.o, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ], [ %i.o, %bb.b ], [ %i.o, %bb.f ] ; 8 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.o, %bb.f ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !960, !noundef !9 ; 4 uses
  %i.ah = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEE13new_uninit_inB1x_()
          to label %.noexc.i unwind label %bb.n, !noalias !961 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1232
  store ptr null, ptr %i.ai, align 8, !noalias !969
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1242 ; 2 uses
  store i16 0, ptr %i.aj, align 2, !noalias !969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  %i.ak = load i16, ptr %i.k, align 2, !noalias !971, !noundef !9
  %i.al = zext i16 %i.ak to i64
  %i.am = xor i64 %.sroa.013.0.i, -1
  %i.an = add nsw i64 %i.al, %i.am                ; 5 uses
  %i.ao = trunc i64 %i.an to i16
  store i16 %i.ao, ptr %i.aj, align 2, !alias.scope !970, !noalias !969
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 1056 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.sroa.013.0.i ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !971, !nonnull !9, !noundef !9 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.at = load i64, ptr %i.as, align 8, !noalias !971, !noundef !9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !971
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.e, ptr noundef nonnull align 8 dereferenceable(96) %i.au, i64 96, i1 false), !noalias !971
  %i.av = icmp ult i64 %i.an, 12
  br i1 %i.av, label %bb.o, label %bb.j, !prof !13

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.an, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.l unwind label %bb.k, !noalias !971

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.e) #25
          to label %.thread.i.i unwind label %bb.m, !noalias !971

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !971
  unreachable

.thread.i.i:                                      ; preds = %bb.k
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef 1248, i64 noundef 8) #23, !noalias !969
  br label %bb.s

bb.n:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 1056
  %i.bc = shl nuw nsw i64 %i.an, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !972, !noalias !973
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.az
  %i.be = mul nuw nsw i64 %i.an, 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1248) %i.ah, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !974, !noalias !973
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.k, align 2, !noalias !971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(96) %i.e, i64 96, i1 false), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !971
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.ag ; 2 uses
  %spec.select30.i = select i1 %.sroa.09.0.i, ptr %i.ah, ptr %i.j ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 1242 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !975, !noundef !9 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %8 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 1056 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 5 uses
  br i1 %.not.i16.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %2, ptr %i.bk, align 8, !alias.scope !976, !noalias !975
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %3, ptr %i.bl, align 8, !alias.scope !976, !noalias !977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bm = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bm
  %i.bo = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr nonnull align 8 %i.bk, i64 %i.bp, i1 false), !alias.scope !976, !noalias !975
  store ptr %2, ptr %i.bk, align 8, !alias.scope !976, !noalias !975
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %3, ptr %i.bq, align 8, !alias.scope !976, !noalias !977
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  %i.br = getelementptr inbounds nuw [96 x i8], ptr %spec.select30.i, i64 %.sroa.510.0.i
  %i.bs = getelementptr inbounds nuw [96 x i8], ptr %spec.select30.i, i64 %i.bm
  %i.bt = mul nuw nsw i64 %i.bo, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bs, ptr nonnull align 8 %i.br, i64 %i.bt, i1 false), !alias.scope !979, !noalias !977
  br label %bb.t

bb.r:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !980
  unreachable

bb.s:                                             ; preds = %bb.n, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.i) #25
          to label %.body unwind label %bb.r, !noalias !980

bb.t:                                             ; preds = %bb.q, %bb.p
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %spec.select30.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.d, i64 96, i1 false), !alias.scope !981, !noalias !977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i16 %8, ptr %i.bg, align 2, !noalias !977
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7.i, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 1232
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !982, !noundef !9 ; 2 uses
  %.not.i167 = icmp eq ptr %i.bx, null
  br i1 %.not.i167, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ca = icmp eq i64 %i.ag, 0
  br label %bb.ai

bb.u:                                             ; preds = %bb.d, %bb.e
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %i.j, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cb, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.f, i64 96, i1 false), !alias.scope !983, !noalias !966
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %9 = trunc nuw nsw i64 %7 to i16
  store i16 %9, ptr %i.k, align 2, !noalias !966
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !963, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %0, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cd, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.t, ptr %i.cf, align 8
  br label %bb.bp

._crit_edge:                                      ; preds = %.loopexit70, %bb.t
  %i.cg = phi i64 [ %i.at, %bb.t ], [ %i.gt, %.loopexit70 ] ; 2 uses
  %i.ch = phi ptr [ %i.ar, %bb.t ], [ %i.gr, %.loopexit70 ] ; 2 uses
  %.lcssa160 = phi i64 [ 0, %bb.t ], [ %i.dk, %.loopexit70 ] ; 2 uses
  %.lcssa153 = phi ptr [ %i.ah, %bb.t ], [ %i.gh, %.loopexit70 ] ; 4 uses
  %.lcssa146 = phi i64 [ %i.ag, %bb.t ], [ %i.dk, %.loopexit70 ]
  %.lcssa = phi ptr [ %i.j, %bb.t ], [ %i.df, %.loopexit70 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.54.sroa.5.0..sroa.54.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.27, i64 96, i1 false)
  store ptr %.lcssa, ptr %i.g, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.lcssa146, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ch, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.cg, ptr %.sroa.54.sroa.4.0..sroa.54.0..sroa_idx.sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store ptr %.lcssa153, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store i64 %.lcssa160, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %5, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.ci = load ptr, ptr %.val, align 8, !noalias !984, !noundef !9 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.ci, null
  br i1 %.not.i19, label %bb.v, label %bb.x, !prof !11

bb.v:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
          to label %bb.w unwind label %bb.ag, !noalias !984

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !985, !noalias !984, !noundef !9 ; 2 uses
  %i.cl = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEE13new_uninit_inB1C_()
          to label %.noexc.i.i unwind label %bb.ab, !noalias !986 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1232
  store ptr null, ptr %i.cm, align 8, !noalias !986
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 1242 ; 3 uses
  store i16 0, ptr %i.cn, align 2, !noalias !986
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 1248 ; 2 uses
  store ptr %i.ci, ptr %i.co, align 8, !noalias !986
  %i.cp = add i64 %i.ck, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.ac, !prof !11

bb.y:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.z unwind label %bb.aa, !noalias !986

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 1344, i64 noundef 8) #23, !noalias !986
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ab, %bb.aa
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %.noexc.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 1232
  store ptr %i.cl, ptr %i.cs, align 8, !noalias !987
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 1240
  store i16 0, ptr %i.ct, align 8, !noalias !988
  store ptr %i.cl, ptr %.val, align 8, !alias.scope !985, !noalias !984
  store i64 %i.cp, ptr %i.cj, align 8, !alias.scope !985, !noalias !984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.27, i64 96, i1 false)
  %i.cu = icmp eq i64 %.lcssa160, %i.ck
  br i1 %i.cu, label %bb.ad, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ad, %bb.ac
  %i.cv = phi ptr [ @48, %bb.ac ], [ @46, %bb.ad ]
  %i.cw = phi i64 [ 48, %bb.ac ], [ 32, %bb.ad ]
  %i.cx = phi ptr [ @49, %bb.ac ], [ @50, %bb.ad ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #24
          to label %.cont.i.i unwind label %bb.ae, !noalias !989

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cy = load i16, ptr %i.cn, align 2, !noalias !989, !noundef !9 ; 3 uses
  %i.cz = icmp ult i16 %i.cy, 11
  br i1 %i.cz, label %bb.bq, label %.invoke.i.i, !prof !12

bb.ae:                                            ; preds = %.invoke.i.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c) #25
          to label %.body unwind label %bb.af, !noalias !990

bb.af:                                            ; preds = %bb.ae
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !990
  unreachable

bb.ag:                                            ; preds = %bb.v
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.dd) #25
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ai:                                            ; preds = %.lr.ph, %.loopexit70
  %.sroa.25.1 = phi i64 [ %i.at, %.lr.ph ], [ %i.gt, %.loopexit70 ] ; 4 uses
  %.sroa.21.1 = phi ptr [ %i.ar, %.lr.ph ], [ %i.gr, %.loopexit70 ] ; 4 uses
  %i.df = phi ptr [ %i.bx, %.lr.ph ], [ %i.lj, %.loopexit70 ] ; 26 uses
  %i.dg = phi ptr [ %i.j, %.lr.ph ], [ %i.df, %.loopexit70 ]
  %i.dh = phi i64 [ %i.ag, %.lr.ph ], [ %i.dk, %.loopexit70 ]
  %i.di = phi ptr [ %i.ah, %.lr.ph ], [ %i.gh, %.loopexit70 ] ; 2 uses
  %i.dj = phi i1 [ %i.ca, %.lr.ph ], [ true, %.loopexit70 ]
  %i.dk = add i64 %i.dh, 1                        ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 1240
  %i.dm = load i16, ptr %i.dl, align 8, !noalias !982 ; 4 uses
  %i.dn = zext i16 %i.dm to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.27, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.sroa.6)
  br i1 %i.dj, label %bb.ak, label %bb.aj, !prof !12

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !991

bb.ak:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 1242 ; 4 uses
  %i.dp = load i16, ptr %i.do, align 2, !noalias !991, !noundef !9 ; 5 uses
  %i.dq = icmp ult i16 %i.dp, 11
  br i1 %i.dq, label %bb.an, label %bb.am

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.au, %bb.aj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.al:                                            ; preds = %bb.aj
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.dr = icmp ult i16 %i.dm, 5
  br i1 %i.dr, label %bb.au, label %bb.ar

bb.an:                                            ; preds = %bb.ak
  %i.ds = zext nneg i16 %i.dp to i64              ; 5 uses
  %i.dt = add nuw nsw i16 %i.dp, 1
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 1056 ; 2 uses
  %i.dv = add nuw nsw i64 %i.dn, 1                ; 7 uses
  %10 = icmp ugt i16 %i.dp, %i.dm
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dn ; 5 uses
  br i1 %10, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %.sroa.21.1, ptr %i.dw, align 8, !alias.scope !992, !noalias !993
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.25.1, ptr %i.dx, align 8, !alias.scope !992, !noalias !994
  %i.dy = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.dy, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.27, i64 96, i1 false)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv
  %i.ea = sub nuw nsw i64 %i.ds, %i.dn            ; 2 uses
  %i.eb = shl nuw nsw i64 %i.ea, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.dw, i64 %i.eb, i1 false), !alias.scope !992, !noalias !993
  store ptr %.sroa.21.1, ptr %i.dw, align 8, !alias.scope !992, !noalias !993
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %.sroa.25.1, ptr %i.ec, align 8, !alias.scope !992, !noalias !994
  %i.ed = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.dn
  %i.ee = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.dv
  %i.ef = mul nuw nsw i64 %i.ea, 96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ed, i64 %i.ef, i1 false), !alias.scope !995, !noalias !994
  %i.eg = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.dn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.eg, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.27, i64 96, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.df, i64 1248 ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dv
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dn
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = sub nuw nsw i64 %i.ds, %i.dn
  %i.em = shl nuw nsw i64 %i.el, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %i.ei, i64 %i.em, i1 false), !alias.scope !996, !noalias !994
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 1248
  %i.eo = add nuw nsw i64 %i.ds, 2                ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.dv
  store ptr %i.di, ptr %i.ep, align 8, !alias.scope !996, !noalias !994
  store i16 %i.dt, ptr %i.do, align 2, !noalias !994
  %i.eq = icmp samesign ult i64 %i.dv, %i.eo
  br i1 %i.eq, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.aq
  %i.er = add nuw nsw i64 %i.ds, 1
  %i.es = sub nsw i64 %i.er, %i.dn
  %i.et = sub nsw i64 %i.ds, %i.dn
  %xtraiter530 = and i64 %i.es, 3                 ; 2 uses
  %lcmp.mod531.not = icmp eq i64 %xtraiter530, 0
  br i1 %lcmp.mod531.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eu = getelementptr inbounds nuw i8, ptr %i.df, i64 1248
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ev, %.lr.ph.i.i.i.prol ], [ %i.dv, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter532 = phi i64 [ %prol.iter532.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ev = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.ew = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %.sroa.0.06.i.i.i.prol
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !994, !nonnull !9, !noundef !9 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 1232
  store ptr %i.df, ptr %i.ez, align 8, !noalias !994
  %i.fa = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 1240
  store i16 %i.fa, ptr %i.fb, align 8, !noalias !994
  %prol.iter532.next = add i64 %prol.iter532, 1   ; 2 uses
  %prol.iter532.cmp.not = icmp eq i64 %prol.iter532.next, %xtraiter530
  br i1 %prol.iter532.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !928

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dv, %.lr.ph.i.i.i.preheader ], [ %i.ev, %.lr.ph.i.i.i.prol ]
  %i.fc = icmp ult i64 %i.et, 3
  br i1 %i.fc, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.df, i64 1248
  %i.fe = getelementptr inbounds nuw i8, ptr %i.df, i64 1248
  %i.ff = getelementptr inbounds nuw i8, ptr %i.df, i64 1248
  %i.fg = getelementptr inbounds nuw i8, ptr %i.df, i64 1248
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fz, %.lr.ph.i.i.i ] ; 7 uses
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %.sroa.0.06.i.i.i
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !994, !nonnull !9, !noundef !9 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 1232
  store ptr %i.df, ptr %i.fk, align 8, !noalias !994
  %i.fl = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1240
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !994
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !994, !nonnull !9, !noundef !9 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1232
  store ptr %i.df, ptr %i.fq, align 8, !noalias !994
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1240
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !994
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fn
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !994, !nonnull !9, !noundef !9 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1232
  store ptr %i.df, ptr %i.fw, align 8, !noalias !994
  %i.fx = trunc nuw nsw i64 %i.fn to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 1240
  store i16 %i.fx, ptr %i.fy, align 8, !noalias !994
  %i.fz = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.ga = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.ft
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !994, !nonnull !9, !noundef !9 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1232
  store ptr %i.df, ptr %i.gd, align 8, !noalias !994
  %i.ge = trunc nuw nsw i64 %i.ft to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 1240
  store i16 %i.ge, ptr %i.gf, align 8, !noalias !994
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fz, %i.eo
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.ar:                                            ; preds = %bb.am
  switch i16 %i.dm, label %bb.as [
    i16 5, label %bb.au
    i16 6, label %bb.at
  ]

bb.as:                                            ; preds = %bb.ar
  %i.gg = add nsw i64 %i.dn, -7
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.am
  %.sroa.06.0.i = phi i64 [ 5, %bb.at ], [ 6, %bb.as ], [ 4, %bb.am ], [ 5, %bb.ar ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.at ], [ %i.gg, %bb.as ], [ %i.dn, %bb.am ], [ 5, %bb.ar ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.at ], [ true, %bb.as ], [ false, %bb.am ], [ false, %bb.ar ]
  %i.gh = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEE13new_uninit_inB1C_()
          to label %.noexc.i25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !991 ; 14 uses

.noexc.i25:                                       ; preds = %bb.au
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1232
  store ptr null, ptr %i.gi, align 8, !noalias !997
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 1242 ; 3 uses
  store i16 0, ptr %i.gj, align 2, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.gk = load i16, ptr %i.do, align 2, !noalias !1000, !noundef !9
  %i.gl = zext i16 %i.gk to i64
  %i.gm = xor i64 %.sroa.06.0.i, -1
  %i.gn = add nsw i64 %i.gl, %i.gm                ; 5 uses
  %i.go = trunc i64 %i.gn to i16
  store i16 %i.go, ptr %i.gj, align 2, !alias.scope !999, !noalias !997
  %i.gp = getelementptr inbounds nuw i8, ptr %i.df, i64 1056 ; 2 uses
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %.sroa.06.0.i ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !noalias !1000, !nonnull !9, !noundef !9 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gt = load i64, ptr %i.gs, align 8, !noalias !1000, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1000
  %i.gu = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.gu, i64 96, i1 false), !noalias !1000
  %i.gv = icmp ult i64 %i.gn, 12
  br i1 %i.gv, label %bb.az, label %bb.av, !prof !13

bb.av:                                            ; preds = %.noexc.i25
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gn, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #24
          to label %bb.ax unwind label %bb.aw, !noalias !1000

bb.aw:                                            ; preds = %bb.av
  %i.gw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskIqAKC4t9Ft_2yr8commands4deps4DepsEBH_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #25
          to label %bb.bi unwind label %bb.ay, !noalias !1000

bb.ax:                                            ; preds = %bb.av
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #26, !noalias !1000
  unreachable

bb.az:                                            ; preds = %.noexc.i25
  %i.gy = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gp, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gh, i64 1056
  %i.hb = shl nuw nsw i64 %i.gn, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ha, ptr nonnull readonly align 8 %i.gz, i64 %i.hb, i1 false), !alias.scope !1001, !noalias !1002
  %i.hc = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.gy
  %i.hd = mul nuw nsw i64 %i.gn, 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1248) %i.gh, ptr nonnull readonly align 8 %i.hc, i64 %i.hd, i1 false), !alias.scope !1003, !noalias !1002
  %i.he = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.he, ptr %i.do, align 2, !noalias !1000
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.by, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !noalias !1004
  store ptr %i.gr, ptr %i.b, align 8, !alias.scope !998, !noalias !997
  store i64 %i.gt, ptr %i.bz, align 8, !alias.scope !998, !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1000
end_hunk_5
