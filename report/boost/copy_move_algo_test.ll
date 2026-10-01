Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/copy_move_algo_test?download=true
inline.NumInlined: 397
inline.NumDeleted: 159
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN5boost9container53expand_backward_forward_and_insert_alloc_move_forwardINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_N9__gnu_cxx17__normal_iteratorIS6_St6vectorIS4_SaIS4_EEEEEEEEvT0_mSG_SG_mT1_RT_:bb.a
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !19
  %i.lq = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 20
  %i.lr = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 20
  %i.ls = load i32, ptr %i.lq, align 4, !tbaa !19
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !19
  %i.lt = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 24
  %i.lu = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 24
  %i.lv = load i32, ptr %i.lt, align 4, !tbaa !19
  store i32 %i.lv, ptr %i.lu, align 4, !tbaa !19
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 28
  %i.lx = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 28
  %i.ly = add i64 %.09.i.i216, -8                 ; 2 uses
  %i.lz = load i32, ptr %i.lw, align 4, !tbaa !19
  store i32 %i.lz, ptr %i.lx, align 4, !tbaa !19
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i218, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %.048.i.i217, i64 32
  %.not.i.i219.7 = icmp eq i64 %i.ly, 0
  br i1 %.not.i.i219.7, label %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, label %.lr.ph.i.i215, !llvm.loop !150

_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221: ; preds = %.lr.ph.i.i215.prol.loopexit, %.lr.ph.i.i215, %middle.block357, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit212
  %.not.i222 = icmp eq ptr %3, %i.kl
  br i1 %.not.i222, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221
  %.not8.i.i223 = icmp eq ptr %0, %3
  br i1 %.not8.i.i223, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader

.lr.ph.i.i224.preheader:                          ; preds = %bb.i
  %i.mc = ptrtoaddr ptr %0 to i64
  %i.md = add i64 %i.g, -4
  %i.me = sub i64 %i.md, %i.mc                    ; 3 uses
  %i.mf = lshr i64 %i.me, 2
  %i.mg = add nuw nsw i64 %i.mf, 1                ; 2 uses
  %min.iters.check368 = icmp ult i64 %i.me, 108
  br i1 %min.iters.check368, label %.lr.ph.i.i224.preheader434, label %vector.memcheck369

vector.memcheck369:                               ; preds = %.lr.ph.i.i224.preheader
  %i.mh = shl i64 %4, 2
  %i.mi = and i64 %i.me, -4                       ; 2 uses
  %i.mj = add i64 %i.mh, %i.mi
  %i.mk = sub nuw nsw i64 -4, %i.mj
  %i.ml = getelementptr i8, ptr %i.ki, i64 %i.mk
  %i.mm = sub nuw nsw i64 -4, %i.mi
  %i.mn = getelementptr i8, ptr %3, i64 %i.mm
  %bound0370 = icmp ult ptr %i.ml, %3
  %bound1371 = icmp ult ptr %i.mn, %i.kl
  %found.conflict372 = and i1 %bound0370, %bound1371
  br i1 %found.conflict372, label %.lr.ph.i.i224.preheader434, label %vector.ph373

vector.ph373:                                     ; preds = %vector.memcheck369
  %n.vec374 = and i64 %i.mg, 9223372036854775800  ; 3 uses
  %i.mo = mul i64 %n.vec374, -4                   ; 2 uses
  %i.mp = getelementptr i8, ptr %i.kl, i64 %i.mo  ; 2 uses
  %i.mq = getelementptr i8, ptr %3, i64 %i.mo
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next381, %vector.body375 ] ; 2 uses
  %i.mr = mul i64 %index376, -4                   ; 2 uses
  %next.gep377 = getelementptr i8, ptr %i.kl, i64 %i.mr ; 2 uses
  %next.gep378 = getelementptr i8, ptr %3, i64 %i.mr ; 2 uses
  %i.ms = getelementptr inbounds i8, ptr %next.gep378, i64 -16 ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %next.gep378, i64 -32 ; 2 uses
  %wide.load379 = load <4 x i32>, ptr %i.ms, align 4, !tbaa !19, !alias.scope !162
  %wide.load380 = load <4 x i32>, ptr %i.mt, align 4, !tbaa !19, !alias.scope !162
  %i.mu = getelementptr inbounds i8, ptr %next.gep377, i64 -16
  %i.mv = getelementptr inbounds i8, ptr %next.gep377, i64 -32
  store <4 x i32> %wide.load379, ptr %i.mu, align 4, !tbaa !19, !alias.scope !163, !noalias !162
  store <4 x i32> %wide.load380, ptr %i.mv, align 4, !tbaa !19, !alias.scope !163, !noalias !162
  store <4 x i32> zeroinitializer, ptr %i.ms, align 4, !tbaa !19, !alias.scope !162
  store <4 x i32> zeroinitializer, ptr %i.mt, align 4, !tbaa !19, !alias.scope !162
  %index.next381 = add nuw i64 %index376, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next381, %n.vec374
  br i1 %i.mw, label %middle.block382, label %vector.body375, !llvm.loop !154

middle.block382:                                  ; preds = %vector.body375
  %cmp.n383 = icmp eq i64 %i.mg, %n.vec374
  br i1 %cmp.n383, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224.preheader434

.lr.ph.i.i224.preheader434:                       ; preds = %vector.memcheck369, %.lr.ph.i.i224.preheader, %middle.block382
  %.010.i.i225.ph = phi ptr [ %i.kl, %vector.memcheck369 ], [ %i.kl, %.lr.ph.i.i224.preheader ], [ %i.mp, %middle.block382 ]
  %.079.i.i226.ph = phi ptr [ %3, %vector.memcheck369 ], [ %3, %.lr.ph.i.i224.preheader ], [ %i.mq, %middle.block382 ]
  br label %.lr.ph.i.i224

.lr.ph.i.i224:                                    ; preds = %.lr.ph.i.i224.preheader434, %.lr.ph.i.i224
  %.010.i.i225 = phi ptr [ %i.my, %.lr.ph.i.i224 ], [ %.010.i.i225.ph, %.lr.ph.i.i224.preheader434 ]
  %.079.i.i226 = phi ptr [ %i.mx, %.lr.ph.i.i224 ], [ %.079.i.i226.ph, %.lr.ph.i.i224.preheader434 ]
  %i.mx = getelementptr inbounds i8, ptr %.079.i.i226, i64 -4 ; 4 uses
  %i.my = getelementptr inbounds i8, ptr %.010.i.i225, i64 -4 ; 3 uses
  %i.mz = load i32, ptr %i.mx, align 4, !tbaa !19
  store i32 %i.mz, ptr %i.my, align 4, !tbaa !19
  store i32 0, ptr %i.mx, align 4, !tbaa !19
  %.not.i.i227 = icmp eq ptr %0, %i.mx
  br i1 %.not.i.i227, label %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, label %.lr.ph.i.i224, !llvm.loop !155

_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228: ; preds = %.lr.ph.i.i224, %middle.block382, %bb.i
  %i.na = phi ptr [ %i.kl, %bb.i ], [ %i.mp, %middle.block382 ], [ %i.my, %.lr.ph.i.i224 ] ; 2 uses
  %.not3.i229 = icmp eq ptr %0, %i.na
  br i1 %.not3.i229, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i230

.lr.ph.i230:                                      ; preds = %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, %.lr.ph.i230
  %storemerge4.i231 = phi ptr [ %i.nd, %.lr.ph.i230 ], [ %0, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228 ] ; 2 uses
  store i32 -2147483648, ptr %storemerge4.i231, align 4, !tbaa !19
  %i.nb = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.nc = add i32 %i.nb, -1
  store i32 %i.nc, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.nd = getelementptr inbounds nuw i8, ptr %storemerge4.i231, i64 4 ; 2 uses
  %.not.i232 = icmp eq ptr %i.nd, %i.na
  br i1 %.not.i232, label %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149, label %.lr.ph.i230, !llvm.loop !5

_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit149: ; preds = %.preheader.prol.loopexit, %.preheader, %.lr.ph.i142, %.lr.ph.i230, %.lr.ph.i186, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE17copy_n_and_updateIS9_EEvRS6_T_m.exit221, %_ZN5boost9container3dtl18insert_range_proxyINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEN9__gnu_cxx17__normal_iteratorIPS5_St6vectorIS5_SaIS5_EEEEE31uninitialized_copy_n_and_updateIS9_EEvRS6_T_m.exit177, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit228, %_ZN5boost9container25move_backward_overlappingIPNS0_4test24movable_and_copyable_intEEET_S5_S5_S5_.exit184, %_ZN5boost9container3dtl19scoped_destructor_nINS0_13new_allocatorINS0_4test24movable_and_copyable_intEEEPS5_ED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEvSA_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not103 = icmp eq ptr %2, %3
  br i1 %.not103, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 21 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j
  %.not = icmp ult i64 %i.k, %i.c
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.m = sub i64 %i.j, %i.l                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.c
  %i.p = getelementptr i8, ptr %i.h, i64 %.idx    ; 7 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.q = load i32, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !19
  store i32 %i.q, ptr %.013.i.i.i.i.i, align 4, !tbaa !19
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i, align 4, !tbaa !19
  %i.r = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !164

_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.v, ptr %i.g, align 8, !tbaa !24
  %i.w = ptrtoint ptr %i.p to i64
  %i.x = sub i64 %i.w, %i.l                       ; 2 uses
  %i.y = ashr exact i64 %i.x, 2                   ; 8 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i51.preheader, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit

.lr.ph.i.i.i.i.i51.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %min.iters.check139 = icmp ult i64 %i.y, 16
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i51.preheader219, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader
  %i.aa = mul nsw i64 %i.y, -4
  %i.ab = getelementptr i8, ptr %i.h, i64 %i.aa
  %i.ac = add i64 %i.x, %i.a
  %i.ad = sub i64 %i.b, %i.ac
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ad
  %bound0 = icmp ult ptr %i.ab, %i.p
  %bound1 = icmp ult ptr %i.ae, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i51.preheader219, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck140
  %n.vec142 = and i64 %i.y, 9223372036854775800   ; 3 uses
  %i.af = and i64 %i.y, 7
  %i.ag = mul i64 %n.vec142, -4                   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.h, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.p, i64 %i.ag
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.aj = mul i64 %index144, -4                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.h, i64 %i.aj ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.p, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !19, !alias.scope !181
  %wide.load148 = load <4 x i32>, ptr %i.al, align 4, !tbaa !19, !alias.scope !181
  %i.am = getelementptr inbounds i8, ptr %next.gep145, i64 -16
  %i.an = getelementptr inbounds i8, ptr %next.gep145, i64 -32
  store <4 x i32> %wide.load147, ptr %i.am, align 4, !tbaa !19, !alias.scope !182, !noalias !181
  store <4 x i32> %wide.load148, ptr %i.an, align 4, !tbaa !19, !alias.scope !182, !noalias !181
  store <4 x i32> zeroinitializer, ptr %i.ak, align 4, !tbaa !19, !alias.scope !181
  store <4 x i32> zeroinitializer, ptr %i.al, align 4, !tbaa !19, !alias.scope !181
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.ao = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.ao, label %middle.block150, label %vector.body143, !llvm.loop !168

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.y, %n.vec142
  br i1 %cmp.n151, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.i51.preheader219

.lr.ph.i.i.i.i.i51.preheader219:                  ; preds = %vector.memcheck140, %.lr.ph.i.i.i.i.i51.preheader, %middle.block150
  %.010.i.i.i.i.i.ph = phi i64 [ %i.y, %vector.memcheck140 ], [ %i.y, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.af, %middle.block150 ]
  %.069.i.i.i.i.i.ph = phi ptr [ %i.h, %vector.memcheck140 ], [ %i.h, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.ah, %middle.block150 ]
  %.078.i.i.i.i.i.ph = phi ptr [ %i.p, %vector.memcheck140 ], [ %i.p, %.lr.ph.i.i.i.i.i51.preheader ], [ %i.ai, %middle.block150 ]
  br label %.lr.ph.i.i.i.i.i51

.lr.ph.i.i.i.i.i51:                               ; preds = %.lr.ph.i.i.i.i.i51.preheader219, %.lr.ph.i.i.i.i.i51
  %.010.i.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i51 ], [ %.010.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader219 ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i51 ], [ %.069.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader219 ]
  %.078.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i51 ], [ %.078.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i51.preheader219 ]
  %i.ap = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4 ; 2 uses
  %i.ar = load i32, ptr %i.ap, align 4, !tbaa !19
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !19
  store i32 0, ptr %i.ap, align 4, !tbaa !19
  %i.as = add nsw i64 %.010.i.i.i.i.i, -1
  %i.at = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i51, label %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, !llvm.loop !169

_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i51, %middle.block150, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.au = icmp sgt i64 %i.d, 0
  br i1 %i.au, label %.lr.ph.i.i.i.i.i52.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i52.preheader:                     ; preds = %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit
  %min.iters.check158 = icmp ult i64 %i.d, 8
  %i.av = sub i64 %i.b, %i.l
  %diff.check156 = icmp ugt i64 %i.av, -32
  %or.cond = or i1 %min.iters.check158, %diff.check156
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i52.preheader218, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.i.i.i.i.i52.preheader
  %n.vec160 = and i64 %i.d, 9223372036854775800   ; 3 uses
  %i.aw = and i64 %i.d, 7
  %i.ax = shl i64 %n.vec160, 2                    ; 2 uses
  %i.ay = getelementptr i8, ptr %1, i64 %i.ax
  %i.az = getelementptr i8, ptr %2, i64 %i.ax
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %i.ba = shl i64 %index162, 2                    ; 2 uses
  %next.gep163 = getelementptr i8, ptr %1, i64 %i.ba ; 2 uses
  %next.gep164 = getelementptr i8, ptr %2, i64 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %next.gep164, i64 16
  %wide.load165 = load <4 x i32>, ptr %next.gep164, align 4, !tbaa !19
  %wide.load166 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !19
  %i.bc = getelementptr i8, ptr %next.gep163, i64 16
  store <4 x i32> %wide.load165, ptr %next.gep163, align 4, !tbaa !19
  store <4 x i32> %wide.load166, ptr %i.bc, align 4, !tbaa !19
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.bd, label %middle.block168, label %vector.body161, !llvm.loop !170

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.d, %n.vec160
  br i1 %cmp.n169, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i52.preheader218

.lr.ph.i.i.i.i.i52.preheader218:                  ; preds = %.lr.ph.i.i.i.i.i52.preheader, %middle.block168
  %.012.i.i.i.i.i.ph = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.aw, %middle.block168 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.ay, %middle.block168 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i52.preheader ], [ %i.az, %middle.block168 ]
  br label %.lr.ph.i.i.i.i.i52

.lr.ph.i.i.i.i.i52:                               ; preds = %.lr.ph.i.i.i.i.i52.preheader218, %.lr.ph.i.i.i.i.i52
  %.012.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i52 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader218 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i52 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader218 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i52 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.preheader218 ] ; 2 uses
  %i.be = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !19
  store i32 %i.be, ptr %.0811.i.i.i.i.i, align 4, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  %i.bh = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i52, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !171

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bj = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not11.i.i.i.i = icmp eq ptr %i.bj, %3
  br i1 %.not11.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.013.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.bj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bk = load i32, ptr %.sroa.08.012.i.i.i.i, align 4, !tbaa !19
  store i32 %i.bk, ptr %.013.i.i.i.i, align 4, !tbaa !19
  %i.bl = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i, i64 4 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq ptr %i.bn, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !172

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.not11.i.i.i.i.i53 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i53, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bp = sub nuw nsw i64 %i.d, %i.n
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bp
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader, %.lr.ph.i.i.i.i.i54
  %.013.i.i.i.i.i55 = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i54 ], [ %i.bq, %.lr.ph.i.i.i.i.i54.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i56 = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i54 ], [ %1, %.lr.ph.i.i.i.i.i54.preheader ] ; 3 uses
  %i.br = load i32, ptr %.sroa.08.012.i.i.i.i.i56, align 4, !tbaa !19
  store i32 %i.br, ptr %.013.i.i.i.i.i55, align 4, !tbaa !19
  store i32 0, ptr %.sroa.08.012.i.i.i.i.i56, align 4, !tbaa !19
  %i.bs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56, i64 4 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55, i64 4
  %.not.i.i.i.i.i57 = icmp eq ptr %i.bu, %i.h
  br i1 %.not.i.i.i.i.i57, label %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, label %.lr.ph.i.i.i.i.i54, !llvm.loop !164

_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59: ; preds = %.lr.ph.i.i.i.i.i54, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  store ptr %i.bw, ptr %i.g, align 8, !tbaa !24
  %i.bx = ashr exact i64 %i.m, 2                  ; 6 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i.i.i61.preheader, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i.i.i.i.i61.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59
  %min.iters.check = icmp ult i64 %i.bx, 8
  %i.bz = sub i64 %i.b, %i.l
  %diff.check = icmp ugt i64 %i.bz, -32
  %or.cond212 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond212, label %.lr.ph.i.i.i.i.i61.preheader220, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i61.preheader
  %n.vec = and i64 %i.bx, 9223372036854775800     ; 3 uses
  %i.ca = and i64 %i.bx, 7
  %i.cb = shl i64 %n.vec, 2                       ; 2 uses
  %i.cc = getelementptr i8, ptr %1, i64 %i.cb
  %i.cd = getelementptr i8, ptr %2, i64 %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ce = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.ce ; 2 uses
  %next.gep132 = getelementptr i8, ptr %2, i64 %i.ce ; 2 uses
  %i.cf = getelementptr i8, ptr %next.gep132, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep132, align 4, !tbaa !19
  %wide.load133 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !19
  %i.cg = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !19
  store <4 x i32> %wide.load133, ptr %i.cg, align 4, !tbaa !19
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.i.i.i.i61.preheader220

.lr.ph.i.i.i.i.i61.preheader220:                  ; preds = %.lr.ph.i.i.i.i.i61.preheader, %middle.block
  %.012.i.i.i.i.i62.ph = phi i64 [ %i.bx, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.ca, %middle.block ]
  %.0811.i.i.i.i.i63.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.cc, %middle.block ]
  %.0910.i.i.i.i.i64.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i61.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i61

.lr.ph.i.i.i.i.i61:                               ; preds = %.lr.ph.i.i.i.i.i61.preheader220, %.lr.ph.i.i.i.i.i61
  %.012.i.i.i.i.i62 = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i61 ], [ %.012.i.i.i.i.i62.ph, %.lr.ph.i.i.i.i.i61.preheader220 ] ; 2 uses
  %.0811.i.i.i.i.i63 = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i61 ], [ %.0811.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i61.preheader220 ] ; 2 uses
  %.0910.i.i.i.i.i64 = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i61 ], [ %.0910.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i61.preheader220 ] ; 2 uses
  %i.ci = load i32, ptr %.0910.i.i.i.i.i64, align 4, !tbaa !19
  store i32 %i.ci, ptr %.0811.i.i.i.i.i63, align 4, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63, i64 4
  %i.cl = add nsw i64 %.012.i.i.i.i.i62, -1
  %i.cm = icmp samesign ugt i64 %.012.i.i.i.i.i62, 1
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i61, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !174

bb.e:                                             ; preds = %bb.b
  %i.cn = load ptr, ptr %0, align 8, !tbaa !23    ; 12 uses
  %i.co = ptrtoint ptr %i.cn to i64               ; 3 uses
  %i.cp = sub i64 %i.j, %i.co
  %i.cq = ashr exact i64 %i.cp, 2                 ; 4 uses
  %i.cr = sub nsw i64 2305843009213693951, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.d
  br i1 %i.cs, label %bb.f, label %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #20
  unreachable

_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cq, i64 %i.d)
  %i.ct = add nsw i64 %.sroa.speculated.i, %i.cq  ; 2 uses
  %i.cu = icmp ult i64 %i.ct, %i.cq
  %i.cv = tail call i64 @llvm.umin.i64(i64 %i.ct, i64 2305843009213693951)
  %i.cw = select i1 %i.cu, i64 2305843009213693951, i64 %i.cv ; 3 uses
  %.not.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit
  %i.cx = shl nuw nsw i64 %i.cw, 2
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #18
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit, %bb.g
  %i.cz = phi ptr [ %i.cy, %bb.g ], [ null, %_ZNKSt6vectorIN5boost9container4test24movable_and_copyable_intESaIS3_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %.not13.i.i.i.i.i = icmp eq ptr %i.cn, %1
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i66.preheader

.lr.ph.i.i.i.i.i66.preheader:                     ; preds = %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17 ; 3 uses
  %i.da = ptrtoaddr ptr %1 to i64
  %i.db = add i64 %i.da, -4
  %i.dc = sub i64 %i.db, %i.co                    ; 3 uses
  %i.dd = lshr i64 %i.dc, 2
  %i.de = add nuw nsw i64 %i.dd, 1                ; 2 uses
  %min.iters.check186 = icmp ult i64 %i.dc, 60
  br i1 %min.iters.check186, label %.lr.ph.i.i.i.i.i66.preheader214, label %vector.memcheck187

vector.memcheck187:                               ; preds = %.lr.ph.i.i.i.i.i66.preheader
  %i.df = and i64 %i.dc, -4
  %i.dg = getelementptr i8, ptr %i.cn, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 4
  %bound0194 = icmp ugt ptr %i.dh, @_ZN5boost9container4test24movable_and_copyable_int5countE
  %bound1195 = icmp ult ptr %i.cn, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, i64 4)
  %found.conflict196 = and i1 %bound0194, %bound1195
  br i1 %found.conflict196, label %.lr.ph.i.i.i.i.i66.preheader214, label %vector.ph198

vector.ph198:                                     ; preds = %vector.memcheck187
  %n.vec199 = and i64 %i.de, 9223372036854775800  ; 3 uses
  %i.di = shl i64 %n.vec199, 2                    ; 2 uses
  %i.dj = getelementptr i8, ptr %i.cz, i64 %i.di  ; 2 uses
  %i.dk = getelementptr i8, ptr %i.cn, i64 %i.di
  %i.dl = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, i64 0
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next207, %vector.body200 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dl, %vector.ph198 ], [ %i.dp, %vector.body200 ]
  %vec.phi202 = phi <4 x i32> [ zeroinitializer, %vector.ph198 ], [ %i.dq, %vector.body200 ]
  %i.dm = shl i64 %index201, 2                    ; 2 uses
  %next.gep203 = getelementptr i8, ptr %i.cz, i64 %i.dm ; 2 uses
  %next.gep204 = getelementptr i8, ptr %i.cn, i64 %i.dm ; 2 uses
  %i.dn = getelementptr i8, ptr %next.gep204, i64 16
  %wide.load205 = load <4 x i32>, ptr %next.gep204, align 4, !tbaa !19, !alias.scope !183
  %wide.load206 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !19, !alias.scope !183
  %i.do = getelementptr i8, ptr %next.gep203, i64 16
  store <4 x i32> %wide.load205, ptr %next.gep203, align 4, !tbaa !19
  store <4 x i32> %wide.load206, ptr %i.do, align 4, !tbaa !19
  %i.dp = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dq = add <4 x i32> %vec.phi202, splat (i32 1) ; 2 uses
  %index.next207 = add nuw i64 %index201, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next207, %n.vec199
  br i1 %i.dr, label %middle.block208, label %vector.body200, !llvm.loop !177

middle.block208:                                  ; preds = %vector.body200
  %bin.rdx = add <4 x i32> %i.dq, %i.dp
  %i.ds = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.ds, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17, !alias.scope !184, !noalias !183
  %cmp.n209 = icmp eq i64 %i.de, %n.vec199
  br i1 %cmp.n209, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i66.preheader214

.lr.ph.i.i.i.i.i66.preheader214:                  ; preds = %vector.memcheck187, %.lr.ph.i.i.i.i.i66.preheader, %middle.block208
  %.ph = phi i32 [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %vector.memcheck187 ], [ %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.ds, %middle.block208 ]
  %.015.i.i.i.i.i.ph = phi ptr [ %i.cz, %vector.memcheck187 ], [ %i.cz, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.dj, %middle.block208 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %i.cn, %vector.memcheck187 ], [ %i.cn, %.lr.ph.i.i.i.i.i66.preheader ], [ %i.dk, %middle.block208 ]
  br label %.lr.ph.i.i.i.i.i66

.lr.ph.i.i.i.i.i66:                               ; preds = %.lr.ph.i.i.i.i.i66.preheader214, %.lr.ph.i.i.i.i.i66
  %i.dt = phi i32 [ %i.dv, %.lr.ph.i.i.i.i.i66 ], [ %.ph, %.lr.ph.i.i.i.i.i66.preheader214 ]
  %.015.i.i.i.i.i = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i66 ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader214 ] ; 2 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i66 ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i66.preheader214 ] ; 2 uses
  %i.du = load i32, ptr %.01214.i.i.i.i.i, align 4, !tbaa !19
  store i32 %i.du, ptr %.015.i.i.i.i.i, align 4, !tbaa !19
  %i.dv = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.dv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 4 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i67 = icmp eq ptr %i.dw, %1
  br i1 %.not.i.i.i.i.i67, label %.lr.ph.i.i.i.i70.preheader, label %.lr.ph.i.i.i.i.i66, !llvm.loop !179

.lr.ph.i.i.i.i70.preheader:                       ; preds = %.lr.ph.i.i.i.i.i66, %middle.block208, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit
  %.013.i.i.i.i71.ph = phi ptr [ %i.cz, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE11_M_allocateEm.exit ], [ %i.dj, %middle.block208 ], [ %i.dx, %.lr.ph.i.i.i.i.i66 ]
  br label %.lr.ph.i.i.i.i70

.lr.ph.i.i.i.i70:                                 ; preds = %.lr.ph.i.i.i.i70.preheader, %.lr.ph.i.i.i.i70
  %.013.i.i.i.i71 = phi ptr [ %i.ec, %.lr.ph.i.i.i.i70 ], [ %.013.i.i.i.i71.ph, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i72 = phi ptr [ %i.eb, %.lr.ph.i.i.i.i70 ], [ %2, %.lr.ph.i.i.i.i70.preheader ] ; 2 uses
  %i.dy = load i32, ptr %.sroa.08.012.i.i.i.i72, align 4, !tbaa !19
  store i32 %i.dy, ptr %.013.i.i.i.i71, align 4, !tbaa !19
  %i.dz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i72, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i71, i64 4 ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.eb, %3
  br i1 %.not.i.i.i.i73, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75, label %.lr.ph.i.i.i.i70, !llvm.loop !172

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75: ; preds = %.lr.ph.i.i.i.i70
  %.not13.i.i.i.i.i76 = icmp eq ptr %1, %i.h
  br i1 %.not13.i.i.i.i.i76, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, label %.lr.ph.i.i.i.i.i77

.lr.ph.i.i.i.i.i77:                               ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75, %.lr.ph.i.i.i.i.i77
  %.015.i.i.i.i.i78 = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i77 ], [ %i.ec, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75 ] ; 2 uses
  %.01214.i.i.i.i.i79 = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i77 ], [ %1, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75 ] ; 2 uses
  %i.ed = load i32, ptr %.01214.i.i.i.i.i79, align 4, !tbaa !19
  store i32 %i.ed, ptr %.015.i.i.i.i.i78, align 4, !tbaa !19
  %i.ee = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.eg = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i79, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i78, i64 4 ; 2 uses
  %.not.i.i.i.i.i80 = icmp eq ptr %i.eg, %i.h
  br i1 %.not.i.i.i.i.i80, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, label %.lr.ph.i.i.i.i.i77, !llvm.loop !180

_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82: ; preds = %.lr.ph.i.i.i.i.i77, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75
  %.0.lcssa.i.i.i.i.i81 = phi ptr [ %i.ec, %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEES6_S5_ET0_T_SC_SB_RSaIT1_E.exit75 ], [ %i.eh, %.lr.ph.i.i.i.i.i77 ]
  %.not4.i.i = icmp eq ptr %i.cn, %i.h
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.cn, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82 ] ; 2 uses
  store i32 -2147483648, ptr %.05.i.i, align 4, !tbaa !19
  %i.ei = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ej = add i32 %i.ei, -1
  store i32 %i.ej, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !17
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ek, %i.h
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit82
  %.not.i83 = icmp eq ptr %i.cn, null
  br i1 %.not.i83, label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.em = ptrtoint ptr %i.el to i64
  %i.en = sub i64 %i.em, %i.co
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.en) #19
  br label %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt8_DestroyIPN5boost9container4test24movable_and_copyable_intEEvT_S5_.exit, %bb.h
  store ptr %i.cz, ptr %0, align 8, !tbaa !23
  store ptr %.0.lcssa.i.i.i.i.i81, ptr %i.g, align 8, !tbaa !24
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cw
  store ptr %i.eo, ptr %i.e, align 8, !tbaa !25
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN5boost9container4test24movable_and_copyable_intESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i.i.i.i.i61, %.lr.ph.i.i.i.i.i52, %middle.block, %middle.block168, %_ZSt22__uninitialized_move_aIPN5boost9container4test24movable_and_copyable_intES4_SaIS3_EET0_T_S7_S6_RT1_.exit59, %_ZSt13move_backwardIPN5boost9container4test24movable_and_copyable_intES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !16}
!1 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = distinct !{!5, !16}
!6 = distinct !{!6, !16}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!13, !13, i64 0}
!18 = !{!"_ZTSN5boost9container4test24movable_and_copyable_intE", !13, i64 0}
!19 = !{!18, !13, i64 0}
!20 = !{!"any pointer", !12, i64 0}
!21 = !{!"p1 _ZTSN5boost9container4test24movable_and_copyable_intE", !20, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN5boost9container4test24movable_and_copyable_intESaIS3_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!22, !21, i64 0}
!24 = !{!22, !21, i64 8}
!25 = !{!22, !21, i64 16}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = !{!"branch_weights", i32 1, i32 1048575}
!29 = !{!"bool", !12, i64 0}
!30 = !{!"_ZTSN5boost6detail11test_resultE", !29, i64 0, !13, i64 4}
!31 = !{!30, !29, i64 0}
!32 = !{!30, !13, i64 4}
!33 = !{!"vtable pointer", !11, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"long", !12, i64 0}
!36 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!37 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!38 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !35, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!41 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!42 = !{!"_ZTSSt6locale", !41, i64 0}
!43 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !36, i64 24, !37, i64 28, !37, i64 32, !38, i64 40, !39, i64 48, !12, i64 64, !13, i64 192, !40, i64 200, !42, i64 208}
!44 = !{!"p1 _ZTSSo", !20, i64 0}
!45 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!46 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!47 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!48 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!49 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !43, i64 0, !44, i64 216, !12, i64 224, !29, i64 225, !45, i64 232, !46, i64 240, !47, i64 248, !48, i64 256}
!50 = !{!49, !46, i64 240}
!51 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!52 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!53 = !{!"p1 int", !20, i64 0}
!54 = !{!"p1 short", !20, i64 0}
!55 = !{!"_ZTSSt5ctypeIcE", !51, i64 0, !52, i64 16, !29, i64 24, !53, i64 32, !53, i64 40, !54, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!56 = !{!55, !12, i64 56}
!57 = !{!12, !12, i64 0}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16, !26, !27}
!62 = distinct !{!62, !16, !27, !26}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16, !26, !27}
!65 = distinct !{!65, !16, !27, !26}
!66 = distinct !{!66, !16, !26, !27}
!67 = distinct !{!67, !16, !27, !26}
!68 = distinct !{!68, !16}
!69 = !{!21, !21, i64 0}
!70 = distinct !{null}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!43, !37, i64 32}
!74 = distinct !{!74, !58}
!75 = distinct !{!75, !"LVerDomain"}
!76 = distinct !{!76, !75}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !16, !26, !27}
!79 = distinct !{!79, !16, !26}
!80 = distinct !{!80, !58}
!81 = distinct !{!81, !"LVerDomain"}
!82 = distinct !{!82, !81}
!83 = distinct !{!83, !81}
!84 = distinct !{!84, !16, !26, !27}
!85 = distinct !{!85, !16, !26}
!86 = distinct !{!86, !16, !26, !27}
!87 = distinct !{!87, !58}
!88 = distinct !{!88, !16, !26}
!89 = distinct !{!89, !"LVerDomain"}
!90 = distinct !{!90, !89}
!91 = distinct !{!91, !89}
!92 = distinct !{!92, !16, !26, !27}
!93 = distinct !{!93, !16, !26}
!94 = distinct !{!94, !16, !26, !27}
!95 = distinct !{!95, !58}
!96 = distinct !{!96, !16, !26}
!97 = distinct !{!97, !16, !26, !27}
!98 = distinct !{!98, !58}
!99 = distinct !{!99, !16, !26}
!100 = distinct !{!100, !"LVerDomain"}
!101 = distinct !{!101, !100}
!102 = distinct !{!102, !100}
!103 = distinct !{!103, !16, !26, !27}
!104 = distinct !{!104, !16, !26}
!105 = distinct !{!105, !"LVerDomain"}
!106 = distinct !{!106, !105}
!107 = distinct !{!107, !105}
!108 = distinct !{!108, !16, !26, !27}
!109 = distinct !{!109, !16, !26}
!110 = distinct !{!110, !16, !26, !27}
!111 = distinct !{!111, !58}
!112 = distinct !{!112, !16, !26}
!113 = distinct !{!113, !16, !26, !27}
!114 = distinct !{!114, !58}
!115 = distinct !{!115, !16, !26}
!116 = distinct !{!116, !58}
!117 = !{!76}
!118 = !{!77}
!119 = !{!82}
!120 = !{!83}
!121 = !{!90}
!122 = !{!91}
!123 = !{!101}
!124 = !{!102}
!125 = !{!106}
!126 = !{!107}
!127 = distinct !{!127, !58}
!128 = distinct !{!128, !"LVerDomain"}
!129 = distinct !{!129, !128}
!130 = distinct !{!130, !128}
!131 = distinct !{!131, !16, !26, !27}
!132 = distinct !{!132, !16, !26}
!133 = distinct !{!133, !58}
!134 = distinct !{!134, !16, !26, !27}
!135 = distinct !{!135, !58}
!136 = distinct !{!136, !16, !26}
!137 = distinct !{!137, !58}
!138 = distinct !{!138, !"LVerDomain"}
!139 = distinct !{!139, !138}
!140 = distinct !{!140, !138}
!141 = distinct !{!141, !16, !26, !27}
!142 = distinct !{!142, !16, !26}
!143 = distinct !{!143, !"LVerDomain"}
!144 = distinct !{!144, !143}
!145 = distinct !{!145, !143}
!146 = distinct !{!146, !16, !26, !27}
!147 = distinct !{!147, !16, !26}
!148 = distinct !{!148, !16, !26, !27}
!149 = distinct !{!149, !58}
!150 = distinct !{!150, !16, !26}
!151 = distinct !{!151, !"LVerDomain"}
!152 = distinct !{!152, !151}
!153 = distinct !{!153, !151}
!154 = distinct !{!154, !16, !26, !27}
!155 = distinct !{!155, !16, !26}
!156 = !{!129}
!157 = !{!130}
!158 = !{!139}
!159 = !{!140}
!160 = !{!144}
!161 = !{!145}
!162 = !{!152}
!163 = !{!153}
!164 = distinct !{!164, !16}
!165 = distinct !{!165, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !16, !26, !27}
!169 = distinct !{!169, !16, !26}
!170 = distinct !{!170, !16, !26, !27}
!171 = distinct !{!171, !16, !26}
!172 = distinct !{!172, !16}
!173 = distinct !{!173, !16, !26, !27}
!174 = distinct !{!174, !16, !26}
!175 = distinct !{!175, !"LVerDomain"}
!176 = distinct !{!176, !175}
!177 = distinct !{!177, !16, !26, !27}
!178 = distinct !{!178, !175}
!179 = distinct !{!179, !16, !26}
!180 = distinct !{!180, !16}
!181 = !{!166}
!182 = !{!167}
!183 = !{!176}
!184 = !{!178}
end_hunk_0
