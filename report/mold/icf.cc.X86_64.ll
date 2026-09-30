Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/icf.cc.X86_64?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1791
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZSt13__adjust_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_T2_:bb.a
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
  %i.ea = load atomic ptr, ptr %i.dz acquire, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.du
  store ptr %i.dt, ptr %i.eb, align 8, !tbaa !130
  %i.ec = icmp sgt i64 %.012.i, %1
  br i1 %i.ec, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.i, label %_ZSt11__push_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops14_Iter_comp_valIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_RT2_.exit, !llvm.loop !1039

_ZSt11__push_heapIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EElS9_N9__gnu_cxx5__ops14_Iter_comp_valIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_SO_T1_RT2_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit11.i, %bb.c
  %.09.lcssa.i = phi i64 [ %.121, %bb.c ], [ %.0911.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESB_EEbS6_RT0_.exit.i ], [ %.012.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit11.i ]
  %i.ed = add i64 %.09.lcssa.i, %i.cs             ; 2 uses
  %i.ee = or i64 %i.ed, 1
  %i.ef = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ee, i1 true)
  %i.eg = xor i64 %i.ef, 63
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ei = load atomic ptr, ptr %i.eh acquire, align 8
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.eg
  %i.ek = load atomic ptr, ptr %i.ej acquire, align 8
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ed
  store ptr %3, ptr %i.el, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress norecurse nounwind
define internal fastcc void @_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_SJ_T0_(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #19 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::vector_iterator.506", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !241    ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !241
  %i.c = icmp eq ptr %i.a, %i.b                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i64 %i.e, %i.g
  %i.i = select i1 %i.c, i1 %i.h, i1 false
  br i1 %i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %i.e, 1                          ; 2 uses
  %3 = icmp eq i64 %i.j, %i.g
  %.not3.i32.not = select i1 %i.c, i1 %3, i1 false
  br i1 %.not3.i32.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i: ; preds = %.lr.ph, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit
  %.sroa.9.033 = phi i64 [ %i.j, %.lr.ph ], [ %i.cl, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit ] ; 9 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !241
  %i.p = load i64, ptr %i.d, align 8, !tbaa !242  ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !243  ; 2 uses
  %i.r = or i64 %.sroa.9.033, 1
  %i.s = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = xor i64 %i.s, 63
  %i.u = load atomic ptr, ptr %i.l acquire, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load atomic ptr, ptr %i.v acquire, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.9.033
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !130  ; 2 uses
  %i.z = icmp eq ptr %i.q, null
  br i1 %i.z, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit

bb.c:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i
  %i.aa = or i64 %i.p, 1
  %i.ab = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.p
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i, %bb.c
  %.0.i4.i = phi ptr [ %i.ah, %bb.c ], [ %i.q, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i ]
  %i.ai = load ptr, ptr %.0.i4.i, align 8, !tbaa !130 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !tbaa !249
  %i.aj = getelementptr i8, ptr %i.y, i64 48
  %.val1.i = load i32, ptr %i.aj, align 8, !tbaa !250
  %.val2.i = load ptr, ptr %i.ai, align 8, !tbaa !249
  %i.ak = getelementptr i8, ptr %i.ai, i64 48
  %.val3.i = load i32, ptr %i.ak, align 8, !tbaa !250
  %i.al = getelementptr i8, ptr %.val.i, i64 128
  %.val.val.i = load i64, ptr %i.al, align 8, !tbaa !275
  %i.am = getelementptr i8, ptr %.val2.i, i64 128
  %.val2.val.i = load i64, ptr %i.am, align 8, !tbaa !275
  %i.an = shl i64 %.val.val.i, 32
  %i.ao = sext i32 %.val1.i to i64
  %i.ap = or i64 %i.an, %i.ao
  %i.aq = shl i64 %.val2.val.i, 32
  %i.ar = sext i32 %.val3.i to i64
  %i.as = or i64 %i.aq, %i.ar
  %i.at = icmp slt i64 %i.ap, %i.as
  br i1 %i.at, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit, label %bb.e

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit
  %i.au = or i64 %.sroa.9.033, 1
  %i.av = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 true)
  %i.aw = xor i64 %i.av, 63
  %i.ax = load atomic ptr, ptr %i.l acquire, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load atomic ptr, ptr %i.ay acquire, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.sroa.9.033
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !130
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !242
  %i.bd = sub nsw i64 %.sroa.9.033, %i.bc         ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i.preheader.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_ET0_T_SF_SE_.exit

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit
  %i.bf = add i64 %.sroa.9.033, 1
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.2.0.i.i.i.i = phi i64 [ %i.bg, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i ], [ %.sroa.9.033, %.lr.ph.i.preheader.i.i.i.i ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.bp, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i ], [ %i.bf, %.lr.ph.i.preheader.i.i.i.i ]
  %.08.i.i.i.i.i = phi i64 [ %i.bx, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i ], [ %i.bd, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.bg = add i64 %.sroa.2.0.i.i.i.i, -1          ; 3 uses
  %i.bh = or i64 %i.bg, 1
  %i.bi = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bh, i1 true)
  %i.bj = xor i64 %i.bi, 63
  %i.bk = load atomic ptr, ptr %i.l acquire, align 8, !noalias !1057
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = load atomic ptr, ptr %i.bl acquire, align 8, !noalias !1057
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !130, !noalias !1057
  %i.bp = add i64 %.sroa.3.0.i.i.i.i, -1          ; 3 uses
  %i.bq = or i64 %i.bp, 1
  %i.br = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = xor i64 %i.br, 63
  %i.bt = load atomic ptr, ptr %i.l acquire, align 8, !noalias !1057
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load atomic ptr, ptr %i.bu acquire, align 8, !noalias !1057
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bp
  store ptr %i.bo, ptr %i.bw, align 8, !tbaa !130, !noalias !1057
  %i.bx = add nsw i64 %.08.i.i.i.i.i, -1
  %i.by = icmp samesign ugt i64 %.08.i.i.i.i.i, 1
  br i1 %i.by, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_ET0_T_SF_SE_.exit, !llvm.loop !1055

_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_ET0_T_SF_SE_.exit: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit7.i.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !243 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.d, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2

bb.d:                                             ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_ET0_T_SF_SE_.exit
  %i.cb = load ptr, ptr %0, align 8, !tbaa !241
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !242 ; 2 uses
  %i.cd = or i64 %i.cc, 1
  %i.ce = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = xor i64 %i.ce, 63
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = load atomic ptr, ptr %i.cg acquire, align 8
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  %i.cj = load atomic ptr, ptr %i.ci acquire, align 8
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.cc
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2: ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_ET0_T_SF_SE_.exit, %bb.d
  %.0.i1 = phi ptr [ %i.ck, %bb.d ], [ %i.bz, %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EESD_ET0_T_SF_SE_.exit ]
  store ptr %i.bb, ptr %.0.i1, align 8, !tbaa !130
  br label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4moldL18print_icf_sectionsINS2_6X86_64EEEvRNS2_7ContextIT_EEEUlPNS2_12InputSectionIS4_EESB_E_EclIN3tbb6detail2d115vector_iteratorINSH_17concurrent_vectorISB_NSH_23cache_aligned_allocatorISB_EEEESB_EESN_EEbS6_T0_.exit
  store ptr %i.a, ptr %2, align 8, !tbaa !241
  store i64 %.sroa.9.033, ptr %i.m, align 8, !tbaa !242
  store ptr null, ptr %i.n, align 8, !tbaa !243
  call fastcc void @_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %2)
  br label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit2, %bb.e
  %i.cl = add i64 %.sroa.9.033, 1                 ; 2 uses
  %i.cm = load ptr, ptr %1, align 8, !tbaa !241
  %i.cn = icmp ne ptr %i.a, %i.cm
  %i.co = load i64, ptr %i.f, align 8
  %i.cp = icmp ne i64 %i.cl, %i.co
  %.not3.i = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %.not3.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.i, label %.loopexit, !llvm.loop !1056

.loopexit:                                        ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EppEv.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress norecurse nounwind
define internal fastcc void @_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorIPN4mold12InputSectionINS5_6X86_64EEENS2_23cache_aligned_allocatorIS9_EEEES9_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNS5_L18print_icf_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_S9_E_EEEvSJ_T0_(ptr nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread: ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !130
  %i.e = load ptr, ptr %0, align 8, !tbaa !241
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !242  ; 2 uses
  %i.h = add i64 %i.g, -1
  br label %.sink.split.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit: ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !241
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !242  ; 2 uses
  %i.l = or i64 %i.k, 1
  %i.m = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  %i.r = load atomic ptr, ptr %i.q acquire, align 8
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.k
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !243  ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !130  ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !241    ; 2 uses
  %i.v = load i64, ptr %i.j, align 8, !tbaa !242  ; 2 uses
  %i.w = add i64 %i.v, -1                         ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit
  %i.x = phi i64 [ %i.h, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread ], [ %i.w, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ] ; 2 uses
  %i.y = phi i64 [ %i.g, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread ], [ %i.v, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ]
  %i.z = phi ptr [ %i.f, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread ], [ %i.j, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ]
  %i.aa = phi ptr [ %i.e, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread ], [ %i.u, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ]
  %i.ab = phi ptr [ %i.d, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread ], [ %i.t, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ]
  %i.ac = phi ptr [ %i.b, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit.thread ], [ %.pr, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ]
  %i.ad = add i64 %i.y, -3
  %i.ae = and i64 %i.ad, %i.x
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = getelementptr inbounds i8, ptr %i.ac, i64 -8
  %.sink.i = select i1 %i.af, ptr null, ptr %i.ag
  br label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EmmEv.exit: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit, %.sink.split.i
  %i.ah = phi i64 [ %i.w, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ], [ %i.x, %.sink.split.i ]
  %i.ai = phi ptr [ %i.j, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ], [ %i.z, %.sink.split.i ] ; 3 uses
  %i.aj = phi ptr [ %i.u, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ], [ %i.aa, %.sink.split.i ] ; 2 uses
  %i.ak = phi ptr [ %i.t, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ], [ %i.ab, %.sink.split.i ] ; 3 uses
  %.sroa.14.1 = phi ptr [ null, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIPN4mold12InputSectionINS4_6X86_64EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit ], [ %.sink.i, %.sink.split.i ]
end_hunk_0
