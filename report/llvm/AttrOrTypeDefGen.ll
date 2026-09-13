Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AttrOrTypeDefGen?download=true
inline.NumInlined: 5076
inline.NumDeleted: 2488
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_112DefGeneratorC2EN4llvm8ArrayRefIPKNS1_6RecordEEERNS1_11raw_ostreamENS1_9StringRefES9_b:bb.a
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %.val to i64                ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.q, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_T1_(ptr %.val, ptr %i.h, i64 noundef %i.t)
  %i.u = icmp sgt i64 %i.p, 128
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 8 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %bb.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i
  %.sroa.0.019.i.idx.i.i.i.i.i = phi i64 [ %.sroa.0.019.i.add.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i ], [ 8, %bb.d ] ; 4 uses
  %.pn18.i.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i ], [ %.val, %bb.d ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.019.i.idx.i.i.i.i.i ; 4 uses
  %i.v = load ptr, ptr %.sroa.0.019.i.ptr.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.w = load ptr, ptr %.val, align 8, !tbaa !187 ; 2 uses
  %i.x = getelementptr i8, ptr %i.v, i64 184
  %.val.i.i.i.i.i.i.i = load i32, ptr %i.x, align 8, !tbaa !224 ; 3 uses
  %i.y = getelementptr i8, ptr %i.w, i64 184
  %.val1.i.i.i.i.i.i.i = load i32, ptr %i.y, align 8, !tbaa !224
  %i.z = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.aa = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i.i.i, 8
  br i1 %i.aa, label %bb.f, label %bb.g, !prof !87

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %.sroa.0.019.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i.i.i, i64 8
  store ptr %i.w, ptr %i.ab, align 8, !tbaa !187
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ac = load ptr, ptr %.pn18.i.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 184
  %.val2.i7.i.i.i.i.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !224
  %i.ae = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i7.i.i.i.i.i.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.af = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ac, %bb.h ]
  %.sroa.0.09.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.pn18.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.h ]
  store ptr %i.af, ptr %.sroa.03.08.i.i.i.i.i.i.i, align 8, !tbaa !187
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ag = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 184
  %.val2.i.i.i.i.i.i.i.i = load i32, ptr %i.ah, align 8, !tbaa !224
  %i.ai = icmp ult i32 %.val.i.i.i.i.i.i.i, %.val2.i.i.i.i.i.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i, !llvm.loop !474

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f
  %.sink.i.i.i.i.i.i = phi ptr [ %.val, %bb.g ], [ %.val, %bb.f ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.h ], [ %.sroa.0.09.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %i.v, ptr %.sink.i.i.i.i.i.i, align 8, !tbaa !187
  %.sroa.0.019.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !475

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_.exit.i.i.i.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.h
  br i1 %.not6.i.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZN12_GLOBAL__N_112DefGeneratorC1ENS_8ArrayRefIS4_EERNS_11raw_ostreamENS_9StringRefESE_bEUlS4_S4_E_EEvOT_T0_.exit, label %.lr.ph.i12.i.i.i.i.i

.lr.ph.i12.i.i.i.i.i:                             ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_.exit.i.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_.exit.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.at, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_.exit.i.i.i.i.i.i ], [ %i.aj, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_.exit.i.i.i.i.i ] ; 5 uses
  %i.ak = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 184
  %.val.val.i.i.i.i.i.i.i = load i32, ptr %i.al, align 8, !tbaa !224 ; 2 uses
  %.sroa.0.06.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.am = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 184
  %.val2.i7.i.i13.i.i.i.i.i = load i32, ptr %i.an, align 8, !tbaa !224
  %i.ao = icmp ult i32 %.val.val.i.i.i.i.i.i.i, %.val2.i7.i.i13.i.i.i.i.i
  br i1 %i.ao, label %.lr.ph.i.i15.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_.exit.i.i.i.i.i.i

.lr.ph.i.i15.i.i.i.i.i:                           ; preds = %.lr.ph.i12.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i
  %i.ap = phi ptr [ %i.aq, %.lr.ph.i.i15.i.i.i.i.i ], [ %i.am, %.lr.ph.i12.i.i.i.i.i ]
  %.sroa.0.09.i.i16.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i18.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ] ; 3 uses
  %.sroa.03.08.i.i17.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i16.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ]
  store ptr %i.ap, ptr %.sroa.03.08.i.i17.i.i.i.i.i, align 8, !tbaa !187
  %.sroa.0.0.i.i18.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i16.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aq = load ptr, ptr %.sroa.0.0.i.i18.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 184
  %.val2.i.i.i19.i.i.i.i.i = load i32, ptr %i.ar, align 8, !tbaa !224
  %i.as = icmp ult i32 %.val.val.i.i.i.i.i.i.i, %.val2.i.i.i19.i.i.i.i.i
  br i1 %i.as, label %.lr.ph.i.i15.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_.exit.i.i.i.i.i.i, !llvm.loop !474

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i15.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i
  %.sroa.03.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ], [ %.sroa.0.09.i.i16.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i ]
  store ptr %i.ak, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !187
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i14.i.i.i.i.i = icmp eq ptr %i.at, %i.h
  br i1 %.not.i14.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZN12_GLOBAL__N_112DefGeneratorC1ENS_8ArrayRefIS4_EERNS_11raw_ostreamENS_9StringRefESE_bEUlS4_S4_E_EEvOT_T0_.exit, label %.lr.ph.i12.i.i.i.i.i, !llvm.loop !476

bb.i:                                             ; preds = %bb.d
  %.not17.i22.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i.i, %i.h
  br i1 %.not17.i22.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZN12_GLOBAL__N_112DefGeneratorC1ENS_8ArrayRefIS4_EERNS_11raw_ostreamENS_9StringRefESE_bEUlS4_S4_E_EEvOT_T0_.exit, label %.lr.ph.i23.i.i.i.i.i

.lr.ph.i23.i.i.i.i.i:                             ; preds = %bb.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i
  %.sroa.0.019.i24.i.i.i.i.i = phi ptr [ %.sroa.0.0.i31.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i ], [ %scevgep.i.i.i.i.i, %bb.i ] ; 6 uses
  %.pn18.i25.i.i.i.i.i = phi ptr [ %.sroa.0.019.i24.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i ], [ %.val, %bb.i ] ; 4 uses
  %i.au = load ptr, ptr %.sroa.0.019.i24.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.av = load ptr, ptr %.val, align 8, !tbaa !187 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.au, i64 184
  %.val.i.i26.i.i.i.i.i = load i32, ptr %i.aw, align 8, !tbaa !224 ; 3 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 184
  %.val1.i.i27.i.i.i.i.i = load i32, ptr %i.ax, align 8, !tbaa !224
  %i.ay = icmp ult i32 %.val.i.i26.i.i.i.i.i, %.val1.i.i27.i.i.i.i.i
  br i1 %i.ay, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i23.i.i.i.i.i
  %i.az = ptrtoint ptr %.sroa.0.019.i24.i.i.i.i.i to i64
  %i.ba = sub i64 %i.az, %i.o                     ; 3 uses
  %i.bb = ashr exact i64 %i.ba, 3                 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 1
  br i1 %i.bc, label %bb.k, label %bb.l, !prof !87

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i.i.i.i, i64 16
  %i.be = sub nsw i64 0, %i.bb
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %i.ba, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.bg = icmp eq i64 %i.ba, 8
  br i1 %i.bg, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i.i.i.i, i64 8
  store ptr %i.av, ptr %i.bh, align 8, !tbaa !187
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i23.i.i.i.i.i
  %i.bi = load ptr, ptr %.pn18.i25.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 184
  %.val2.i7.i.i28.i.i.i.i.i = load i32, ptr %i.bj, align 8, !tbaa !224
  %i.bk = icmp ult i32 %.val.i.i26.i.i.i.i.i, %.val2.i7.i.i28.i.i.i.i.i
  br i1 %i.bk, label %.lr.ph.i.i33.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i

.lr.ph.i.i33.i.i.i.i.i:                           ; preds = %bb.n, %.lr.ph.i.i33.i.i.i.i.i
  %i.bl = phi ptr [ %i.bm, %.lr.ph.i.i33.i.i.i.i.i ], [ %i.bi, %bb.n ]
  %.sroa.0.09.i.i34.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i36.i.i.i.i.i, %.lr.ph.i.i33.i.i.i.i.i ], [ %.pn18.i25.i.i.i.i.i, %bb.n ] ; 3 uses
  %.sroa.03.08.i.i35.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i34.i.i.i.i.i, %.lr.ph.i.i33.i.i.i.i.i ], [ %.sroa.0.019.i24.i.i.i.i.i, %bb.n ]
  store ptr %i.bl, ptr %.sroa.03.08.i.i35.i.i.i.i.i, align 8, !tbaa !187
  %.sroa.0.0.i.i36.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i34.i.i.i.i.i, i64 -8 ; 2 uses
  %i.bm = load ptr, ptr %.sroa.0.0.i.i36.i.i.i.i.i, align 8, !tbaa !187 ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 184
  %.val2.i.i.i37.i.i.i.i.i = load i32, ptr %i.bn, align 8, !tbaa !224
  %i.bo = icmp ult i32 %.val.i.i26.i.i.i.i.i, %.val2.i.i.i37.i.i.i.i.i
  br i1 %i.bo, label %.lr.ph.i.i33.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i, !llvm.loop !474

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i: ; preds = %.lr.ph.i.i33.i.i.i.i.i, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i30.i.i.i.i.i = phi ptr [ %.val, %bb.m ], [ %.val, %bb.k ], [ %.val, %bb.l ], [ %.sroa.0.019.i24.i.i.i.i.i, %bb.n ], [ %.sroa.0.09.i.i34.i.i.i.i.i, %.lr.ph.i.i33.i.i.i.i.i ]
  store ptr %i.au, ptr %.sink.i30.i.i.i.i.i, align 8, !tbaa !187
  %.sroa.0.0.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i24.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i32.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i31.i.i.i.i.i, %i.h
  br i1 %.not.i32.i.i.i.i.i, label %_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZN12_GLOBAL__N_112DefGeneratorC1ENS_8ArrayRefIS4_EERNS_11raw_ostreamENS_9StringRefESE_bEUlS4_S4_E_EEvOT_T0_.exit, label %.lr.ph.i23.i.i.i.i.i, !llvm.loop !475

_ZN4llvm4sortIRSt6vectorIPKNS_6RecordESaIS4_EEZN12_GLOBAL__N_112DefGeneratorC1ENS_8ArrayRefIS4_EERNS_11raw_ostreamENS_9StringRefESE_bEUlS4_S4_E_EEvOT_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i29.i.i.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_.exit.i.i.i.i.i.i, %_ZNK4llvm8ArrayRefIPKNS_6RecordEEcvSt6vectorIS3_SaIS3_EEEv.exit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_.exit.i.i.i.i.i, %bb.i
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_T1_(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #12 {
bb.a:
  %.fr30 = freeze ptr %1                          ; 3 uses
  %.fr29 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr29 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr30 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr29, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph54

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEET_SM_SM_T0_.exit
  %i.h = icmp eq i64 %i.dl, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph54, !llvm.loop !480

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i28.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ep, %bb.b ] ; 3 uses
  %storemerge26.lcssa = phi ptr [ %.fr30, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i28.lcssa, 3           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i28.lcssa, 8
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.p
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.us.i.i.i
  %.09.us.i.i.i = phi i64 [ %i.ar, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.us.i.i.i ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.us.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !187  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.us.i.i.i

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i, %.lr.ph.i.us.i.i.i
  %.034.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %.09.us.i.i.i, %.split.us.i.i.i ] ; 2 uses
  %i.v = shl i64 %.034.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.y
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !187
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !187
  %i.ac = getelementptr i8, ptr %i.aa, i64 184
  %.val.i.i.us.i.i.i = load i32, ptr %i.ac, align 8, !tbaa !224
  %i.ad = getelementptr i8, ptr %i.ab, i64 184
  %.val1.i.i.us.i.i.i = load i32, ptr %i.ad, align 8, !tbaa !224
  %i.ae = icmp ult i32 %.val.i.i.us.i.i.i, %.val1.i.i.us.i.i.i
  %spec.select.i.us.i.i.i = select i1 %i.ae, i64 %i.y, i64 %i.w ; 4 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.us.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !187
  %i.ah = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.us.i.i.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !187
  %i.ai = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.ai, label %.lr.ph.i.us.i.i.i, label %._crit_edge.i.us.i.i.i, !llvm.loop !481

._crit_edge.i.us.i.i.i:                           ; preds = %.lr.ph.i.us.i.i.i
  %i.aj = getelementptr i8, ptr %i.t, i64 184
  %.val.val.i.i.us.i.i.i = load i32, ptr %i.aj, align 8, !tbaa !224
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.us.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !187 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 184
  %.val.i.i.i.us.i.i.i = load i32, ptr %i.am, align 8, !tbaa !224
  %i.an = icmp ult i32 %.val.i.i.i.us.i.i.i, %.val.val.i.i.us.i.i.i
  br i1 %i.an, label %bb.d, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.us.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.us.i.i.i
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !187
  %i.ap = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ap, label %bb.c, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.us.i.i.i, !llvm.loop !482

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.us.i.i.i: ; preds = %bb.d, %bb.c, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.d ], [ %.010.i.i.us.i.i.i, %bb.c ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.us.i.i.i
  store ptr %i.t, ptr %i.aq, align 8, !tbaa !187
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ar = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_RT0_.exit.i.i, label %.split.us.i.i.i, !llvm.loop !483

.split.i.i.i:                                     ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.i.i.i, %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.bu, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.i.i.i ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.09.i.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !187 ; 2 uses
  %i.au = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.au, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.09.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.av = shl i64 %.034.i.i.i.i, 1                ; 2 uses
  %i.aw = add i64 %i.av, 2                        ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.aw
  %i.ay = or disjoint i64 %i.av, 1                ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ay
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !187
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !187
  %i.bc = getelementptr i8, ptr %i.ba, i64 184
  %.val.i.i.i.i.i = load i32, ptr %i.bc, align 8, !tbaa !224
  %i.bd = getelementptr i8, ptr %i.bb, i64 184
  %.val1.i.i.i.i.i = load i32, ptr %i.bd, align 8, !tbaa !224
  %i.be = icmp ult i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %spec.select.i.i.i.i = select i1 %i.be, i64 %i.ay, i64 %i.aw ; 4 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !187
  %i.bh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !187
  %i.bi = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bi, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !481

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.bj = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = load ptr, ptr %i.q, align 8, !tbaa !187
  store ptr %i.bk, ptr %i.r, align 8, !tbaa !187
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.e ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bl = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.at, i64 184
  %.val.val.i.i.i.i.i = load i32, ptr %i.bm, align 8, !tbaa !224
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.h ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !187 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 184
  %.val.i.i.i.i.i.i = load i32, ptr %i.bp, align 8, !tbaa !224
  %i.bq = icmp ult i32 %.val.i.i.i.i.i.i, %.val.val.i.i.i.i.i
  br i1 %i.bq, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i.i
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !187
  %i.bs = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.bs, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.i.i.i, !llvm.loop !482

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.f ], [ %.010.i.i.i.i.i, %bb.g ], [ %.0911.i.i.i.i.i, %bb.h ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i.i
  store ptr %i.at, ptr %i.bt, align 8, !tbaa !187
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.bu = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_RT0_.exit.i.i, label %.split.i.i.i, !llvm.loop !483

_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_RT0_.exit.i.i: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.us.i.i.i, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_T0_SN_T1_T2_.exit.i.i.i
  %3 = icmp sgt i64 %.fr.i.i.i28.lcssa, 8
  br i1 %3, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_T0_.exit

.lr.ph.i9.i:                                      ; preds = %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_RT0_.exit.i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_RT0_.exit.i.i
  %.sroa.0.03.i.i = phi ptr [ %i.bv, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_RT0_.exit.i.i ], [ %storemerge26.lcssa, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_RT0_.exit.i.i ]
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !187 ; 2 uses
  %i.bx = load ptr, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !187
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = sub i64 %i.by, %i.a                     ; 3 uses
  %i.ca = ashr exact i64 %i.bz, 3                 ; 3 uses
  %i.cb = add nsw i64 %i.ca, -1
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = icmp sgt i64 %i.ca, 2
  br i1 %i.cd, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i19.i:                                 ; preds = %.lr.ph.i9.i, %.lr.ph.i.i.i19.i
  %.034.i.i.i20.i = phi i64 [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ], [ 0, %.lr.ph.i9.i ] ; 2 uses
  %i.ce = shl i64 %.034.i.i.i20.i, 1              ; 2 uses
  %i.cf = add i64 %i.ce, 2                        ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.cf
  %i.ch = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %i.ch
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !187
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !187
  %i.cl = getelementptr i8, ptr %i.cj, i64 184
  %.val.i.i.i.i21.i = load i32, ptr %i.cl, align 8, !tbaa !224
  %i.cm = getelementptr i8, ptr %i.ck, i64 184
  %.val1.i.i.i.i22.i = load i32, ptr %i.cm, align 8, !tbaa !224
  %i.cn = icmp ult i32 %.val.i.i.i.i21.i, %.val1.i.i.i.i22.i
  %spec.select.i.i.i23.i = select i1 %i.cn, i64 %i.ch, i64 %i.cf ; 4 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %spec.select.i.i.i23.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !187
  %i.cq = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.034.i.i.i20.i
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !187
  %i.cr = icmp slt i64 %spec.select.i.i.i23.i, %i.cc
  br i1 %i.cr, label %.lr.ph.i.i.i19.i, label %._crit_edge.i.i.i10.i, !llvm.loop !481

._crit_edge.i.i.i10.i:                            ; preds = %.lr.ph.i.i.i19.i, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i23.i, %.lr.ph.i.i.i19.i ] ; 5 uses
  %i.cs = and i64 %i.bz, 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.cu = add nsw i64 %i.ca, -2
  %i.cv = ashr exact i64 %i.cu, 1
  %i.cw = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.cv
  br i1 %i.cw, label %.thread.i.i.i, label %bb.j

.thread.i.i.i:                                    ; preds = %bb.i
  %i.cx = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.cy = or disjoint i64 %i.cx, 1                ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !187
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i11.i
  store ptr %i.da, ptr %i.db, align 8, !tbaa !187
  br label %.lr.ph.i.i.i.i13.i

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_RT0_.exit.i.i, label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.j, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.cy, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.j ]
  %i.dc = getelementptr i8, ptr %i.bw, i64 184
  %.val.val.i.i.i.i14.i = load i32, ptr %i.dc, align 8, !tbaa !224
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.l ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %.0911.i.i78.i.i.i
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !187 ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 184
  %.val.i.i.i.i.i17.i = load i32, ptr %i.df, align 8, !tbaa !224
  %i.dg = icmp ult i32 %.val.i.i.i.i.i17.i, %.val.val.i.i.i.i14.i
  br i1 %i.dg, label %bb.l, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_RT0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.010.i.i.i.i15.i
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !187
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_RT0_.exit.i.i, label %bb.k, !llvm.loop !482

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_RT0_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.0.lcssa.i.i.i.i18.i = phi i64 [ 0, %bb.j ], [ %.010.i.i.i.i15.i, %bb.k ], [ 0, %bb.l ]
  %i.di = getelementptr inbounds [8 x i8], ptr %.fr29, i64 %.0.lcssa.i.i.i.i18.i
  store ptr %i.bw, ptr %i.di, align 8, !tbaa !187
  %i.dj = icmp sgt i64 %i.bz, 8
  br i1 %i.dj, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_T0_.exit, !llvm.loop !484

.lr.ph54:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2653 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr30, %.lr.ph ] ; 3 uses
  %.02752 = phi i64 [ %i.dl, %bb.b ], [ %2, %.lr.ph ]
  %i.dk = phi i64 [ %i.eq, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dl = add nsw i64 %.02752, -1                 ; 3 uses
  %i.dm = lshr i64 %i.dk, 1
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.fr29, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %storemerge2653, i64 -8 ; 3 uses
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !187 ; 3 uses
  %i.dq = load ptr, ptr %i.dn, align 8, !tbaa !187 ; 3 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 184
  %.val.i.i.i = load i32, ptr %i.dr, align 8, !tbaa !224 ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dq, i64 184
  %.val1.i.i.i = load i32, ptr %i.ds, align 8, !tbaa !224 ; 3 uses
  %i.dt = icmp ult i32 %.val.i.i.i, %.val1.i.i.i
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !187 ; 3 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 184
  %.val1.i27.i.i = load i32, ptr %i.dv, align 8, !tbaa !224 ; 4 uses
  br i1 %i.dt, label %bb.m, label %bb.r

bb.m:                                             ; preds = %.lr.ph54
  %i.dw = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dx = load ptr, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.dx, ptr %i.dn, align 8, !tbaa !187
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.dy = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  %i.dz = load ptr, ptr %.fr29, align 8, !tbaa !187 ; 2 uses
  br i1 %i.dy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.dz, ptr %i.do, align 8, !tbaa !187
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.q:                                             ; preds = %bb.o
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.dz, ptr %i.f, align 8, !tbaa !187
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.r:                                             ; preds = %.lr.ph54
  %i.ea = icmp ult i32 %.val.i.i.i, %.val1.i27.i.i
  br i1 %i.ea, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eb = load ptr, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.dp, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.eb, ptr %i.f, align 8, !tbaa !187
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.t:                                             ; preds = %bb.r
  %i.ec = icmp ult i32 %.val1.i.i.i, %.val1.i27.i.i
  %i.ed = load ptr, ptr %.fr29, align 8, !tbaa !187 ; 2 uses
  br i1 %i.ec, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr %i.du, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.ed, ptr %i.do, align 8, !tbaa !187
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

bb.v:                                             ; preds = %bb.t
  store ptr %i.dq, ptr %.fr29, align 8, !tbaa !187
  store ptr %i.ed, ptr %i.dn, align 8, !tbaa !187
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader: ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.p, %bb.n
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader, %bb.y
  %.sroa.012.0.i.i = phi ptr [ %i.ej, %bb.y ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.y ], [ %storemerge2653, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i.preheader ]
  %i.ee = load ptr, ptr %.fr29, align 8, !tbaa !187
  %i.ef = getelementptr i8, ptr %i.ee, i64 184
  %.val1.i.i13.i = load i32, ptr %i.ef, align 8, !tbaa !224 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i ], [ %i.ej, %bb.w ] ; 8 uses
  %i.eg = load ptr, ptr %.sroa.012.1.i.i, align 8, !tbaa !187 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 184
  %.val.i.i14.i = load i32, ptr %i.eh, align 8, !tbaa !224
  %i.ei = icmp ult i32 %.val.i.i14.i, %.val1.i.i13.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 8 ; 2 uses
  br i1 %i.ei, label %bb.w, label %.preheader.i.i, !llvm.loop !485

.preheader.i.i:                                   ; preds = %bb.w, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.w ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 5 uses
  %i.ek = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !187 ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 184
  %.val1.i9.i.i = load i32, ptr %i.el, align 8, !tbaa !224
  %i.em = icmp ult i32 %.val1.i.i13.i, %.val1.i9.i.i
  br i1 %i.em, label %.preheader.i.i, label %bb.x, !llvm.loop !486

bb.x:                                             ; preds = %.preheader.i.i
  %i.en = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %i.en, label %bb.y, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEET_SM_SM_T0_.exit

bb.y:                                             ; preds = %bb.x
  store ptr %i.ek, ptr %.sroa.012.1.i.i, align 8, !tbaa !187
  store ptr %i.eg, ptr %.sroa.0.1.i.i, align 8, !tbaa !187
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_SM_T0_.exit.i, !llvm.loop !487

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEET_SM_SM_T0_.exit: ; preds = %bb.x
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2653, i64 noundef %i.dl)
  %i.eo = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.ep = sub i64 %i.eo, %i.a                     ; 2 uses
  %i.eq = ashr exact i64 %i.ep, 3                 ; 2 uses
  %i.er = icmp sgt i64 %i.eq, 16
  br i1 %i.er, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_T0_.exit, !llvm.loop !480

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEET_SM_SM_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_SM_RT0_.exit.i.i, %bb.a, %_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_112DefGeneratorC1ENS2_8ArrayRefIS5_EERNS2_11raw_ostreamENS2_9StringRefESJ_bEUlS5_S5_E_EEEvT_SM_RT0_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

declare void @_ZN4llvm20emitSourceFileHeaderENS_9StringRefERNS_11raw_ostreamERKNS_12RecordKeeperE(ptr, i64, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(240)) local_unnamed_addr #3

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

declare void @_ZN4llvm12RecordKeeperC1Ev(ptr noundef nonnull align 8 dereferenceable(240)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm12RecordKeeperD1Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL14collectAllDefsN4llvm9StringRefENS_8ArrayRefIPKNS_6RecordEEERNS_15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEEE(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(16) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.mlir::tblgen::AttrOrTypeDef", align 8 ; 13 uses
  %.sroa.082 = alloca %"class.llvm::filter_iterator_base", align 8 ; 6 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 7 uses
  %7 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 9 uses
  %8 = alloca %"class.llvm::filter_iterator_impl", align 8 ; 9 uses
  %9 = alloca %"class.mlir::tblgen::AttrOrTypeDef", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.mlir::tblgen::Dialect", align 8 ; 6 uses
  %11 = alloca %"class.mlir::tblgen::Dialect", align 8 ; 6 uses
  %12 = alloca %"class.llvm::StringRef", align 8  ; 4 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 5 uses
  store ptr %0, ptr %12, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %1, ptr %i.c, align 8
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %bb.ak, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %3, 3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 5 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %.not5.i.i.i.i.i = icmp eq i64 %3, 1
  br i1 %.not5.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.0.allc.07.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.g ] ; 2 uses
  %.0.allc4.06.i.i.i.i.i = phi ptr [ %2, %.lr.ph.i.i.i.i.i ], [ %i.x, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %.val3.val.i.i.i.i.i = load ptr, ptr %.0.allc.07.i.i.i.i.i, align 8, !tbaa !187
  call fastcc void @"_ZNK4llvm15mapped_iteratorINS0_IPKPKNS_6RecordEZL14collectAllDefsNS_9StringRefENS_8ArrayRefIS3_EERNS_15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEEEE3$_0SC_EEZL14collectAllDefsS6_S8_SE_E3$_1NSB_7DialectEEdeEv"(ptr dead_on_unwind noalias writable align 8 %10, ptr %.val3.val.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  %.val2.val.i.i.i.i.i = load ptr, ptr %.0.allc4.06.i.i.i.i.i, align 8, !tbaa !187
  call fastcc void @"_ZNK4llvm15mapped_iteratorINS0_IPKPKNS_6RecordEZL14collectAllDefsNS_9StringRefENS_8ArrayRefIS3_EERNS_15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEEEE3$_0SC_EEZL14collectAllDefsS6_S8_SE_E3$_1NSB_7DialectEEdeEv"(ptr dead_on_unwind noalias writable align 8 %11, ptr %.val2.val.i.i.i.i.i)
  %i.l = call noundef zeroext i1 @_ZNK4mlir6tblgen7DialecteqERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11) #22
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4mlir6tblgen7DialectD2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !129
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.q) #23
  br label %_ZN4mlir6tblgen7DialectD2Ev.exit.i.i.i.i.i

_ZN4mlir6tblgen7DialectD2Ev.exit.i.i.i.i.i:       ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !128  ; 3 uses
  %.not.i.i.i.i4.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i4.i.i.i.i.i, label %_ZN4mlir6tblgen7DialectD2Ev.exit5.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4mlir6tblgen7DialectD2Ev.exit.i.i.i.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.v) #23
  br label %_ZN4mlir6tblgen7DialectD2Ev.exit5.i.i.i.i.i

_ZN4mlir6tblgen7DialectD2Ev.exit5.i.i.i.i.i:      ; preds = %bb.f, %_ZN4mlir6tblgen7DialectD2Ev.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br i1 %i.l, label %bb.g, label %"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS2_IPKPKNS_6RecordEZL14collectAllDefsNS_9StringRefENS_8ArrayRefIS5_EERNS_15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEEEE3$_0SE_EEZL14collectAllDefsS8_SA_SG_E3$_1NSD_7DialectEEEEEEEbOT_.exit"

bb.g:                                             ; preds = %_ZN4mlir6tblgen7DialectD2Ev.exit5.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.allc.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.allc4.06.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.d, !llvm.loop !488

"_ZN4llvm9all_equalINS_14iterator_rangeINS_15mapped_iteratorINS2_IPKPKNS_6RecordEZL14collectAllDefsNS_9StringRefENS_8ArrayRefIS5_EERNS_15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEEEE3$_0SE_EEZL14collectAllDefsS8_SA_SG_E3$_1NSD_7DialectEEEEEEEbOT_.exit": ; preds = %_ZN4mlir6tblgen7DialectD2Ev.exit5.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 1, ptr %i.z, align 1, !tbaa !73
  store ptr @.str.47, ptr %13, align 8, !tbaa !47
  store i8 3, ptr %i.y, align 8, !tbaa !72
  call void @_ZN4llvm15PrintFatalErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(34) %13) #24
  unreachable

.loopexit:                                        ; preds = %bb.g, %bb.c
  %i.aa = load ptr, ptr %4, align 8, !tbaa !59    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !79 ; 2 uses
  %.not4.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not4.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEE5clearEv.exit.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %.loopexit
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = mul nuw nsw i64 %i.ad, 208
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4mlir6tblgen13AttrOrTypeDefD2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.05.i.i.i = phi ptr [ %i.af, %_ZN4mlir6tblgen13AttrOrTypeDefD2Ev.exit.i.i.i ], [ %i.ae, %.lr.ph.i.preheader.i.i ] ; 8 uses
  %i.af = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -208 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -64
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !59 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -48
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZN4llvm11SmallVectorIN4mlir6tblgen19AttrOrTypeParameterELj3EED2Ev.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  call void @free(ptr noundef %i.ah) #22
  br label %_ZN4llvm11SmallVectorIN4mlir6tblgen19AttrOrTypeParameterELj3EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir6tblgen19AttrOrTypeParameterELj3EED2Ev.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -128
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -112
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN4llvm11SmallVectorIN4mlir6tblgen5TraitELj3EED2Ev.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm11SmallVectorIN4mlir6tblgen19AttrOrTypeParameterELj3EED2Ev.exit.i.i.i.i
  call void @free(ptr noundef %i.al) #22
  br label %_ZN4llvm11SmallVectorIN4mlir6tblgen5TraitELj3EED2Ev.exit.i.i.i.i

_ZN4llvm11SmallVectorIN4mlir6tblgen5TraitELj3EED2Ev.exit.i.i.i.i: ; preds = %bb.i, %_ZN4llvm11SmallVectorIN4mlir6tblgen19AttrOrTypeParameterELj3EED2Ev.exit.i.i.i.i
  %i.ao = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -200 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -192
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !79 ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not4.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN4llvm11SmallVectorIN4mlir6tblgen5TraitELj3EED2Ev.exit.i.i.i.i
  %i.as = zext i32 %i.ar to i64
  %.idx.i.i.i.i.i = mul nuw nsw i64 %i.as, 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN4mlir6tblgen7BuilderD2Ev.exit.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN4mlir6tblgen7BuilderD2Ev.exit.i.i.i.i.i.i ], [ %i.at, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -56 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !59 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %.05.i.i.i.i.i.i, i64 -32
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4mlir6tblgen7BuilderD2Ev.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  call void @free(ptr noundef %i.aw) #22
  br label %_ZN4mlir6tblgen7BuilderD2Ev.exit.i.i.i.i.i.i

_ZN4mlir6tblgen7BuilderD2Ev.exit.i.i.i.i.i.i:     ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ap, %i.au
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i.i: ; preds = %_ZN4mlir6tblgen7BuilderD2Ev.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !59
  br label %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i.i

_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i.i, %_ZN4llvm11SmallVectorIN4mlir6tblgen5TraitELj3EED2Ev.exit.i.i.i.i
  %i.az = phi ptr [ %.pre.i.i.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i.i.i.i.i ], [ %i.ap, %_ZN4llvm11SmallVectorIN4mlir6tblgen5TraitELj3EED2Ev.exit.i.i.i.i ] ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i.i, i64 -184
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZN4mlir6tblgen13AttrOrTypeDefD2Ev.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i.i
  call void @free(ptr noundef %i.az) #22
  br label %_ZN4mlir6tblgen13AttrOrTypeDefD2Ev.exit.i.i.i

_ZN4mlir6tblgen13AttrOrTypeDefD2Ev.exit.i.i.i:    ; preds = %bb.k, %_ZN4llvm23SmallVectorTemplateBaseIN4mlir6tblgen17AttrOrTypeBuilderELb0EE13destroy_rangeEPS3_S5_.exit.i.i.i.i.i
  %.not.i.i.i = icmp eq ptr %i.aa, %i.af
  br i1 %.not.i.i.i, label %_ZN4llvm15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZN4llvm15SmallVectorImplIN4mlir6tblgen13AttrOrTypeDefEE5clearEv.exit.i: ; preds = %_ZN4mlir6tblgen13AttrOrTypeDefD2Ev.exit.i.i.i, %.loopexit
  store i32 0, ptr %i.ab, align 8, !tbaa !79
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !80
end_hunk_0
