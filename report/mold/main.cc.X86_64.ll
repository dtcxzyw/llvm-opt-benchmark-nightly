Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/main.cc.X86_64?download=true
inline.NumInlined: 5581
inline.NumDeleted: 3026
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZSt16__insertion_sortIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EEN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSM_4lessEMSE_S8_EEDaRT_RT0_EUlOSR_OST_E_EEEvSR_SR_ST_:bb.a
  %.sroa.9.046 = phi i64 [ %i.j, %.lr.ph ], [ %i.dn, %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EppEv.exit ] ; 9 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !390
  %i.q = load i64, ptr %i.d, align 8, !tbaa !391  ; 2 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !392  ; 2 uses
  %i.s = or i64 %.sroa.9.046, 1
  %i.t = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = xor i64 %i.t, 63
  %i.v = load atomic ptr, ptr %i.m acquire, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.u
  %i.x = load atomic ptr, ptr %i.w acquire, align 8
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %.sroa.9.046
  %i.z = icmp eq ptr %i.r, null
  br i1 %i.z, label %bb.c, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i

bb.c:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i
  %i.aa = or i64 %i.q, 1
  %i.ab = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %i.ac = xor i64 %i.ab, 63
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ae = load atomic ptr, ptr %i.ad acquire, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ac
  %i.ag = load atomic ptr, ptr %i.af acquire, align 8
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %i.q
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i: ; preds = %bb.c, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i
  %.0.i1.i = phi ptr [ %i.ah, %bb.c ], [ %i.r, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i ]
  %i.ai = load i64, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.y, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.0.i1.i, i64 %i.ai ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !557 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !557 ; 2 uses
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !557 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !557 ; 2 uses
  %i.ar = icmp eq ptr %i.al, %i.an
  br i1 %i.ar, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i, %bb.e
  %.sroa.010.018.i.i.i.i.i.i.i = phi ptr [ %i.aw, %bb.e ], [ %i.al, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i ] ; 2 uses
  %.sroa.05.017.i.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.e ], [ %i.ao, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i ] ; 3 uses
  %i.as = icmp eq ptr %.sroa.05.017.i.i.i.i.i.i.i, %i.aq
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.at = load i32, ptr %.sroa.010.018.i.i.i.i.i.i.i, align 4, !tbaa !546 ; 2 uses
  %i.au = load i32, ptr %.sroa.05.017.i.i.i.i.i.i.i, align 4, !tbaa !546 ; 2 uses
  %i.av = icmp eq i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.an
  br i1 %i.ay, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.e, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ao, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2.i ], [ %i.ax, %bb.e ]
  %.not = icmp eq ptr %.sroa.05.0.lcssa.i.i.i.i.i.i.i, %i.aq
  br i1 %.not, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit.thread, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit: ; preds = %bb.d
  %i.az = icmp ult i32 %i.at, %i.au
  br i1 %i.az, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit.thread

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit
  %i.ba = or i64 %.sroa.9.046, 1
  %i.bb = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = xor i64 %i.bb, 63
  %i.bd = load atomic ptr, ptr %i.m acquire, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load atomic ptr, ptr %i.be acquire, align 8
  %i.bg = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %.sroa.9.046 ; 4 uses
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !557
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !398
  %i.bm = load i64, ptr %i.d, align 8, !tbaa !391
  %i.bn = sub nsw i64 %.sroa.9.046, %i.bm         ; 2 uses
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.preheader.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EESI_ET0_T_SK_SJ_.exit

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit
  %i.bp = add i64 %.sroa.9.046, 1
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit7.i.i.i.i.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit7.i.i.i.i.i: ; preds = %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.sroa.2.0.i.i.i.i = phi i64 [ %i.bq, %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ], [ %.sroa.9.046, %.lr.ph.i.preheader.i.i.i.i ]
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.by, %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ], [ %i.bp, %.lr.ph.i.preheader.i.i.i.i ]
  %.08.i.i.i.i.i = phi i64 [ %i.cs, %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.bq = add i64 %.sroa.2.0.i.i.i.i, -1          ; 3 uses
  %i.br = or i64 %i.bq, 1
  %i.bs = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.br, i1 true)
  %i.bt = xor i64 %i.bs, 63
  %i.bu = load atomic ptr, ptr %i.m acquire, align 8, !noalias !1333
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8, !noalias !1333
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bq ; 4 uses
  %i.by = add i64 %.sroa.3.0.i.i.i.i, -1          ; 3 uses
  %i.bz = or i64 %i.by, 1
  %i.ca = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bz, i1 true)
  %i.cb = xor i64 %i.ca, 63
  %i.cc = load atomic ptr, ptr %i.m acquire, align 8, !noalias !1333
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load atomic ptr, ptr %i.cd acquire, align 8, !noalias !1333
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.by ; 4 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !394, !noalias !1333 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !395, !noalias !1333
  %i.cj = load <2 x ptr>, ptr %i.bx, align 8, !tbaa !557, !noalias !1333
  store <2 x ptr> %i.cj, ptr %i.cf, align 8, !tbaa !557, !noalias !1333
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !395, !noalias !1333
  store ptr %i.cl, ptr %i.ch, align 8, !tbaa !395, !noalias !1333
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, i8 0, i64 24, i1 false), !noalias !1333
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit7.i.i.i.i.i
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = ptrtoint ptr %i.cg to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cg, i64 noundef %i.co) #25, !noalias !1333
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i: ; preds = %bb.f, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit7.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !650, !noalias !1333
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !398, !noalias !1333
  %i.cs = add nsw i64 %.08.i.i.i.i.i, -1
  %i.ct = icmp sgt i64 %.08.i.i.i.i.i, 1
  br i1 %i.ct, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit7.i.i.i.i.i, label %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EESI_ET0_T_SK_SJ_.exit, !llvm.loop !1331

_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EESI_ET0_T_SK_SJ_.exit: ; preds = %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit.i.i.i.i.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !392 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.g, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4

bb.g:                                             ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EESI_ET0_T_SK_SJ_.exit
  %i.cw = load ptr, ptr %0, align 8, !tbaa !390
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !391 ; 2 uses
  %i.cy = or i64 %i.cx, 1
  %i.cz = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cy, i1 true)
  %i.da = xor i64 %i.cz, 63
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dc = load atomic ptr, ptr %i.db acquire, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.da
  %i.de = load atomic ptr, ptr %i.dd acquire, align 8
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.de, i64 %i.cx
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4: ; preds = %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EESI_ET0_T_SK_SJ_.exit, %bb.g
  %.0.i3 = phi ptr [ %i.df, %bb.g ], [ %i.cu, %_ZSt13move_backwardIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EESI_ET0_T_SK_SJ_.exit ] ; 4 uses
  %i.dg = load ptr, ptr %.0.i3, align 8, !tbaa !394 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !395
  store <2 x ptr> %i.bh, ptr %.0.i3, align 8, !tbaa !557
  store ptr %i.bj, ptr %i.dh, align 8, !tbaa !395
  %.not.i.i.i.i.i.i5 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i.i.i.i5, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dg to i64
  %i.dl = sub i64 %i.dj, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dl) #25
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit: ; preds = %bb.h, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i3, i64 24
  store ptr %i.bl, ptr %i.dm, align 8, !tbaa !398
  br label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EppEv.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit
  store ptr %i.a, ptr %4, align 8, !tbaa !390
  store i64 %.sroa.9.046, ptr %i.n, align 8, !tbaa !391
  store ptr null, ptr %i.o, align 8, !tbaa !392
  call void @_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSM_4lessEMSE_S8_EEDaRT_RT0_EUlOSR_OST_E_EEEvSR_ST_(ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(24) %4, ptr %2, ptr nonnull %3)
  br label %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EppEv.exit

_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EppEv.exit: ; preds = %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclIN3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EESY_EEbSH_SJ_.exit.thread
  %i.dn = add i64 %.sroa.9.046, 1                 ; 2 uses
  %i.do = load ptr, ptr %1, align 8, !tbaa !390
  %i.dp = icmp ne ptr %i.a, %i.do
  %i.dq = load i64, ptr %i.f, align 8
  %i.dr = icmp ne i64 %i.dn, %i.dq
  %.not3.i = select i1 %i.dp, i1 true, i1 %i.dr
  br i1 %.not3.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i, label %.loopexit, !llvm.loop !1332

.loopexit:                                        ; preds = %_ZN3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EppEv.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN3tbb6detail2d115vector_iteratorINS2_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS9_6X86_64EEEENS2_23cache_aligned_allocatorISE_EEEESE_EEN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSM_4lessEMSE_S8_EEDaRT_RT0_EUlOSR_OST_E_EEEvSR_ST_(ptr nofree noundef align 8 dead_on_return dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.std::pair.595", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !392  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !390
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !391  ; 2 uses
  %i.g = or i64 %i.f, 1
  %i.h = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = xor i64 %i.h, 63
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load atomic ptr, ptr %i.j acquire, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i
  %i.m = load atomic ptr, ptr %i.l acquire, align 8
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.f
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ %i.b, %bb.a ] ; 5 uses
  %4 = load ptr, ptr %.0.i, align 8, !tbaa !394   ; 2 uses
  store ptr %4, ptr %3, align 8, !tbaa !394
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %6 = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %7 = load ptr, ptr %6, align 8, !tbaa !556      ; 2 uses
  store ptr %7, ptr %5, align 8, !tbaa !556
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !395  ; 2 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !395
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !398  ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !398
  %i.u = load ptr, ptr %0, align 8, !tbaa !390    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !391  ; 2 uses
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !392  ; 2 uses
  %i.y = add i64 %i.w, -1                         ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  %i.z = add i64 %i.w, -3
  %i.aa = and i64 %i.z, %i.y
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = getelementptr inbounds i8, ptr %i.x, i64 -32
  %i.ad = select i1 %.not.i, i1 true, i1 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %spec.select = select i1 %i.ad, ptr null, ptr %i.ac
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit
  %.sroa.6.0 = phi i64 [ %i.y, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit ], [ %i.ck, %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit ] ; 7 uses
  %.sroa.14.0 = phi ptr [ %spec.select, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit ], [ %.sroa.14.0.be, %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit ] ; 5 uses
  %i.af = icmp eq ptr %.sroa.14.0, null           ; 3 uses
  br i1 %i.af, label %bb.d, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ag = or i64 %.sroa.6.0, 1
  %i.ah = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = xor i64 %i.ah, 63
  %i.aj = load atomic ptr, ptr %i.ae acquire, align 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load atomic ptr, ptr %i.ak acquire, align 8
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.al, i64 %.sroa.6.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.am, %bb.d ], [ %.sroa.14.0, %bb.c ]
  %i.an = load i64, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %3, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.an ; 2 uses
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !557 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !557 ; 2 uses
  %i.at = load ptr, ptr %i.ap, align 8, !tbaa !557 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !557 ; 2 uses
  %i.aw = icmp eq ptr %i.aq, %i.as
  br i1 %i.aw, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i, %bb.f
  %.sroa.010.018.i.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.f ], [ %i.aq, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i ] ; 2 uses
  %.sroa.05.017.i.i.i.i.i.i.i = phi ptr [ %i.bc, %bb.f ], [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i ] ; 3 uses
  %i.ax = icmp eq ptr %.sroa.05.017.i.i.i.i.i.i.i, %i.av
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ay = load i32, ptr %.sroa.010.018.i.i.i.i.i.i.i, align 4, !tbaa !546 ; 2 uses
  %i.az = load i32, ptr %.sroa.05.017.i.i.i.i.i.i.i, align 4, !tbaa !546 ; 2 uses
  %i.ba = icmp eq i32 %i.ay, %i.az
  br i1 %i.ba, label %bb.f, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit

bb.f:                                             ; preds = %bb.e
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.as
  br i1 %i.bd, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.f, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.at, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i ], [ %i.bc, %bb.f ]
  %.not = icmp eq ptr %.sroa.05.0.lcssa.i.i.i.i.i.i.i, %i.av
  br i1 %.not, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit.thread, label %bb.g

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit: ; preds = %bb.e
  %i.be = icmp ult i32 %i.ay, %i.az
  br i1 %i.be, label %bb.g, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit.thread

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit
  br i1 %i.af, label %bb.h, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2

bb.h:                                             ; preds = %bb.g
  %i.bf = or i64 %.sroa.6.0, 1
  %i.bg = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = xor i64 %i.bg, 63
  %i.bi = load atomic ptr, ptr %i.ae acquire, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bh
  %i.bk = load atomic ptr, ptr %i.bj acquire, align 8
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %.sroa.6.0
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2: ; preds = %bb.g, %bb.h
  %.0.i1 = phi ptr [ %i.bl, %bb.h ], [ %.sroa.14.0, %bb.g ] ; 4 uses
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !392 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4

bb.i:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2
  %i.bo = load ptr, ptr %0, align 8, !tbaa !390
  %i.bp = load i64, ptr %i.v, align 8, !tbaa !391 ; 2 uses
  %i.bq = or i64 %i.bp, 1
  %i.br = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bq, i1 true)
  %i.bs = xor i64 %i.br, 63
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bu = load atomic ptr, ptr %i.bt acquire, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  %i.bw = load atomic ptr, ptr %i.bv acquire, align 8
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.bw, i64 %i.bp
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2, %bb.i
  %.0.i3 = phi ptr [ %i.bx, %bb.i ], [ %i.bm, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit2 ] ; 4 uses
  %i.by = load ptr, ptr %.0.i3, align 8, !tbaa !394 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i3, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !395
  %i.cb = load <2 x ptr>, ptr %.0.i1, align 8, !tbaa !557
  store <2 x ptr> %i.cb, ptr %.0.i3, align 8, !tbaa !557
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i1, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !395
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !395
  %.not.i.i.i.i.i.i = icmp eq ptr %i.by, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0.i1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit, label %bb.j

bb.j:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4
  %i.ce = ptrtoint ptr %i.ca to i64
  %i.cf = ptrtoint ptr %i.by to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef %i.cg) #25
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEaSEOS8_Qcl13_S_assignableIT_T0_EE.exit: ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit4, %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i1, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !650
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i3, i64 24
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !398
  store ptr %i.u, ptr %0, align 8, !tbaa !390
  store i64 %.sroa.6.0, ptr %i.v, align 8, !tbaa !391
  store ptr %.sroa.14.0, ptr %i.a, align 8, !tbaa !392
  %i.ck = add i64 %.sroa.6.0, -1                  ; 2 uses
  %i.cl = add i64 %.sroa.6.0, -3
  %i.cm = and i64 %i.cl, %i.ck
  %i.cn = icmp eq i64 %i.cm, 0
  %i.co = getelementptr inbounds i8, ptr %.sroa.14.0, i64 -32
  %i.cp = select i1 %i.af, i1 true, i1 %i.cn
  %.sroa.14.0.be = select i1 %i.cp, ptr null, ptr %i.co
  br label %bb.c, !llvm.loop !1334

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit, %.lr.ph.i.i.i.i.i.i.i
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !392 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.k, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit10

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit.thread
  %i.cs = load ptr, ptr %0, align 8, !tbaa !390
  %i.ct = load i64, ptr %i.v, align 8, !tbaa !391 ; 2 uses
  %i.cu = or i64 %i.ct, 1
  %i.cv = tail call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = xor i64 %i.cv, 63
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cy = load atomic ptr, ptr %i.cx acquire, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.cw
  %i.da = load atomic ptr, ptr %i.cz acquire, align 8
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %i.ct
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit10

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit10: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit.thread, %bb.k
  %.0.i9 = phi ptr [ %i.db, %bb.k ], [ %i.cq, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEMSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINSA_6X86_64EEEES9_EEDaRT_RT0_EUlOSH_OSJ_E_EclISF_N3tbb6detail2d115vector_iteratorINSS_17concurrent_vectorISF_NSS_23cache_aligned_allocatorISF_EEEESF_EEEEbSI_SJ_.exit.thread ] ; 5 uses
  %i.dc = load ptr, ptr %.0.i9, align 8, !tbaa !394 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i9, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !395
  store ptr %4, ptr %.0.i9, align 8, !tbaa !394
  store ptr %7, ptr %8, align 8, !tbaa !556
  store ptr %i.q, ptr %i.dd, align 8, !tbaa !395
  %.not.i.i.i.i.i.i11 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i11, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit10
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #25
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit: ; preds = %bb.l, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit10
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i9, i64 24
  store ptr %i.t, ptr %i.di, align 8, !tbaa !398
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15destroy_segmentEPS4_m(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 4 uses
  %i.c = shl nuw i64 1, %2
  %i.d = and i64 %i.c, -2                         ; 4 uses
  %i.e = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.b, i64 2)
  br label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE29number_of_elements_in_segmentEm.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i64 %i.b, %i.d
  br i1 %i.f, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = shl i64 %i.d, 1
  %i.h = icmp ugt i64 %i.g, %i.b
  %i.i = sub nuw i64 %i.b, %i.d
  %i.j = select i1 %i.h, i64 %i.i, i64 %i.d
  br label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE29number_of_elements_in_segmentEm.exit

_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE29number_of_elements_in_segmentEm.exit: ; preds = %bb.b, %bb.d
  %.0.i = phi i64 [ %.sroa.speculated.i, %bb.b ], [ %i.j, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorIN4mold9ReaderJobEEEE7destroyIS5_EEvRS6_PT_.exit, %bb.c, %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE29number_of_elements_in_segmentEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %.not.i = icmp uge i64 %2, %i.l
  %or.cond.i = or i1 %i.e, %.not.i
  br i1 %or.cond.i, label %.sink.split.i, label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE18deallocate_segmentEPS4_m.exit

.sink.split.i:                                    ; preds = %._crit_edge
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %1) #19
  br label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE18deallocate_segmentEPS4_m.exit

_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE18deallocate_segmentEPS4_m.exit: ; preds = %._crit_edge, %.sink.split.i
  ret void

.lr.ph:                                           ; preds = %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE29number_of_elements_in_segmentEm.exit, %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorIN4mold9ReaderJobEEEE7destroyIS5_EEvRS6_PT_.exit
  %.08 = phi i64 [ %i.ag, %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorIN4mold9ReaderJobEEEE7destroyIS5_EEvRS6_PT_.exit ], [ 0, %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE29number_of_elements_in_segmentEm.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %1, i64 %.08 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.r = load i64, ptr %i.p, align 8, !tbaa !64
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !61   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.x = load i64, ptr %i.v, align 8, !tbaa !64
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !394 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorIN4mold9ReaderJobEEEE7destroyIS5_EEvRS6_PT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !395
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #25
  br label %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorIN4mold9ReaderJobEEEE7destroyIS5_EEvRS6_PT_.exit

_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorIN4mold9ReaderJobEEEE7destroyIS5_EEvRS6_PT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i.i.i, %bb.e
  %i.ag = add nuw i64 %.08, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %.0.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1335
}

declare void @_ZN3tbb6detail2r17executeERNS0_2d115task_arena_baseERNS2_13delegate_baseE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN3tbb6detail2r110initializeERNS0_2d115task_arena_baseE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef zeroext i1 @_ZNK3tbb6detail2d119task_arena_functionIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlvE_vEclEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1338, !nonnull !59, !align !456 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1340, !nonnull !59, !align !456 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1341, !nonnull !59, !align !456
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr null, ptr %1, align 8, !tbaa !610
  %i.f = tail call noundef ptr @_ZN3tbb6detail2r127get_thread_reference_vertexEPNS0_2d126wait_tree_vertex_interfaceE(ptr noundef nonnull align 8 dereferenceable(152) %i.c) #19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 39 ; 2 uses
  %i.i = load atomic i8, ptr %i.h monotonic, align 1
  %i.j = icmp eq i8 %i.i, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %.0.i.i.i.i.i = select i1 %i.j, ptr %i.l, ptr %i.g
  %i.m = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 128) #19 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d216task_handle_taskE, i64 16), ptr %i.m, align 64, !tbaa !373
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 ptrtoint (ptr @_ZN3tbb6detail2d213function_taskIZZN4mold9mold_mainINS3_6X86_64EEEiiPPcENKUlvE_clEvEUlvE_E21destroy_function_taskEPNS1_16task_handle_taskERNS0_2d122small_object_allocatorEPKNSD_14execution_dataE to i64), ptr %i.o, align 64, !tbaa !653
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store ptr %i.f, ptr %i.p, align 8, !tbaa !654
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %.0.i.i.i.i.i, ptr %i.q, align 16, !tbaa !380
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.s = load i64, ptr %1, align 8, !tbaa !625
  store i64 %i.s, ptr %i.r, align 8, !tbaa !625
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !373
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef 1) #19, !inline_history !1336
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d213function_taskIZZN4mold9mold_mainINS3_6X86_64EEEiiPPcENKUlvE_clEvEUlvE_EE, i64 16), ptr %i.m, align 64, !tbaa !373
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.w = ptrtoint ptr %i.e to i64
  store i64 %i.w, ptr %i.v, align 32, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.x = load atomic i8, ptr %i.h monotonic, align 1
  %i.y = icmp eq i8 %i.x, -1
  %i.z = load ptr, ptr %i.k, align 8
  %.0.i.i.i.i = select i1 %i.y, ptr %i.z, ptr %i.g
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i.i.i) #19
  ret i1 true
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d119task_arena_functionIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlvE_vED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #25
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d213function_taskIZZN4mold9mold_mainINS3_6X86_64EEEiiPPcENKUlvE_clEvEUlvE_E21destroy_function_taskEPNS1_16task_handle_taskERNS0_2d122small_object_allocatorEPKNSD_14execution_dataE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #2 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = load i64, ptr %1, align 8, !tbaa !625
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %0, align 64, !tbaa !373
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 64 dead_on_return(104) dereferenceable(104) %0) #19
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvmRKNS2_14execution_dataE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %0, i64 noundef 128, ptr noundef nonnull align 8 dereferenceable(12) %2) #19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN3tbb6detail2r110deallocateERNS0_2d117small_object_poolEPvm(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull %0, i64 noundef 128) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
end_hunk_0
