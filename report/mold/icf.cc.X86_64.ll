Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/icf.cc.X86_64?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1791
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZSt4sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EvSG_SG_T0_:bb.a
  store i64 %i.x, ptr %i.y, align 8, !tbaa !242, !alias.scope !1014
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.z, align 8, !tbaa !243, !alias.scope !1014
  call fastcc void @_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.aa = icmp ne i64 %i.x, %i.h
  %.not3.i6.i.i.i = or i1 %.fr.i.i, %i.aa
  br i1 %.not3.i6.i.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i, label %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  br i1 %.fr.i.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 8 uses
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i: ; preds = %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i
  %.sroa.5.08.i.us.i.i = phi i64 [ %i.dd, %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i ], [ %i.x, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.preheader.i ] ; 7 uses
  %i.ae = or i64 %.sroa.5.08.i.us.i.i, 1
  %i.af = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ae, i1 true)
  %i.ag = xor i64 %i.af, 63                       ; 3 uses
  %i.ah = load atomic ptr, ptr %i.ad acquire, align 8
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ag
  %i.aj = load atomic ptr, ptr %i.ai acquire, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.sroa.5.08.i.us.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !130 ; 4 uses
  %i.am = add i64 %.sroa.5.08.i.us.i.i, -1        ; 4 uses
  %i.an = getelementptr i8, ptr %i.al, i64 48     ; 2 uses
  %i.ao = or i64 %i.am, 1
  %i.ap = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ao, i1 true)
  %i.aq = xor i64 %i.ap, 63                       ; 2 uses
  %i.ar = load atomic ptr, ptr %i.ad acquire, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load atomic ptr, ptr %i.as acquire, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.am
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !130 ; 2 uses
  %.val.i.i.peel.i = load ptr, ptr %i.al, align 8, !tbaa !249
  %.val2.i.i.peel.i = load i32, ptr %i.an, align 8, !tbaa !250
  %.val3.i.i.peel.i = load ptr, ptr %i.av, align 8, !tbaa !249
  %i.aw = getelementptr i8, ptr %i.av, i64 48
  %.val4.i.i.peel.i = load i32, ptr %i.aw, align 8, !tbaa !250
  %i.ax = getelementptr i8, ptr %.val.i.i.peel.i, i64 128
  %.val.val.i.i.peel.i = load i64, ptr %i.ax, align 8, !tbaa !275
  %i.ay = getelementptr i8, ptr %.val3.i.i.peel.i, i64 128
  %.val3.val.i.i.peel.i = load i64, ptr %i.ay, align 8, !tbaa !275
  %i.az = shl i64 %.val.val.i.i.peel.i, 32
  %i.ba = sext i32 %.val2.i.i.peel.i to i64
  %i.bb = or i64 %i.az, %i.ba
  %i.bc = shl i64 %.val3.val.i.i.peel.i, 32
  %i.bd = sext i32 %.val4.i.i.peel.i to i64
  %i.be = or i64 %i.bc, %i.bd
  %i.bf = icmp slt i64 %i.bb, %i.be
  br i1 %i.bf, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i, label %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i
  %i.bg = load atomic ptr, ptr %i.ad acquire, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.aq
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.am
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !130
  %i.bl = load atomic ptr, ptr %i.ad acquire, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ag
  %i.bn = load atomic ptr, ptr %i.bm acquire, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.5.08.i.us.i.i
  store ptr %i.bk, ptr %i.bo, align 8, !tbaa !130
  %i.bp = add i64 %.sroa.5.08.i.us.i.i, -2
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i
  %.sroa.6.0.i14.i = phi i64 [ %.sroa.6.0.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i ], [ %i.am, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i ] ; 4 uses
  %.sroa.6.0.i.i = phi i64 [ %i.cx, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i ], [ %i.bp, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2.i.peel.i ] ; 6 uses
  %i.bq = or i64 %.sroa.6.0.i.i, 1
  %i.br = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = xor i64 %i.br, 63
  %i.bt = load atomic ptr, ptr %i.ad acquire, align 8
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load atomic ptr, ptr %i.bu acquire, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.sroa.6.0.i.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !130 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !tbaa !249
  %.val2.i.i.i = load i32, ptr %i.an, align 8, !tbaa !250
  %.val3.i.i.i = load ptr, ptr %i.bx, align 8, !tbaa !249
  %i.by = getelementptr i8, ptr %i.bx, i64 48
  %.val4.i.i.i = load i32, ptr %i.by, align 8, !tbaa !250
  %i.bz = getelementptr i8, ptr %.val.i.i.i, i64 128
  %.val.val.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !275
  %i.ca = getelementptr i8, ptr %.val3.i.i.i, i64 128
  %.val3.val.i.i.i = load i64, ptr %i.ca, align 8, !tbaa !275
  %i.cb = shl i64 %.val.val.i.i.i, 32
  %i.cc = sext i32 %.val2.i.i.i to i64
  %i.cd = or i64 %i.cb, %i.cc
  %i.ce = shl i64 %.val3.val.i.i.i, 32
  %i.cf = sext i32 %.val4.i.i.i to i64
  %i.cg = or i64 %i.ce, %i.cf
  %i.ch = icmp slt i64 %i.cd, %i.cg
  br i1 %i.ch, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i, label %.loopexit.i..loopexit.i.thread_crit_edge

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit4.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i
  %i.ci = or i64 %.sroa.6.0.i.i, 1
  %i.cj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = xor i64 %i.cj, 63
  %i.cl = load atomic ptr, ptr %i.ad acquire, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ck
  %i.cn = load atomic ptr, ptr %i.cm acquire, align 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.6.0.i.i
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !130
  %i.cq = or i64 %.sroa.6.0.i14.i, 1
  %i.cr = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = xor i64 %i.cr, 63
  %i.ct = load atomic ptr, ptr %i.ad acquire, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cs
  %i.cv = load atomic ptr, ptr %i.cu acquire, align 8
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.sroa.6.0.i14.i
  store ptr %i.cp, ptr %i.cw, align 8, !tbaa !130
  %i.cx = add i64 %.sroa.6.0.i.i, -1
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i, !llvm.loop !1012

.loopexit.i..loopexit.i.thread_crit_edge:         ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclISB_N3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EEEEbRS6_T0_.exit.i.i
  %.pre = or i64 %.sroa.6.0.i14.i, 1
  %.pre11 = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.pre, i1 true)
  %.pre13 = xor i64 %.pre11, 63
  br label %_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i

_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_.exit.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i, %.loopexit.i..loopexit.i.thread_crit_edge
  %.pre-phi14 = phi i64 [ %.pre13, %.loopexit.i..loopexit.i.thread_crit_edge ], [ %i.ag, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i ]
  %i.cy = phi i64 [ %.sroa.6.0.i14.i, %.loopexit.i..loopexit.i.thread_crit_edge ], [ %.sroa.5.08.i.us.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i ]
  %i.cz = load atomic ptr, ptr %i.ad acquire, align 8
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.pre-phi14
  %i.db = load atomic ptr, ptr %i.da acquire, align 8
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cy
  store ptr %i.al, ptr %i.dc, align 8, !tbaa !130
  %i.dd = add i64 %.sroa.5.08.i.us.i.i, 1
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i
  %.sroa.5.08.i.i.i = phi i64 [ %i.de, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i ], [ %i.x, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.lr.ph.i.i.i ] ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !241
  store i64 %.sroa.5.08.i.i.i, ptr %i.ab, align 8, !tbaa !242
  store ptr null, ptr %i.ac, align 8, !tbaa !243
  call fastcc void @_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %2)
  %i.de = add i64 %.sroa.5.08.i.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq i64 %i.de, %i.h
  br i1 %.not.i.i, label %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i, !llvm.loop !1013

_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i

bb.d:                                             ; preds = %bb.b
  store ptr %i.a, ptr %5, align 8, !tbaa !241
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.c, ptr %i.df, align 8, !tbaa !242
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.e, ptr %i.dg, align 8, !tbaa !243
  store ptr %i.f, ptr %6, align 8, !tbaa !241
  %i.dh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %i.dh, align 8, !tbaa !242
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.j, ptr %i.di, align 8, !tbaa !243
  call fastcc void @_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %5, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %6)
  br label %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i

_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i: ; preds = %bb.d, %_ZSt26__unguarded_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit

_ZSt6__sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit: ; preds = %bb.a, %_ZSt22__final_insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZSt16__introsort_loopIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_T1_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 12 uses
  %4 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 6 uses
  %5 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 4 uses
  %6 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !242  ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !242  ; 3 uses
  %i.e = sub nsw i64 %i.c, %i.d                   ; 3 uses
  %i.f = icmp sgt i64 %i.e, 16
  br i1 %i.f, label %.lr.ph, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %._crit_edge, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.lr.ph
  store ptr null, ptr %i.j, align 8, !tbaa !243
  br label %.lr.ph95

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEESJ_SJ_SJ_T0_.exit
  %i.n = icmp eq i64 %i.cx, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph95, !llvm.loop !1016

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa92 = phi i64 [ %i.e, %.lr.ph ], [ %i.ma, %bb.b ] ; 2 uses
  %.lcssa90 = phi i64 [ %i.d, %.lr.ph ], [ %i.lz, %bb.b ] ; 9 uses
  %.lcssa88 = phi i64 [ %i.c, %.lr.ph ], [ %.us-phi, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !243  ; 5 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !241
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.s = add nsw i64 %.lcssa92, -2
  %i.t = lshr i64 %i.s, 1
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  store ptr %i.o, ptr %4, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.u, align 8, !tbaa !242
  store ptr %i.p, ptr %i.v, align 8, !tbaa !243
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.t, %._crit_edge ], [ %i.ag, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i ] ; 4 uses
  %i.x = add i64 %.08.i.i.i, %.lcssa90            ; 2 uses
  %i.y = or i64 %i.x, 1
  %i.z = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = load atomic ptr, ptr %i.w acquire, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.x
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !130
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %4, i64 noundef %.08.i.i.i, i64 noundef %.lcssa92, ptr noundef %i.af)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.ag = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i, !llvm.loop !1017

_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.p, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.al = or i64 %.lcssa90, 1
  %i.am = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.al, i1 true)
  %i.an = xor i64 %i.am, 63                       ; 2 uses
  br i1 %i.aj, label %.lr.ph.i1.split.us.i, label %.lr.ph.i1.split.i

.lr.ph.i1.split.us.i:                             ; preds = %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i
  %.sroa.7.0.us.i = phi ptr [ %.sroa.7.1.us40.i, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i ], [ %i.r, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.ao = phi i64 [ %i.ap, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i ], [ %.lcssa88, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.ap = add i64 %i.ao, -1                       ; 6 uses
  %.not.i.i2.us.i = icmp eq ptr %.sroa.7.0.us.i, null
  br i1 %.not.i.i2.us.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i: ; preds = %.lr.ph.i1.split.us.i
  %i.aq = add i64 %i.ao, -3
  %i.ar = and i64 %i.aq, %i.ap
  %i.as = icmp eq i64 %i.ar, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.as, label %bb.c, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i: ; preds = %.lr.ph.i1.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.c

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i
  %i.at = getelementptr inbounds i8, ptr %.sroa.7.0.us.i, i64 -8 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !130
  %i.av = load atomic ptr, ptr %i.w acquire, align 8
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.an
  %i.ax = load atomic ptr, ptr %i.aw acquire, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.lcssa90
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !130
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i

bb.c:                                             ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.us.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.us.i
  %i.ba = or i64 %i.ap, 1
  %i.bb = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63                       ; 2 uses
  %i.bd = load atomic ptr, ptr %i.ak acquire, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.ap
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !130
  %i.bi = load atomic ptr, ptr %i.w acquire, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.an
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.lcssa90
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !130
  %i.bn = load atomic ptr, ptr %i.ak acquire, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bc
  %i.bp = load atomic ptr, ptr %i.bo acquire, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.ap
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i

_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i: ; preds = %bb.c, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i
  %i.br = phi ptr [ %i.bm, %bb.c ], [ %i.az, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %i.bs = phi ptr [ %i.bh, %bb.c ], [ %i.au, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %.sroa.7.1.us40.i = phi ptr [ null, %bb.c ], [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  %.0.i4.i.i8.us.i = phi ptr [ %i.bq, %bb.c ], [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.us.i ]
  store ptr %i.br, ptr %.0.i4.i.i8.us.i, align 8, !tbaa !130
  store ptr %i.o, ptr %3, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.ah, align 8, !tbaa !242
  store ptr null, ptr %i.ai, align 8, !tbaa !243
  %i.bt = sub nsw i64 %i.ap, %.lcssa90            ; 2 uses
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.bt, ptr noundef %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %.lr.ph.i1.split.us.i, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit, !llvm.loop !1018

.lr.ph.i1.split.i:                                ; preds = %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i
  %.sroa.7.0.i = phi ptr [ %.sroa.7.144.i, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i ], [ %i.r, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.bv = phi i64 [ %i.bw, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i ], [ %.lcssa88, %_ZSt13__heap_selectIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit.i.thread ] ; 2 uses
  %i.bw = add i64 %i.bv, -1                       ; 6 uses
  %.not.i.i2.i = icmp eq ptr %.sroa.7.0.i, null
  br i1 %.not.i.i2.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i: ; preds = %.lr.ph.i1.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br label %bb.d

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i: ; preds = %.lr.ph.i1.split.i
  %i.bx = add i64 %i.bv, -3
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = icmp eq i64 %i.by, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  br i1 %i.bz, label %bb.d, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i: ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i
  %i.ca = getelementptr inbounds i8, ptr %.sroa.7.0.i, i64 -8 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !130
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !130
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i

bb.d:                                             ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.thread.i.i
  %i.cd = or i64 %i.bw, 1
  %i.ce = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = xor i64 %i.ce, 63                       ; 2 uses
  %i.cg = load atomic ptr, ptr %i.ak acquire, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load atomic ptr, ptr %i.ch acquire, align 8
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.bw
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !130
  %i.cl = load ptr, ptr %i.p, align 8, !tbaa !130
  %i.cm = load atomic ptr, ptr %i.ak acquire, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cf
  %i.co = load atomic ptr, ptr %i.cn acquire, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.bw
  br label %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i

_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i: ; preds = %bb.d, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i
  %i.cq = phi ptr [ %i.cl, %bb.d ], [ %i.cc, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  %i.cr = phi ptr [ %i.ck, %bb.d ], [ %i.cb, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  %.sroa.7.144.i = phi ptr [ null, %bb.d ], [ %i.ca, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  %.0.i4.i.i8.i = phi ptr [ %i.cp, %bb.d ], [ %i.ca, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i3.i ]
  store ptr %i.cq, ptr %.0.i4.i.i8.i, align 8, !tbaa !130
  store ptr %i.o, ptr %3, align 8, !tbaa !241
  store i64 %.lcssa90, ptr %i.ah, align 8, !tbaa !242
  store ptr %i.p, ptr %i.ai, align 8, !tbaa !243
  %i.cs = sub nsw i64 %i.bw, %.lcssa90            ; 2 uses
  call fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %3, i64 noundef 0, i64 noundef %i.cs, ptr noundef %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ct = icmp sgt i64 %i.cs, 1
  br i1 %i.ct, label %.lr.ph.i1.split.i, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit, !llvm.loop !1018

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.b
  %.05494 = phi i64 [ %i.cx, %bb.b ], [ %2, %.lr.ph95.preheader ]
  %i.cu = phi i64 [ %.us-phi, %bb.b ], [ %i.c, %.lr.ph95.preheader ] ; 2 uses
  %i.cv = phi i64 [ %i.lz, %bb.b ], [ %i.d, %.lr.ph95.preheader ] ; 8 uses
  %i.cw = phi i64 [ %i.ma, %bb.b ], [ %i.e, %.lr.ph95.preheader ]
  %i.cx = add nsw i64 %.05494, -1                 ; 3 uses
  %i.cy = load ptr, ptr %0, align 8, !tbaa !241   ; 9 uses
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !243 ; 11 uses
  %i.da = load ptr, ptr %1, align 8, !tbaa !241   ; 3 uses
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !243
  %i.dc = lshr i64 %i.cw, 1
  %i.dd = add i64 %i.dc, %i.cv                    ; 7 uses
  %i.de = add i64 %i.cv, 1                        ; 7 uses
  %i.df = add i64 %i.cu, -1                       ; 7 uses
  %i.dg = or i64 %i.de, 1
  %i.dh = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dg, i1 true)
  %i.di = xor i64 %i.dh, 63                       ; 6 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 11 uses
  %i.dk = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1026
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  %i.dm = load atomic ptr, ptr %i.dl acquire, align 8, !noalias !1026
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.de
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %i.dp = or i64 %i.dd, 1
  %i.dq = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dp, i1 true)
  %i.dr = xor i64 %i.dq, 63                       ; 6 uses
  %i.ds = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1026
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load atomic ptr, ptr %i.dt acquire, align 8, !noalias !1026
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dd
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %.val.i.i.i9 = load ptr, ptr %i.do, align 8, !tbaa !249, !noalias !1026
  %i.dx = getelementptr i8, ptr %i.do, i64 48
  %.val1.i.i.i10 = load i32, ptr %i.dx, align 8, !tbaa !250, !noalias !1026
  %.val2.i.i.i11 = load ptr, ptr %i.dw, align 8, !tbaa !249, !noalias !1026
  %i.dy = getelementptr i8, ptr %i.dw, i64 48
  %.val3.i.i.i12 = load i32, ptr %i.dy, align 8, !tbaa !250, !noalias !1026
  %i.dz = getelementptr i8, ptr %.val.i.i.i9, i64 128
  %.val.val.i.i.i13 = load i64, ptr %i.dz, align 8, !tbaa !275, !noalias !1026
  %i.ea = getelementptr i8, ptr %.val2.i.i.i11, i64 128
  %.val2.val.i.i.i14 = load i64, ptr %i.ea, align 8, !tbaa !275, !noalias !1026
  %i.eb = shl i64 %.val.val.i.i.i13, 32
  %i.ec = sext i32 %.val1.i.i.i10 to i64
  %i.ed = or i64 %i.eb, %i.ec
  %i.ee = shl i64 %.val2.val.i.i.i14, 32
  %i.ef = sext i32 %.val3.i.i.i12 to i64
  %i.eg = or i64 %i.ee, %i.ef
  %i.eh = icmp slt i64 %i.ed, %i.eg
  %i.ei = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1026 ; 2 uses
  %i.ej = or i64 %i.df, 1
  %i.ek = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ej, i1 true)
  %i.el = xor i64 %i.ek, 63                       ; 6 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 6 uses
  br i1 %i.eh, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i: ; preds = %.lr.ph95
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.dr
  %i.eo = load atomic ptr, ptr %i.en acquire, align 8, !noalias !1026
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.dd
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %i.er = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1026
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.el
  %i.et = load atomic ptr, ptr %i.es acquire, align 8, !noalias !1026
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.df
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %.val.i4.i.i = load ptr, ptr %i.eq, align 8, !tbaa !249, !noalias !1026
  %i.ew = getelementptr i8, ptr %i.eq, i64 48
  %.val1.i5.i.i = load i32, ptr %i.ew, align 8, !tbaa !250, !noalias !1026
  %.val2.i6.i.i = load ptr, ptr %i.ev, align 8, !tbaa !249, !noalias !1026
  %i.ex = getelementptr i8, ptr %i.ev, i64 48
  %.val3.i7.i.i = load i32, ptr %i.ex, align 8, !tbaa !250, !noalias !1026
  %i.ey = getelementptr i8, ptr %.val.i4.i.i, i64 128
  %.val.val.i8.i.i = load i64, ptr %i.ey, align 8, !tbaa !275, !noalias !1026
  %i.ez = getelementptr i8, ptr %.val2.i6.i.i, i64 128
  %.val2.val.i9.i.i = load i64, ptr %i.ez, align 8, !tbaa !275, !noalias !1026
  %i.fa = shl i64 %.val.val.i8.i.i, 32
  %i.fb = sext i32 %.val1.i5.i.i to i64
  %i.fc = or i64 %i.fa, %i.fb
  %i.fd = shl i64 %.val2.val.i9.i.i, 32
  %i.fe = sext i32 %.val3.i7.i.i to i64
  %i.ff = or i64 %i.fd, %i.fe
  %i.fg = icmp slt i64 %i.fc, %i.ff
  br i1 %i.fg, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i
  %i.fh = icmp eq ptr %i.cz, null
  br i1 %i.fh, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit10.i.i
  %i.fi = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1026
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.di
  %i.fk = load atomic ptr, ptr %i.fj acquire, align 8, !noalias !1026
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.de
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %i.fn = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1026
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.el
  %i.fp = load atomic ptr, ptr %i.fo acquire, align 8, !noalias !1026
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.df
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %.val.i16.i.i = load ptr, ptr %i.fm, align 8, !tbaa !249, !noalias !1026
  %i.fs = getelementptr i8, ptr %i.fm, i64 48
  %.val1.i17.i.i = load i32, ptr %i.fs, align 8, !tbaa !250, !noalias !1026
  %.val2.i18.i.i = load ptr, ptr %i.fr, align 8, !tbaa !249, !noalias !1026
  %i.ft = getelementptr i8, ptr %i.fr, i64 48
  %.val3.i19.i.i = load i32, ptr %i.ft, align 8, !tbaa !250, !noalias !1026
  %i.fu = getelementptr i8, ptr %.val.i16.i.i, i64 128
  %.val.val.i20.i.i = load i64, ptr %i.fu, align 8, !tbaa !275, !noalias !1026
  %i.fv = getelementptr i8, ptr %.val2.i18.i.i, i64 128
  %.val2.val.i21.i.i = load i64, ptr %i.fv, align 8, !tbaa !275, !noalias !1026
  %i.fw = shl i64 %.val.val.i20.i.i, 32
  %i.fx = sext i32 %.val1.i17.i.i to i64
  %i.fy = or i64 %i.fw, %i.fx
  %i.fz = shl i64 %.val2.val.i21.i.i, 32
  %i.ga = sext i32 %.val3.i19.i.i to i64
  %i.gb = or i64 %i.fz, %i.ga
  %i.gc = icmp slt i64 %i.fy, %i.gb               ; 3 uses
  %i.gd = icmp eq ptr %i.cz, null
  %..i = select i1 %i.gc, i64 %i.el, i64 %i.di    ; 2 uses
  %.106.i = select i1 %i.gc, i64 %i.df, i64 %i.de ; 2 uses
  %.107.i = select i1 %i.gc, ptr %i.da, ptr %i.cy ; 2 uses
  br i1 %i.gd, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i: ; preds = %.lr.ph95
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.di
  %i.gf = load atomic ptr, ptr %i.ge acquire, align 8, !noalias !1026
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.de
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %i.gi = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1026
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.el
  %i.gk = load atomic ptr, ptr %i.gj acquire, align 8, !noalias !1026
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.df
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %.val.i34.i.i = load ptr, ptr %i.gh, align 8, !tbaa !249, !noalias !1026
  %i.gn = getelementptr i8, ptr %i.gh, i64 48
  %.val1.i35.i.i = load i32, ptr %i.gn, align 8, !tbaa !250, !noalias !1026
  %.val2.i36.i.i = load ptr, ptr %i.gm, align 8, !tbaa !249, !noalias !1026
  %i.go = getelementptr i8, ptr %i.gm, i64 48
  %.val3.i37.i.i = load i32, ptr %i.go, align 8, !tbaa !250, !noalias !1026
  %i.gp = getelementptr i8, ptr %.val.i34.i.i, i64 128
  %.val.val.i38.i.i = load i64, ptr %i.gp, align 8, !tbaa !275, !noalias !1026
  %i.gq = getelementptr i8, ptr %.val2.i36.i.i, i64 128
  %.val2.val.i39.i.i = load i64, ptr %i.gq, align 8, !tbaa !275, !noalias !1026
  %i.gr = shl i64 %.val.val.i38.i.i, 32
  %i.gs = sext i32 %.val1.i35.i.i to i64
  %i.gt = or i64 %i.gr, %i.gs
  %i.gu = shl i64 %.val2.val.i39.i.i, 32
  %i.gv = sext i32 %.val3.i37.i.i to i64
  %i.gw = or i64 %i.gu, %i.gv
  %i.gx = icmp slt i64 %i.gt, %i.gw
  br i1 %i.gx, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i
  %i.gy = icmp eq ptr %i.cz, null
  br i1 %i.gy, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit40.i.i
  %i.gz = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1026
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.dr
  %i.hb = load atomic ptr, ptr %i.ha acquire, align 8, !noalias !1026
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.dd
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %i.he = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1026
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.el
  %i.hg = load atomic ptr, ptr %i.hf acquire, align 8, !noalias !1026
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.df
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !130, !noalias !1026 ; 2 uses
  %.val.i48.i.i = load ptr, ptr %i.hd, align 8, !tbaa !249, !noalias !1026
  %i.hj = getelementptr i8, ptr %i.hd, i64 48
  %.val1.i49.i.i = load i32, ptr %i.hj, align 8, !tbaa !250, !noalias !1026
  %.val2.i50.i.i = load ptr, ptr %i.hi, align 8, !tbaa !249, !noalias !1026
  %i.hk = getelementptr i8, ptr %i.hi, i64 48
  %.val3.i51.i.i = load i32, ptr %i.hk, align 8, !tbaa !250, !noalias !1026
  %i.hl = getelementptr i8, ptr %.val.i48.i.i, i64 128
  %.val.val.i52.i.i = load i64, ptr %i.hl, align 8, !tbaa !275, !noalias !1026
  %i.hm = getelementptr i8, ptr %.val2.i50.i.i, i64 128
  %.val2.val.i53.i.i = load i64, ptr %i.hm, align 8, !tbaa !275, !noalias !1026
  %i.hn = shl i64 %.val.val.i52.i.i, 32
  %i.ho = sext i32 %.val1.i49.i.i to i64
  %i.hp = or i64 %i.hn, %i.ho
  %i.hq = shl i64 %.val2.val.i53.i.i, 32
  %i.hr = sext i32 %.val3.i51.i.i to i64
  %i.hs = or i64 %i.hq, %i.hr
  %i.ht = icmp slt i64 %i.hp, %i.hs               ; 3 uses
  %i.hu = icmp eq ptr %i.cz, null
  %.108.i = select i1 %i.ht, i64 %i.el, i64 %i.dr ; 2 uses
  %.109.i = select i1 %i.ht, i64 %i.df, i64 %i.dd ; 2 uses
  %.110.i = select i1 %i.ht, ptr %i.da, ptr %i.cy ; 2 uses
  br i1 %i.hu, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i, %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i, %bb.e
  %.pre-phi95.ph.i = phi i64 [ %.108.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.di, %bb.f ], [ %i.dr, %bb.e ], [ %..i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ]
  %.sink156.i.ph.i = phi i64 [ %.109.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.de, %bb.f ], [ %i.dd, %bb.e ], [ %.106.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ]
  %.sink.i.ph.i = phi ptr [ %.110.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.cy, %bb.f ], [ %i.cy, %bb.e ], [ %.107.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ]
  %i.hv = or i64 %i.cv, 1
  %i.hw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.hv, i1 true)
  %i.hx = xor i64 %i.hw, 63
  %i.hy = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1026
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hx
  %i.ia = load atomic ptr, ptr %i.hz acquire, align 8, !noalias !1026
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.cv
  br label %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i

_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i, %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i, %bb.e
  %.pre-phi95.i = phi i64 [ %.108.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.dr, %bb.e ], [ %i.di, %bb.f ], [ %..i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %.pre-phi95.ph.i, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ]
  %.sink156.i.i = phi i64 [ %.109.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.dd, %bb.e ], [ %i.de, %bb.f ], [ %.106.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %.sink156.i.ph.i, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ]
  %.sink.i.i = phi ptr [ %.110.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.cy, %bb.e ], [ %i.cy, %bb.f ], [ %.107.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %.sink.i.ph.i, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ]
  %.0.i.i42.sink149.ph.i.i = phi ptr [ %i.cz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit54.i.i ], [ %i.cz, %bb.e ], [ %i.cz, %bb.f ], [ %i.cz, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit22.i.i ], [ %i.ib, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.sink.split.i ] ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 16
  %i.id = load atomic ptr, ptr %i.ic acquire, align 8, !noalias !1026
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %.pre-phi95.i
  %i.if = load atomic ptr, ptr %i.ie acquire, align 8, !noalias !1026
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %.sink156.i.i ; 2 uses
  %i.ih = load ptr, ptr %.0.i.i42.sink149.ph.i.i, align 8, !tbaa !130, !noalias !1026
  %i.ii = load ptr, ptr %i.ig, align 8, !tbaa !130, !noalias !1026
  store ptr %i.ii, ptr %.0.i.i42.sink149.ph.i.i, align 8, !tbaa !130, !noalias !1026
  store ptr %i.ih, ptr %i.ig, align 8, !tbaa !130, !noalias !1026
  %i.ij = icmp eq ptr %i.cz, null                 ; 2 uses
  %i.ik = or i64 %i.cv, 1
  %i.il = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ik, i1 true)
  %i.im = xor i64 %i.il, 63                       ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_EvT_T0_.exit.i.i, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i
  %.sroa.4.0.in.i = phi i64 [ %i.cv, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i ], [ %.us-phi, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_EvT_T0_.exit.i.i ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %i.db, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i ], [ %.sroa.9.3.i, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_EvT_T0_.exit.i.i ] ; 2 uses
  %.sroa.319.0.i = phi i64 [ %i.cu, %_ZSt22__move_median_to_firstIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_SJ_T0_.exit.i ], [ %.sink105.i, %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_EvT_T0_.exit.i.i ]
  br i1 %i.ij, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us: ; preds = %bb.g, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us
  %.sroa.4.1.in.i.us = phi i64 [ %.sroa.4.1.i.us, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us ], [ %.sroa.4.0.in.i, %bb.g ]
  %.sroa.4.1.i.us = add i64 %.sroa.4.1.in.i.us, 1 ; 4 uses
  %i.in = or i64 %.sroa.4.1.i.us, 1
  %i.io = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.in, i1 true)
  %i.ip = xor i64 %i.io, 63                       ; 2 uses
  %i.iq = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.ip
  %i.is = load atomic ptr, ptr %i.ir acquire, align 8, !noalias !1027
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.sroa.4.1.i.us
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %i.iv = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %i.im
  %i.ix = load atomic ptr, ptr %i.iw acquire, align 8, !noalias !1027
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %i.cv
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i.i8.i.us = load ptr, ptr %i.iu, align 8, !tbaa !249, !noalias !1027
  %i.ja = getelementptr i8, ptr %i.iu, i64 48
  %.val1.i.i9.i.us = load i32, ptr %i.ja, align 8, !tbaa !250, !noalias !1027
  %.val2.i.i10.i.us = load ptr, ptr %i.iz, align 8, !tbaa !249, !noalias !1027
  %i.jb = getelementptr i8, ptr %i.iz, i64 48
  %.val3.i.i11.i.us = load i32, ptr %i.jb, align 8, !tbaa !250, !noalias !1027
  %i.jc = getelementptr i8, ptr %.val.i.i8.i.us, i64 128
  %.val.val.i.i12.i.us = load i64, ptr %i.jc, align 8, !tbaa !275, !noalias !1027
  %i.jd = getelementptr i8, ptr %.val2.i.i10.i.us, i64 128
  %.val2.val.i.i13.i.us = load i64, ptr %i.jd, align 8, !tbaa !275, !noalias !1027
  %i.je = shl i64 %.val.val.i.i12.i.us, 32
  %i.jf = sext i32 %.val1.i.i9.i.us to i64
  %i.jg = or i64 %i.je, %i.jf
  %i.jh = shl i64 %.val2.val.i.i13.i.us, 32
  %i.ji = sext i32 %.val3.i.i11.i.us to i64
  %i.jj = or i64 %i.jh, %i.ji
  %i.jk = icmp slt i64 %i.jg, %i.jj
  br i1 %i.jk, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i15, !llvm.loop !1023

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i: ; preds = %bb.g, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i
  %.sroa.4.1.in.i = phi i64 [ %.sroa.4.1.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i ], [ %.sroa.4.0.in.i, %bb.g ]
  %.sroa.4.1.i = add i64 %.sroa.4.1.in.i, 1       ; 4 uses
  %i.jl = or i64 %.sroa.4.1.i, 1
  %i.jm = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.jl, i1 true)
  %i.jn = xor i64 %i.jm, 63                       ; 2 uses
  %i.jo = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jn
  %i.jq = load atomic ptr, ptr %i.jp acquire, align 8, !noalias !1027
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jq, i64 %.sroa.4.1.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %i.jt = load ptr, ptr %i.cz, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i.i8.i = load ptr, ptr %i.js, align 8, !tbaa !249, !noalias !1027
  %i.ju = getelementptr i8, ptr %i.js, i64 48
  %.val1.i.i9.i = load i32, ptr %i.ju, align 8, !tbaa !250, !noalias !1027
  %.val2.i.i10.i = load ptr, ptr %i.jt, align 8, !tbaa !249, !noalias !1027
  %i.jv = getelementptr i8, ptr %i.jt, i64 48
  %.val3.i.i11.i = load i32, ptr %i.jv, align 8, !tbaa !250, !noalias !1027
  %i.jw = getelementptr i8, ptr %.val.i.i8.i, i64 128
  %.val.val.i.i12.i = load i64, ptr %i.jw, align 8, !tbaa !275, !noalias !1027
  %i.jx = getelementptr i8, ptr %.val2.i.i10.i, i64 128
  %.val2.val.i.i13.i = load i64, ptr %i.jx, align 8, !tbaa !275, !noalias !1027
  %i.jy = shl i64 %.val.val.i.i12.i, 32
  %i.jz = sext i32 %.val1.i.i9.i to i64
  %i.ka = or i64 %i.jy, %i.jz
  %i.kb = shl i64 %.val2.val.i.i13.i, 32
  %i.kc = sext i32 %.val3.i.i11.i to i64
  %i.kd = or i64 %i.kb, %i.kc
  %i.ke = icmp slt i64 %i.ka, %i.kd
  br i1 %i.ke, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i15, !llvm.loop !1023

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i15: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us
  %.us-phi = phi i64 [ %.sroa.4.1.i.us, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us ], [ %.sroa.4.1.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i ] ; 8 uses
  %.us-phi53 = phi i64 [ %i.ip, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i.us ], [ %i.jn, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i.i4.i ]
  %.not.i1.i.i = icmp eq ptr %.sroa.9.0.i, null
  br label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit17.i.i

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit17.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i15
  %.sroa.319.1.sink.i = phi i64 [ %.sroa.319.0.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i15 ], [ %.sink105.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i ] ; 2 uses
  %.sroa.9.3.sink.i = phi ptr [ %.sroa.9.0.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i15 ], [ %.sroa.9.3.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i ]
  %.sink102.i = phi i1 [ %.not.i1.i.i, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit.i.i15 ], [ %i.kj, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i ]
  %.sink105.i = add i64 %.sroa.319.1.sink.i, -1   ; 8 uses
  %i.kf = add i64 %.sroa.319.1.sink.i, -3
  %i.kg = and i64 %i.kf, %.sink105.i
  %i.kh = icmp eq i64 %i.kg, 0
  %i.ki = getelementptr inbounds i8, ptr %.sroa.9.3.sink.i, i64 -8 ; 3 uses
  %i.kj = select i1 %.sink102.i, i1 true, i1 %i.kh ; 4 uses
  %.sroa.9.3.i = select i1 %i.kj, ptr null, ptr %i.ki ; 2 uses
  br i1 %i.ij, label %bb.h, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i4.i.i

bb.h:                                             ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit17.i.i
  %i.kk = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %i.im
  %i.km = load atomic ptr, ptr %i.kl acquire, align 8, !noalias !1027
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.cv
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i4.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i4.i.i: ; preds = %bb.h, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit17.i.i
  %.0.i.i5.i.i = phi ptr [ %i.kn, %bb.h ], [ %i.cz, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit17.i.i ]
  %i.ko = load ptr, ptr %.0.i.i5.i.i, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  br i1 %i.kj, label %bb.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i

bb.i:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i4.i.i
  %i.kp = or i64 %.sink105.i, 1
  %i.kq = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.kp, i1 true)
  %i.kr = xor i64 %i.kq, 63
  %i.ks = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1027
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kr
  %i.ku = load atomic ptr, ptr %i.kt acquire, align 8, !noalias !1027
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %.sink105.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i: ; preds = %bb.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i4.i.i
  %.0.i4.i6.i.i = phi ptr [ %i.kv, %bb.i ], [ %i.ki, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i4.i.i ]
  %i.kw = load ptr, ptr %.0.i4.i6.i.i, align 8, !tbaa !130, !noalias !1027 ; 2 uses
  %.val.i7.i.i = load ptr, ptr %i.ko, align 8, !tbaa !249, !noalias !1027
  %i.kx = getelementptr i8, ptr %i.ko, i64 48
  %.val1.i8.i.i = load i32, ptr %i.kx, align 8, !tbaa !250, !noalias !1027
  %.val2.i9.i.i = load ptr, ptr %i.kw, align 8, !tbaa !249, !noalias !1027
  %i.ky = getelementptr i8, ptr %i.kw, i64 48
  %.val3.i10.i.i = load i32, ptr %i.ky, align 8, !tbaa !250, !noalias !1027
  %i.kz = getelementptr i8, ptr %.val.i7.i.i, i64 128
  %.val.val.i11.i.i = load i64, ptr %i.kz, align 8, !tbaa !275, !noalias !1027
  %i.la = getelementptr i8, ptr %.val2.i9.i.i, i64 128
  %.val2.val.i12.i.i = load i64, ptr %i.la, align 8, !tbaa !275, !noalias !1027
  %i.lb = shl i64 %.val.val.i11.i.i, 32
  %i.lc = sext i32 %.val1.i8.i.i to i64
  %i.ld = or i64 %i.lb, %i.lc
  %i.le = shl i64 %.val2.val.i12.i.i, 32
  %i.lf = sext i32 %.val3.i10.i.i to i64
  %i.lg = or i64 %i.le, %i.lf
  %i.lh = icmp slt i64 %i.ld, %i.lg
  br i1 %i.lh, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit17.i.i, label %bb.j, !llvm.loop !1024

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit13.i.i
  %i.li = icmp ult i64 %.us-phi, %.sink105.i
  br i1 %i.li, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i18.i.i, label %_ZSt27__unguarded_partition_pivotIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEESJ_SJ_SJ_T0_.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i18.i.i: ; preds = %bb.j
  %i.lj = load atomic ptr, ptr %i.dj acquire, align 8, !noalias !1027
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.us-phi53
  %i.ll = load atomic ptr, ptr %i.lk acquire, align 8, !noalias !1027
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %.us-phi ; 2 uses
  br i1 %i.kj, label %bb.k, label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_EvT_T0_.exit.i.i

bb.k:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i18.i.i
  %i.ln = or i64 %.sink105.i, 1
  %i.lo = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ln, i1 true)
  %i.lp = xor i64 %i.lo, 63
  %i.lq = load atomic ptr, ptr %i.em acquire, align 8, !noalias !1027
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lp
  %i.ls = load atomic ptr, ptr %i.lr acquire, align 8, !noalias !1027
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.ls, i64 %.sink105.i
  br label %_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_EvT_T0_.exit.i.i

_ZSt9iter_swapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_EvT_T0_.exit.i.i: ; preds = %bb.k, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i18.i.i
  %.0.i1.i.i.i = phi ptr [ %i.lt, %bb.k ], [ %i.ki, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i18.i.i ] ; 2 uses
  %i.lu = load ptr, ptr %i.lm, align 8, !tbaa !130, !noalias !1027
  %i.lv = load ptr, ptr %.0.i1.i.i.i, align 8, !tbaa !130, !noalias !1027
  store ptr %i.lv, ptr %i.lm, align 8, !tbaa !130, !noalias !1027
  store ptr %i.lu, ptr %.0.i1.i.i.i, align 8, !tbaa !130, !noalias !1027
  br label %bb.g, !llvm.loop !1025

_ZSt27__unguarded_partition_pivotIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEESJ_SJ_SJ_T0_.exit: ; preds = %bb.j
  store ptr %i.cy, ptr %5, align 8, !tbaa !241
  store i64 %.us-phi, ptr %i.i, align 8, !tbaa !242
  %i.lw = load ptr, ptr %1, align 8, !tbaa !241
  store ptr %i.lw, ptr %6, align 8, !tbaa !241
  %i.lx = load i64, ptr %i.a, align 8, !tbaa !242
  store i64 %i.lx, ptr %i.k, align 8, !tbaa !242
  %i.ly = load ptr, ptr %i.h, align 8, !tbaa !243
  store ptr %i.ly, ptr %i.l, align 8, !tbaa !243
  call fastcc void @_ZSt16__introsort_loopIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_T1_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %5, ptr nofree noundef align 8 dead_on_return dereferenceable(24) %6, i64 noundef %i.cx)
  store ptr %i.cy, ptr %1, align 8, !tbaa !241
  store i64 %.us-phi, ptr %i.a, align 8, !tbaa !242
  store ptr null, ptr %i.h, align 8, !tbaa !243
  %i.lz = load i64, ptr %i.b, align 8, !tbaa !242 ; 3 uses
  %i.ma = sub nsw i64 %.us-phi, %i.lz             ; 3 uses
  %i.mb = icmp sgt i64 %i.ma, 16
  br i1 %i.mb, label %bb.b, label %_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit, !llvm.loop !1016

_ZSt14__partial_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEESJ_SJ_SJ_T0_.exit, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.i, %_ZSt10__pop_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_SJ_RT0_.exit.i7.us.i, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind
define internal fastcc void @_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #19 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23.lr.ph, label %._crit_edge

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23.lr.ph: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23.lr.ph, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23
  %.050 = phi i64 [ %1, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23.lr.ph ], [ %spec.select, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23 ] ; 2 uses
  %i.e = shl i64 %.050, 1                         ; 2 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !241, !noalias !1040
  %i.h = load i64, ptr %i.d, align 8, !tbaa !242, !noalias !1040 ; 2 uses
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = or disjoint i64 %i.e, 1                  ; 2 uses
  %i.k = add i64 %i.h, %i.j                       ; 2 uses
  %i.l = or i64 %i.i, 1
  %i.m = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  %i.r = load atomic ptr, ptr %i.q acquire, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !130  ; 2 uses
  %i.u = or i64 %i.k, 1
  %i.v = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = xor i64 %i.v, 63
  %i.x = load atomic ptr, ptr %i.o acquire, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.w
  %i.z = load atomic ptr, ptr %i.y acquire, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.k
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130 ; 2 uses
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !249
  %i.ac = getelementptr i8, ptr %i.t, i64 48
  %.val1.i = load i32, ptr %i.ac, align 8, !tbaa !250
  %.val2.i = load ptr, ptr %i.ab, align 8, !tbaa !249
  %i.ad = getelementptr i8, ptr %i.ab, i64 48
  %.val3.i = load i32, ptr %i.ad, align 8, !tbaa !250
  %i.ae = getelementptr i8, ptr %.val.i, i64 128
  %.val.val.i = load i64, ptr %i.ae, align 8, !tbaa !275
  %i.af = getelementptr i8, ptr %.val2.i, i64 128
  %.val2.val.i = load i64, ptr %i.af, align 8, !tbaa !275
  %i.ag = shl i64 %.val.val.i, 32
  %i.ah = sext i32 %.val1.i to i64
  %i.ai = or i64 %i.ag, %i.ah
  %i.aj = shl i64 %.val2.val.i, 32
  %i.ak = sext i32 %.val3.i to i64
  %i.al = or i64 %i.aj, %i.ak
  %i.am = icmp slt i64 %i.ai, %i.al
  %spec.select = select i1 %i.am, i64 %i.j, i64 %i.f ; 4 uses
  %i.an = load ptr, ptr %0, align 8, !tbaa !241, !noalias !1041
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !242, !noalias !1041
  %i.ap = add i64 %spec.select, %i.ao             ; 2 uses
  %i.aq = or i64 %i.ap, 1
  %i.ar = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aq, i1 true)
  %i.as = xor i64 %i.ar, 63
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.au = load atomic ptr, ptr %i.at acquire, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  %i.aw = load atomic ptr, ptr %i.av acquire, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ap
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130
  %i.az = load ptr, ptr %0, align 8, !tbaa !241, !noalias !1042
  %i.ba = load i64, ptr %i.d, align 8, !tbaa !242, !noalias !1042
  %i.bb = add i64 %i.ba, %.050                    ; 2 uses
  %i.bc = or i64 %i.bb, 1
  %i.bd = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bc, i1 true)
  %i.be = xor i64 %i.bd, 63
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bg = load atomic ptr, ptr %i.bf acquire, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  %i.bi = load atomic ptr, ptr %i.bh acquire, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bb
  store ptr %i.ay, ptr %i.bj, align 8, !tbaa !130
  %i.bk = icmp slt i64 %spec.select, %i.b
  br i1 %i.bk, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23, label %._crit_edge, !llvm.loop !1034

._crit_edge:                                      ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit23 ] ; 5 uses
  %i.bl = and i64 %2, 1
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.bn = add nsw i64 %2, -2
  %i.bo = ashr exact i64 %i.bn, 1
  %i.bp = icmp eq i64 %.0.lcssa, %i.bo
  br i1 %i.bp, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit27, label %bb.c

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit27: ; preds = %bb.b
  %i.bq = shl nsw i64 %.0.lcssa, 1
  %i.br = or disjoint i64 %i.bq, 1                ; 2 uses
  %i.bs = load ptr, ptr %0, align 8, !tbaa !241, !noalias !1043
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !242, !noalias !1043
  %i.bv = add i64 %i.bu, %i.br                    ; 2 uses
  %i.bw = or i64 %i.bv, 1
  %i.bx = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bw, i1 true)
  %i.by = xor i64 %i.bx, 63
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.ca = load atomic ptr, ptr %i.bz acquire, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  %i.cc = load atomic ptr, ptr %i.cb acquire, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !130
  %i.cf = load ptr, ptr %0, align 8, !tbaa !241, !noalias !1044
  %i.cg = load i64, ptr %i.bt, align 8, !tbaa !242, !noalias !1044
  %i.ch = add i64 %i.cg, %.0.lcssa                ; 2 uses
  %i.ci = or i64 %i.ch, 1
  %i.cj = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ci, i1 true)
  %i.ck = xor i64 %i.cj, 63
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cm = load atomic ptr, ptr %i.cl acquire, align 8
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ck
  %i.co = load atomic ptr, ptr %i.cn acquire, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ch
  store ptr %i.ce, ptr %i.cp, align 8, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit27, %bb.b, %._crit_edge
  %.121 = phi i64 [ %i.br, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit27 ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.cq = load ptr, ptr %0, align 8, !tbaa !241   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !242 ; 3 uses
  %i.ct = icmp sgt i64 %.121, %1
  br i1 %i.ct, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.lr.ph.i, label %_ZSt11__push_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops14_Iter_comp_valIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.lr.ph.i: ; preds = %bb.c
  %i.cu = getelementptr i8, ptr %3, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 3 uses
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit11.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.lr.ph.i
  %.0911.i = phi i64 [ %.121, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.lr.ph.i ], [ %.012.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit11.i ] ; 3 uses
  %.012.in.i = add nsw i64 %.0911.i, -1
  %.012.i = sdiv i64 %.012.in.i, 2                ; 4 uses
  %i.cw = add i64 %.012.i, %i.cs                  ; 3 uses
  %i.cx = or i64 %i.cw, 1
  %i.cy = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cx, i1 true)
  %i.cz = xor i64 %i.cy, 63                       ; 2 uses
  %i.da = load atomic ptr, ptr %i.cv acquire, align 8
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cz
  %i.dc = load atomic ptr, ptr %i.db acquire, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cw
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !130 ; 2 uses
  %.val.i.i = load ptr, ptr %i.de, align 8, !tbaa !249
  %i.df = getelementptr i8, ptr %i.de, i64 48
  %.val2.i.i = load i32, ptr %i.df, align 8, !tbaa !250
  %.val3.i.i = load ptr, ptr %3, align 8, !tbaa !249
  %.val4.i.i = load i32, ptr %i.cu, align 8, !tbaa !250
  %i.dg = getelementptr i8, ptr %.val.i.i, i64 128
  %.val.val.i.i = load i64, ptr %i.dg, align 8, !tbaa !275
  %i.dh = getelementptr i8, ptr %.val3.i.i, i64 128
  %.val3.val.i.i = load i64, ptr %i.dh, align 8, !tbaa !275
  %i.di = shl i64 %.val.val.i.i, 32
  %i.dj = sext i32 %.val2.i.i to i64
  %i.dk = or i64 %i.di, %i.dj
  %i.dl = shl i64 %.val3.val.i.i, 32
  %i.dm = sext i32 %.val4.i.i to i64
  %i.dn = or i64 %i.dl, %i.dm
  %i.do = icmp slt i64 %i.dk, %i.dn
  br i1 %i.do, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit11.i, label %_ZSt11__push_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops14_Iter_comp_valIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_RT2_.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit11.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.i
  %i.dp = load atomic ptr, ptr %i.cv acquire, align 8
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.cz
  %i.dr = load atomic ptr, ptr %i.dq acquire, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.cw
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !130
  %i.du = add i64 %.0911.i, %i.cs                 ; 2 uses
  %i.dv = or i64 %i.du, 1
  %i.dw = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dv, i1 true)
  %i.dx = xor i64 %i.dw, 63
  %i.dy = load atomic ptr, ptr %i.cv acquire, align 8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dx
end_hunk_0
