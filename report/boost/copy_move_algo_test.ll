Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/copy_move_algo_test?download=true
inline.NumInlined: 397
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_:bb.a
  br i1 %min.iters.check, label %.lr.ph.i.i216.preheader704, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i216.preheader
  %i.by = shl i64 %1, 2
  %i.bz = add i64 %i.by, %i.d
  %i.ca = shl i64 %i.j, 2                         ; 2 uses
  %i.cb = add i64 %i.bz, %i.ca
  %i.cc = add i64 %i.cb, -4
  %i.cd = add i64 %i.h, %i.c
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = and i64 %i.ce, -4                       ; 2 uses
  %i.cg = getelementptr i8, ptr %0, i64 %i.cf
  %scevgep = getelementptr i8, ptr %i.cg, i64 4
  %i.ch = add i64 %i.h, %i.cf
  %i.ci = add i64 %i.ch, 4
  %i.cj = sub i64 %i.ci, %i.ca
  %scevgep502 = getelementptr i8, ptr %3, i64 %i.cj
  %bound0 = icmp ult ptr %0, %scevgep502
  %bound1 = icmp ult ptr %i.bp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i216.preheader704, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  %i.ck = shl i64 %n.vec, 2                       ; 2 uses
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bp, i64 %i.ck
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cn ; 2 uses
  %next.gep503 = getelementptr i8, ptr %i.bp, i64 %i.cn ; 3 uses
  %i.co = getelementptr i8, ptr %next.gep503, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep503, align 4, !tbaa !13, !alias.scope !73
  %wide.load504 = load <4 x i32>, ptr %i.co, align 4, !tbaa !13, !alias.scope !73
  %i.cp = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !13, !alias.scope !76, !noalias !73
  store <4 x i32> %wide.load504, ptr %i.cp, align 4, !tbaa !13, !alias.scope !76, !noalias !73
  store <4 x i32> zeroinitializer, ptr %next.gep503, align 4, !tbaa !13, !alias.scope !73
  store <4 x i32> zeroinitializer, ptr %i.co, align 4, !tbaa !13, !alias.scope !73
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216.preheader704

.lr.ph.i.i216.preheader704:                       ; preds = %vector.memcheck, %.lr.ph.i.i216.preheader, %middle.block
  %.010.i.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i.i216.preheader ], [ %i.cl, %middle.block ]
  %.079.i.i.ph = phi ptr [ %i.bp, %vector.memcheck ], [ %i.bp, %.lr.ph.i.i216.preheader ], [ %i.cm, %middle.block ]
  br label %.lr.ph.i.i216

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i216.preheader704, %.lr.ph.i.i216
  %.010.i.i = phi ptr [ %i.ct, %.lr.ph.i.i216 ], [ %.010.i.i.ph, %.lr.ph.i.i216.preheader704 ] ; 2 uses
  %.079.i.i = phi ptr [ %i.cs, %.lr.ph.i.i216 ], [ %.079.i.i.ph, %.lr.ph.i.i216.preheader704 ] ; 3 uses
  %i.cr = load i32, ptr %.079.i.i, align 4, !tbaa !13
  store i32 %i.cr, ptr %.010.i.i, align 4, !tbaa !13
  store i32 0, ptr %.079.i.i, align 4, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.cs, %i.b
  br i1 %.not.i.i217, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i216, !llvm.loop !79

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i216, %middle.block, %bb.e
  %i.cu = phi ptr [ %0, %bb.e ], [ %i.cl, %middle.block ], [ %i.ct, %.lr.ph.i.i216 ] ; 2 uses
  %.not3.i = icmp eq ptr %i.cu, %i.b
  br i1 %.not3.i, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %.lr.ph.i218
  %storemerge4.i = phi ptr [ %i.cx, %.lr.ph.i218 ], [ %i.cu, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i, align 4, !tbaa !13
  %i.cv = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.cx = getelementptr inbounds nuw i8, ptr %storemerge4.i, i64 4 ; 2 uses
  %.not.i219 = icmp eq ptr %i.cx, %i.b
  br i1 %.not.i219, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i218, !llvm.loop !80

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit: ; preds = %.lr.ph.i207, %bb.c
  %.not.i222 = icmp eq i64 %1, 0
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  %xtraiter708 = and i64 %1, 3                    ; 2 uses
  %lcmp.mod709.not = icmp eq i64 %xtraiter708, 0
  br i1 %lcmp.mod709.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %i.cy = phi i64 [ %i.cz, %.preheader.prol ], [ %1, %.preheader.preheader ]
  %.0.i223.prol = phi ptr [ %i.dc, %.preheader.prol ], [ %0, %.preheader.preheader ] ; 2 uses
  %prol.iter710 = phi i64 [ %prol.iter710.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.cz = add i64 %i.cy, -1                       ; 2 uses
  store i32 -2147483648, ptr %.0.i223.prol, align 4, !tbaa !13
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.db = add i32 %i.da, -1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i223.prol, i64 4 ; 2 uses
  %prol.iter710.next = add i64 %prol.iter710, 1   ; 2 uses
  %prol.iter710.cmp.not = icmp eq i64 %prol.iter710.next, %xtraiter708
  br i1 %prol.iter710.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !81

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.unr = phi i64 [ %1, %.preheader.preheader ], [ %i.cz, %.preheader.prol ]
  %.0.i223.unr = phi ptr [ %0, %.preheader.preheader ], [ %i.dc, %.preheader.prol ]
  %i.dd = icmp ult i64 %1, 4
  br i1 %i.dd, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %i.de = phi i64 [ %i.dm, %.preheader ], [ %.unr, %.preheader.prol.loopexit ]
  %.0.i223 = phi ptr [ %i.do, %.preheader ], [ %.0.i223.unr, %.preheader.prol.loopexit ] ; 5 uses
  store i32 -2147483648, ptr %.0.i223, align 4, !tbaa !13
  %i.df = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11 ; 4 uses
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i223, i64 4
  store i32 -2147483648, ptr %i.dh, align 4, !tbaa !13
  %i.di = add i32 %i.df, -2
  store i32 %i.di, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i223, i64 8
  store i32 -2147483648, ptr %i.dj, align 4, !tbaa !13
  %i.dk = add i32 %i.df, -3
  store i32 %i.dk, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i223, i64 12
  %i.dm = add i64 %i.de, -4                       ; 2 uses
  store i32 -2147483648, ptr %i.dl, align 4, !tbaa !13
  %i.dn = add i32 %i.df, -4
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.do = getelementptr inbounds nuw i8, ptr %.0.i223, i64 16
  %.not3.i224.3 = icmp eq i64 %i.dm, 0
  br i1 %.not3.i224.3, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.preheader, !llvm.loop !82

bb.f:                                             ; preds = %bb.a
  %i.dp = icmp ugt i64 %4, %i.i                   ; 2 uses
  %.not180 = icmp ugt i64 %i.i, %i.f
  br i1 %.not180, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not17.i234 = icmp eq ptr %0, %2
  br i1 %.not17.i234, label %.loopexit413, label %.lr.ph.i235.preheader

.lr.ph.i235.preheader:                            ; preds = %bb.g
  %i.dq = and i64 %i.h, 4
  %lcmp.mod715.not = icmp eq i64 %i.dq, 0
  br i1 %lcmp.mod715.not, label %.lr.ph.i235.prol.loopexit, label %.lr.ph.i235.prol

.lr.ph.i235.prol:                                 ; preds = %.lr.ph.i235.preheader
  %i.dr = add nsw i64 %i.i, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.ds = load i32, ptr %0, align 4, !tbaa !13
  store i32 %i.ds, ptr %2, align 4, !tbaa !13
  store i32 0, ptr %0, align 4, !tbaa !13
  %i.dt = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %.lr.ph.i235.prol.loopexit

.lr.ph.i235.prol.loopexit:                        ; preds = %.lr.ph.i235.prol, %.lr.ph.i235.preheader
  %.020.i236.unr = phi i64 [ %i.i, %.lr.ph.i235.preheader ], [ %i.dr, %.lr.ph.i235.prol ]
  %.0819.i237.unr = phi ptr [ %0, %.lr.ph.i235.preheader ], [ %i.dv, %.lr.ph.i235.prol ]
  %.01618.i238.unr = phi ptr [ %2, %.lr.ph.i235.preheader ], [ %i.dw, %.lr.ph.i235.prol ]
  %i.dx = icmp eq i64 %i.h, 4
  br i1 %i.dx, label %.loopexit413, label %.lr.ph.i235

.lr.ph.i235:                                      ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235
  %.020.i236 = phi i64 [ %i.ed, %.lr.ph.i235 ], [ %.020.i236.unr, %.lr.ph.i235.prol.loopexit ]
  %.0819.i237 = phi ptr [ %i.eh, %.lr.ph.i235 ], [ %.0819.i237.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  %.01618.i238 = phi ptr [ %i.ei, %.lr.ph.i235 ], [ %.01618.i238.unr, %.lr.ph.i235.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i238) ]
  %i.dy = load i32, ptr %.0819.i237, align 4, !tbaa !13
  store i32 %i.dy, ptr %.01618.i238, align 4, !tbaa !13
  store i32 0, ptr %.0819.i237, align 4, !tbaa !13
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.eb = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 4
  %i.ed = add i64 %.020.i236, -2                  ; 2 uses
  %i.ee = load i32, ptr %i.eb, align 4, !tbaa !13
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !13
  store i32 0, ptr %i.eb, align 4, !tbaa !13
  %i.ef = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.eg = add i32 %i.ef, 1
  store i32 %i.eg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.eh = getelementptr inbounds nuw i8, ptr %.0819.i237, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %.01618.i238, i64 8
  %.not.i239.1 = icmp eq i64 %i.ed, 0
  br i1 %.not.i239.1, label %.loopexit413, label %.lr.ph.i235, !llvm.loop !72

.loopexit413:                                     ; preds = %.lr.ph.i235.prol.loopexit, %.lr.ph.i235, %bb.g
  %i.ej = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.i) ; 8 uses
  %i.ek = getelementptr inbounds i8, ptr %0, i64 %i.h ; 6 uses
  %.not8.i = icmp eq ptr %i.ek, %3
  br i1 %.not8.i, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader

.lr.ph.i242.preheader:                            ; preds = %.loopexit413
  %7 = add i64 %i.c, %i.g
  %i.el = add i64 %7, -4
  %8 = shl i64 %i.d, 1
  %i.em = sub i64 %i.el, %8                       ; 2 uses
  %i.en = lshr i64 %i.em, 2
  %i.eo = add nuw nsw i64 %i.en, 1                ; 2 uses
  %min.iters.check513 = icmp ult i64 %i.em, 124
  br i1 %min.iters.check513, label %.lr.ph.i242.preheader701, label %vector.memcheck506

vector.memcheck506:                               ; preds = %.lr.ph.i242.preheader
  %i.ep = add i64 %i.c, %i.g
  %i.eq = add i64 %i.ep, -4
  %i.er = shl i64 %i.d, 1
  %i.es = sub i64 %i.eq, %i.er
  %i.et = and i64 %i.es, -4                       ; 2 uses
  %i.eu = getelementptr i8, ptr %0, i64 %i.et
  %scevgep507 = getelementptr i8, ptr %i.eu, i64 4
  %i.ev = add i64 %i.et, %i.d
  %i.ew = add i64 %i.ev, 4
  %i.ex = sub i64 %i.ew, %i.g
  %scevgep508 = getelementptr i8, ptr %0, i64 %i.ex
  %bound0509 = icmp ult ptr %0, %scevgep508
  %bound1510 = icmp ult ptr %i.ek, %scevgep507
  %found.conflict511 = and i1 %bound0509, %bound1510
  br i1 %found.conflict511, label %.lr.ph.i242.preheader701, label %vector.ph514

vector.ph514:                                     ; preds = %vector.memcheck506
  %n.vec515 = and i64 %i.eo, 9223372036854775800  ; 3 uses
  %i.ey = shl i64 %n.vec515, 2                    ; 2 uses
  %i.ez = getelementptr i8, ptr %0, i64 %i.ey     ; 2 uses
  %i.fa = getelementptr i8, ptr %i.ek, i64 %i.ey
  br label %vector.body516

vector.body516:                                   ; preds = %vector.body516, %vector.ph514
  %index517 = phi i64 [ 0, %vector.ph514 ], [ %index.next522, %vector.body516 ] ; 2 uses
  %i.fb = shl i64 %index517, 2                    ; 2 uses
  %next.gep518 = getelementptr i8, ptr %0, i64 %i.fb ; 2 uses
  %next.gep519 = getelementptr i8, ptr %i.ek, i64 %i.fb ; 3 uses
  %i.fc = getelementptr i8, ptr %next.gep519, i64 16 ; 2 uses
  %wide.load520 = load <4 x i32>, ptr %next.gep519, align 4, !tbaa !13, !alias.scope !83
  %wide.load521 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !13, !alias.scope !83
  %i.fd = getelementptr i8, ptr %next.gep518, i64 16
  store <4 x i32> %wide.load520, ptr %next.gep518, align 4, !tbaa !13, !alias.scope !86, !noalias !83
  store <4 x i32> %wide.load521, ptr %i.fd, align 4, !tbaa !13, !alias.scope !86, !noalias !83
  store <4 x i32> zeroinitializer, ptr %next.gep519, align 4, !tbaa !13, !alias.scope !83
  store <4 x i32> zeroinitializer, ptr %i.fc, align 4, !tbaa !13, !alias.scope !83
  %index.next522 = add nuw i64 %index517, 8       ; 2 uses
  %i.fe = icmp eq i64 %index.next522, %n.vec515
  br i1 %i.fe, label %middle.block523, label %vector.body516, !llvm.loop !88

middle.block523:                                  ; preds = %vector.body516
  %cmp.n524 = icmp eq i64 %i.eo, %n.vec515
  br i1 %cmp.n524, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242.preheader701

.lr.ph.i242.preheader701:                         ; preds = %vector.memcheck506, %.lr.ph.i242.preheader, %middle.block523
  %.010.i.ph = phi ptr [ %0, %vector.memcheck506 ], [ %0, %.lr.ph.i242.preheader ], [ %i.ez, %middle.block523 ]
  %.079.i.ph = phi ptr [ %i.ek, %vector.memcheck506 ], [ %i.ek, %.lr.ph.i242.preheader ], [ %i.fa, %middle.block523 ]
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %.lr.ph.i242.preheader701, %.lr.ph.i242
  %.010.i = phi ptr [ %i.fh, %.lr.ph.i242 ], [ %.010.i.ph, %.lr.ph.i242.preheader701 ] ; 2 uses
  %.079.i = phi ptr [ %i.fg, %.lr.ph.i242 ], [ %.079.i.ph, %.lr.ph.i242.preheader701 ] ; 3 uses
  %i.ff = load i32, ptr %.079.i, align 4, !tbaa !13
  store i32 %i.ff, ptr %.010.i, align 4, !tbaa !13
  store i32 0, ptr %.079.i, align 4, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %.079.i, i64 4 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.010.i, i64 4 ; 2 uses
  %.not.i243 = icmp eq ptr %i.fg, %3
  br i1 %.not.i243, label %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, label %.lr.ph.i242, !llvm.loop !89

_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit: ; preds = %.lr.ph.i242, %middle.block523, %.loopexit413
  %.0.lcssa.i = phi ptr [ %0, %.loopexit413 ], [ %i.ez, %middle.block523 ], [ %i.fh, %.lr.ph.i242 ] ; 6 uses
  %.not6.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not6.i.i, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i245.preheader

.lr.ph.i.i245.preheader:                          ; preds = %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.0.lcssa.i528 = ptrtoaddr ptr %.0.lcssa.i to i64
  %min.iters.check530 = icmp ult i64 %i.ej, 8
  %i.fi = sub i64 %i.a, %.0.lcssa.i528
  %diff.check = icmp ugt i64 %i.fi, -32
  %or.cond681 = select i1 %min.iters.check530, i1 true, i1 %diff.check
  br i1 %or.cond681, label %.lr.ph.i.i245.preheader699, label %vector.ph531

vector.ph531:                                     ; preds = %.lr.ph.i.i245.preheader
  %n.vec532 = and i64 %i.ej, -8                   ; 3 uses
  %i.fj = and i64 %i.ej, 7
  %i.fk = shl i64 %n.vec532, 2                    ; 2 uses
  %i.fl = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fk
  %i.fm = getelementptr i8, ptr %5, i64 %i.fk     ; 2 uses
  br label %vector.body533

vector.body533:                                   ; preds = %vector.body533, %vector.ph531
  %index534 = phi i64 [ 0, %vector.ph531 ], [ %index.next539, %vector.body533 ] ; 2 uses
  %i.fn = shl i64 %index534, 2                    ; 2 uses
  %next.gep535 = getelementptr i8, ptr %.0.lcssa.i, i64 %i.fn ; 2 uses
  %next.gep536 = getelementptr i8, ptr %5, i64 %i.fn ; 2 uses
  %i.fo = getelementptr i8, ptr %next.gep536, i64 16
  %wide.load537 = load <4 x i32>, ptr %next.gep536, align 4, !tbaa !13
  %wide.load538 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !13
  %i.fp = getelementptr i8, ptr %next.gep535, i64 16
  store <4 x i32> %wide.load537, ptr %next.gep535, align 4, !tbaa !13
  store <4 x i32> %wide.load538, ptr %i.fp, align 4, !tbaa !13
  %index.next539 = add nuw i64 %index534, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next539, %n.vec532
  br i1 %i.fq, label %middle.block540, label %vector.body533, !llvm.loop !90

middle.block540:                                  ; preds = %vector.body533
  %cmp.n541 = icmp eq i64 %i.ej, %n.vec532
  br i1 %cmp.n541, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i245.preheader699

.lr.ph.i.i245.preheader699:                       ; preds = %.lr.ph.i.i245.preheader, %middle.block540
  %.09.i.i.ph = phi i64 [ %i.ej, %.lr.ph.i.i245.preheader ], [ %i.fj, %middle.block540 ] ; 4 uses
  %.048.i.i.ph = phi ptr [ %.0.lcssa.i, %.lr.ph.i.i245.preheader ], [ %i.fl, %middle.block540 ] ; 2 uses
  %.sroa.0.07.i.i.ph = phi ptr [ %5, %.lr.ph.i.i245.preheader ], [ %i.fm, %middle.block540 ] ; 2 uses
  %i.fr = add i64 %.09.i.i.ph, -1
  %xtraiter717 = and i64 %.09.i.i.ph, 7           ; 2 uses
  %lcmp.mod718.not = icmp eq i64 %xtraiter717, 0
  br i1 %lcmp.mod718.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol

.lr.ph.i.i245.prol:                               ; preds = %.lr.ph.i.i245.preheader699, %.lr.ph.i.i245.prol
  %.09.i.i.prol = phi i64 [ %i.fs, %.lr.ph.i.i245.prol ], [ %.09.i.i.ph, %.lr.ph.i.i245.preheader699 ]
  %.048.i.i.prol = phi ptr [ %i.fv, %.lr.ph.i.i245.prol ], [ %.048.i.i.ph, %.lr.ph.i.i245.preheader699 ] ; 2 uses
  %.sroa.0.07.i.i.prol = phi ptr [ %i.fu, %.lr.ph.i.i245.prol ], [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i245.preheader699 ] ; 2 uses
  %prol.iter719 = phi i64 [ %prol.iter719.next, %.lr.ph.i.i245.prol ], [ 0, %.lr.ph.i.i245.preheader699 ]
  %i.fs = add i64 %.09.i.i.prol, -1               ; 2 uses
  %i.ft = load i32, ptr %.sroa.0.07.i.i.prol, align 4, !tbaa !13
  store i32 %i.ft, ptr %.048.i.i.prol, align 4, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.prol, i64 4 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.048.i.i.prol, i64 4 ; 2 uses
  %prol.iter719.next = add i64 %prol.iter719, 1   ; 2 uses
  %prol.iter719.cmp.not = icmp eq i64 %prol.iter719.next, %xtraiter717
  br i1 %prol.iter719.cmp.not, label %.lr.ph.i.i245.prol.loopexit, label %.lr.ph.i.i245.prol, !llvm.loop !91

.lr.ph.i.i245.prol.loopexit:                      ; preds = %.lr.ph.i.i245.prol, %.lr.ph.i.i245.preheader699
  %.lcssa700.unr = phi ptr [ poison, %.lr.ph.i.i245.preheader699 ], [ %i.fu, %.lr.ph.i.i245.prol ]
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %.lr.ph.i.i245.preheader699 ], [ %i.fs, %.lr.ph.i.i245.prol ]
  %.048.i.i.unr = phi ptr [ %.048.i.i.ph, %.lr.ph.i.i245.preheader699 ], [ %i.fv, %.lr.ph.i.i245.prol ]
  %.sroa.0.07.i.i.unr = phi ptr [ %.sroa.0.07.i.i.ph, %.lr.ph.i.i245.preheader699 ], [ %i.fu, %.lr.ph.i.i245.prol ]
  %i.fw = icmp ult i64 %i.fr, 7
  br i1 %i.fw, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i245

.lr.ph.i.i245:                                    ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245
  %.09.i.i = phi i64 [ %i.gs, %.lr.ph.i.i245 ], [ %.09.i.i.unr, %.lr.ph.i.i245.prol.loopexit ]
  %.048.i.i = phi ptr [ %i.gv, %.lr.ph.i.i245 ], [ %.048.i.i.unr, %.lr.ph.i.i245.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i = phi ptr [ %i.gu, %.lr.ph.i.i245 ], [ %.sroa.0.07.i.i.unr, %.lr.ph.i.i245.prol.loopexit ] ; 9 uses
  %i.fx = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !13
  store i32 %i.fx, ptr %.048.i.i, align 4, !tbaa !13
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %i.fz = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 4
  %i.ga = load i32, ptr %i.fy, align 4, !tbaa !13
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !13
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 8
  %i.gd = load i32, ptr %i.gb, align 4, !tbaa !13
  store i32 %i.gd, ptr %i.gc, align 4, !tbaa !13
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 12
  %i.gg = load i32, ptr %i.ge, align 4, !tbaa !13
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !13
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 16
  %i.gj = load i32, ptr %i.gh, align 4, !tbaa !13
  store i32 %i.gj, ptr %i.gi, align 4, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 20
  %i.gl = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 20
  %i.gm = load i32, ptr %i.gk, align 4, !tbaa !13
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !13
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 24
  %i.go = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 24
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !13
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !13
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 28
  %i.gr = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 28
  %i.gs = add i64 %.09.i.i, -8                    ; 2 uses
  %i.gt = load i32, ptr %i.gq, align 4, !tbaa !13
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !13
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 32 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.048.i.i, i64 32
  %.not.i.i246.7 = icmp eq i64 %i.gs, 0
  br i1 %.not.i.i246.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit, label %.lr.ph.i.i245, !llvm.loop !92

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit: ; preds = %.lr.ph.i.i245.prol.loopexit, %.lr.ph.i.i245, %middle.block540, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit
  %.sroa.0.0.lcssa.i.i247 = phi ptr [ %5, %_ZN5boost9container4moveIPNS0_4test24movable_and_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit ], [ %i.fm, %middle.block540 ], [ %.lcssa700.unr, %.lr.ph.i.i245.prol.loopexit ], [ %i.gu, %.lr.ph.i.i245 ]
  br i1 %i.dp, label %.critedge, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit
  %i.gw = getelementptr inbounds [4 x i8], ptr %.0.lcssa.i, i64 %i.ej ; 7 uses
  %.not.i248 = icmp eq ptr %3, %i.gw
  br i1 %.not.i248, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not8.i.i249 = icmp eq ptr %3, %i.b
  br i1 %.not8.i.i249, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit254, label %.lr.ph.i.i250.preheader

.lr.ph.i.i250.preheader:                          ; preds = %bb.i
  %i.gx = shl i64 %1, 2
  %i.gy = add i64 %i.gx, %i.d
  %i.gz = add i64 %i.gy, -4
  %i.ha = sub i64 %i.gz, %i.c                     ; 2 uses
  %i.hb = lshr i64 %i.ha, 2
  %i.hc = add nuw nsw i64 %i.hb, 1                ; 2 uses
  %min.iters.check552 = icmp ult i64 %i.ha, 124
  br i1 %min.iters.check552, label %.lr.ph.i.i250.preheader697, label %vector.memcheck545

end_hunk_0
begin_hunk_1_@_ZN5boost9container54expand_backward_forward_and_insert_alloc_move_backwardIPNS0_4test24movable_and_copyable_intENS0_3dtl18insert_range_proxyINS0_13new_allocatorIS3_EEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEEES8_EEvT_mSG_SG_mT0_RT1_:bb.a
.lr.ph.i.i287.preheader693:                       ; preds = %vector.memcheck566, %.lr.ph.i.i287.preheader, %middle.block579
  %.09.i.i288.ph = phi i64 [ %i.kl, %vector.memcheck566 ], [ %i.kl, %.lr.ph.i.i287.preheader ], [ %i.kq, %middle.block579 ] ; 4 uses
  %.048.i.i289.ph = phi ptr [ %0, %vector.memcheck566 ], [ %0, %.lr.ph.i.i287.preheader ], [ %i.ks, %middle.block579 ] ; 2 uses
  %.sroa.0.07.i.i290.ph = phi ptr [ %.lcssa694, %vector.memcheck566 ], [ %.lcssa694, %.lr.ph.i.i287.preheader ], [ %i.kt, %middle.block579 ] ; 2 uses
  %i.ky = add i64 %.09.i.i288.ph, -1
  %xtraiter725 = and i64 %.09.i.i288.ph, 7        ; 2 uses
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  br i1 %lcmp.mod726.not, label %.lr.ph.i.i287.prol.loopexit, label %.lr.ph.i.i287.prol

.lr.ph.i.i287.prol:                               ; preds = %.lr.ph.i.i287.preheader693, %.lr.ph.i.i287.prol
  %.09.i.i288.prol = phi i64 [ %i.kz, %.lr.ph.i.i287.prol ], [ %.09.i.i288.ph, %.lr.ph.i.i287.preheader693 ]
  %.048.i.i289.prol = phi ptr [ %i.lc, %.lr.ph.i.i287.prol ], [ %.048.i.i289.ph, %.lr.ph.i.i287.preheader693 ] ; 2 uses
  %.sroa.0.07.i.i290.prol = phi ptr [ %i.lb, %.lr.ph.i.i287.prol ], [ %.sroa.0.07.i.i290.ph, %.lr.ph.i.i287.preheader693 ] ; 2 uses
  %prol.iter727 = phi i64 [ %prol.iter727.next, %.lr.ph.i.i287.prol ], [ 0, %.lr.ph.i.i287.preheader693 ]
  %i.kz = add i64 %.09.i.i288.prol, -1            ; 2 uses
  %i.la = load i32, ptr %.sroa.0.07.i.i290.prol, align 4, !tbaa !13
  store i32 %i.la, ptr %.048.i.i289.prol, align 4, !tbaa !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290.prol, i64 4 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.048.i.i289.prol, i64 4 ; 2 uses
  %prol.iter727.next = add i64 %prol.iter727, 1   ; 2 uses
  %prol.iter727.cmp.not = icmp eq i64 %prol.iter727.next, %xtraiter725
  br i1 %prol.iter727.cmp.not, label %.lr.ph.i.i287.prol.loopexit, label %.lr.ph.i.i287.prol, !llvm.loop !104

.lr.ph.i.i287.prol.loopexit:                      ; preds = %.lr.ph.i.i287.prol, %.lr.ph.i.i287.preheader693
  %.09.i.i288.unr = phi i64 [ %.09.i.i288.ph, %.lr.ph.i.i287.preheader693 ], [ %i.kz, %.lr.ph.i.i287.prol ]
  %.048.i.i289.unr = phi ptr [ %.048.i.i289.ph, %.lr.ph.i.i287.preheader693 ], [ %i.lc, %.lr.ph.i.i287.prol ]
  %.sroa.0.07.i.i290.unr = phi ptr [ %.sroa.0.07.i.i290.ph, %.lr.ph.i.i287.preheader693 ], [ %i.lb, %.lr.ph.i.i287.prol ]
  %i.ld = icmp ult i64 %i.ky, 7
  br i1 %i.ld, label %.loopexit411, label %.lr.ph.i.i287

.lr.ph.i.i287:                                    ; preds = %.lr.ph.i.i287.prol.loopexit, %.lr.ph.i.i287
  %.09.i.i288 = phi i64 [ %i.lz, %.lr.ph.i.i287 ], [ %.09.i.i288.unr, %.lr.ph.i.i287.prol.loopexit ]
  %.048.i.i289 = phi ptr [ %i.mc, %.lr.ph.i.i287 ], [ %.048.i.i289.unr, %.lr.ph.i.i287.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i290 = phi ptr [ %i.mb, %.lr.ph.i.i287 ], [ %.sroa.0.07.i.i290.unr, %.lr.ph.i.i287.prol.loopexit ] ; 9 uses
  %i.le = load i32, ptr %.sroa.0.07.i.i290, align 4, !tbaa !13
  store i32 %i.le, ptr %.048.i.i289, align 4, !tbaa !13
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 4
  %i.lg = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 4
  %i.lh = load i32, ptr %i.lf, align 4, !tbaa !13
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !13
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 8
  %i.lk = load i32, ptr %i.li, align 4, !tbaa !13
  store i32 %i.lk, ptr %i.lj, align 4, !tbaa !13
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 12
  %i.lm = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 12
  %i.ln = load i32, ptr %i.ll, align 4, !tbaa !13
  store i32 %i.ln, ptr %i.lm, align 4, !tbaa !13
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 16
  %i.lq = load i32, ptr %i.lo, align 4, !tbaa !13
  store i32 %i.lq, ptr %i.lp, align 4, !tbaa !13
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 20
  %i.ls = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 20
  %i.lt = load i32, ptr %i.lr, align 4, !tbaa !13
  store i32 %i.lt, ptr %i.ls, align 4, !tbaa !13
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 24
  %i.lw = load i32, ptr %i.lu, align 4, !tbaa !13
  store i32 %i.lw, ptr %i.lv, align 4, !tbaa !13
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 28
  %i.ly = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 28
  %i.lz = add i64 %.09.i.i288, -8                 ; 2 uses
  %i.ma = load i32, ptr %i.lx, align 4, !tbaa !13
  store i32 %i.ma, ptr %i.ly, align 4, !tbaa !13
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i290, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %.048.i.i289, i64 32
  %.not.i.i291.7 = icmp eq i64 %i.lz, 0
  br i1 %.not.i.i291.7, label %.loopexit411, label %.lr.ph.i.i287, !llvm.loop !105

.loopexit411:                                     ; preds = %.lr.ph.i.i287.prol.loopexit, %.lr.ph.i.i287, %middle.block579, %bb.l
  %i.md = getelementptr inbounds [4 x i8], ptr %0, i64 %i.kl ; 7 uses
  %.not.i294 = icmp eq ptr %3, %i.md
  br i1 %.not.i294, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %bb.m

bb.m:                                             ; preds = %.loopexit411
  %.not8.i.i295 = icmp eq ptr %3, %i.b
  br i1 %.not8.i.i295, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, label %.lr.ph.i.i296.preheader

.lr.ph.i.i296.preheader:                          ; preds = %bb.m
  %i.me = shl i64 %1, 2
  %i.mf = add i64 %i.me, %i.d
  %i.mg = add i64 %i.mf, -4
  %i.mh = sub i64 %i.mg, %i.c                     ; 2 uses
  %i.mi = lshr i64 %i.mh, 2
  %i.mj = add nuw nsw i64 %i.mi, 1                ; 2 uses
  %min.iters.check591 = icmp ult i64 %i.mh, 124
  br i1 %min.iters.check591, label %.lr.ph.i.i296.preheader691, label %vector.memcheck584

vector.memcheck584:                               ; preds = %.lr.ph.i.i296.preheader
  %i.mk = shl i64 %1, 2
  %i.ml = add i64 %i.mk, %i.d
  %i.mm = add i64 %i.ml, -4
  %i.mn = sub i64 %i.mm, %i.c
  %i.mo = and i64 %i.mn, -4                       ; 2 uses
  %i.mp = shl i64 %i.kl, 2
  %i.mq = getelementptr i8, ptr %0, i64 %i.mo
  %i.mr = getelementptr i8, ptr %i.mq, i64 %i.mp
  %scevgep585 = getelementptr i8, ptr %i.mr, i64 4
  %i.ms = getelementptr i8, ptr %3, i64 %i.mo
  %scevgep586 = getelementptr i8, ptr %i.ms, i64 4
  %bound0587 = icmp ult ptr %i.md, %scevgep586
  %bound1588 = icmp ult ptr %3, %scevgep585
  %found.conflict589 = and i1 %bound0587, %bound1588
  br i1 %found.conflict589, label %.lr.ph.i.i296.preheader691, label %vector.ph592

vector.ph592:                                     ; preds = %vector.memcheck584
  %n.vec593 = and i64 %i.mj, 9223372036854775800  ; 3 uses
  %i.mt = shl i64 %n.vec593, 2                    ; 2 uses
  %i.mu = getelementptr i8, ptr %i.md, i64 %i.mt  ; 2 uses
  %i.mv = getelementptr i8, ptr %3, i64 %i.mt
  br label %vector.body594

vector.body594:                                   ; preds = %vector.body594, %vector.ph592
  %index595 = phi i64 [ 0, %vector.ph592 ], [ %index.next600, %vector.body594 ] ; 2 uses
  %i.mw = shl i64 %index595, 2                    ; 2 uses
  %next.gep596 = getelementptr i8, ptr %i.md, i64 %i.mw ; 2 uses
  %next.gep597 = getelementptr i8, ptr %3, i64 %i.mw ; 3 uses
  %i.mx = getelementptr i8, ptr %next.gep597, i64 16 ; 2 uses
  %wide.load598 = load <4 x i32>, ptr %next.gep597, align 4, !tbaa !13, !alias.scope !106
  %wide.load599 = load <4 x i32>, ptr %i.mx, align 4, !tbaa !13, !alias.scope !106
  %i.my = getelementptr i8, ptr %next.gep596, i64 16
  store <4 x i32> %wide.load598, ptr %next.gep596, align 4, !tbaa !13, !alias.scope !109, !noalias !106
  store <4 x i32> %wide.load599, ptr %i.my, align 4, !tbaa !13, !alias.scope !109, !noalias !106
  store <4 x i32> zeroinitializer, ptr %next.gep597, align 4, !tbaa !13, !alias.scope !106
  store <4 x i32> zeroinitializer, ptr %i.mx, align 4, !tbaa !13, !alias.scope !106
  %index.next600 = add nuw i64 %index595, 8       ; 2 uses
  %i.mz = icmp eq i64 %index.next600, %n.vec593
  br i1 %i.mz, label %middle.block601, label %vector.body594, !llvm.loop !111

middle.block601:                                  ; preds = %vector.body594
  %cmp.n602 = icmp eq i64 %i.mj, %n.vec593
  br i1 %cmp.n602, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, label %.lr.ph.i.i296.preheader691

.lr.ph.i.i296.preheader691:                       ; preds = %vector.memcheck584, %.lr.ph.i.i296.preheader, %middle.block601
  %.010.i.i297.ph = phi ptr [ %i.md, %vector.memcheck584 ], [ %i.md, %.lr.ph.i.i296.preheader ], [ %i.mu, %middle.block601 ]
  %.079.i.i298.ph = phi ptr [ %3, %vector.memcheck584 ], [ %3, %.lr.ph.i.i296.preheader ], [ %i.mv, %middle.block601 ]
  br label %.lr.ph.i.i296

.lr.ph.i.i296:                                    ; preds = %.lr.ph.i.i296.preheader691, %.lr.ph.i.i296
  %.010.i.i297 = phi ptr [ %i.nc, %.lr.ph.i.i296 ], [ %.010.i.i297.ph, %.lr.ph.i.i296.preheader691 ] ; 2 uses
  %.079.i.i298 = phi ptr [ %i.nb, %.lr.ph.i.i296 ], [ %.079.i.i298.ph, %.lr.ph.i.i296.preheader691 ] ; 3 uses
  %i.na = load i32, ptr %.079.i.i298, align 4, !tbaa !13
  store i32 %i.na, ptr %.010.i.i297, align 4, !tbaa !13
  store i32 0, ptr %.079.i.i298, align 4, !tbaa !13
  %i.nb = getelementptr inbounds nuw i8, ptr %.079.i.i298, i64 4 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.010.i.i297, i64 4 ; 2 uses
  %.not.i.i299 = icmp eq ptr %i.nb, %i.b
  br i1 %.not.i.i299, label %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, label %.lr.ph.i.i296, !llvm.loop !112

_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300: ; preds = %.lr.ph.i.i296, %middle.block601, %bb.m
  %i.nd = phi ptr [ %i.md, %bb.m ], [ %i.mu, %middle.block601 ], [ %i.nc, %.lr.ph.i.i296 ] ; 2 uses
  %.not3.i301 = icmp eq ptr %i.nd, %i.b
  br i1 %.not3.i301, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i302

.lr.ph.i302:                                      ; preds = %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300, %.lr.ph.i302
  %storemerge4.i303 = phi ptr [ %i.ng, %.lr.ph.i302 ], [ %i.nd, %_ZN5boost9container24move_forward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit300 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i303, align 4, !tbaa !13
  %i.ne = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.nf = add i32 %i.ne, -1
  store i32 %i.nf, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.ng = getelementptr inbounds nuw i8, ptr %storemerge4.i303, i64 4 ; 2 uses
  %.not.i304 = icmp eq ptr %i.ng, %i.b
  br i1 %.not.i304, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i302, !llvm.loop !80

.critedge:                                        ; preds = %.lr.ph.i.i278.prol.loopexit, %.lr.ph.i.i278, %middle.block618, %bb.k, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit
  %.sroa.0400.2 = phi ptr [ %.sroa.0.0.lcssa.i.i247, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit ], [ %.lcssa694, %bb.k ], [ %i.jb, %middle.block618 ], [ %.lcssa689.unr, %.lr.ph.i.i278.prol.loopexit ], [ %i.kj, %.lr.ph.i.i278 ] ; 8 uses
  %.sroa.0400.2645 = ptrtoaddr ptr %.sroa.0400.2 to i64 ; 2 uses
  %i.nh = sub nuw i64 %4, %i.i                    ; 9 uses
  %i.ni = sub i64 %1, %i.f                        ; 8 uses
  %.not190 = icmp ult i64 %i.ni, %i.nh
  br i1 %.not190, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %.neg = mul i64 %i.nh, -4                       ; 2 uses
  %i.nj = getelementptr i8, ptr %i.b, i64 %.neg   ; 7 uses
  %.not16.i314 = icmp eq i64 %.neg, 0
  br i1 %.not16.i314, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i315

.lr.ph.i315:                                      ; preds = %bb.n, %.lr.ph.i315
  %.018.i316 = phi ptr [ %i.nn, %.lr.ph.i315 ], [ %i.nj, %bb.n ] ; 3 uses
  %.01517.i317 = phi ptr [ %i.no, %.lr.ph.i315 ], [ %i.b, %bb.n ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i317) ]
  %i.nk = load i32, ptr %.018.i316, align 4, !tbaa !13
  store i32 %i.nk, ptr %.01517.i317, align 4, !tbaa !13
  store i32 0, ptr %.018.i316, align 4, !tbaa !13
  %i.nl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.nm = add i32 %i.nl, 1
  store i32 %i.nm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.nn = getelementptr inbounds nuw i8, ptr %.018.i316, i64 4 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.01517.i317, i64 4
  %.not.i318 = icmp eq ptr %i.nn, %i.b
  br i1 %.not.i318, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit320, label %.lr.ph.i315, !llvm.loop !68

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit320: ; preds = %.lr.ph.i315
  %.not8.i.i322 = icmp eq ptr %3, %i.nj
  br i1 %.not8.i.i322, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i323.preheader

.lr.ph.i.i323.preheader:                          ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit320
  %i.np = shl i64 %1, 2
  %9 = add i64 %i.h, %i.d
  %i.nq = add i64 %9, %i.np
  %i.nr = add i64 %i.nq, -4
  %10 = shl i64 %4, 2
  %i.ns = add i64 %10, %i.c
  %i.nt = sub i64 %i.nr, %i.ns                    ; 2 uses
  %i.nu = lshr i64 %i.nt, 2
  %i.nv = add nuw nsw i64 %i.nu, 1                ; 2 uses
  %min.iters.check630 = icmp ult i64 %i.nt, 172
  br i1 %min.iters.check630, label %.lr.ph.i.i323.preheader687, label %vector.memcheck623

vector.memcheck623:                               ; preds = %.lr.ph.i.i323.preheader
  %i.nw = shl i64 %1, 2                           ; 3 uses
  %i.nx = add i64 %i.nw, -4
  %i.ny = add i64 %i.h, %i.d
  %i.nz = add i64 %i.ny, %i.nw
  %i.oa = add i64 %i.nz, -4
  %i.ob = shl i64 %4, 2                           ; 2 uses
  %i.oc = add i64 %i.ob, %i.c
  %i.od = sub i64 %i.oa, %i.oc
  %i.oe = and i64 %i.od, -4                       ; 2 uses
  %i.of = sub i64 %i.nx, %i.oe
  %scevgep624 = getelementptr i8, ptr %0, i64 %i.of
  %i.og = add i64 %i.h, %i.nw
  %i.oh = add i64 %i.og, -4
  %i.oi = add i64 %i.ob, %i.oe
  %i.oj = sub i64 %i.oh, %i.oi
  %scevgep625 = getelementptr i8, ptr %0, i64 %i.oj
  %bound0626 = icmp ult ptr %scevgep624, %i.nj
  %bound1627 = icmp ult ptr %scevgep625, %i.b
  %found.conflict628 = and i1 %bound0626, %bound1627
  br i1 %found.conflict628, label %.lr.ph.i.i323.preheader687, label %vector.ph631

vector.ph631:                                     ; preds = %vector.memcheck623
  %n.vec632 = and i64 %i.nv, 9223372036854775800  ; 3 uses
  %i.ok = mul i64 %n.vec632, -4                   ; 2 uses
  %i.ol = getelementptr i8, ptr %i.b, i64 %i.ok
  %i.om = getelementptr i8, ptr %i.nj, i64 %i.ok
  br label %vector.body633

vector.body633:                                   ; preds = %vector.body633, %vector.ph631
  %index634 = phi i64 [ 0, %vector.ph631 ], [ %index.next639, %vector.body633 ] ; 2 uses
  %i.on = mul i64 %index634, -4                   ; 2 uses
  %next.gep635 = getelementptr i8, ptr %i.b, i64 %i.on ; 2 uses
  %next.gep636 = getelementptr i8, ptr %i.nj, i64 %i.on ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %next.gep636, i64 -16 ; 2 uses
  %i.op = getelementptr inbounds i8, ptr %next.gep636, i64 -32 ; 2 uses
  %wide.load637 = load <4 x i32>, ptr %i.oo, align 4, !tbaa !13, !alias.scope !113
  %wide.load638 = load <4 x i32>, ptr %i.op, align 4, !tbaa !13, !alias.scope !113
  %i.oq = getelementptr inbounds i8, ptr %next.gep635, i64 -16
  %i.or = getelementptr inbounds i8, ptr %next.gep635, i64 -32
  store <4 x i32> %wide.load637, ptr %i.oq, align 4, !tbaa !13, !alias.scope !116, !noalias !113
  store <4 x i32> %wide.load638, ptr %i.or, align 4, !tbaa !13, !alias.scope !116, !noalias !113
  store <4 x i32> zeroinitializer, ptr %i.oo, align 4, !tbaa !13, !alias.scope !113
  store <4 x i32> zeroinitializer, ptr %i.op, align 4, !tbaa !13, !alias.scope !113
  %index.next639 = add nuw i64 %index634, 8       ; 2 uses
  %i.os = icmp eq i64 %index.next639, %n.vec632
  br i1 %i.os, label %middle.block640, label %vector.body633, !llvm.loop !118

middle.block640:                                  ; preds = %vector.body633
  %cmp.n641 = icmp eq i64 %i.nv, %n.vec632
  br i1 %cmp.n641, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i323.preheader687

.lr.ph.i.i323.preheader687:                       ; preds = %vector.memcheck623, %.lr.ph.i.i323.preheader, %middle.block640
  %.010.i.i324.ph = phi ptr [ %i.b, %vector.memcheck623 ], [ %i.b, %.lr.ph.i.i323.preheader ], [ %i.ol, %middle.block640 ]
  %.079.i.i325.ph = phi ptr [ %i.nj, %vector.memcheck623 ], [ %i.nj, %.lr.ph.i.i323.preheader ], [ %i.om, %middle.block640 ]
  br label %.lr.ph.i.i323

.lr.ph.i.i323:                                    ; preds = %.lr.ph.i.i323.preheader687, %.lr.ph.i.i323
  %.010.i.i324 = phi ptr [ %i.ou, %.lr.ph.i.i323 ], [ %.010.i.i324.ph, %.lr.ph.i.i323.preheader687 ]
  %.079.i.i325 = phi ptr [ %i.ot, %.lr.ph.i.i323 ], [ %.079.i.i325.ph, %.lr.ph.i.i323.preheader687 ]
  %i.ot = getelementptr inbounds i8, ptr %.079.i.i325, i64 -4 ; 4 uses
  %i.ou = getelementptr inbounds i8, ptr %.010.i.i324, i64 -4 ; 2 uses
  %i.ov = load i32, ptr %i.ot, align 4, !tbaa !13
  store i32 %i.ov, ptr %i.ou, align 4, !tbaa !13
  store i32 0, ptr %i.ot, align 4, !tbaa !13
  %.not.i.i326 = icmp eq ptr %3, %i.ot
  br i1 %.not.i.i326, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, label %.lr.ph.i.i323, !llvm.loop !119

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit: ; preds = %.lr.ph.i.i323, %middle.block640, %bb.n, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit320
  %.not6.i.i328 = icmp eq i64 %i.nh, 0
  br i1 %.not6.i.i328, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i329.preheader

.lr.ph.i.i329.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit
  %min.iters.check648 = icmp ult i64 %i.nh, 8
  %i.ow = sub i64 %.sroa.0400.2645, %i.c
  %diff.check646 = icmp ugt i64 %i.ow, -32
  %or.cond682 = select i1 %min.iters.check648, i1 true, i1 %diff.check646
  br i1 %or.cond682, label %.lr.ph.i.i329.preheader685, label %vector.ph649

vector.ph649:                                     ; preds = %.lr.ph.i.i329.preheader
  %n.vec650 = and i64 %i.nh, -8                   ; 3 uses
  %i.ox = and i64 %i.nh, 7
  %i.oy = shl i64 %n.vec650, 2                    ; 2 uses
  %i.oz = getelementptr i8, ptr %3, i64 %i.oy
  %i.pa = getelementptr i8, ptr %.sroa.0400.2, i64 %i.oy
  br label %vector.body651

vector.body651:                                   ; preds = %vector.body651, %vector.ph649
  %index652 = phi i64 [ 0, %vector.ph649 ], [ %index.next657, %vector.body651 ] ; 2 uses
  %i.pb = shl i64 %index652, 2                    ; 2 uses
  %next.gep653 = getelementptr i8, ptr %3, i64 %i.pb ; 2 uses
  %next.gep654 = getelementptr i8, ptr %.sroa.0400.2, i64 %i.pb ; 2 uses
  %i.pc = getelementptr i8, ptr %next.gep654, i64 16
  %wide.load655 = load <4 x i32>, ptr %next.gep654, align 4, !tbaa !13
  %wide.load656 = load <4 x i32>, ptr %i.pc, align 4, !tbaa !13
  %i.pd = getelementptr i8, ptr %next.gep653, i64 16
  store <4 x i32> %wide.load655, ptr %next.gep653, align 4, !tbaa !13
  store <4 x i32> %wide.load656, ptr %i.pd, align 4, !tbaa !13
  %index.next657 = add nuw i64 %index652, 8       ; 2 uses
  %i.pe = icmp eq i64 %index.next657, %n.vec650
  br i1 %i.pe, label %middle.block658, label %vector.body651, !llvm.loop !120

middle.block658:                                  ; preds = %vector.body651
  %cmp.n659 = icmp eq i64 %i.nh, %n.vec650
  br i1 %cmp.n659, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i329.preheader685

.lr.ph.i.i329.preheader685:                       ; preds = %.lr.ph.i.i329.preheader, %middle.block658
  %.09.i.i330.ph = phi i64 [ %i.nh, %.lr.ph.i.i329.preheader ], [ %i.ox, %middle.block658 ] ; 4 uses
  %.048.i.i331.ph = phi ptr [ %3, %.lr.ph.i.i329.preheader ], [ %i.oz, %middle.block658 ] ; 2 uses
  %.sroa.0.07.i.i332.ph = phi ptr [ %.sroa.0400.2, %.lr.ph.i.i329.preheader ], [ %i.pa, %middle.block658 ] ; 2 uses
  %i.pf = add i64 %.09.i.i330.ph, -1
  %xtraiter731 = and i64 %.09.i.i330.ph, 7        ; 2 uses
  %lcmp.mod732.not = icmp eq i64 %xtraiter731, 0
  br i1 %lcmp.mod732.not, label %.lr.ph.i.i329.prol.loopexit, label %.lr.ph.i.i329.prol

.lr.ph.i.i329.prol:                               ; preds = %.lr.ph.i.i329.preheader685, %.lr.ph.i.i329.prol
  %.09.i.i330.prol = phi i64 [ %i.pg, %.lr.ph.i.i329.prol ], [ %.09.i.i330.ph, %.lr.ph.i.i329.preheader685 ]
  %.048.i.i331.prol = phi ptr [ %i.pj, %.lr.ph.i.i329.prol ], [ %.048.i.i331.ph, %.lr.ph.i.i329.preheader685 ] ; 2 uses
  %.sroa.0.07.i.i332.prol = phi ptr [ %i.pi, %.lr.ph.i.i329.prol ], [ %.sroa.0.07.i.i332.ph, %.lr.ph.i.i329.preheader685 ] ; 2 uses
  %prol.iter733 = phi i64 [ %prol.iter733.next, %.lr.ph.i.i329.prol ], [ 0, %.lr.ph.i.i329.preheader685 ]
  %i.pg = add i64 %.09.i.i330.prol, -1            ; 2 uses
  %i.ph = load i32, ptr %.sroa.0.07.i.i332.prol, align 4, !tbaa !13
  store i32 %i.ph, ptr %.048.i.i331.prol, align 4, !tbaa !13
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332.prol, i64 4 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.048.i.i331.prol, i64 4 ; 2 uses
  %prol.iter733.next = add i64 %prol.iter733, 1   ; 2 uses
  %prol.iter733.cmp.not = icmp eq i64 %prol.iter733.next, %xtraiter731
  br i1 %prol.iter733.cmp.not, label %.lr.ph.i.i329.prol.loopexit, label %.lr.ph.i.i329.prol, !llvm.loop !121

.lr.ph.i.i329.prol.loopexit:                      ; preds = %.lr.ph.i.i329.prol, %.lr.ph.i.i329.preheader685
  %.09.i.i330.unr = phi i64 [ %.09.i.i330.ph, %.lr.ph.i.i329.preheader685 ], [ %i.pg, %.lr.ph.i.i329.prol ]
  %.048.i.i331.unr = phi ptr [ %.048.i.i331.ph, %.lr.ph.i.i329.preheader685 ], [ %i.pj, %.lr.ph.i.i329.prol ]
  %.sroa.0.07.i.i332.unr = phi ptr [ %.sroa.0.07.i.i332.ph, %.lr.ph.i.i329.preheader685 ], [ %i.pi, %.lr.ph.i.i329.prol ]
  %i.pk = icmp ult i64 %i.pf, 7
  br i1 %i.pk, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i329

.lr.ph.i.i329:                                    ; preds = %.lr.ph.i.i329.prol.loopexit, %.lr.ph.i.i329
  %.09.i.i330 = phi i64 [ %i.qg, %.lr.ph.i.i329 ], [ %.09.i.i330.unr, %.lr.ph.i.i329.prol.loopexit ]
  %.048.i.i331 = phi ptr [ %i.qj, %.lr.ph.i.i329 ], [ %.048.i.i331.unr, %.lr.ph.i.i329.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i332 = phi ptr [ %i.qi, %.lr.ph.i.i329 ], [ %.sroa.0.07.i.i332.unr, %.lr.ph.i.i329.prol.loopexit ] ; 9 uses
  %i.pl = load i32, ptr %.sroa.0.07.i.i332, align 4, !tbaa !13
  store i32 %i.pl, ptr %.048.i.i331, align 4, !tbaa !13
  %i.pm = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 4
  %i.pn = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 4
  %i.po = load i32, ptr %i.pm, align 4, !tbaa !13
  store i32 %i.po, ptr %i.pn, align 4, !tbaa !13
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 8
  %i.pr = load i32, ptr %i.pp, align 4, !tbaa !13
  store i32 %i.pr, ptr %i.pq, align 4, !tbaa !13
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 12
  %i.pt = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 12
  %i.pu = load i32, ptr %i.ps, align 4, !tbaa !13
  store i32 %i.pu, ptr %i.pt, align 4, !tbaa !13
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 16
  %i.px = load i32, ptr %i.pv, align 4, !tbaa !13
  store i32 %i.px, ptr %i.pw, align 4, !tbaa !13
  %i.py = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 20
  %i.pz = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 20
  %i.qa = load i32, ptr %i.py, align 4, !tbaa !13
  store i32 %i.qa, ptr %i.pz, align 4, !tbaa !13
  %i.qb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 24
  %i.qd = load i32, ptr %i.qb, align 4, !tbaa !13
  store i32 %i.qd, ptr %i.qc, align 4, !tbaa !13
  %i.qe = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 28
  %i.qf = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 28
  %i.qg = add i64 %.09.i.i330, -8                 ; 2 uses
  %i.qh = load i32, ptr %i.qe, align 4, !tbaa !13
  store i32 %i.qh, ptr %i.qf, align 4, !tbaa !13
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i332, i64 32
  %i.qj = getelementptr inbounds nuw i8, ptr %.048.i.i331, i64 32
  %.not.i.i333.7 = icmp eq i64 %i.qg, 0
  br i1 %.not.i.i333.7, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit225, label %.lr.ph.i.i329, !llvm.loop !122

bb.o:                                             ; preds = %.critedge
  %i.qk = sub nuw i64 %i.nh, %i.ni                ; 4 uses
  %.not16.i336 = icmp eq ptr %3, %i.b
  br i1 %.not16.i336, label %.loopexit, label %.lr.ph.i337.preheader

.lr.ph.i337.preheader:                            ; preds = %bb.o
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.qk
  br label %.lr.ph.i337

.lr.ph.i337:                                      ; preds = %.lr.ph.i337.preheader, %.lr.ph.i337
  %.018.i338 = phi ptr [ %i.qp, %.lr.ph.i337 ], [ %3, %.lr.ph.i337.preheader ] ; 3 uses
  %.01517.i339 = phi ptr [ %i.qq, %.lr.ph.i337 ], [ %i.ql, %.lr.ph.i337.preheader ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i339) ]
  %i.qm = load i32, ptr %.018.i338, align 4, !tbaa !13
  store i32 %i.qm, ptr %.01517.i339, align 4, !tbaa !13
  store i32 0, ptr %.018.i338, align 4, !tbaa !13
  %i.qn = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.qo = add i32 %i.qn, 1
  store i32 %i.qo, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
end_hunk_1
begin_hunk_2_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIS6_St6vectorIS4_SaIS4_EEEEEEEEvT0_mSG_SG_mT1_RT_:bb.a
  br i1 %prol.iter450.cmp.not, label %.lr.ph.i.i171.prol.loopexit, label %.lr.ph.i.i171.prol, !llvm.loop !139

.lr.ph.i.i171.prol.loopexit:                      ; preds = %.lr.ph.i.i171.prol, %.lr.ph.i.i171.preheader
  %.018.i.i172.unr = phi i64 [ %i.dz, %.lr.ph.i.i171.preheader ], [ %i.fz, %.lr.ph.i.i171.prol ]
  %.01417.i.i173.unr = phi ptr [ %i.d, %.lr.ph.i.i171.preheader ], [ %i.fy, %.lr.ph.i.i171.prol ]
  %.sroa.0.016.i.i174.unr = phi ptr [ %.sroa.0.016.i.i174.ph, %.lr.ph.i.i171.preheader ], [ %i.fx, %.lr.ph.i.i171.prol ]
  %i.ga = sub nsw i64 %i.j, %i.m
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177, label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171
  %.018.i.i172 = phi i64 [ %i.gt, %.lr.ph.i.i171 ], [ %.018.i.i172.unr, %.lr.ph.i.i171.prol.loopexit ]
  %.01417.i.i173 = phi ptr [ %i.gs, %.lr.ph.i.i171 ], [ %.01417.i.i173.unr, %.lr.ph.i.i171.prol.loopexit ] ; 6 uses
  %.sroa.0.016.i.i174 = phi ptr [ %i.gr, %.lr.ph.i.i171 ], [ %.sroa.0.016.i.i174.unr, %.lr.ph.i.i171.prol.loopexit ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01417.i.i173) ]
  %i.gc = load i32, ptr %.sroa.0.016.i.i174, align 4, !tbaa !13
  store i32 %i.gc, ptr %.01417.i.i173, align 4, !tbaa !13
  %i.gd = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11 ; 4 uses
  %i.ge = add i32 %i.gd, 1
  store i32 %i.ge, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 4
  %i.gh = load i32, ptr %i.gf, align 4, !tbaa !13
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !13
  %i.gi = add i32 %i.gd, 2
  store i32 %i.gi, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 8
  %i.gl = load i32, ptr %i.gj, align 4, !tbaa !13
  store i32 %i.gl, ptr %i.gk, align 4, !tbaa !13
  %i.gm = add i32 %i.gd, 3
  store i32 %i.gm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 12
  %i.go = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 12
  %i.gp = load i32, ptr %i.gn, align 4, !tbaa !13
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !13
  %i.gq = add i32 %i.gd, 4
  store i32 %i.gq, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.016.i.i174, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %.01417.i.i173, i64 16
  %i.gt = add i64 %.018.i.i172, -4                ; 2 uses
  %.not.i.i175.3 = icmp eq i64 %i.gt, 0
  br i1 %.not.i.i175.3, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177, label %.lr.ph.i.i171, !llvm.loop !71

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177: ; preds = %.lr.ph.i.i171, %.lr.ph.i.i171.prol.loopexit
  %.not.i178 = icmp eq ptr %3, %i.ec
  br i1 %.not.i178, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177
  %.not8.i.i179 = icmp eq ptr %0, %3
  br i1 %.not8.i.i179, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader

.lr.ph.i.i180.preheader:                          ; preds = %bb.g
  %i.gu = add i64 %i.h, -4
  %i.gv = sub i64 %i.gu, %i.c                     ; 2 uses
  %i.gw = lshr i64 %i.gv, 2
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.gv, 124
  br i1 %min.iters.check405, label %.lr.ph.i.i180.preheader421, label %vector.memcheck398

vector.memcheck398:                               ; preds = %.lr.ph.i.i180.preheader
  %i.gy = sub i64 %1, %i.ea
  %i.gz = shl i64 %i.gy, 2
  %i.ha = add i64 %i.gz, -4
  %i.hb = add i64 %i.h, -4
  %i.hc = sub i64 %i.hb, %i.c
  %i.hd = and i64 %i.hc, -4                       ; 2 uses
  %i.he = sub i64 %i.ha, %i.hd
  %scevgep399 = getelementptr i8, ptr %0, i64 %i.he
  %i.hf = sub nuw nsw i64 -4, %i.hd
  %scevgep400 = getelementptr i8, ptr %3, i64 %i.hf
  %bound0401 = icmp ult ptr %scevgep399, %3
  %bound1402 = icmp ult ptr %scevgep400, %i.ec
  %found.conflict403 = and i1 %bound0401, %bound1402
  br i1 %found.conflict403, label %.lr.ph.i.i180.preheader421, label %vector.ph406

vector.ph406:                                     ; preds = %vector.memcheck398
  %n.vec407 = and i64 %i.gx, 9223372036854775800  ; 3 uses
  %i.hg = mul i64 %n.vec407, -4                   ; 2 uses
  %i.hh = getelementptr i8, ptr %i.ec, i64 %i.hg  ; 2 uses
  %i.hi = getelementptr i8, ptr %3, i64 %i.hg
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next414, %vector.body408 ] ; 2 uses
  %i.hj = mul i64 %index409, -4                   ; 2 uses
  %next.gep410 = getelementptr i8, ptr %i.ec, i64 %i.hj ; 2 uses
  %next.gep411 = getelementptr i8, ptr %3, i64 %i.hj ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %next.gep411, i64 -16 ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %next.gep411, i64 -32 ; 2 uses
  %wide.load412 = load <4 x i32>, ptr %i.hk, align 4, !tbaa !13, !alias.scope !140
  %wide.load413 = load <4 x i32>, ptr %i.hl, align 4, !tbaa !13, !alias.scope !140
  %i.hm = getelementptr inbounds i8, ptr %next.gep410, i64 -16
  %i.hn = getelementptr inbounds i8, ptr %next.gep410, i64 -32
  store <4 x i32> %wide.load412, ptr %i.hm, align 4, !tbaa !13, !alias.scope !143, !noalias !140
  store <4 x i32> %wide.load413, ptr %i.hn, align 4, !tbaa !13, !alias.scope !143, !noalias !140
  store <4 x i32> zeroinitializer, ptr %i.hk, align 4, !tbaa !13, !alias.scope !140
  store <4 x i32> zeroinitializer, ptr %i.hl, align 4, !tbaa !13, !alias.scope !140
  %index.next414 = add nuw i64 %index409, 8       ; 2 uses
  %i.ho = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.ho, label %middle.block415, label %vector.body408, !llvm.loop !145

middle.block415:                                  ; preds = %vector.body408
  %cmp.n416 = icmp eq i64 %i.gx, %n.vec407
  br i1 %cmp.n416, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180.preheader421

.lr.ph.i.i180.preheader421:                       ; preds = %vector.memcheck398, %.lr.ph.i.i180.preheader, %middle.block415
  %.010.i.i181.ph = phi ptr [ %i.ec, %vector.memcheck398 ], [ %i.ec, %.lr.ph.i.i180.preheader ], [ %i.hh, %middle.block415 ]
  %.079.i.i182.ph = phi ptr [ %3, %vector.memcheck398 ], [ %3, %.lr.ph.i.i180.preheader ], [ %i.hi, %middle.block415 ]
  br label %.lr.ph.i.i180

.lr.ph.i.i180:                                    ; preds = %.lr.ph.i.i180.preheader421, %.lr.ph.i.i180
  %.010.i.i181 = phi ptr [ %i.hq, %.lr.ph.i.i180 ], [ %.010.i.i181.ph, %.lr.ph.i.i180.preheader421 ]
  %.079.i.i182 = phi ptr [ %i.hp, %.lr.ph.i.i180 ], [ %.079.i.i182.ph, %.lr.ph.i.i180.preheader421 ]
  %i.hp = getelementptr inbounds i8, ptr %.079.i.i182, i64 -4 ; 4 uses
  %i.hq = getelementptr inbounds i8, ptr %.010.i.i181, i64 -4 ; 3 uses
  %i.hr = load i32, ptr %i.hp, align 4, !tbaa !13
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !13
  store i32 0, ptr %i.hp, align 4, !tbaa !13
  %.not.i.i183 = icmp eq ptr %0, %i.hp
  br i1 %.not.i.i183, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, label %.lr.ph.i.i180, !llvm.loop !146

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184: ; preds = %.lr.ph.i.i180, %middle.block415, %bb.g
  %i.hs = phi ptr [ %i.ec, %bb.g ], [ %i.hh, %middle.block415 ], [ %i.hq, %.lr.ph.i.i180 ] ; 2 uses
  %.not3.i185 = icmp eq ptr %0, %i.hs
  br i1 %.not3.i185, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i186

.lr.ph.i186:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, %.lr.ph.i186
  %storemerge4.i187 = phi ptr [ %i.hv, %.lr.ph.i186 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i187, align 4, !tbaa !13
  %i.ht = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.hu = add i32 %i.ht, -1
  store i32 %i.hu, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.hv = getelementptr inbounds nuw i8, ptr %storemerge4.i187, i64 4 ; 2 uses
  %.not.i188 = icmp eq ptr %i.hv, %i.hs
  br i1 %.not.i188, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i186, !llvm.loop !80

bb.h:                                             ; preds = %bb.e
  %.idx = sub i64 0, %i.l
  %i.hw = getelementptr i8, ptr %i.d, i64 %.idx   ; 10 uses
  %.not17.i198 = icmp eq ptr %i.f, %i.d
  br i1 %.not17.i198, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i199.preheader

.lr.ph.i199.preheader:                            ; preds = %bb.h
  %i.hx = and i64 %i.l, 4
  %lcmp.mod440.not = icmp eq i64 %i.hx, 0
  br i1 %lcmp.mod440.not, label %.lr.ph.i199.prol.loopexit, label %.lr.ph.i199.prol

.lr.ph.i199.prol:                                 ; preds = %.lr.ph.i199.preheader
  %i.hy = add nsw i64 %i.m, -1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.hz = load i32, ptr %i.hw, align 4, !tbaa !13
  store i32 %i.hz, ptr %i.d, align 4, !tbaa !13
  store i32 0, ptr %i.hw, align 4, !tbaa !13
  %i.ia = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  %i.id = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  br label %.lr.ph.i199.prol.loopexit

.lr.ph.i199.prol.loopexit:                        ; preds = %.lr.ph.i199.prol, %.lr.ph.i199.preheader
  %.020.i200.unr = phi i64 [ %i.m, %.lr.ph.i199.preheader ], [ %i.hy, %.lr.ph.i199.prol ]
  %.0819.i201.unr = phi ptr [ %i.hw, %.lr.ph.i199.preheader ], [ %i.ic, %.lr.ph.i199.prol ]
  %.01618.i202.unr = phi ptr [ %i.d, %.lr.ph.i199.preheader ], [ %i.id, %.lr.ph.i199.prol ]
  %i.ie = icmp eq i64 %i.l, 4
  br i1 %i.ie, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.prol.loopexit, %.lr.ph.i199
  %.020.i200 = phi i64 [ %i.ik, %.lr.ph.i199 ], [ %.020.i200.unr, %.lr.ph.i199.prol.loopexit ]
  %.0819.i201 = phi ptr [ %i.io, %.lr.ph.i199 ], [ %.0819.i201.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  %.01618.i202 = phi ptr [ %i.ip, %.lr.ph.i199 ], [ %.01618.i202.unr, %.lr.ph.i199.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01618.i202) ]
  %i.if = load i32, ptr %.0819.i201, align 4, !tbaa !13
  store i32 %i.if, ptr %.01618.i202, align 4, !tbaa !13
  store i32 0, ptr %.0819.i201, align 4, !tbaa !13
  %i.ig = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.ih = add i32 %i.ig, 1
  store i32 %i.ih, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.ii = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 4 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 4
  %i.ik = add i64 %.020.i200, -2                  ; 2 uses
  %i.il = load i32, ptr %i.ii, align 4, !tbaa !13
  store i32 %i.il, ptr %i.ij, align 4, !tbaa !13
  store i32 0, ptr %i.ii, align 4, !tbaa !13
  %i.im = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.in = add i32 %i.im, 1
  store i32 %i.in, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !11
  %i.io = getelementptr inbounds nuw i8, ptr %.0819.i201, i64 8
  %i.ip = getelementptr inbounds nuw i8, ptr %.01618.i202, i64 8
  %.not.i203.1 = icmp eq i64 %i.ik, 0
  br i1 %.not.i203.1, label %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205, label %.lr.ph.i199, !llvm.loop !72

_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205: ; preds = %.lr.ph.i199, %.lr.ph.i199.prol.loopexit
  %.not8.i.i207 = icmp eq ptr %3, %i.hw
  br i1 %.not8.i.i207, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader

.lr.ph.i.i208.preheader:                          ; preds = %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.iq = shl nsw i64 %1, 2
  %i.ir = shl i64 %i.c, 1
  %7 = add i64 %i.iq, %i.ir
  %i.is = add i64 %7, -4
  %i.it = add i64 %i.b, %i.h
  %8 = shl i64 %4, 2
  %i.iu = add i64 %i.it, %8
  %i.iv = sub i64 %i.is, %i.iu                    ; 2 uses
  %i.iw = lshr i64 %i.iv, 2
  %i.ix = add nuw nsw i64 %i.iw, 1                ; 2 uses
  %min.iters.check328 = icmp ult i64 %i.iv, 188
  br i1 %min.iters.check328, label %.lr.ph.i.i208.preheader428, label %vector.memcheck321

vector.memcheck321:                               ; preds = %.lr.ph.i.i208.preheader
  %i.iy = shl nsw i64 %1, 2                       ; 3 uses
  %i.iz = add i64 %i.iy, -4
  %i.ja = shl i64 %i.c, 1
  %i.jb = add i64 %i.iy, %i.ja
  %i.jc = add i64 %i.jb, -4
  %i.jd = add i64 %i.b, %i.h
  %i.je = shl i64 %4, 2                           ; 2 uses
  %i.jf = add i64 %i.jd, %i.je
  %i.jg = sub i64 %i.jc, %i.jf
  %i.jh = and i64 %i.jg, -4                       ; 2 uses
  %i.ji = sub i64 %i.iz, %i.jh
  %scevgep322 = getelementptr i8, ptr %0, i64 %i.ji
  %i.jj = add i64 %i.iy, %i.c
  %i.jk = add i64 %i.jj, -4
  %i.jl = add i64 %i.je, %i.b
  %i.jm = add i64 %i.jl, %i.jh
  %i.jn = sub i64 %i.jk, %i.jm
  %scevgep323 = getelementptr i8, ptr %0, i64 %i.jn
  %bound0324 = icmp ult ptr %scevgep322, %i.hw
  %bound1325 = icmp ult ptr %scevgep323, %i.d
  %found.conflict326 = and i1 %bound0324, %bound1325
  br i1 %found.conflict326, label %.lr.ph.i.i208.preheader428, label %vector.ph329

vector.ph329:                                     ; preds = %vector.memcheck321
  %n.vec330 = and i64 %i.ix, 9223372036854775800  ; 3 uses
  %i.jo = mul i64 %n.vec330, -4                   ; 2 uses
  %i.jp = getelementptr i8, ptr %i.d, i64 %i.jo   ; 2 uses
  %i.jq = getelementptr i8, ptr %i.hw, i64 %i.jo
  br label %vector.body331

vector.body331:                                   ; preds = %vector.body331, %vector.ph329
  %index332 = phi i64 [ 0, %vector.ph329 ], [ %index.next337, %vector.body331 ] ; 2 uses
  %i.jr = mul i64 %index332, -4                   ; 2 uses
  %next.gep333 = getelementptr i8, ptr %i.d, i64 %i.jr ; 2 uses
  %next.gep334 = getelementptr i8, ptr %i.hw, i64 %i.jr ; 2 uses
  %i.js = getelementptr inbounds i8, ptr %next.gep334, i64 -16 ; 2 uses
  %i.jt = getelementptr inbounds i8, ptr %next.gep334, i64 -32 ; 2 uses
  %wide.load335 = load <4 x i32>, ptr %i.js, align 4, !tbaa !13, !alias.scope !147
  %wide.load336 = load <4 x i32>, ptr %i.jt, align 4, !tbaa !13, !alias.scope !147
  %i.ju = getelementptr inbounds i8, ptr %next.gep333, i64 -16
  %i.jv = getelementptr inbounds i8, ptr %next.gep333, i64 -32
  store <4 x i32> %wide.load335, ptr %i.ju, align 4, !tbaa !13, !alias.scope !150, !noalias !147
  store <4 x i32> %wide.load336, ptr %i.jv, align 4, !tbaa !13, !alias.scope !150, !noalias !147
  store <4 x i32> zeroinitializer, ptr %i.js, align 4, !tbaa !13, !alias.scope !147
  store <4 x i32> zeroinitializer, ptr %i.jt, align 4, !tbaa !13, !alias.scope !147
  %index.next337 = add nuw i64 %index332, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next337, %n.vec330
  br i1 %i.jw, label %middle.block338, label %vector.body331, !llvm.loop !152

middle.block338:                                  ; preds = %vector.body331
  %cmp.n339 = icmp eq i64 %i.ix, %n.vec330
  br i1 %cmp.n339, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208.preheader428

.lr.ph.i.i208.preheader428:                       ; preds = %vector.memcheck321, %.lr.ph.i.i208.preheader, %middle.block338
  %.010.i.i209.ph = phi ptr [ %i.d, %vector.memcheck321 ], [ %i.d, %.lr.ph.i.i208.preheader ], [ %i.jp, %middle.block338 ]
  %.079.i.i210.ph = phi ptr [ %i.hw, %vector.memcheck321 ], [ %i.hw, %.lr.ph.i.i208.preheader ], [ %i.jq, %middle.block338 ]
  br label %.lr.ph.i.i208

.lr.ph.i.i208:                                    ; preds = %.lr.ph.i.i208.preheader428, %.lr.ph.i.i208
  %.010.i.i209 = phi ptr [ %i.jy, %.lr.ph.i.i208 ], [ %.010.i.i209.ph, %.lr.ph.i.i208.preheader428 ]
  %.079.i.i210 = phi ptr [ %i.jx, %.lr.ph.i.i208 ], [ %.079.i.i210.ph, %.lr.ph.i.i208.preheader428 ]
  %i.jx = getelementptr inbounds i8, ptr %.079.i.i210, i64 -4 ; 4 uses
  %i.jy = getelementptr inbounds i8, ptr %.010.i.i209, i64 -4 ; 3 uses
  %i.jz = load i32, ptr %i.jx, align 4, !tbaa !13
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !13
  store i32 0, ptr %i.jx, align 4, !tbaa !13
  %.not.i.i211 = icmp eq ptr %3, %i.jx
  br i1 %.not.i.i211, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212, label %.lr.ph.i.i208, !llvm.loop !153

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212: ; preds = %.lr.ph.i.i208, %middle.block338, %bb.h, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205
  %i.ka = phi ptr [ %3, %bb.h ], [ %i.d, %_ZN5boost9container26uninitialized_move_alloc_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_mSA_.exit205 ], [ %i.jp, %middle.block338 ], [ %i.jy, %.lr.ph.i.i208 ] ; 3 uses
  %i.kb = ptrtoaddr ptr %i.ka to i64
  %i.kc = sub i64 0, %4
  %i.kd = getelementptr [4 x i8], ptr %i.ka, i64 %i.kc ; 11 uses
  %.not6.i.i214 = icmp eq i64 %4, 0
  br i1 %.not6.i.i214, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader

.lr.ph.i.i215.preheader:                          ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %min.iters.check344 = icmp ult i64 %4, 16
  br i1 %min.iters.check344, label %.lr.ph.i.i215.preheader427, label %vector.memcheck342

vector.memcheck342:                               ; preds = %.lr.ph.i.i215.preheader
  %i.ke = shl i64 %4, 2
  %i.kf = add i64 %i.ke, %i.a
  %i.kg = sub i64 %i.kf, %i.kb
  %diff.check = icmp ugt i64 %i.kg, -32
  br i1 %diff.check, label %.lr.ph.i.i215.preheader427, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck342
  %n.vec346 = and i64 %4, -8                      ; 3 uses
  %i.kh = and i64 %4, 7
  %i.ki = shl i64 %n.vec346, 2                    ; 2 uses
  %i.kj = getelementptr i8, ptr %i.kd, i64 %i.ki
  %i.kk = getelementptr i8, ptr %5, i64 %i.ki
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next353, %vector.body347 ] ; 2 uses
  %i.kl = shl i64 %index348, 2                    ; 2 uses
  %next.gep349 = getelementptr i8, ptr %i.kd, i64 %i.kl ; 2 uses
  %next.gep350 = getelementptr i8, ptr %5, i64 %i.kl ; 2 uses
  %i.km = getelementptr i8, ptr %next.gep350, i64 16
  %wide.load351 = load <4 x i32>, ptr %next.gep350, align 4, !tbaa !13
  %wide.load352 = load <4 x i32>, ptr %i.km, align 4, !tbaa !13
  %i.kn = getelementptr i8, ptr %next.gep349, i64 16
  store <4 x i32> %wide.load351, ptr %next.gep349, align 4, !tbaa !13
  store <4 x i32> %wide.load352, ptr %i.kn, align 4, !tbaa !13
  %index.next353 = add nuw i64 %index348, 8       ; 2 uses
  %i.ko = icmp eq i64 %index.next353, %n.vec346
  br i1 %i.ko, label %middle.block354, label %vector.body347, !llvm.loop !154

middle.block354:                                  ; preds = %vector.body347
  %cmp.n355 = icmp eq i64 %4, %n.vec346
  br i1 %cmp.n355, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215.preheader427

.lr.ph.i.i215.preheader427:                       ; preds = %vector.memcheck342, %.lr.ph.i.i215.preheader, %middle.block354
  %.09.i.i216.ph = phi i64 [ %4, %vector.memcheck342 ], [ %4, %.lr.ph.i.i215.preheader ], [ %i.kh, %middle.block354 ] ; 4 uses
  %.048.i.i217.ph = phi ptr [ %i.kd, %vector.memcheck342 ], [ %i.kd, %.lr.ph.i.i215.preheader ], [ %i.kj, %middle.block354 ] ; 2 uses
  %.sroa.0.07.i.i218.ph = phi ptr [ %5, %vector.memcheck342 ], [ %5, %.lr.ph.i.i215.preheader ], [ %i.kk, %middle.block354 ] ; 2 uses
  %i.kp = add i64 %.09.i.i216.ph, -1
  %xtraiter442 = and i64 %.09.i.i216.ph, 7        ; 2 uses
  %lcmp.mod443.not = icmp eq i64 %xtraiter442, 0
  br i1 %lcmp.mod443.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol

.lr.ph.i.i215.prol:                               ; preds = %.lr.ph.i.i215.preheader427, %.lr.ph.i.i215.prol
  %.09.i.i216.prol = phi i64 [ %i.kq, %.lr.ph.i.i215.prol ], [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader427 ]
  %.048.i.i217.prol = phi ptr [ %i.kt, %.lr.ph.i.i215.prol ], [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader427 ] ; 2 uses
  %.sroa.0.07.i.i218.prol = phi ptr [ %i.ks, %.lr.ph.i.i215.prol ], [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader427 ] ; 2 uses
  %prol.iter444 = phi i64 [ %prol.iter444.next, %.lr.ph.i.i215.prol ], [ 0, %.lr.ph.i.i215.preheader427 ]
  %i.kq = add i64 %.09.i.i216.prol, -1            ; 2 uses
  %i.kr = load i32, ptr %.sroa.0.07.i.i218.prol, align 4, !tbaa !13
  store i32 %i.kr, ptr %.048.i.i217.prol, align 4, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218.prol, i64 4 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.048.i.i217.prol, i64 4 ; 2 uses
  %prol.iter444.next = add i64 %prol.iter444, 1   ; 2 uses
  %prol.iter444.cmp.not = icmp eq i64 %prol.iter444.next, %xtraiter442
  br i1 %prol.iter444.cmp.not, label %.lr.ph.i.i215.prol.loopexit, label %.lr.ph.i.i215.prol, !llvm.loop !155

.lr.ph.i.i215.prol.loopexit:                      ; preds = %.lr.ph.i.i215.prol, %.lr.ph.i.i215.preheader427
  %.09.i.i216.unr = phi i64 [ %.09.i.i216.ph, %.lr.ph.i.i215.preheader427 ], [ %i.kq, %.lr.ph.i.i215.prol ]
  %.048.i.i217.unr = phi ptr [ %.048.i.i217.ph, %.lr.ph.i.i215.preheader427 ], [ %i.kt, %.lr.ph.i.i215.prol ]
  %.sroa.0.07.i.i218.unr = phi ptr [ %.sroa.0.07.i.i218.ph, %.lr.ph.i.i215.preheader427 ], [ %i.ks, %.lr.ph.i.i215.prol ]
  %i.ku = icmp ult i64 %i.kp, 7
  br i1 %i.ku, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215

.lr.ph.i.i215:                                    ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215
  %.09.i.i216 = phi i64 [ %i.lq, %.lr.ph.i.i215 ], [ %.09.i.i216.unr, %.lr.ph.i.i215.prol.loopexit ]
  %.048.i.i217 = phi ptr [ %i.lt, %.lr.ph.i.i215 ], [ %.048.i.i217.unr, %.lr.ph.i.i215.prol.loopexit ] ; 9 uses
  %.sroa.0.07.i.i218 = phi ptr [ %i.ls, %.lr.ph.i.i215 ], [ %.sroa.0.07.i.i218.unr, %.lr.ph.i.i215.prol.loopexit ] ; 9 uses
  %i.kv = load i32, ptr %.sroa.0.07.i.i218, align 4, !tbaa !13
  store i32 %i.kv, ptr %.048.i.i217, align 4, !tbaa !13
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 4
  %i.kx = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 4
  %i.ky = load i32, ptr %i.kw, align 4, !tbaa !13
  store i32 %i.ky, ptr %i.kx, align 4, !tbaa !13
  %i.kz = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 8
  %i.lb = load i32, ptr %i.kz, align 4, !tbaa !13
  store i32 %i.lb, ptr %i.la, align 4, !tbaa !13
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 12
  %i.ld = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 12
  %i.le = load i32, ptr %i.lc, align 4, !tbaa !13
  store i32 %i.le, ptr %i.ld, align 4, !tbaa !13
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 16
  %i.lg = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 16
  %i.lh = load i32, ptr %i.lf, align 4, !tbaa !13
  store i32 %i.lh, ptr %i.lg, align 4, !tbaa !13
  %i.li = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 20
  %i.lj = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 20
  %i.lk = load i32, ptr %i.li, align 4, !tbaa !13
  store i32 %i.lk, ptr %i.lj, align 4, !tbaa !13
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 24
  %i.ln = load i32, ptr %i.ll, align 4, !tbaa !13
  store i32 %i.ln, ptr %i.lm, align 4, !tbaa !13
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 28
  %i.lp = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 28
  %i.lq = add i64 %.09.i.i216, -8                 ; 2 uses
  %i.lr = load i32, ptr %i.lo, align 4, !tbaa !13
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !13
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 32
  %i.lt = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 32
  %.not.i.i219.7 = icmp eq i64 %i.lq, 0
  br i1 %.not.i.i219.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !156

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %middle.block354, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.kd
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
end_hunk_2
