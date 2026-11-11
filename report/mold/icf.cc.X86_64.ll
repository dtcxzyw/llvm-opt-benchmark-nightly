Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/icf.cc.X86_64?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1791
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZN3tbb6detail2d117concurrent_vectorIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EEE14create_segmentEPSt6atomicIPS7_Emm:bb.a
  %xtraiter110 = and i32 %.sroa.0.09.us.i17, 7    ; 2 uses
  %lcmp.mod111.not = icmp eq i32 %xtraiter110, 0
  br i1 %lcmp.mod111.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol

.lr.ph.i.i.us.i21.prol:                           ; preds = %.lr.ph.i.i.us.i21.preheader, %.lr.ph.i.i.us.i21.prol
  %.01.i.i.us.i22.prol = phi i32 [ %i.bx, %.lr.ph.i.i.us.i21.prol ], [ %.sroa.0.09.us.i17, %.lr.ph.i.i.us.i21.preheader ]
  %prol.iter112 = phi i32 [ %prol.iter112.next, %.lr.ph.i.i.us.i21.prol ], [ 0, %.lr.ph.i.i.us.i21.preheader ]
  %i.bx = add nsw i32 %.01.i.i.us.i22.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter112.next = add i32 %prol.iter112, 1   ; 2 uses
  %prol.iter112.cmp.not = icmp eq i32 %prol.iter112.next, %xtraiter110
  br i1 %prol.iter112.cmp.not, label %.lr.ph.i.i.us.i21.prol.loopexit, label %.lr.ph.i.i.us.i21.prol, !llvm.loop !1000

.lr.ph.i.i.us.i21.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i21.prol, %.lr.ph.i.i.us.i21.preheader
  %.01.i.i.us.i22.unr = phi i32 [ %.sroa.0.09.us.i17, %.lr.ph.i.i.us.i21.preheader ], [ %i.bx, %.lr.ph.i.i.us.i21.prol ]
  %i.by = icmp ult i32 %.sroa.0.09.us.i17, 8
  br i1 %i.by, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, label %.lr.ph.i.i.us.i21

.lr.ph.i.i.us.i21:                                ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21
  %.01.i.i.us.i22 = phi i32 [ %i.bz, %.lr.ph.i.i.us.i21 ], [ %.01.i.i.us.i22.unr, %.lr.ph.i.i.us.i21.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.bz = add nsw i32 %.01.i.i.us.i22, -8
  tail call void @llvm.x86.sse2.pause()
  %i.ca = icmp sgt i32 %.01.i.i.us.i22, 8
  br i1 %i.ca, label %.lr.ph.i.i.us.i21, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20: ; preds = %.lr.ph.i.i.us.i21.prol.loopexit, %.lr.ph.i.i.us.i21, %bb.j
  %i.cb = shl i32 %.sroa.0.09.us.i17, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20, %bb.i
  %.sroa.0.1.us.i19 = phi i32 [ %i.cb, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i20 ], [ %.sroa.0.09.us.i17, %bb.i ]
  %i.cc = load atomic ptr, ptr %i.br acquire, align 8
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %.lr.ph.i16, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit, !llvm.loop !26

bb.k:                                             ; preds = %bb.a
  %i.ce = shl nuw i64 1, %2
  %i.cf = and i64 %i.ce, -2
  %i.cg = icmp eq i64 %3, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = icmp eq i64 %2, 0
  %i.ci = shl i64 8, %2
  %i.cj = select i1 %i.ch, i64 16, i64 %i.ci
  %i.ck = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.cj) #13
  %i.cl = sub i64 0, %3
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2
  store atomic ptr %i.cm, ptr %i.cn release, align 8
  br label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit

bb.m:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %2 ; 2 uses
  %i.cp = load atomic ptr, ptr %i.co acquire, align 8
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit

.lr.ph.i25:                                       ; preds = %bb.m, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27
  %.sroa.0.09.us.i26 = phi i32 [ %.sroa.0.1.us.i28, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27 ], [ 1, %bb.m ] ; 8 uses
  %i.cr = icmp slt i32 %.sroa.0.09.us.i26, 17
  br i1 %i.cr, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i25
  %i.cs = tail call noundef i32 @sched_yield() #13 ; 0 uses
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

bb.o:                                             ; preds = %.lr.ph.i25
  %i.ct = icmp sgt i32 %.sroa.0.09.us.i26, 0
  br i1 %i.ct, label %.lr.ph.i.i.us.i30.preheader, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29

.lr.ph.i.i.us.i30.preheader:                      ; preds = %bb.o
  %xtraiter = and i32 %.sroa.0.09.us.i26, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol

.lr.ph.i.i.us.i30.prol:                           ; preds = %.lr.ph.i.i.us.i30.preheader, %.lr.ph.i.i.us.i30.prol
  %.01.i.i.us.i31.prol = phi i32 [ %i.cu, %.lr.ph.i.i.us.i30.prol ], [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.us.i30.prol ], [ 0, %.lr.ph.i.i.us.i30.preheader ]
  %i.cu = add nsw i32 %.01.i.i.us.i31.prol, -1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.us.i30.prol.loopexit, label %.lr.ph.i.i.us.i30.prol, !llvm.loop !1001

.lr.ph.i.i.us.i30.prol.loopexit:                  ; preds = %.lr.ph.i.i.us.i30.prol, %.lr.ph.i.i.us.i30.preheader
  %.01.i.i.us.i31.unr = phi i32 [ %.sroa.0.09.us.i26, %.lr.ph.i.i.us.i30.preheader ], [ %i.cu, %.lr.ph.i.i.us.i30.prol ]
  %i.cv = icmp ult i32 %.sroa.0.09.us.i26, 8
  br i1 %i.cv, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, label %.lr.ph.i.i.us.i30

.lr.ph.i.i.us.i30:                                ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30
  %.01.i.i.us.i31 = phi i32 [ %i.cw, %.lr.ph.i.i.us.i30 ], [ %.01.i.i.us.i31.unr, %.lr.ph.i.i.us.i30.prol.loopexit ] ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %i.cw = add nsw i32 %.01.i.i.us.i31, -8
  tail call void @llvm.x86.sse2.pause()
  %i.cx = icmp sgt i32 %.01.i.i.us.i31, 8
  br i1 %i.cx, label %.lr.ph.i.i.us.i30, label %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, !llvm.loop !1

_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29: ; preds = %.lr.ph.i.i.us.i30.prol.loopexit, %.lr.ph.i.i.us.i30, %bb.o
  %i.cy = shl i32 %.sroa.0.09.us.i26, 1
  br label %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27: ; preds = %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29, %bb.n
  %.sroa.0.1.us.i28 = phi i32 [ %i.cy, %_ZN3tbb6detail2d013machine_pauseEi.exit.i.us.i29 ], [ %.sroa.0.09.us.i26, %bb.n ]
  %i.cz = load atomic ptr, ptr %i.co acquire, align 8
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.lr.ph.i25, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit, !llvm.loop !26

_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph89
  %lcmp.mod118.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod118.not, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit, label %.lr.ph89.epil.preheader

.lr.ph89.epil.preheader:                          ; preds = %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa, %.preheader
  %.088.epil.init = phi i64 [ 1, %.preheader ], [ %i.bo, %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa ]
  %lcmp.mod119 = icmp ne i64 %xtraiter116, 0
  call void @llvm.assume(i1 %lcmp.mod119)
  br label %.lr.ph89.epil

.lr.ph89.epil:                                    ; preds = %.lr.ph89.epil, %.lr.ph89.epil.preheader
  %.088.epil = phi i64 [ %i.dc, %.lr.ph89.epil ], [ %.088.epil.init, %.lr.ph89.epil.preheader ] ; 2 uses
  %epil.iter117 = phi i64 [ %epil.iter117.next, %.lr.ph89.epil ], [ 0, %.lr.ph89.epil.preheader ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.088.epil
  store atomic ptr %i.v, ptr %i.db release, align 8
  %i.dc = add nuw nsw i64 %.088.epil, 1
  %epil.iter117.next = add i64 %epil.iter117, 1   ; 2 uses
  %epil.iter117.cmp.not = icmp eq i64 %epil.iter117.next, %xtraiter116
  br i1 %epil.iter117.cmp.not, label %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit, label %.lr.ph89.epil, !llvm.loop !1002

_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i27, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i, %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.us.i18, %_ZN3tbb6detail2d015spin_wait_whileIPPN4mold12InputSectionINS3_6X86_64EEEZNS1_18spin_wait_while_eqIS8_S8_EET_RKSt6atomicISA_ET0_St12memory_orderEUlS8_E_EESA_SE_SF_SG_.exit.loopexit.unr-lcssa, %.lr.ph89.epil, %_ZN3tbb6detail2d113segment_tableIPN4mold12InputSectionINS3_6X86_64EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE25extend_table_if_necessaryERPSt6atomicIPS7_Emm.exit, %bb.m, %_ZNSt6atomicIPPN4mold12InputSectionINS0_6X86_64EEEE23compare_exchange_strongERS5_S5_St12memory_order.exit, %bb.h, %bb.c, %bb.l
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE15internal_insertIRSH_ZNSK_21internal_insert_valueISH_EESF_INS1_15solist_iteratorISK_SH_EEbEOT_EUlmE_EENSK_27internal_insert_return_typeESS_T0_(ptr dead_on_unwind noalias writable sret(%"struct.tbb::detail::d2::concurrent_unordered_base<tbb::detail::d2::concurrent_unordered_map_traits<mold::InputSection<mold::X86_64> *, mold::InputSection<mold::X86_64> *, std::hash<mold::InputSection<mold::X86_64> *>, std::equal_to<mold::InputSection<mold::X86_64> *>, tbb::detail::d1::tbb_allocator<std::pair<mold::InputSection<mold::X86_64> *const, mold::InputSection<mold::X86_64> *>>, true>>::internal_insert_return_type") align 8 %0, ptr noundef nonnull align 8 dereferenceable(592) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !130
  %i.b = ptrtoint ptr %i.a to i64                 ; 9 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %i.b, 8
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %i.b, 16
  %.sroa.48.0.extract.shift.i.i.i = lshr i64 %i.b, 24
  %.sroa.59.0.extract.shift.i.i.i = lshr i64 %i.b, 32
  %.sroa.610.0.extract.shift.i.i.i = lshr i64 %i.b, 40
  %.sroa.711.0.extract.shift.i.i.i = lshr i64 %i.b, 48
  %.sroa.812.0.extract.shift.i.i.i = lshr i64 %i.b, 56
  %i.c = and i64 %i.b, 255
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51
  %i.f = and i64 %.sroa.2.0.extract.shift.i.i.i, 255
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51
  %i.i = and i64 %.sroa.3.0.extract.shift.i.i.i, 255
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51
  %i.l = and i64 %.sroa.48.0.extract.shift.i.i.i, 255
  %i.m = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  %i.o = and i64 %.sroa.59.0.extract.shift.i.i.i, 255
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = and i64 %.sroa.610.0.extract.shift.i.i.i, 255
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !51
  %i.u = and i64 %.sroa.711.0.extract.shift.i.i.i, 255
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %.sroa.812.0.extract.shift.i.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51
  %.sroa.10.0.insert.ext.i.i.i = zext i8 %i.e to i64
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i64 %.sroa.10.0.insert.ext.i.i.i, 56
  %.sroa.9.0.insert.ext.i.i.i = zext i8 %i.h to i64
  %.sroa.9.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i.i, 48
  %.sroa.8.0.insert.ext.i.i.i = zext i8 %i.k to i64
  %.sroa.8.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i.i.i, 40
  %.sroa.7.0.insert.ext.i.i.i = zext i8 %i.n to i64
  %.sroa.7.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i.i, 32
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.q to i64
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.t to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.w to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.y to i64
  %.sroa.9.0.insert.insert.i.i.i = or disjoint i64 %.sroa.10.0.insert.shift.i.i.i, %.sroa.9.0.insert.shift.i.i.i
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i64 %.sroa.9.0.insert.insert.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.7.0.insert.insert.i.i.i = or disjoint i64 %.sroa.8.0.insert.insert.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i64 %.sroa.7.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.4.0.insert.mask.i.i.i.a = or disjoint i64 %.sroa.6.0.insert.insert.i.i.i, %.sroa.5.0.insert.shift.i.i.i
  %.sroa.0.0.insert.mask.i.i.i.a = or disjoint i64 %.sroa.4.0.insert.mask.i.i.i.a, 1
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.z = or i64 %.sroa.0.0.insert.insert.i.i.i, %.sroa.0.0.insert.mask.i.i.i.a ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8
  %i.ac = urem i64 %i.b, %i.ab
  %i.ad = tail call noundef ptr @_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE10get_bucketEm(ptr noundef nonnull align 8 dereferenceable(592) %1, i64 noundef %i.ac) ; 3 uses
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8 ; 2 uses
  %.not18.i = icmp eq ptr %i.ae, null
  br i1 %.not18.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge2.i
  %.1 = phi ptr [ %.019.i, %.critedge2.i ], [ %i.ad, %bb.a ] ; 2 uses
  %.019.i = phi ptr [ %i.an, %.critedge2.i ], [ %i.ae, %bb.a ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !295 ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.z
  br i1 %i.ah, label %.critedge2.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.ai = icmp eq i64 %i.ag, %i.z
  br i1 %i.ai, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.019.i, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !130
  %i.al = load ptr, ptr %2, align 8, !tbaa !130
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %.loopexit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.an = load atomic ptr, ptr %.019.i acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.an, null
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !1003

.loopexit:                                        ; preds = %.critedge2.i, %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ %i.ad, %bb.a ], [ %.1, %bb.b ], [ %.1, %bb.c ], [ %.019.i, %.critedge2.i ] ; 2 uses
  %.0.lcssa.i = phi ptr [ null, %bb.a ], [ %.019.i, %bb.b ], [ %.019.i, %bb.c ], [ null, %.critedge2.i ] ; 2 uses
  %i.ao = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 32) #13 ; 8 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !394
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.z, ptr %i.ap, align 8, !tbaa !295
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store atomic ptr %.0.lcssa.i, ptr %i.ao release, align 8
  %i.ar = cmpxchg ptr %.2, ptr %.0.lcssa.i, ptr %i.ao seq_cst seq_cst, align 8
  %i.as = extractvalue { ptr, i1 } %i.ar, 1
  br i1 %i.as, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26
  %.032 = phi ptr [ %.4, %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26 ], [ %.2, %.loopexit ] ; 3 uses
  %i.at = load atomic ptr, ptr %.032 acquire, align 8 ; 2 uses
  %.not18.i18 = icmp eq ptr %i.at, null
  br i1 %.not18.i18, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.lr.ph, %.critedge2.i24
  %.3 = phi ptr [ %.019.i20, %.critedge2.i24 ], [ %.032, %.lr.ph ] ; 2 uses
  %.019.i20 = phi ptr [ %i.bc, %.critedge2.i24 ], [ %i.at, %.lr.ph ] ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.019.i20, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !295 ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.z
  br i1 %i.aw, label %.critedge2.i24, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i19
  %i.ax = icmp eq i64 %i.av, %i.z
  br i1 %i.ax, label %bb.e, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %.019.i20, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !130
  %i.ba = load ptr, ptr %2, align 8, !tbaa !130
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26, label %.critedge2.i24

.critedge2.i24:                                   ; preds = %bb.e, %.lr.ph.i19
  %i.bc = load atomic ptr, ptr %.019.i20 acquire, align 8 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bc, null
  br i1 %.not.i25, label %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26, label %.lr.ph.i19, !llvm.loop !1003

_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26: ; preds = %bb.d, %bb.e, %.critedge2.i24, %.lr.ph
  %.4 = phi ptr [ %.032, %.lr.ph ], [ %.3, %bb.d ], [ %.3, %bb.e ], [ %.019.i20, %.critedge2.i24 ] ; 2 uses
  %.0.lcssa.i21 = phi ptr [ null, %.lr.ph ], [ %.019.i20, %bb.d ], [ %.019.i20, %bb.e ], [ null, %.critedge2.i24 ] ; 2 uses
  store atomic ptr %.0.lcssa.i21, ptr %i.ao release, align 8
  %i.bd = cmpxchg ptr %.4, ptr %.0.lcssa.i21, ptr %i.ao seq_cst seq_cst, align 8
  %i.be = extractvalue { ptr, i1 } %i.bd, 1
  br i1 %i.be, label %._crit_edge, label %.lr.ph, !llvm.loop !1004

._crit_edge:                                      ; preds = %_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE12search_afterERPNS1_9list_nodeImEEmRSG_.exit26, %.loopexit
  %i.bf = atomicrmw add ptr %1, i64 1 seq_cst, align 8
  %i.bg = add i64 %i.bf, 1
  %i.bh = load atomic i64, ptr %i.aa acquire, align 8 ; 3 uses
  %i.bi = uitofp i64 %i.bg to float
  %i.bj = uitofp i64 %i.bh to float
  %i.bk = fdiv float %i.bi, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !232
  %i.bn = fcmp ogt float %i.bk, %i.bm
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.bo = shl i64 %i.bh, 1
  %i.bp = cmpxchg ptr %i.aa, i64 %i.bh, i64 %i.bo seq_cst seq_cst, align 8 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !392
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.bq, align 8, !tbaa !1005
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.br, align 8, !tbaa !1006
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE10get_bucketEm(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = or i64 %1, 1
  %i.c = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true) ; 5 uses
  %i.d = xor i64 %i.c, 63                         ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d ; 3 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.c, 63
  %i.k = shl i64 8, %i.d
  %i.l = select i1 %i.j, i64 16, i64 %i.k         ; 2 uses
  %i.m = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.l) #13 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %i.l, i1 false), !tbaa !394
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = lshr exact i64 -9223372036854775808, %i.c
  %i.o = and i64 %i.n, -2
  %i.p = sub i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.p
  %i.r = cmpxchg ptr %i.g, ptr null, ptr %i.q seq_cst seq_cst, align 8
  %i.s = extractvalue { ptr, i1 } %i.r, 1
  br i1 %i.s, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i, label %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i

_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i: ; preds = %bb.c
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.m) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i: ; preds = %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i, %bb.c, %bb.b
  %i.t = load atomic ptr, ptr %i.g acquire, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i, %bb.a
  %.0.i.i = phi ptr [ %i.t, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.v = icmp eq ptr %.0.i.i, %i.u
  br i1 %i.v, label %bb.e, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3tbb6detail2r115throw_exceptionENS0_2d012exception_idE(i32 noundef 1) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit: ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i, i64 %1
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit
  tail call void @_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE11init_bucketEm(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EEixEm.exit
  %i.z = load atomic ptr, ptr %i.e acquire, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.d ; 3 uses
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq i64 %i.c, 63
  %i.ae = shl i64 8, %i.d
  %i.af = select i1 %i.ad, i64 16, i64 %i.ae      ; 2 uses
  %i.ag = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef %i.af) #13 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ag, i8 0, i64 %i.af, i1 false), !tbaa !394
  %.not.i.i.i5 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i5, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i7, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = lshr exact i64 -9223372036854775808, %i.c
  %i.ai = and i64 %i.ah, -2
  %i.aj = sub i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.aj
  %i.al = cmpxchg ptr %i.aa, ptr null, ptr %i.ak seq_cst seq_cst, align 8
  %i.am = extractvalue { ptr, i1 } %i.al, 1
  br i1 %i.am, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i7, label %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i6

_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i6: ; preds = %bb.i
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef nonnull %i.ag) #13
  br label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i7

_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE14enable_segmentERPS8_PS3_IST_Emm.exit.i.i7: ; preds = %_ZNSt6atomicIPS_IPN3tbb6detail2d29list_nodeImEEEE23compare_exchange_strongERS7_S7_St12memory_order.exit.i.i.i6, %bb.i, %bb.h
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeINS1_15vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS6_6X86_64EEENS1_23cache_aligned_allocatorISA_EEEESA_EEEENS1_23quick_sort_pretest_bodyISE_ZNS6_L18print_icf_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EEKNS1_16auto_partitionerEE6cancelERNS1_14execution_dataE:bb.a
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeINS1_15vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS6_6X86_64EEENS1_23cache_aligned_allocatorISA_EEEESA_EEEENS1_23quick_sort_pretest_bodyISE_ZNS6_L18print_icf_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 24
  %i.t = atomicrmw add ptr %i.s, i64 -1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.t, 1
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeINS1_15vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS6_6X86_64EEENS1_23cache_aligned_allocatorISA_EEEESA_EEEENS1_23quick_sort_pretest_bodyISE_ZNS6_L18print_icf_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 16
  %i.v = ptrtoint ptr %i.u to i64
  tail call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.v) #13
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeINS1_15vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS6_6X86_64EEENS1_23cache_aligned_allocatorISA_EEEESA_EEEENS1_23quick_sort_pretest_bodyISE_ZNS6_L18print_icf_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeINS1_15vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS6_6X86_64EEENS1_23cache_aligned_allocatorISA_EEEESA_EEEENS1_23quick_sort_pretest_bodyISE_ZNS6_L18print_icf_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EEKNS1_16auto_partitionerEE8finalizeERKNS1_14execution_dataE.exit: ; preds = %bb.b, %bb.a, %bb.c, %bb.d
  %i.w = inttoptr i64 %i.d to ptr
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.w, ptr noundef nonnull align 64 dereferenceable(168) %0, i64 noundef 192, ptr noundef nonnull align 8 dereferenceable(12) %1) #13
  ret ptr null
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeINS1_15vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS6_6X86_64EEENS1_23cache_aligned_allocatorISA_EEEESA_EEEENS1_23quick_sort_pretest_bodyISE_ZNS6_L18print_icf_sectionsIS8_EEvRNS6_7ContextIT_EEEUlSA_SA_E_EEKNS1_16auto_partitionerEE8run_bodyERSF_(ptr nofree noundef nonnull readonly align 64 captures(none) dereferenceable(168) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !241, !noalias !1118
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !242, !noalias !1118 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !241, !noalias !1119 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !242, !noalias !1119 ; 2 uses
  %i.h = icmp ne ptr %i.e, %i.a                   ; 2 uses
  %i.i = icmp ne i64 %i.g, %i.c
  %.not3.i21.i.i.i.i.i = select i1 %i.h, i1 true, i1 %i.i
  br i1 %.not3.i21.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d123quick_sort_pretest_bodyINS3_15vector_iteratorINS3_17concurrent_vectorIPN4mold12InputSectionINS7_6X86_64EEENS3_23cache_aligned_allocatorISB_EEEESB_EEZNS7_L18print_icf_sectionsIS9_EEvRNS7_7ContextIT_EEEUlSB_SB_E_EEJRNS3_13blocked_rangeISF_EEEEENSt13invoke_resultISI_JDpT0_EE4typeEOSI_DpOST_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !243, !noalias !1119
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.024.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.bl, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.613.023.i.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.bg, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i.i.i ] ; 4 uses
  %.sroa.12.022.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %.sroa.12.1.i.i.i.i.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i.i.i ] ; 3 uses
  %i.n = and i32 %.024.i.i.i.i.i, 63
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 64, !tbaa !1120, !nonnull !172, !align !285 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 15
  %i.r = load atomic i8, ptr %i.q monotonic, align 1
  %i.s = icmp eq i8 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %.0.i.i.i.i.i.i.i = select i1 %i.s, ptr %i.u, ptr %i.p
  %i.v = tail call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i.i.i.i) #13
  br i1 %i.v, label %_ZN3tbb6detail2d06invokeIRKNS0_2d123quick_sort_pretest_bodyINS3_15vector_iteratorINS3_17concurrent_vectorIPN4mold12InputSectionINS7_6X86_64EEENS3_23cache_aligned_allocatorISB_EEEESB_EEZNS7_L18print_icf_sectionsIS9_EEvRNS7_7ContextIT_EEEUlSB_SB_E_EEJRNS3_13blocked_rangeISF_EEEEENSt13invoke_resultISI_JDpT0_EE4typeEOSI_DpOST_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.w = icmp eq ptr %.sroa.12.022.i.i.i.i.i, null ; 2 uses
  br i1 %i.w, label %bb.e, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit8.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = or i64 %.sroa.613.023.i.i.i.i.i, 1
  %i.y = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.x, i1 true)
  %i.z = xor i64 %i.y, 63
  %i.aa = load atomic ptr, ptr %i.m acquire, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load atomic ptr, ptr %i.ab acquire, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.613.023.i.i.i.i.i
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit8.i.i.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit8.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.e ], [ %.sroa.12.022.i.i.i.i.i, %bb.d ]
  %i.ae = load ptr, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  %i.af = add i64 %.sroa.613.023.i.i.i.i.i, -1    ; 3 uses
  %i.ag = or i64 %i.af, 1
  %i.ah = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = load atomic ptr, ptr %i.m acquire, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.af
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !130 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !249
  %i.ao = getelementptr i8, ptr %i.ae, i64 48
  %.val4.i.i.i.i.i = load i32, ptr %i.ao, align 8, !tbaa !250
  %.val5.i.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !249
  %i.ap = getelementptr i8, ptr %i.an, i64 48
  %.val6.i.i.i.i.i = load i32, ptr %i.ap, align 8, !tbaa !250
  %i.aq = getelementptr i8, ptr %.val.i.i.i.i.i, i64 128
  %.val.val.i.i.i.i.i = load i64, ptr %i.aq, align 8, !tbaa !275
  %i.ar = getelementptr i8, ptr %.val5.i.i.i.i.i, i64 128
  %.val5.val.i.i.i.i.i = load i64, ptr %i.ar, align 8, !tbaa !275
  %i.as = shl i64 %.val.val.i.i.i.i.i, 32
  %i.at = sext i32 %.val4.i.i.i.i.i to i64
  %i.au = or i64 %i.as, %i.at
  %i.av = shl i64 %.val5.val.i.i.i.i.i, 32
  %i.aw = sext i32 %.val6.i.i.i.i.i to i64
  %i.ax = or i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.au, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit8.i.i.i.i.i
  %i.az = load ptr, ptr %i.l, align 64, !tbaa !1120, !nonnull !172, !align !285 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15
  %i.bb = load atomic i8, ptr %i.ba monotonic, align 1
  %i.bc = icmp eq i8 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %.0.i.i9.i.i.i.i.i = select i1 %i.bc, ptr %i.be, ptr %i.az
  %i.bf = tail call noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i9.i.i.i.i.i) #13 ; 0 uses
  br label %_ZN3tbb6detail2d06invokeIRKNS0_2d123quick_sort_pretest_bodyINS3_15vector_iteratorINS3_17concurrent_vectorIPN4mold12InputSectionINS7_6X86_64EEENS3_23cache_aligned_allocatorISB_EEEESB_EEZNS7_L18print_icf_sectionsIS9_EEvRNS7_7ContextIT_EEEUlSB_SB_E_EEJRNS3_13blocked_rangeISF_EEEEENSt13invoke_resultISI_JDpT0_EE4typeEOSI_DpOST_.exit

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit8.i.i.i.i.i
  %i.bg = add i64 %.sroa.613.023.i.i.i.i.i, 1     ; 3 uses
  %i.bh = and i64 %i.af, %i.bg
  %i.bi = icmp eq i64 %i.bh, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.12.022.i.i.i.i.i, i64 8
  %i.bk = select i1 %i.w, i1 true, i1 %i.bi
  %.sroa.12.1.i.i.i.i.i = select i1 %i.bk, ptr null, ptr %i.bj
  %i.bl = add nuw nsw i32 %.024.i.i.i.i.i, 1
  %i.bm = icmp ne i64 %i.bg, %i.c
  %.not3.i.i.i.i.i.i = select i1 %i.h, i1 true, i1 %i.bm
  br i1 %.not3.i.i.i.i.i.i, label %bb.b, label %_ZN3tbb6detail2d06invokeIRKNS0_2d123quick_sort_pretest_bodyINS3_15vector_iteratorINS3_17concurrent_vectorIPN4mold12InputSectionINS7_6X86_64EEENS3_23cache_aligned_allocatorISB_EEEESB_EEZNS7_L18print_icf_sectionsIS9_EEvRNS7_7ContextIT_EEEUlSB_SB_E_EEJRNS3_13blocked_rangeISF_EEEEENSt13invoke_resultISI_JDpT0_EE4typeEOSI_DpOST_.exit, !llvm.loop !1117

_ZN3tbb6detail2d06invokeIRKNS0_2d123quick_sort_pretest_bodyINS3_15vector_iteratorINS3_17concurrent_vectorIPN4mold12InputSectionINS7_6X86_64EEENS3_23cache_aligned_allocatorISB_EEEESB_EEZNS7_L18print_icf_sectionsIS9_EEvRNS7_7ContextIT_EEEUlSB_SB_E_EEJRNS3_13blocked_rangeISF_EEEEENSt13invoke_resultISI_JDpT0_EE4typeEOSI_DpOST_.exit: ; preds = %bb.c, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i.i.i, %bb.a, %bb.f
  ret void
}

declare noundef zeroext i1 @_ZN3tbb6detail2r122cancel_group_executionERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #4

declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #14

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(240), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local { ptr, ptr } @_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE20internal_equal_rangeIS8_EESF_IPNS1_10value_nodeISH_mEESO_ERKT_(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !130
  %i.b = ptrtoint ptr %i.a to i64                 ; 9 uses
  %.sroa.2.0.extract.shift.i.i.i = lshr i64 %i.b, 8
  %.sroa.3.0.extract.shift.i.i.i = lshr i64 %i.b, 16
  %.sroa.48.0.extract.shift.i.i.i = lshr i64 %i.b, 24
  %.sroa.59.0.extract.shift.i.i.i = lshr i64 %i.b, 32
  %.sroa.610.0.extract.shift.i.i.i = lshr i64 %i.b, 40
  %.sroa.711.0.extract.shift.i.i.i = lshr i64 %i.b, 48
  %.sroa.812.0.extract.shift.i.i.i = lshr i64 %i.b, 56
  %i.c = and i64 %i.b, 255
  %i.d = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !51
  %i.f = and i64 %.sroa.2.0.extract.shift.i.i.i, 255
  %i.g = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !51
  %i.i = and i64 %.sroa.3.0.extract.shift.i.i.i, 255
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !51
  %i.l = and i64 %.sroa.48.0.extract.shift.i.i.i, 255
  %i.m = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !51
  %i.o = and i64 %.sroa.59.0.extract.shift.i.i.i, 255
  %i.p = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = and i64 %.sroa.610.0.extract.shift.i.i.i, 255
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !51
  %i.u = and i64 %.sroa.711.0.extract.shift.i.i.i, 255
  %i.v = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !51
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN3tbb6detail2d07reverseIhE10byte_tableE, i64 %.sroa.812.0.extract.shift.i.i.i
  %i.y = load i8, ptr %i.x, align 1, !tbaa !51
  %.sroa.10.0.insert.ext.i.i.i = zext i8 %i.e to i64
  %.sroa.10.0.insert.shift.i.i.i = shl nuw i64 %.sroa.10.0.insert.ext.i.i.i, 56
  %.sroa.9.0.insert.ext.i.i.i = zext i8 %i.h to i64
  %.sroa.9.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.9.0.insert.ext.i.i.i, 48
  %.sroa.8.0.insert.ext.i.i.i = zext i8 %i.k to i64
  %.sroa.8.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i.i.i, 40
  %.sroa.7.0.insert.ext.i.i.i = zext i8 %i.n to i64
  %.sroa.7.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i.i.i, 32
  %.sroa.6.0.insert.ext.i.i.i = zext i8 %i.q to i64
  %.sroa.6.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i.i.i, 24
  %.sroa.5.0.insert.ext.i.i.i = zext i8 %i.t to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i.i.i, 16
  %.sroa.4.0.insert.ext.i.i.i = zext i8 %i.w to i64
  %.sroa.4.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.4.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.y to i64
  %.sroa.9.0.insert.insert.i.i.i = or disjoint i64 %.sroa.10.0.insert.shift.i.i.i, %.sroa.9.0.insert.shift.i.i.i
  %.sroa.8.0.insert.insert.i.i.i = or disjoint i64 %.sroa.9.0.insert.insert.i.i.i, %.sroa.8.0.insert.shift.i.i.i
  %.sroa.7.0.insert.insert.i.i.i = or disjoint i64 %.sroa.8.0.insert.insert.i.i.i, %.sroa.7.0.insert.shift.i.i.i
  %.sroa.6.0.insert.insert.i.i.i = or disjoint i64 %.sroa.7.0.insert.insert.i.i.i, %.sroa.6.0.insert.shift.i.i.i
  %.sroa.4.0.insert.mask.i.i.i.a = or disjoint i64 %.sroa.6.0.insert.insert.i.i.i, %.sroa.5.0.insert.shift.i.i.i
  %.sroa.0.0.insert.mask.i.i.i.a = or disjoint i64 %.sroa.4.0.insert.mask.i.i.i.a, 1
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.4.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.z = or i64 %.sroa.0.0.insert.insert.i.i.i, %.sroa.0.0.insert.mask.i.i.i.a ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8
  %i.ac = urem i64 %i.b, %i.ab
  %i.ad = tail call noundef ptr @_ZN3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE10get_bucketEm(ptr noundef nonnull align 8 dereferenceable(592) %0, i64 noundef %i.ac) ; 2 uses
  %.not27 = icmp eq ptr %i.ad, null
  br i1 %.not27, label %_ZNK3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE16first_value_nodeEPNS1_9list_nodeImEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.01828 = phi ptr [ %i.ba, %bb.g ], [ %i.ad, %bb.a ] ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01828, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !295 ; 2 uses
  %i.ag = icmp ugt i64 %i.af, %i.z
  br i1 %i.ag, label %_ZNK3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE16first_value_nodeEPNS1_9list_nodeImEE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.ah = icmp eq i64 %i.af, %i.z
  br i1 %i.ah, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %.01828, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !130
  %i.ak = load ptr, ptr %1, align 8, !tbaa !130
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.c, %bb.e
  %.0 = phi ptr [ %i.am, %bb.e ], [ %.01828, %bb.c ]
  %i.am = load atomic ptr, ptr %.0 acquire, align 8 ; 5 uses
  %.not21 = icmp eq ptr %i.am, null
  br i1 %.not21, label %_ZNK3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE16first_value_nodeEPNS1_9list_nodeImEE.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !295
  %i.ap = and i64 %i.ao, 1
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.i.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !130
  %i.at = load ptr, ptr %1, align 8, !tbaa !130
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %.preheader, label %.lr.ph.i.preheader, !llvm.loop !1121

.lr.ph.i.preheader:                               ; preds = %bb.d, %bb.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.f
  %.05.i = phi ptr [ %i.az, %bb.f ], [ %i.am, %.lr.ph.i.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !295
  %i.ax = and i64 %i.aw, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.f, label %_ZNK3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE16first_value_nodeEPNS1_9list_nodeImEE.exit

bb.f:                                             ; preds = %.lr.ph.i
  %i.az = load atomic ptr, ptr %.05.i acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %_ZNK3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE16first_value_nodeEPNS1_9list_nodeImEE.exit, label %.lr.ph.i, !llvm.loop !1122

bb.g:                                             ; preds = %bb.b, %bb.c
  %i.ba = load atomic ptr, ptr %.01828 acquire, align 8 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %_ZNK3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE16first_value_nodeEPNS1_9list_nodeImEE.exit, label %.lr.ph, !llvm.loop !1123

_ZNK3tbb6detail2d225concurrent_unordered_baseINS1_31concurrent_unordered_map_traitsIPN4mold12InputSectionINS4_6X86_64EEES8_St4hashIS8_ESt8equal_toIS8_ENS0_2d113tbb_allocatorISt4pairIKS8_S8_EEELb1EEEE16first_value_nodeEPNS1_9list_nodeImEE.exit: ; preds = %bb.g, %.lr.ph, %.preheader, %bb.f, %.lr.ph.i, %bb.a
  %.sroa.4.0 = phi ptr [ null, %.preheader ], [ %.05.i, %.lr.ph.i ], [ null, %bb.a ], [ null, %bb.f ], [ null, %.lr.ph ], [ null, %bb.g ]
  %.sroa.0.0 = phi ptr [ %.01828, %.preheader ], [ %.01828, %bb.f ], [ null, %bb.a ], [ %.01828, %.lr.ph.i ], [ null, %.lr.ph ], [ null, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #14

declare noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #14

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE11clear_tableEv(ptr noundef nonnull align 8 dereferenceable(545) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZN3tbb6detail2d113segment_tableISt6atomicIPNS0_2d29list_nodeImEEENS1_13tbb_allocatorISt4pairIKPN4mold12InputSectionINSB_6X86_64EEESF_EEENS4_25concurrent_unordered_baseINS4_31concurrent_unordered_map_traitsISF_SF_St4hashISF_ESt8equal_toISF_ESI_Lb1EEEE23unordered_segment_tableELm63EE10zero_tableEPS3_IPS8_Em.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  tail call void @_ZN3tbb6detail2r117deallocate_memoryEPv(ptr noundef %i.b) #13
  store atomic ptr %i.c, ptr %i.a monotonic, align 8
  store atomic ptr null, ptr %i.c monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr null, ptr %i.d monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic ptr null, ptr %i.e monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic ptr null, ptr %i.f monotonic, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic ptr null, ptr %i.g monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store atomic ptr null, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic ptr null, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic ptr null, ptr %i.j monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store atomic ptr null, ptr %i.k monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store atomic ptr null, ptr %i.l monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic ptr null, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  store atomic ptr null, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store atomic ptr null, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  store atomic ptr null, ptr %i.p monotonic, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  store atomic ptr null, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  store atomic ptr null, ptr %i.r monotonic, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 152
  store atomic ptr null, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  store atomic ptr null, ptr %i.t monotonic, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168
  store atomic ptr null, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  store atomic ptr null, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  store atomic ptr null, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store atomic ptr null, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store atomic ptr null, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 208
  store atomic ptr null, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  store atomic ptr null, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 224
  store atomic ptr null, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  store atomic ptr null, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  store atomic ptr null, ptr %i.ad monotonic, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 248
  store atomic ptr null, ptr %i.ae monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  store atomic ptr null, ptr %i.af monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  store atomic ptr null, ptr %i.ag monotonic, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  store atomic ptr null, ptr %i.ah monotonic, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280
  store atomic ptr null, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  store atomic ptr null, ptr %i.aj monotonic, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296
  store atomic ptr null, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 304
  store atomic ptr null, ptr %i.al monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 312
  store atomic ptr null, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 320
  store atomic ptr null, ptr %i.an monotonic, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  store atomic ptr null, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  store atomic ptr null, ptr %i.ap monotonic, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 344
  store atomic ptr null, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352
  store atomic ptr null, ptr %i.ar monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 360
  store atomic ptr null, ptr %i.as monotonic, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 368
  store atomic ptr null, ptr %i.at monotonic, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 376
  store atomic ptr null, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 384
  store atomic ptr null, ptr %i.av monotonic, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 392
  store atomic ptr null, ptr %i.aw monotonic, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic ptr null, ptr %i.ax monotonic, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 408
  store atomic ptr null, ptr %i.ay monotonic, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 416
  store atomic ptr null, ptr %i.az monotonic, align 8
end_hunk_1
