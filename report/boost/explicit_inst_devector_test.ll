Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/explicit_inst_devector_test?download=true
inline.NumInlined: 2703
inline.NumDeleted: 381
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE22insert_range_slow_pathINS0_3dtl18insert_range_proxyIS5_PKS3_EEEEPS3_SD_mT_:bb.a
  %min.iters.check = icmp ult i64 %2, 20
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader101, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.preheader
  %i.ax = shl i64 %2, 2                           ; 2 uses
  %i.ay = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %3, i64 %i.ax     ; 2 uses
  %bound0 = icmp ult ptr %.015.lcssa.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %bound1 = icmp ugt ptr %i.ay, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %found.conflict = and i1 %bound0, %bound1
  %bound082 = icmp ult ptr %.015.lcssa.i.i, %i.az
  %bound183 = icmp ult ptr %3, %i.ay
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx = or i1 %found.conflict, %found.conflict84
  %bound085 = icmp ugt ptr %i.az, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound186 = icmp ult ptr %3, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx, %found.conflict87
  br i1 %conflict.rdx88, label %.lr.ph.i.i.i.preheader101, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %2, -8                         ; 3 uses
  %i.ba = and i64 %2, 7
  %i.bb = shl i64 %n.vec, 2                       ; 2 uses
  %i.bc = getelementptr i8, ptr %3, i64 %i.bb
  %i.bd = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.bb
  %i.be = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre63, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.be, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi89 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.bf = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %3, i64 %i.bf ; 2 uses
  %next.gep90 = getelementptr i8, ptr %.015.lcssa.i.i, i64 %i.bf ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep90) ]
  %i.bg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !65, !alias.scope !467
  %wide.load98 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !65, !alias.scope !467
  %i.bh = getelementptr i8, ptr %next.gep90, i64 16
  store <4 x i32> %wide.load, ptr %next.gep90, align 4, !tbaa !65, !alias.scope !468, !noalias !469
  store <4 x i32> %wide.load98, ptr %i.bh, align 4, !tbaa !65, !alias.scope !468, !noalias !469
  %i.bi = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.bj = add <4 x i32> %vec.phi89, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66, !alias.scope !470, !noalias !467
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i.preheader101

.lr.ph.i.i.i.preheader101:                        ; preds = %vector.memcheck, %.lr.ph.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre63, %vector.memcheck ], [ %.pre63, %.lr.ph.i.i.i.preheader ], [ %i.bl, %middle.block ] ; 2 uses
  %.020.i.i.i.ph = phi i64 [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i.preheader ], [ %i.ba, %middle.block ] ; 4 uses
  %.0919.i.i.i.ph = phi ptr [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.preheader ], [ %i.bc, %middle.block ] ; 2 uses
  %.01618.i.i.i.ph = phi ptr [ %.015.lcssa.i.i, %vector.memcheck ], [ %.015.lcssa.i.i, %.lr.ph.i.i.i.preheader ], [ %i.bd, %middle.block ] ; 2 uses
  %i.bm = add nsw i64 %.020.i.i.i.ph, -1
  %xtraiter = and i64 %.020.i.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader101, %.lr.ph.i.i.i.prol
  %i.bn = phi i32 [ %i.bp, %.lr.ph.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.preheader101 ]
  %.020.i.i.i.prol = phi i64 [ %i.bs, %.lr.ph.i.i.i.prol ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ]
  %.0919.i.i.i.prol = phi ptr [ %i.bq, %.lr.ph.i.i.i.prol ], [ %.0919.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ] ; 2 uses
  %.01618.i.i.i.prol = phi ptr [ %i.br, %.lr.ph.i.i.i.prol ], [ %.01618.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader101 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i.prol) ]
  %i.bo = load i32, ptr %.0919.i.i.i.prol, align 4, !tbaa !65
  store i32 %i.bo, ptr %.01618.i.i.i.prol, align 4, !tbaa !65
  %i.bp = add i32 %i.bn, 1                        ; 3 uses
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %.0919.i.i.i.prol, i64 4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i.i.i.prol, i64 4 ; 2 uses
  %i.bs = add nsw i64 %.020.i.i.i.prol, -1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !465

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader101
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.bp, %.lr.ph.i.i.i.prol ]
  %.020.i.i.i.unr = phi i64 [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.bs, %.lr.ph.i.i.i.prol ]
  %.0919.i.i.i.unr = phi ptr [ %.0919.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.bq, %.lr.ph.i.i.i.prol ]
  %.01618.i.i.i.unr = phi ptr [ %.01618.i.i.i.ph, %.lr.ph.i.i.i.preheader101 ], [ %i.br, %.lr.ph.i.i.i.prol ]
  %i.bt = icmp ult i64 %i.bm, 3
  br i1 %i.bt, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %i.bu = phi i32 [ %i.ci, %.lr.ph.i.i.i ], [ %.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.0919.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i ], [ %.0919.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i ], [ %.01618.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.i) ]
  %i.bv = load i32, ptr %.0919.i.i.i, align 4, !tbaa !65
  store i32 %i.bv, ptr %.01618.i.i.i, align 4, !tbaa !65
  %i.bw = add i32 %i.bu, 1
  store i32 %i.bw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bx = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 4
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !65
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !65
  %i.ca = add i32 %i.bu, 2
  store i32 %i.ca, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cb = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 8
  %i.cd = load i32, ptr %i.cb, align 4, !tbaa !65
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !65
  %i.ce = add i32 %i.bu, 3
  store i32 %i.ce, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cf = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 12
  %i.cg = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 12
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !65
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !65
  %i.ci = add i32 %i.bu, 4                        ; 2 uses
  store i32 %i.ci, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cj = getelementptr inbounds nuw i8, ptr %.0919.i.i.i, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.01618.i.i.i, i64 16
  %i.cl = add nsw i64 %.020.i.i.i, -4             ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i, label %.lr.ph.i.i.i, !llvm.loop !466

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i
  %.not16.i19.i = icmp eq ptr %1, %i.ar
  br i1 %.not16.i19.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, label %.lr.ph.i20.preheader.i

.lr.ph.i20.preheader.i:                           ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.015.lcssa.i.i, i64 %2
  br label %.lr.ph.i20.i

.lr.ph.i20.i:                                     ; preds = %.lr.ph.i20.i, %.lr.ph.i20.preheader.i
  %.018.i21.i = phi ptr [ %i.cq, %.lr.ph.i20.i ], [ %1, %.lr.ph.i20.preheader.i ] ; 3 uses
  %.01517.i22.i = phi ptr [ %i.cr, %.lr.ph.i20.i ], [ %i.cm, %.lr.ph.i20.preheader.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i) ]
  %i.cn = load i32, ptr %.018.i21.i, align 4, !tbaa !65
  store i32 %i.cn, ptr %.01517.i22.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i21.i, align 4, !tbaa !65
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cq = getelementptr inbounds nuw i8, ptr %.018.i21.i, i64 4 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.01517.i22.i, i64 4
  %.not.i23.i = icmp eq ptr %i.cq, %i.ar
  br i1 %.not.i23.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, label %.lr.ph.i20.i, !llvm.loop !8

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit: ; preds = %.lr.ph.i20.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i
  %.not5.i = icmp eq i16 %i.aj, %i.ak
  br i1 %.not5.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit, %.lr.ph.i
  %.06.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.aq, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit ] ; 2 uses
  store i32 -2147483648, ptr %.06.i, align 4, !tbaa !65
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ct = add i32 %i.cs, -1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cu = getelementptr inbounds nuw i8, ptr %.06.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.cu, %i.ar
  br i1 %.not.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, label %.lr.ph.i, !llvm.loop !2

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvRT_T0_SE_SE_T1_mT2_.exit
  %.not.i53 = icmp eq ptr %i.ai, null
  br i1 %.not.i53, label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit
  %i.cv = load i16, ptr %i.a, align 4, !tbaa !70
  %i.cw = zext i16 %i.cv to i64
  %i.cx = shl nuw nsw i64 %i.cw, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.cx) #19
  br label %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit

_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_13new_allocatorIS3_EENS0_12devector_optIvtLm0EEEE16destroy_elementsEPS3_S9_.exit, %bb.j
  %i.cy = trunc nuw i64 %i.ae to i16
  store i16 %i.cy, ptr %i.a, align 4, !tbaa !74
  store ptr %.0.i.i, ptr %0, align 8, !tbaa !62
  %i.cz = add i64 %i.am, %i.ao
  %i.da = trunc i64 %i.cz to i16
  store i16 %i.da, ptr %i.d, align 2, !tbaa !73
  %i.db = trunc i64 %i.ao to i16
  store i16 %i.db, ptr %i.h, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit
  %i.dc = phi i64 [ %i.ao, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit ], [ %i.s, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.dd = phi ptr [ %.0.i.i, %_ZN5boost9container6detail16allocation_guardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEED2Ev.exit ], [ %.pre64, %_ZN5boost9container40expand_backward_forward_and_insert_allocIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_.exit ]
  %i.de = ptrtoint ptr %1 to i64
  %i.df = ptrtoint ptr %i.m to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = and i64 %i.dc, 65535
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dg
  ret ptr %i.dj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %5 to i64                  ; 2 uses
  %i.b = getelementptr [4 x i8], ptr %0, i64 %1   ; 27 uses
  %i.c = ptrtoint ptr %3 to i64                   ; 12 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 15 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 2                   ; 13 uses
  %i.g = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.h = sub i64 %i.d, %i.g                       ; 10 uses
  %i.i = ashr exact i64 %i.h, 2                   ; 13 uses
  %i.j = add i64 %i.f, %4                         ; 7 uses
  %.not = icmp ult i64 %i.i, %i.j
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not16.i = icmp eq ptr %0, %3
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.018.i = phi ptr [ %i.n, %.lr.ph.i ], [ %0, %bb.b ] ; 3 uses
  %.01517.i = phi ptr [ %i.o, %.lr.ph.i ], [ %2, %bb.b ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.k = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.k, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.l = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.n, %3
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %bb.b
  %.015.lcssa.i = phi ptr [ %2, %bb.b ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.not17.i.i = icmp eq i64 %4, 0
  br i1 %.not17.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.0919.i.i.prol = phi ptr [ %i.s, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.prol ], [ %.015.lcssa.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.p = load i32, ptr %.0919.i.i.prol, align 4, !tbaa !65
  store i32 %i.p, ptr %.01618.i.i.prol, align 4, !tbaa !65
  %i.q = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.s = getelementptr inbounds nuw i8, ptr %.0919.i.i.prol, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %i.u = add i64 %.020.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !471

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.020.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.u, %.lr.ph.i.i.prol ]
  %.0919.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.015.lcssa.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %i.v = icmp ult i64 %4, 4
  br i1 %i.v, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.an, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0919.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.0919.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.w = load i32, ptr %.0919.i.i, align 4, !tbaa !65
  store i32 %i.w, ptr %.01618.i.i, align 4, !tbaa !65
  %i.x = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !65
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !65
  %i.ac = add i32 %i.x, 2
  store i32 %i.ac, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !65
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !65
  %i.ag = add i32 %i.x, 3
  store i32 %i.ag, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ah = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !65
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !65
  %i.ak = add i32 %i.x, 4
  store i32 %i.ak, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.al = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.an = add i64 %.020.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ao = add i64 %4, %1
  %.not197 = icmp ult i64 %i.i, %i.ao
  br i1 %.not197, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not200 = icmp eq i64 %i.f, %1
  %.not16.i206 = icmp eq ptr %3, %i.b
  %or.cond = or i1 %.not200, %.not16.i206
  br i1 %or.cond, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i207.preheader

.lr.ph.i207.preheader:                            ; preds = %bb.c
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j
  br label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %.lr.ph.i207.preheader, %.lr.ph.i207
  %.018.i208 = phi ptr [ %i.at, %.lr.ph.i207 ], [ %3, %.lr.ph.i207.preheader ] ; 3 uses
  %.01517.i209 = phi ptr [ %i.au, %.lr.ph.i207 ], [ %i.ap, %.lr.ph.i207.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i209) ]
  %i.aq = load i32, ptr %.018.i208, align 4, !tbaa !65
  store i32 %i.aq, ptr %.01517.i209, align 4, !tbaa !65
  store i32 0, ptr %.018.i208, align 4, !tbaa !65
  %i.ar = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.at = getelementptr inbounds nuw i8, ptr %.018.i208, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01517.i209, i64 4
  %.not.i210 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i210, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i207, !llvm.loop !8

bb.d:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.av = sub nuw i64 %i.i, %i.j                  ; 5 uses
  %.not17.i = icmp eq i64 %i.av, 0
  br i1 %.not17.i, label %.loopexit416, label %.lr.ph.i213.preheader

.lr.ph.i213.preheader:                            ; preds = %bb.d
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.j ; 3 uses
  %.neg753 = add i64 %i.j, 1
  %xtraiter724 = and i64 %i.av, 1
  %lcmp.mod725.not = icmp eq i64 %xtraiter724, 0
  br i1 %lcmp.mod725.not, label %.lr.ph.i213.prol.loopexit, label %.lr.ph.i213.prol

.lr.ph.i213.prol:                                 ; preds = %.lr.ph.i213.preheader
  %i.ax = add nsw i64 %i.av, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ay = load i32, ptr %3, align 4, !tbaa !65
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !65
  store i32 0, ptr %3, align 4, !tbaa !65
  %i.az = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  br label %.lr.ph.i213.prol.loopexit

.lr.ph.i213.prol.loopexit:                        ; preds = %.lr.ph.i213.prol, %.lr.ph.i213.preheader
  %.020.i.unr = phi i64 [ %i.av, %.lr.ph.i213.preheader ], [ %i.ax, %.lr.ph.i213.prol ]
  %.0819.i.unr = phi ptr [ %3, %.lr.ph.i213.preheader ], [ %i.bb, %.lr.ph.i213.prol ]
  %.01618.i.unr = phi ptr [ %i.aw, %.lr.ph.i213.preheader ], [ %i.bc, %.lr.ph.i213.prol ]
  %i.bd = icmp eq i64 %i.i, %.neg753
  br i1 %i.bd, label %.loopexit416, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213
  %.020.i = phi i64 [ %i.bj, %.lr.ph.i213 ], [ %.020.i.unr, %.lr.ph.i213.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bn, %.lr.ph.i213 ], [ %.0819.i.unr, %.lr.ph.i213.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.bo, %.lr.ph.i213 ], [ %.01618.i.unr, %.lr.ph.i213.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.be = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.be, ptr %.01618.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i, align 4, !tbaa !65
  %i.bf = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bj = add i64 %.020.i, -2                     ; 2 uses
  %i.bk = load i32, ptr %i.bh, align 4, !tbaa !65
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !65
  store i32 0, ptr %i.bh, align 4, !tbaa !65
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i214.1 = icmp eq i64 %i.bj, 0
  br i1 %.not.i214.1, label %.loopexit416, label %.lr.ph.i213, !llvm.loop !9

.loopexit416:                                     ; preds = %.lr.ph.i213.prol.loopexit, %.lr.ph.i213, %bb.d
  %i.bp = getelementptr inbounds [4 x i8], ptr %3, i64 %i.av ; 7 uses
  %.not.i215 = icmp eq ptr %i.bp, %0
  br i1 %.not.i215, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.e

bb.e:                                             ; preds = %.loopexit416
  %.not8.i.i = icmp eq ptr %i.bp, %i.b
  br i1 %.not8.i.i, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader

.lr.ph.i.i216.preheader:                          ; preds = %bb.e
  %i.bq = add i64 %1, %i.j
  %i.br = shl i64 %i.bq, 2
  %i.bs = add i64 %i.br, %i.d
end_hunk_0
begin_hunk_1_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  %i.cx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.cz, %i.b
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter721 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod722.not = icmp eq i64 %xtraiter721, 0
  br i1 %lcmp.mod722.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.da = phi i64 [ %i.db, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.de, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter723 = phi i64 [ %prol.iter723.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.db = add i64 %i.da, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !65
  %i.dc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter723.next = add i64 %prol.iter723, 1   ; 2 uses
  %prol.iter723.cmp.not = icmp eq i64 %prol.iter723.next, %xtraiter721
  br i1 %prol.iter723.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !477

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.db, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.de, %.preheader.prol ]
  %i.df = icmp ult i64 %1, 4
  br i1 %i.df, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dg = phi i64 [ %i.do, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.dq, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !65
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !65
  %i.dk = add i32 %i.dh, -2
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !65
  %i.dm = add i32 %i.dh, -3
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.do = add i64 %i.dg, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !65
  %i.dp = add i32 %i.dh, -4
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.do, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !17

bb.f:                                             ; preds = %bb.a
  %i.dr = icmp ugt i64 %4, %i.i                   ; 2 uses
  %.not180 = icmp ugt i64 %i.i, %i.f
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit414, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %i.ds = and i64 %i.h, 4
  %lcmp.mod728.not = icmp eq i64 %i.ds, 0
  br i1 %lcmp.mod728.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader
  %i.dt = add nsw i64 %i.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.du = load i32, ptr %0, align 4, !tbaa !65
  store i32 %i.du, ptr %2, align 4, !tbaa !65
  store i32 0, ptr %0, align 4, !tbaa !65
  %i.dv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.lr.ph.i235.prol.loopexit

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.i, %.lr.ph.i235.preheader ], [ %i.dt, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.dx, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.dy, %.lr.ph.i235.prol ]
  %i.dz = icmp eq i64 %i.h, 4
  br i1 %i.dz, label %.loopexit414, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.ef, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.ej, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  %.01618.i238 = phi ptr [ %i.ek, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.ea = load i32, ptr %.0819.i237, align 4, !tbaa !65
  store i32 %i.ea, ptr %.01618.i238, align 4, !tbaa !65
  store i32 0, ptr %.0819.i237, align 4, !tbaa !65
  %i.eb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ec = add i32 %i.eb, 1
  store i32 %i.ec, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ed = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.ef = add i64 %.020.i236, -2                  ; 2 uses
  %i.eg = load i32, ptr %i.ed, align 4, !tbaa !65
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !65
  store i32 0, ptr %i.ed, align 4, !tbaa !65
  %i.eh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ei = add i32 %i.eh, 1
  store i32 %i.ei, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ej = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %.not.i239.1 = icmp eq i64 %i.ef, 0
  br i1 %.not.i239.1, label %.loopexit414, label %.lr.ph.i235, !llvm.loop !9

.loopexit414:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.el = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.i) ; 8 uses
  %i.em = getelementptr inbounds i8, ptr %0, i64 %i.h ; 6 uses
  %.not8.i = icmp eq ptr %i.em, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit414
  %i.en = shl i64 %i.d, 1
  %i.eo = add i64 %i.c, %i.g
  %i.ep = add i64 %i.eo, -4                       ; 2 uses
  %i.eq = sub i64 %i.ep, %i.en                    ; 2 uses
  %i.er = lshr i64 %i.eq, 2
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %min.iters.check513 = icmp ult i64 %i.eq, 124
  br i1 %min.iters.check513, label %.lr.ph.i242.preheader714, label %vector.memcheck514

vector.memcheck514:                               ; preds = %.lr.ph.i242.preheader
  %i.et = shl i64 %i.d, 1
  %i.eu = sub i64 %i.ep, %i.et
  %i.ev = and i64 %i.eu, -4                       ; 2 uses
  %i.ew = getelementptr i8, ptr %0, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 4
  %i.ey = add i64 %i.ev, %i.d
  %i.ez = add i64 %i.ey, 4
  %i.fa = sub i64 %i.ez, %i.g
  %i.fb = getelementptr i8, ptr %0, i64 %i.fa
  %bound0515 = icmp ult ptr %0, %i.fb
  %bound1516 = icmp ult ptr %i.em, %i.ex
  %found.conflict517 = and i1 %bound0515, %bound1516
  br i1 %found.conflict517, label %.lr.ph.i242.preheader714, label %vector.ph518

vector.ph518:                                     ; preds = %vector.memcheck514
  %n.vec519 = and i64 %i.es, 9223372036854775800  ; 3 uses
  %i.fc = shl i64 %n.vec519, 2                    ; 2 uses
  %i.fd = getelementptr i8, ptr %0, i64 %i.fc     ; 2 uses
  %i.fe = getelementptr i8, ptr %i.em, i64 %i.fc
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next526, %vector.body520 ] ; 2 uses
  %i.ff = shl i64 %index521, 2                    ; 2 uses
  %next.gep522 = getelementptr i8, ptr %0, i64 %i.ff ; 2 uses
  %next.gep523 = getelementptr i8, ptr %i.em, i64 %i.ff ; 3 uses
  %i.fg = getelementptr i8, ptr %next.gep523, i64 16 ; 2 uses
  %wide.load524 = load <4 x i32>, ptr %next.gep523, align 4, !tbaa !65, !alias.scope !516
  %wide.load525 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !65, !alias.scope !516
  %i.fh = getelementptr i8, ptr %next.gep522, i64 16
  store <4 x i32> %wide.load524, ptr %next.gep522, align 4, !tbaa !65, !alias.scope !517, !noalias !516
  store <4 x i32> %wide.load525, ptr %i.fh, align 4, !tbaa !65, !alias.scope !517, !noalias !516
  store <4 x i32> zeroinitializer, ptr %next.gep523, align 4, !tbaa !65, !alias.scope !516
  store <4 x i32> zeroinitializer, ptr %i.fg, align 4, !tbaa !65, !alias.scope !516
  %index.next526 = add nuw i64 %index521, 8       ; 2 uses
  %i.fi = icmp eq i64 %index.next526, %n.vec519
  br i1 %i.fi, label %middle.block527, label %vector.body520, !llvm.loop !481

middle.block527:                                  ; preds = %vector.body520
  %cmp.n528 = icmp eq i64 %i.es, %n.vec519
  br i1 %cmp.n528, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader714

.lr.ph.i242.preheader714:                         ; preds = %vector.memcheck514, %.lr.ph.i242.preheader, %middle.block527
  %.010.i.ph = phi ptr [ %0, %vector.memcheck514 ], [ %0, %.lr.ph.i242.preheader ], [ %i.fd, %middle.block527 ]
  %.079.i.ph = phi ptr [ %i.em, %vector.memcheck514 ], [ %i.em, %.lr.ph.i242.preheader ], [ %i.fe, %middle.block527 ]
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader714, %.lr.ph.i242
  %.010.i = phi ptr [ %i.fl, %.lr.ph.i242 ], [ %.010.i.ph, %.lr.ph.i242.preheader714 ] ; 2 uses
  %.079.i = phi ptr [ %i.fk, %.lr.ph.i242 ], [ %.079.i.ph, %.lr.ph.i242.preheader714 ] ; 3 uses
  %i.fj = load i32, ptr %.079.i, align 4, !tbaa !65
  store i32 %i.fj, ptr %.010.i, align 4, !tbaa !65
  store i32 0, ptr %.079.i, align 4, !tbaa !65
  %i.fk = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i243 = icmp eq ptr %i.fk, %3
  br i1 %.not.i243, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242, !llvm.loop !482

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i242, %middle.block527, %.loopexit414
  %.0.lcssa.i = phi ptr [ %0, %.loopexit414 ], [ %i.fd, %middle.block527 ], [ %i.fl, %.lr.ph.i242 ] ; 6 uses
  %.not8.i.i244 = icmp eq i64 %i.el, 0
  br i1 %.not8.i.i244, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245.preheader

.lr.ph.i.i245.preheader:                          ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %min.iters.check534 = icmp ult i64 %i.el, 8
  %.0.lcssa.i532 = ptrtoaddr ptr %.0.lcssa.i to i64
  %7 = ptrtoaddr ptr %5 to i64
  %i.fm = sub i64 %7, %.0.lcssa.i532
  %diff.check = icmp ugt i64 %i.fm, -32
  %or.cond694 = select i1 %min.iters.check534, i1 true, i1 %diff.check
  br i1 %or.cond694, label %.lr.ph.i.i245.preheader712, label %vector.ph535

vector.ph535:                                     ; preds = %.lr.ph.i.i245.preheader
  %n.vec536 = and i64 %i.el, -8                   ; 3 uses
  %i.fn = shl i64 %n.vec536, 2                    ; 2 uses
  %i.fo = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fn
  %i.fp = and i64 %i.el, 7
  %i.fq = getelementptr i8, ptr %5, i64 %i.fn     ; 2 uses
  br label %vector.body537

vector.body537:                                   ; preds = %vector.body537, %vector.ph535
  %index538 = phi i64 [ 0, %vector.ph535 ], [ %index.next543, %vector.body537 ] ; 2 uses
  %i.fr = shl i64 %index538, 2                    ; 2 uses
  %next.gep539 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fr ; 2 uses
  %next.gep540 = getelementptr i8, ptr %5, i64 %i.fr ; 2 uses
  %i.fs = getelementptr i8, ptr %next.gep540, i64 16
  %wide.load541 = load <4 x i32>, ptr %next.gep540, align 4, !tbaa !65
  %wide.load542 = load <4 x i32>, ptr %i.fs, align 4, !tbaa !65
  %i.ft = getelementptr i8, ptr %next.gep539, i64 16
  store <4 x i32> %wide.load541, ptr %next.gep539, align 4, !tbaa !65
  store <4 x i32> %wide.load542, ptr %i.ft, align 4, !tbaa !65
  %index.next543 = add nuw i64 %index538, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next543, %n.vec536
  br i1 %i.fu, label %middle.block544, label %vector.body537, !llvm.loop !483

middle.block544:                                  ; preds = %vector.body537
  %cmp.n545 = icmp eq i64 %i.el, %n.vec536
  br i1 %cmp.n545, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245.preheader712

.lr.ph.i.i245.preheader712:                       ; preds = %.lr.ph.i.i245.preheader, %middle.block544
  %.011.i.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i245.preheader ], [ %i.fo, %middle.block544 ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.el, %.lr.ph.i.i245.preheader ], [ %i.fp, %middle.block544 ] ; 4 uses
  %.079.i.i246.ph = phi ptr [ %5, %.lr.ph.i.i245.preheader ], [ %i.fq, %middle.block544 ] ; 2 uses
  %i.fv = add i64 %.0610.i.i.ph, -1
  %xtraiter730 = and i64 %.0610.i.i.ph, 7         ; 2 uses
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol

.lr.ph.i.i245.prol:                               ; preds = %.lr.ph.i.i245.preheader712, %.lr.ph.i.i245.prol
  %.011.i.i.prol = phi ptr [ %i.fz, %.lr.ph.i.i245.prol ], [ %.011.i.i.ph, %.lr.ph.i.i245.preheader712 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.fw, %.lr.ph.i.i245.prol ], [ %.0610.i.i.ph, %.lr.ph.i.i245.preheader712 ]
  %.079.i.i246.prol = phi ptr [ %i.fy, %.lr.ph.i.i245.prol ], [ %.079.i.i246.ph, %.lr.ph.i.i245.preheader712 ] ; 2 uses
  %prol.iter732 = phi i64 [ %prol.iter732.next, %.lr.ph.i.i245.prol ], [ 0, %.lr.ph.i.i245.preheader712 ]
  %i.fw = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.fx = load i32, ptr %.079.i.i246.prol, align 4, !tbaa !65
  store i32 %i.fx, ptr %.011.i.i.prol, align 4, !tbaa !65
  %i.fy = getelementptr inbounds nuw i8, ptr %.079.i.i246.prol, i64 4 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 2 uses
  %prol.iter732.next = add i64 %prol.iter732, 1   ; 2 uses
  %prol.iter732.cmp.not = icmp eq i64 %prol.iter732.next, %xtraiter730
  br i1 %prol.iter732.cmp.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol, !llvm.loop !484

.lr.ph.i.i245.prol.loopexit:                      ; preds = %.lr.ph.i.i245.prol, %.lr.ph.i.i245.preheader712
  %.lcssa713.unr = phi ptr [ poison, %.lr.ph.i.i245.preheader712 ], [ %i.fy, %.lr.ph.i.i245.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i.i245.preheader712 ], [ %i.fz, %.lr.ph.i.i245.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i.i245.preheader712 ], [ %i.fw, %.lr.ph.i.i245.prol ]
  %.079.i.i246.unr = phi ptr [ %.079.i.i246.ph, %.lr.ph.i.i245.preheader712 ], [ %i.fy, %.lr.ph.i.i245.prol ]
  %i.ga = icmp ult i64 %i.fv, 7
  br i1 %i.ga, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245
  %.011.i.i = phi ptr [ %i.gz, %.lr.ph.i.i245 ], [ %.011.i.i.unr, %.lr.ph.i.i245.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.gw, %.lr.ph.i.i245 ], [ %.0610.i.i.unr, %.lr.ph.i.i245.prol.loopexit ]
  %.079.i.i246 = phi ptr [ %i.gy, %.lr.ph.i.i245 ], [ %.079.i.i246.unr, %.lr.ph.i.i245.prol.loopexit ] ; 9 uses
  %i.gb = load i32, ptr %.079.i.i246, align 4, !tbaa !65
  store i32 %i.gb, ptr %.011.i.i, align 4, !tbaa !65
  %i.gc = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 4
  %i.gd = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.ge = load i32, ptr %i.gc, align 4, !tbaa !65
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !65
  %i.gf = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !65
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !65
  %i.gi = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 12
  %i.gj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.gk = load i32, ptr %i.gi, align 4, !tbaa !65
  store i32 %i.gk, ptr %i.gj, align 4, !tbaa !65
  %i.gl = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.gn = load i32, ptr %i.gl, align 4, !tbaa !65
  store i32 %i.gn, ptr %i.gm, align 4, !tbaa !65
  %i.go = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 20
  %i.gp = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.gq = load i32, ptr %i.go, align 4, !tbaa !65
  store i32 %i.gq, ptr %i.gp, align 4, !tbaa !65
  %i.gr = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 24
  %i.gs = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.gt = load i32, ptr %i.gr, align 4, !tbaa !65
  store i32 %i.gt, ptr %i.gs, align 4, !tbaa !65
  %i.gu = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 28
  %i.gv = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.gw = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.gx = load i32, ptr %i.gu, align 4, !tbaa !65
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !65
  %i.gy = getelementptr inbounds nuw i8, ptr %.079.i.i246, i64 32 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32
  %.not.i.i247.7 = icmp eq i64 %i.gw, 0
  br i1 %.not.i.i247.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i245, !llvm.loop !485

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245, %middle.block544, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.07.lcssa.i.i = phi ptr [ %5, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ], [ %i.fq, %middle.block544 ], [ %.lcssa713.unr, %.lr.ph.i.i245.prol.loopexit ], [ %i.gy, %.lr.ph.i.i245 ]
  br i1 %i.dr, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.ha = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.el ; 7 uses
  %.not.i248 = icmp eq ptr %3, %i.ha
  br i1 %.not.i248, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i249 = icmp eq ptr %3, %i.b
  br i1 %.not8.i.i249, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader

.lr.ph.i.i250.preheader:                          ; preds = %bb.i
  %i.hb = shl i64 %1, 2
  %i.hc = add i64 %i.hb, %i.d
  %i.hd = add i64 %i.hc, -4
  %i.he = sub i64 %i.hd, %i.c                     ; 2 uses
  %i.hf = lshr i64 %i.he, 2
  %i.hg = add nuw nsw i64 %i.hf, 1                ; 2 uses
  %min.iters.check555 = icmp ult i64 %i.he, 124
  br i1 %min.iters.check555, label %.lr.ph.i.i250.preheader710, label %vector.memcheck556

vector.memcheck556:                               ; preds = %.lr.ph.i.i250.preheader
  %i.hh = shl i64 %i.el, 2
  %i.hi = shl i64 %1, 2
  %i.hj = add i64 %i.hi, %i.d
  %i.hk = add i64 %i.hj, -4
  %i.hl = sub i64 %i.hk, %i.c
  %i.hm = and i64 %i.hl, -4                       ; 2 uses
  %i.hn = getelementptr i8, ptr %.0.lcssa.i, i64 %i.hh
  %i.ho = getelementptr i8, ptr %i.hn, i64 %i.hm
  %i.hp = getelementptr i8, ptr %i.ho, i64 4
  %i.hq = getelementptr i8, ptr %3, i64 %i.hm
  %i.hr = getelementptr i8, ptr %i.hq, i64 4
  %bound0557 = icmp ult ptr %i.ha, %i.hr
  %bound1558 = icmp ult ptr %3, %i.hp
  %found.conflict559 = and i1 %bound0557, %bound1558
  br i1 %found.conflict559, label %.lr.ph.i.i250.preheader710, label %vector.ph560

vector.ph560:                                     ; preds = %vector.memcheck556
  %n.vec561 = and i64 %i.hg, 9223372036854775800  ; 3 uses
  %i.hs = shl i64 %n.vec561, 2                    ; 2 uses
  %i.ht = getelementptr i8, ptr %i.ha, i64 %i.hs  ; 2 uses
  %i.hu = getelementptr i8, ptr %3, i64 %i.hs
  br label %vector.body562

vector.body562:                                   ; preds = %vector.body562, %vector.ph560
  %index563 = phi i64 [ 0, %vector.ph560 ], [ %index.next568, %vector.body562 ] ; 2 uses
  %i.hv = shl i64 %index563, 2                    ; 2 uses
  %next.gep564 = getelementptr i8, ptr %i.ha, i64 %i.hv ; 2 uses
  %next.gep565 = getelementptr i8, ptr %3, i64 %i.hv ; 3 uses
  %i.hw = getelementptr i8, ptr %next.gep565, i64 16 ; 2 uses
  %wide.load566 = load <4 x i32>, ptr %next.gep565, align 4, !tbaa !65, !alias.scope !518
  %wide.load567 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !65, !alias.scope !518
  %i.hx = getelementptr i8, ptr %next.gep564, i64 16
  store <4 x i32> %wide.load566, ptr %next.gep564, align 4, !tbaa !65, !alias.scope !519, !noalias !518
  store <4 x i32> %wide.load567, ptr %i.hx, align 4, !tbaa !65, !alias.scope !519, !noalias !518
  store <4 x i32> zeroinitializer, ptr %next.gep565, align 4, !tbaa !65, !alias.scope !518
  store <4 x i32> zeroinitializer, ptr %i.hw, align 4, !tbaa !65, !alias.scope !518
  %index.next568 = add nuw i64 %index563, 8       ; 2 uses
  %i.hy = icmp eq i64 %index.next568, %n.vec561
  br i1 %i.hy, label %middle.block569, label %vector.body562, !llvm.loop !489

middle.block569:                                  ; preds = %vector.body562
  %cmp.n570 = icmp eq i64 %i.hg, %n.vec561
  br i1 %cmp.n570, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader710

.lr.ph.i.i250.preheader710:                       ; preds = %vector.memcheck556, %.lr.ph.i.i250.preheader, %middle.block569
  %.010.i.i251.ph = phi ptr [ %i.ha, %vector.memcheck556 ], [ %i.ha, %.lr.ph.i.i250.preheader ], [ %i.ht, %middle.block569 ]
  %.079.i.i252.ph = phi ptr [ %3, %vector.memcheck556 ], [ %3, %.lr.ph.i.i250.preheader ], [ %i.hu, %middle.block569 ]
  br label %.lr.ph.i.i250

.lr.ph.i.i250:                                    ; preds = %.lr.ph.i.i250.preheader710, %.lr.ph.i.i250
  %.010.i.i251 = phi ptr [ %i.ib, %.lr.ph.i.i250 ], [ %.010.i.i251.ph, %.lr.ph.i.i250.preheader710 ] ; 2 uses
  %.079.i.i252 = phi ptr [ %i.ia, %.lr.ph.i.i250 ], [ %.079.i.i252.ph, %.lr.ph.i.i250.preheader710 ] ; 3 uses
  %i.hz = load i32, ptr %.079.i.i252, align 4, !tbaa !65
  store i32 %i.hz, ptr %.010.i.i251, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i252, align 4, !tbaa !65
  %i.ia = getelementptr inbounds nuw i8, ptr %.079.i.i252, i64 4 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.010.i.i251, i64 4 ; 2 uses
  %.not.i.i253 = icmp eq ptr %i.ia, %i.b
  br i1 %.not.i.i253, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250, !llvm.loop !490

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254: ; preds = %.lr.ph.i.i250, %middle.block569, %bb.i
  %i.ic = phi ptr [ %i.ha, %bb.i ], [ %i.ht, %middle.block569 ], [ %i.ib, %.lr.ph.i.i250 ] ; 2 uses
  %.not3.i255 = icmp eq ptr %i.ic, %i.b
  br i1 %.not3.i255, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i256

.lr.ph.i256:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, %.lr.ph.i256
  %storemerge4.i257 = phi ptr [ %i.if, %.lr.ph.i256 ], [ %i.ic, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i257, align 4, !tbaa !65
  %i.id = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ie = add i32 %i.id, -1
  store i32 %i.ie, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.if = getelementptr inbounds nuw i8, ptr %storemerge4.i257, i64 4 ; 2 uses
  %.not.i258 = icmp eq ptr %i.if, %i.b
  br i1 %.not.i258, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i256, !llvm.loop !16
end_hunk_1
begin_hunk_2_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEPKS3_EES8_EEvT_mSC_SC_mT0_RT1_:bb.a
  %i.ks = shl i64 %indvar.lcssa, 2
  %i.kt = add i64 %i.ks, %i.a
  %i.ku = sub i64 %i.d, %i.kt
  %i.kv = add i64 %i.ku, -5
  %diff.check574 = icmp ult i64 %i.kv, 31
  br i1 %diff.check574, label %.lr.ph.i.i284.preheader706, label %vector.ph577

vector.ph577:                                     ; preds = %vector.memcheck573
  %n.vec578 = and i64 %i.kr, -8                   ; 3 uses
  %i.kw = shl i64 %n.vec578, 2                    ; 2 uses
  %i.kx = getelementptr i8, ptr %0, i64 %i.kw
  %i.ky = and i64 %i.kr, 7
  %i.kz = getelementptr i8, ptr %.lcssa707, i64 %i.kw
  br label %vector.body579

vector.body579:                                   ; preds = %vector.body579, %vector.ph577
  %index580 = phi i64 [ 0, %vector.ph577 ], [ %index.next585, %vector.body579 ] ; 2 uses
  %i.la = shl i64 %index580, 2                    ; 2 uses
  %next.gep581 = getelementptr i8, ptr %0, i64 %i.la ; 2 uses
  %next.gep582 = getelementptr i8, ptr %.lcssa707, i64 %i.la ; 2 uses
  %i.lb = getelementptr i8, ptr %next.gep582, i64 16
  %wide.load583 = load <4 x i32>, ptr %next.gep582, align 4, !tbaa !65
  %wide.load584 = load <4 x i32>, ptr %i.lb, align 4, !tbaa !65
  %i.lc = getelementptr i8, ptr %next.gep581, i64 16
  store <4 x i32> %wide.load583, ptr %next.gep581, align 4, !tbaa !65
  store <4 x i32> %wide.load584, ptr %i.lc, align 4, !tbaa !65
  %index.next585 = add nuw i64 %index580, 8       ; 2 uses
  %i.ld = icmp eq i64 %index.next585, %n.vec578
  br i1 %i.ld, label %middle.block586, label %vector.body579, !llvm.loop !494

middle.block586:                                  ; preds = %vector.body579
  %cmp.n587 = icmp eq i64 %i.kr, %n.vec578
  br i1 %cmp.n587, label %.loopexit412, label %.lr.ph.i.i284.preheader706

.lr.ph.i.i284.preheader706:                       ; preds = %vector.memcheck573, %.lr.ph.i.i284.preheader, %middle.block586
  %.011.i.i285.ph = phi ptr [ %0, %vector.memcheck573 ], [ %0, %.lr.ph.i.i284.preheader ], [ %i.kx, %middle.block586 ] ; 2 uses
  %.0610.i.i286.ph = phi i64 [ %i.kr, %vector.memcheck573 ], [ %i.kr, %.lr.ph.i.i284.preheader ], [ %i.ky, %middle.block586 ] ; 4 uses
  %.079.i.i287.ph = phi ptr [ %.lcssa707, %vector.memcheck573 ], [ %.lcssa707, %.lr.ph.i.i284.preheader ], [ %i.kz, %middle.block586 ] ; 2 uses
  %i.le = add i64 %.0610.i.i286.ph, -1
  %xtraiter738 = and i64 %.0610.i.i286.ph, 7      ; 2 uses
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %.lr.ph.i.i284.prol.loopexit, label %.lr.ph.i.i284.prol

.lr.ph.i.i284.prol:                               ; preds = %.lr.ph.i.i284.preheader706, %.lr.ph.i.i284.prol
  %.011.i.i285.prol = phi ptr [ %i.li, %.lr.ph.i.i284.prol ], [ %.011.i.i285.ph, %.lr.ph.i.i284.preheader706 ] ; 2 uses
  %.0610.i.i286.prol = phi i64 [ %i.lf, %.lr.ph.i.i284.prol ], [ %.0610.i.i286.ph, %.lr.ph.i.i284.preheader706 ]
  %.079.i.i287.prol = phi ptr [ %i.lh, %.lr.ph.i.i284.prol ], [ %.079.i.i287.ph, %.lr.ph.i.i284.preheader706 ] ; 2 uses
  %prol.iter740 = phi i64 [ %prol.iter740.next, %.lr.ph.i.i284.prol ], [ 0, %.lr.ph.i.i284.preheader706 ]
  %i.lf = add i64 %.0610.i.i286.prol, -1          ; 2 uses
  %i.lg = load i32, ptr %.079.i.i287.prol, align 4, !tbaa !65
  store i32 %i.lg, ptr %.011.i.i285.prol, align 4, !tbaa !65
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i287.prol, i64 4 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.011.i.i285.prol, i64 4 ; 2 uses
  %prol.iter740.next = add i64 %prol.iter740, 1   ; 2 uses
  %prol.iter740.cmp.not = icmp eq i64 %prol.iter740.next, %xtraiter738
  br i1 %prol.iter740.cmp.not, label %.lr.ph.i.i284.prol.loopexit, label %.lr.ph.i.i284.prol, !llvm.loop !495

.lr.ph.i.i284.prol.loopexit:                      ; preds = %.lr.ph.i.i284.prol, %.lr.ph.i.i284.preheader706
  %.011.i.i285.unr = phi ptr [ %.011.i.i285.ph, %.lr.ph.i.i284.preheader706 ], [ %i.li, %.lr.ph.i.i284.prol ]
  %.0610.i.i286.unr = phi i64 [ %.0610.i.i286.ph, %.lr.ph.i.i284.preheader706 ], [ %i.lf, %.lr.ph.i.i284.prol ]
  %.079.i.i287.unr = phi ptr [ %.079.i.i287.ph, %.lr.ph.i.i284.preheader706 ], [ %i.lh, %.lr.ph.i.i284.prol ]
  %i.lj = icmp ult i64 %i.le, 7
  br i1 %i.lj, label %.loopexit412, label %.lr.ph.i.i284

.lr.ph.i.i284:                                    ; preds = %.lr.ph.i.i284.prol.loopexit, %.lr.ph.i.i284
  %.011.i.i285 = phi ptr [ %i.mi, %.lr.ph.i.i284 ], [ %.011.i.i285.unr, %.lr.ph.i.i284.prol.loopexit ] ; 9 uses
  %.0610.i.i286 = phi i64 [ %i.mf, %.lr.ph.i.i284 ], [ %.0610.i.i286.unr, %.lr.ph.i.i284.prol.loopexit ]
  %.079.i.i287 = phi ptr [ %i.mh, %.lr.ph.i.i284 ], [ %.079.i.i287.unr, %.lr.ph.i.i284.prol.loopexit ] ; 9 uses
  %i.lk = load i32, ptr %.079.i.i287, align 4, !tbaa !65
  store i32 %i.lk, ptr %.011.i.i285, align 4, !tbaa !65
  %i.ll = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 4
  %i.lm = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 4
  %i.ln = load i32, ptr %i.ll, align 4, !tbaa !65
  store i32 %i.ln, ptr %i.lm, align 4, !tbaa !65
  %i.lo = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 8
  %i.lq = load i32, ptr %i.lo, align 4, !tbaa !65
  store i32 %i.lq, ptr %i.lp, align 4, !tbaa !65
  %i.lr = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 12
  %i.ls = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 12
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !65
  store i32 %i.lt, ptr %i.ls, align 4, !tbaa !65
  %i.lu = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 16
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !65
  store i32 %i.lw, ptr %i.lv, align 4, !tbaa !65
  %i.lx = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 20
  %i.ly = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 20
  %i.lz = load i32, ptr %i.lx, align 4, !tbaa !65
  store i32 %i.lz, ptr %i.ly, align 4, !tbaa !65
  %i.ma = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 24
  %i.mb = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 24
  %i.mc = load i32, ptr %i.ma, align 4, !tbaa !65
  store i32 %i.mc, ptr %i.mb, align 4, !tbaa !65
  %i.md = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 28
  %i.me = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 28
  %i.mf = add i64 %.0610.i.i286, -8               ; 2 uses
  %i.mg = load i32, ptr %i.md, align 4, !tbaa !65
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !65
  %i.mh = getelementptr inbounds nuw i8, ptr %.079.i.i287, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %.011.i.i285, i64 32
  %.not.i.i288.7 = icmp eq i64 %i.mf, 0
  br i1 %.not.i.i288.7, label %.loopexit412, label %.lr.ph.i.i284, !llvm.loop !496

.loopexit412:                                     ; preds = %.lr.ph.i.i284.prol.loopexit, %.lr.ph.i.i284, %middle.block586, %bb.l
  %i.mj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.kr ; 7 uses
  %.not.i291 = icmp eq ptr %3, %i.mj
  br i1 %.not.i291, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.m

bb.m:                                             ; preds = %.loopexit412
  %.not8.i.i292 = icmp eq ptr %3, %i.b
  br i1 %.not8.i.i292, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, label %.lr.ph.i.i293.preheader

.lr.ph.i.i293.preheader:                          ; preds = %bb.m
  %i.mk = shl i64 %1, 2
  %i.ml = add i64 %i.mk, %i.d
  %i.mm = add i64 %i.ml, -4
  %i.mn = sub i64 %i.mm, %i.c                     ; 2 uses
  %i.mo = lshr i64 %i.mn, 2
  %i.mp = add nuw nsw i64 %i.mo, 1                ; 2 uses
  %min.iters.check597 = icmp ult i64 %i.mn, 124
  br i1 %min.iters.check597, label %.lr.ph.i.i293.preheader704, label %vector.memcheck598

vector.memcheck598:                               ; preds = %.lr.ph.i.i293.preheader
  %i.mq = shl i64 %1, 2
  %i.mr = add i64 %i.mq, %i.d
  %i.ms = add i64 %i.mr, -4
  %i.mt = sub i64 %i.ms, %i.c
  %i.mu = and i64 %i.mt, -4                       ; 2 uses
  %i.mv = shl i64 %i.kr, 2
  %i.mw = getelementptr i8, ptr %0, i64 %i.mu
  %i.mx = getelementptr i8, ptr %i.mw, i64 %i.mv
  %i.my = getelementptr i8, ptr %i.mx, i64 4
  %i.mz = getelementptr i8, ptr %3, i64 %i.mu
  %i.na = getelementptr i8, ptr %i.mz, i64 4
  %bound0599 = icmp ult ptr %i.mj, %i.na
  %bound1600 = icmp ult ptr %3, %i.my
  %found.conflict601 = and i1 %bound0599, %bound1600
  br i1 %found.conflict601, label %.lr.ph.i.i293.preheader704, label %vector.ph602

vector.ph602:                                     ; preds = %vector.memcheck598
  %n.vec603 = and i64 %i.mp, 9223372036854775800  ; 3 uses
  %i.nb = shl i64 %n.vec603, 2                    ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mj, i64 %i.nb  ; 2 uses
  %i.nd = getelementptr i8, ptr %3, i64 %i.nb
  br label %vector.body604

vector.body604:                                   ; preds = %vector.body604, %vector.ph602
  %index605 = phi i64 [ 0, %vector.ph602 ], [ %index.next610, %vector.body604 ] ; 2 uses
  %i.ne = shl i64 %index605, 2                    ; 2 uses
  %next.gep606 = getelementptr i8, ptr %i.mj, i64 %i.ne ; 2 uses
  %next.gep607 = getelementptr i8, ptr %3, i64 %i.ne ; 3 uses
  %i.nf = getelementptr i8, ptr %next.gep607, i64 16 ; 2 uses
  %wide.load608 = load <4 x i32>, ptr %next.gep607, align 4, !tbaa !65, !alias.scope !520
  %wide.load609 = load <4 x i32>, ptr %i.nf, align 4, !tbaa !65, !alias.scope !520
  %i.ng = getelementptr i8, ptr %next.gep606, i64 16
  store <4 x i32> %wide.load608, ptr %next.gep606, align 4, !tbaa !65, !alias.scope !521, !noalias !520
  store <4 x i32> %wide.load609, ptr %i.ng, align 4, !tbaa !65, !alias.scope !521, !noalias !520
  store <4 x i32> zeroinitializer, ptr %next.gep607, align 4, !tbaa !65, !alias.scope !520
  store <4 x i32> zeroinitializer, ptr %i.nf, align 4, !tbaa !65, !alias.scope !520
  %index.next610 = add nuw i64 %index605, 8       ; 2 uses
  %i.nh = icmp eq i64 %index.next610, %n.vec603
  br i1 %i.nh, label %middle.block611, label %vector.body604, !llvm.loop !500

middle.block611:                                  ; preds = %vector.body604
  %cmp.n612 = icmp eq i64 %i.mp, %n.vec603
  br i1 %cmp.n612, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, label %.lr.ph.i.i293.preheader704

.lr.ph.i.i293.preheader704:                       ; preds = %vector.memcheck598, %.lr.ph.i.i293.preheader, %middle.block611
  %.010.i.i294.ph = phi ptr [ %i.mj, %vector.memcheck598 ], [ %i.mj, %.lr.ph.i.i293.preheader ], [ %i.nc, %middle.block611 ]
  %.079.i.i295.ph = phi ptr [ %3, %vector.memcheck598 ], [ %3, %.lr.ph.i.i293.preheader ], [ %i.nd, %middle.block611 ]
  br label %.lr.ph.i.i293

.lr.ph.i.i293:                                    ; preds = %.lr.ph.i.i293.preheader704, %.lr.ph.i.i293
  %.010.i.i294 = phi ptr [ %i.nk, %.lr.ph.i.i293 ], [ %.010.i.i294.ph, %.lr.ph.i.i293.preheader704 ] ; 2 uses
  %.079.i.i295 = phi ptr [ %i.nj, %.lr.ph.i.i293 ], [ %.079.i.i295.ph, %.lr.ph.i.i293.preheader704 ] ; 3 uses
  %i.ni = load i32, ptr %.079.i.i295, align 4, !tbaa !65
  store i32 %i.ni, ptr %.010.i.i294, align 4, !tbaa !65
  store i32 0, ptr %.079.i.i295, align 4, !tbaa !65
  %i.nj = getelementptr inbounds nuw i8, ptr %.079.i.i295, i64 4 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.010.i.i294, i64 4 ; 2 uses
  %.not.i.i296 = icmp eq ptr %i.nj, %i.b
  br i1 %.not.i.i296, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, label %.lr.ph.i.i293, !llvm.loop !501

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297: ; preds = %.lr.ph.i.i293, %middle.block611, %bb.m
  %i.nl = phi ptr [ %i.mj, %bb.m ], [ %i.nc, %middle.block611 ], [ %i.nk, %.lr.ph.i.i293 ] ; 2 uses
  %.not3.i298 = icmp eq ptr %i.nl, %i.b
  br i1 %.not3.i298, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i299

.lr.ph.i299:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, %.lr.ph.i299
  %storemerge4.i300 = phi ptr [ %i.no, %.lr.ph.i299 ], [ %i.nl, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i300, align 4, !tbaa !65
  %i.nm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.nn = add i32 %i.nm, -1
  store i32 %i.nn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.no = getelementptr inbounds nuw i8, ptr %storemerge4.i300, i64 4 ; 2 uses
  %.not.i301 = icmp eq ptr %i.no, %i.b
  br i1 %.not.i301, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i299, !llvm.loop !16

.critedge:                                        ; preds = %.lr.ph.i.i276.prol.loopexit, %.lr.ph.i.i276, %middle.block628, %bb.k, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.sroa.0394.2 = phi ptr [ %.07.lcssa.i.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit ], [ %.lcssa707, %bb.k ], [ %i.jh, %middle.block628 ], [ %.lcssa702.unr, %.lr.ph.i.i276.prol.loopexit ], [ %i.kp, %.lr.ph.i.i276 ] ; 9 uses
  %i.np = sub nuw i64 %4, %i.i                    ; 9 uses
  %i.nq = sub i64 %1, %i.f                        ; 8 uses
  %.not190 = icmp ult i64 %i.nq, %i.np
  br i1 %.not190, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %.neg = mul i64 %i.np, -4                       ; 2 uses
  %i.nr = getelementptr i8, ptr %i.b, i64 %.neg   ; 7 uses
  %.not16.i311 = icmp eq i64 %.neg, 0
  br i1 %.not16.i311, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %bb.n, %.lr.ph.i312
  %.018.i313 = phi ptr [ %i.nv, %.lr.ph.i312 ], [ %i.nr, %bb.n ] ; 3 uses
  %.01517.i314 = phi ptr [ %i.nw, %.lr.ph.i312 ], [ %i.b, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i314) ]
  %i.ns = load i32, ptr %.018.i313, align 4, !tbaa !65
  store i32 %i.ns, ptr %.01517.i314, align 4, !tbaa !65
  store i32 0, ptr %.018.i313, align 4, !tbaa !65
  %i.nt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.nu = add i32 %i.nt, 1
  store i32 %i.nu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.nv = getelementptr inbounds nuw i8, ptr %.018.i313, i64 4 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %.01517.i314, i64 4
  %.not.i315 = icmp eq ptr %i.nv, %i.b
  br i1 %.not.i315, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317, label %.lr.ph.i312, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317: ; preds = %.lr.ph.i312
  %.not8.i.i319 = icmp eq ptr %3, %i.nr
  br i1 %.not8.i.i319, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i320.preheader

.lr.ph.i.i320.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317
  %i.nx = shl i64 %1, 2
  %i.ny = shl i64 %4, 2
  %i.nz = add i64 %i.h, %i.d
  %i.oa = add i64 %i.nz, %i.nx
  %i.ob = add i64 %i.oa, -4
  %i.oc = add i64 %i.ny, %i.c
  %i.od = sub i64 %i.ob, %i.oc                    ; 2 uses
  %i.oe = lshr i64 %i.od, 2
  %i.of = add nuw nsw i64 %i.oe, 1                ; 2 uses
  %min.iters.check639 = icmp ult i64 %i.od, 172
  br i1 %min.iters.check639, label %.lr.ph.i.i320.preheader700, label %vector.memcheck640

vector.memcheck640:                               ; preds = %.lr.ph.i.i320.preheader
  %i.og = shl i64 %1, 2                           ; 3 uses
  %i.oh = shl i64 %4, 2                           ; 2 uses
  %i.oi = add i64 %i.h, %i.d
  %i.oj = add i64 %i.oi, %i.og
  %i.ok = add i64 %i.oj, -4
  %i.ol = add i64 %i.oh, %i.c
  %i.om = sub i64 %i.ok, %i.ol
  %i.on = and i64 %i.om, -4                       ; 2 uses
  %i.oo = add i64 %i.og, -4
  %i.op = sub i64 %i.oo, %i.on
  %i.oq = getelementptr i8, ptr %0, i64 %i.op
  %i.or = add i64 %i.h, %i.og
  %i.os = add i64 %i.or, -4
  %i.ot = add i64 %i.oh, %i.on
  %i.ou = sub i64 %i.os, %i.ot
  %i.ov = getelementptr i8, ptr %0, i64 %i.ou
  %bound0641 = icmp ult ptr %i.oq, %i.nr
  %bound1642 = icmp ult ptr %i.ov, %i.b
  %found.conflict643 = and i1 %bound0641, %bound1642
  br i1 %found.conflict643, label %.lr.ph.i.i320.preheader700, label %vector.ph644

vector.ph644:                                     ; preds = %vector.memcheck640
  %n.vec645 = and i64 %i.of, 9223372036854775800  ; 3 uses
  %i.ow = mul i64 %n.vec645, -4                   ; 2 uses
  %i.ox = getelementptr i8, ptr %i.b, i64 %i.ow
  %i.oy = getelementptr i8, ptr %i.nr, i64 %i.ow
  br label %vector.body646

vector.body646:                                   ; preds = %vector.body646, %vector.ph644
  %index647 = phi i64 [ 0, %vector.ph644 ], [ %index.next652, %vector.body646 ] ; 2 uses
  %i.oz = mul i64 %index647, -4                   ; 2 uses
  %next.gep648 = getelementptr i8, ptr %i.b, i64 %i.oz ; 2 uses
  %next.gep649 = getelementptr i8, ptr %i.nr, i64 %i.oz ; 2 uses
  %i.pa = getelementptr inbounds i8, ptr %next.gep649, i64 -16 ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %next.gep649, i64 -32 ; 2 uses
  %wide.load650 = load <4 x i32>, ptr %i.pa, align 4, !tbaa !65, !alias.scope !522
  %wide.load651 = load <4 x i32>, ptr %i.pb, align 4, !tbaa !65, !alias.scope !522
  %i.pc = getelementptr inbounds i8, ptr %next.gep648, i64 -16
  %i.pd = getelementptr inbounds i8, ptr %next.gep648, i64 -32
  store <4 x i32> %wide.load650, ptr %i.pc, align 4, !tbaa !65, !alias.scope !523, !noalias !522
  store <4 x i32> %wide.load651, ptr %i.pd, align 4, !tbaa !65, !alias.scope !523, !noalias !522
  store <4 x i32> zeroinitializer, ptr %i.pa, align 4, !tbaa !65, !alias.scope !522
  store <4 x i32> zeroinitializer, ptr %i.pb, align 4, !tbaa !65, !alias.scope !522
  %index.next652 = add nuw i64 %index647, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next652, %n.vec645
  br i1 %i.pe, label %middle.block653, label %vector.body646, !llvm.loop !505

middle.block653:                                  ; preds = %vector.body646
  %cmp.n654 = icmp eq i64 %i.of, %n.vec645
  br i1 %cmp.n654, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i320.preheader700

.lr.ph.i.i320.preheader700:                       ; preds = %vector.memcheck640, %.lr.ph.i.i320.preheader, %middle.block653
  %.010.i.i321.ph = phi ptr [ %i.b, %vector.memcheck640 ], [ %i.b, %.lr.ph.i.i320.preheader ], [ %i.ox, %middle.block653 ]
  %.079.i.i322.ph = phi ptr [ %i.nr, %vector.memcheck640 ], [ %i.nr, %.lr.ph.i.i320.preheader ], [ %i.oy, %middle.block653 ]
  br label %.lr.ph.i.i320

.lr.ph.i.i320:                                    ; preds = %.lr.ph.i.i320.preheader700, %.lr.ph.i.i320
  %.010.i.i321 = phi ptr [ %i.pg, %.lr.ph.i.i320 ], [ %.010.i.i321.ph, %.lr.ph.i.i320.preheader700 ]
  %.079.i.i322 = phi ptr [ %i.pf, %.lr.ph.i.i320 ], [ %.079.i.i322.ph, %.lr.ph.i.i320.preheader700 ]
  %i.pf = getelementptr inbounds i8, ptr %.079.i.i322, i64 -4 ; 4 uses
  %i.pg = getelementptr inbounds i8, ptr %.010.i.i321, i64 -4 ; 2 uses
  %i.ph = load i32, ptr %i.pf, align 4, !tbaa !65
  store i32 %i.ph, ptr %i.pg, align 4, !tbaa !65
  store i32 0, ptr %i.pf, align 4, !tbaa !65
  %.not.i.i323 = icmp eq ptr %3, %i.pf
  br i1 %.not.i.i323, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i320, !llvm.loop !506

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i320, %middle.block653, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit317
  %.not8.i.i324 = icmp eq i64 %i.np, 0
  br i1 %.not8.i.i324, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325.preheader

.lr.ph.i.i325.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit
  %min.iters.check661 = icmp ult i64 %i.np, 8
  %8 = ptrtoaddr ptr %.sroa.0394.2 to i64
  %i.pi = sub i64 %8, %i.c
  %diff.check659 = icmp ugt i64 %i.pi, -32
  %or.cond695 = select i1 %min.iters.check661, i1 true, i1 %diff.check659
  br i1 %or.cond695, label %.lr.ph.i.i325.preheader698, label %vector.ph662

vector.ph662:                                     ; preds = %.lr.ph.i.i325.preheader
  %n.vec663 = and i64 %i.np, -8                   ; 3 uses
  %i.pj = shl i64 %n.vec663, 2                    ; 2 uses
  %i.pk = getelementptr i8, ptr %3, i64 %i.pj
  %i.pl = and i64 %i.np, 7
  %i.pm = getelementptr i8, ptr %.sroa.0394.2, i64 %i.pj
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph662
  %index665 = phi i64 [ 0, %vector.ph662 ], [ %index.next670, %vector.body664 ] ; 2 uses
  %i.pn = shl i64 %index665, 2                    ; 2 uses
  %next.gep666 = getelementptr i8, ptr %3, i64 %i.pn ; 2 uses
  %next.gep667 = getelementptr i8, ptr %.sroa.0394.2, i64 %i.pn ; 2 uses
  %i.po = getelementptr i8, ptr %next.gep667, i64 16
  %wide.load668 = load <4 x i32>, ptr %next.gep667, align 4, !tbaa !65
  %wide.load669 = load <4 x i32>, ptr %i.po, align 4, !tbaa !65
  %i.pp = getelementptr i8, ptr %next.gep666, i64 16
  store <4 x i32> %wide.load668, ptr %next.gep666, align 4, !tbaa !65
  store <4 x i32> %wide.load669, ptr %i.pp, align 4, !tbaa !65
  %index.next670 = add nuw i64 %index665, 8       ; 2 uses
  %i.pq = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.pq, label %middle.block671, label %vector.body664, !llvm.loop !507

middle.block671:                                  ; preds = %vector.body664
  %cmp.n672 = icmp eq i64 %i.np, %n.vec663
  br i1 %cmp.n672, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325.preheader698

.lr.ph.i.i325.preheader698:                       ; preds = %.lr.ph.i.i325.preheader, %middle.block671
  %.011.i.i326.ph = phi ptr [ %3, %.lr.ph.i.i325.preheader ], [ %i.pk, %middle.block671 ] ; 2 uses
  %.0610.i.i327.ph = phi i64 [ %i.np, %.lr.ph.i.i325.preheader ], [ %i.pl, %middle.block671 ] ; 4 uses
  %.079.i.i328.ph = phi ptr [ %.sroa.0394.2, %.lr.ph.i.i325.preheader ], [ %i.pm, %middle.block671 ] ; 2 uses
  %i.pr = add i64 %.0610.i.i327.ph, -1
  %xtraiter744 = and i64 %.0610.i.i327.ph, 7      ; 2 uses
  %lcmp.mod745.not = icmp eq i64 %xtraiter744, 0
  br i1 %lcmp.mod745.not, label %.lr.ph.i.i325.prol.loopexit, label %.lr.ph.i.i325.prol

.lr.ph.i.i325.prol:                               ; preds = %.lr.ph.i.i325.preheader698, %.lr.ph.i.i325.prol
  %.011.i.i326.prol = phi ptr [ %i.pv, %.lr.ph.i.i325.prol ], [ %.011.i.i326.ph, %.lr.ph.i.i325.preheader698 ] ; 2 uses
  %.0610.i.i327.prol = phi i64 [ %i.ps, %.lr.ph.i.i325.prol ], [ %.0610.i.i327.ph, %.lr.ph.i.i325.preheader698 ]
  %.079.i.i328.prol = phi ptr [ %i.pu, %.lr.ph.i.i325.prol ], [ %.079.i.i328.ph, %.lr.ph.i.i325.preheader698 ] ; 2 uses
  %prol.iter746 = phi i64 [ %prol.iter746.next, %.lr.ph.i.i325.prol ], [ 0, %.lr.ph.i.i325.preheader698 ]
  %i.ps = add i64 %.0610.i.i327.prol, -1          ; 2 uses
  %i.pt = load i32, ptr %.079.i.i328.prol, align 4, !tbaa !65
  store i32 %i.pt, ptr %.011.i.i326.prol, align 4, !tbaa !65
  %i.pu = getelementptr inbounds nuw i8, ptr %.079.i.i328.prol, i64 4 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.011.i.i326.prol, i64 4 ; 2 uses
  %prol.iter746.next = add i64 %prol.iter746, 1   ; 2 uses
  %prol.iter746.cmp.not = icmp eq i64 %prol.iter746.next, %xtraiter744
  br i1 %prol.iter746.cmp.not, label %.lr.ph.i.i325.prol.loopexit, label %.lr.ph.i.i325.prol, !llvm.loop !508

.lr.ph.i.i325.prol.loopexit:                      ; preds = %.lr.ph.i.i325.prol, %.lr.ph.i.i325.preheader698
  %.011.i.i326.unr = phi ptr [ %.011.i.i326.ph, %.lr.ph.i.i325.preheader698 ], [ %i.pv, %.lr.ph.i.i325.prol ]
  %.0610.i.i327.unr = phi i64 [ %.0610.i.i327.ph, %.lr.ph.i.i325.preheader698 ], [ %i.ps, %.lr.ph.i.i325.prol ]
  %.079.i.i328.unr = phi ptr [ %.079.i.i328.ph, %.lr.ph.i.i325.preheader698 ], [ %i.pu, %.lr.ph.i.i325.prol ]
  %i.pw = icmp ult i64 %i.pr, 7
  br i1 %i.pw, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325

.lr.ph.i.i325:                                    ; preds = %.lr.ph.i.i325.prol.loopexit, %.lr.ph.i.i325
  %.011.i.i326 = phi ptr [ %i.qv, %.lr.ph.i.i325 ], [ %.011.i.i326.unr, %.lr.ph.i.i325.prol.loopexit ] ; 9 uses
  %.0610.i.i327 = phi i64 [ %i.qs, %.lr.ph.i.i325 ], [ %.0610.i.i327.unr, %.lr.ph.i.i325.prol.loopexit ]
  %.079.i.i328 = phi ptr [ %i.qu, %.lr.ph.i.i325 ], [ %.079.i.i328.unr, %.lr.ph.i.i325.prol.loopexit ] ; 9 uses
  %i.px = load i32, ptr %.079.i.i328, align 4, !tbaa !65
  store i32 %i.px, ptr %.011.i.i326, align 4, !tbaa !65
  %i.py = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 4
  %i.pz = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 4
  %i.qa = load i32, ptr %i.py, align 4, !tbaa !65
  store i32 %i.qa, ptr %i.pz, align 4, !tbaa !65
  %i.qb = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 8
  %i.qc = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 8
  %i.qd = load i32, ptr %i.qb, align 4, !tbaa !65
  store i32 %i.qd, ptr %i.qc, align 4, !tbaa !65
  %i.qe = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 12
  %i.qf = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 12
  %i.qg = load i32, ptr %i.qe, align 4, !tbaa !65
  store i32 %i.qg, ptr %i.qf, align 4, !tbaa !65
  %i.qh = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 16
  %i.qi = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 16
  %i.qj = load i32, ptr %i.qh, align 4, !tbaa !65
  store i32 %i.qj, ptr %i.qi, align 4, !tbaa !65
  %i.qk = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 20
  %i.ql = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 20
  %i.qm = load i32, ptr %i.qk, align 4, !tbaa !65
  store i32 %i.qm, ptr %i.ql, align 4, !tbaa !65
  %i.qn = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 24
  %i.qo = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 24
  %i.qp = load i32, ptr %i.qn, align 4, !tbaa !65
  store i32 %i.qp, ptr %i.qo, align 4, !tbaa !65
  %i.qq = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 28
  %i.qr = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 28
  %i.qs = add i64 %.0610.i.i327, -8               ; 2 uses
  %i.qt = load i32, ptr %i.qq, align 4, !tbaa !65
  store i32 %i.qt, ptr %i.qr, align 4, !tbaa !65
  %i.qu = getelementptr inbounds nuw i8, ptr %.079.i.i328, i64 32
  %i.qv = getelementptr inbounds nuw i8, ptr %.011.i.i326, i64 32
  %.not.i.i329.7 = icmp eq i64 %i.qs, 0
  br i1 %.not.i.i329.7, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i325, !llvm.loop !509

bb.o:                                             ; preds = %.critedge
  %i.qw = sub nuw i64 %i.np, %i.nq                ; 4 uses
  %.not16.i332 = icmp eq ptr %3, %i.b
  br i1 %.not16.i332, label %.loopexit, label %.lr.ph.i333.preheader

.lr.ph.i333.preheader:                            ; preds = %bb.o
  %i.qx = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qw
  br label %.lr.ph.i333

.lr.ph.i333:                                      ; preds = %.lr.ph.i333.preheader, %.lr.ph.i333
  %.018.i334 = phi ptr [ %i.rb, %.lr.ph.i333 ], [ %3, %.lr.ph.i333.preheader ] ; 3 uses
  %.01517.i335 = phi ptr [ %i.rc, %.lr.ph.i333 ], [ %i.qx, %.lr.ph.i333.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i335) ]
  %i.qy = load i32, ptr %.018.i334, align 4, !tbaa !65
  store i32 %i.qy, ptr %.01517.i335, align 4, !tbaa !65
  store i32 0, ptr %.018.i334, align 4, !tbaa !65
  %i.qz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ra = add i32 %i.qz, 1
  store i32 %i.ra, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.rb = getelementptr inbounds nuw i8, ptr %.018.i334, i64 4 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %.01517.i335, i64 4
  %.not.i336 = icmp eq ptr %i.rb, %i.b
  br i1 %.not.i336, label %.loopexit, label %.lr.ph.i333, !llvm.loop !8

.loopexit:                                        ; preds = %.lr.ph.i333, %bb.o
  %.not8.i.i339 = icmp eq i64 %i.nq, 0
  br i1 %.not8.i.i339, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340.preheader

.lr.ph.i.i340.preheader:                          ; preds = %.loopexit
  %min.iters.check679 = icmp ult i64 %i.nq, 8
  %9 = ptrtoaddr ptr %.sroa.0394.2 to i64
  %i.rd = sub i64 %9, %i.c
  %diff.check677 = icmp ugt i64 %i.rd, -32
  %or.cond696 = select i1 %min.iters.check679, i1 true, i1 %diff.check677
  br i1 %or.cond696, label %.lr.ph.i.i340.preheader697, label %vector.ph680

vector.ph680:                                     ; preds = %.lr.ph.i.i340.preheader
  %n.vec681 = and i64 %i.nq, -8                   ; 3 uses
  %i.re = shl i64 %n.vec681, 2                    ; 2 uses
  %i.rf = getelementptr i8, ptr %3, i64 %i.re
  %i.rg = and i64 %i.nq, 7
  %i.rh = getelementptr i8, ptr %.sroa.0394.2, i64 %i.re ; 2 uses
  br label %vector.body682

vector.body682:                                   ; preds = %vector.body682, %vector.ph680
  %index683 = phi i64 [ 0, %vector.ph680 ], [ %index.next688, %vector.body682 ] ; 2 uses
  %i.ri = shl i64 %index683, 2                    ; 2 uses
  %next.gep684 = getelementptr i8, ptr %3, i64 %i.ri ; 2 uses
  %next.gep685 = getelementptr i8, ptr %.sroa.0394.2, i64 %i.ri ; 2 uses
  %i.rj = getelementptr i8, ptr %next.gep685, i64 16
  %wide.load686 = load <4 x i32>, ptr %next.gep685, align 4, !tbaa !65
  %wide.load687 = load <4 x i32>, ptr %i.rj, align 4, !tbaa !65
  %i.rk = getelementptr i8, ptr %next.gep684, i64 16
  store <4 x i32> %wide.load686, ptr %next.gep684, align 4, !tbaa !65
  store <4 x i32> %wide.load687, ptr %i.rk, align 4, !tbaa !65
  %index.next688 = add nuw i64 %index683, 8       ; 2 uses
  %i.rl = icmp eq i64 %index.next688, %n.vec681
  br i1 %i.rl, label %middle.block689, label %vector.body682, !llvm.loop !510

middle.block689:                                  ; preds = %vector.body682
  %cmp.n690 = icmp eq i64 %i.nq, %n.vec681
  br i1 %cmp.n690, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340.preheader697

.lr.ph.i.i340.preheader697:                       ; preds = %.lr.ph.i.i340.preheader, %middle.block689
  %.011.i.i341.ph = phi ptr [ %3, %.lr.ph.i.i340.preheader ], [ %i.rf, %middle.block689 ] ; 2 uses
  %.0610.i.i342.ph = phi i64 [ %i.nq, %.lr.ph.i.i340.preheader ], [ %i.rg, %middle.block689 ] ; 4 uses
  %.079.i.i343.ph = phi ptr [ %.sroa.0394.2, %.lr.ph.i.i340.preheader ], [ %i.rh, %middle.block689 ] ; 2 uses
  %i.rm = add i64 %.0610.i.i342.ph, -1
  %xtraiter747 = and i64 %.0610.i.i342.ph, 7      ; 2 uses
  %lcmp.mod748.not = icmp eq i64 %xtraiter747, 0
  br i1 %lcmp.mod748.not, label %.lr.ph.i.i340.prol.loopexit, label %.lr.ph.i.i340.prol

.lr.ph.i.i340.prol:                               ; preds = %.lr.ph.i.i340.preheader697, %.lr.ph.i.i340.prol
  %.011.i.i341.prol = phi ptr [ %i.rq, %.lr.ph.i.i340.prol ], [ %.011.i.i341.ph, %.lr.ph.i.i340.preheader697 ] ; 2 uses
  %.0610.i.i342.prol = phi i64 [ %i.rn, %.lr.ph.i.i340.prol ], [ %.0610.i.i342.ph, %.lr.ph.i.i340.preheader697 ]
  %.079.i.i343.prol = phi ptr [ %i.rp, %.lr.ph.i.i340.prol ], [ %.079.i.i343.ph, %.lr.ph.i.i340.preheader697 ] ; 2 uses
  %prol.iter749 = phi i64 [ %prol.iter749.next, %.lr.ph.i.i340.prol ], [ 0, %.lr.ph.i.i340.preheader697 ]
  %i.rn = add i64 %.0610.i.i342.prol, -1          ; 2 uses
  %i.ro = load i32, ptr %.079.i.i343.prol, align 4, !tbaa !65
  store i32 %i.ro, ptr %.011.i.i341.prol, align 4, !tbaa !65
  %i.rp = getelementptr inbounds nuw i8, ptr %.079.i.i343.prol, i64 4 ; 3 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.011.i.i341.prol, i64 4 ; 2 uses
  %prol.iter749.next = add i64 %prol.iter749, 1   ; 2 uses
  %prol.iter749.cmp.not = icmp eq i64 %prol.iter749.next, %xtraiter747
  br i1 %prol.iter749.cmp.not, label %.lr.ph.i.i340.prol.loopexit, label %.lr.ph.i.i340.prol, !llvm.loop !511

.lr.ph.i.i340.prol.loopexit:                      ; preds = %.lr.ph.i.i340.prol, %.lr.ph.i.i340.preheader697
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i340.preheader697 ], [ %i.rp, %.lr.ph.i.i340.prol ]
  %.011.i.i341.unr = phi ptr [ %.011.i.i341.ph, %.lr.ph.i.i340.preheader697 ], [ %i.rq, %.lr.ph.i.i340.prol ]
  %.0610.i.i342.unr = phi i64 [ %.0610.i.i342.ph, %.lr.ph.i.i340.preheader697 ], [ %i.rn, %.lr.ph.i.i340.prol ]
  %.079.i.i343.unr = phi ptr [ %.079.i.i343.ph, %.lr.ph.i.i340.preheader697 ], [ %i.rp, %.lr.ph.i.i340.prol ]
  %i.rr = icmp ult i64 %i.rm, 7
  br i1 %i.rr, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340

.lr.ph.i.i340:                                    ; preds = %.lr.ph.i.i340.prol.loopexit, %.lr.ph.i.i340
  %.011.i.i341 = phi ptr [ %i.sq, %.lr.ph.i.i340 ], [ %.011.i.i341.unr, %.lr.ph.i.i340.prol.loopexit ] ; 9 uses
  %.0610.i.i342 = phi i64 [ %i.sn, %.lr.ph.i.i340 ], [ %.0610.i.i342.unr, %.lr.ph.i.i340.prol.loopexit ]
  %.079.i.i343 = phi ptr [ %i.sp, %.lr.ph.i.i340 ], [ %.079.i.i343.unr, %.lr.ph.i.i340.prol.loopexit ] ; 9 uses
  %i.rs = load i32, ptr %.079.i.i343, align 4, !tbaa !65
  store i32 %i.rs, ptr %.011.i.i341, align 4, !tbaa !65
  %i.rt = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 4
  %i.ru = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 4
  %i.rv = load i32, ptr %i.rt, align 4, !tbaa !65
  store i32 %i.rv, ptr %i.ru, align 4, !tbaa !65
  %i.rw = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 8
  %i.rx = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 8
  %i.ry = load i32, ptr %i.rw, align 4, !tbaa !65
  store i32 %i.ry, ptr %i.rx, align 4, !tbaa !65
  %i.rz = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 12
  %i.sa = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 12
  %i.sb = load i32, ptr %i.rz, align 4, !tbaa !65
  store i32 %i.sb, ptr %i.sa, align 4, !tbaa !65
  %i.sc = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 16
  %i.sd = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 16
  %i.se = load i32, ptr %i.sc, align 4, !tbaa !65
  store i32 %i.se, ptr %i.sd, align 4, !tbaa !65
  %i.sf = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 20
  %i.sg = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 20
  %i.sh = load i32, ptr %i.sf, align 4, !tbaa !65
  store i32 %i.sh, ptr %i.sg, align 4, !tbaa !65
  %i.si = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 24
  %i.sj = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 24
  %i.sk = load i32, ptr %i.si, align 4, !tbaa !65
  store i32 %i.sk, ptr %i.sj, align 4, !tbaa !65
  %i.sl = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 28
  %i.sm = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 28
  %i.sn = add i64 %.0610.i.i342, -8               ; 2 uses
  %i.so = load i32, ptr %i.sl, align 4, !tbaa !65
  store i32 %i.so, ptr %i.sm, align 4, !tbaa !65
  %i.sp = getelementptr inbounds nuw i8, ptr %.079.i.i343, i64 32 ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %.011.i.i341, i64 32
  %.not.i.i344.7 = icmp eq i64 %i.sn, 0
  br i1 %.not.i.i344.7, label %.lr.ph.i.i348.preheader, label %.lr.ph.i.i340, !llvm.loop !512

.lr.ph.i.i348.preheader:                          ; preds = %.lr.ph.i.i340.prol.loopexit, %.lr.ph.i.i340, %middle.block689, %.loopexit
  %.0919.i.i350.ph = phi ptr [ %.sroa.0394.2, %.loopexit ], [ %i.rh, %middle.block689 ], [ %.lcssa.unr, %.lr.ph.i.i340.prol.loopexit ], [ %i.sp, %.lr.ph.i.i340 ] ; 2 uses
  %i.sr = add i64 %i.f, %4
  %xtraiter750 = and i64 %i.qw, 3                 ; 2 uses
  %lcmp.mod751.not = icmp eq i64 %xtraiter750, 0
  br i1 %lcmp.mod751.not, label %.lr.ph.i.i348.prol.loopexit, label %.lr.ph.i.i348.prol

.lr.ph.i.i348.prol:                               ; preds = %.lr.ph.i.i348.preheader, %.lr.ph.i.i348.prol
  %.020.i.i349.prol = phi i64 [ %i.sx, %.lr.ph.i.i348.prol ], [ %i.qw, %.lr.ph.i.i348.preheader ]
  %.0919.i.i350.prol = phi ptr [ %i.sv, %.lr.ph.i.i348.prol ], [ %.0919.i.i350.ph, %.lr.ph.i.i348.preheader ] ; 2 uses
  %.01618.i.i351.prol = phi ptr [ %i.sw, %.lr.ph.i.i348.prol ], [ %i.b, %.lr.ph.i.i348.preheader ] ; 3 uses
  %prol.iter752 = phi i64 [ %prol.iter752.next, %.lr.ph.i.i348.prol ], [ 0, %.lr.ph.i.i348.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i351.prol) ]
  %i.ss = load i32, ptr %.0919.i.i350.prol, align 4, !tbaa !65
  store i32 %i.ss, ptr %.01618.i.i351.prol, align 4, !tbaa !65
  %i.st = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.su = add i32 %i.st, 1
  store i32 %i.su, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.sv = getelementptr inbounds nuw i8, ptr %.0919.i.i350.prol, i64 4 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.01618.i.i351.prol, i64 4 ; 2 uses
  %i.sx = add i64 %.020.i.i349.prol, -1           ; 2 uses
  %prol.iter752.next = add i64 %prol.iter752, 1   ; 2 uses
  %prol.iter752.cmp.not = icmp eq i64 %prol.iter752.next, %xtraiter750
  br i1 %prol.iter752.cmp.not, label %.lr.ph.i.i348.prol.loopexit, label %.lr.ph.i.i348.prol, !llvm.loop !513

.lr.ph.i.i348.prol.loopexit:                      ; preds = %.lr.ph.i.i348.prol, %.lr.ph.i.i348.preheader
  %.020.i.i349.unr = phi i64 [ %i.qw, %.lr.ph.i.i348.preheader ], [ %i.sx, %.lr.ph.i.i348.prol ]
  %.0919.i.i350.unr = phi ptr [ %.0919.i.i350.ph, %.lr.ph.i.i348.preheader ], [ %i.sv, %.lr.ph.i.i348.prol ]
  %.01618.i.i351.unr = phi ptr [ %i.b, %.lr.ph.i.i348.preheader ], [ %i.sw, %.lr.ph.i.i348.prol ]
  %i.sy = sub i64 %i.i, %i.sr
  %i.sz = add i64 %i.sy, %1
  %i.ta = icmp ugt i64 %i.sz, -4
  br i1 %i.ta, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i348

.lr.ph.i.i348:                                    ; preds = %.lr.ph.i.i348.prol.loopexit, %.lr.ph.i.i348
  %.020.i.i349 = phi i64 [ %i.ts, %.lr.ph.i.i348 ], [ %.020.i.i349.unr, %.lr.ph.i.i348.prol.loopexit ]
  %.0919.i.i350 = phi ptr [ %i.tq, %.lr.ph.i.i348 ], [ %.0919.i.i350.unr, %.lr.ph.i.i348.prol.loopexit ] ; 5 uses
  %.01618.i.i351 = phi ptr [ %i.tr, %.lr.ph.i.i348 ], [ %.01618.i.i351.unr, %.lr.ph.i.i348.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i351) ]
  %i.tb = load i32, ptr %.0919.i.i350, align 4, !tbaa !65
  store i32 %i.tb, ptr %.01618.i.i351, align 4, !tbaa !65
  %i.tc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.td = add i32 %i.tc, 1
  store i32 %i.td, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.te = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 4
  %i.tf = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 4
  %i.tg = load i32, ptr %i.te, align 4, !tbaa !65
  store i32 %i.tg, ptr %i.tf, align 4, !tbaa !65
  %i.th = add i32 %i.tc, 2
  store i32 %i.th, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ti = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 8
  %i.tj = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 8
  %i.tk = load i32, ptr %i.ti, align 4, !tbaa !65
  store i32 %i.tk, ptr %i.tj, align 4, !tbaa !65
  %i.tl = add i32 %i.tc, 3
  store i32 %i.tl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.tm = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 12
  %i.tn = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 12
  %i.to = load i32, ptr %i.tm, align 4, !tbaa !65
  store i32 %i.to, ptr %i.tn, align 4, !tbaa !65
  %i.tp = add i32 %i.tc, 4
  store i32 %i.tp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.tq = getelementptr inbounds nuw i8, ptr %.0919.i.i350, i64 16
  %i.tr = getelementptr inbounds nuw i8, ptr %.01618.i.i351, i64 16
  %i.ts = add i64 %.020.i.i349, -4                ; 2 uses
  %.not.i.i352.3 = icmp eq i64 %i.ts, 0
  br i1 %.not.i.i352.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i348, !llvm.loop !18

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i218, %.lr.ph.i256, %.lr.ph.i299, %.lr.ph.i.i325.prol.loopexit, %.lr.ph.i.i325, %.lr.ph.i.i348.prol.loopexit, %.lr.ph.i.i348, %middle.block671, %.loopexit412, %bb.h, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit297, %.loopexit416, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_PKS4_EEEEvT0_mSC_SC_mT1_RT_(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds [4 x i8], ptr %0, i64 %1 ; 28 uses
  %i.b = add i64 %4, %1                           ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b ; 4 uses
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 7 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = sub i64 %i.h, %i.d                       ; 4 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 9 uses
  %i.k = add i64 %i.g, %4                         ; 4 uses
  %.not = icmp ult i64 %i.j, %i.k
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sub i64 0, %i.k
  %i.m = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.l ; 3 uses
  %.not17.i.i = icmp eq i64 %4, 0
  br i1 %.not17.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.020.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.prol ], [ %4, %.lr.ph.i.i.preheader ]
  %.0919.i.i.prol = phi ptr [ %i.q, %.lr.ph.i.i.prol ], [ %5, %.lr.ph.i.i.preheader ] ; 2 uses
  %.01618.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.prol ], [ %i.m, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i.prol) ]
  %i.n = load i32, ptr %.0919.i.i.prol, align 4, !tbaa !65
  store i32 %i.n, ptr %.01618.i.i.prol, align 4, !tbaa !65
  %i.o = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.p = add i32 %i.o, 1
  store i32 %i.p, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %.0919.i.i.prol, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01618.i.i.prol, i64 4 ; 2 uses
  %i.s = add i64 %.020.i.i.prol, -1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !524

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.020.i.i.unr = phi i64 [ %4, %.lr.ph.i.i.preheader ], [ %i.s, %.lr.ph.i.i.prol ]
  %.0919.i.i.unr = phi ptr [ %5, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %i.m, %.lr.ph.i.i.preheader ], [ %i.r, %.lr.ph.i.i.prol ]
  %i.t = icmp ult i64 %4, 4
  br i1 %i.t, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.020.i.i = phi i64 [ %i.al, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.0919.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %.0919.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.01618.i.i = phi ptr [ %i.ak, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i) ]
  %i.u = load i32, ptr %.0919.i.i, align 4, !tbaa !65
  store i32 %i.u, ptr %.01618.i.i, align 4, !tbaa !65
  %i.v = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.w = add i32 %i.v, 1
  store i32 %i.w, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 4
  %i.z = load i32, ptr %i.x, align 4, !tbaa !65
  store i32 %i.z, ptr %i.y, align 4, !tbaa !65
  %i.aa = add i32 %i.v, 2
  store i32 %i.aa, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ab = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 8
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !65
  store i32 %i.ad, ptr %i.ac, align 4, !tbaa !65
  %i.ae = add i32 %i.v, 3
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 12
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !65
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !65
  %i.ai = add i32 %i.v, 4
  store i32 %i.ai, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aj = getelementptr inbounds nuw i8, ptr %.0919.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.al = add i64 %.020.i.i, -4                   ; 2 uses
  %.not.i.i.3 = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit, label %.lr.ph.i.i, !llvm.loop !18

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not16.i = icmp eq ptr %3, %i.a
  br i1 %.not16.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.018.i = phi ptr [ %i.aq, %.lr.ph.i ], [ %3, %.lr.ph.i.preheader ] ; 3 uses
  %.01517.i = phi ptr [ %i.ar, %.lr.ph.i ], [ %i.am, %.lr.ph.i.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i) ]
  %i.an = load i32, ptr %.018.i, align 4, !tbaa !65
  store i32 %i.an, ptr %.01517.i, align 4, !tbaa !65
  store i32 0, ptr %.018.i, align 4, !tbaa !65
  %i.ao = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01517.i, i64 4
  %.not.i = icmp eq ptr %i.aq, %i.a
  br i1 %.not.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit, label %.lr.ph.i, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit: ; preds = %.lr.ph.i, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit
  %.not125 = icmp ult i64 %i.j, %i.b
  br i1 %.not125, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %.not16.i130 = icmp eq ptr %0, %3
  br i1 %.not16.i130, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131

.lr.ph.i131:                                      ; preds = %bb.c, %.lr.ph.i131
  %.018.i132 = phi ptr [ %i.av, %.lr.ph.i131 ], [ %0, %bb.c ] ; 3 uses
  %.01517.i133 = phi ptr [ %i.aw, %.lr.ph.i131 ], [ %2, %bb.c ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i133) ]
  %i.as = load i32, ptr %.018.i132, align 4, !tbaa !65
  store i32 %i.as, ptr %.01517.i133, align 4, !tbaa !65
  store i32 0, ptr %.018.i132, align 4, !tbaa !65
  %i.at = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.au = add i32 %i.at, 1
  store i32 %i.au, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %.018.i132, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01517.i133, i64 4
  %.not.i134 = icmp eq ptr %i.av, %3
  br i1 %.not.i134, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit, label %.lr.ph.i131, !llvm.loop !8

bb.d:                                             ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit
  %i.ax = sub nuw i64 %i.j, %i.k                  ; 5 uses
  %i.ay = sub i64 0, %i.ax                        ; 3 uses
  %i.az = getelementptr [4 x i8], ptr %3, i64 %i.ay ; 11 uses
  %.not17.i = icmp eq i64 %i.ax, 0
  br i1 %.not17.i, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137.preheader

.lr.ph.i137.preheader:                            ; preds = %bb.d
  %.neg = add i64 %i.k, 1
  %xtraiter446.a = and i64 %i.ax, 1
  %lcmp.mod447.not.a = icmp eq i64 %xtraiter446.a, 0
  br i1 %lcmp.mod447.not.a, label %.lr.ph.i137.prol.loopexit, label %.lr.ph.i137.prol

.lr.ph.i137.prol:                                 ; preds = %.lr.ph.i137.preheader
  %i.ba = add nsw i64 %i.ax, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !65
  store i32 %i.bb, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.az, align 4, !tbaa !65
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i137.prol.loopexit

.lr.ph.i137.prol.loopexit:                        ; preds = %.lr.ph.i137.prol, %.lr.ph.i137.preheader
  %.020.i.unr = phi i64 [ %i.ax, %.lr.ph.i137.preheader ], [ %i.ba, %.lr.ph.i137.prol ]
  %.0819.i.unr = phi ptr [ %i.az, %.lr.ph.i137.preheader ], [ %i.be, %.lr.ph.i137.prol ]
  %.01618.i.unr = phi ptr [ %i.a, %.lr.ph.i137.preheader ], [ %i.bf, %.lr.ph.i137.prol ]
  %i.bg = icmp eq i64 %i.j, %.neg
  br i1 %i.bg, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137
  %.020.i = phi i64 [ %i.bm, %.lr.ph.i137 ], [ %.020.i.unr, %.lr.ph.i137.prol.loopexit ]
  %.0819.i = phi ptr [ %i.bq, %.lr.ph.i137 ], [ %.0819.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  %.01618.i = phi ptr [ %i.br, %.lr.ph.i137 ], [ %.01618.i.unr, %.lr.ph.i137.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i) ]
  %i.bh = load i32, ptr %.0819.i, align 4, !tbaa !65
  store i32 %i.bh, ptr %.01618.i, align 4, !tbaa !65
  store i32 0, ptr %.0819.i, align 4, !tbaa !65
  %i.bi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bj = add i32 %i.bi, 1
  store i32 %i.bj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bk = getelementptr inbounds nuw i8, ptr %.0819.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01618.i, i64 4
  %i.bm = add i64 %.020.i, -2                     ; 2 uses
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !65
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !65
  store i32 0, ptr %i.bk, align 4, !tbaa !65
  %i.bo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.bq = getelementptr inbounds nuw i8, ptr %.0819.i, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.01618.i, i64 8
  %.not.i138.1 = icmp eq i64 %i.bm, 0
  br i1 %.not.i138.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit, label %.lr.ph.i137, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit: ; preds = %.lr.ph.i137.prol.loopexit, %.lr.ph.i137, %bb.d
  %.not.i139 = icmp eq ptr %i.az, %i.a
  %.not8.i.i = icmp eq ptr %0, %i.az
  %or.cond = or i1 %.not.i139, %.not8.i.i
  br i1 %or.cond, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader

.lr.ph.i.i140.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %i.bs = shl i64 %i.ay, 2
  %i.bt = ptrtoaddr ptr %0 to i64                 ; 2 uses
  %i.bu = add i64 %i.bs, %i.e
  %i.bv = add i64 %i.bu, -4
  %i.bw = sub i64 %i.bv, %i.bt                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bw, 140
  br i1 %min.iters.check, label %.lr.ph.i.i140.preheader441, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i140.preheader
  %i.bz = shl nsw i64 %1, 2
  %i.ca = shl i64 %i.ay, 2                        ; 2 uses
  %i.cb = add i64 %i.ca, %i.e
  %i.cc = add i64 %i.cb, -4
  %i.cd = sub i64 %i.cc, %i.bt
  %i.ce = and i64 %i.cd, -4                       ; 2 uses
  %i.cf = add i64 %i.bz, -4
  %i.cg = sub i64 %i.cf, %i.ce
  %i.ch = getelementptr i8, ptr %0, i64 %i.cg
  %i.ci = add i64 %i.ca, -4
  %i.cj = sub i64 %i.ci, %i.ce
  %i.ck = getelementptr i8, ptr %3, i64 %i.cj
  %bound0 = icmp ult ptr %i.ch, %i.az
  %bound1 = icmp ult ptr %i.ck, %i.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i140.preheader441, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.by, 9223372036854775800     ; 3 uses
  %i.cl = mul i64 %n.vec, -4                      ; 2 uses
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.az, i64 %i.cl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.co = mul i64 %index, -4                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %i.co ; 2 uses
  %next.gep319 = getelementptr i8, ptr %i.az, i64 %i.co ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %next.gep319, i64 -16 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %next.gep319, i64 -32 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.cp, align 4, !tbaa !65, !alias.scope !553
  %wide.load320 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !65, !alias.scope !553
  %i.cr = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.cs = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <4 x i32> %wide.load, ptr %i.cr, align 4, !tbaa !65, !alias.scope !554, !noalias !553
  store <4 x i32> %wide.load320, ptr %i.cs, align 4, !tbaa !65, !alias.scope !554, !noalias !553
  store <4 x i32> zeroinitializer, ptr %i.cp, align 4, !tbaa !65, !alias.scope !553
  store <4 x i32> zeroinitializer, ptr %i.cq, align 4, !tbaa !65, !alias.scope !553
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140.preheader441

.lr.ph.i.i140.preheader441:                       ; preds = %vector.memcheck, %.lr.ph.i.i140.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i140.preheader ], [ %i.cm, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.az, %vector.memcheck ], [ %i.az, %.lr.ph.i.i140.preheader ], [ %i.cn, %middle.block ]
  br label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %.lr.ph.i.i140.preheader441, %.lr.ph.i.i140
  %.010.i.i = phi ptr [ %i.cv, %.lr.ph.i.i140 ], [ %.010.i.i.ph, %.lr.ph.i.i140.preheader441 ]
  %.079.i.i = phi ptr [ %i.cu, %.lr.ph.i.i140 ], [ %.079.i.i.ph, %.lr.ph.i.i140.preheader441 ]
  %i.cu = getelementptr inbounds i8, ptr %.079.i.i, i64 -4 ; 4 uses
  %i.cv = getelementptr inbounds i8, ptr %.010.i.i, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !65
  store i32 %i.cw, ptr %i.cv, align 4, !tbaa !65
  store i32 0, ptr %i.cu, align 4, !tbaa !65
  %.not.i.i141 = icmp eq ptr %0, %i.cu
  br i1 %.not.i.i141, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i140, !llvm.loop !529

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i140, %middle.block, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit
  %.not3.i = icmp eq ptr %0, %2
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142

.lr.ph.i142:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i142
  %storemerge4.i = phi ptr [ %i.cz, %.lr.ph.i142 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !65
  %i.cx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cy = add i32 %i.cx, -1
  store i32 %i.cy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i143 = icmp eq ptr %i.cz, %2
  br i1 %.not.i143, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i142, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i131, %bb.c
  %.not.i146 = icmp eq i64 %1, 0
  br i1 %.not.i146, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter443 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod444.not = icmp eq i64 %xtraiter443, 0
  br i1 %lcmp.mod444.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.da = phi i64 [ %i.db, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i147.prol = phi ptr [ %i.de, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter445 = phi i64 [ %prol.iter445.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.db = add i64 %i.da, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i147.prol, align 4, !tbaa !65
  %i.dc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dd = add i32 %i.dc, -1
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i147.prol, i64 4 ; 2 uses
  %prol.iter445.next = add i64 %prol.iter445, 1   ; 2 uses
  %prol.iter445.cmp.not = icmp eq i64 %prol.iter445.next, %xtraiter443
  br i1 %prol.iter445.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !530

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.db, %.preheader.prol ]
  %.0.i147.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.de, %.preheader.prol ]
  %i.df = icmp ult i64 %1, 4
  br i1 %i.df, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.dg = phi i64 [ %i.do, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i147 = phi ptr [ %i.dq, %.preheader ], [ %.0.i147.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i147, align 4, !tbaa !65
  %i.dh = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.di = add i32 %i.dh, -1
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i147, i64 4
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !65
  %i.dk = add i32 %i.dh, -2
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i147, i64 8
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !65
  %i.dm = add i32 %i.dh, -3
  store i32 %i.dm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i147, i64 12
  %i.do = add i64 %i.dg, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dn, align 4, !tbaa !65
  %i.dp = add i32 %i.dh, -4
  store i32 %i.dp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i147, i64 16
  %.not3.i148.3 = icmp eq i64 %i.do, 0
  br i1 %.not3.i148.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.preheader, !llvm.loop !17

bb.e:                                             ; preds = %bb.a
  %i.dr = icmp ugt i64 %i.j, %i.g
  br i1 %i.dr, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not16.i158 = icmp eq ptr %3, %i.a
  br i1 %.not16.i158, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159.preheader

.lr.ph.i159.preheader:                            ; preds = %bb.f
  %i.ds = sub nsw i64 0, %i.g
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ds
  br label %.lr.ph.i159

.lr.ph.i159:                                      ; preds = %.lr.ph.i159.preheader, %.lr.ph.i159
  %.018.i160 = phi ptr [ %i.dx, %.lr.ph.i159 ], [ %3, %.lr.ph.i159.preheader ] ; 3 uses
  %.01517.i161 = phi ptr [ %i.dy, %.lr.ph.i159 ], [ %i.dt, %.lr.ph.i159.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i161) ]
  %i.du = load i32, ptr %.018.i160, align 4, !tbaa !65
  store i32 %i.du, ptr %.01517.i161, align 4, !tbaa !65
  store i32 0, ptr %.018.i160, align 4, !tbaa !65
  %i.dv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dw = add i32 %i.dv, 1
  store i32 %i.dw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.dx = getelementptr inbounds nuw i8, ptr %.018.i160, i64 4 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.01517.i161, i64 4
  %.not.i162 = icmp eq ptr %i.dx, %i.a
  br i1 %.not.i162, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164, label %.lr.ph.i159, !llvm.loop !8

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164: ; preds = %.lr.ph.i159, %bb.f
  %i.dz = sub nuw nsw i64 %i.j, %i.g              ; 4 uses
  %i.ea = sub i64 %4, %i.dz                       ; 10 uses
  %i.eb = sub i64 0, %i.ea
  %i.ec = getelementptr [4 x i8], ptr %i.a, i64 %i.eb ; 11 uses
  %.not8.i.i165 = icmp eq i64 %i.ea, 0
  br i1 %.not8.i.i165, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166.preheader

.lr.ph.i.i166.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %min.iters.check390 = icmp ult i64 %i.ea, 20
  br i1 %min.iters.check390, label %.lr.ph.i.i166.preheader432, label %vector.memcheck387

vector.memcheck387:                               ; preds = %.lr.ph.i.i166.preheader
  %7 = ptrtoaddr ptr %0 to i64
  %8 = ptrtoaddr ptr %5 to i64
  %i.ed = sub i64 %1, %i.ea
  %i.ee = shl i64 %i.ed, 2
  %i.ef = add i64 %i.ee, %7
  %i.eg = sub i64 %8, %i.ef
  %diff.check388 = icmp ugt i64 %i.eg, -32
  br i1 %diff.check388, label %.lr.ph.i.i166.preheader432, label %vector.ph391

vector.ph391:                                     ; preds = %vector.memcheck387
  %n.vec392 = and i64 %i.ea, -8                   ; 3 uses
  %i.eh = shl i64 %n.vec392, 2                    ; 2 uses
  %i.ei = getelementptr i8, ptr %i.ec, i64 %i.eh
  %i.ej = and i64 %i.ea, 7
  %i.ek = getelementptr i8, ptr %5, i64 %i.eh     ; 2 uses
  br label %vector.body393

vector.body393:                                   ; preds = %vector.body393, %vector.ph391
  %index394 = phi i64 [ 0, %vector.ph391 ], [ %index.next399, %vector.body393 ] ; 2 uses
  %i.el = shl i64 %index394, 2                    ; 2 uses
  %next.gep395 = getelementptr i8, ptr %i.ec, i64 %i.el ; 2 uses
  %next.gep396 = getelementptr i8, ptr %5, i64 %i.el ; 2 uses
  %i.em = getelementptr i8, ptr %next.gep396, i64 16
  %wide.load397 = load <4 x i32>, ptr %next.gep396, align 4, !tbaa !65
  %wide.load398 = load <4 x i32>, ptr %i.em, align 4, !tbaa !65
  %i.en = getelementptr i8, ptr %next.gep395, i64 16
  store <4 x i32> %wide.load397, ptr %next.gep395, align 4, !tbaa !65
  store <4 x i32> %wide.load398, ptr %i.en, align 4, !tbaa !65
  %index.next399 = add nuw i64 %index394, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.eo, label %middle.block400, label %vector.body393, !llvm.loop !531

middle.block400:                                  ; preds = %vector.body393
  %cmp.n401 = icmp eq i64 %i.ea, %n.vec392
  br i1 %cmp.n401, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166.preheader432

.lr.ph.i.i166.preheader432:                       ; preds = %vector.memcheck387, %.lr.ph.i.i166.preheader, %middle.block400
  %.011.i.i.ph = phi ptr [ %i.ec, %vector.memcheck387 ], [ %i.ec, %.lr.ph.i.i166.preheader ], [ %i.ei, %middle.block400 ] ; 2 uses
  %.0610.i.i.ph = phi i64 [ %i.ea, %vector.memcheck387 ], [ %i.ea, %.lr.ph.i.i166.preheader ], [ %i.ej, %middle.block400 ] ; 4 uses
  %.079.i.i167.ph = phi ptr [ %5, %vector.memcheck387 ], [ %5, %.lr.ph.i.i166.preheader ], [ %i.ek, %middle.block400 ] ; 2 uses
  %i.ep = add i64 %.0610.i.i.ph, -1
  %xtraiter455.a = and i64 %.0610.i.i.ph, 7       ; 2 uses
  %lcmp.mod456.not.a = icmp eq i64 %xtraiter455.a, 0
  br i1 %lcmp.mod456.not.a, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol

.lr.ph.i.i166.prol:                               ; preds = %.lr.ph.i.i166.preheader432, %.lr.ph.i.i166.prol
  %.011.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i166.prol ], [ %.011.i.i.ph, %.lr.ph.i.i166.preheader432 ] ; 2 uses
  %.0610.i.i.prol = phi i64 [ %i.eq, %.lr.ph.i.i166.prol ], [ %.0610.i.i.ph, %.lr.ph.i.i166.preheader432 ]
  %.079.i.i167.prol = phi ptr [ %i.es, %.lr.ph.i.i166.prol ], [ %.079.i.i167.ph, %.lr.ph.i.i166.preheader432 ] ; 2 uses
  %prol.iter457.a = phi i64 [ %prol.iter457.next.a, %.lr.ph.i.i166.prol ], [ 0, %.lr.ph.i.i166.preheader432 ]
  %i.eq = add i64 %.0610.i.i.prol, -1             ; 2 uses
  %i.er = load i32, ptr %.079.i.i167.prol, align 4, !tbaa !65
  store i32 %i.er, ptr %.011.i.i.prol, align 4, !tbaa !65
  %i.es = getelementptr inbounds nuw i8, ptr %.079.i.i167.prol, i64 4 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.011.i.i.prol, i64 4 ; 2 uses
  %prol.iter457.next.a = add i64 %prol.iter457.a, 1 ; 2 uses
  %prol.iter457.cmp.not.a = icmp eq i64 %prol.iter457.next.a, %xtraiter455.a
  br i1 %prol.iter457.cmp.not.a, label %.lr.ph.i.i166.prol.loopexit, label %.lr.ph.i.i166.prol, !llvm.loop !532

.lr.ph.i.i166.prol.loopexit:                      ; preds = %.lr.ph.i.i166.prol, %.lr.ph.i.i166.preheader432
  %.lcssa433.unr = phi ptr [ poison, %.lr.ph.i.i166.preheader432 ], [ %i.es, %.lr.ph.i.i166.prol ]
  %.011.i.i.unr = phi ptr [ %.011.i.i.ph, %.lr.ph.i.i166.preheader432 ], [ %i.et, %.lr.ph.i.i166.prol ]
  %.0610.i.i.unr = phi i64 [ %.0610.i.i.ph, %.lr.ph.i.i166.preheader432 ], [ %i.eq, %.lr.ph.i.i166.prol ]
  %.079.i.i167.unr = phi ptr [ %.079.i.i167.ph, %.lr.ph.i.i166.preheader432 ], [ %i.es, %.lr.ph.i.i166.prol ]
  %i.eu = icmp ult i64 %i.ep, 7
  br i1 %i.eu, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166

.lr.ph.i.i166:                                    ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166
  %.011.i.i = phi ptr [ %i.ft, %.lr.ph.i.i166 ], [ %.011.i.i.unr, %.lr.ph.i.i166.prol.loopexit ] ; 9 uses
  %.0610.i.i = phi i64 [ %i.fq, %.lr.ph.i.i166 ], [ %.0610.i.i.unr, %.lr.ph.i.i166.prol.loopexit ]
  %.079.i.i167 = phi ptr [ %i.fs, %.lr.ph.i.i166 ], [ %.079.i.i167.unr, %.lr.ph.i.i166.prol.loopexit ] ; 9 uses
  %i.ev = load i32, ptr %.079.i.i167, align 4, !tbaa !65
  store i32 %i.ev, ptr %.011.i.i, align 4, !tbaa !65
  %i.ew = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 4
  %i.ex = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 4
  %i.ey = load i32, ptr %i.ew, align 4, !tbaa !65
  store i32 %i.ey, ptr %i.ex, align 4, !tbaa !65
  %i.ez = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !65
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !65
  %i.fc = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 12
  %i.fd = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 12
  %i.fe = load i32, ptr %i.fc, align 4, !tbaa !65
  store i32 %i.fe, ptr %i.fd, align 4, !tbaa !65
  %i.ff = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.fh = load i32, ptr %i.ff, align 4, !tbaa !65
  store i32 %i.fh, ptr %i.fg, align 4, !tbaa !65
  %i.fi = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 20
  %i.fj = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 20
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !65
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !65
  %i.fl = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24
  %i.fn = load i32, ptr %i.fl, align 4, !tbaa !65
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !65
  %i.fo = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 28
  %i.fp = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 28
  %i.fq = add i64 %.0610.i.i, -8                  ; 2 uses
  %i.fr = load i32, ptr %i.fo, align 4, !tbaa !65
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !65
  %i.fs = getelementptr inbounds nuw i8, ptr %.079.i.i167, i64 32 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 32
  %.not.i.i168.7 = icmp eq i64 %i.fq, 0
  br i1 %.not.i.i168.7, label %.lr.ph.i.i170.preheader, label %.lr.ph.i.i166, !llvm.loop !533

.lr.ph.i.i170.preheader:                          ; preds = %.lr.ph.i.i166.prol.loopexit, %.lr.ph.i.i166, %middle.block400, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164
  %.0919.i.i172.ph = phi ptr [ %5, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit164 ], [ %i.ek, %middle.block400 ], [ %.lcssa433.unr, %.lr.ph.i.i166.prol.loopexit ], [ %i.fs, %.lr.ph.i.i166 ] ; 2 uses
  %xtraiter458 = and i64 %i.dz, 3                 ; 2 uses
  %lcmp.mod459.not = icmp eq i64 %xtraiter458, 0
  br i1 %lcmp.mod459.not, label %.lr.ph.i.i170.prol.loopexit, label %.lr.ph.i.i170.prol

.lr.ph.i.i170.prol:                               ; preds = %.lr.ph.i.i170.preheader, %.lr.ph.i.i170.prol
  %.020.i.i171.prol = phi i64 [ %i.fz, %.lr.ph.i.i170.prol ], [ %i.dz, %.lr.ph.i.i170.preheader ]
  %.0919.i.i172.prol = phi ptr [ %i.fx, %.lr.ph.i.i170.prol ], [ %.0919.i.i172.ph, %.lr.ph.i.i170.preheader ] ; 2 uses
  %.01618.i.i173.prol = phi ptr [ %i.fy, %.lr.ph.i.i170.prol ], [ %i.a, %.lr.ph.i.i170.preheader ] ; 3 uses
  %prol.iter460 = phi i64 [ %prol.iter460.next, %.lr.ph.i.i170.prol ], [ 0, %.lr.ph.i.i170.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i173.prol) ]
  %i.fu = load i32, ptr %.0919.i.i172.prol, align 4, !tbaa !65
  store i32 %i.fu, ptr %.01618.i.i173.prol, align 4, !tbaa !65
  %i.fv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.fx = getelementptr inbounds nuw i8, ptr %.0919.i.i172.prol, i64 4 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.01618.i.i173.prol, i64 4 ; 2 uses
  %i.fz = add i64 %.020.i.i171.prol, -1           ; 2 uses
  %prol.iter460.next = add i64 %prol.iter460, 1   ; 2 uses
  %prol.iter460.cmp.not = icmp eq i64 %prol.iter460.next, %xtraiter458
  br i1 %prol.iter460.cmp.not, label %.lr.ph.i.i170.prol.loopexit, label %.lr.ph.i.i170.prol, !llvm.loop !534

.lr.ph.i.i170.prol.loopexit:                      ; preds = %.lr.ph.i.i170.prol, %.lr.ph.i.i170.preheader
  %.020.i.i171.unr = phi i64 [ %i.dz, %.lr.ph.i.i170.preheader ], [ %i.fz, %.lr.ph.i.i170.prol ]
  %.0919.i.i172.unr = phi ptr [ %.0919.i.i172.ph, %.lr.ph.i.i170.preheader ], [ %i.fx, %.lr.ph.i.i170.prol ]
  %.01618.i.i173.unr = phi ptr [ %i.a, %.lr.ph.i.i170.preheader ], [ %i.fy, %.lr.ph.i.i170.prol ]
  %i.ga = sub nsw i64 %i.g, %i.j
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170

.lr.ph.i.i170:                                    ; preds = %.lr.ph.i.i170.prol.loopexit, %.lr.ph.i.i170
  %.020.i.i171 = phi i64 [ %i.gt, %.lr.ph.i.i170 ], [ %.020.i.i171.unr, %.lr.ph.i.i170.prol.loopexit ]
  %.0919.i.i172 = phi ptr [ %i.gr, %.lr.ph.i.i170 ], [ %.0919.i.i172.unr, %.lr.ph.i.i170.prol.loopexit ] ; 5 uses
  %.01618.i.i173 = phi ptr [ %i.gs, %.lr.ph.i.i170 ], [ %.01618.i.i173.unr, %.lr.ph.i.i170.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i.i173) ]
  %i.gc = load i32, ptr %.0919.i.i172, align 4, !tbaa !65
  store i32 %i.gc, ptr %.01618.i.i173, align 4, !tbaa !65
  %i.gd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66 ; 4 uses
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gf = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 4
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !65
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !65
  %i.gi = add i32 %i.gd, 2
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gj = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 8
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !65
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !65
  %i.gm = add i32 %i.gd, 3
  store i32 %i.gm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gn = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 12
  %i.go = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 12
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !65
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !65
  %i.gq = add i32 %i.gd, 4
  store i32 %i.gq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.gr = getelementptr inbounds nuw i8, ptr %.0919.i.i172, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.01618.i.i173, i64 16
  %i.gt = add i64 %.020.i.i171, -4                ; 2 uses
  %.not.i.i174.3 = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i174.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, label %.lr.ph.i.i170, !llvm.loop !18

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176: ; preds = %.lr.ph.i.i170, %.lr.ph.i.i170.prol.loopexit
  %.not.i177 = icmp eq ptr %3, %i.ec
  br i1 %.not.i177, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176
  %.not8.i.i178 = icmp eq ptr %0, %3
  br i1 %.not8.i.i178, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader

.lr.ph.i.i179.preheader:                          ; preds = %bb.g
  %9 = ptrtoaddr ptr %0 to i64
  %i.gu = add i64 %i.e, -4
  %i.gv = sub i64 %i.gu, %9                       ; 3 uses
  %i.gw = lshr i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check411 = icmp ult i64 %i.gv, 124
  br i1 %min.iters.check411, label %.lr.ph.i.i179.preheader431, label %vector.memcheck412

vector.memcheck412:                               ; preds = %.lr.ph.i.i179.preheader
  %i.gy = and i64 %i.gv, -4                       ; 2 uses
  %i.gz = sub i64 %1, %i.ea
  %i.ha = shl i64 %i.gz, 2
  %i.hb = add i64 %i.ha, -4
  %i.hc = sub i64 %i.hb, %i.gy
  %i.hd = getelementptr i8, ptr %0, i64 %i.hc
  %i.he = sub nuw nsw i64 -4, %i.gy
  %i.hf = getelementptr i8, ptr %3, i64 %i.he
  %bound0413 = icmp ult ptr %i.hd, %3
  %bound1414 = icmp ult ptr %i.hf, %i.ec
  %found.conflict415 = and i1 %bound0413, %bound1414
  br i1 %found.conflict415, label %.lr.ph.i.i179.preheader431, label %vector.ph416

vector.ph416:                                     ; preds = %vector.memcheck412
  %n.vec417 = and i64 %i.gx, 9223372036854775800  ; 3 uses
  %i.hg = mul i64 %n.vec417, -4                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.ec, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %3, i64 %i.hg
  br label %vector.body418

vector.body418:                                   ; preds = %vector.body418, %vector.ph416
  %index419 = phi i64 [ 0, %vector.ph416 ], [ %index.next424, %vector.body418 ] ; 2 uses
  %i.hj = mul i64 %index419, -4                   ; 2 uses
  %next.gep420 = getelementptr i8, ptr %i.ec, i64 %i.hj ; 2 uses
  %next.gep421 = getelementptr i8, ptr %3, i64 %i.hj ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %next.gep421, i64 -16 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep421, i64 -32 ; 2 uses
  %wide.load422 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !65, !alias.scope !555
  %wide.load423 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !65, !alias.scope !555
  %i.hm = getelementptr inbounds i8, ptr %next.gep420, i64 -16
  %i.hn = getelementptr inbounds i8, ptr %next.gep420, i64 -32
  store <4 x i32> %wide.load422, ptr %i.hm, align 4, !tbaa !65, !alias.scope !556, !noalias !555
  store <4 x i32> %wide.load423, ptr %i.hn, align 4, !tbaa !65, !alias.scope !556, !noalias !555
  store <4 x i32> zeroinitializer, ptr %i.hk, align 4, !tbaa !65, !alias.scope !555
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !65, !alias.scope !555
  %index.next424 = add nuw i64 %index419, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next424, %n.vec417
  br i1 %i.ho, label %middle.block425, label %vector.body418, !llvm.loop !538

middle.block425:                                  ; preds = %vector.body418
  %cmp.n426 = icmp eq i64 %i.gx, %n.vec417
  br i1 %cmp.n426, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179.preheader431

.lr.ph.i.i179.preheader431:                       ; preds = %vector.memcheck412, %.lr.ph.i.i179.preheader, %middle.block425
  %.010.i.i180.ph = phi ptr [ %i.ec, %vector.memcheck412 ], [ %i.ec, %.lr.ph.i.i179.preheader ], [ %i.hh, %middle.block425 ]
  %.079.i.i181.ph = phi ptr [ %3, %vector.memcheck412 ], [ %3, %.lr.ph.i.i179.preheader ], [ %i.hi, %middle.block425 ]
  br label %.lr.ph.i.i179

.lr.ph.i.i179:                                    ; preds = %.lr.ph.i.i179.preheader431, %.lr.ph.i.i179
  %.010.i.i180 = phi ptr [ %i.hq, %.lr.ph.i.i179 ], [ %.010.i.i180.ph, %.lr.ph.i.i179.preheader431 ]
  %.079.i.i181 = phi ptr [ %i.hp, %.lr.ph.i.i179 ], [ %.079.i.i181.ph, %.lr.ph.i.i179.preheader431 ]
  %i.hp = getelementptr inbounds i8, ptr %.079.i.i181, i64 -4 ; 4 uses
  %i.hq = getelementptr inbounds i8, ptr %.010.i.i180, i64 -4 ; 3 uses
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !65
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !65
  store i32 0, ptr %i.hp, align 4, !tbaa !65
  %.not.i.i182 = icmp eq ptr %0, %i.hp
  br i1 %.not.i.i182, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, label %.lr.ph.i.i179, !llvm.loop !539

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183: ; preds = %.lr.ph.i.i179, %middle.block425, %bb.g
  %i.hs = phi ptr [ %i.ec, %bb.g ], [ %i.hh, %middle.block425 ], [ %i.hq, %.lr.ph.i.i179 ] ; 2 uses
  %.not3.i184 = icmp eq ptr %0, %i.hs
  br i1 %.not3.i184, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i185

.lr.ph.i185:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, %.lr.ph.i185
  %storemerge4.i186 = phi ptr [ %i.hv, %.lr.ph.i185 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i186, align 4, !tbaa !65
  %i.ht = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hu = add i32 %i.ht, -1
  store i32 %i.hu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.hv = getelementptr inbounds nuw i8, ptr %storemerge4.i186, i64 4 ; 2 uses
  %.not.i187 = icmp eq ptr %i.hv, %i.hs
  br i1 %.not.i187, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i185, !llvm.loop !16

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.i
  %i.hw = getelementptr i8, ptr %i.a, i64 %.idx   ; 10 uses
  %.not17.i197 = icmp eq ptr %i.c, %i.a
  br i1 %.not17.i197, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i198.preheader

.lr.ph.i198.preheader:                            ; preds = %bb.h
  %i.hx = and i64 %i.i, 4
  %lcmp.mod450.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod450.not, label %.lr.ph.i198.prol.loopexit, label %.lr.ph.i198.prol

.lr.ph.i198.prol:                                 ; preds = %.lr.ph.i198.preheader
  %i.hy = add nsw i64 %i.j, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.hz = load i32, ptr %i.hw, align 4, !tbaa !65
  store i32 %i.hz, ptr %i.a, align 4, !tbaa !65
  store i32 0, ptr %i.hw, align 4, !tbaa !65
  %i.ia = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.lr.ph.i198.prol.loopexit

.lr.ph.i198.prol.loopexit:                        ; preds = %.lr.ph.i198.prol, %.lr.ph.i198.preheader
  %.020.i199.unr = phi i64 [ %i.j, %.lr.ph.i198.preheader ], [ %i.hy, %.lr.ph.i198.prol ]
  %.0819.i200.unr = phi ptr [ %i.hw, %.lr.ph.i198.preheader ], [ %i.ic, %.lr.ph.i198.prol ]
  %.01618.i201.unr = phi ptr [ %i.a, %.lr.ph.i198.preheader ], [ %i.id, %.lr.ph.i198.prol ]
  %i.ie = icmp eq i64 %i.i, 4
  br i1 %i.ie, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198.prol.loopexit, %.lr.ph.i198
  %.020.i199 = phi i64 [ %i.ik, %.lr.ph.i198 ], [ %.020.i199.unr, %.lr.ph.i198.prol.loopexit ]
  %.0819.i200 = phi ptr [ %i.io, %.lr.ph.i198 ], [ %.0819.i200.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  %.01618.i201 = phi ptr [ %i.ip, %.lr.ph.i198 ], [ %.01618.i201.unr, %.lr.ph.i198.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i201) ]
  %i.if = load i32, ptr %.0819.i200, align 4, !tbaa !65
  store i32 %i.if, ptr %.01618.i201, align 4, !tbaa !65
  store i32 0, ptr %.0819.i200, align 4, !tbaa !65
  %i.ig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.ii = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 4 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 4
  %i.ik = add i64 %.020.i199, -2                  ; 2 uses
  %i.il = load i32, ptr %i.ii, align 4, !tbaa !65
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !65
  store i32 0, ptr %i.ii, align 4, !tbaa !65
  %i.im = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.io = getelementptr inbounds nuw i8, ptr %.0819.i200, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.01618.i201, i64 8
  %.not.i202.1 = icmp eq i64 %i.ik, 0
  br i1 %.not.i202.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204, label %.lr.ph.i198, !llvm.loop !9

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204: ; preds = %.lr.ph.i198, %.lr.ph.i198.prol.loopexit
  %.not8.i.i206 = icmp eq ptr %3, %i.hw
  br i1 %.not8.i.i206, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader

.lr.ph.i.i207.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.iq = shl nsw i64 %1, 2
  %i.ir = ptrtoaddr ptr %0 to i64                 ; 3 uses
  %i.is = shl i64 %i.ir, 1
  %i.it = ptrtoaddr ptr %2 to i64                 ; 3 uses
  %i.iu = shl i64 %4, 2
  %i.iv = add i64 %i.iq, %i.is
  %i.iw = add i64 %i.iv, -4
  %i.ix = add i64 %i.e, %i.it
  %i.iy = add i64 %i.ix, %i.iu
  %i.iz = sub i64 %i.iw, %i.iy                    ; 2 uses
  %i.ja = lshr i64 %i.iz, 2
  %i.jb = add nuw nsw i64 %i.ja, 1                ; 2 uses
  %min.iters.check328 = icmp ult i64 %i.iz, 188
  br i1 %min.iters.check328, label %.lr.ph.i.i207.preheader438, label %vector.memcheck329

vector.memcheck329:                               ; preds = %.lr.ph.i.i207.preheader
  %i.jc = shl nsw i64 %1, 2                       ; 3 uses
  %i.jd = shl i64 %i.ir, 1
  %i.je = shl i64 %4, 2                           ; 2 uses
  %i.jf = add i64 %i.jc, %i.jd
  %i.jg = add i64 %i.jf, -4
  %i.jh = add i64 %i.e, %i.it
  %i.ji = add i64 %i.jh, %i.je
  %i.jj = sub i64 %i.jg, %i.ji
  %i.jk = and i64 %i.jj, -4                       ; 2 uses
  %i.jl = add i64 %i.jc, -4
  %i.jm = sub i64 %i.jl, %i.jk
  %i.jn = getelementptr i8, ptr %0, i64 %i.jm
  %i.jo = add i64 %i.jc, %i.ir
  %i.jp = add i64 %i.jo, -4
  %i.jq = add i64 %i.je, %i.it
  %i.jr = add i64 %i.jq, %i.jk
  %i.js = sub i64 %i.jp, %i.jr
  %i.jt = getelementptr i8, ptr %0, i64 %i.js
  %bound0330 = icmp ult ptr %i.jn, %i.hw
  %bound1331 = icmp ult ptr %i.jt, %i.a
  %found.conflict332 = and i1 %bound0330, %bound1331
  br i1 %found.conflict332, label %.lr.ph.i.i207.preheader438, label %vector.ph333

vector.ph333:                                     ; preds = %vector.memcheck329
  %n.vec334 = and i64 %i.jb, 9223372036854775800  ; 3 uses
  %i.ju = mul i64 %n.vec334, -4                   ; 2 uses
  %i.jv = getelementptr i8, ptr %i.a, i64 %i.ju   ; 2 uses
  %i.jw = getelementptr i8, ptr %i.hw, i64 %i.ju
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next341, %vector.body335 ] ; 2 uses
  %i.jx = mul i64 %index336, -4                   ; 2 uses
  %next.gep337 = getelementptr i8, ptr %i.a, i64 %i.jx ; 2 uses
  %next.gep338 = getelementptr i8, ptr %i.hw, i64 %i.jx ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %next.gep338, i64 -16 ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %next.gep338, i64 -32 ; 2 uses
  %wide.load339 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !65, !alias.scope !557
  %wide.load340 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !65, !alias.scope !557
  %i.ka = getelementptr inbounds i8, ptr %next.gep337, i64 -16
  %i.kb = getelementptr inbounds i8, ptr %next.gep337, i64 -32
  store <4 x i32> %wide.load339, ptr %i.ka, align 4, !tbaa !65, !alias.scope !558, !noalias !557
  store <4 x i32> %wide.load340, ptr %i.kb, align 4, !tbaa !65, !alias.scope !558, !noalias !557
  store <4 x i32> zeroinitializer, ptr %i.jy, align 4, !tbaa !65, !alias.scope !557
  store <4 x i32> zeroinitializer, ptr %i.jz, align 4, !tbaa !65, !alias.scope !557
  %index.next341 = add nuw i64 %index336, 8       ; 2 uses
  %i.kc = icmp eq i64 %index.next341, %n.vec334
  br i1 %i.kc, label %middle.block342, label %vector.body335, !llvm.loop !543

middle.block342:                                  ; preds = %vector.body335
  %cmp.n343 = icmp eq i64 %i.jb, %n.vec334
  br i1 %cmp.n343, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207.preheader438

.lr.ph.i.i207.preheader438:                       ; preds = %vector.memcheck329, %.lr.ph.i.i207.preheader, %middle.block342
  %.010.i.i208.ph = phi ptr [ %i.a, %vector.memcheck329 ], [ %i.a, %.lr.ph.i.i207.preheader ], [ %i.jv, %middle.block342 ]
  %.079.i.i209.ph = phi ptr [ %i.hw, %vector.memcheck329 ], [ %i.hw, %.lr.ph.i.i207.preheader ], [ %i.jw, %middle.block342 ]
  br label %.lr.ph.i.i207

.lr.ph.i.i207:                                    ; preds = %.lr.ph.i.i207.preheader438, %.lr.ph.i.i207
  %.010.i.i208 = phi ptr [ %i.ke, %.lr.ph.i.i207 ], [ %.010.i.i208.ph, %.lr.ph.i.i207.preheader438 ]
  %.079.i.i209 = phi ptr [ %i.kd, %.lr.ph.i.i207 ], [ %.079.i.i209.ph, %.lr.ph.i.i207.preheader438 ]
  %i.kd = getelementptr inbounds i8, ptr %.079.i.i209, i64 -4 ; 4 uses
  %i.ke = getelementptr inbounds i8, ptr %.010.i.i208, i64 -4 ; 3 uses
  %i.kf = load i32, ptr %i.kd, align 4, !tbaa !65
  store i32 %i.kf, ptr %i.ke, align 4, !tbaa !65
  store i32 0, ptr %i.kd, align 4, !tbaa !65
  %.not.i.i210 = icmp eq ptr %3, %i.kd
  br i1 %.not.i.i210, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211, label %.lr.ph.i.i207, !llvm.loop !544

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211: ; preds = %.lr.ph.i.i207, %middle.block342, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204
  %i.kg = phi ptr [ %3, %bb.h ], [ %i.a, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit204 ], [ %i.jv, %middle.block342 ], [ %i.ke, %.lr.ph.i.i207 ] ; 3 uses
  %i.kh = sub i64 0, %4
  %i.ki = getelementptr [4 x i8], ptr %i.kg, i64 %i.kh ; 11 uses
  %.not8.i.i212 = icmp eq i64 %4, 0
  br i1 %.not8.i.i212, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader

.lr.ph.i.i213.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %min.iters.check348 = icmp ult i64 %4, 16
  br i1 %min.iters.check348, label %.lr.ph.i.i213.preheader437, label %vector.memcheck346

vector.memcheck346:                               ; preds = %.lr.ph.i.i213.preheader
  %10 = ptrtoaddr ptr %i.kg to i64
  %11 = ptrtoaddr ptr %5 to i64
  %i.kj = shl i64 %4, 2
  %i.kk = add i64 %i.kj, %11
  %i.kl = sub i64 %i.kk, %10
  %diff.check = icmp ugt i64 %i.kl, -32
  br i1 %diff.check, label %.lr.ph.i.i213.preheader437, label %vector.ph349

vector.ph349:                                     ; preds = %vector.memcheck346
  %n.vec350 = and i64 %4, -8                      ; 3 uses
  %i.km = shl i64 %n.vec350, 2                    ; 2 uses
  %i.kn = getelementptr i8, ptr %i.ki, i64 %i.km
  %i.ko = and i64 %4, 7
  %i.kp = getelementptr i8, ptr %5, i64 %i.km
  br label %vector.body351

vector.body351:                                   ; preds = %vector.body351, %vector.ph349
  %index352 = phi i64 [ 0, %vector.ph349 ], [ %index.next357, %vector.body351 ] ; 2 uses
  %i.kq = shl i64 %index352, 2                    ; 2 uses
  %next.gep353 = getelementptr i8, ptr %i.ki, i64 %i.kq ; 2 uses
  %next.gep354 = getelementptr i8, ptr %5, i64 %i.kq ; 2 uses
  %i.kr = getelementptr i8, ptr %next.gep354, i64 16
  %wide.load355 = load <4 x i32>, ptr %next.gep354, align 4, !tbaa !65
  %wide.load356 = load <4 x i32>, ptr %i.kr, align 4, !tbaa !65
  %i.ks = getelementptr i8, ptr %next.gep353, i64 16
  store <4 x i32> %wide.load355, ptr %next.gep353, align 4, !tbaa !65
  store <4 x i32> %wide.load356, ptr %i.ks, align 4, !tbaa !65
  %index.next357 = add nuw i64 %index352, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next357, %n.vec350
  br i1 %i.kt, label %middle.block358, label %vector.body351, !llvm.loop !545

middle.block358:                                  ; preds = %vector.body351
  %cmp.n359 = icmp eq i64 %4, %n.vec350
  br i1 %cmp.n359, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213.preheader437

.lr.ph.i.i213.preheader437:                       ; preds = %vector.memcheck346, %.lr.ph.i.i213.preheader, %middle.block358
  %.011.i.i214.ph = phi ptr [ %i.ki, %vector.memcheck346 ], [ %i.ki, %.lr.ph.i.i213.preheader ], [ %i.kn, %middle.block358 ] ; 2 uses
  %.0610.i.i215.ph = phi i64 [ %4, %vector.memcheck346 ], [ %4, %.lr.ph.i.i213.preheader ], [ %i.ko, %middle.block358 ] ; 4 uses
  %.079.i.i216.ph = phi ptr [ %5, %vector.memcheck346 ], [ %5, %.lr.ph.i.i213.preheader ], [ %i.kp, %middle.block358 ] ; 2 uses
  %i.ku = add i64 %.0610.i.i215.ph, -1
  %xtraiter452 = and i64 %.0610.i.i215.ph, 7      ; 2 uses
  %lcmp.mod453.not = icmp eq i64 %xtraiter452, 0
  br i1 %lcmp.mod453.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol

.lr.ph.i.i213.prol:                               ; preds = %.lr.ph.i.i213.preheader437, %.lr.ph.i.i213.prol
  %.011.i.i214.prol = phi ptr [ %i.ky, %.lr.ph.i.i213.prol ], [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %.0610.i.i215.prol = phi i64 [ %i.kv, %.lr.ph.i.i213.prol ], [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ]
  %.079.i.i216.prol = phi ptr [ %i.kx, %.lr.ph.i.i213.prol ], [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ] ; 2 uses
  %prol.iter454 = phi i64 [ %prol.iter454.next, %.lr.ph.i.i213.prol ], [ 0, %.lr.ph.i.i213.preheader437 ]
  %i.kv = add i64 %.0610.i.i215.prol, -1          ; 2 uses
  %i.kw = load i32, ptr %.079.i.i216.prol, align 4, !tbaa !65
  store i32 %i.kw, ptr %.011.i.i214.prol, align 4, !tbaa !65
  %i.kx = getelementptr inbounds nuw i8, ptr %.079.i.i216.prol, i64 4 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.011.i.i214.prol, i64 4 ; 2 uses
  %prol.iter454.next = add i64 %prol.iter454, 1   ; 2 uses
  %prol.iter454.cmp.not = icmp eq i64 %prol.iter454.next, %xtraiter452
  br i1 %prol.iter454.cmp.not, label %.lr.ph.i.i213.prol.loopexit, label %.lr.ph.i.i213.prol, !llvm.loop !546

.lr.ph.i.i213.prol.loopexit:                      ; preds = %.lr.ph.i.i213.prol, %.lr.ph.i.i213.preheader437
  %.011.i.i214.unr = phi ptr [ %.011.i.i214.ph, %.lr.ph.i.i213.preheader437 ], [ %i.ky, %.lr.ph.i.i213.prol ]
  %.0610.i.i215.unr = phi i64 [ %.0610.i.i215.ph, %.lr.ph.i.i213.preheader437 ], [ %i.kv, %.lr.ph.i.i213.prol ]
  %.079.i.i216.unr = phi ptr [ %.079.i.i216.ph, %.lr.ph.i.i213.preheader437 ], [ %i.kx, %.lr.ph.i.i213.prol ]
  %i.kz = icmp ult i64 %i.ku, 7
  br i1 %i.kz, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213

.lr.ph.i.i213:                                    ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213
  %.011.i.i214 = phi ptr [ %i.ly, %.lr.ph.i.i213 ], [ %.011.i.i214.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %.0610.i.i215 = phi i64 [ %i.lv, %.lr.ph.i.i213 ], [ %.0610.i.i215.unr, %.lr.ph.i.i213.prol.loopexit ]
  %.079.i.i216 = phi ptr [ %i.lx, %.lr.ph.i.i213 ], [ %.079.i.i216.unr, %.lr.ph.i.i213.prol.loopexit ] ; 9 uses
  %i.la = load i32, ptr %.079.i.i216, align 4, !tbaa !65
  store i32 %i.la, ptr %.011.i.i214, align 4, !tbaa !65
  %i.lb = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 4
  %i.lc = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 4
  %i.ld = load i32, ptr %i.lb, align 4, !tbaa !65
  store i32 %i.ld, ptr %i.lc, align 4, !tbaa !65
  %i.le = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 8
  %i.lg = load i32, ptr %i.le, align 4, !tbaa !65
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !65
  %i.lh = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 12
  %i.li = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 12
  %i.lj = load i32, ptr %i.lh, align 4, !tbaa !65
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !65
  %i.lk = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 16
  %i.lm = load i32, ptr %i.lk, align 4, !tbaa !65
  store i32 %i.lm, ptr %i.ll, align 4, !tbaa !65
  %i.ln = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 20
  %i.lo = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 20
  %i.lp = load i32, ptr %i.ln, align 4, !tbaa !65
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !65
  %i.lq = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 24
  %i.lr = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 24
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !65
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !65
  %i.lt = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 28
  %i.lu = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 28
  %i.lv = add i64 %.0610.i.i215, -8               ; 2 uses
  %i.lw = load i32, ptr %i.lt, align 4, !tbaa !65
  store i32 %i.lw, ptr %i.lu, align 4, !tbaa !65
  %i.lx = getelementptr inbounds nuw i8, ptr %.079.i.i216, i64 32
  %i.ly = getelementptr inbounds nuw i8, ptr %.011.i.i214, i64 32
  %.not.i.i217.7 = icmp eq i64 %i.lv, 0
  br i1 %.not.i.i217.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, label %.lr.ph.i.i213, !llvm.loop !547

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219: ; preds = %.lr.ph.i.i213.prol.loopexit, %.lr.ph.i.i213, %middle.block358, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit211
  %.not.i220 = icmp eq ptr %3, %i.ki
  br i1 %.not.i220, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219
  %.not8.i.i221 = icmp eq ptr %0, %3
  br i1 %.not8.i.i221, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader

.lr.ph.i.i222.preheader:                          ; preds = %bb.i
  %i.lz = ptrtoaddr ptr %0 to i64
  %i.ma = add i64 %i.e, -4
  %i.mb = sub i64 %i.ma, %i.lz                    ; 3 uses
  %i.mc = lshr i64 %i.mb, 2
  %i.md = add nuw nsw i64 %i.mc, 1                ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.mb, 108
  br i1 %min.iters.check369, label %.lr.ph.i.i222.preheader435, label %vector.memcheck370

vector.memcheck370:                               ; preds = %.lr.ph.i.i222.preheader
  %i.me = shl i64 %4, 2
  %i.mf = and i64 %i.mb, -4                       ; 2 uses
  %i.mg = add i64 %i.me, %i.mf
  %i.mh = sub nuw nsw i64 -4, %i.mg
  %i.mi = getelementptr i8, ptr %i.kg, i64 %i.mh
  %i.mj = sub nuw nsw i64 -4, %i.mf
  %i.mk = getelementptr i8, ptr %3, i64 %i.mj
  %bound0371 = icmp ult ptr %i.mi, %3
  %bound1372 = icmp ult ptr %i.mk, %i.ki
  %found.conflict373 = and i1 %bound0371, %bound1372
  br i1 %found.conflict373, label %.lr.ph.i.i222.preheader435, label %vector.ph374

vector.ph374:                                     ; preds = %vector.memcheck370
  %n.vec375 = and i64 %i.md, 9223372036854775800  ; 3 uses
  %i.ml = mul i64 %n.vec375, -4                   ; 2 uses
  %i.mm = getelementptr i8, ptr %i.ki, i64 %i.ml  ; 2 uses
  %i.mn = getelementptr i8, ptr %3, i64 %i.ml
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next382, %vector.body376 ] ; 2 uses
  %i.mo = mul i64 %index377, -4                   ; 2 uses
  %next.gep378 = getelementptr i8, ptr %i.ki, i64 %i.mo ; 2 uses
  %next.gep379 = getelementptr i8, ptr %3, i64 %i.mo ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %next.gep379, i64 -16 ; 2 uses
  %i.mq = getelementptr inbounds i8, ptr %next.gep379, i64 -32 ; 2 uses
  %wide.load380 = load <4 x i32>, ptr %i.mp, align 4, !tbaa !65, !alias.scope !559
  %wide.load381 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !65, !alias.scope !559
  %i.mr = getelementptr inbounds i8, ptr %next.gep378, i64 -16
  %i.ms = getelementptr inbounds i8, ptr %next.gep378, i64 -32
  store <4 x i32> %wide.load380, ptr %i.mr, align 4, !tbaa !65, !alias.scope !560, !noalias !559
  store <4 x i32> %wide.load381, ptr %i.ms, align 4, !tbaa !65, !alias.scope !560, !noalias !559
  store <4 x i32> zeroinitializer, ptr %i.mp, align 4, !tbaa !65, !alias.scope !559
  store <4 x i32> zeroinitializer, ptr %i.mq, align 4, !tbaa !65, !alias.scope !559
  %index.next382 = add nuw i64 %index377, 8       ; 2 uses
  %i.mt = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.mt, label %middle.block383, label %vector.body376, !llvm.loop !551

middle.block383:                                  ; preds = %vector.body376
  %cmp.n384 = icmp eq i64 %i.md, %n.vec375
  br i1 %cmp.n384, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222.preheader435

.lr.ph.i.i222.preheader435:                       ; preds = %vector.memcheck370, %.lr.ph.i.i222.preheader, %middle.block383
  %.010.i.i223.ph = phi ptr [ %i.ki, %vector.memcheck370 ], [ %i.ki, %.lr.ph.i.i222.preheader ], [ %i.mm, %middle.block383 ]
  %.079.i.i224.ph = phi ptr [ %3, %vector.memcheck370 ], [ %3, %.lr.ph.i.i222.preheader ], [ %i.mn, %middle.block383 ]
  br label %.lr.ph.i.i222

.lr.ph.i.i222:                                    ; preds = %.lr.ph.i.i222.preheader435, %.lr.ph.i.i222
  %.010.i.i223 = phi ptr [ %i.mv, %.lr.ph.i.i222 ], [ %.010.i.i223.ph, %.lr.ph.i.i222.preheader435 ]
  %.079.i.i224 = phi ptr [ %i.mu, %.lr.ph.i.i222 ], [ %.079.i.i224.ph, %.lr.ph.i.i222.preheader435 ]
  %i.mu = getelementptr inbounds i8, ptr %.079.i.i224, i64 -4 ; 4 uses
  %i.mv = getelementptr inbounds i8, ptr %.010.i.i223, i64 -4 ; 3 uses
  %i.mw = load i32, ptr %i.mu, align 4, !tbaa !65
  store i32 %i.mw, ptr %i.mv, align 4, !tbaa !65
  store i32 0, ptr %i.mu, align 4, !tbaa !65
  %.not.i.i225 = icmp eq ptr %0, %i.mu
  br i1 %.not.i.i225, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, label %.lr.ph.i.i222, !llvm.loop !552

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226: ; preds = %.lr.ph.i.i222, %middle.block383, %bb.i
  %i.mx = phi ptr [ %i.ki, %bb.i ], [ %i.mm, %middle.block383 ], [ %i.mv, %.lr.ph.i.i222 ] ; 2 uses
  %.not3.i227 = icmp eq ptr %0, %i.mx
  br i1 %.not3.i227, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, %.lr.ph.i228
  %storemerge4.i229 = phi ptr [ %i.na, %.lr.ph.i228 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i229, align 4, !tbaa !65
  %i.my = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.mz = add i32 %i.my, -1
  store i32 %i.mz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !66
  %i.na = getelementptr inbounds nuw i8, ptr %storemerge4.i229, i64 4 ; 2 uses
  %.not.i230 = icmp eq ptr %i.na, %i.mx
  br i1 %.not.i230, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i228, !llvm.loop !16

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i228, %.lr.ph.i185, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E17copy_n_and_updateIPS5_EEvRS6_T_m.exit219, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPKS5_E31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit176, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit226, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit183, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17
end_hunk_2
