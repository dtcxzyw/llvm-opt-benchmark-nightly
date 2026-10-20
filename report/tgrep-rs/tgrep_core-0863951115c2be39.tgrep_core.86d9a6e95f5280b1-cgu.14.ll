Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.14?download=true
inline.NumInlined: 448
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringbE8do_mergeNCINvB2_21merge_tracking_parentNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1j_bNtB2W_8InternalEB2k_ECsbzNSmZPCnTx_10tgrep_core:bb.a

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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ch, i64 %i.cj, i1 false), !alias.scope !217
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
  br i1 %prol.iter20.cmp.not, label %.lr.ph.i5.prol.loopexit, label %.lr.ph.i5.prol, !llvm.loop !211

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
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 362
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs9_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringbNtB1a_8InternalE12new_internalNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringbEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core() ; 6 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %0, ptr %i.c, align 8
  %i.d = add i64 %1, 1                            ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !noalias !222
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 0, ptr %i.e, align 8, !noalias !223
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.d, 1
  ret { ptr, i64 } %i.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 384, i64 noundef 8) #22
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1D_ENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3r_11VacantEntryB1D_B1Y_E12insert_entry0ECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [40 x i8], align 8   ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [40 x i8], align 8          ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [80 x i8], align 8                ; 12 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [40 x i8], align 8          ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [40 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !321, !nonnull !4, !noundef !4 ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 538 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !322, !noundef !4 ; 3 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !321, !noundef !4 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !324, !noundef !4 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.z, %i.v
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y
  %i.ad = mul nuw nsw i64 %i.ac, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !326, !noalias !327
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.y
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.z
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull align 8 %i.af, i64 %i.ad, i1 false), !alias.scope !328, !noalias !327
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
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !321, !noundef !4 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringINtNtB6_3vec3VecB1p_EEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i unwind label %bb.o, !noalias !322 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  store ptr null, ptr %i.ak, align 8, !noalias !329
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 538 ; 2 uses
  store i16 0, ptr %i.al, align 2, !noalias !329
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.am = load i16, ptr %i.p, align 2, !noalias !331, !noundef !4
  %i.an = zext i16 %i.am to i64
  %i.ao = xor i64 %.sroa.013.0.i, -1
  %i.ap = add nsw i64 %i.an, %i.ao                ; 4 uses
  %i.aq = trunc i64 %i.ap to i16
  store i16 %i.aq, ptr %i.al, align 2, !alias.scope !330, !noalias !329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !331
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !331
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 272 ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !331
  %i.av = icmp ult i64 %i.ap, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !10

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ap, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #21
          to label %bb.l unwind label %bb.k, !noalias !331

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %bb.n unwind label %bb.m, !noalias !331

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !331
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %.thread.i.i unwind label %bb.m, !noalias !331

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 544, i64 noundef 8) #22, !noalias !329
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bc = mul nuw nsw i64 %i.ap, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !332, !noalias !333
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.ak, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull readonly align 8 %i.bd, i64 %i.bc, i1 false), !alias.scope !334, !noalias !333
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !331
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !322 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !322
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !331
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 7 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 538 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !335, !noundef !4 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i
  %i.bo = mul nuw nsw i64 %i.bn, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !337, !noalias !335
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 272 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.510.0.i
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %i.bl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bq, i64 %i.bo, i1 false), !alias.scope !338, !noalias !335
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !339
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 272
  %6 = add nuw nsw i16 %i.q, 1
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !340, !noalias !327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %6, ptr %i.p, align 2, !noalias !327
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !324, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #18
          to label %bb.u unwind label %bb.s, !noalias !341

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #18
          to label %.critedge20 unwind label %bb.s, !noalias !339

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 272
  %7 = add i16 %i.bh, 1
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !342, !noalias !335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !335
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.458, i64 40, i1 false), !noalias !343
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bz = load ptr, ptr %i.o, align 8, !noalias !344, !noundef !4 ; 2 uses
  %.not.i177 = icmp eq ptr %i.bz, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cb = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink50.i67 = phi i64 [ %i.bw, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink51.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select32.i, %bb.v ]
  store ptr %.sink51.i66, ptr %0, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i67, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.df, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.fx, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.df, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.da, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, i64 40, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ce = load ptr, ptr %.val, align 8, !noalias !345, !noundef !4 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.ce, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !7

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %bb.z unwind label %bb.ak, !noalias !345

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !346, !noalias !345, !noundef !4 ; 2 uses
  %i.ch = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringINtNtB6_3vec3VecB1u_EEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !347 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  store ptr null, ptr %i.ch, align 8, !noalias !347
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 538 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !347
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 544 ; 2 uses
  store ptr %i.ce, ptr %i.cj, align 8, !noalias !347
  %i.ck = add i64 %i.cg, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !7

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.ac unwind label %bb.ad, !noalias !347

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 640, i64 noundef 8) #22, !noalias !347
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  store ptr %i.ch, ptr %i.ce, align 8, !noalias !348
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 536
  store i16 0, ptr %i.cn, align 8, !noalias !349
  store ptr %i.ch, ptr %.val, align 8, !alias.scope !346, !noalias !345
  store i64 %i.ck, ptr %i.cf, align 8, !alias.scope !346, !noalias !345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !345
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  %i.cp = icmp eq i64 %.lcssa169, %i.cg
  br i1 %i.cp, label %bb.ag, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cq = phi ptr [ @35, %bb.af ], [ @33, %bb.ag ]
  %i.cr = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.cs = phi ptr [ @36, %bb.af ], [ @37, %bb.ag ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cq, i64 noundef %i.cr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #21
          to label %.cont.i.i unwind label %bb.ah, !noalias !350

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.ct = load i16, ptr %i.ci, align 2, !noalias !350, !noundef !4 ; 3 uses
  %i.cu = icmp ult i16 %i.ct, 11
  br i1 %i.cu, label %bb.by, label %.invoke.i.i, !prof !8

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #18
          to label %bb.aj unwind label %bb.ai, !noalias !351

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !345
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #18
          to label %.critedge20 unwind label %bb.ai, !noalias !345

bb.ak:                                            ; preds = %bb.y
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.j) #18
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.cz = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cz) #18
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.da = phi ptr [ %i.bz, %.lr.ph ], [ %i.kk, %bb.bw ] ; 24 uses
  %i.db = phi ptr [ %i.o, %.lr.ph ], [ %i.da, %bb.bw ]
  %i.dc = phi i64 [ %i.aj, %.lr.ph ], [ %i.df, %bb.bw ]
  %i.dd = phi ptr [ %i.ak, %.lr.ph ], [ %i.fx, %bb.bw ] ; 2 uses
  %i.de = phi i1 [ %i.cb, %.lr.ph ], [ true, %bb.bw ]
  %i.df = add i64 %i.dc, 1                        ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 536
  %i.dh = load i16, ptr %i.dg, align 8, !noalias !344 ; 4 uses
  %i.di = zext i16 %i.dh to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.de, label %bb.ap, label %bb.ao, !prof !8

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !352

bb.ap:                                            ; preds = %bb.an
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 538 ; 4 uses
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !352, !noundef !4 ; 5 uses
  %i.dl = icmp ult i16 %i.dk, 11
  br i1 %i.dl, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dm = icmp ult i16 %i.dh, 5
  br i1 %i.dm, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.dn = zext nneg i16 %i.dk to i64              ; 5 uses
  %i.do = add nuw nsw i16 %i.dk, 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dq = add nuw nsw i64 %i.di, 1                ; 7 uses
  %.not.i.i32.not = icmp ult i16 %i.dh, %i.dk
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.di ; 3 uses
  br i1 %.not.i.i32.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !353
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 272
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.ds, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dt, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.dq
  %i.dv = sub nuw nsw i64 %i.dn, %i.di
  %i.dw = mul nuw nsw i64 %i.dv, 24               ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.dr, i64 %i.dw, i1 false), !alias.scope !354, !noalias !355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dr, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !353
  %i.dx = getelementptr inbounds nuw i8, ptr %i.da, i64 272 ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.di
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %i.dq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.dy, i64 %i.dw, i1 false), !alias.scope !356, !noalias !355
  %i.ea = getelementptr inbounds nuw i8, ptr %i.da, i64 272
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ea, i64 %i.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 544 ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dq
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.di
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = sub nuw nsw i64 %i.dn, %i.di
  %i.eh = shl nuw nsw i64 %i.eg, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.ed, i64 %i.eh, i1 false), !alias.scope !357, !noalias !355
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.ei = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.ej = add nuw nsw i64 %i.dn, 2                ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dq
  store ptr %i.dd, ptr %i.ek, align 8, !alias.scope !357, !noalias !355
  store i16 %i.do, ptr %i.dj, align 2, !noalias !355
  %i.el = icmp samesign ult i64 %i.dq, %i.ej
  br i1 %i.el, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.em = add nuw nsw i64 %i.dn, 1
  %i.en = sub nsw i64 %i.em, %i.di
  %i.eo = sub nsw i64 %i.dn, %i.di
  %xtraiter518 = and i64 %i.en, 3                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i.i.prol ], [ %i.dq, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.eq = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.er = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.sroa.0.06.i.i.i.prol
  %i.et = load ptr, ptr %i.es, align 8, !noalias !355, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.et, align 8, !noalias !355
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 536
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !355
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !289

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dq, %.lr.ph.i.i.i.preheader ], [ %i.eq, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.eo, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.ey = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  %i.fa = getelementptr inbounds nuw i8, ptr %i.da, i64 544
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fq, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !355, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.fd, align 8, !noalias !355
  %i.fe = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 536
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !355
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !355, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.fi, align 8, !noalias !355
  %i.fj = trunc nuw nsw i64 %i.fb to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 536
  store i16 %i.fj, ptr %i.fk, align 8, !noalias !355
  %i.fl = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fg
  %i.fn = load ptr, ptr %i.fm, align 8, !noalias !355, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.fn, align 8, !noalias !355
  %i.fo = trunc nuw nsw i64 %i.fg to i16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 536
  store i16 %i.fo, ptr %i.fp, align 8, !noalias !355
  %i.fq = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fr = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fl
  %i.ft = load ptr, ptr %i.fs, align 8, !noalias !355, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.ft, align 8, !noalias !355
  %i.fu = trunc nuw nsw i64 %i.fl to i16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 536
  store i16 %i.fu, ptr %i.fv, align 8, !noalias !355
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fq, %i.ej
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.dh, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.fw = add nsw i64 %i.di, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.fw, %bb.ax ], [ %i.di, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.fx = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringINtNtB6_3vec3VecB1u_EEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !352 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  store ptr null, ptr %i.fx, align 8, !noalias !358
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 538 ; 3 uses
  store i16 0, ptr %i.fy, align 2, !noalias !358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.fz = load i16, ptr %i.dj, align 2, !noalias !360, !noundef !4
  %i.ga = zext i16 %i.fz to i64
  %i.gb = xor i64 %.sroa.06.0.i, -1
  %i.gc = add nsw i64 %i.ga, %i.gb                ; 4 uses
  %i.gd = trunc i64 %i.gc to i16
  store i16 %i.gd, ptr %i.fy, align 2, !alias.scope !359, !noalias !358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !360
  %i.ge = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false), !noalias !360
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !360
  %i.gg = getelementptr inbounds nuw i8, ptr %i.da, i64 272 ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i64 24, i1 false), !noalias !360
  %i.gi = icmp ult i64 %i.gc, 12
  br i1 %i.gi, label %bb.bf, label %bb.ba, !prof !10

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gc, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #21
          to label %bb.bc unwind label %bb.bb, !noalias !360

bb.bb:                                            ; preds = %bb.ba
  %i.gj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %bb.be unwind label %bb.bd, !noalias !360

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.gk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !360
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %bb.bo unwind label %bb.bd, !noalias !360

bb.bf:                                            ; preds = %.noexc.i29
  %i.gl = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.ge, i64 %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.go = mul nuw nsw i64 %i.gc, 24               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gn, ptr nonnull readonly align 8 %i.gm, i64 %i.go, i1 false), !alias.scope !361, !noalias !362
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gg, i64 %i.gl
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fx, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr nonnull readonly align 8 %i.gp, i64 %i.go, i1 false), !alias.scope !363, !noalias !362
  %i.gr = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gr, ptr %i.dj, align 2, !noalias !360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !364
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !360
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !360
  %i.gs = load i16, ptr %i.fy, align 2, !noalias !358, !noundef !4 ; 3 uses
  %i.gt = zext i16 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 5 uses
  %i.gv = icmp ult i16 %i.gs, 12
  br i1 %i.gv, label %bb.bg, label %bb.bi, !prof !10
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringINtNtBc_3vec3VecB1D_ENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3r_11VacantEntryB1D_B1Y_E12insert_entry0ECsbzNSmZPCnTx_10tgrep_core:bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 272 ; 2 uses
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %.sroa.5.0.i ; 2 uses
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %i.il
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %i.it, i64 %i.ir, i1 false), !alias.scope !371, !noalias !369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7276.24..sroa_idx, i64 24, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 544 ; 2 uses
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.il
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.sroa.5.0.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = shl nuw nsw i64 %i.iq, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.iw, i64 %i.iz, i1 false), !alias.scope !372, !noalias !369
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 544 ; 6 uses
  %i.jb = add nuw nsw i64 %i.ii, 2                ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.il
  store ptr %i.dd, ptr %i.jc, align 8, !alias.scope !372, !noalias !369
  store i16 %i.ij, ptr %i.ig, align 2, !noalias !369
  %i.jd = icmp samesign ult i64 %i.il, %i.jb
  br i1 %i.jd, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.je = add nuw nsw i64 %i.ii, 1
  %i.jf = sub nsw i64 %i.je, %.sroa.5.0.i
  %i.jg = sub nsw i64 %i.ii, %.sroa.5.0.i
  %xtraiter516 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i11.i.prol ], [ %i.il, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jh = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.ji = icmp ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i12.i.prol
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jk, align 8, !noalias !369
  %i.jl = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 536
  store i16 %i.jl, ptr %i.jm, align 8, !noalias !369
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter516
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !320

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.il, %.lr.ph.i.i11.i.preheader ], [ %i.jh, %.lr.ph.i.i11.i.prol ]
  %i.jn = icmp ult i64 %i.jg, 3
  br i1 %i.jn, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kd, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jo = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i12.i
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jq, align 8, !noalias !369
  %i.jr = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 536
  store i16 %i.jr, ptr %i.js, align 8, !noalias !369
  %i.jt = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jo
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.jv, align 8, !noalias !369
  %i.jw = trunc nuw nsw i64 %i.jo to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 536
  store i16 %i.jw, ptr %i.jx, align 8, !noalias !369
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jt
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.ka, align 8, !noalias !369
  %i.kb = trunc nuw nsw i64 %i.jt to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 536
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !369
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.ke = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jy
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !369, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i31, ptr %i.kg, align 8, !noalias !369
  %i.kh = trunc nuw nsw i64 %i.jy to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 536
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !369
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kd, %i.jb
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !373
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtBG_6string6StringEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #18
          to label %bb.bv unwind label %bb.bt, !noalias !374

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #18
          to label %.critedge20 unwind label %bb.bt, !noalias !373

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.sroa.4, i64 40, i1 false), !noalias !375
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.750, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.kk = load ptr, ptr %i.da, align 8, !noalias !344, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.kk, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select32.i, ptr %0, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.kn = zext nneg i16 %i.ct to i64              ; 3 uses
  %i.ko = add nuw nsw i16 %i.ct, 1
  store i16 %i.ko, ptr %i.ci, align 2, !noalias !350
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.kq = getelementptr inbounds nuw [24 x i8], ptr %i.kp, i64 %i.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kq, ptr noundef nonnull align 8 dereferenceable(80) %i.j, i64 24, i1 false)
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ch, i64 272
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %i.kr, i64 %i.kn
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ks, ptr noundef nonnull align 8 dereferenceable(24) %i.kt, i64 24, i1 false)
  %i.ku = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ku
  store ptr %.lcssa161, ptr %i.kv, align 8, !noalias !350
  store ptr %i.ch, ptr %.lcssa161, align 8, !noalias !350
  %i.kw = trunc nuw nsw i64 %i.ku to i16
  %i.kx = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 536
  store i16 %i.kw, ptr %i.kx, align 8, !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select32.i, ptr %0, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.ky, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cx, %bb.am ], [ %i.cv, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !473, !nonnull !4, !noundef !4 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !474, !noundef !4 ; 3 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !473, !noundef !4 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !476, !noundef !4 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.z, %i.v
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !478, !noalias !479
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nuw nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !480, !noalias !479
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
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !473, !noundef !4 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i unwind label %bb.o, !noalias !474 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !481
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !481
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.an = load i16, ptr %i.p, align 2, !noalias !483, !noundef !4
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !482, !noalias !481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !483
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !483
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !483
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !483
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !10

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #21
          to label %bb.l unwind label %bb.k, !noalias !483

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #18
          to label %bb.n unwind label %bb.m, !noalias !483

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !483
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #18
          to label %.thread.i.i unwind label %bb.m, !noalias !483

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #22, !noalias !481
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !484, !noalias !485
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !486, !noalias !485
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !483
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !474 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !474
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !483
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !487, !noundef !4 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 360 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !488)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !489, !noalias !487
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !490, !noalias !487
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !491
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %6 = add nuw nsw i16 %i.q, 1
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !492, !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %6, ptr %i.p, align 2, !noalias !479
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !476, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #18
          to label %bb.u unwind label %bb.s, !noalias !493

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #18
          to label %.critedge20 unwind label %bb.s, !noalias !491

bb.v:                                             ; preds = %bb.q, %bb.r
  %7 = add i16 %i.bh, 1
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !494, !noalias !487
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458, i64 48, i1 false), !noalias !495
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
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !496, !noundef !4 ; 2 uses
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
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !497, !noundef !4 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !7

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %bb.z unwind label %bb.ak, !noalias !497

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !498, !noalias !497, !noundef !4 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !499 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !499
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !499
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !499
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !7

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.ac unwind label %bb.ad, !noalias !499

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #22, !noalias !499
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
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !500
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !501
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !498, !noalias !497
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !498, !noalias !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !497
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !497
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @35, %bb.af ], [ @33, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @36, %bb.af ], [ @37, %bb.ag ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #21
          to label %.cont.i.i unwind label %bb.ah, !noalias !502

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !502, !noundef !4 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !8

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) #18
          to label %bb.aj unwind label %bb.ai, !noalias !503

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !497
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #18
          to label %.critedge20 unwind label %bb.ai, !noalias !497

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j) #18
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da) #18
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
  %i.di = load i16, ptr %i.dh, align 8, !noalias !496 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !8

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !504

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !504, !noundef !4 ; 5 uses
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
  %.not.i.i32.not = icmp ult i16 %i.di, %i.dl
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %.not.i.i32.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !505
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !506, !noalias !507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !505
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !508, !noalias !507
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !509, !noalias !507
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !509, !noalias !507
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !507
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
  %i.es = load ptr, ptr %i.er, align 8, !noalias !507, !nonnull !4, !noundef !4 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !507
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !507
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !441

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
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !507, !nonnull !4, !noundef !4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !507
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !507
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !507, !nonnull !4, !noundef !4 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !507
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !507
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !507, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !507
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !507
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !507, !nonnull !4, !noundef !4 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !507
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !507
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
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !504 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !510
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !510
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !512, !noundef !4
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !511, !noalias !510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !512
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !512
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !512
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !10

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #21
          to label %bb.bc unwind label %bb.bb, !noalias !512

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #18
          to label %bb.be unwind label %bb.bd, !noalias !512

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !512
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #18
          to label %bb.bo unwind label %bb.bd, !noalias !512

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !513, !noalias !514
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !515, !noalias !514
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !516
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !512
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !510, !noundef !4 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_1
begin_hunk_2_@_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsbzNSmZPCnTx_10tgrep_core:bb.a
  %i.iz = mul nuw nsw i64 %i.iy, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ix, ptr nonnull align 8 %i.iv, i64 %i.iz, i1 false), !alias.scope !522, !noalias !521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iv, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !505
  %i.ja = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %.sroa.5.0.i ; 2 uses
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i31, i64 %i.iu
  %i.jc = shl nuw nsw i64 %i.iy, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jb, ptr nonnull align 8 %i.ja, i64 %i.jc, i1 false), !alias.scope !523, !noalias !521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ja, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 2 uses
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.iu
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.5.0.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nuw nsw i64 %i.iy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull align 8 %i.je, i64 %i.jh, i1 false), !alias.scope !524, !noalias !521
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 6 uses
  %i.jj = add nuw nsw i64 %i.ir, 2                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.iu
  store ptr %i.de, ptr %i.jk, align 8, !alias.scope !524, !noalias !521
  store i16 %i.is, ptr %i.ip, align 2, !noalias !521
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
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !521, !nonnull !4, !noundef !4 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 352
  store ptr %spec.select.i31, ptr %i.jt, align 8, !noalias !521
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 624
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !521
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter516
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !472

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.iu, %.lr.ph.i.i11.i.preheader ], [ %i.jp, %.lr.ph.i.i11.i.prol ]
  %i.jw = icmp ult i64 %i.jo, 3
  br i1 %i.jw, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kp, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jx = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !521, !nonnull !4, !noundef !4 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 352
  store ptr %spec.select.i31, ptr %i.ka, align 8, !noalias !521
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 624
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !521
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jx
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !521, !nonnull !4, !noundef !4 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 352
  store ptr %spec.select.i31, ptr %i.kg, align 8, !noalias !521
  %i.kh = trunc nuw nsw i64 %i.jx to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 624
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !521
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kd
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !521, !nonnull !4, !noundef !4 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 352
  store ptr %spec.select.i31, ptr %i.km, align 8, !noalias !521
  %i.kn = trunc nuw nsw i64 %i.kd to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 624
  store i16 %i.kn, ptr %i.ko, align 8, !noalias !521
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kq = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kj
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !521, !nonnull !4, !noundef !4 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 352
  store ptr %spec.select.i31, ptr %i.kt, align 8, !noalias !521
  %i.ku = trunc nuw nsw i64 %i.kj to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 624
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !521
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kp, %i.jj
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !525
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #18
          to label %bb.bv unwind label %bb.bt, !noalias !526

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #18
          to label %.critedge20 unwind label %bb.bt, !noalias !525

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4, i64 48, i1 false), !noalias !527
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.db, i64 352
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !496, !noundef !4 ; 2 uses
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
  store i16 %i.lc, ptr %i.ci, align 2, !noalias !502
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cg, i64 360
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  %i.lf = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.lb
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %i.lg, i64 32, i1 false)
  %i.lh = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.lh
  store ptr %.lcssa161, ptr %i.li, align 8, !noalias !502
  %i.lj = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 352
  store ptr %i.cg, ptr %i.lj, align 8, !noalias !502
  %i.lk = trunc nuw nsw i64 %i.lh to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 624
  store i16 %i.lk, ptr %i.ll, align 8, !noalias !502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !497
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
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB37_11VacantEntryB1D_bE12insert_entry0ECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i1 noundef zeroext %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  %i.h = load ptr, ptr %1, align 8, !alias.scope !617, !nonnull !4, !noundef !4 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 274 ; 4 uses
  %i.j = load i16, ptr %i.i, align 2, !noalias !618, !noundef !4 ; 3 uses
  %i.k = icmp ugt i16 %i.j, 10
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !617, !noundef !4 ; 6 uses
  %i.n = icmp ult i64 %i.m, 5
  br i1 %i.n, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.o = zext nneg i16 %i.j to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !620, !noundef !4 ; 6 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.s, %i.o
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.r ; 3 uses
  br i1 %.not.i.i, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i, label %bb.d

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %.thread

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.s
  %i.v = sub nsw i64 %i.o, %i.r                   ; 2 uses
  %i.w = mul nuw nsw i64 %i.v, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.t, i64 %i.w, i1 false), !alias.scope !621, !noalias !622
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %i.y, i64 %i.v, i1 false), !alias.scope !623, !noalias !622
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
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !617, !noundef !4 ; 4 uses
  %i.ad = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringbEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i unwind label %bb.m, !noalias !618 ; 8 uses

.noexc.i:                                         ; preds = %bb.h
  store ptr null, ptr %i.ad, align 8, !noalias !624
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 274 ; 2 uses
  store i16 0, ptr %i.ae, align 2, !noalias !624
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.af = load i16, ptr %i.i, align 2, !noalias !626, !noundef !4
  %i.ag = zext i16 %i.af to i64
  %i.ah = xor i64 %.sroa.013.0.i, -1
  %i.ai = add nsw i64 %i.ag, %i.ah                ; 5 uses
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %i.ae, align 2, !alias.scope !625, !noalias !624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !626
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !noalias !626
  %i.am = icmp ult i64 %i.ai, 12
  br i1 %i.am, label %bb.n, label %bb.i, !prof !10

bb.i:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ai, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #21
          to label %bb.k unwind label %bb.j, !noalias !626

bb.j:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #18
          to label %.thread.i.i unwind label %bb.l, !noalias !626

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !626
  unreachable

.thread.i.i:                                      ; preds = %bb.j
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 288, i64 noundef 8) #22, !noalias !624
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %.noexc.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 276 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.013.0.i
  %i.as = load i8, ptr %i.ar, align 1, !range !9, !noalias !626, !noundef !4 ; 2 uses
  %i.at = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.aw = mul nuw nsw i64 %i.ai, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull readonly align 8 %i.au, i64 %i.aw, i1 false), !alias.scope !627, !noalias !628
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr nonnull readonly align 1 %i.ax, i64 range(i64 0, 65536) %i.ai, i1 false), !alias.scope !629, !noalias !628
  %i.az = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.az, ptr %i.i, align 2, !noalias !626
  %.sroa.0.i.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !618 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !618
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !626
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.ac ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ad, ptr %i.h ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 274 ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !noalias !630, !noundef !4 ; 2 uses
  %i.bc = zext i16 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bc
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.o, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i17.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i17.i: ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bf = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = sub nuw nsw i64 %i.bc, %.sroa.510.0.i   ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull align 8 %i.be, i64 %i.bi, i1 false), !alias.scope !631, !noalias !630
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 276 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.510.0.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull align 1 %i.bk, i64 %i.bh, i1 false), !alias.scope !632, !noalias !630
  br label %bb.r

bb.p:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !633
  unreachable

.thread:                                          ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 276
  %6 = add nuw nsw i16 %i.j, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.r
  %i.bp = zext i1 %3 to i8
  store i8 %i.bp, ptr %i.bo, align 1, !alias.scope !623, !noalias !622
  store i16 %6, ptr %i.i, align 2, !noalias !622
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !620, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.q:                                             ; preds = %bb.m, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.an, %.thread.i.i ], [ %i.ap, %bb.m ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #18
          to label %.body unwind label %bb.p, !noalias !633

bb.r:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertNtNtB8_6string6StringECsbzNSmZPCnTx_10tgrep_core.exit.i17.i, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 276
  %7 = add i16 %i.bb, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.510.0.i
  %i.bu = zext i1 %3 to i8
  store i8 %i.bu, ptr %i.bt, align 1, !alias.scope !632, !noalias !630
  store i16 %7, ptr %i.ba, align 2, !noalias !630
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.4, i64 16, i1 false), !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7286)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bv = load ptr, ptr %i.h, align 8, !noalias !635, !noundef !4 ; 2 uses
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
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cb = load ptr, ptr %.val, align 8, !noalias !636, !noundef !4 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cb, null
  br i1 %.not.i19, label %bb.u, label %bb.w, !prof !7

bb.u:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #21
          to label %bb.v unwind label %bb.af, !noalias !636

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !637, !noalias !636, !noundef !4 ; 2 uses
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringbEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i.i unwind label %bb.aa, !noalias !638 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.w
  store ptr null, ptr %i.ce, align 8, !noalias !638
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 274 ; 3 uses
  store i16 0, ptr %i.cf, align 2, !noalias !638
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 288 ; 2 uses
  store ptr %i.cb, ptr %i.cg, align 8, !noalias !638
  %i.ch = add i64 %i.cd, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.i.i, label %bb.x, label %bb.ab, !prof !7

bb.x:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.y unwind label %bb.z, !noalias !638

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ci = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ce, i64 noundef 384, i64 noundef 8) #22, !noalias !638
  br label %.body.i.i

bb.aa:                                            ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.aa, %bb.z
  tail call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %.noexc.i.i
  store ptr %i.ce, ptr %i.cb, align 8, !noalias !639
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 272
  store i16 0, ptr %i.ck, align 8, !noalias !640
  store ptr %i.ce, ptr %.val, align 8, !alias.scope !637, !noalias !636
  store i64 %i.ch, ptr %i.cc, align 8, !alias.scope !637, !noalias !636
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 24, i1 false)
  %i.cl = icmp eq i64 %.lcssa171, %i.cd
  br i1 %i.cl, label %bb.ac, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.cm = phi ptr [ @35, %bb.ab ], [ @33, %bb.ac ]
  %i.cn = phi i64 [ 48, %bb.ab ], [ 32, %bb.ac ]
  %i.co = phi ptr [ @36, %bb.ab ], [ @37, %bb.ac ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.cn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.co) #21
          to label %.cont.i.i unwind label %bb.ad, !noalias !641

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cp = load i16, ptr %i.cf, align 2, !noalias !641, !noundef !4 ; 3 uses
  %i.cq = icmp ult i16 %i.cp, 11
  br i1 %i.cq, label %bb.bm, label %.invoke.i.i, !prof !8

bb.ad:                                            ; preds = %.invoke.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %.body unwind label %bb.ae, !noalias !642

bb.ae:                                            ; preds = %bb.ad
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !642
  unreachable

bb.af:                                            ; preds = %bb.u
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e) #18
          to label %.body unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19
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
  %i.dc = load i16, ptr %i.db, align 8, !noalias !635 ; 4 uses
  %i.dd = zext i16 %i.dc to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.747.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.0.1, ptr %i.f, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.sroa.4.sroa.0)
  br i1 %i.cz, label %bb.aj, label %bb.ai, !prof !8

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !643

bb.aj:                                            ; preds = %bb.ah
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 274 ; 4 uses
  %i.df = load i16, ptr %i.de, align 2, !noalias !643, !noundef !4 ; 5 uses
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
  %.not.i.i29.not = icmp ult i16 %i.dc, %i.df
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dd ; 3 uses
  br i1 %.not.i.i29.not, label %bb.an, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertbECsbzNSmZPCnTx_10tgrep_core.exit.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertbECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !644
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cv, i64 276
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dd
  store i8 %.sroa.9.1, ptr %i.do, align 1, !alias.scope !645, !noalias !646
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

bb.an:                                            ; preds = %bb.am
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %i.dl
  %i.dq = sub nuw nsw i64 %i.di, %i.dd            ; 2 uses
  %i.dr = mul nuw nsw i64 %i.dq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.dm, i64 %i.dr, i1 false), !alias.scope !647, !noalias !646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !644
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 276 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dd
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dl
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr nonnull align 1 %i.dt, i64 %i.dq, i1 false), !alias.scope !645, !noalias !646
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 276
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dd
  store i8 %.sroa.9.1, ptr %i.dw, align 1, !alias.scope !645, !noalias !646
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 288 ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dl
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dd
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = sub nuw nsw i64 %i.di, %i.dd
  %i.ec = shl nuw nsw i64 %i.eb, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dy, i64 %i.ec, i1 false), !alias.scope !648, !noalias !646
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertbECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.an
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 288
  %i.ee = add nuw nsw i64 %i.di, 2                ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.dl
  store ptr %i.cy, ptr %i.ef, align 8, !alias.scope !648, !noalias !646
  store i16 %i.dj, ptr %i.de, align 2, !noalias !646
  %i.eg = icmp samesign ult i64 %i.dl, %i.ee
  br i1 %i.eg, label %.lr.ph.i.i.i.preheader, label %.thread68

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
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
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !646, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cv, ptr %i.eo, align 8, !noalias !646
  %i.ep = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 272
  store i16 %i.ep, ptr %i.eq, align 8, !noalias !646
  %prol.iter556.next = add i64 %prol.iter556, 1   ; 2 uses
  %prol.iter556.cmp.not = icmp eq i64 %prol.iter556.next, %xtraiter554
  br i1 %prol.iter556.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !586

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
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !646, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cv, ptr %i.ey, align 8, !noalias !646
  %i.ez = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 272
  store i16 %i.ez, ptr %i.fa, align 8, !noalias !646
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ew
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !646, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cv, ptr %i.fd, align 8, !noalias !646
  %i.fe = trunc nuw nsw i64 %i.ew to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 272
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !646
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.fb
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !646, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cv, ptr %i.fi, align 8, !noalias !646
  %i.fj = trunc nuw nsw i64 %i.fb to i16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 272
  store i16 %i.fj, ptr %i.fk, align 8, !noalias !646
  %i.fl = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fm = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.fg
  %i.fo = load ptr, ptr %i.fn, align 8, !noalias !646, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.cv, ptr %i.fo, align 8, !noalias !646
  %i.fp = trunc nuw nsw i64 %i.fg to i16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 272
  store i16 %i.fp, ptr %i.fq, align 8, !noalias !646
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
  %i.fs = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringbEE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !643 ; 14 uses

.noexc.i26:                                       ; preds = %bb.ar
  store ptr null, ptr %i.fs, align 8, !noalias !649
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 274 ; 3 uses
  store i16 0, ptr %i.ft, align 2, !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !649
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.fu = load i16, ptr %i.de, align 2, !noalias !652, !noundef !4
  %i.fv = zext i16 %i.fu to i64
  %i.fw = xor i64 %.sroa.06.0.i, -1
  %i.fx = add nsw i64 %i.fv, %i.fw                ; 5 uses
  %i.fy = trunc i64 %i.fx to i16
  store i16 %i.fy, ptr %i.ft, align 2, !alias.scope !651, !noalias !649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !652
  %i.fz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 24, i1 false), !noalias !652
  %i.gb = icmp ult i64 %i.fx, 12
  br i1 %i.gb, label %bb.aw, label %bb.as, !prof !10

bb.as:                                            ; preds = %.noexc.i26
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fx, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #21
          to label %bb.au unwind label %bb.at, !noalias !652

bb.at:                                            ; preds = %bb.as
  %i.gc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #18
          to label %bb.bf unwind label %bb.av, !noalias !652

bb.au:                                            ; preds = %bb.as
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.gd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !652
  unreachable

bb.aw:                                            ; preds = %.noexc.i26
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cv, i64 276 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.sroa.06.0.i
  %i.gg = load i8, ptr %i.gf, align 1, !range !9, !noalias !652, !noundef !4 ; 3 uses
  %i.gh = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gi = getelementptr inbounds nuw [24 x i8], ptr %i.fz, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.gk = mul nuw nsw i64 %i.fx, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull readonly align 8 %i.gi, i64 %i.gk, i1 false), !alias.scope !653, !noalias !654
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gh
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fs, i64 276
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gm, ptr nonnull readonly align 1 %i.gl, i64 range(i64 0, 65536) %i.fx, i1 false), !alias.scope !655, !noalias !654
  %i.gn = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gn, ptr %i.de, align 2, !noalias !652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !656
  store i8 %i.gg, ptr %i.bw, align 8, !alias.scope !650, !noalias !649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !652
  %i.go = load i16, ptr %i.ft, align 2, !noalias !649, !noundef !4 ; 3 uses
  %i.gp = zext i16 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 5 uses
  %i.gr = icmp ult i16 %i.go, 12
  br i1 %i.gr, label %bb.ax, label %bb.az, !prof !10

bb.ax:                                            ; preds = %bb.aw
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fs, i64 288 ; 6 uses
  %i.gt = zext i16 %i.df to i64
  %i.gu = sub nuw nsw i64 %i.gt, %.sroa.06.0.i
end_hunk_2
begin_hunk_3_@_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringbNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB37_11VacantEntryB1D_bE12insert_entry0ECsbzNSmZPCnTx_10tgrep_core:bb.a
  store i16 %i.ia, ptr %i.ib, align 8, !noalias !659
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.bg, !llvm.loop !606

.epilog-lcssa:                                    ; preds = %bb.bg, %.unr-lcssa
  %.sroa.0.i23.sroa.0.0.copyload = load i64, ptr %i.b, align 8, !noalias !643 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.sroa.4.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !649
  %spec.select.i28 = select i1 %.sroa.03.0.i, ptr %i.fs, ptr %i.cv ; 11 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 274 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 2, !noalias !661, !noundef !4 ; 2 uses
  %i.ie = zext i16 %i.id to i64                   ; 5 uses
  %i.if = add i16 %i.id, 1
  %i.ig = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 8 ; 2 uses
  %i.ih = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.ie
  %i.ii = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.bh, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertbECsbzNSmZPCnTx_10tgrep_core.exit.i11.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertbECsbzNSmZPCnTx_10tgrep_core.exit.i11.i: ; preds = %.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !644
  %i.ij = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 276
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.sroa.5.0.i
  store i8 %.sroa.9.1, ptr %i.ik, align 1, !alias.scope !662, !noalias !661
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i12.i

bb.bh:                                            ; preds = %.epilog-lcssa
  %i.il = getelementptr inbounds nuw [24 x i8], ptr %i.ig, i64 %i.ih
  %i.im = sub nuw nsw i64 %i.ie, %.sroa.5.0.i     ; 3 uses
  %i.in = mul nuw nsw i64 %i.im, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.il, ptr nonnull align 8 %i.ii, i64 %i.in, i1 false), !alias.scope !663, !noalias !661
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !644
  %i.io = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 276 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %.sroa.5.0.i ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ih
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iq, ptr nonnull align 1 %i.ip, i64 %i.im, i1 false), !alias.scope !662, !noalias !661
  store i8 %.sroa.9.1, ptr %i.ip, align 1, !alias.scope !662, !noalias !661
  %i.ir = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 288 ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ih
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.sroa.5.0.i
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = shl nuw nsw i64 %i.im, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %i.is, i64 %i.iv, i1 false), !alias.scope !664, !noalias !661
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i12.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i12.i: ; preds = %bb.bh, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertbECsbzNSmZPCnTx_10tgrep_core.exit.i11.i
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i28, i64 288 ; 6 uses
  %i.ix = add nuw nsw i64 %i.ie, 2                ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ih
  store ptr %i.cy, ptr %i.iy, align 8, !alias.scope !664, !noalias !661
  store i16 %i.if, ptr %i.ic, align 2, !noalias !661
  %i.iz = icmp samesign ult i64 %i.ih, %i.ix
  br i1 %i.iz, label %.lr.ph.i.i13.i.preheader, label %.loopexit

.lr.ph.i.i13.i.preheader:                         ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i12.i
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
  %i.je = icmp ult i64 %.sroa.0.06.i.i14.i.prol, 12
  tail call void @llvm.assume(i1 %i.je)
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.0.06.i.i14.i.prol
  %i.jg = load ptr, ptr %i.jf, align 8, !noalias !661, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jg, align 8, !noalias !661
  %i.jh = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.prol to i16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 272
  store i16 %i.jh, ptr %i.ji, align 8, !noalias !661
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter552
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.prol.loopexit, label %.lr.ph.i.i13.i.prol, !llvm.loop !616

.lr.ph.i.i13.i.prol.loopexit:                     ; preds = %.lr.ph.i.i13.i.prol, %.lr.ph.i.i13.i.preheader
  %.sroa.0.06.i.i14.i.unr = phi i64 [ %i.ih, %.lr.ph.i.i13.i.preheader ], [ %i.jd, %.lr.ph.i.i13.i.prol ]
  %i.jj = icmp ult i64 %i.jc, 3
  br i1 %i.jj, label %.loopexit, label %.lr.ph.i.i13.i

.lr.ph.i.i13.i:                                   ; preds = %.lr.ph.i.i13.i.prol.loopexit, %.lr.ph.i.i13.i
  %.sroa.0.06.i.i14.i = phi i64 [ %i.jz, %.lr.ph.i.i13.i ], [ %.sroa.0.06.i.i14.i.unr, %.lr.ph.i.i13.i.prol.loopexit ] ; 7 uses
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i14.i, 1  ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.0.06.i.i14.i
  %i.jm = load ptr, ptr %i.jl, align 8, !noalias !661, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jm, align 8, !noalias !661
  %i.jn = trunc nuw nsw i64 %.sroa.0.06.i.i14.i to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 272
  store i16 %i.jn, ptr %i.jo, align 8, !noalias !661
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i14.i, 2  ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jk
  %i.jr = load ptr, ptr %i.jq, align 8, !noalias !661, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jr, align 8, !noalias !661
  %i.js = trunc nuw nsw i64 %i.jk to i16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 272
  store i16 %i.js, ptr %i.jt, align 8, !noalias !661
  %i.ju = add nuw nsw i64 %.sroa.0.06.i.i14.i, 3  ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jp
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !661, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28, ptr %i.jw, align 8, !noalias !661
  %i.jx = trunc nuw nsw i64 %i.jp to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 272
  store i16 %i.jx, ptr %i.jy, align 8, !noalias !661
  %i.jz = add nuw nsw i64 %.sroa.0.06.i.i14.i, 4  ; 2 uses
  %i.ka = icmp ult i64 %.sroa.0.06.i.i14.i, 9
  tail call void @llvm.assume(i1 %i.ka)
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ju
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !661, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i28, ptr %i.kc, align 8, !noalias !661
  %i.kd = trunc nuw nsw i64 %i.ju to i16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 272
  store i16 %i.kd, ptr %i.ke, align 8, !noalias !661
  %exitcond.not.i.i15.i.3 = icmp eq i64 %i.jz, %i.ix
  br i1 %exitcond.not.i.i15.i.3, label %.loopexit, label %.lr.ph.i.i13.i

bb.bi:                                            ; preds = %bb.bj
  %i.kf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #19, !noalias !644
  unreachable

bb.bj:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bf
  %.pn.ph.i24 = phi { ptr, i32 } [ %.pn.i.i, %bb.bf ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #18
          to label %.body unwind label %bb.bi, !noalias !644

.thread68:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.loopexit73

.loopexit:                                        ; preds = %.lr.ph.i.i13.i.prol.loopexit, %.lr.ph.i.i13.i, %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringbEEECsbzNSmZPCnTx_10tgrep_core.exit.i12.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.747.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i23.sroa.4.sroa.0, i64 16, i1 false), !noalias !665
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not16 = icmp eq i64 %.sroa.0.i23.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit73, label %bb.bk

bb.bk:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7286, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.747.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.747.sroa.0)
  %i.kg = load ptr, ptr %i.cv, align 8, !noalias !635, !noundef !4 ; 2 uses
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
  store i16 %i.kk, ptr %i.cf, align 2, !noalias !641
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.km = getelementptr inbounds nuw [24 x i8], ptr %i.kl, i64 %i.kj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.km, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 24, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ce, i64 276
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kj
  store i8 %i.ca, ptr %i.ko, align 1, !noalias !641
  %i.kp = add nuw nsw i64 %i.kj, 1                ; 2 uses
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.kp
  store ptr %.lcssa163, ptr %i.kq, align 8, !noalias !641
  store ptr %i.ce, ptr %.lcssa163, align 8, !noalias !641
  %i.kr = trunc nuw nsw i64 %i.kp to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %.lcssa163, i64 272
  store i16 %i.kr, ptr %i.ks, align 8, !noalias !641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !636
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
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB2T_11VacantEntryB1D_B1F_E12insert_entry0ECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %4, i64 noundef range(i64 0, 576460752303423488) %5, ptr nofree noundef nonnull readonly align 8 captures(none) %6, ptr nofree noundef nonnull readnone captures(none) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !761)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !761, !nonnull !4, !noundef !4 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 362 ; 4 uses
  %i.c = load i16, ptr %i.b, align 2, !noalias !762, !noundef !4 ; 3 uses
  %i.d = icmp ult i16 %i.c, 11
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !761, !noundef !4 ; 6 uses
  %i.g = icmp ult i64 %i.f, 5
  br i1 %i.g, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  %i.h = zext nneg i16 %i.c to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !764, !noundef !4 ; 6 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.k, %i.h
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.j ; 3 uses
  br i1 %.not.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.k
  %i.n = sub nsw i64 %i.h, %i.j
  %i.o = shl nuw nsw i64 %i.n, 4                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.l, i64 %i.o, i1 false), !alias.scope !765, !noalias !766
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.j
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.o, i1 false), !alias.scope !767, !noalias !768
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  switch i64 %i.f, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.s = add i64 %i.f, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.s, %bb.f ], [ %i.f, %bb.b ], [ %i.f, %bb.e ] ; 10 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.f, %bb.e ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !761, !noundef !4 ; 3 uses
  %i.v = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeReRSB1p_EE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core(), !noalias !769 ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 352
  store ptr null, ptr %i.w, align 8, !noalias !769
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 362 ; 2 uses
  store i16 0, ptr %i.x, align 2, !noalias !769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.y = load i16, ptr %i.b, align 2, !noalias !771, !noundef !4
  %i.z = zext i16 %i.y to i64
  %i.aa = xor i64 %.sroa.013.0.i, -1
  %i.ab = add nsw i64 %i.z, %i.aa                 ; 4 uses
  %i.ac = trunc i64 %i.ab to i16
  store i16 %i.ac, ptr %i.x, align 2, !alias.scope !770, !noalias !769
  %i.ad = icmp ult i64 %i.ab, 12
  br i1 %i.ad, label %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit.i, label %bb.i, !prof !10

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ab, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #20
          to label %.noexc.i.i unwind label %bb.j, !noalias !769

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

common.resume:                                    ; preds = %bb.ak, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ha, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef 368, i64 noundef 8) #22, !noalias !769
  br label %common.resume

_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %.sroa.013.0.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !771, !noundef !4 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !noalias !771, !nonnull !4, !align !772, !noundef !4 ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.sroa.013.0.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !771, !noundef !4 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !noalias !771, !nonnull !4, !noundef !4 ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ao
  %i.aq = shl nuw nsw i64 %i.ab, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(368) %i.v, ptr nonnull readonly align 8 %i.ap, i64 %i.aq, i1 false), !alias.scope !773, !noalias !774
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.as, ptr nonnull readonly align 8 %i.ar, i64 %i.aq, i1 false), !alias.scope !775, !noalias !774
  %i.at = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.at, ptr %i.b, align 2, !noalias !771
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.u ; 4 uses
  %spec.select43.i = select i1 %.sroa.09.0.i, ptr %i.v, ptr %i.a ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 362 ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !noalias !776, !noundef !4 ; 2 uses
  %i.aw = zext i16 %i.av to i64                   ; 2 uses
  %.not.i14.not.i = icmp ult i64 %.sroa.510.0.i, %i.aw
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %spec.select43.i, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i14.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.ay = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %spec.select43.i, i64 %i.ay
  %i.ba = sub nuw nsw i64 %i.aw, %.sroa.510.0.i
  %i.bb = shl nuw nsw i64 %i.ba, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ax, i64 %i.bb, i1 false), !alias.scope !777, !noalias !776
  %i.bc = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 176 ; 2 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %.sroa.510.0.i
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %i.ay
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.be, ptr nonnull align 8 %i.bd, i64 %i.bb, i1 false), !alias.scope !778, !noalias !779
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit.i
  store ptr %2, ptr %i.ax, align 8, !alias.scope !777, !noalias !776
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %3, ptr %i.bf, align 8, !alias.scope !777, !noalias !780
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select43.i, i64 176
  %8 = add i16 %i.av, 1
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.sroa.510.0.i ; 2 uses
  store ptr %4, ptr %i.bh, align 8, !alias.scope !778, !noalias !780
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %5, ptr %i.bi, align 8, !alias.scope !778, !noalias !781
  store i16 %8, ptr %i.au, align 2, !noalias !781
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !782, !noundef !4 ; 2 uses
  %.not.i169 = icmp eq ptr %i.bk, null
  br i1 %.not.i169, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bl = icmp eq i64 %i.u, 0
  br label %.lr.ph

bb.m:                                             ; preds = %bb.c, %bb.d
  store ptr %2, ptr %i.l, align 8, !alias.scope !765, !noalias !766
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %3, ptr %i.bm, align 8, !alias.scope !765, !noalias !783
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %9 = add nuw nsw i16 %i.c, 1
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.j ; 2 uses
  store ptr %4, ptr %i.bo, align 8, !alias.scope !767, !noalias !783
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %5, ptr %i.bp, align 8, !alias.scope !767, !noalias !784
  store i16 %9, ptr %i.b, align 2, !noalias !784
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !764, !noundef !4
  br label %.loopexit

._crit_edge:                                      ; preds = %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit, %bb.l
  %.sroa.14.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.cu, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ]
  %.sroa.12.0.lcssa = phi ptr [ %i.v, %bb.l ], [ %i.fu, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ] ; 3 uses
  %.sroa.11.0.lcssa = phi i64 [ %i.ai, %bb.l ], [ %i.gg, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ]
  %.sroa.10.0.lcssa = phi ptr [ %i.aj, %bb.l ], [ %i.gh, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ]
  %.sroa.9.0.lcssa = phi i64 [ %i.am, %bb.l ], [ %i.gk, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ]
  %.sroa.7.0.lcssa = phi ptr [ %i.an, %bb.l ], [ %i.gl, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ]
  %.val = load ptr, ptr %6, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bs = load ptr, ptr %.val, align 8, !noalias !785, !noundef !4 ; 4 uses
  %.not.i52 = icmp eq ptr %i.bs, null
  br i1 %.not.i52, label %bb.v, label %bb.n, !prof !7

bb.n:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !786, !noalias !785, !noundef !4 ; 2 uses
  %i.bv = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReRSB1u_EE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core()
          to label %.noexc.i.i53 unwind label %bb.r, !noalias !787 ; 9 uses

.noexc.i.i53:                                     ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 352
  store ptr null, ptr %i.bw, align 8, !noalias !787
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 362 ; 3 uses
  store i16 0, ptr %i.bx, align 2, !noalias !787
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 368 ; 2 uses
  store ptr %i.bs, ptr %i.by, align 8, !noalias !787
  %i.bz = add i64 %i.bu, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReRSB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbzNSmZPCnTx_10tgrep_core.exit.i, !prof !7

bb.o:                                             ; preds = %.noexc.i.i53
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.p unwind label %bb.q, !noalias !787

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 464, i64 noundef 8) #22, !noalias !787
  br label %.body.i.i

bb.r:                                             ; preds = %bb.n
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReRSB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %.noexc.i.i53
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 352
  store ptr %i.bv, ptr %i.cc, align 8, !noalias !788
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 360
  store i16 0, ptr %i.cd, align 8, !noalias !789
  store ptr %i.bv, ptr %.val, align 8, !alias.scope !786, !noalias !785
  store i64 %i.bz, ptr %i.bt, align 8, !alias.scope !786, !noalias !785
  %i.ce = icmp eq i64 %.sroa.14.0.lcssa, %i.bu
  br i1 %i.ce, label %bb.t, label %bb.s, !prof !8

bb.s:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReRSB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbzNSmZPCnTx_10tgrep_core.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #20, !noalias !790
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedReRSB1D_NtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.cf = load i16, ptr %i.bx, align 2, !noalias !790, !noundef !4 ; 3 uses
  %i.cg = icmp ult i16 %i.cf, 11
  br i1 %i.cg, label %_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryReRSB1l_E12insert_entry0CsbzNSmZPCnTx_10tgrep_core.exit, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #20, !noalias !790
  unreachable

bb.v:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !785
  unreachable

_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryReRSB1l_E12insert_entry0CsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.t
  %i.ch = zext nneg i16 %i.cf to i64              ; 3 uses
  %i.ci = add nuw nsw i16 %i.cf, 1
  store i16 %i.ci, ptr %i.bx, align 2, !noalias !790
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.ch ; 2 uses
  store ptr %.sroa.7.0.lcssa, ptr %i.cj, align 8, !noalias !790
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %.sroa.9.0.lcssa, ptr %i.ck, align 8, !noalias !790
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.ch ; 2 uses
  store ptr %.sroa.10.0.lcssa, ptr %i.cm, align 8, !noalias !790
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i64 %.sroa.11.0.lcssa, ptr %i.cn, align 8, !noalias !790
  %i.co = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.co
  store ptr %.sroa.12.0.lcssa, ptr %i.cp, align 8, !noalias !790
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.12.0.lcssa, i64 352
  store ptr %i.bv, ptr %i.cq, align 8, !noalias !790
  %i.cr = trunc nuw nsw i64 %i.co to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.12.0.lcssa, i64 360
  store i16 %i.cr, ptr %i.cs, align 8, !noalias !790
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit
  %i.ct = phi ptr [ %i.kw, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.bk, %.lr.ph.preheader ] ; 25 uses
  %.sroa.0.0177 = phi ptr [ %i.ct, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.a, %.lr.ph.preheader ]
  %.sroa.6.0176 = phi i64 [ %i.cu, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.u, %.lr.ph.preheader ]
  %.sroa.7.0175 = phi ptr [ %i.gl, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.an, %.lr.ph.preheader ] ; 4 uses
  %.sroa.9.0174 = phi i64 [ %i.gk, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.am, %.lr.ph.preheader ] ; 4 uses
  %.sroa.10.0173 = phi ptr [ %i.gh, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.aj, %.lr.ph.preheader ] ; 4 uses
  %.sroa.11.0172 = phi i64 [ %i.gg, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.ai, %.lr.ph.preheader ] ; 4 uses
  %.sroa.12.0171 = phi ptr [ %i.fu, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.sroa.14.0170 = phi i1 [ true, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutReRSB1D_NtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.bl, %.lr.ph.preheader ]
  %i.cu = add i64 %.sroa.6.0176, 1                ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0177, i64 360
  %i.cw = load i16, ptr %i.cv, align 8, !noalias !782 ; 4 uses
  %i.cx = zext i16 %i.cw to i64                   ; 12 uses
  br i1 %.sroa.14.0170, label %bb.x, label %bb.w, !prof !8

bb.w:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #20, !noalias !791
  unreachable

bb.x:                                             ; preds = %.lr.ph
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 362 ; 4 uses
  %i.cz = load i16, ptr %i.cy, align 2, !noalias !791, !noundef !4 ; 5 uses
  %i.da = icmp ult i16 %i.cz, 11
  br i1 %i.da, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = icmp ult i16 %i.cw, 5
  br i1 %i.db, label %bb.ae, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.dc = zext nneg i16 %i.cz to i64              ; 5 uses
  %i.dd = add nuw nsw i16 %i.cz, 1
  %i.de = add nuw nsw i64 %i.cx, 1                ; 7 uses
  %.not.i.i56.not = icmp ult i16 %i.cw, %i.cz
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cx ; 5 uses
  br i1 %.not.i.i56.not, label %bb.aa, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertRSReECsbzNSmZPCnTx_10tgrep_core.exit.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertRSReECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %bb.z
  store ptr %.sroa.7.0175, ptr %i.df, align 8, !alias.scope !792, !noalias !793
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %.sroa.9.0174, ptr %i.dg, align 8, !alias.scope !792, !noalias !794
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.cx ; 2 uses
  store ptr %.sroa.10.0173, ptr %i.di, align 8, !alias.scope !795, !noalias !794
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %.sroa.11.0172, ptr %i.dj, align 8, !alias.scope !795, !noalias !796
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeReRSB24_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.de
  %i.dl = sub nuw nsw i64 %i.dc, %i.cx
  %i.dm = shl nuw nsw i64 %i.dl, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr nonnull align 8 %i.df, i64 %i.dm, i1 false), !alias.scope !792, !noalias !793
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 176 ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.cx
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.dn, i64 %i.de
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dp, ptr nonnull align 8 %i.do, i64 %i.dm, i1 false), !alias.scope !795, !noalias !797
  store ptr %.sroa.7.0175, ptr %i.df, align 8, !alias.scope !792, !noalias !793
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i64 %.sroa.9.0174, ptr %i.dq, align 8, !alias.scope !792, !noalias !794
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ct, i64 176
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.cx ; 2 uses
  store ptr %.sroa.10.0173, ptr %i.ds, align 8, !alias.scope !795, !noalias !794
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i64 %.sroa.11.0172, ptr %i.dt, align 8, !alias.scope !795, !noalias !796
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 368 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.de
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.cx
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = sub nuw nsw i64 %i.dc, %i.cx
  %i.dz = shl nuw nsw i64 %i.dy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %i.dv, i64 %i.dz, i1 false), !alias.scope !798, !noalias !796
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeReRSB24_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeReRSB24_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i: ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertRSReECsbzNSmZPCnTx_10tgrep_core.exit.i.i, %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.eb = add nuw nsw i64 %i.dc, 2                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.de
  store ptr %.sroa.12.0171, ptr %i.ec, align 8, !alias.scope !798, !noalias !796
  store i16 %i.dd, ptr %i.cy, align 2, !noalias !796
  %i.ed = icmp samesign ult i64 %i.de, %i.eb
  br i1 %i.ed, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodeReRSB24_EEECsbzNSmZPCnTx_10tgrep_core.exit.i.i
  %i.ee = add nuw nsw i64 %i.dc, 1
  %i.ef = sub nsw i64 %i.ee, %i.cx
  %i.eg = sub nsw i64 %i.dc, %i.cx
  %xtraiter532 = and i64 %i.ef, 3                 ; 2 uses
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ei, %.lr.ph.i.i.i.prol ], [ %i.de, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter534 = phi i64 [ %prol.iter534.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ei = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.ej = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.sroa.0.06.i.i.i.prol
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !796, !nonnull !4, !noundef !4 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 352
  store ptr %i.ct, ptr %i.em, align 8, !noalias !796
  %i.en = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 360
  store i16 %i.en, ptr %i.eo, align 8, !noalias !796
  %prol.iter534.next = add i64 %prol.iter534, 1   ; 2 uses
  %prol.iter534.cmp.not = icmp eq i64 %prol.iter534.next, %xtraiter532
  br i1 %prol.iter534.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !729

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.de, %.lr.ph.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.prol ]
  %i.ep = icmp ult i64 %i.eg, 3
  br i1 %i.ep, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.er = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.es = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  %i.et = getelementptr inbounds nuw i8, ptr %i.ct, i64 368
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fm, %.lr.ph.i.i.i ] ; 7 uses
  %i.eu = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.sroa.0.06.i.i.i
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !796, !nonnull !4, !noundef !4 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 352
  store ptr %i.ct, ptr %i.ex, align 8, !noalias !796
  %i.ey = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 360
  store i16 %i.ey, ptr %i.ez, align 8, !noalias !796
  %i.fa = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.eu
  %i.fc = load ptr, ptr %i.fb, align 8, !noalias !796, !nonnull !4, !noundef !4 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 352
  store ptr %i.ct, ptr %i.fd, align 8, !noalias !796
  %i.fe = trunc nuw nsw i64 %i.eu to i16
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 360
  store i16 %i.fe, ptr %i.ff, align 8, !noalias !796
  %i.fg = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.fa
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !796, !nonnull !4, !noundef !4 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 352
  store ptr %i.ct, ptr %i.fj, align 8, !noalias !796
  %i.fk = trunc nuw nsw i64 %i.fa to i16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 360
  store i16 %i.fk, ptr %i.fl, align 8, !noalias !796
  %i.fm = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fn = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.fg
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !796, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.ct, ptr %i.fq, align 8, !noalias !796
  %i.fr = trunc nuw nsw i64 %i.fg to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 360
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !796
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fm, %i.eb
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.ab:                                            ; preds = %bb.y
  switch i16 %i.cw, label %bb.ac [
    i16 5, label %bb.ae
    i16 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ft = add nsw i64 %i.cx, -7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.06.0.i = phi i64 [ 5, %bb.ad ], [ 6, %bb.ac ], [ 4, %bb.y ], [ 5, %bb.ab ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ad ], [ %i.ft, %bb.ac ], [ %i.cx, %bb.y ], [ 5, %bb.ab ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.y ], [ false, %bb.ab ]
  %i.fu = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeReRSB1u_EE13new_uninit_inCsbzNSmZPCnTx_10tgrep_core(), !noalias !799 ; 14 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 352
  store ptr null, ptr %i.fv, align 8, !noalias !799
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 362 ; 3 uses
  store i16 0, ptr %i.fw, align 2, !noalias !799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.fx = load i16, ptr %i.cy, align 2, !noalias !801, !noundef !4
  %i.fy = zext i16 %i.fx to i64
  %i.fz = xor i64 %.sroa.06.0.i, -1
  %i.ga = add nsw i64 %i.fy, %i.fz                ; 4 uses
  %i.gb = trunc i64 %i.ga to i16
  store i16 %i.gb, ptr %i.fw, align 2, !alias.scope !800, !noalias !799
  %i.gc = icmp ult i64 %i.ga, 12
  br i1 %i.gc, label %bb.ag, label %bb.af, !prof !10

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ga, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #20
          to label %.noexc.i.i54 unwind label %bb.ak, !noalias !799

.noexc.i.i54:                                     ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ct, i64 176 ; 2 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %.sroa.06.0.i ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !801, !noundef !4 ; 2 uses
  %i.gh = load ptr, ptr %i.ge, align 8, !noalias !801, !nonnull !4, !align !772, !noundef !4 ; 2 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %.sroa.06.0.i ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !801, !noundef !4 ; 2 uses
  %i.gl = load ptr, ptr %i.gi, align 8, !noalias !801, !nonnull !4, !noundef !4 ; 2 uses
  %i.gm = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.gm
  %i.go = shl nuw nsw i64 %i.ga, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(368) %i.fu, ptr nonnull readonly align 8 %i.gn, i64 %i.go, i1 false), !alias.scope !802, !noalias !803
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.gm
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gq, ptr nonnull readonly align 8 %i.gp, i64 %i.go, i1 false), !alias.scope !804, !noalias !803
  %i.gr = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gr, ptr %i.cy, align 2, !noalias !801
  %i.gs = load i16, ptr %i.fw, align 2, !noalias !799, !noundef !4 ; 3 uses
  %i.gt = zext i16 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 5 uses
  %i.gv = icmp ult i16 %i.gs, 12
  br i1 %i.gv, label %bb.ah, label %bb.aj, !prof !10

bb.ah:                                            ; preds = %bb.ag
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fu, i64 368 ; 6 uses
  %i.gx = zext i16 %i.cz to i64
  %i.gy = sub nuw nsw i64 %i.gx, %.sroa.06.0.i
  %i.gz = icmp eq i64 %i.gy, %i.gu
  br i1 %i.gz, label %bb.al, label %bb.ai, !prof !8

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
end_hunk_3
