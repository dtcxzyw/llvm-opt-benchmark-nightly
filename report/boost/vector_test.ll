Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/vector_test?download=true
inline.NumInlined: 28809
inline.NumDeleted: 5416
loop-unroll.NumCompletelyUnrolled: 329
loop-unroll.NumRuntimeUnrolled: 1736
loop-unroll.NumUnrolled: 2075
begin_hunk_0_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocISaINS0_4test24overaligned_copyable_intEEPS3_NS0_3dtl18insert_range_proxyIS4_St15_Deque_iteratorIiRKiPS9_EEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SL_mSG_:bb.a
  %.sroa.8.0.i69.unr = phi ptr [ %i.di, %.loopexit ], [ %.sroa.8.1.i74.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.5.0.i70.unr = phi ptr [ %.sroa.5.2.i65, %.loopexit ], [ %.sroa.5.1.i75.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.0.0.i71.unr = phi ptr [ %i.dj, %.loopexit ], [ %.sroa.0.1.i76.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.015.i.i.unr = phi i64 [ %i.dk, %.loopexit ], [ %i.du, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.01214.i.i.unr = phi ptr [ %2, %.loopexit ], [ %i.dt, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %i.dv = icmp eq i64 %3, %.neg
  br i1 %i.dv, label %_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test24overaligned_copyable_intEEED2Ev.exit85, label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i67.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1
  %.sroa.12.0.i68 = phi ptr [ %.sroa.12.1.i73.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.12.0.i68.unr, %.lr.ph.i.i67.prol.loopexit ] ; 2 uses
  %.sroa.8.0.i69 = phi ptr [ %.sroa.8.1.i74.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.8.0.i69.unr, %.lr.ph.i.i67.prol.loopexit ] ; 2 uses
  %.sroa.5.0.i70 = phi ptr [ %.sroa.5.1.i75.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.5.0.i70.unr, %.lr.ph.i.i67.prol.loopexit ]
  %.sroa.0.0.i71 = phi ptr [ %.sroa.0.1.i76.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.0.0.i71.unr, %.lr.ph.i.i67.prol.loopexit ] ; 2 uses
  %.015.i.i = phi i64 [ %i.eo, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.015.i.i.unr, %.lr.ph.i.i67.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.en, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.01214.i.i.unr, %.lr.ph.i.i67.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.dw = load i32, ptr %.sroa.0.0.i71, align 4, !tbaa !247, !noalias !4505
  %i.dx = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4505
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4505
  store i32 %i.dw, ptr %.01214.i.i, align 64, !tbaa !246, !noalias !4505
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i71, i64 4 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %.sroa.8.0.i69
  br i1 %i.ea, label %bb.k, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72

bb.k:                                             ; preds = %.lr.ph.i.i67
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i68, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !259, !noalias !4505 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72:  ; preds = %bb.k, %.lr.ph.i.i67
  %.sroa.12.1.i73 = phi ptr [ %i.eb, %bb.k ], [ %.sroa.12.0.i68, %.lr.ph.i.i67 ] ; 2 uses
  %.sroa.8.1.i74 = phi ptr [ %i.ed, %bb.k ], [ %.sroa.8.0.i69, %.lr.ph.i.i67 ] ; 2 uses
  %.sroa.5.1.i75 = phi ptr [ %i.ec, %bb.k ], [ %.sroa.5.0.i70, %.lr.ph.i.i67 ]
  %.sroa.0.1.i76 = phi ptr [ %i.ec, %bb.k ], [ %i.dz, %.lr.ph.i.i67 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 64
  %i.ef = load i32, ptr %.sroa.0.1.i76, align 4, !tbaa !247, !noalias !4505
  %i.eg = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4505
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4505
  store i32 %i.ef, ptr %i.ee, align 64, !tbaa !246, !noalias !4505
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i76, i64 4 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %.sroa.8.1.i74
  br i1 %i.ej, label %bb.l, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1

bb.l:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i73, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !259, !noalias !4505 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1: ; preds = %bb.l, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72
  %.sroa.12.1.i73.1 = phi ptr [ %i.ek, %bb.l ], [ %.sroa.12.1.i73, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ] ; 2 uses
  %.sroa.8.1.i74.1 = phi ptr [ %i.em, %bb.l ], [ %.sroa.8.1.i74, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ] ; 2 uses
  %.sroa.5.1.i75.1 = phi ptr [ %i.el, %bb.l ], [ %.sroa.5.1.i75, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ] ; 2 uses
  %.sroa.0.1.i76.1 = phi ptr [ %i.el, %bb.l ], [ %i.ei, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 128
  %i.eo = add i64 %.015.i.i, -2                   ; 2 uses
  %.not.i.i77.1 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i77.1, label %_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test24overaligned_copyable_intEEED2Ev.exit85, label %.lr.ph.i.i67, !llvm.loop !102

_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test24overaligned_copyable_intEEED2Ev.exit85: ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1, %.lr.ph.i.i67.prol.loopexit
  %.sroa.12.1.i73.lcssa = phi ptr [ %.sroa.12.1.i73.lcssa.unr, %.lr.ph.i.i67.prol.loopexit ], [ %.sroa.12.1.i73.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ]
  %.sroa.8.1.i74.lcssa = phi ptr [ %.sroa.8.1.i74.lcssa.unr, %.lr.ph.i.i67.prol.loopexit ], [ %.sroa.8.1.i74.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ]
  %.sroa.5.1.i75.lcssa = phi ptr [ %.sroa.5.1.i75.lcssa.unr, %.lr.ph.i.i67.prol.loopexit ], [ %.sroa.5.1.i75.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ]
  store ptr %.sroa.5.1.i75.lcssa, ptr %i.dh, align 8, !tbaa !259
  store ptr %.sroa.8.1.i74.lcssa, ptr %i.dg, align 8, !tbaa !259
  store ptr %.sroa.12.1.i73.lcssa, ptr %i.df, align 8, !tbaa !437
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test24overaligned_copyable_intEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test24overaligned_copyable_intEEED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1, %_ZN5boost9container13move_backwardIPNS0_4test24overaligned_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, %_ZN5boost9container3dtl23scoped_destructor_rangeISaINS0_4test24overaligned_copyable_intEEED2Ev.exit85
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !397  ; 6 uses
  %i.c = sub i64 288230376151711743, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !396  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 288230376151711743)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.p = icmp ugt i64 %i.m, 288230376151711743
  br i1 %i.p, label %bb.f, label %bb.g, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = icmp samesign ugt i64 %i.o, 144115188075855871
  br i1 %i.q, label %bb.h, label %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.r = shl nuw nsw i64 %i.o, 6
  %i.s = tail call noalias noundef nonnull align 64 ptr @_ZnwmSt11align_val_t(i64 noundef %i.r, i64 noundef 64) #28 ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !395    ; 6 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !402  ; 4 uses
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i.i ], [ %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ]
  %.018.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.y = load i32, ptr %.018.i.i.i, align 64, !tbaa !246
  store i32 %i.y, ptr %.01517.i.i.i, align 64, !tbaa !246
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.aa, %.lr.ph.i.i.i ] ; 14 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader26, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.ab = shl i64 %3, 6
  %i.ac = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -60
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test24overaligned_copyable_int5countE
  %bound1 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ae = and i64 %3, 7
  %i.af = shl i64 %n.vec, 6
  %i.ag = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.af
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.ai = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep18 = getelementptr i8, ptr %i.aj, i64 64 ; 2 uses
  %i.ak = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep19 = getelementptr i8, ptr %i.ak, i64 128 ; 2 uses
  %i.al = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep20 = getelementptr i8, ptr %i.al, i64 192 ; 2 uses
  %i.am = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep21 = getelementptr i8, ptr %i.am, i64 256 ; 2 uses
  %i.an = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep22 = getelementptr i8, ptr %i.an, i64 320 ; 2 uses
  %i.ao = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep23 = getelementptr i8, ptr %i.ao, i64 384 ; 2 uses
  %i.ap = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep24 = getelementptr i8, ptr %i.ap, i64 448 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep18) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep19) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep20) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep21) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep22) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep23) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep24) ]
  %i.aq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ar = add <4 x i32> %vec.phi17, splat (i32 1) ; 2 uses
  store i32 0, ptr %next.gep, align 64, !tbaa !246, !alias.scope !4512
  store i32 0, ptr %next.gep18, align 64, !tbaa !246, !alias.scope !4512
  store i32 0, ptr %next.gep19, align 64, !tbaa !246, !alias.scope !4512
  store i32 0, ptr %next.gep20, align 64, !tbaa !246, !alias.scope !4512
  store i32 0, ptr %next.gep21, align 64, !tbaa !246, !alias.scope !4512
  store i32 0, ptr %next.gep22, align 64, !tbaa !246, !alias.scope !4512
  store i32 0, ptr %next.gep23, align 64, !tbaa !246, !alias.scope !4512
  store i32 0, ptr %next.gep24, align 64, !tbaa !246, !alias.scope !4512
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !4508

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !alias.scope !4513, !noalias !4512
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader26

.lr.ph.i.i.i.i.preheader26:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.016.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ] ; 4 uses
  %.01315.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ] ; 2 uses
  %i.au = add i64 %.016.i.i.i.i.ph, -1
  %xtraiter = and i64 %.016.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader26, %.lr.ph.i.i.i.i.prol
  %i.av = phi i32 [ %i.ax, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader26 ]
  %.016.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.prol ], [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.prol ], [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader26 ]
  %i.aw = add i64 %.016.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  %i.ax = add i32 %i.av, 1                        ; 3 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.01315.i.i.i.i.prol, align 64, !tbaa !246
  %i.ay = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4510

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader26
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader26 ], [ %i.ax, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader26 ], [ %i.ay, %.lr.ph.i.i.i.i.prol ]
  %i.az = icmp ult i64 %i.au, 3
  br i1 %i.az, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.ba = phi i32 [ %i.bi, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.016.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.01315.i.i.i.i, align 64, !tbaa !246
  %i.bc = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 64
  %i.bd = add i32 %i.ba, 2
  store i32 %i.bd, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %i.bc, align 64, !tbaa !246
  %i.be = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 128
  %i.bf = add i32 %i.ba, 3
  store i32 %i.bf, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %i.be, align 64, !tbaa !246
  %i.bg = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 192
  %i.bh = add i64 %.016.i.i.i.i, -4               ; 2 uses
  %i.bi = add i32 %i.ba, 4                        ; 2 uses
  store i32 %i.bi, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %i.bg, align 64, !tbaa !246
  %i.bj = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 256
  %.not.i.i.i.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4511

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.v
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  %.pre8 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %i.bl = phi i32 [ %i.bm, %.lr.ph.i20.i.i ], [ %.pre8, %.lr.ph.i20.preheader.i.i ]
  %.018.i21.i.i = phi ptr [ %i.bo, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.bp, %.lr.ph.i20.i.i ], [ %i.bk, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.bn = load i32, ptr %.018.i21.i.i, align 64, !tbaa !246
  store i32 %i.bn, ptr %.01517.i22.i.i, align 64, !tbaa !246
  %i.bo = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 64
  %.not.i23.i.i = icmp eq ptr %i.bo, %i.v
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !97

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mSA_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i, label %bb.j, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.bq = trunc i64 %i.u to i32
  %i.br = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.bq
  store i32 %i.br, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader.i.i, %bb.i
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !397
  %i.bt = shl i64 %i.bs, 6
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.t, i64 noundef %i.bt, i64 noundef 64) #27
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !396
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mSA_mT_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvPS3_mSA_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %bb.j
  %i.bu = phi i64 [ %i.u, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl32insert_value_initialized_n_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre.i, %bb.j ]
  %i.bv = ptrtoint ptr %2 to i64
  %i.bw = ptrtoint ptr %i.t to i64
  %i.bx = sub i64 %i.bv, %i.bw
  store ptr %i.s, ptr %1, align 8, !tbaa !395
  %i.by = add i64 %i.bu, %3
  store i64 %i.by, ptr %i.d, align 8, !tbaa !396
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.bz = getelementptr inbounds i8, ptr %i.s, i64 %i.bx
  store ptr %i.bz, ptr %0, align 8, !tbaa !459
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENS7_IS8_Lb1EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 64 dereferenceable(64) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4517)
  %i.a = load ptr, ptr %2, align 8, !tbaa !403, !noalias !4517 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !397, !noalias !4517
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !402, !noalias !4517 ; 2 uses
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !395, !noalias !4517 ; 3 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.e ; 7 uses
  %.not.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4517
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4517
  %i.j = load i32, ptr %3, align 64, !tbaa !246, !noalias !4517
  store i32 %i.j, ptr %i.g, align 64, !tbaa !246, !noalias !4517
  %i.k = load i64, ptr %i.d, align 8, !tbaa !402, !noalias !4517
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.d, align 8, !tbaa !402, !noalias !4517
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS4_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 6                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.r = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4517
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !4517
  %i.t = load i32, ptr %i.q, align 64, !tbaa !246, !noalias !4517
  store i32 %i.t, ptr %i.g, align 64, !tbaa !246, !noalias !4517
  %i.u = load i64, ptr %i.d, align 8, !tbaa !402, !noalias !4517
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.d, align 8, !tbaa !402, !noalias !4517
  %i.w = add nsw i64 %i.p, -1                     ; 4 uses
  %.not8.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i.i.i, label %_ZN5boost9container15move_backward_nIPNS0_4test24overaligned_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.x = add nsw i64 %i.p, -2
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.preheader ]
  %.0610.i.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.preheader ]
  %.079.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.y = add i64 %.0610.i.i.i.prol, -1            ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.079.i.i.i.prol, i64 -64 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.011.i.i.i.prol, i64 -64 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 64, !tbaa !246, !noalias !4517
end_hunk_0
begin_hunk_1_@_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSB_mT_:bb.a
  %.not.i56.i.i.i.7 = icmp eq i64 %i.ck, 0
  br i1 %.not.i56.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i, label %.lr.ph.i53.i.i.i, !llvm.loop !4550

_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i: ; preds = %.lr.ph.i53.i.i.i, %.lr.ph.i53.i.i.i.prol.loopexit
  %i.cm = sub i64 %3, %i.ac                       ; 3 uses
  %.pre.i.i.i.i.i = load i32, ptr %4, align 64, !tbaa !246 ; 5 uses
  %xtraiter30 = and i64 %i.cm, 3                  ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.cm, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i ] ; 3 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i ]
  %i.cn = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.co = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i.prol, align 64, !tbaa !246
  %i.cq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 64 ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !4552

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.cm, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE17copy_n_and_updateIPS4_EEvRS5_T_m.exit57.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %i.cr = sub i64 %i.ac, %3
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.ct = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 64, !tbaa !246
  %i.cv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 64
  %i.cw = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %i.cv, align 64, !tbaa !246
  %i.cy = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 128
  %i.cz = add i32 %i.cw, 2
  store i32 %i.cz, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %i.cy, align 64, !tbaa !246
  %i.da = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 192
  %i.db = add i64 %.017.i.i.i.i.i, -4             ; 2 uses
  %i.dc = add i32 %i.cw, 3
  store i32 %i.dc, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %i.da, align 64, !tbaa !246
  %i.dd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 256
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !110

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i42.i.i.i.prol.loopexit, %.lr.ph.i42.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %i.de = load i64, ptr %i.d, align 8, !tbaa !396
  %i.df = add i64 %i.de, %3
  store i64 %i.df, ptr %i.d, align 8, !tbaa !396
  %i.dg = load ptr, ptr %2, align 8, !tbaa !403
  store ptr %i.dg, ptr %0, align 8, !tbaa !459
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS4_EEEENS0_12vec_iteratorIPS3_Lb0EEESB_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !397  ; 6 uses
  %i.c = sub i64 288230376151711743, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !396  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 288230376151711743)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.p = icmp ugt i64 %i.m, 288230376151711743
  br i1 %i.p, label %bb.f, label %bb.g, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.g:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = icmp samesign ugt i64 %i.o, 144115188075855871
  br i1 %i.q, label %bb.h, label %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %bb.g
  %i.r = shl nuw nsw i64 %i.o, 6
  %i.s = tail call noalias noundef nonnull align 64 ptr @_ZnwmSt11align_val_t(i64 noundef %i.r, i64 noundef 64) #28 ; 4 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !395    ; 6 uses
  %i.u = load i64, ptr %i.d, align 8, !tbaa !402  ; 4 uses
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.t, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.w = phi i32 [ %i.x, %.lr.ph.i.i.i ], [ %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ]
  %.018.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.x = add i32 %i.w, 1                          ; 2 uses
  store i32 %i.x, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.y = load i32, ptr %.018.i.i.i, align 64, !tbaa !246
  store i32 %i.y, ptr %.01517.i.i.i, align 64, !tbaa !246
  %i.z = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !97

_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.s, %_ZN5boost9container19vector_alloc_holderISaINS0_4test24overaligned_copyable_intEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.aa, %.lr.ph.i.i.i ] ; 14 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 64, !tbaa !246 ; 13 uses
  %.pre = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i.i
  %i.ab = shl i64 %3, 6
  %i.ac = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 -60
  %bound0 = icmp ugt ptr %i.ad, @_ZN5boost9container4test24overaligned_copyable_int5countE
  %bound1 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ae = and i64 %3, 7
  %i.af = shl i64 %n.vec, 6
  %i.ag = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.af
  %i.ah = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ah, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi18 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.ai = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai ; 2 uses
  %i.aj = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep19 = getelementptr i8, ptr %i.aj, i64 64 ; 2 uses
  %i.ak = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep20 = getelementptr i8, ptr %i.ak, i64 128 ; 2 uses
  %i.al = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep21 = getelementptr i8, ptr %i.al, i64 192 ; 2 uses
  %i.am = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep22 = getelementptr i8, ptr %i.am, i64 256 ; 2 uses
  %i.an = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep23 = getelementptr i8, ptr %i.an, i64 320 ; 2 uses
  %i.ao = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep24 = getelementptr i8, ptr %i.ao, i64 384 ; 2 uses
  %i.ap = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ai
  %next.gep25 = getelementptr i8, ptr %i.ap, i64 448 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep19) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep20) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep21) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep22) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep23) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep24) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep25) ]
  %i.aq = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.ar = add <4 x i32> %vec.phi18, splat (i32 1) ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %next.gep, align 64, !tbaa !246, !alias.scope !4559
  store i32 %.pre.i.i.i.i, ptr %next.gep19, align 64, !tbaa !246, !alias.scope !4559
  store i32 %.pre.i.i.i.i, ptr %next.gep20, align 64, !tbaa !246, !alias.scope !4559
  store i32 %.pre.i.i.i.i, ptr %next.gep21, align 64, !tbaa !246, !alias.scope !4559
  store i32 %.pre.i.i.i.i, ptr %next.gep22, align 64, !tbaa !246, !alias.scope !4559
  store i32 %.pre.i.i.i.i, ptr %next.gep23, align 64, !tbaa !246, !alias.scope !4559
  store i32 %.pre.i.i.i.i, ptr %next.gep24, align 64, !tbaa !246, !alias.scope !4559
  store i32 %.pre.i.i.i.i, ptr %next.gep25, align 64, !tbaa !246, !alias.scope !4559
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !4555

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ar, %i.aq
  %i.at = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.at, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !alias.scope !4560, !noalias !4559
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i.i, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.preheader.i.i.i.i ], [ %i.at, %middle.block ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.ae, %middle.block ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.ag, %middle.block ] ; 2 uses
  %i.au = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.av = phi i32 [ %i.ax, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader ]
  %.017.i.i.i.i.prol = phi i64 [ %i.aw, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.aw = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.ax = add i32 %i.av, 1                        ; 3 uses
  store i32 %i.ax, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i.prol, align 64, !tbaa !246
  %i.ay = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !4557

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.prol ]
  %i.az = icmp ult i64 %i.au, 3
  br i1 %i.az, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.ba = phi i32 [ %i.bi, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 64, !tbaa !246
  %i.bc = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 64
  %i.bd = add i32 %i.ba, 2
  store i32 %i.bd, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %i.bc, align 64, !tbaa !246
  %i.be = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 128
  %i.bf = add i32 %i.ba, 3
  store i32 %i.bf, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %i.be, align 64, !tbaa !246
  %i.bg = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 192
  %i.bh = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.bi = add i32 %i.ba, 4                        ; 2 uses
  store i32 %i.bi, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %i.bg, align 64, !tbaa !246
  %i.bj = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 256
  %.not.i.i.i.i.3 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4558

_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_S9_E4typeERT_S8_S8_S9_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.v
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl21insert_n_copies_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  %.pre9 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %i.bl = phi i32 [ %i.bm, %.lr.ph.i20.i.i ], [ %.pre9, %.lr.ph.i20.preheader.i.i ]
  %.018.i21.i.i = phi ptr [ %i.bo, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.bp, %.lr.ph.i20.i.i ], [ %i.bk, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.bn = load i32, ptr %.018.i21.i.i, align 64, !tbaa !246
  store i32 %i.bn, ptr %.01517.i22.i.i, align 64, !tbaa !246
  %i.bo = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 64 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 64
  %.not.i23.i.i = icmp eq ptr %i.bo, %i.v
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl21insert_n_copies_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !97

_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl21insert_n_copies_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyISaINS0_4test24overaligned_copyable_intEEE31uninitialized_copy_n_and_updateIPS4_EEvRS5_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mSA_mT_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl21insert_n_copies_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.u, 0
  br i1 %.not3.i.i, label %bb.j, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.i
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.bq = trunc i64 %i.u to i32
  %i.br = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.bq
  store i32 %i.br, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.preheader.i.i, %bb.i
  %i.bs = load i64, ptr %i.a, align 8, !tbaa !397
  %i.bt = shl i64 %i.bs, 6
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.t, i64 noundef %i.bt, i64 noundef 64) #27
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !396
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mSA_mT_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS4_EEEEvPS3_mSA_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl21insert_n_copies_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i, %bb.j
  %i.bu = phi i64 [ %i.u, %_ZN5boost9container35uninitialized_move_and_insert_allocISaINS0_4test24overaligned_copyable_intEEPS3_S5_NS0_3dtl21insert_n_copies_proxyIS4_EEEEvRT_T0_SB_SB_T1_mT2_.exit.i ], [ %.pre.i, %bb.j ]
  %i.bv = ptrtoint ptr %2 to i64
  %i.bw = ptrtoint ptr %i.t to i64
  %i.bx = sub i64 %i.bv, %i.bw
  store ptr %i.s, ptr %1, align 8, !tbaa !395
  %i.by = add i64 %i.bu, %3
  store i64 %i.by, ptr %i.d, align 8, !tbaa !396
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.bz = getelementptr inbounds i8, ptr %i.s, i64 %i.bx
  store ptr %i.bz, ptr %0, align 8, !tbaa !459
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE6assignINS0_17constant_iteratorIS3_EEEEvT_S9_PNS_11move_detail13disable_if_orIvNSA_7is_sameINSA_17integral_constantIjLj1EEENSD_IjLj0EEEEENSA_14is_convertibleIS9_mEENS0_3dtl17is_input_iteratorIS9_Xsr21has_iterator_categoryIS9_EE5valueEEENSA_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !397  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 288230376151711743
  br i1 %i.e, label %bb.c, label %bb.d, !prof !272

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = icmp samesign ugt i64 %i.a, 144115188075855871
  br i1 %i.f, label %bb.e, label %bb.f, !prof !272

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #24
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = shl nuw nsw i64 %i.a, 6
  %i.h = tail call noalias noundef nonnull align 64 ptr @_ZnwmSt11align_val_t(i64 noundef %i.g, i64 noundef 64) #28 ; 14 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !395    ; 2 uses
  %.not25 = icmp eq ptr %i.i, null
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !402  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.k, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.l = trunc i64 %i.k to i32
  %i.m = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.l
  store i32 %i.m, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE16priv_destroy_allEv.exit: ; preds = %bb.g, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.j, align 8, !tbaa !402
  %i.n = shl nuw i64 %i.c, 6
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.i, i64 noundef %i.n, i64 noundef 64) #27
  br label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intESaIS3_EvE16priv_destroy_allEv.exit, %bb.f
  store ptr %i.h, ptr %0, align 8, !tbaa !395
  store i64 %i.a, ptr %i.b, align 8, !tbaa !261
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !402
  %.not12.i.i = icmp eq i64 %2, %4
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %.pre = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader54, label %vector.memcheck

end_hunk_1
begin_hunk_2_@_ZN5boost9container47expand_forward_and_insert_nonempty_middle_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_NS0_3dtl18insert_range_proxyIS5_St15_Deque_iteratorIiRKiPSA_EEEEENS_11move_detail12disable_if_cIXsr3dtl21is_single_value_proxyIT1_EE5valueEvE4typeERT_T0_SM_mSH_:bb.a
  br label %.lr.ph.i.i67.prol.loopexit

.lr.ph.i.i67.prol.loopexit:                       ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol, %.loopexit
  %.sroa.12.1.i73.lcssa.unr = phi ptr [ poison, %.loopexit ], [ %.sroa.12.1.i73.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.8.1.i74.lcssa.unr = phi ptr [ poison, %.loopexit ], [ %.sroa.8.1.i74.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.5.1.i75.lcssa.unr = phi ptr [ poison, %.loopexit ], [ %.sroa.5.1.i75.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.12.0.i68.unr = phi ptr [ %.sroa.12.2.i64, %.loopexit ], [ %.sroa.12.1.i73.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.8.0.i69.unr = phi ptr [ %i.di, %.loopexit ], [ %.sroa.8.1.i74.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.5.0.i70.unr = phi ptr [ %.sroa.5.2.i65, %.loopexit ], [ %.sroa.5.1.i75.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.sroa.0.0.i71.unr = phi ptr [ %i.dj, %.loopexit ], [ %.sroa.0.1.i76.prol, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.015.i.i.unr = phi i64 [ %i.dk, %.loopexit ], [ %i.du, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %.01214.i.i.unr = phi ptr [ %2, %.loopexit ], [ %i.dt, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.prol ]
  %i.dv = icmp eq i64 %3, %.neg
  br i1 %i.dv, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEED2Ev.exit85, label %.lr.ph.i.i67

.lr.ph.i.i67:                                     ; preds = %.lr.ph.i.i67.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1
  %.sroa.12.0.i68 = phi ptr [ %.sroa.12.1.i73.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.12.0.i68.unr, %.lr.ph.i.i67.prol.loopexit ] ; 2 uses
  %.sroa.8.0.i69 = phi ptr [ %.sroa.8.1.i74.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.8.0.i69.unr, %.lr.ph.i.i67.prol.loopexit ] ; 2 uses
  %.sroa.5.0.i70 = phi ptr [ %.sroa.5.1.i75.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.5.0.i70.unr, %.lr.ph.i.i67.prol.loopexit ]
  %.sroa.0.0.i71 = phi ptr [ %.sroa.0.1.i76.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.sroa.0.0.i71.unr, %.lr.ph.i.i67.prol.loopexit ] ; 2 uses
  %.015.i.i = phi i64 [ %i.eo, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.015.i.i.unr, %.lr.ph.i.i67.prol.loopexit ]
  %.01214.i.i = phi ptr [ %i.en, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ], [ %.01214.i.i.unr, %.lr.ph.i.i67.prol.loopexit ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01214.i.i) ]
  %i.dw = load i32, ptr %.sroa.0.0.i71, align 4, !tbaa !247, !noalias !12753
  %i.dx = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12753
  %i.dy = add i32 %i.dx, 1
  store i32 %i.dy, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12753
  store i32 %i.dw, ptr %.01214.i.i, align 64, !tbaa !246, !noalias !12753
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i71, i64 4 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %.sroa.8.0.i69
  br i1 %i.ea, label %bb.k, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72

bb.k:                                             ; preds = %.lr.ph.i.i67
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.12.0.i68, i64 8 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !259, !noalias !12753 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72:  ; preds = %bb.k, %.lr.ph.i.i67
  %.sroa.12.1.i73 = phi ptr [ %i.eb, %bb.k ], [ %.sroa.12.0.i68, %.lr.ph.i.i67 ] ; 2 uses
  %.sroa.8.1.i74 = phi ptr [ %i.ed, %bb.k ], [ %.sroa.8.0.i69, %.lr.ph.i.i67 ] ; 2 uses
  %.sroa.5.1.i75 = phi ptr [ %i.ec, %bb.k ], [ %.sroa.5.0.i70, %.lr.ph.i.i67 ]
  %.sroa.0.1.i76 = phi ptr [ %i.ec, %bb.k ], [ %i.dz, %.lr.ph.i.i67 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 64
  %i.ef = load i32, ptr %.sroa.0.1.i76, align 4, !tbaa !247, !noalias !12753
  %i.eg = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12753
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12753
  store i32 %i.ef, ptr %i.ee, align 64, !tbaa !246, !noalias !12753
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i76, i64 4 ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %.sroa.8.1.i74
  br i1 %i.ej, label %bb.l, label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1

bb.l:                                             ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i73, i64 8 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !259, !noalias !12753 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 512
  br label %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1

_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1: ; preds = %bb.l, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72
  %.sroa.12.1.i73.1 = phi ptr [ %i.ek, %bb.l ], [ %.sroa.12.1.i73, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ] ; 2 uses
  %.sroa.8.1.i74.1 = phi ptr [ %i.em, %bb.l ], [ %.sroa.8.1.i74, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ] ; 2 uses
  %.sroa.5.1.i75.1 = phi ptr [ %i.el, %bb.l ], [ %.sroa.5.1.i75, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ] ; 2 uses
  %.sroa.0.1.i76.1 = phi ptr [ %i.el, %bb.l ], [ %i.ei, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.01214.i.i, i64 128
  %i.eo = add i64 %.015.i.i, -2                   ; 2 uses
  %.not.i.i77.1 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i77.1, label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEED2Ev.exit85, label %.lr.ph.i.i67, !llvm.loop !204

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEED2Ev.exit85: ; preds = %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1, %.lr.ph.i.i67.prol.loopexit
  %.sroa.12.1.i73.lcssa = phi ptr [ %.sroa.12.1.i73.lcssa.unr, %.lr.ph.i.i67.prol.loopexit ], [ %.sroa.12.1.i73.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ]
  %.sroa.8.1.i74.lcssa = phi ptr [ %.sroa.8.1.i74.lcssa.unr, %.lr.ph.i.i67.prol.loopexit ], [ %.sroa.8.1.i74.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ]
  %.sroa.5.1.i75.lcssa = phi ptr [ %.sroa.5.1.i75.lcssa.unr, %.lr.ph.i.i67.prol.loopexit ], [ %.sroa.5.1.i75.1, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i72.1 ]
  store ptr %.sroa.5.1.i75.lcssa, ptr %i.dh, align 8, !tbaa !259
  store ptr %.sroa.8.1.i74.lcssa, ptr %i.dg, align 8, !tbaa !259
  store ptr %.sroa.12.1.i73.lcssa, ptr %i.df, align 8, !tbaa !437
  br label %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEED2Ev.exit

_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEED2Ev.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %_ZNSt15_Deque_iteratorIiRKiPS0_EppEv.exit.i.i.1, %_ZN5boost9container13move_backwardIPNS0_4test24overaligned_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_S7_S8_.exit, %_ZN5boost9container3dtl23scoped_destructor_rangeINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEED2Ev.exit85
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !564  ; 6 uses
  %i.c = sub i64 144115188075855871, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !563  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 144115188075855871)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 144115188075855871
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 6
  %i.r = tail call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %i.q, i64 noundef 64) #25 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !562    ; 6 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !569  ; 4 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.v = phi i32 [ %i.w, %.lr.ph.i.i.i ], [ %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ]
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.x = load i32, ptr %.018.i.i.i, align 64, !tbaa !246
  store i32 %i.x, ptr %.01517.i.i.i, align 64, !tbaa !246
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !203

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 14 uses
  %.not14.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not14.i.i.i.i, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.pre = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader25, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aa = shl i64 %3, 6
  %i.ab = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -60
  %bound0 = icmp ugt ptr %i.ac, @_ZN5boost9container4test24overaligned_copyable_int5countE
  %bound1 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ad = and i64 %3, 7
  %i.ae = shl i64 %n.vec, 6
  %i.af = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ae
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi16 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.ah = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep17 = getelementptr i8, ptr %i.ai, i64 64 ; 2 uses
  %i.aj = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep18 = getelementptr i8, ptr %i.aj, i64 128 ; 2 uses
  %i.ak = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep19 = getelementptr i8, ptr %i.ak, i64 192 ; 2 uses
  %i.al = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep20 = getelementptr i8, ptr %i.al, i64 256 ; 2 uses
  %i.am = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep21 = getelementptr i8, ptr %i.am, i64 320 ; 2 uses
  %i.an = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep22 = getelementptr i8, ptr %i.an, i64 384 ; 2 uses
  %i.ao = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep23 = getelementptr i8, ptr %i.ao, i64 448 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep17) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep18) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep19) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep20) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep21) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep22) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep23) ]
  %i.ap = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.aq = add <4 x i32> %vec.phi16, splat (i32 1) ; 2 uses
  store i32 0, ptr %next.gep, align 64, !tbaa !246, !alias.scope !12760
  store i32 0, ptr %next.gep17, align 64, !tbaa !246, !alias.scope !12760
  store i32 0, ptr %next.gep18, align 64, !tbaa !246, !alias.scope !12760
  store i32 0, ptr %next.gep19, align 64, !tbaa !246, !alias.scope !12760
  store i32 0, ptr %next.gep20, align 64, !tbaa !246, !alias.scope !12760
  store i32 0, ptr %next.gep21, align 64, !tbaa !246, !alias.scope !12760
  store i32 0, ptr %next.gep22, align 64, !tbaa !246, !alias.scope !12760
  store i32 0, ptr %next.gep23, align 64, !tbaa !246, !alias.scope !12760
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !12756

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !alias.scope !12761, !noalias !12760
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader25

.lr.ph.i.i.i.i.preheader25:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ] ; 2 uses
  %.016.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ] ; 4 uses
  %.01315.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ] ; 2 uses
  %i.at = add i64 %.016.i.i.i.i.ph, -1
  %xtraiter = and i64 %.016.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader25, %.lr.ph.i.i.i.i.prol
  %i.au = phi i32 [ %i.aw, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader25 ]
  %.016.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i.i.i.prol ], [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ]
  %.01315.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.prol ], [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader25 ]
  %i.av = add i64 %.016.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i.prol) ]
  %i.aw = add i32 %i.au, 1                        ; 3 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.01315.i.i.i.i.prol, align 64, !tbaa !246
  %i.ax = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i.prol, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12758

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader25
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader25 ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %.016.i.i.i.i.unr = phi i64 [ %.016.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ], [ %i.av, %.lr.ph.i.i.i.i.prol ]
  %.01315.i.i.i.i.unr = phi ptr [ %.01315.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader25 ], [ %i.ax, %.lr.ph.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.at, 3
  br i1 %i.ay, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.az = phi i32 [ %i.bh, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.016.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i ], [ %.016.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01315.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.01315.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01315.i.i.i.i) ]
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %.01315.i.i.i.i, align 64, !tbaa !246
  %i.bb = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 64
  %i.bc = add i32 %i.az, 2
  store i32 %i.bc, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %i.bb, align 64, !tbaa !246
  %i.bd = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 128
  %i.be = add i32 %i.az, 3
  store i32 %i.be, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %i.bd, align 64, !tbaa !246
  %i.bf = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 192
  %i.bg = add i64 %.016.i.i.i.i, -4               ; 2 uses
  %i.bh = add i32 %i.az, 4                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 0, ptr %i.bf, align 64, !tbaa !246
  %i.bi = getelementptr inbounds nuw i8, ptr %.01315.i.i.i.i, i64 256
  %.not.i.i.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !12759

_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  %.pre8 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %i.bk = phi i32 [ %i.bl, %.lr.ph.i20.i.i ], [ %.pre8, %.lr.ph.i20.preheader.i.i ]
  %.018.i21.i.i = phi ptr [ %i.bn, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.bo, %.lr.ph.i20.i.i ], [ %i.bj, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bl, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.bm = load i32, ptr %.018.i21.i.i, align 64, !tbaa !246
  store i32 %i.bm, ptr %.01517.i22.i.i, align 64, !tbaa !246
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 64
  %.not.i23.i.i = icmp eq ptr %i.bn, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !203

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl32insert_value_initialized_n_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mSB_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.bp = trunc i64 %i.t to i32
  %i.bq = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.br = load i64, ptr %i.a, align 8, !tbaa !564
  %i.bs = shl i64 %i.br, 6
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.s, i64 noundef %i.bs, i64 noundef 64) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !563
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %bb.h
  %i.bt = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl32insert_value_initialized_n_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.bu = ptrtoint ptr %2 to i64
  %i.bv = ptrtoint ptr %i.s to i64
  %i.bw = sub i64 %i.bu, %i.bv
  store ptr %i.r, ptr %1, align 8, !tbaa !562
  %i.bx = add i64 %i.bt, %3
  store i64 %i.bx, ptr %i.d, align 8, !tbaa !563
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.by = getelementptr inbounds i8, ptr %i.r, i64 %i.bw
  store ptr %i.by, ptr %0, align 8, !tbaa !459
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE7emplaceIJS3_EEENS0_12vec_iteratorIPS3_Lb0EEENS8_IS9_Lb1EEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef align 8 dead_on_return %2, ptr noundef nonnull align 64 dereferenceable(64) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12765)
  %i.a = load ptr, ptr %2, align 8, !tbaa !403, !noalias !12765 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !564, !noalias !12765
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !569, !noalias !12765 ; 2 uses
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %bb.e, label %bb.b, !prof !272

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !562, !noalias !12765 ; 3 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.f, i64 %i.e ; 7 uses
  %.not.i.i = icmp eq ptr %i.g, %i.a
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.h = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12765
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12765
  %i.j = load i32, ptr %3, align 64, !tbaa !246, !noalias !12765
  store i32 %i.j, ptr %i.g, align 64, !tbaa !246, !noalias !12765
  %i.k = load i64, ptr %i.d, align 8, !tbaa !569, !noalias !12765
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.d, align 8, !tbaa !569, !noalias !12765
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl20insert_emplace_proxyIS5_JS3_EEEEEvPS3_mT_NS_11move_detail17integral_constantIbLb1EEE.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.a to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub i64 %i.n, %i.m
  %i.p = ashr exact i64 %i.o, 6                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 -64 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %i.r = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12765
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !noalias !12765
  %i.t = load i32, ptr %i.q, align 64, !tbaa !246, !noalias !12765
  store i32 %i.t, ptr %i.g, align 64, !tbaa !246, !noalias !12765
  %i.u = load i64, ptr %i.d, align 8, !tbaa !569, !noalias !12765
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.d, align 8, !tbaa !569, !noalias !12765
  %i.w = add nsw i64 %i.p, -1                     ; 4 uses
  %.not8.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not8.i.i.i, label %_ZN5boost9container15move_backward_nIPNS0_4test24overaligned_copyable_intES4_EENS0_3dtl38disable_if_memtransfer_copy_assignableIT_T0_S8_E4typeES7_mS8_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.x = add nsw i64 %i.p, -2
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.011.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.prol ], [ %i.g, %.lr.ph.i.i.i.preheader ]
  %.0610.i.i.i.prol = phi i64 [ %i.y, %.lr.ph.i.i.i.prol ], [ %i.w, %.lr.ph.i.i.i.preheader ]
  %.079.i.i.i.prol = phi ptr [ %i.z, %.lr.ph.i.i.i.prol ], [ %i.q, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.y = add i64 %.0610.i.i.i.prol, -1            ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.079.i.i.i.prol, i64 -64 ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %.011.i.i.i.prol, i64 -64 ; 3 uses
  %i.ab = load i32, ptr %i.z, align 64, !tbaa !246, !noalias !12765
end_hunk_2
begin_hunk_3_@_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE25priv_insert_forward_rangeINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEERKSC_mT_:bb.a
  store i32 %.pre81.i.i.i, ptr %i.ch, align 64, !tbaa !246
  %i.ci = getelementptr inbounds nuw i8, ptr %.046.i55.i.i.i, i64 384
  store i32 %.pre81.i.i.i, ptr %i.ci, align 64, !tbaa !246
  %i.cj = getelementptr inbounds nuw i8, ptr %.046.i55.i.i.i, i64 448
  %i.ck = add i64 %.07.i54.i.i.i, -8              ; 2 uses
  store i32 %.pre81.i.i.i, ptr %i.cj, align 64, !tbaa !246
  %i.cl = getelementptr inbounds nuw i8, ptr %.046.i55.i.i.i, i64 512
  %.not.i56.i.i.i.7 = icmp eq i64 %i.ck, 0
  br i1 %.not.i56.i.i.i.7, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i, label %.lr.ph.i53.i.i.i, !llvm.loop !12798

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i: ; preds = %.lr.ph.i53.i.i.i, %.lr.ph.i53.i.i.i.prol.loopexit
  %i.cm = sub i64 %3, %i.ac                       ; 3 uses
  %.pre.i.i.i.i.i = load i32, ptr %4, align 64, !tbaa !246 ; 5 uses
  %xtraiter30 = and i64 %i.cm, 3                  ; 2 uses
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i, %.lr.ph.i.i.i.i.i.prol
  %.017.i.i.i.i.i.prol = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.prol ], [ %i.cm, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ]
  %.01416.i.i.i.i.i.prol = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.prol ], [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ] ; 3 uses
  %prol.iter32 = phi i64 [ %prol.iter32.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ]
  %i.cn = add i64 %.017.i.i.i.i.i.prol, -1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i.prol) ]
  %i.co = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i.prol, align 64, !tbaa !246
  %i.cq = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i.prol, i64 64 ; 2 uses
  %prol.iter32.next = add i64 %prol.iter32, 1     ; 2 uses
  %prol.iter32.cmp.not = icmp eq i64 %prol.iter32.next, %xtraiter30
  br i1 %prol.iter32.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !12800

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i
  %.017.i.i.i.i.i.unr = phi i64 [ %i.cm, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.cn, %.lr.ph.i.i.i.i.i.prol ]
  %.01416.i.i.i.i.i.unr = phi ptr [ %i.h, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE17copy_n_and_updateIPS5_EEvRS6_T_m.exit57.i.i.i ], [ %i.cq, %.lr.ph.i.i.i.i.i.prol ]
  %i.cr = sub i64 %i.ac, %3
  %i.cs = icmp ugt i64 %i.cr, -4
  br i1 %i.cs, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.017.i.i.i.i.i = phi i64 [ %i.db, %.lr.ph.i.i.i.i.i ], [ %.017.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i ], [ %.01416.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.i) ]
  %i.ct = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %.01416.i.i.i.i.i, align 64, !tbaa !246
  %i.cv = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 64
  %i.cw = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %i.cv, align 64, !tbaa !246
  %i.cy = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 128
  %i.cz = add i32 %i.cw, 2
  store i32 %i.cz, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %i.cy, align 64, !tbaa !246
  %i.da = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 192
  %i.db = add i64 %.017.i.i.i.i.i, -4             ; 2 uses
  %i.dc = add i32 %i.cw, 3
  store i32 %i.dc, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i.i, ptr %i.da, align 64, !tbaa !246
  %i.dd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.i, i64 256
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.3, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !207

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit: ; preds = %.lr.ph.i42.i.i.i.prol.loopexit, %.lr.ph.i42.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.c, %bb.d
  %i.de = load i64, ptr %i.d, align 8, !tbaa !563
  %i.df = add i64 %i.de, %3
  store i64 %i.df, ptr %i.d, align 8, !tbaa !563
  %i.dg = load ptr, ptr %2, align 8, !tbaa !403
  store ptr %i.dg, ptr %0, align 8, !tbaa !459
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %i.a, i64 noundef %3, ptr %4)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_expand_forwardINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mT_NS_11move_detail17integral_constantIbLb0EEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE37priv_insert_forward_range_no_capacityINS0_3dtl21insert_n_copies_proxyIS5_EEEENS0_12vec_iteratorIPS3_Lb0EEESC_mT_NS_11move_detail17integral_constantIjLj1EEE(ptr dead_on_unwind noalias writable sret(%"class.boost::container::vec_iterator.207") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !564  ; 6 uses
  %i.c = sub i64 144115188075855871, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !563  ; 2 uses
  %.neg.i = sub i64 %3, %i.b
  %i.f = add i64 %.neg.i, %i.e
  %i.g = icmp ult i64 %i.c, %i.f
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ult i64 %i.b, 2305843009213693952
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 3
  %i.j = udiv i64 %i.i, 5
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.b, -6917529027641081857
  %i.l = shl i64 %i.b, 3
  %spec.select.i.i = select i1 %i.k, i64 -1, i64 %i.l
  br label %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit

_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.j, %bb.d ], [ %spec.select.i.i, %bb.e ]
  %i.m = add i64 %i.e, %3                         ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %.0.i.i, i64 144115188075855871)
  %i.o = tail call noundef i64 @llvm.umax.i64(i64 %i.m, i64 %i.n) ; 2 uses
  %i.p = icmp ugt i64 %i.m, 144115188075855871
  br i1 %i.p, label %bb.f, label %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit, !prof !272

bb.f:                                             ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit: ; preds = %_ZNK5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE13next_capacityINS0_16growth_factor_60EEEmm.exit
  %i.q = shl nuw nsw i64 %i.o, 6
  %i.r = tail call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %i.q, i64 noundef 64) #25 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.r, i64 64) ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !562    ; 6 uses
  %i.t = load i64, ptr %i.d, align 8, !tbaa !569  ; 4 uses
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %.not16.i.i.i = icmp eq ptr %i.s, %2
  br i1 %.not16.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.v = phi i32 [ %i.w, %.lr.ph.i.i.i ], [ %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted, %.lr.ph.i.i.i.preheader ]
  %.018.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.01517.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.r, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.x = load i32, ptr %.018.i.i.i, align 64, !tbaa !246
  store i32 %i.x, ptr %.01517.i.i.i, align 64, !tbaa !246
  %i.y = getelementptr inbounds nuw i8, ptr %.018.i.i.i, i64 64 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01517.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %2
  br i1 %.not.i.i.i, label %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !203

_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i: ; preds = %.lr.ph.i.i.i, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit
  %.015.lcssa.i.i.i = phi ptr [ %i.r, %_ZN5boost9container19vector_alloc_holderINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEmNS_11move_detail17integral_constantIjLj1EEEE8allocateEm.exit ], [ %i.z, %.lr.ph.i.i.i ] ; 14 uses
  %.not15.i.i.i.i = icmp eq i64 %3, 0
  br i1 %.not15.i.i.i.i, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.pre.i.i.i.i = load i32, ptr %4, align 64, !tbaa !246 ; 13 uses
  %.pre = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %min.iters.check = icmp ult i64 %3, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i.i
  %i.aa = shl i64 %3, 6
  %i.ab = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -60
  %bound0 = icmp ugt ptr %i.ac, @_ZN5boost9container4test24overaligned_copyable_int5countE
  %bound1 = icmp ult ptr %.015.lcssa.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 3 uses
  %i.ad = and i64 %3, 7
  %i.ae = shl i64 %n.vec, 6
  %i.af = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ae
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %i.ap, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %i.ah = shl i64 %index, 6                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep18 = getelementptr i8, ptr %i.ai, i64 64 ; 2 uses
  %i.aj = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep19 = getelementptr i8, ptr %i.aj, i64 128 ; 2 uses
  %i.ak = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep20 = getelementptr i8, ptr %i.ak, i64 192 ; 2 uses
  %i.al = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep21 = getelementptr i8, ptr %i.al, i64 256 ; 2 uses
  %i.am = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep22 = getelementptr i8, ptr %i.am, i64 320 ; 2 uses
  %i.an = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep23 = getelementptr i8, ptr %i.an, i64 384 ; 2 uses
  %i.ao = getelementptr i8, ptr %.015.lcssa.i.i.i, i64 %i.ah
  %next.gep24 = getelementptr i8, ptr %i.ao, i64 448 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep18) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep19) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep20) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep21) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep22) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep23) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %next.gep24) ]
  %i.ap = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.aq = add <4 x i32> %vec.phi17, splat (i32 1) ; 2 uses
  store i32 %.pre.i.i.i.i, ptr %next.gep, align 64, !tbaa !246, !alias.scope !12807
  store i32 %.pre.i.i.i.i, ptr %next.gep18, align 64, !tbaa !246, !alias.scope !12807
  store i32 %.pre.i.i.i.i, ptr %next.gep19, align 64, !tbaa !246, !alias.scope !12807
  store i32 %.pre.i.i.i.i, ptr %next.gep20, align 64, !tbaa !246, !alias.scope !12807
  store i32 %.pre.i.i.i.i, ptr %next.gep21, align 64, !tbaa !246, !alias.scope !12807
  store i32 %.pre.i.i.i.i, ptr %next.gep22, align 64, !tbaa !246, !alias.scope !12807
  store i32 %.pre.i.i.i.i, ptr %next.gep23, align 64, !tbaa !246, !alias.scope !12807
  store i32 %.pre.i.i.i.i, ptr %next.gep24, align 64, !tbaa !246, !alias.scope !12807
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !12803

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.aq, %i.ap
  %i.as = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.as, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247, !alias.scope !12808, !noalias !12807
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i.i, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph.preheader.i.i.i.i ], [ %i.as, %middle.block ] ; 2 uses
  %.017.i.i.i.i.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %.lr.ph.preheader.i.i.i.i ], [ %i.ad, %middle.block ] ; 4 uses
  %.01416.i.i.i.i.ph = phi ptr [ %.015.lcssa.i.i.i, %vector.memcheck ], [ %.015.lcssa.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.af, %middle.block ] ; 2 uses
  %i.at = add i64 %.017.i.i.i.i.ph, -1
  %xtraiter = and i64 %.017.i.i.i.i.ph, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %i.au = phi i32 [ %i.aw, %.lr.ph.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.preheader ]
  %.017.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i.i.i.prol ], [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ]
  %.01416.i.i.i.i.prol = phi ptr [ %i.ax, %.lr.ph.i.i.i.i.prol ], [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.av = add i64 %.017.i.i.i.i.prol, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i.prol) ]
  %i.aw = add i32 %i.au, 1                        ; 3 uses
  store i32 %i.aw, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i.prol, align 64, !tbaa !246
  %i.ax = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i.prol, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !12805

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.unr = phi i32 [ %.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.i.i.prol ]
  %.017.i.i.i.i.unr = phi i64 [ %.017.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %.lr.ph.i.i.i.i.prol ]
  %.01416.i.i.i.i.unr = phi ptr [ %.01416.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.i.i.prol ]
  %i.ay = icmp ult i64 %i.at, 3
  br i1 %i.ay, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %i.az = phi i32 [ %i.bh, %.lr.ph.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 4 uses
  %.017.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i ], [ %.017.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.01416.i.i.i.i = phi ptr [ %i.bi, %.lr.ph.i.i.i.i ], [ %.01416.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01416.i.i.i.i) ]
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %.01416.i.i.i.i, align 64, !tbaa !246
  %i.bb = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 64
  %i.bc = add i32 %i.az, 2
  store i32 %i.bc, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %i.bb, align 64, !tbaa !246
  %i.bd = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 128
  %i.be = add i32 %i.az, 3
  store i32 %i.be, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %i.bd, align 64, !tbaa !246
  %i.bf = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 192
  %i.bg = add i64 %.017.i.i.i.i, -4               ; 2 uses
  %i.bh = add i32 %i.az, 4                        ; 2 uses
  store i32 %i.bh, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  store i32 %.pre.i.i.i.i, ptr %i.bf, align 64, !tbaa !246
  %i.bi = getelementptr inbounds nuw i8, ptr %.01416.i.i.i.i, i64 256
  %.not.i.i.i.i.3 = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.3, label %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !12806

_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %middle.block, %_ZN5boost9container24uninitialized_move_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_EENS0_3dtl41disable_if_memtransfer_copy_constructibleIT0_T1_SA_E4typeERT_S9_S9_SA_.exit.i.i
  %.not16.i19.i.i = icmp eq ptr %2, %i.u
  br i1 %.not16.i19.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.preheader.i.i

.lr.ph.i20.preheader.i.i:                         ; preds = %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %.015.lcssa.i.i.i, i64 %3
  %.pre9 = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %.lr.ph.i20.i.i

.lr.ph.i20.i.i:                                   ; preds = %.lr.ph.i20.i.i, %.lr.ph.i20.preheader.i.i
  %i.bk = phi i32 [ %i.bl, %.lr.ph.i20.i.i ], [ %.pre9, %.lr.ph.i20.preheader.i.i ]
  %.018.i21.i.i = phi ptr [ %i.bn, %.lr.ph.i20.i.i ], [ %2, %.lr.ph.i20.preheader.i.i ] ; 2 uses
  %.01517.i22.i.i = phi ptr [ %i.bo, %.lr.ph.i20.i.i ], [ %i.bj, %.lr.ph.i20.preheader.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.01517.i22.i.i) ]
  %i.bl = add i32 %i.bk, 1                        ; 2 uses
  store i32 %i.bl, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  %i.bm = load i32, ptr %.018.i21.i.i, align 64, !tbaa !246
  store i32 %i.bm, ptr %.01517.i22.i.i, align 64, !tbaa !246
  %i.bn = getelementptr inbounds nuw i8, ptr %.018.i21.i.i, i64 64 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.01517.i22.i.i, i64 64
  %.not.i23.i.i = icmp eq ptr %i.bn, %i.u
  br i1 %.not.i23.i.i, label %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, label %.lr.ph.i20.i.i, !llvm.loop !203

_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i: ; preds = %.lr.ph.i20.i.i, %_ZNK5boost9container3dtl21insert_n_copies_proxyINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEE31uninitialized_copy_n_and_updateIPS5_EEvRS6_T_m.exit.i.i
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSB_mT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i
  %.not3.i.i = icmp eq i64 %i.t, 0
  br i1 %.not3.i.i, label %bb.h, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.bp = trunc i64 %i.t to i32
  %i.bq = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.bp
  store i32 %i.bq, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.preheader.i.i, %bb.g
  %i.br = load i64, ptr %i.a, align 8, !tbaa !564
  %i.bs = shl i64 %i.br, 6
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.s, i64 noundef %i.bs, i64 noundef 64) #26
  %.pre.i = load i64, ptr %i.d, align 8, !tbaa !563
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSB_mT_.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE40priv_insert_forward_range_new_allocationINS0_3dtl21insert_n_copies_proxyIS5_EEEEvPS3_mSB_mT_.exit: ; preds = %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i, %bb.h
  %i.bt = phi i64 [ %i.t, %_ZN5boost9container35uninitialized_move_and_insert_allocINS0_13new_allocatorINS0_4test24overaligned_copyable_intEEEPS4_S6_NS0_3dtl21insert_n_copies_proxyIS5_EEEEvRT_T0_SC_SC_T1_mT2_.exit.i ], [ %.pre.i, %bb.h ]
  %i.bu = ptrtoint ptr %2 to i64
  %i.bv = ptrtoint ptr %i.s to i64
  %i.bw = sub i64 %i.bu, %i.bv
  store ptr %i.r, ptr %1, align 8, !tbaa !562
  %i.bx = add i64 %i.bt, %3
  store i64 %i.bx, ptr %i.d, align 8, !tbaa !563
  store i64 %i.o, ptr %i.a, align 8, !tbaa !261
  %i.by = getelementptr inbounds i8, ptr %i.r, i64 %i.bw
  store ptr %i.by, ptr %0, align 8, !tbaa !459
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE6assignINS0_17constant_iteratorIS3_EEEEvT_SA_PNS_11move_detail13disable_if_orIvNSB_7is_sameINSB_17integral_constantIjLj1EEENSE_IjLj0EEEEENSB_14is_convertibleISA_mEENS0_3dtl17is_input_iteratorISA_Xsr21has_iterator_categoryISA_EE5valueEEENSB_5bool_ILb0EEEE4typeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sub i64 %2, %4                           ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !564  ; 2 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %i.a, 144115188075855871
  br i1 %i.e, label %bb.c, label %bb.d, !prof !272

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5boost9container18throw_length_errorEPKc(ptr noundef nonnull @.str.21) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = shl nuw nsw i64 %i.a, 6
  %i.g = tail call noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef %i.f, i64 noundef 64) #25 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.g, i64 64) ]
  %i.h = load ptr, ptr %0, align 8, !tbaa !562    ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !569  ; 2 uses
  %.not3.i.i = icmp eq i64 %i.j, 0
  br i1 %.not3.i.i, label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE16priv_destroy_allEv.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4
  %i.k = trunc i64 %i.j to i32
  %i.l = sub i32 %_ZN5boost9container4test24overaligned_copyable_int5countE.promoted.i.i, %i.k
  store i32 %i.l, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247
  br label %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE16priv_destroy_allEv.exit

_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE16priv_destroy_allEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i
  store i64 0, ptr %i.i, align 8, !tbaa !569
  %i.m = shl nuw i64 %i.c, 6
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.h, i64 noundef %i.m, i64 noundef 64) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZN5boost9container6vectorINS0_4test24overaligned_copyable_intENS0_13new_allocatorIS3_EEvE16priv_destroy_allEv.exit, %bb.d
  store ptr %i.g, ptr %0, align 8, !tbaa !562
  store i64 %i.a, ptr %i.b, align 8, !tbaa !261
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !569
  %.not12.i.i = icmp eq i64 %2, %4
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %.pre = load i32, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, align 4, !tbaa !247 ; 3 uses
  %min.iters.check = icmp ult i64 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.o = getelementptr i8, ptr %1, i64 4
  %bound0 = icmp ugt ptr %i.o, @_ZN5boost9container4test24overaligned_copyable_int5countE
  %bound1 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN5boost9container4test24overaligned_copyable_int5countE, i64 4)
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.preheader55, label %vector.ph

end_hunk_3
