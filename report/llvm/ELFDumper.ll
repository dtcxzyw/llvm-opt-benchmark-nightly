Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFDumper?download=true
inline.NumInlined: 48625
inline.NumDeleted: 9668
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 236
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_:bb.a
  %.sroa.5.i.i.i = alloca { i32, %"class.std::optional.413" }, align 8 ; 4 uses
  %4 = alloca %"class.(anonymous namespace)::Relocation", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 192
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i
  %i.g = phi i64 [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ], [ %i.b, %bb.a ]
  %.sroa.035.036.i = phi ptr [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ], [ %0, %bb.a ] ; 7 uses
  %i.h = getelementptr i8, ptr %.sroa.035.036.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.0.020.i.idx.i = phi i64 [ 32, %.lr.ph.i.i ], [ %.sroa.0.020.i.add.i, %bb.h ] ; 2 uses
  %.pn19.i.i = phi ptr [ %.sroa.035.036.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.h ] ; 5 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 %.sroa.0.020.i.idx.i ; 6 uses
  %i.i = getelementptr i8, ptr %.pn19.i.i, i64 40
  %.val2.i.i.i = load i32, ptr %i.i, align 8, !tbaa !638 ; 4 uses
  %.val3.i.i.i = load i32, ptr %i.h, align 8, !tbaa !638
  %i.j = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.ptr.i, i64 32, i1 false)
  %i.k = ptrtoint ptr %.sroa.0.020.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !425

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 64
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.036.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 32
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.036.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.036.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.t = load i64, ptr %.sroa.0.020.i.ptr.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i.i, i64 20, i1 false)
  %i.u = getelementptr i8, ptr %.pn19.i.i, i64 8
  %.val3.i9.i.i.i = load i32, ptr %i.u, align 8, !tbaa !638
  %i.v = icmp ult i32 %.val2.i.i.i, %.val3.i9.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.08.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i, i64 32, i1 false)
  %i.w = getelementptr i8, ptr %.sroa.08.010.i.i.i, i64 -56
  %.val3.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !638
  %i.x = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i.i
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i, !llvm.loop !85

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.08.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %bb.g ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  store i64 %i.t, ptr %.sroa.08.0.lcssa.i.i.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 8
  store i32 %.val2.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 32 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.020.i.add.i, 224
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i, label %bb.b, !llvm.loop !86

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 224 ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = sub i64 %i.a, %i.z
  %i.ab = icmp sgt i64 %i.aa, 192
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !8022

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i, %bb.a
  %.sroa.035.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ]
  %i.ac = icmp eq ptr %.sroa.035.0.lcssa.i, %1
  br i1 %i.ac, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit, label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.017.i14.i = getelementptr inbounds nuw i8, ptr %.sroa.035.0.lcssa.i, i64 32 ; 2 uses
  %.not18.i15.i = icmp eq ptr %.sroa.0.017.i14.i, %1
  br i1 %.not18.i15.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.preheader.i13.i
  %i.ad = getelementptr i8, ptr %.sroa.035.0.lcssa.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16.i
  %.sroa.0.020.i17.i = phi ptr [ %.sroa.0.017.i14.i, %.lr.ph.i16.i ], [ %.sroa.0.0.i27.i, %bb.o ] ; 7 uses
  %.pn19.i18.i = phi ptr [ %.sroa.035.0.lcssa.i, %.lr.ph.i16.i ], [ %.sroa.0.020.i17.i, %bb.o ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.pn19.i18.i, i64 40
  %.val2.i.i19.i = load i32, ptr %i.ae, align 8, !tbaa !638 ; 4 uses
  %.val3.i.i20.i = load i32, ptr %i.ad, align 8, !tbaa !638
  %i.af = icmp ult i32 %.val2.i.i19.i, %.val3.i.i20.i
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i17.i, i64 32, i1 false)
  %i.ag = ptrtoint ptr %.sroa.0.020.i17.i to i64
  %i.ah = sub i64 %i.ag, %.lcssa.i                ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !425

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 64
  %i.al = sub nsw i64 0, %i.ai
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.0.lcssa.i, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ah, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i)
  %i.ap = load i64, ptr %.sroa.0.020.i17.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i21.i, i64 20, i1 false)
  %i.aq = getelementptr i8, ptr %.pn19.i18.i, i64 8
  %.val3.i9.i.i22.i = load i32, ptr %i.aq, align 8, !tbaa !638
  %i.ar = icmp ult i32 %.val2.i.i19.i, %.val3.i9.i.i22.i
  br i1 %i.ar, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i

.lr.ph.i.i29.i:                                   ; preds = %bb.n, %.lr.ph.i.i29.i
  %.sroa.08.010.i.i30.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ], [ %.sroa.0.020.i17.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i30.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i30.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i31.i, i64 32, i1 false)
  %i.as = getelementptr i8, ptr %.sroa.08.010.i.i30.i, i64 -56
  %.val3.i.i.i32.i = load i32, ptr %i.as, align 8, !tbaa !638
  %i.at = icmp ult i32 %.val2.i.i19.i, %.val3.i.i.i32.i
  br i1 %i.at, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i, !llvm.loop !85

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i: ; preds = %.lr.ph.i.i29.i, %bb.n
  %.sroa.08.0.lcssa.i.i24.i = phi ptr [ %.sroa.0.020.i17.i, %bb.n ], [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ] ; 3 uses
  store i64 %i.ap, ptr %.sroa.08.0.lcssa.i.i24.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 8
  store i32 %.val2.i.i19.i, ptr %.sroa.4.0..val.sroa_idx.i.i25.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i26.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i
  %.sroa.0.0.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17.i, i64 32 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %1
  br i1 %.not.i28.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit, label %bb.i, !llvm.loop !86

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit: ; preds = %bb.o, %._crit_edge.i, %.preheader.i13.i
  %i.au = icmp sgt i64 %i.d, 7
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit
  %i.av = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit
  %.070 = phi i64 [ 7, %.lr.ph ], [ %i.dh, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit ] ; 8 uses
  %i.aw = shl nsw i64 %.070, 1                    ; 6 uses
  %.not53.i = icmp slt i64 %i.d, %i.aw
  br i1 %.not53.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %.idx.i = shl i64 %.070, 5                      ; 12 uses
  %.idx47.i = shl i64 %.070, 6                    ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i, %.idx47.i
  br i1 %.not48.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.ax = icmp sgt i64 %.idx.i, 32
  br i1 %i.ax, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !425

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.055.us.i.us = phi ptr [ %5, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.046.054.us.i.us = phi ptr [ %i.ay, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.055.us.i.us, ptr align 8 %.sroa.046.054.us.i.us, i64 %.idx.i, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.055.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %.idx.i, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.a, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.bc, %i.aw
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !8023

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.bd = icmp eq i64 %.idx.i, 32
  br i1 %i.bd, label %.critedge.i.us.i.us59, label %.critedge.i.us.i

.critedge.i.us.i.us59:                            ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i.us59
  %.055.us.i.us60 = phi ptr [ %6, %.critedge.i.us.i.us59 ], [ %2, %.critedge.i.us.preheader.i.split ] ; 3 uses
  %.sroa.046.054.us.i.us61 = phi ptr [ %i.be, %.critedge.i.us.i.us59 ], [ %0, %.critedge.i.us.preheader.i.split ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us61, i64 32 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.055.us.i.us60, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.046.054.us.i.us61, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 64 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.a, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5                 ; 2 uses
  %.not.us.i.us63 = icmp slt i64 %i.bi, %i.aw
  br i1 %.not.us.i.us63, label %._crit_edge.i25, label %.critedge.i.us.i.us59, !llvm.loop !8023

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.055.us.i = phi ptr [ %i.bk, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.046.054.us.i = phi ptr [ %7, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %7 = getelementptr inbounds i8, ptr %.sroa.046.054.us.i, i64 %.idx.i ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx.i ; 2 uses
  %i.bl = ptrtoint ptr %7 to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = ashr exact i64 %i.bm, 5                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.bn, %i.aw
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !8023

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i
  %.055.i = phi ptr [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %2, %.lr.ph.i ]
  %.sroa.046.054.i = phi ptr [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx.i ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.021.i.i = phi ptr [ %i.bv, %bb.s ], [ %.055.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.017.020.i.i = phi ptr [ %.sroa.017.1.i.i, %bb.s ], [ %.sroa.046.054.i, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.015.019.i.i = phi ptr [ %.sroa.015.1.i.i, %bb.s ], [ %i.bo, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.bq = getelementptr i8, ptr %.sroa.015.019.i.i, i64 8
  %.val2.i.i.i23 = load i32, ptr %i.bq, align 8, !tbaa !638
  %i.br = getelementptr i8, ptr %.sroa.017.020.i.i, i64 8
  %.val3.i.i.i24 = load i32, ptr %i.br, align 8, !tbaa !638
  %i.bs = icmp ult i32 %.val2.i.i.i23, %.val3.i.i.i24
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i.i, i64 32, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i.i, i64 32
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i.i, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i.i, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.1.i.i = phi ptr [ %i.bt, %bb.q ], [ %.sroa.015.019.i.i, %bb.r ] ; 5 uses
  %.sroa.017.1.i.i = phi ptr [ %.sroa.017.020.i.i, %bb.q ], [ %i.bu, %bb.r ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 32 ; 4 uses
  %i.bw = icmp ne ptr %.sroa.017.1.i.i, %i.bo
  %i.bx = icmp ne ptr %.sroa.015.1.i.i, %i.bp
  %or.cond.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i22, label %.critedge.i.loopexit.i, !llvm.loop !8024

.critedge.i.loopexit.i:                           ; preds = %bb.s
  %i.by = ptrtoint ptr %i.bo to i64
  %i.bz = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, 32
  br i1 %i.cb, label %bb.t, label %bb.u, !prof !425

bb.t:                                             ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 8 %.sroa.017.1.i.i, i64 %i.ca, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.u:                                             ; preds = %.critedge.i.loopexit.i
  %i.cc = icmp eq i64 %i.ca, 32
  br i1 %i.cc, label %bb.v, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.cd = getelementptr inbounds i8, ptr %i.bv, i64 %i.ca ; 3 uses
  %i.ce = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp sgt i64 %i.cg, 32
  br i1 %i.ch, label %bb.w, label %bb.x, !prof !425

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr nonnull align 8 %.sroa.015.1.i.i, i64 %i.cg, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.x:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  %i.ci = icmp eq i64 %i.cg, 32
  br i1 %i.ci, label %bb.y, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.1.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg ; 2 uses
  %i.ck = sub i64 %i.a, %i.ce
  %i.cl = ashr exact i64 %i.ck, 5                 ; 2 uses
  %.not.i = icmp slt i64 %i.cl, %i.aw
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !8023

._crit_edge.i25:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us59, %.critedge.i.us.i.us, %bb.p
  %.sroa.046.0.lcssa.i = phi ptr [ %0, %bb.p ], [ %i.ay, %.critedge.i.us.i.us ], [ %i.be, %.critedge.i.us.i.us59 ], [ %7, %.critedge.i.us.i ], [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.p ], [ %5, %.critedge.i.us.i.us ], [ %6, %.critedge.i.us.i.us59 ], [ %i.bk, %.critedge.i.us.i ], [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ] ; 2 uses
  %.lcssa51.i = phi i64 [ %i.d, %bb.p ], [ %i.bc, %.critedge.i.us.i.us ], [ %i.bi, %.critedge.i.us.i.us59 ], [ %i.bn, %.critedge.i.us.i ], [ %i.cl, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 288230376151711743) %.070, i64 %.lcssa51.i) ; 2 uses
  %.idx49.i = shl nsw i64 %.sroa.speculated.i, 5
  %i.cm = getelementptr inbounds i8, ptr %.sroa.046.0.lcssa.i, i64 %.idx49.i ; 5 uses
  %i.cn = icmp ne i64 %.sroa.speculated.i, 0
  %i.co = icmp ne ptr %i.cm, %1
  %or.cond18.i24.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond18.i24.i, label %.lr.ph.i30.i, label %.critedge.i25.i

.lr.ph.i30.i:                                     ; preds = %._crit_edge.i25, %bb.ab
  %.021.i31.i = phi ptr [ %i.cu, %bb.ab ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 3 uses
  %.sroa.017.020.i32.i = phi ptr [ %.sroa.017.1.i37.i, %bb.ab ], [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ] ; 4 uses
  %.sroa.015.019.i33.i = phi ptr [ %.sroa.015.1.i36.i, %bb.ab ], [ %i.cm, %._crit_edge.i25 ] ; 4 uses
  %i.cp = getelementptr i8, ptr %.sroa.015.019.i33.i, i64 8
  %.val2.i.i34.i = load i32, ptr %i.cp, align 8, !tbaa !638
  %i.cq = getelementptr i8, ptr %.sroa.017.020.i32.i, i64 8
  %.val3.i.i35.i = load i32, ptr %i.cq, align 8, !tbaa !638
  %i.cr = icmp ult i32 %.val2.i.i34.i, %.val3.i.i35.i
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i33.i, i64 32, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i33.i, i64 32
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i32.i, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i32.i, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.015.1.i36.i = phi ptr [ %i.cs, %bb.z ], [ %.sroa.015.019.i33.i, %bb.aa ] ; 3 uses
  %.sroa.017.1.i37.i = phi ptr [ %.sroa.017.020.i32.i, %bb.z ], [ %i.ct, %bb.aa ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.021.i31.i, i64 32 ; 2 uses
  %i.cv = icmp ne ptr %.sroa.017.1.i37.i, %i.cm
  %i.cw = icmp ne ptr %.sroa.015.1.i36.i, %1
  %or.cond.i38.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.i38.i, label %.lr.ph.i30.i, label %.critedge.i25.i, !llvm.loop !8024

.critedge.i25.i:                                  ; preds = %bb.ab, %._crit_edge.i25
  %.sroa.015.0.lcssa.i26.i = phi ptr [ %i.cm, %._crit_edge.i25 ], [ %.sroa.015.1.i36.i, %bb.ab ] ; 3 uses
  %.sroa.017.0.lcssa.i27.i = phi ptr [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.017.1.i37.i, %bb.ab ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.cu, %bb.ab ] ; 3 uses
  %i.cx = ptrtoint ptr %i.cm to i64
  %i.cy = ptrtoint ptr %.sroa.017.0.lcssa.i27.i to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 32
  br i1 %i.da, label %bb.ac, label %bb.ad, !prof !425

bb.ac:                                            ; preds = %.critedge.i25.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i28.i, ptr align 8 %.sroa.017.0.lcssa.i27.i, i64 %i.cz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ad:                                            ; preds = %.critedge.i25.i
  %i.db = icmp eq i64 %i.cz, 32
  br i1 %i.db, label %bb.ae, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i28.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.0.lcssa.i27.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dc = getelementptr inbounds i8, ptr %.0.lcssa.i28.i, i64 %i.cz ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.015.0.lcssa.i26.i to i64
  %i.de = sub i64 %i.a, %i.dd                     ; 3 uses
  %i.df = icmp sgt i64 %i.de, 32
  br i1 %i.df, label %bb.af, label %bb.ag, !prof !425

bb.af:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dc, ptr align 8 %.sroa.015.0.lcssa.i26.i, i64 %i.de, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit

bb.ag:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  %i.dg = icmp eq i64 %i.de, 32
  br i1 %i.dg, label %bb.ah, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.0.lcssa.i26.i, i64 32, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dh = shl nsw i64 %.070, 2                    ; 5 uses
  %.not49.i = icmp slt i64 %i.d, %i.dh
  br i1 %.not49.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit
  %.idx.i27 = shl i64 %.070, 6                    ; 8 uses
  %.idx43.i = shl nsw i64 %.070, 7                ; 2 uses
  %.not44.i = icmp eq i64 %.idx.i27, %.idx43.i
  br i1 %.not44.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.di = icmp sgt i64 %.070, 0
  %i.dj = icmp sgt i64 %.idx.i27, 32
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.022.051.us.i = phi ptr [ %i.dm, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.050.us.i = phi ptr [ %i.dk, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.050.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.di, label %bb.ai, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, !prof !425

bb.ai:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.051.us.i, ptr align 8 %.050.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.ai
  %i.dl = getelementptr inbounds i8, ptr %.sroa.022.051.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.dj, label %bb.aj, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i, !prof !1092

bb.aj:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull align 8 %i.dk, i64 %.idx.i27, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, %bb.aj
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i27 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.av, %i.dn
  %i.dp = ashr exact i64 %i.do, 5                 ; 2 uses
  %.not.us.i36 = icmp slt i64 %i.dp, %i.dh
  br i1 %.not.us.i36, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !8025

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i
  %.sroa.022.051.i = phi ptr [ %i.em, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %0, %.lr.ph.i26 ]
  %.050.i = phi ptr [ %i.dr, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.050.i, i64 %.idx.i27 ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.050.i, i64 %.idx43.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.am, %.lr.ph.i.preheader.i28
  %.022.i.i = phi ptr [ %.1.i.i, %bb.am ], [ %.050.i, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.01621.i.i = phi ptr [ %.117.i.i, %bb.am ], [ %i.dq, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.sroa.0.020.i.i = phi ptr [ %i.dx, %bb.am ], [ %.sroa.022.051.i, %.lr.ph.i.preheader.i28 ] ; 3 uses
  %i.ds = getelementptr i8, ptr %.01621.i.i, i64 8
  %.016.val.i.i = load i32, ptr %i.ds, align 8, !tbaa !638
  %i.dt = getelementptr i8, ptr %.022.i.i, i64 8
  %.0.val.i.i = load i32, ptr %i.dt, align 8, !tbaa !638
  %i.du = icmp ult i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01621.i.i, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.022.i.i, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.117.i.i = phi ptr [ %i.dv, %bb.ak ], [ %.01621.i.i, %bb.al ] ; 5 uses
  %.1.i.i = phi ptr [ %.022.i.i, %bb.ak ], [ %i.dw, %bb.al ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 32 ; 4 uses
  %i.dy = icmp ne ptr %.1.i.i, %i.dq
  %i.dz = icmp ne ptr %.117.i.i, %i.dr
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !8026

._crit_edge.i.loopexit.i:                         ; preds = %bb.am
  %i.eb = ptrtoint ptr %i.dq to i64
  %i.ec = ptrtoint ptr %.1.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 4 uses
  %i.ee = icmp sgt i64 %i.ed, 32
  br i1 %i.ee, label %bb.an, label %bb.ao, !prof !425

bb.an:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %.1.i.i, i64 %i.ed, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ao:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.ef = icmp eq i64 %i.ed, 32
  br i1 %i.ef, label %bb.ap, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(32) %.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.eg = getelementptr inbounds i8, ptr %i.dx, i64 %i.ed ; 3 uses
  %i.eh = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.ei = ptrtoint ptr %.117.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %i.ek = icmp sgt i64 %i.ej, 32
  br i1 %i.ek, label %bb.aq, label %bb.ar, !prof !425

bb.aq:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr nonnull align 8 %.117.i.i, i64 %i.ej, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.ar:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %i.el = icmp eq i64 %i.ej, 32
  br i1 %i.el, label %bb.as, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(32) %.117.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.em = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_:bb.a
  %.sroa.5.i.i.i = alloca { i32, %"class.std::optional.413" }, align 8 ; 4 uses
  %4 = alloca %"class.(anonymous namespace)::Relocation", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 192
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i
  %i.g = phi i64 [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ], [ %i.b, %bb.a ]
  %.sroa.035.036.i = phi ptr [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ], [ %0, %bb.a ] ; 7 uses
  %i.h = getelementptr i8, ptr %.sroa.035.036.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.0.020.i.idx.i = phi i64 [ 32, %.lr.ph.i.i ], [ %.sroa.0.020.i.add.i, %bb.h ] ; 2 uses
  %.pn19.i.i = phi ptr [ %.sroa.035.036.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.h ] ; 5 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 %.sroa.0.020.i.idx.i ; 6 uses
  %i.i = getelementptr i8, ptr %.pn19.i.i, i64 40
  %.val2.i.i.i = load i32, ptr %i.i, align 8, !tbaa !638 ; 4 uses
  %.val3.i.i.i = load i32, ptr %i.h, align 8, !tbaa !638
  %i.j = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.ptr.i, i64 32, i1 false)
  %i.k = ptrtoint ptr %.sroa.0.020.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !425

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 64
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.036.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 32
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.036.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.036.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.t = load i64, ptr %.sroa.0.020.i.ptr.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i.i, i64 20, i1 false)
  %i.u = getelementptr i8, ptr %.pn19.i.i, i64 8
  %.val3.i9.i.i.i = load i32, ptr %i.u, align 8, !tbaa !638
  %i.v = icmp ult i32 %.val2.i.i.i, %.val3.i9.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.08.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i, i64 32, i1 false)
  %i.w = getelementptr i8, ptr %.sroa.08.010.i.i.i, i64 -56
  %.val3.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !638
  %i.x = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i.i
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i, !llvm.loop !126

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.08.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %bb.g ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  store i64 %i.t, ptr %.sroa.08.0.lcssa.i.i.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 8
  store i32 %.val2.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 32 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.020.i.add.i, 224
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i, label %bb.b, !llvm.loop !127

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 224 ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = sub i64 %i.a, %i.z
  %i.ab = icmp sgt i64 %i.aa, 192
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !9387

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i, %bb.a
  %.sroa.035.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ]
  %i.ac = icmp eq ptr %.sroa.035.0.lcssa.i, %1
  br i1 %i.ac, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit, label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.017.i14.i = getelementptr inbounds nuw i8, ptr %.sroa.035.0.lcssa.i, i64 32 ; 2 uses
  %.not18.i15.i = icmp eq ptr %.sroa.0.017.i14.i, %1
  br i1 %.not18.i15.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.preheader.i13.i
  %i.ad = getelementptr i8, ptr %.sroa.035.0.lcssa.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16.i
  %.sroa.0.020.i17.i = phi ptr [ %.sroa.0.017.i14.i, %.lr.ph.i16.i ], [ %.sroa.0.0.i27.i, %bb.o ] ; 7 uses
  %.pn19.i18.i = phi ptr [ %.sroa.035.0.lcssa.i, %.lr.ph.i16.i ], [ %.sroa.0.020.i17.i, %bb.o ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.pn19.i18.i, i64 40
  %.val2.i.i19.i = load i32, ptr %i.ae, align 8, !tbaa !638 ; 4 uses
  %.val3.i.i20.i = load i32, ptr %i.ad, align 8, !tbaa !638
  %i.af = icmp ult i32 %.val2.i.i19.i, %.val3.i.i20.i
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i17.i, i64 32, i1 false)
  %i.ag = ptrtoint ptr %.sroa.0.020.i17.i to i64
  %i.ah = sub i64 %i.ag, %.lcssa.i                ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !425

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 64
  %i.al = sub nsw i64 0, %i.ai
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.0.lcssa.i, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ah, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i)
  %i.ap = load i64, ptr %.sroa.0.020.i17.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i21.i, i64 20, i1 false)
  %i.aq = getelementptr i8, ptr %.pn19.i18.i, i64 8
  %.val3.i9.i.i22.i = load i32, ptr %i.aq, align 8, !tbaa !638
  %i.ar = icmp ult i32 %.val2.i.i19.i, %.val3.i9.i.i22.i
  br i1 %i.ar, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i

.lr.ph.i.i29.i:                                   ; preds = %bb.n, %.lr.ph.i.i29.i
  %.sroa.08.010.i.i30.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ], [ %.sroa.0.020.i17.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i30.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i30.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i31.i, i64 32, i1 false)
  %i.as = getelementptr i8, ptr %.sroa.08.010.i.i30.i, i64 -56
  %.val3.i.i.i32.i = load i32, ptr %i.as, align 8, !tbaa !638
  %i.at = icmp ult i32 %.val2.i.i19.i, %.val3.i.i.i32.i
  br i1 %i.at, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i, !llvm.loop !126

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i: ; preds = %.lr.ph.i.i29.i, %bb.n
  %.sroa.08.0.lcssa.i.i24.i = phi ptr [ %.sroa.0.020.i17.i, %bb.n ], [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ] ; 3 uses
  store i64 %i.ap, ptr %.sroa.08.0.lcssa.i.i24.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 8
  store i32 %.val2.i.i19.i, ptr %.sroa.4.0..val.sroa_idx.i.i25.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i26.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i
  %.sroa.0.0.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17.i, i64 32 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %1
  br i1 %.not.i28.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit, label %bb.i, !llvm.loop !127

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit: ; preds = %bb.o, %._crit_edge.i, %.preheader.i13.i
  %i.au = icmp sgt i64 %i.d, 7
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit
  %i.av = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit
  %.070 = phi i64 [ 7, %.lr.ph ], [ %i.dh, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit ] ; 8 uses
  %i.aw = shl nsw i64 %.070, 1                    ; 6 uses
  %.not53.i = icmp slt i64 %i.d, %i.aw
  br i1 %.not53.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %.idx.i = shl i64 %.070, 5                      ; 12 uses
  %.idx47.i = shl i64 %.070, 6                    ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i, %.idx47.i
  br i1 %.not48.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.ax = icmp sgt i64 %.idx.i, 32
  br i1 %i.ax, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !425

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.055.us.i.us = phi ptr [ %5, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.046.054.us.i.us = phi ptr [ %i.ay, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.055.us.i.us, ptr align 8 %.sroa.046.054.us.i.us, i64 %.idx.i, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.055.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %.idx.i, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.a, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.bc, %i.aw
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !9388

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.bd = icmp eq i64 %.idx.i, 32
  br i1 %i.bd, label %.critedge.i.us.i.us59, label %.critedge.i.us.i

.critedge.i.us.i.us59:                            ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i.us59
  %.055.us.i.us60 = phi ptr [ %6, %.critedge.i.us.i.us59 ], [ %2, %.critedge.i.us.preheader.i.split ] ; 3 uses
  %.sroa.046.054.us.i.us61 = phi ptr [ %i.be, %.critedge.i.us.i.us59 ], [ %0, %.critedge.i.us.preheader.i.split ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us61, i64 32 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.055.us.i.us60, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.046.054.us.i.us61, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 64 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.a, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5                 ; 2 uses
  %.not.us.i.us63 = icmp slt i64 %i.bi, %i.aw
  br i1 %.not.us.i.us63, label %._crit_edge.i25, label %.critedge.i.us.i.us59, !llvm.loop !9388

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.055.us.i = phi ptr [ %i.bk, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.046.054.us.i = phi ptr [ %7, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %7 = getelementptr inbounds i8, ptr %.sroa.046.054.us.i, i64 %.idx.i ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx.i ; 2 uses
  %i.bl = ptrtoint ptr %7 to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = ashr exact i64 %i.bm, 5                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.bn, %i.aw
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !9388

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i
  %.055.i = phi ptr [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %2, %.lr.ph.i ]
  %.sroa.046.054.i = phi ptr [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx.i ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.021.i.i = phi ptr [ %i.bv, %bb.s ], [ %.055.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.017.020.i.i = phi ptr [ %.sroa.017.1.i.i, %bb.s ], [ %.sroa.046.054.i, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.015.019.i.i = phi ptr [ %.sroa.015.1.i.i, %bb.s ], [ %i.bo, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.bq = getelementptr i8, ptr %.sroa.015.019.i.i, i64 8
  %.val2.i.i.i23 = load i32, ptr %i.bq, align 8, !tbaa !638
  %i.br = getelementptr i8, ptr %.sroa.017.020.i.i, i64 8
  %.val3.i.i.i24 = load i32, ptr %i.br, align 8, !tbaa !638
  %i.bs = icmp ult i32 %.val2.i.i.i23, %.val3.i.i.i24
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i.i, i64 32, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i.i, i64 32
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i.i, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i.i, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.1.i.i = phi ptr [ %i.bt, %bb.q ], [ %.sroa.015.019.i.i, %bb.r ] ; 5 uses
  %.sroa.017.1.i.i = phi ptr [ %.sroa.017.020.i.i, %bb.q ], [ %i.bu, %bb.r ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 32 ; 4 uses
  %i.bw = icmp ne ptr %.sroa.017.1.i.i, %i.bo
  %i.bx = icmp ne ptr %.sroa.015.1.i.i, %i.bp
  %or.cond.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i22, label %.critedge.i.loopexit.i, !llvm.loop !9389

.critedge.i.loopexit.i:                           ; preds = %bb.s
  %i.by = ptrtoint ptr %i.bo to i64
  %i.bz = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, 32
  br i1 %i.cb, label %bb.t, label %bb.u, !prof !425

bb.t:                                             ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 8 %.sroa.017.1.i.i, i64 %i.ca, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.u:                                             ; preds = %.critedge.i.loopexit.i
  %i.cc = icmp eq i64 %i.ca, 32
  br i1 %i.cc, label %bb.v, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.cd = getelementptr inbounds i8, ptr %i.bv, i64 %i.ca ; 3 uses
  %i.ce = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp sgt i64 %i.cg, 32
  br i1 %i.ch, label %bb.w, label %bb.x, !prof !425

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr nonnull align 8 %.sroa.015.1.i.i, i64 %i.cg, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.x:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  %i.ci = icmp eq i64 %i.cg, 32
  br i1 %i.ci, label %bb.y, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.1.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg ; 2 uses
  %i.ck = sub i64 %i.a, %i.ce
  %i.cl = ashr exact i64 %i.ck, 5                 ; 2 uses
  %.not.i = icmp slt i64 %i.cl, %i.aw
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !9388

._crit_edge.i25:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us59, %.critedge.i.us.i.us, %bb.p
  %.sroa.046.0.lcssa.i = phi ptr [ %0, %bb.p ], [ %i.ay, %.critedge.i.us.i.us ], [ %i.be, %.critedge.i.us.i.us59 ], [ %7, %.critedge.i.us.i ], [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.p ], [ %5, %.critedge.i.us.i.us ], [ %6, %.critedge.i.us.i.us59 ], [ %i.bk, %.critedge.i.us.i ], [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ] ; 2 uses
  %.lcssa51.i = phi i64 [ %i.d, %bb.p ], [ %i.bc, %.critedge.i.us.i.us ], [ %i.bi, %.critedge.i.us.i.us59 ], [ %i.bn, %.critedge.i.us.i ], [ %i.cl, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 288230376151711743) %.070, i64 %.lcssa51.i) ; 2 uses
  %.idx49.i = shl nsw i64 %.sroa.speculated.i, 5
  %i.cm = getelementptr inbounds i8, ptr %.sroa.046.0.lcssa.i, i64 %.idx49.i ; 5 uses
  %i.cn = icmp ne i64 %.sroa.speculated.i, 0
  %i.co = icmp ne ptr %i.cm, %1
  %or.cond18.i24.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond18.i24.i, label %.lr.ph.i30.i, label %.critedge.i25.i

.lr.ph.i30.i:                                     ; preds = %._crit_edge.i25, %bb.ab
  %.021.i31.i = phi ptr [ %i.cu, %bb.ab ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 3 uses
  %.sroa.017.020.i32.i = phi ptr [ %.sroa.017.1.i37.i, %bb.ab ], [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ] ; 4 uses
  %.sroa.015.019.i33.i = phi ptr [ %.sroa.015.1.i36.i, %bb.ab ], [ %i.cm, %._crit_edge.i25 ] ; 4 uses
  %i.cp = getelementptr i8, ptr %.sroa.015.019.i33.i, i64 8
  %.val2.i.i34.i = load i32, ptr %i.cp, align 8, !tbaa !638
  %i.cq = getelementptr i8, ptr %.sroa.017.020.i32.i, i64 8
  %.val3.i.i35.i = load i32, ptr %i.cq, align 8, !tbaa !638
  %i.cr = icmp ult i32 %.val2.i.i34.i, %.val3.i.i35.i
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i33.i, i64 32, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i33.i, i64 32
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i32.i, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i32.i, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.015.1.i36.i = phi ptr [ %i.cs, %bb.z ], [ %.sroa.015.019.i33.i, %bb.aa ] ; 3 uses
  %.sroa.017.1.i37.i = phi ptr [ %.sroa.017.020.i32.i, %bb.z ], [ %i.ct, %bb.aa ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.021.i31.i, i64 32 ; 2 uses
  %i.cv = icmp ne ptr %.sroa.017.1.i37.i, %i.cm
  %i.cw = icmp ne ptr %.sroa.015.1.i36.i, %1
  %or.cond.i38.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.i38.i, label %.lr.ph.i30.i, label %.critedge.i25.i, !llvm.loop !9389

.critedge.i25.i:                                  ; preds = %bb.ab, %._crit_edge.i25
  %.sroa.015.0.lcssa.i26.i = phi ptr [ %i.cm, %._crit_edge.i25 ], [ %.sroa.015.1.i36.i, %bb.ab ] ; 3 uses
  %.sroa.017.0.lcssa.i27.i = phi ptr [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.017.1.i37.i, %bb.ab ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.cu, %bb.ab ] ; 3 uses
  %i.cx = ptrtoint ptr %i.cm to i64
  %i.cy = ptrtoint ptr %.sroa.017.0.lcssa.i27.i to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 32
  br i1 %i.da, label %bb.ac, label %bb.ad, !prof !425

bb.ac:                                            ; preds = %.critedge.i25.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i28.i, ptr align 8 %.sroa.017.0.lcssa.i27.i, i64 %i.cz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ad:                                            ; preds = %.critedge.i25.i
  %i.db = icmp eq i64 %i.cz, 32
  br i1 %i.db, label %bb.ae, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i28.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.0.lcssa.i27.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dc = getelementptr inbounds i8, ptr %.0.lcssa.i28.i, i64 %i.cz ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.015.0.lcssa.i26.i to i64
  %i.de = sub i64 %i.a, %i.dd                     ; 3 uses
  %i.df = icmp sgt i64 %i.de, 32
  br i1 %i.df, label %bb.af, label %bb.ag, !prof !425

bb.af:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dc, ptr align 8 %.sroa.015.0.lcssa.i26.i, i64 %i.de, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit

bb.ag:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  %i.dg = icmp eq i64 %i.de, 32
  br i1 %i.dg, label %bb.ah, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.0.lcssa.i26.i, i64 32, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dh = shl nsw i64 %.070, 2                    ; 5 uses
  %.not49.i = icmp slt i64 %i.d, %i.dh
  br i1 %.not49.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE1ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit
  %.idx.i27 = shl i64 %.070, 6                    ; 8 uses
  %.idx43.i = shl nsw i64 %.070, 7                ; 2 uses
  %.not44.i = icmp eq i64 %.idx.i27, %.idx43.i
  br i1 %.not44.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.di = icmp sgt i64 %.070, 0
  %i.dj = icmp sgt i64 %.idx.i27, 32
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.022.051.us.i = phi ptr [ %i.dm, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.050.us.i = phi ptr [ %i.dk, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.050.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.di, label %bb.ai, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, !prof !425

bb.ai:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.051.us.i, ptr align 8 %.050.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.ai
  %i.dl = getelementptr inbounds i8, ptr %.sroa.022.051.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.dj, label %bb.aj, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i, !prof !1092

bb.aj:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull align 8 %i.dk, i64 %.idx.i27, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, %bb.aj
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i27 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.av, %i.dn
  %i.dp = ashr exact i64 %i.do, 5                 ; 2 uses
  %.not.us.i36 = icmp slt i64 %i.dp, %i.dh
  br i1 %.not.us.i36, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !9390

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i
  %.sroa.022.051.i = phi ptr [ %i.em, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %0, %.lr.ph.i26 ]
  %.050.i = phi ptr [ %i.dr, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.050.i, i64 %.idx.i27 ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.050.i, i64 %.idx43.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.am, %.lr.ph.i.preheader.i28
  %.022.i.i = phi ptr [ %.1.i.i, %bb.am ], [ %.050.i, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.01621.i.i = phi ptr [ %.117.i.i, %bb.am ], [ %i.dq, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.sroa.0.020.i.i = phi ptr [ %i.dx, %bb.am ], [ %.sroa.022.051.i, %.lr.ph.i.preheader.i28 ] ; 3 uses
  %i.ds = getelementptr i8, ptr %.01621.i.i, i64 8
  %.016.val.i.i = load i32, ptr %i.ds, align 8, !tbaa !638
  %i.dt = getelementptr i8, ptr %.022.i.i, i64 8
  %.0.val.i.i = load i32, ptr %i.dt, align 8, !tbaa !638
  %i.du = icmp ult i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01621.i.i, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.022.i.i, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.117.i.i = phi ptr [ %i.dv, %bb.ak ], [ %.01621.i.i, %bb.al ] ; 5 uses
  %.1.i.i = phi ptr [ %.022.i.i, %bb.ak ], [ %i.dw, %bb.al ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 32 ; 4 uses
  %i.dy = icmp ne ptr %.1.i.i, %i.dq
  %i.dz = icmp ne ptr %.117.i.i, %i.dr
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !9391

._crit_edge.i.loopexit.i:                         ; preds = %bb.am
  %i.eb = ptrtoint ptr %i.dq to i64
  %i.ec = ptrtoint ptr %.1.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 4 uses
  %i.ee = icmp sgt i64 %i.ed, 32
  br i1 %i.ee, label %bb.an, label %bb.ao, !prof !425

bb.an:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %.1.i.i, i64 %i.ed, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ao:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.ef = icmp eq i64 %i.ed, 32
  br i1 %i.ef, label %bb.ap, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(32) %.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.eg = getelementptr inbounds i8, ptr %i.dx, i64 %i.ed ; 3 uses
  %i.eh = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.ei = ptrtoint ptr %.117.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %i.ek = icmp sgt i64 %i.ej, 32
  br i1 %i.ek, label %bb.aq, label %bb.ar, !prof !425

bb.aq:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr nonnull align 8 %.117.i.i, i64 %i.ej, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.ar:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %i.el = icmp eq i64 %i.ej, 32
  br i1 %i.el, label %bb.as, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(32) %.117.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE1ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.em = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_:bb.a
  %.sroa.5.i.i.i = alloca { i32, %"class.std::optional.413" }, align 8 ; 4 uses
  %4 = alloca %"class.(anonymous namespace)::Relocation.1590", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 192
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i
  %i.g = phi i64 [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ], [ %i.b, %bb.a ]
  %.sroa.035.036.i = phi ptr [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ], [ %0, %bb.a ] ; 7 uses
  %i.h = getelementptr i8, ptr %.sroa.035.036.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.0.020.i.idx.i = phi i64 [ 32, %.lr.ph.i.i ], [ %.sroa.0.020.i.add.i, %bb.h ] ; 2 uses
  %.pn19.i.i = phi ptr [ %.sroa.035.036.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.h ] ; 5 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 %.sroa.0.020.i.idx.i ; 6 uses
  %i.i = getelementptr i8, ptr %.pn19.i.i, i64 40
  %.val2.i.i.i = load i32, ptr %i.i, align 8, !tbaa !1324 ; 4 uses
  %.val3.i.i.i = load i32, ptr %i.h, align 8, !tbaa !1324
  %i.j = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.ptr.i, i64 32, i1 false)
  %i.k = ptrtoint ptr %.sroa.0.020.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !425

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 64
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.036.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 32
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.036.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.036.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.t = load i64, ptr %.sroa.0.020.i.ptr.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i.i, i64 20, i1 false)
  %i.u = getelementptr i8, ptr %.pn19.i.i, i64 8
  %.val3.i9.i.i.i = load i32, ptr %i.u, align 8, !tbaa !1324
  %i.v = icmp ult i32 %.val2.i.i.i, %.val3.i9.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.08.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i, i64 32, i1 false)
  %i.w = getelementptr i8, ptr %.sroa.08.010.i.i.i, i64 -56
  %.val3.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !1324
  %i.x = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i.i
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i, !llvm.loop !152

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.08.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %bb.g ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  store i64 %i.t, ptr %.sroa.08.0.lcssa.i.i.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 8
  store i32 %.val2.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 32 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.020.i.add.i, 224
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i, label %bb.b, !llvm.loop !153

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 224 ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = sub i64 %i.a, %i.z
  %i.ab = icmp sgt i64 %i.aa, 192
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !14924

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i, %bb.a
  %.sroa.035.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_.exit.i ]
  %i.ac = icmp eq ptr %.sroa.035.0.lcssa.i, %1
  br i1 %i.ac, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit, label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.017.i14.i = getelementptr inbounds nuw i8, ptr %.sroa.035.0.lcssa.i, i64 32 ; 2 uses
  %.not18.i15.i = icmp eq ptr %.sroa.0.017.i14.i, %1
  br i1 %.not18.i15.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.preheader.i13.i
  %i.ad = getelementptr i8, ptr %.sroa.035.0.lcssa.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16.i
  %.sroa.0.020.i17.i = phi ptr [ %.sroa.0.017.i14.i, %.lr.ph.i16.i ], [ %.sroa.0.0.i27.i, %bb.o ] ; 7 uses
  %.pn19.i18.i = phi ptr [ %.sroa.035.0.lcssa.i, %.lr.ph.i16.i ], [ %.sroa.0.020.i17.i, %bb.o ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.pn19.i18.i, i64 40
  %.val2.i.i19.i = load i32, ptr %i.ae, align 8, !tbaa !1324 ; 4 uses
  %.val3.i.i20.i = load i32, ptr %i.ad, align 8, !tbaa !1324
  %i.af = icmp ult i32 %.val2.i.i19.i, %.val3.i.i20.i
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i17.i, i64 32, i1 false)
  %i.ag = ptrtoint ptr %.sroa.0.020.i17.i to i64
  %i.ah = sub i64 %i.ag, %.lcssa.i                ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !425

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 64
  %i.al = sub nsw i64 0, %i.ai
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.0.lcssa.i, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ah, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i)
  %i.ap = load i64, ptr %.sroa.0.020.i17.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i21.i, i64 20, i1 false)
  %i.aq = getelementptr i8, ptr %.pn19.i18.i, i64 8
  %.val3.i9.i.i22.i = load i32, ptr %i.aq, align 8, !tbaa !1324
  %i.ar = icmp ult i32 %.val2.i.i19.i, %.val3.i9.i.i22.i
  br i1 %i.ar, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i

.lr.ph.i.i29.i:                                   ; preds = %bb.n, %.lr.ph.i.i29.i
  %.sroa.08.010.i.i30.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ], [ %.sroa.0.020.i17.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i30.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i30.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i31.i, i64 32, i1 false)
  %i.as = getelementptr i8, ptr %.sroa.08.010.i.i30.i, i64 -56
  %.val3.i.i.i32.i = load i32, ptr %i.as, align 8, !tbaa !1324
  %i.at = icmp ult i32 %.val2.i.i19.i, %.val3.i.i.i32.i
  br i1 %i.at, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i, !llvm.loop !152

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i: ; preds = %.lr.ph.i.i29.i, %bb.n
  %.sroa.08.0.lcssa.i.i24.i = phi ptr [ %.sroa.0.020.i17.i, %bb.n ], [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ] ; 3 uses
  store i64 %i.ap, ptr %.sroa.08.0.lcssa.i.i24.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 8
  store i32 %.val2.i.i19.i, ptr %.sroa.4.0..val.sroa_idx.i.i25.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i26.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SU_.exit.i23.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i
  %.sroa.0.0.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17.i, i64 32 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %1
  br i1 %.not.i28.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit, label %bb.i, !llvm.loop !153

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit: ; preds = %bb.o, %._crit_edge.i, %.preheader.i13.i
  %i.au = icmp sgt i64 %i.d, 7
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_.exit
  %i.av = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit
  %.070 = phi i64 [ 7, %.lr.ph ], [ %i.dh, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit ] ; 8 uses
  %i.aw = shl nsw i64 %.070, 1                    ; 6 uses
  %.not53.i = icmp slt i64 %i.d, %i.aw
  br i1 %.not53.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %.idx.i = shl i64 %.070, 5                      ; 12 uses
  %.idx47.i = shl i64 %.070, 6                    ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i, %.idx47.i
  br i1 %.not48.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.ax = icmp sgt i64 %.idx.i, 32
  br i1 %i.ax, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !425

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.055.us.i.us = phi ptr [ %5, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.046.054.us.i.us = phi ptr [ %i.ay, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.055.us.i.us, ptr align 8 %.sroa.046.054.us.i.us, i64 %.idx.i, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.055.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %.idx.i, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.a, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.bc, %i.aw
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !14925

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.bd = icmp eq i64 %.idx.i, 32
  br i1 %i.bd, label %.critedge.i.us.i.us59, label %.critedge.i.us.i

.critedge.i.us.i.us59:                            ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i.us59
  %.055.us.i.us60 = phi ptr [ %6, %.critedge.i.us.i.us59 ], [ %2, %.critedge.i.us.preheader.i.split ] ; 3 uses
  %.sroa.046.054.us.i.us61 = phi ptr [ %i.be, %.critedge.i.us.i.us59 ], [ %0, %.critedge.i.us.preheader.i.split ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us61, i64 32 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.055.us.i.us60, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.046.054.us.i.us61, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 64 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.a, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5                 ; 2 uses
  %.not.us.i.us63 = icmp slt i64 %i.bi, %i.aw
  br i1 %.not.us.i.us63, label %._crit_edge.i25, label %.critedge.i.us.i.us59, !llvm.loop !14925

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.055.us.i = phi ptr [ %i.bk, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.046.054.us.i = phi ptr [ %7, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %7 = getelementptr inbounds i8, ptr %.sroa.046.054.us.i, i64 %.idx.i ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx.i ; 2 uses
  %i.bl = ptrtoint ptr %7 to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = ashr exact i64 %i.bm, 5                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.bn, %i.aw
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !14925

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i
  %.055.i = phi ptr [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %2, %.lr.ph.i ]
  %.sroa.046.054.i = phi ptr [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx.i ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.021.i.i = phi ptr [ %i.bv, %bb.s ], [ %.055.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.017.020.i.i = phi ptr [ %.sroa.017.1.i.i, %bb.s ], [ %.sroa.046.054.i, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.015.019.i.i = phi ptr [ %.sroa.015.1.i.i, %bb.s ], [ %i.bo, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.bq = getelementptr i8, ptr %.sroa.015.019.i.i, i64 8
  %.val2.i.i.i23 = load i32, ptr %i.bq, align 8, !tbaa !1324
  %i.br = getelementptr i8, ptr %.sroa.017.020.i.i, i64 8
  %.val3.i.i.i24 = load i32, ptr %i.br, align 8, !tbaa !1324
  %i.bs = icmp ult i32 %.val2.i.i.i23, %.val3.i.i.i24
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i.i, i64 32, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i.i, i64 32
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i.i, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i.i, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.1.i.i = phi ptr [ %i.bt, %bb.q ], [ %.sroa.015.019.i.i, %bb.r ] ; 5 uses
  %.sroa.017.1.i.i = phi ptr [ %.sroa.017.020.i.i, %bb.q ], [ %i.bu, %bb.r ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 32 ; 4 uses
  %i.bw = icmp ne ptr %.sroa.017.1.i.i, %i.bo
  %i.bx = icmp ne ptr %.sroa.015.1.i.i, %i.bp
  %or.cond.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i22, label %.critedge.i.loopexit.i, !llvm.loop !14926

.critedge.i.loopexit.i:                           ; preds = %bb.s
  %i.by = ptrtoint ptr %i.bo to i64
  %i.bz = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, 32
  br i1 %i.cb, label %bb.t, label %bb.u, !prof !425

bb.t:                                             ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 8 %.sroa.017.1.i.i, i64 %i.ca, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.u:                                             ; preds = %.critedge.i.loopexit.i
  %i.cc = icmp eq i64 %i.ca, 32
  br i1 %i.cc, label %bb.v, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.cd = getelementptr inbounds i8, ptr %i.bv, i64 %i.ca ; 3 uses
  %i.ce = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp sgt i64 %i.cg, 32
  br i1 %i.ch, label %bb.w, label %bb.x, !prof !425

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr nonnull align 8 %.sroa.015.1.i.i, i64 %i.cg, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.x:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  %i.ci = icmp eq i64 %i.cg, 32
  br i1 %i.ci, label %bb.y, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.1.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg ; 2 uses
  %i.ck = sub i64 %i.a, %i.ce
  %i.cl = ashr exact i64 %i.ck, 5                 ; 2 uses
  %.not.i = icmp slt i64 %i.cl, %i.aw
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !14925

._crit_edge.i25:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us59, %.critedge.i.us.i.us, %bb.p
  %.sroa.046.0.lcssa.i = phi ptr [ %0, %bb.p ], [ %i.ay, %.critedge.i.us.i.us ], [ %i.be, %.critedge.i.us.i.us59 ], [ %7, %.critedge.i.us.i ], [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.p ], [ %5, %.critedge.i.us.i.us ], [ %6, %.critedge.i.us.i.us59 ], [ %i.bk, %.critedge.i.us.i ], [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ] ; 2 uses
  %.lcssa51.i = phi i64 [ %i.d, %bb.p ], [ %i.bc, %.critedge.i.us.i.us ], [ %i.bi, %.critedge.i.us.i.us59 ], [ %i.bn, %.critedge.i.us.i ], [ %i.cl, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 288230376151711743) %.070, i64 %.lcssa51.i) ; 2 uses
  %.idx49.i = shl nsw i64 %.sroa.speculated.i, 5
  %i.cm = getelementptr inbounds i8, ptr %.sroa.046.0.lcssa.i, i64 %.idx49.i ; 5 uses
  %i.cn = icmp ne i64 %.sroa.speculated.i, 0
  %i.co = icmp ne ptr %i.cm, %1
  %or.cond18.i24.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond18.i24.i, label %.lr.ph.i30.i, label %.critedge.i25.i

.lr.ph.i30.i:                                     ; preds = %._crit_edge.i25, %bb.ab
  %.021.i31.i = phi ptr [ %i.cu, %bb.ab ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 3 uses
  %.sroa.017.020.i32.i = phi ptr [ %.sroa.017.1.i37.i, %bb.ab ], [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ] ; 4 uses
  %.sroa.015.019.i33.i = phi ptr [ %.sroa.015.1.i36.i, %bb.ab ], [ %i.cm, %._crit_edge.i25 ] ; 4 uses
  %i.cp = getelementptr i8, ptr %.sroa.015.019.i33.i, i64 8
  %.val2.i.i34.i = load i32, ptr %i.cp, align 8, !tbaa !1324
  %i.cq = getelementptr i8, ptr %.sroa.017.020.i32.i, i64 8
  %.val3.i.i35.i = load i32, ptr %i.cq, align 8, !tbaa !1324
  %i.cr = icmp ult i32 %.val2.i.i34.i, %.val3.i.i35.i
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i33.i, i64 32, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i33.i, i64 32
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i32.i, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i32.i, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.015.1.i36.i = phi ptr [ %i.cs, %bb.z ], [ %.sroa.015.019.i33.i, %bb.aa ] ; 3 uses
  %.sroa.017.1.i37.i = phi ptr [ %.sroa.017.020.i32.i, %bb.z ], [ %i.ct, %bb.aa ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.021.i31.i, i64 32 ; 2 uses
  %i.cv = icmp ne ptr %.sroa.017.1.i37.i, %i.cm
  %i.cw = icmp ne ptr %.sroa.015.1.i36.i, %1
  %or.cond.i38.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.i38.i, label %.lr.ph.i30.i, label %.critedge.i25.i, !llvm.loop !14926

.critedge.i25.i:                                  ; preds = %bb.ab, %._crit_edge.i25
  %.sroa.015.0.lcssa.i26.i = phi ptr [ %i.cm, %._crit_edge.i25 ], [ %.sroa.015.1.i36.i, %bb.ab ] ; 3 uses
  %.sroa.017.0.lcssa.i27.i = phi ptr [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.017.1.i37.i, %bb.ab ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.cu, %bb.ab ] ; 3 uses
  %i.cx = ptrtoint ptr %i.cm to i64
  %i.cy = ptrtoint ptr %.sroa.017.0.lcssa.i27.i to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 32
  br i1 %i.da, label %bb.ac, label %bb.ad, !prof !425

bb.ac:                                            ; preds = %.critedge.i25.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i28.i, ptr align 8 %.sroa.017.0.lcssa.i27.i, i64 %i.cz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ad:                                            ; preds = %.critedge.i25.i
  %i.db = icmp eq i64 %i.cz, 32
  br i1 %i.db, label %bb.ae, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i28.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.0.lcssa.i27.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dc = getelementptr inbounds i8, ptr %.0.lcssa.i28.i, i64 %i.cz ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.015.0.lcssa.i26.i to i64
  %i.de = sub i64 %i.a, %i.dd                     ; 3 uses
  %i.df = icmp sgt i64 %i.de, 32
  br i1 %i.df, label %bb.af, label %bb.ag, !prof !425

bb.af:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dc, ptr align 8 %.sroa.015.0.lcssa.i26.i, i64 %i.de, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit

bb.ag:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  %i.dg = icmp eq i64 %i.de, 32
  br i1 %i.dg, label %bb.ah, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.0.lcssa.i26.i, i64 32, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dh = shl nsw i64 %.070, 2                    ; 5 uses
  %.not49.i = icmp slt i64 %i.d, %i.dh
  br i1 %.not49.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_9ELFDumperIS8_E21printSectionsAsSFrameENS4_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEEvSR_SR_SU_T1_T2_.exit
  %.idx.i27 = shl i64 %.070, 6                    ; 8 uses
  %.idx43.i = shl nsw i64 %.070, 7                ; 2 uses
  %.not44.i = icmp eq i64 %.idx.i27, %.idx43.i
  br i1 %.not44.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.di = icmp sgt i64 %.070, 0
  %i.dj = icmp sgt i64 %.idx.i27, 32
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.022.051.us.i = phi ptr [ %i.dm, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.050.us.i = phi ptr [ %i.dk, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.050.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.di, label %bb.ai, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, !prof !425

bb.ai:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.051.us.i, ptr align 8 %.050.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.ai
  %i.dl = getelementptr inbounds i8, ptr %.sroa.022.051.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.dj, label %bb.aj, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i, !prof !1092

bb.aj:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull align 8 %i.dk, i64 %.idx.i27, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.us.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, %bb.aj
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i27 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.av, %i.dn
  %i.dp = ashr exact i64 %i.do, 5                 ; 2 uses
  %.not.us.i36 = icmp slt i64 %i.dp, %i.dh
  br i1 %.not.us.i36, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !14927

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i
  %.sroa.022.051.i = phi ptr [ %i.em, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %0, %.lr.ph.i26 ]
  %.050.i = phi ptr [ %i.dr, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.050.i, i64 %.idx.i27 ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.050.i, i64 %.idx43.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.am, %.lr.ph.i.preheader.i28
  %.022.i.i = phi ptr [ %.1.i.i, %bb.am ], [ %.050.i, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.01621.i.i = phi ptr [ %.117.i.i, %bb.am ], [ %i.dq, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.sroa.0.020.i.i = phi ptr [ %i.dx, %bb.am ], [ %.sroa.022.051.i, %.lr.ph.i.preheader.i28 ] ; 3 uses
  %i.ds = getelementptr i8, ptr %.01621.i.i, i64 8
  %.016.val.i.i = load i32, ptr %i.ds, align 8, !tbaa !1324
  %i.dt = getelementptr i8, ptr %.022.i.i, i64 8
  %.0.val.i.i = load i32, ptr %i.dt, align 8, !tbaa !1324
  %i.du = icmp ult i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01621.i.i, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.022.i.i, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.117.i.i = phi ptr [ %i.dv, %bb.ak ], [ %.01621.i.i, %bb.al ] ; 5 uses
  %.1.i.i = phi ptr [ %.022.i.i, %bb.ak ], [ %i.dw, %bb.al ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 32 ; 4 uses
  %i.dy = icmp ne ptr %.1.i.i, %i.dq
  %i.dz = icmp ne ptr %.117.i.i, %i.dr
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !14928

._crit_edge.i.loopexit.i:                         ; preds = %bb.am
  %i.eb = ptrtoint ptr %i.dq to i64
  %i.ec = ptrtoint ptr %.1.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 4 uses
  %i.ee = icmp sgt i64 %i.ed, 32
  br i1 %i.ee, label %bb.an, label %bb.ao, !prof !425

bb.an:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %.1.i.i, i64 %i.ed, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ao:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.ef = icmp eq i64 %i.ed, 32
  br i1 %i.ef, label %bb.ap, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(32) %.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.eg = getelementptr inbounds i8, ptr %i.dx, i64 %i.ed ; 3 uses
  %i.eh = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.ei = ptrtoint ptr %.117.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %i.ek = icmp sgt i64 %i.ej, 32
  br i1 %i.ek, label %bb.aq, label %bb.ar, !prof !425

bb.aq:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr nonnull align 8 %.117.i.i, i64 %i.ej, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.ar:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %i.el = icmp eq i64 %i.ej, 32
  br i1 %i.el, label %bb.as, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(32) %.117.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_9ELFDumperIS6_E21printSectionsAsSFrameENS2_8ArrayRefINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEUlRKT_RKT0_E_EEESU_SR_SR_SR_SR_SU_T1_.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.em = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej ; 2 uses
end_hunk_2
begin_hunk_3_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_:bb.a
  %.sroa.5.i.i.i = alloca { i32, %"class.std::optional.413" }, align 8 ; 4 uses
  %4 = alloca %"class.(anonymous namespace)::Relocation.1590", align 8 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 5                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 192
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i
  %i.g = phi i64 [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ], [ %i.b, %bb.a ]
  %.sroa.035.036.i = phi ptr [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ], [ %0, %bb.a ] ; 7 uses
  %i.h = getelementptr i8, ptr %.sroa.035.036.i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.0.020.i.idx.i = phi i64 [ 32, %.lr.ph.i.i ], [ %.sroa.0.020.i.add.i, %bb.h ] ; 2 uses
  %.pn19.i.i = phi ptr [ %.sroa.035.036.i, %.lr.ph.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.h ] ; 5 uses
  %.sroa.0.020.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 %.sroa.0.020.i.idx.i ; 6 uses
  %i.i = getelementptr i8, ptr %.pn19.i.i, i64 40
  %.val2.i.i.i = load i32, ptr %i.i, align 8, !tbaa !1324 ; 4 uses
  %.val3.i.i.i = load i32, ptr %i.h, align 8, !tbaa !1324
  %i.j = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.ptr.i, i64 32, i1 false)
  %i.k = ptrtoint ptr %.sroa.0.020.i.ptr.i to i64
  %i.l = sub i64 %i.k, %i.g                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 5                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !425

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 64
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.p
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.036.i, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 32
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.036.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.036.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.t = load i64, ptr %.sroa.0.020.i.ptr.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i.i, i64 20, i1 false)
  %i.u = getelementptr i8, ptr %.pn19.i.i, i64 8
  %.val3.i9.i.i.i = load i32, ptr %i.u, align 8, !tbaa !1324
  %i.v = icmp ult i32 %.val2.i.i.i, %.val3.i9.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.sroa.08.010.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.020.i.ptr.i, %bb.g ] ; 3 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i.i, i64 32, i1 false)
  %i.w = getelementptr i8, ptr %.sroa.08.010.i.i.i, i64 -56
  %.val3.i.i.i.i = load i32, ptr %i.w, align 8, !tbaa !1324
  %i.x = icmp ult i32 %.val2.i.i.i, %.val3.i.i.i.i
  br i1 %i.x, label %.lr.ph.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i, !llvm.loop !167

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.g
  %.sroa.08.0.lcssa.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i, %bb.g ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  store i64 %i.t, ptr %.sroa.08.0.lcssa.i.i.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 8
  store i32 %.val2.i.i.i, ptr %.sroa.4.0..val.sroa_idx.i.i.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i.i
  %.sroa.0.020.i.add.i = add nuw nsw i64 %.sroa.0.020.i.idx.i, 32 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.020.i.add.i, 224
  br i1 %.not.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i, label %bb.b, !llvm.loop !168

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.035.036.i, i64 224 ; 3 uses
  %i.z = ptrtoint ptr %i.y to i64                 ; 3 uses
  %i.aa = sub i64 %i.a, %i.z
  %i.ab = icmp sgt i64 %i.aa, 192
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !16187

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i, %bb.a
  %.sroa.035.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.z, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_.exit.i ]
  %i.ac = icmp eq ptr %.sroa.035.0.lcssa.i, %1
  br i1 %i.ac, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit, label %.preheader.i13.i

.preheader.i13.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.017.i14.i = getelementptr inbounds nuw i8, ptr %.sroa.035.0.lcssa.i, i64 32 ; 2 uses
  %.not18.i15.i = icmp eq ptr %.sroa.0.017.i14.i, %1
  br i1 %.not18.i15.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %.preheader.i13.i
  %i.ad = getelementptr i8, ptr %.sroa.035.0.lcssa.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i16.i
  %.sroa.0.020.i17.i = phi ptr [ %.sroa.0.017.i14.i, %.lr.ph.i16.i ], [ %.sroa.0.0.i27.i, %bb.o ] ; 7 uses
  %.pn19.i18.i = phi ptr [ %.sroa.035.0.lcssa.i, %.lr.ph.i16.i ], [ %.sroa.0.020.i17.i, %bb.o ] ; 5 uses
  %i.ae = getelementptr i8, ptr %.pn19.i18.i, i64 40
  %.val2.i.i19.i = load i32, ptr %i.ae, align 8, !tbaa !1324 ; 4 uses
  %.val3.i.i20.i = load i32, ptr %i.ad, align 8, !tbaa !1324
  %i.af = icmp ult i32 %.val2.i.i19.i, %.val3.i.i20.i
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i17.i, i64 32, i1 false)
  %i.ag = ptrtoint ptr %.sroa.0.020.i17.i to i64
  %i.ah = sub i64 %i.ag, %.lcssa.i                ; 3 uses
  %i.ai = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.l, !prof !425

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 64
  %i.al = sub nsw i64 0, %i.ai
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.035.0.lcssa.i, i64 %i.ah, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.l:                                             ; preds = %bb.j
  %i.an = icmp eq i64 %i.ah, 32
  br i1 %i.an, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, i64 32, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.035.0.lcssa.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i)
  %i.ap = load i64, ptr %.sroa.0.020.i17.i, align 8
  %.sroa.5.0..val3.sroa_idx.i.i21.i = getelementptr inbounds nuw i8, ptr %.pn19.i18.i, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val3.sroa_idx.i.i21.i, i64 20, i1 false)
  %i.aq = getelementptr i8, ptr %.pn19.i18.i, i64 8
  %.val3.i9.i.i22.i = load i32, ptr %i.aq, align 8, !tbaa !1324
  %i.ar = icmp ult i32 %.val2.i.i19.i, %.val3.i9.i.i22.i
  br i1 %i.ar, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i

.lr.ph.i.i29.i:                                   ; preds = %bb.n, %.lr.ph.i.i29.i
  %.sroa.08.010.i.i30.i = phi ptr [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ], [ %.sroa.0.020.i17.i, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i31.i = getelementptr inbounds i8, ptr %.sroa.08.010.i.i30.i, i64 -32 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.08.010.i.i30.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i.i31.i, i64 32, i1 false)
  %i.as = getelementptr i8, ptr %.sroa.08.010.i.i30.i, i64 -56
  %.val3.i.i.i32.i = load i32, ptr %i.as, align 8, !tbaa !1324
  %i.at = icmp ult i32 %.val2.i.i19.i, %.val3.i.i.i32.i
  br i1 %i.at, label %.lr.ph.i.i29.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i, !llvm.loop !167

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i: ; preds = %.lr.ph.i.i29.i, %bb.n
  %.sroa.08.0.lcssa.i.i24.i = phi ptr [ %.sroa.0.020.i17.i, %bb.n ], [ %.sroa.0.0.i.i31.i, %.lr.ph.i.i29.i ] ; 3 uses
  store i64 %i.ap, ptr %.sroa.08.0.lcssa.i.i24.i, align 8
  %.sroa.4.0..val.sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 8
  store i32 %.val2.i.i19.i, ptr %.sroa.4.0..val.sroa_idx.i.i25.i, align 8
  %.sroa.5.0..val.sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i24.i, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..val.sroa_idx.i.i26.i, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.i.i12.i, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SM_.exit.i23.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i33.i
  %.sroa.0.0.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i17.i, i64 32 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %1
  br i1 %.not.i28.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit, label %bb.i, !llvm.loop !168

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit: ; preds = %bb.o, %._crit_edge.i, %.preheader.i13.i
  %i.au = icmp sgt i64 %i.d, 7
  br i1 %i.au, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_.exit
  %i.av = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit
  %.070 = phi i64 [ 7, %.lr.ph ], [ %i.dh, %_ZSt17__merge_sort_loopIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit ] ; 8 uses
  %i.aw = shl nsw i64 %.070, 1                    ; 6 uses
  %.not53.i = icmp slt i64 %i.d, %i.aw
  br i1 %.not53.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.p
  %.idx.i = shl i64 %.070, 5                      ; 12 uses
  %.idx47.i = shl i64 %.070, 6                    ; 2 uses
  %.not48.i = icmp eq i64 %.idx.i, %.idx47.i
  br i1 %.not48.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.ax = icmp sgt i64 %.idx.i, 32
  br i1 %i.ax, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !425

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.055.us.i.us = phi ptr [ %5, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.046.054.us.i.us = phi ptr [ %i.ay, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.055.us.i.us, ptr align 8 %.sroa.046.054.us.i.us, i64 %.idx.i, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.055.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.az, ptr nonnull align 8 %i.ay, i64 %.idx.i, i1 false)
  %5 = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx.i ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.a, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.bc, %i.aw
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !16188

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.bd = icmp eq i64 %.idx.i, 32
  br i1 %i.bd, label %.critedge.i.us.i.us59, label %.critedge.i.us.i

.critedge.i.us.i.us59:                            ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i.us59
  %.055.us.i.us60 = phi ptr [ %6, %.critedge.i.us.i.us59 ], [ %2, %.critedge.i.us.preheader.i.split ] ; 3 uses
  %.sroa.046.054.us.i.us61 = phi ptr [ %i.be, %.critedge.i.us.i.us59 ], [ %0, %.critedge.i.us.preheader.i.split ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.046.054.us.i.us61, i64 32 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.055.us.i.us60, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.046.054.us.i.us61, i64 32, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.be, i64 32, i1 false)
  %6 = getelementptr inbounds nuw i8, ptr %.055.us.i.us60, i64 64 ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.a, %i.bg
  %i.bi = ashr exact i64 %i.bh, 5                 ; 2 uses
  %.not.us.i.us63 = icmp slt i64 %i.bi, %i.aw
  br i1 %.not.us.i.us63, label %._crit_edge.i25, label %.critedge.i.us.i.us59, !llvm.loop !16188

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.055.us.i = phi ptr [ %i.bk, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.046.054.us.i = phi ptr [ %7, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %7 = getelementptr inbounds i8, ptr %.sroa.046.054.us.i, i64 %.idx.i ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %.idx.i ; 2 uses
  %i.bl = ptrtoint ptr %7 to i64
  %i.bm = sub i64 %i.a, %i.bl
  %i.bn = ashr exact i64 %i.bm, 5                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.bn, %i.aw
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !16188

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i
  %.055.i = phi ptr [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %2, %.lr.ph.i ]
  %.sroa.046.054.i = phi ptr [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx.i ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.046.054.i, i64 %.idx47.i ; 4 uses
  br label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %bb.s, %.lr.ph.i.preheader.i
  %.021.i.i = phi ptr [ %i.bv, %bb.s ], [ %.055.i, %.lr.ph.i.preheader.i ] ; 3 uses
  %.sroa.017.020.i.i = phi ptr [ %.sroa.017.1.i.i, %bb.s ], [ %.sroa.046.054.i, %.lr.ph.i.preheader.i ] ; 4 uses
  %.sroa.015.019.i.i = phi ptr [ %.sroa.015.1.i.i, %bb.s ], [ %i.bo, %.lr.ph.i.preheader.i ] ; 4 uses
  %i.bq = getelementptr i8, ptr %.sroa.015.019.i.i, i64 8
  %.val2.i.i.i23 = load i32, ptr %i.bq, align 8, !tbaa !1324
  %i.br = getelementptr i8, ptr %.sroa.017.020.i.i, i64 8
  %.val3.i.i.i24 = load i32, ptr %i.br, align 8, !tbaa !1324
  %i.bs = icmp ult i32 %.val2.i.i.i23, %.val3.i.i.i24
  br i1 %i.bs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i.i, i64 32, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i.i, i64 32
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i22
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i.i, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i.i, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.1.i.i = phi ptr [ %i.bt, %bb.q ], [ %.sroa.015.019.i.i, %bb.r ] ; 5 uses
  %.sroa.017.1.i.i = phi ptr [ %.sroa.017.020.i.i, %bb.q ], [ %i.bu, %bb.r ] ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 32 ; 4 uses
  %i.bw = icmp ne ptr %.sroa.017.1.i.i, %i.bo
  %i.bx = icmp ne ptr %.sroa.015.1.i.i, %i.bp
  %or.cond.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i22, label %.critedge.i.loopexit.i, !llvm.loop !16189

.critedge.i.loopexit.i:                           ; preds = %bb.s
  %i.by = ptrtoint ptr %i.bo to i64
  %i.bz = ptrtoint ptr %.sroa.017.1.i.i to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp sgt i64 %i.ca, 32
  br i1 %i.cb, label %bb.t, label %bb.u, !prof !425

bb.t:                                             ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bv, ptr nonnull align 8 %.sroa.017.1.i.i, i64 %i.ca, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.u:                                             ; preds = %.critedge.i.loopexit.i
  %i.cc = icmp eq i64 %i.ca, 32
  br i1 %i.cc, label %bb.v, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t
  %i.cd = getelementptr inbounds i8, ptr %i.bv, i64 %i.ca ; 3 uses
  %i.ce = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.cf = ptrtoint ptr %.sroa.015.1.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 4 uses
  %i.ch = icmp sgt i64 %i.cg, 32
  br i1 %i.ch, label %bb.w, label %bb.x, !prof !425

bb.w:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cd, ptr nonnull align 8 %.sroa.015.1.i.i, i64 %i.cg, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.x:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i.i
  %i.ci = icmp eq i64 %i.cg, 32
  br i1 %i.ci, label %bb.y, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.1.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg ; 2 uses
  %i.ck = sub i64 %i.a, %i.ce
  %i.cl = ashr exact i64 %i.ck, 5                 ; 2 uses
  %.not.i = icmp slt i64 %i.cl, %i.aw
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !16188

._crit_edge.i25:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us59, %.critedge.i.us.i.us, %bb.p
  %.sroa.046.0.lcssa.i = phi ptr [ %0, %bb.p ], [ %i.ay, %.critedge.i.us.i.us ], [ %i.be, %.critedge.i.us.i.us59 ], [ %7, %.critedge.i.us.i ], [ %i.bp, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.p ], [ %5, %.critedge.i.us.i.us ], [ %6, %.critedge.i.us.i.us59 ], [ %i.bk, %.critedge.i.us.i ], [ %i.cj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ] ; 2 uses
  %.lcssa51.i = phi i64 [ %i.d, %bb.p ], [ %i.bc, %.critedge.i.us.i.us ], [ %i.bi, %.critedge.i.us.i.us59 ], [ %i.bn, %.critedge.i.us.i ], [ %i.cl, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 range(i64 -9223372036854775808, 288230376151711743) %.070, i64 %.lcssa51.i) ; 2 uses
  %.idx49.i = shl nsw i64 %.sroa.speculated.i, 5
  %i.cm = getelementptr inbounds i8, ptr %.sroa.046.0.lcssa.i, i64 %.idx49.i ; 5 uses
  %i.cn = icmp ne i64 %.sroa.speculated.i, 0
  %i.co = icmp ne ptr %i.cm, %1
  %or.cond18.i24.i = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond18.i24.i, label %.lr.ph.i30.i, label %.critedge.i25.i

.lr.ph.i30.i:                                     ; preds = %._crit_edge.i25, %bb.ab
  %.021.i31.i = phi ptr [ %i.cu, %bb.ab ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 3 uses
  %.sroa.017.020.i32.i = phi ptr [ %.sroa.017.1.i37.i, %bb.ab ], [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ] ; 4 uses
  %.sroa.015.019.i33.i = phi ptr [ %.sroa.015.1.i36.i, %bb.ab ], [ %i.cm, %._crit_edge.i25 ] ; 4 uses
  %i.cp = getelementptr i8, ptr %.sroa.015.019.i33.i, i64 8
  %.val2.i.i34.i = load i32, ptr %i.cp, align 8, !tbaa !1324
  %i.cq = getelementptr i8, ptr %.sroa.017.020.i32.i, i64 8
  %.val3.i.i35.i = load i32, ptr %i.cq, align 8, !tbaa !1324
  %i.cr = icmp ult i32 %.val2.i.i34.i, %.val3.i.i35.i
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.015.019.i33.i, i64 32, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.015.019.i33.i, i64 32
  br label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i30.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.021.i31.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.017.020.i32.i, i64 32, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i32.i, i64 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.015.1.i36.i = phi ptr [ %i.cs, %bb.z ], [ %.sroa.015.019.i33.i, %bb.aa ] ; 3 uses
  %.sroa.017.1.i37.i = phi ptr [ %.sroa.017.020.i32.i, %bb.z ], [ %i.ct, %bb.aa ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.021.i31.i, i64 32 ; 2 uses
  %i.cv = icmp ne ptr %.sroa.017.1.i37.i, %i.cm
  %i.cw = icmp ne ptr %.sroa.015.1.i36.i, %1
  %or.cond.i38.i = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond.i38.i, label %.lr.ph.i30.i, label %.critedge.i25.i, !llvm.loop !16189

.critedge.i25.i:                                  ; preds = %bb.ab, %._crit_edge.i25
  %.sroa.015.0.lcssa.i26.i = phi ptr [ %i.cm, %._crit_edge.i25 ], [ %.sroa.015.1.i36.i, %bb.ab ] ; 3 uses
  %.sroa.017.0.lcssa.i27.i = phi ptr [ %.sroa.046.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.017.1.i37.i, %bb.ab ] ; 3 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.cu, %bb.ab ] ; 3 uses
  %i.cx = ptrtoint ptr %i.cm to i64
  %i.cy = ptrtoint ptr %.sroa.017.0.lcssa.i27.i to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 4 uses
  %i.da = icmp sgt i64 %i.cz, 32
  br i1 %i.da, label %bb.ac, label %bb.ad, !prof !425

bb.ac:                                            ; preds = %.critedge.i25.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i28.i, ptr align 8 %.sroa.017.0.lcssa.i27.i, i64 %i.cz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ad:                                            ; preds = %.critedge.i25.i
  %i.db = icmp eq i64 %i.cz, 32
  br i1 %i.db, label %bb.ae, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.lcssa.i28.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.017.0.lcssa.i27.i, i64 32, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.dc = getelementptr inbounds i8, ptr %.0.lcssa.i28.i, i64 %i.cz ; 2 uses
  %i.dd = ptrtoint ptr %.sroa.015.0.lcssa.i26.i to i64
  %i.de = sub i64 %i.a, %i.dd                     ; 3 uses
  %i.df = icmp sgt i64 %i.de, 32
  br i1 %i.df, label %bb.af, label %bb.ag, !prof !425

bb.af:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.dc, ptr align 8 %.sroa.015.0.lcssa.i26.i, i64 %i.de, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit

bb.ag:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_ET0_T_SG_SF_.exit.i29.i
  %i.dg = icmp eq i64 %i.de, 32
  br i1 %i.dg, label %bb.ah, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit

bb.ah:                                            ; preds = %bb.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.015.0.lcssa.i26.i, i64 32, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.dh = shl nsw i64 %.070, 2                    ; 5 uses
  %.not49.i = icmp slt i64 %i.d, %i.dh
  br i1 %.not49.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS4_10endiannessE0ELb0EEEEESt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNS2_13LLVMELFDumperIS8_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEEvSJ_SJ_SM_T1_T2_.exit
  %.idx.i27 = shl i64 %.070, 6                    ; 8 uses
  %.idx43.i = shl nsw i64 %.070, 7                ; 2 uses
  %.not44.i = icmp eq i64 %.idx.i27, %.idx43.i
  br i1 %.not44.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.di = icmp sgt i64 %.070, 0
  %i.dj = icmp sgt i64 %.idx.i27, 32
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.022.051.us.i = phi ptr [ %i.dm, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.050.us.i = phi ptr [ %i.dk, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.050.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.di, label %bb.ai, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, !prof !425

bb.ai:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.051.us.i, ptr align 8 %.050.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.ai
  %i.dl = getelementptr inbounds i8, ptr %.sroa.022.051.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.dj, label %bb.aj, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i, !prof !1092

bb.aj:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dl, ptr nonnull align 8 %i.dk, i64 %.idx.i27, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.us.i: ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.us.i, %bb.aj
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i27 ; 2 uses
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.av, %i.dn
  %i.dp = ashr exact i64 %i.do, 5                 ; 2 uses
  %.not.us.i36 = icmp slt i64 %i.dp, %i.dh
  br i1 %.not.us.i36, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !16190

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i
  %.sroa.022.051.i = phi ptr [ %i.em, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %0, %.lr.ph.i26 ]
  %.050.i = phi ptr [ %i.dr, %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %.050.i, i64 %.idx.i27 ; 3 uses
  %i.dr = getelementptr inbounds i8, ptr %.050.i, i64 %.idx43.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %bb.am, %.lr.ph.i.preheader.i28
  %.022.i.i = phi ptr [ %.1.i.i, %bb.am ], [ %.050.i, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.01621.i.i = phi ptr [ %.117.i.i, %bb.am ], [ %i.dq, %.lr.ph.i.preheader.i28 ] ; 4 uses
  %.sroa.0.020.i.i = phi ptr [ %i.dx, %bb.am ], [ %.sroa.022.051.i, %.lr.ph.i.preheader.i28 ] ; 3 uses
  %i.ds = getelementptr i8, ptr %.01621.i.i, i64 8
  %.016.val.i.i = load i32, ptr %i.ds, align 8, !tbaa !1324
  %i.dt = getelementptr i8, ptr %.022.i.i, i64 8
  %.0.val.i.i = load i32, ptr %i.dt, align 8, !tbaa !1324
  %i.du = icmp ult i32 %.016.val.i.i, %.0.val.i.i
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.01621.i.i, i64 32, i1 false)
  %i.dv = getelementptr inbounds nuw i8, ptr %.01621.i.i, i64 32
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph.i.i29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.020.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.022.i.i, i64 32, i1 false)
  %i.dw = getelementptr inbounds nuw i8, ptr %.022.i.i, i64 32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.117.i.i = phi ptr [ %i.dv, %bb.ak ], [ %.01621.i.i, %bb.al ] ; 5 uses
  %.1.i.i = phi ptr [ %.022.i.i, %bb.ak ], [ %i.dw, %bb.al ] ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i.i, i64 32 ; 4 uses
  %i.dy = icmp ne ptr %.1.i.i, %i.dq
  %i.dz = icmp ne ptr %.117.i.i, %i.dr
  %i.ea = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %i.ea, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !16191

._crit_edge.i.loopexit.i:                         ; preds = %bb.am
  %i.eb = ptrtoint ptr %i.dq to i64
  %i.ec = ptrtoint ptr %.1.i.i to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 4 uses
  %i.ee = icmp sgt i64 %i.ed, 32
  br i1 %i.ee, label %bb.an, label %bb.ao, !prof !425

bb.an:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dx, ptr nonnull align 8 %.1.i.i, i64 %i.ed, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ao:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.ef = icmp eq i64 %i.ed, 32
  br i1 %i.ef, label %bb.ap, label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(32) %.1.i.i, i64 32, i1 false)
  br label %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i

_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.eg = getelementptr inbounds i8, ptr %i.dx, i64 %i.ed ; 3 uses
  %i.eh = ptrtoint ptr %i.dr to i64               ; 2 uses
  %i.ei = ptrtoint ptr %.117.i.i to i64
  %i.ej = sub i64 %i.eh, %i.ei                    ; 4 uses
  %i.ek = icmp sgt i64 %i.ej, 32
  br i1 %i.ek, label %bb.aq, label %bb.ar, !prof !425

bb.aq:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eg, ptr nonnull align 8 %.117.i.i, i64 %i.ej, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.ar:                                            ; preds = %_ZSt4moveIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEEET0_T_SG_SF_.exit.i.i
  %i.el = icmp eq i64 %i.ej, 32
  br i1 %i.el, label %bb.as, label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

bb.as:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull readonly align 8 dereferenceable(32) %.117.i.i, i64 32, i1 false)
  br label %_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i

_ZSt12__move_mergeIPN12_GLOBAL__N_110RelocationIN4llvm6object7ELFTypeILNS2_10endiannessE0ELb0EEEEEN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEENS9_5__ops15_Iter_comp_iterIZNS0_13LLVMELFDumperIS6_E18printCallGraphInfoEvEUlRKT_RKT0_E_EEESM_SJ_SJ_SJ_SJ_SM_T1_.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.em = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej ; 2 uses
end_hunk_3
