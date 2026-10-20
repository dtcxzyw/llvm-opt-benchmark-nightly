Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.02?download=true
inline.NumInlined: 475
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvMs10_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE25merge_tracking_child_edgeNtNtBd_5alloc6GlobalEB1L_:bb.a
  %i.ch = add nuw nsw i64 %.sroa.0.06.i.i, 4      ; 2 uses
  %i.ci = icmp ult i64 %.sroa.0.06.i.i, 9
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cb
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !82, !nonnull !9, !noundef !9 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 880
  store ptr %i.n, ptr %i.cl, align 8, !noalias !82
  %i.cm = trunc nuw nsw i64 %i.cb to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 1152
  store i16 %i.cm, ptr %i.cn, align 8, !noalias !82
  %exitcond.not.i.i.3 = icmp eq i64 %i.ch, %i.s
  br i1 %exitcond.not.i.i.3, label %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i, label %.lr.ph.i.i

_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.g
  %i.co = load i16, ptr %i.q, align 2, !noalias !82, !noundef !9
  %i.cp = add i16 %i.co, -1
  store i16 %i.cp, ptr %i.q, align 2, !noalias !82
  %i.cq = icmp ugt i64 %i.p, 1
  br i1 %i.cq, label %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i, label %_RINvMs10_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1i_B1D_NtB41_14LeafOrInternalEB3p_EB1L_.exit

_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i: ; preds = %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 1160 ; 6 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.w, i64 1160
  %i.cu = shl nuw nsw i64 %i.z, 3
  %i.cv = add nuw nsw i64 %i.cu, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cs, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ct, i64 %i.cv, i1 false), !alias.scope !88, !noalias !82
  %i.cw = add nuw nsw i64 %i.z, 1
  %xtraiter12 = and i64 %i.cw, 3                  ; 2 uses
  %lcmp.mod13.not = icmp eq i64 %xtraiter12, 0
  br i1 %lcmp.mod13.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol

.lr.ph.i8.i.prol:                                 ; preds = %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i, %.lr.ph.i8.i.prol
  %.sroa.0.06.i9.i.prol = phi i64 [ %i.cx, %.lr.ph.i8.i.prol ], [ %i.aa, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i ] ; 4 uses
  %prol.iter14 = phi i64 [ %prol.iter14.next, %.lr.ph.i8.i.prol ], [ 0, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i ]
  %i.cx = add nuw nsw i64 %.sroa.0.06.i9.i.prol, 1 ; 2 uses
  %i.cy = icmp samesign ult i64 %.sroa.0.06.i9.i.prol, 12
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.0.06.i9.i.prol
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !82, !nonnull !9, !noundef !9 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 880
  store ptr %i.d, ptr %i.db, align 8, !noalias !82
  %i.dc = trunc nuw nsw i64 %.sroa.0.06.i9.i.prol to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 1152
  store i16 %i.dc, ptr %i.dd, align 8, !noalias !82
  %prol.iter14.next = add i64 %prol.iter14, 1     ; 2 uses
  %prol.iter14.cmp.not = icmp eq i64 %prol.iter14.next, %xtraiter12
  br i1 %prol.iter14.cmp.not, label %.lr.ph.i8.i.prol.loopexit, label %.lr.ph.i8.i.prol, !llvm.loop !81

.lr.ph.i8.i.prol.loopexit:                        ; preds = %.lr.ph.i8.i.prol, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i
  %.sroa.0.06.i9.i.unr = phi i64 [ %i.aa, %_RINvNtNtNtCs6i54tJFfzR_5alloc11collections5btree4node13move_to_sliceINtNtNtCsgxBkk5gSRhY_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtB8_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEEEB2x_.exit.i ], [ %i.cx, %.lr.ph.i8.i.prol ]
  %i.de = icmp ult i16 %i.y, 3
  br i1 %i.de, label %_RINvMs10_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1i_B1D_NtB41_14LeafOrInternalEB3p_EB1L_.exit, label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i
  %.sroa.0.06.i9.i = phi i64 [ %i.dx, %.lr.ph.i8.i ], [ %.sroa.0.06.i9.i.unr, %.lr.ph.i8.i.prol.loopexit ] ; 7 uses
  %i.df = add nuw nsw i64 %.sroa.0.06.i9.i, 1     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %.sroa.0.06.i9.i
  %i.dh = load ptr, ptr %i.dg, align 8, !noalias !82, !nonnull !9, !noundef !9 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 880
  store ptr %i.d, ptr %i.di, align 8, !noalias !82
  %i.dj = trunc nuw nsw i64 %.sroa.0.06.i9.i to i16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 1152
  store i16 %i.dj, ptr %i.dk, align 8, !noalias !82
  %i.dl = add nuw nsw i64 %.sroa.0.06.i9.i, 2     ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.df
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !82, !nonnull !9, !noundef !9 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 880
  store ptr %i.d, ptr %i.do, align 8, !noalias !82
  %i.dp = trunc nuw nsw i64 %i.df to i16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 1152
  store i16 %i.dp, ptr %i.dq, align 8, !noalias !82
  %i.dr = add nuw nsw i64 %.sroa.0.06.i9.i, 3     ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dl
  %i.dt = load ptr, ptr %i.ds, align 8, !noalias !82, !nonnull !9, !noundef !9 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 880
  store ptr %i.d, ptr %i.du, align 8, !noalias !82
  %i.dv = trunc nuw nsw i64 %i.dl to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 1152
  store i16 %i.dv, ptr %i.dw, align 8, !noalias !82
  %i.dx = add nuw nsw i64 %.sroa.0.06.i9.i, 4
  %i.dy = icmp ult i64 %.sroa.0.06.i9.i, 9
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.dr
  %i.ea = load ptr, ptr %i.dz, align 8, !noalias !82, !nonnull !9, !noundef !9 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 880
  store ptr %i.d, ptr %i.eb, align 8, !noalias !82
  %i.ec = trunc nuw nsw i64 %i.dr to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 1152
  store i16 %i.ec, ptr %i.ed, align 8, !noalias !82
  %exitcond.not.i10.i.3 = icmp eq i64 %i.dr, %i.ab
  br i1 %exitcond.not.i10.i.3, label %_RINvMs10_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1i_B1D_NtB41_14LeafOrInternalEB3p_EB1L_.exit, label %.lr.ph.i8.i

_RINvMs10_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB7_16BalancingContextNtNtBd_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueE8do_mergeNCINvB2_20merge_tracking_childNtNtBd_5alloc6GlobalE0INtB7_7NodeRefNtNtB7_6marker3MutB1i_B1D_NtB41_14LeafOrInternalEB3p_EB1L_.exit: ; preds = %.lr.ph.i8.i.prol.loopexit, %.lr.ph.i8.i, %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i
  %.sink.i = phi i64 [ 1160, %_RINvMsp_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCsgxBkk5gSRhY_4core3ops5range5RangejEEB1S_.exit.i ], [ 1256, %.lr.ph.i8.i ], [ 1256, %.lr.ph.i8.i.prol.loopexit ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef %.sink.i, i64 noundef 8) #22, !noalias !82
  %i.ee = select i1 %i.h, i64 %i.aa, i64 0
  %.sroa.06.0 = add nuw nsw i64 %i.ee, %3
  store ptr %i.d, ptr %0, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.u, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.06.0, ptr %i.eg, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalECs5XgW7KoffLW_12opendal_core() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEE13new_uninit_inCs5XgW7KoffLW_12opendal_core() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB19_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1U_() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE13new_uninit_inB1R_() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1154
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs9_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB19_8InternalE12new_internalNtNtBc_5alloc6GlobalECs5XgW7KoffLW_12opendal_core(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEE13new_uninit_inCs5XgW7KoffLW_12opendal_core() ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store ptr %0, ptr %i.d, align 8
  %i.e = add i64 %1, 1                            ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.d, !prof !11

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.a, ptr %i.f, align 8, !noalias !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i16 0, ptr %i.g, align 8, !noalias !94
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.e, 1
  ret { ptr, i64 } %i.i

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 728, i64 noundef 8) #22
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECs5XgW7KoffLW_12opendal_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !192, !nonnull !9, !noundef !9 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !193, !noundef !9 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !192, !noundef !9 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !195, !noundef !9 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !197, !noalias !198
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nuw nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !199, !noalias !198
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
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !192, !noundef !9 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEE13new_uninit_inCs5XgW7KoffLW_12opendal_core()
          to label %.noexc.i unwind label %bb.o, !noalias !193 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !200
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.an = load i16, ptr %i.p, align 2, !noalias !202, !noundef !9
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !201, !noalias !200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !202
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !202
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !202
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !13

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %bb.l unwind label %bb.k, !noalias !202

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #23
          to label %bb.n unwind label %bb.m, !noalias !202

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !202
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %.thread.i.i unwind label %bb.m, !noalias !202

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #22, !noalias !200
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !203, !noalias !204
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !205, !noalias !204
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !202
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !193 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !193
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !202
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !206, !noundef !9 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 360 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !207)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !208, !noalias !206
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !209, !noalias !206
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !210
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !211, !noalias !198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !198
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !195, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #23
          to label %bb.u unwind label %bb.s, !noalias !212

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #23
          to label %.critedge20 unwind label %bb.s, !noalias !210

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !213, !noalias !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458, i64 48, i1 false), !noalias !214
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
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !215, !noundef !9 ; 2 uses
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
  %.val = load ptr, ptr %4, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !216, !noundef !9 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !11

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
          to label %bb.z unwind label %bb.ak, !noalias !216

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !217, !noalias !216, !noundef !9 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEE13new_uninit_inCs5XgW7KoffLW_12opendal_core()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !218 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !218
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !218
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !218
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !11

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.ac unwind label %bb.ad, !noalias !218

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #22, !noalias !218
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
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !219
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !220
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !217, !noalias !216
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !217, !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !216
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @37, %bb.af ], [ @35, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @38, %bb.af ], [ @39, %bb.ag ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #21
          to label %.cont.i.i unwind label %bb.ah, !noalias !221

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !221, !noundef !9 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !12

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #23
          to label %bb.aj unwind label %bb.ai, !noalias !222

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !223
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #23
          to label %.critedge20 unwind label %bb.ai, !noalias !223

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j) #23
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da) #23
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.kb, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 624
  %i.di = load i16, ptr %i.dh, align 8, !noalias !215 ; 4 uses
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
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !224

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !224, !noundef !9 ; 5 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !225
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !226, !noalias !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !225
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !228, !noalias !227
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !229, !noalias !227
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !229, !noalias !227
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !227
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter515 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod516.not = icmp eq i64 %xtraiter515, 0
  br i1 %lcmp.mod516.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter517 = phi i64 [ %prol.iter517.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !227, !nonnull !9, !noundef !9 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !227
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !227
  %prol.iter517.next = add i64 %prol.iter517, 1   ; 2 uses
  %prol.iter517.cmp.not = icmp eq i64 %prol.iter517.next, %xtraiter515
  br i1 %prol.iter517.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !161

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
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !227, !nonnull !9, !noundef !9 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !227
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !227
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !227, !nonnull !9, !noundef !9 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !227
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !227
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !227, !nonnull !9, !noundef !9 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !227
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !227
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !227, !nonnull !9, !noundef !9 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !227
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !227
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
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueEE13new_uninit_inCs5XgW7KoffLW_12opendal_core()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !224 ; 10 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !230
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !232, !noundef !9
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !231, !noalias !230
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !232
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !232
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !232
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !13

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %bb.bc unwind label %bb.bb, !noalias !232

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #23
          to label %bb.be unwind label %bb.bd, !noalias !232

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !232
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %bb.bo unwind label %bb.bd, !noalias !232

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !233, !noalias !234
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !235, !noalias !234
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !232
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !230, !noundef !9 ; 2 uses
  %i.gx = zext i16 %i.gw to i64                   ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCsdMEyVxnODSb_10serde_json5value5ValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3L_11VacantEntryB1C_B1X_E12insert_entry0ECs5XgW7KoffLW_12opendal_core:bb.a
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.hx
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.sroa.5.0.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = shl nuw nsw i64 %i.ib, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ij, ptr nonnull align 8 %i.ih, i64 %i.ik, i1 false), !alias.scope !244, !noalias !241
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.il = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 6 uses
  %i.im = add nuw nsw i64 %i.hu, 2                ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.hx
  store ptr %i.de, ptr %i.in, align 8, !alias.scope !244, !noalias !241
  store i16 %i.hv, ptr %i.hs, align 2, !noalias !241
  %i.io = icmp samesign ult i64 %i.hx, %i.im
  br i1 %i.io, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.ip = add nuw nsw i64 %i.hu, 1
  %i.iq = sub nsw i64 %i.ip, %.sroa.5.0.i
  %i.ir = sub nsw i64 %i.hu, %.sroa.5.0.i
  %xtraiter = and i64 %i.iq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.is, %.lr.ph.i.i11.i.prol ], [ %i.hx, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.is = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.it = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.it)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.0.06.i.i12.i.prol
  %i.iv = load ptr, ptr %i.iu, align 8, !noalias !241, !nonnull !9, !noundef !9 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 352
  store ptr %spec.select.i31, ptr %i.iw, align 8, !noalias !241
  %i.ix = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 624
  store i16 %i.ix, ptr %i.iy, align 8, !noalias !241
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !191

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.hx, %.lr.ph.i.i11.i.preheader ], [ %i.is, %.lr.ph.i.i11.i.prol ]
  %i.iz = icmp ult i64 %i.ir, 3
  br i1 %i.iz, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.js, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.ja = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %.sroa.0.06.i.i12.i
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !241, !nonnull !9, !noundef !9 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 352
  store ptr %spec.select.i31, ptr %i.jd, align 8, !noalias !241
  %i.je = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 624
  store i16 %i.je, ptr %i.jf, align 8, !noalias !241
  %i.jg = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.ja
  %i.ji = load ptr, ptr %i.jh, align 8, !noalias !241, !nonnull !9, !noundef !9 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 352
  store ptr %spec.select.i31, ptr %i.jj, align 8, !noalias !241
  %i.jk = trunc nuw nsw i64 %i.ja to i16
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 624
  store i16 %i.jk, ptr %i.jl, align 8, !noalias !241
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jg
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !241, !nonnull !9, !noundef !9 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 352
  store ptr %spec.select.i31, ptr %i.jp, align 8, !noalias !241
  %i.jq = trunc nuw nsw i64 %i.jg to i16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 624
  store i16 %i.jq, ptr %i.jr, align 8, !noalias !241
  %i.js = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.jt = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.jm
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !241, !nonnull !9, !noundef !9 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 352
  store ptr %spec.select.i31, ptr %i.jw, align 8, !noalias !241
  %i.jx = trunc nuw nsw i64 %i.jm to i16
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 624
  store i16 %i.jx, ptr %i.jy, align 8, !noalias !241
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.js, %i.im
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.jz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !245
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCsdMEyVxnODSb_10serde_json5value5ValueECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #23
          to label %bb.bv unwind label %bb.bt, !noalias !246

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #23
          to label %.critedge20 unwind label %bb.bt, !noalias !245

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4, i64 48, i1 false), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.db, i64 352
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !215, !noundef !9 ; 2 uses
  %.not.i = icmp eq ptr %i.kb, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kc, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.ke = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.kf = add nuw nsw i16 %i.cu, 1
  store i16 %i.kf, ptr %i.ci, align 2, !noalias !221
  %i.kg = getelementptr inbounds nuw i8, ptr %i.cg, i64 360
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %i.kg, i64 %i.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kh, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  %i.ki = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.ke
  %i.kj = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ki, ptr noundef nonnull align 8 dereferenceable(32) %i.kj, i64 32, i1 false)
  %i.kk = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.kk
  store ptr %.lcssa161, ptr %i.kl, align 8, !noalias !221
  %i.km = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 352
  store ptr %i.cg, ptr %i.km, align 8, !noalias !221
  %i.kn = trunc nuw nsw i64 %i.kk to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 624
  store i16 %i.kn, ptr %i.ko, align 8, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.kq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cy, %bb.am ], [ %i.cw, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCs6i54tJFfzR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueNtB1m_4LeafENtB1m_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB4d_11VacantEntryB1C_B1X_E12insert_entry0EB25_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %4, ptr noalias nofree noundef nonnull readonly captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [96 x i8], align 8   ; 5 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  %i.g = alloca [80 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [96 x i8], align 8          ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 6 uses
  %i.j = alloca [136 x i8], align 8               ; 12 uses
  %i.k = alloca [80 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [96 x i8], align 8          ; 5 uses
  %i.m = alloca [80 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [96 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [96 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !344, !nonnull !9, !noundef !9 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1154 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !345, !noundef !9 ; 2 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !344, !noundef !9 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %6 = add nuw nsw i64 %i.v, 1                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 888 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !347, !noundef !9 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %6, %i.z
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !349, !noalias !350
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.ae = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.z
  %i.ag = mul nuw nsw i64 %i.ac, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !351, !noalias !350
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
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !344, !noundef !9 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE13new_uninit_inB1R_()
          to label %.noexc.i unwind label %bb.o, !noalias !345 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 880
  store ptr null, ptr %i.al, align 8, !noalias !352
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1154 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !352
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.an = load i16, ptr %i.p, align 2, !noalias !354, !noundef !9
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !353, !noalias !352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !354
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 888 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !354
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.au, i64 80, i1 false), !noalias !354
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !13

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %bb.l unwind label %bb.k, !noalias !354

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g) #23
          to label %bb.n unwind label %bb.m, !noalias !354

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !354
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %.thread.i.i unwind label %bb.m, !noalias !354

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 1160, i64 noundef 8) #22, !noalias !352
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 888
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !355, !noalias !356
  %i.bd = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.az
  %i.be = mul nuw nsw i64 %i.aq, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1160) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !357, !noalias !356
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !354
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !345 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !345
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false), !noalias !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !354
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select32.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 1154 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !358, !noundef !9 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %7 = add i16 %i.bh, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select32.i, i64 888 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !360, !noalias !358
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %3, i64 80, i1 false)
  %i.bp = getelementptr inbounds nuw [80 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [80 x i8], ptr %spec.select32.i, i64 %i.bl
  %i.br = mul nuw nsw i64 %i.bn, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !361, !noalias !358
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !362
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %i.bt = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.i, i64 80, i1 false), !alias.scope !363, !noalias !350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %8 = trunc nuw nsw i64 %6 to i16
  store i16 %8, ptr %i.p, align 2, !noalias !350
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !347, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.m) #23
          to label %bb.u unwind label %bb.s, !noalias !364

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #23
          to label %.critedge20 unwind label %bb.s, !noalias !362

bb.v:                                             ; preds = %bb.q, %bb.r
  %i.bw = getelementptr inbounds nuw [80 x i8], ptr %spec.select32.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.f, i64 80, i1 false), !alias.scope !365, !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !358
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.458, i64 96, i1 false), !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 880
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !367, !noundef !9 ; 2 uses
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.7276, i64 96, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !368, !noundef !9 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !11

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
          to label %bb.z unwind label %bb.ak, !noalias !368

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !369, !noalias !368, !noundef !9 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE13new_uninit_inB1W_()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !370 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 880
  store ptr null, ptr %i.ch, align 8, !noalias !370
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 1154 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !370
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 1160 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !370
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !11

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsgxBkk5gSRhY_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
          to label %bb.ac unwind label %bb.ad, !noalias !370

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 1256, i64 noundef 8) #22, !noalias !370
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 880
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !371
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 1152
  store i16 0, ptr %i.co, align 8, !noalias !372
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !369, !noalias !368
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !369, !noalias !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !368
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.cp, i64 80, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !12

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @37, %bb.af ], [ @35, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @38, %bb.af ], [ @39, %bb.ag ]
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #21
          to label %.cont.i.i unwind label %bb.ah, !noalias !373

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !373, !noundef !9 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !12

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.d) #23
          to label %bb.aj unwind label %bb.ai, !noalias !374

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !368
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #23
          to label %.critedge20 unwind label %bb.ai, !noalias !368

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.j) #23
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.da) #23
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.kb, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 1152
  %i.di = load i16, ptr %i.dh, align 8, !noalias !367 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.k, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7276.24..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !12

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !375

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 1154 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !375, !noundef !9 ; 5 uses
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
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 888 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %9 = icmp ugt i16 %i.dl, %i.di
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %9, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !376
  %i.dt = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dt, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7276.24..sroa_idx, i64 80, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !377, !noalias !378
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !376
  %i.dx = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.dr
  %i.dz = mul nuw nsw i64 %i.dv, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !379, !noalias !378
  %i.ea = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ea, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7276.24..sroa_idx, i64 80, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 1160 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !380, !noalias !378
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 1160
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !380, !noalias !378
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !378
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter515 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod516.not = icmp eq i64 %xtraiter515, 0
  br i1 %lcmp.mod516.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 1160
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter517 = phi i64 [ %prol.iter517.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !378, !nonnull !9, !noundef !9 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 880
  store ptr %i.db, ptr %i.et, align 8, !noalias !378
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 1152
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !378
  %prol.iter517.next = add i64 %prol.iter517, 1   ; 2 uses
  %prol.iter517.cmp.not = icmp eq i64 %prol.iter517.next, %xtraiter515
  br i1 %prol.iter517.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !313

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 1160
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 1160
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 1160
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 1160
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !378, !nonnull !9, !noundef !9 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 880
  store ptr %i.db, ptr %i.fe, align 8, !noalias !378
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 1152
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !378
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !378, !nonnull !9, !noundef !9 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 880
  store ptr %i.db, ptr %i.fk, align 8, !noalias !378
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 1152
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !378
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !378, !nonnull !9, !noundef !9 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 880
  store ptr %i.db, ptr %i.fq, align 8, !noalias !378
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 1152
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !378
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !378, !nonnull !9, !noundef !9 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 880
  store ptr %i.db, ptr %i.fx, align 8, !noalias !378
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 1152
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !378
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
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCs6i54tJFfzR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEE13new_uninit_inB1W_()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !375 ; 10 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 880
  store ptr null, ptr %i.gc, align 8, !noalias !381
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 1154 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !381
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !383, !noundef !9
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !382, !noalias !381
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !383
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 888 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !383
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !383
  %i.gl = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.gl, i64 80, i1 false), !noalias !383
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !13

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #21
          to label %bb.bc unwind label %bb.bb, !noalias !383

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCs5XgW7KoffLW_12opendal_core8services6memory4core11MemoryValueEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.a) #23
          to label %bb.be unwind label %bb.bd, !noalias !383

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #24, !noalias !383
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #23
          to label %bb.bo unwind label %bb.bd, !noalias !383

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 888
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !384, !noalias !385
  %i.gt = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.gp
  %i.gu = mul nuw nsw i64 %i.gh, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1160) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !386, !noalias !385
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !383
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bz, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !383
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !383
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !381, !noundef !9 ; 2 uses
  %i.gx = zext i16 %i.gw to i64                   ; 3 uses
end_hunk_1
