Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE12insert_rangeINS0_17constant_iteratorIS3_EEEEPS3_PKS3_T_SF_:bb.a
  %i.fd = shl nsw i64 %n.vec154, 2
  %i.fe = getelementptr i8, ptr %1, i64 %i.fd
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %.pre.i.i55.i, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next160, %vector.body157 ] ; 2 uses
  %i.ff = shl i64 %index158, 2
  %next.gep159 = getelementptr i8, ptr %1, i64 %i.ff ; 2 uses
  %i.fg = getelementptr i8, ptr %next.gep159, i64 16
  store <4 x i32> %broadcast.splat156, ptr %next.gep159, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat156, ptr %i.fg, align 4, !tbaa !48
  %index.next160 = add nuw i64 %index158, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next160, %n.vec154
  br i1 %i.fh, label %middle.block161, label %vector.body157, !llvm.loop !140

middle.block161:                                  ; preds = %vector.body157
  %cmp.n162 = icmp eq i64 %i.cj, %n.vec154
  br i1 %cmp.n162, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, label %.lr.ph.i.i56.i.preheader

.lr.ph.i.i56.i.preheader:                         ; preds = %.lr.ph.preheader.i.i54.i, %middle.block161
  %.012.i.i57.i.ph = phi i64 [ %i.cj, %.lr.ph.preheader.i.i54.i ], [ %i.fc, %middle.block161 ]
  %.0511.i.i58.i.ph = phi ptr [ %1, %.lr.ph.preheader.i.i54.i ], [ %i.fe, %middle.block161 ]
  br label %.lr.ph.i.i56.i

.lr.ph.i.i56.i:                                   ; preds = %.lr.ph.i.i56.i.preheader, %.lr.ph.i.i56.i
  %.012.i.i57.i = phi i64 [ %i.fi, %.lr.ph.i.i56.i ], [ %.012.i.i57.i.ph, %.lr.ph.i.i56.i.preheader ]
  %.0511.i.i58.i = phi ptr [ %i.fj, %.lr.ph.i.i56.i ], [ %.0511.i.i58.i.ph, %.lr.ph.i.i56.i.preheader ] ; 2 uses
  %i.fi = add i64 %.012.i.i57.i, -1               ; 2 uses
  store i32 %.pre.i.i55.i, ptr %.0511.i.i58.i, align 4, !tbaa !48
  %i.fj = getelementptr inbounds nuw i8, ptr %.0511.i.i58.i, i64 4
  %.not.i.i59.i = icmp eq i64 %i.fi, 0
  br i1 %.not.i.i59.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, label %.lr.ph.i.i56.i, !llvm.loop !141

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i: ; preds = %.lr.ph.i.i56.i, %middle.block161
  %i.fk = sub i64 %i.a, %i.cj                     ; 3 uses
  %xtraiter220 = and i64 %i.fk, 3                 ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod221.not, label %.lr.ph.i.i66.i.prol.loopexit, label %.lr.ph.i.i66.i.prol

.lr.ph.i.i66.i.prol:                              ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i, %.lr.ph.i.i66.i.prol
  %.022.i.i.i.prol = phi i64 [ %i.fp, %.lr.ph.i.i66.i.prol ], [ %i.fk, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ]
  %.01821.i.i.i.prol = phi ptr [ %i.fo, %.lr.ph.i.i66.i.prol ], [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i66.i.prol ], [ 0, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i.prol) ]
  %i.fl = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.fl, ptr %.01821.i.i.i.prol, align 4, !tbaa !48
  %i.fm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fo = getelementptr inbounds nuw i8, ptr %.01821.i.i.i.prol, i64 4 ; 2 uses
  %i.fp = add i64 %.022.i.i.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter220
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i66.i.prol.loopexit, label %.lr.ph.i.i66.i.prol, !llvm.loop !142

.lr.ph.i.i66.i.prol.loopexit:                     ; preds = %.lr.ph.i.i66.i.prol, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i
  %.022.i.i.i.unr = phi i64 [ %i.fk, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ], [ %i.fp, %.lr.ph.i.i66.i.prol ]
  %.01821.i.i.i.unr = phi ptr [ %i.o, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEENS0_17constant_iteratorIS5_EEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit62.i ], [ %i.fo, %.lr.ph.i.i66.i.prol ]
  %i.fq = sub i64 %i.cj, %3
  %i.fr = add i64 %i.fq, %5
  %i.fs = icmp ugt i64 %i.fr, -4
  br i1 %i.fs, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i

.lr.ph.i.i66.i:                                   ; preds = %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i
  %.022.i.i.i = phi i64 [ %i.gg, %.lr.ph.i.i66.i ], [ %.022.i.i.i.unr, %.lr.ph.i.i66.i.prol.loopexit ]
  %.01821.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i66.i ], [ %.01821.i.i.i.unr, %.lr.ph.i.i66.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01821.i.i.i) ]
  %i.ft = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.ft, ptr %.01821.i.i.i, align 4, !tbaa !48
  %i.fu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fw = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 4
  %i.fx = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !48
  %i.fy = add i32 %i.fu, 2
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.fz = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 8
  %i.ga = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !48
  %i.gb = add i32 %i.fu, 3
  store i32 %i.gb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gc = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 12
  %i.gd = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !48
  %i.ge = add i32 %i.fu, 4
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %.01821.i.i.i, i64 16
  %i.gg = add i64 %.022.i.i.i, -4                 ; 2 uses
  %.not.i.i67.i.3 = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i67.i.3, label %_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i66.i, !llvm.loop !143

_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i66.i.prol.loopexit, %.lr.ph.i.i66.i, %middle.block147
  %i.gh = trunc i64 %i.a to i16
  %i.gi = add i16 %i.m, %i.gh
  store i16 %i.gi, ptr %i.l, align 2, !tbaa !73
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %.not61 = icmp ugt i64 %i.a, %i.at
  br i1 %.not61, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i74 = icmp samesign ult i64 %i.ca, %i.a
  %i.gj = sub nsw i64 0, %i.a                     ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.gj ; 3 uses
  br i1 %.not.i74, label %.lr.ph.i48.i92, label %.lr.ph.i.i76.preheader

.lr.ph.i.i76.preheader:                           ; preds = %bb.n
  %.neg236 = add i64 %5, 1
  %xtraiter222 = and i64 %i.a, 1
  %i.gl = icmp eq i64 %3, %.neg236
  br i1 %i.gl, label %.lr.ph.i.i76.epil.preheader, label %.lr.ph.i.i76.preheader.new

.lr.ph.i.i76.preheader.new:                       ; preds = %.lr.ph.i.i76.preheader
  %unroll_iter = and i64 %i.a, -2
  br label %.lr.ph.i.i76

.lr.ph.i.i76:                                     ; preds = %.lr.ph.i.i76, %.lr.ph.i.i76.preheader.new
  %indvar = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %indvar.next.1, %.lr.ph.i.i76 ] ; 2 uses
  %.0919.i.i = phi ptr [ %i.au, %.lr.ph.i.i76.preheader.new ], [ %i.gu, %.lr.ph.i.i76 ] ; 4 uses
  %.01618.i.i78 = phi ptr [ %i.gk, %.lr.ph.i.i76.preheader.new ], [ %i.gv, %.lr.ph.i.i76 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i76.preheader.new ], [ %niter.next.1, %.lr.ph.i.i76 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78) ]
  %i.gm = load i32, ptr %.0919.i.i, align 4, !tbaa !48
  store i32 %i.gm, ptr %.01618.i.i78, align 4, !tbaa !48
  store i32 0, ptr %.0919.i.i, align 4, !tbaa !48
  %i.gn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gp = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 4
  %i.gr = load i32, ptr %i.gp, align 4, !tbaa !48
  store i32 %i.gr, ptr %i.gq, align 4, !tbaa !48
  store i32 0, ptr %i.gp, align 4, !tbaa !48
  %i.gs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gu = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01618.i.i78, i64 8 ; 2 uses
  %indvar.next.1 = add i64 %indvar, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, label %.lr.ph.i.i76, !llvm.loop !144

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa: ; preds = %.lr.ph.i.i76
  %indvar.next = or disjoint i64 %indvar, 1
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  br i1 %lcmp.mod223.not, label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i, label %.lr.ph.i.i76.epil.preheader

.lr.ph.i.i76.epil.preheader:                      ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.preheader
  %indvar.epil.init = phi i64 [ 0, %.lr.ph.i.i76.preheader ], [ %indvar.next.1, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ]
  %.0919.i.i.epil.init = phi ptr [ %i.au, %.lr.ph.i.i76.preheader ], [ %i.gu, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 3 uses
  %.01618.i.i78.epil.init = phi ptr [ %i.gk, %.lr.ph.i.i76.preheader ], [ %i.gv, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod226 = trunc i64 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod226)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i78.epil.init) ]
  %i.gw = load i32, ptr %.0919.i.i.epil.init, align 4, !tbaa !48
  store i32 %i.gw, ptr %.01618.i.i78.epil.init, align 4, !tbaa !48
  store i32 0, ptr %.0919.i.i.epil.init, align 4, !tbaa !48
  %i.gx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.gz = getelementptr inbounds nuw i8, ptr %.0919.i.i.epil.init, i64 4
  br label %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i

_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i: ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa, %.lr.ph.i.i76.epil.preheader
  %indvar.lcssa = phi i64 [ %indvar.next, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %indvar.epil.init, %.lr.ph.i.i76.epil.preheader ]
  %.lcssa217 = phi ptr [ %i.gu, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i.unr-lcssa ], [ %i.gz, %.lr.ph.i.i76.epil.preheader ] ; 6 uses
  %.not8.i.i80 = icmp eq ptr %.lcssa217, %1
  br i1 %.not8.i.i80, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader

.lr.ph.i40.i81.preheader:                         ; preds = %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %i.ha = shl i64 %5, 2
  %i.hb = add i64 %3, %i.at
  %i.hc = shl i64 %i.hb, 2
  %i.hd = add i64 %i.ha, %i.bx
  %i.he = add i64 %i.hd, -4
  %i.hf = add i64 %i.hc, %i.c
  %i.hg = sub i64 %i.he, %i.hf                    ; 2 uses
  %i.hh = lshr i64 %i.hg, 2
  %i.hi = add nuw nsw i64 %i.hh, 1                ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.hg, 172
  br i1 %min.iters.check172, label %.lr.ph.i40.i81.preheader215, label %vector.memcheck165

vector.memcheck165:                               ; preds = %.lr.ph.i40.i81.preheader
  %i.hj = shl i64 %5, 2
  %i.hk = add i64 %i.hj, %i.bx
  %i.hl = add i64 %i.hk, -4
  %i.hm = add i64 %3, %i.at
  %i.hn = shl i64 %i.hm, 2
  %i.ho = add i64 %i.hn, %i.c
  %i.hp = sub i64 %i.hl, %i.ho
  %i.hq = and i64 %i.hp, -4
  %i.hr = shl nuw nsw i64 %i.at, 2
  %i.hs = add i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = getelementptr i8, ptr %i.b, i64 %i.hs
  %scevgep166 = getelementptr i8, ptr %i.ht, i64 4
  %i.hu = shl i64 %indvar.lcssa, 2
  %i.hv = getelementptr i8, ptr %i.b, i64 %i.hu
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hs
  %scevgep167 = getelementptr i8, ptr %i.hw, i64 8
  %bound0168 = icmp ult ptr %i.au, %scevgep167
  %bound1169 = icmp ult ptr %.lcssa217, %scevgep166
  %found.conflict170 = and i1 %bound0168, %bound1169
  br i1 %found.conflict170, label %.lr.ph.i40.i81.preheader215, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck165
  %n.vec174 = and i64 %i.hi, 9223372036854775800  ; 3 uses
  %i.hx = shl i64 %n.vec174, 2                    ; 2 uses
  %i.hy = getelementptr i8, ptr %i.au, i64 %i.hx  ; 2 uses
  %i.hz = getelementptr i8, ptr %.lcssa217, i64 %i.hx
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph173
  %index176 = phi i64 [ 0, %vector.ph173 ], [ %index.next181, %vector.body175 ] ; 2 uses
  %i.ia = shl i64 %index176, 2                    ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.au, i64 %i.ia ; 2 uses
  %next.gep178 = getelementptr i8, ptr %.lcssa217, i64 %i.ia ; 3 uses
  %i.ib = getelementptr i8, ptr %next.gep178, i64 16 ; 2 uses
  %wide.load179 = load <4 x i32>, ptr %next.gep178, align 4, !tbaa !48, !alias.scope !145
  %wide.load180 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !48, !alias.scope !145
  %i.ic = getelementptr i8, ptr %next.gep177, i64 16
  store <4 x i32> %wide.load179, ptr %next.gep177, align 4, !tbaa !48, !alias.scope !148, !noalias !145
  store <4 x i32> %wide.load180, ptr %i.ic, align 4, !tbaa !48, !alias.scope !148, !noalias !145
  store <4 x i32> zeroinitializer, ptr %next.gep178, align 4, !tbaa !48, !alias.scope !145
  store <4 x i32> zeroinitializer, ptr %i.ib, align 4, !tbaa !48, !alias.scope !145
  %index.next181 = add nuw i64 %index176, 8       ; 2 uses
  %i.id = icmp eq i64 %index.next181, %n.vec174
  br i1 %i.id, label %middle.block182, label %vector.body175, !llvm.loop !150

middle.block182:                                  ; preds = %vector.body175
  %cmp.n183 = icmp eq i64 %i.hi, %n.vec174
  br i1 %cmp.n183, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81.preheader215

.lr.ph.i40.i81.preheader215:                      ; preds = %vector.memcheck165, %.lr.ph.i40.i81.preheader, %middle.block182
  %.010.i.i82.ph = phi ptr [ %i.au, %vector.memcheck165 ], [ %i.au, %.lr.ph.i40.i81.preheader ], [ %i.hy, %middle.block182 ]
  %.079.i.i83.ph = phi ptr [ %.lcssa217, %vector.memcheck165 ], [ %.lcssa217, %.lr.ph.i40.i81.preheader ], [ %i.hz, %middle.block182 ]
  br label %.lr.ph.i40.i81

.lr.ph.i40.i81:                                   ; preds = %.lr.ph.i40.i81.preheader215, %.lr.ph.i40.i81
  %.010.i.i82 = phi ptr [ %i.ig, %.lr.ph.i40.i81 ], [ %.010.i.i82.ph, %.lr.ph.i40.i81.preheader215 ] ; 2 uses
  %.079.i.i83 = phi ptr [ %i.if, %.lr.ph.i40.i81 ], [ %.079.i.i83.ph, %.lr.ph.i40.i81.preheader215 ] ; 3 uses
  %i.ie = load i32, ptr %.079.i.i83, align 4, !tbaa !48
  store i32 %i.ie, ptr %.010.i.i82, align 4, !tbaa !48
  store i32 0, ptr %.079.i.i83, align 4, !tbaa !48
  %i.if = getelementptr inbounds nuw i8, ptr %.079.i.i83, i64 4 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.010.i.i82, i64 4 ; 2 uses
  %.not.i41.i84 = icmp eq ptr %i.if, %1
  br i1 %.not.i41.i84, label %.lr.ph.preheader.i.i.i85, label %.lr.ph.i40.i81, !llvm.loop !151

.lr.ph.preheader.i.i.i85:                         ; preds = %.lr.ph.i40.i81, %middle.block182, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i
  %.0.lcssa.i.i = phi ptr [ %i.au, %_ZN5boost9container33uninitialized_move_alloc_n_sourceINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S9_mSA_.exit.i ], [ %i.hy, %middle.block182 ], [ %i.ig, %.lr.ph.i40.i81 ] ; 3 uses
  %.pre.i.i.i86 = load i32, ptr %2, align 4, !tbaa !48 ; 2 uses
  %min.iters.check187 = icmp ult i64 %i.a, 8
  br i1 %min.iters.check187, label %.lr.ph.i.i.i87.preheader, label %vector.ph188

vector.ph188:                                     ; preds = %.lr.ph.preheader.i.i.i85
  %n.vec189 = and i64 %i.a, -8                    ; 3 uses
  %i.ih = and i64 %i.a, 7
  %i.ii = shl i64 %n.vec189, 2
  %i.ij = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ii
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %.pre.i.i.i86, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph188
  %index193 = phi i64 [ 0, %vector.ph188 ], [ %index.next195, %vector.body192 ] ; 2 uses
  %i.ik = shl i64 %index193, 2
  %next.gep194 = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ik ; 2 uses
  %i.il = getelementptr i8, ptr %next.gep194, i64 16
  store <4 x i32> %broadcast.splat191, ptr %next.gep194, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat191, ptr %i.il, align 4, !tbaa !48
  %index.next195 = add nuw i64 %index193, 8       ; 2 uses
  %i.im = icmp eq i64 %index.next195, %n.vec189
  br i1 %i.im, label %middle.block196, label %vector.body192, !llvm.loop !152

middle.block196:                                  ; preds = %vector.body192
  %cmp.n197 = icmp eq i64 %i.a, %n.vec189
  br i1 %cmp.n197, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87.preheader

.lr.ph.i.i.i87.preheader:                         ; preds = %.lr.ph.preheader.i.i.i85, %middle.block196
  %.012.i.i.i88.ph = phi i64 [ %i.a, %.lr.ph.preheader.i.i.i85 ], [ %i.ih, %middle.block196 ]
  %.0511.i.i.i89.ph = phi ptr [ %.0.lcssa.i.i, %.lr.ph.preheader.i.i.i85 ], [ %i.ij, %middle.block196 ]
  br label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %.lr.ph.i.i.i87.preheader, %.lr.ph.i.i.i87
  %.012.i.i.i88 = phi i64 [ %i.in, %.lr.ph.i.i.i87 ], [ %.012.i.i.i88.ph, %.lr.ph.i.i.i87.preheader ]
  %.0511.i.i.i89 = phi ptr [ %i.io, %.lr.ph.i.i.i87 ], [ %.0511.i.i.i89.ph, %.lr.ph.i.i.i87.preheader ] ; 2 uses
  %i.in = add i64 %.012.i.i.i88, -1               ; 2 uses
  store i32 %.pre.i.i.i86, ptr %.0511.i.i.i89, align 4, !tbaa !48
  %i.io = getelementptr inbounds nuw i8, ptr %.0511.i.i.i89, i64 4
  %.not.i.i.i90 = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i90, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i.i87, !llvm.loop !153

.lr.ph.i48.i92:                                   ; preds = %bb.n, %.lr.ph.i48.i92
  %.018.i.i93 = phi ptr [ %i.is, %.lr.ph.i48.i92 ], [ %i.au, %bb.n ] ; 3 uses
  %.01517.i.i94 = phi ptr [ %i.it, %.lr.ph.i48.i92 ], [ %i.gk, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i.i94) ]
  %i.ip = load i32, ptr %.018.i.i93, align 4, !tbaa !48
  store i32 %i.ip, ptr %.01517.i.i94, align 4, !tbaa !48
  store i32 0, ptr %.018.i.i93, align 4, !tbaa !48
  %i.iq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ir = add i32 %i.iq, 1
  store i32 %i.ir, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.is = getelementptr inbounds nuw i8, ptr %.018.i.i93, i64 4 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.01517.i.i94, i64 4 ; 3 uses
  %.not.i49.i95 = icmp eq ptr %i.is, %1
  br i1 %.not.i49.i95, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, label %.lr.ph.i48.i92, !llvm.loop !127

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i: ; preds = %.lr.ph.i48.i92
  %i.iu = sub i64 %i.a, %i.ca                     ; 3 uses
  %xtraiter227 = and i64 %i.iu, 3                 ; 2 uses
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol

.lr.ph.i.i53.i.prol:                              ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i, %.lr.ph.i.i53.i.prol
  %.022.i.i.i96.prol = phi i64 [ %i.iz, %.lr.ph.i.i53.i.prol ], [ %i.iu, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %.01821.i.i.i97.prol = phi ptr [ %i.iy, %.lr.ph.i.i53.i.prol ], [ %i.it, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ] ; 2 uses
  %prol.iter229 = phi i64 [ %prol.iter229.next, %.lr.ph.i.i53.i.prol ], [ 0, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ]
  %i.iv = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.iv, ptr %.01821.i.i.i97.prol, align 4, !tbaa !48
  %i.iw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.ix = add i32 %i.iw, 1
  store i32 %i.ix, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.iy = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97.prol, i64 4 ; 2 uses
  %i.iz = add i64 %.022.i.i.i96.prol, -1          ; 2 uses
  %prol.iter229.next = add i64 %prol.iter229, 1   ; 2 uses
  %prol.iter229.cmp.not = icmp eq i64 %prol.iter229.next, %xtraiter227
  br i1 %prol.iter229.cmp.not, label %.lr.ph.i.i53.i.prol.loopexit, label %.lr.ph.i.i53.i.prol, !llvm.loop !154

.lr.ph.i.i53.i.prol.loopexit:                     ; preds = %.lr.ph.i.i53.i.prol, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.022.i.i.i96.unr = phi i64 [ %i.iu, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iz, %.lr.ph.i.i53.i.prol ]
  %.01821.i.i.i97.unr = phi ptr [ %i.it, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i ], [ %i.iy, %.lr.ph.i.i53.i.prol ]
  %i.ja = sub i64 %i.ca, %3
  %i.jb = add i64 %i.ja, %5
  %i.jc = icmp ugt i64 %i.jb, -4
  br i1 %i.jc, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i

.lr.ph.i.i53.i:                                   ; preds = %.lr.ph.i.i53.i.prol.loopexit, %.lr.ph.i.i53.i
  %.022.i.i.i96 = phi i64 [ %i.jq, %.lr.ph.i.i53.i ], [ %.022.i.i.i96.unr, %.lr.ph.i.i53.i.prol.loopexit ]
  %.01821.i.i.i97 = phi ptr [ %i.jp, %.lr.ph.i.i53.i ], [ %.01821.i.i.i97.unr, %.lr.ph.i.i53.i.prol.loopexit ] ; 5 uses
  %i.jd = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.jd, ptr %.01821.i.i.i97, align 4, !tbaa !48
  %i.je = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50 ; 4 uses
  %i.jf = add i32 %i.je, 1
  store i32 %i.jf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jg = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 4
  %i.jh = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.jh, ptr %i.jg, align 4, !tbaa !48
  %i.ji = add i32 %i.je, 2
  store i32 %i.ji, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jj = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 8
  %i.jk = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.jk, ptr %i.jj, align 4, !tbaa !48
  %i.jl = add i32 %i.je, 3
  store i32 %i.jl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 12
  %i.jn = load i32, ptr %2, align 4, !tbaa !48
  store i32 %i.jn, ptr %i.jm, align 4, !tbaa !48
  %i.jo = add i32 %i.je, 4
  store i32 %i.jo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !50
  %i.jp = getelementptr inbounds nuw i8, ptr %.01821.i.i.i97, i64 16
  %i.jq = add i64 %.022.i.i.i96, -4               ; 2 uses
  %.not.i.i54.i.3 = icmp eq i64 %i.jq, 0
  br i1 %.not.i.i54.i.3, label %.lr.ph.preheader.i.i61.i, label %.lr.ph.i.i53.i, !llvm.loop !143

.lr.ph.preheader.i.i61.i:                         ; preds = %.lr.ph.i.i53.i, %.lr.ph.i.i53.i.prol.loopexit
  %.pre.i.i62.i = load i32, ptr %2, align 4, !tbaa !48 ; 2 uses
  %min.iters.check201 = icmp ult i64 %i.ca, 8
  br i1 %min.iters.check201, label %.lr.ph.i.i63.i.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.preheader.i.i61.i
  %n.vec203 = and i64 %i.ca, -8                   ; 3 uses
  %i.jr = and i64 %i.ca, 7
  %i.js = shl nsw i64 %n.vec203, 2
  %i.jt = getelementptr i8, ptr %i.au, i64 %i.js
  %broadcast.splatinsert204 = insertelement <4 x i32> poison, i32 %.pre.i.i62.i, i64 0
  %broadcast.splat205 = shufflevector <4 x i32> %broadcast.splatinsert204, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.body206, %vector.ph202
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next209, %vector.body206 ] ; 2 uses
  %i.ju = shl i64 %index207, 2
  %next.gep208 = getelementptr i8, ptr %i.au, i64 %i.ju ; 2 uses
  %i.jv = getelementptr i8, ptr %next.gep208, i64 16
  store <4 x i32> %broadcast.splat205, ptr %next.gep208, align 4, !tbaa !48
  store <4 x i32> %broadcast.splat205, ptr %i.jv, align 4, !tbaa !48
  %index.next209 = add nuw i64 %index207, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next209, %n.vec203
  br i1 %i.jw, label %middle.block210, label %vector.body206, !llvm.loop !155

middle.block210:                                  ; preds = %vector.body206
  %cmp.n211 = icmp eq i64 %i.ca, %n.vec203
  br i1 %cmp.n211, label %_ZN5boost9container48expand_backward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_NS0_17constant_iteratorIS4_EEEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SJ_mSE_.exit, label %.lr.ph.i.i63.i.preheader

.lr.ph.i.i63.i.preheader:                         ; preds = %.lr.ph.preheader.i.i61.i, %middle.block210
  %.012.i.i64.i.ph = phi i64 [ %i.ca, %.lr.ph.preheader.i.i61.i ], [ %i.jr, %middle.block210 ]
  %.0511.i.i65.i.ph = phi ptr [ %i.au, %.lr.ph.preheader.i.i61.i ], [ %i.jt, %middle.block210 ]
end_hunk_0
