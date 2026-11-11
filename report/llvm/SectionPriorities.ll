Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SectionPriorities?download=true
inline.NumInlined: 2383
inline.NumDeleted: 1097
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_SD_T0_SE_T1_T2_":bb.a
  %i.u = icmp eq i64 %.val3.i.i.i, 0
  %i.v = shufflevector <2 x double> %i.n, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x double> %i.n, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.x = fdiv <2 x double> %i.v, %i.w
  %i.y = insertelement <2 x i1> poison, i1 %i.t, i64 0
  %i.z = insertelement <2 x i1> %i.y, i1 %i.u, i64 1
  %i.aa = select <2 x i1> %i.z, <2 x double> zeroinitializer, <2 x double> %i.x ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = extractelement <2 x double> %i.aa, i64 1
  %i.ad = fcmp ogt double %i.ab, %i.ac            ; 3 uses
  %.0.val.sink.i = select i1 %i.ad, i32 %i.i, i32 %.0.val.i
  %.sroa.017.1.idx.i = select i1 %i.ad, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.ad, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.026.i, i64 %.1.idx.i ; 2 uses
  store i32 %.0.val.sink.i, ptr %.sroa.013.024.i, align 4, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.024.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !547

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.af = ptrtoint ptr %i.h to i64
  %i.ag = ptrtoint ptr %.026.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !50

bb.g:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.024.i, ptr align 4 %.026.i, i64 %i.ah, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.h:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.i, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %.026.i, align 4, !tbaa !38
  store i32 %i.ak, ptr %.sroa.013.024.i, align 4, !tbaa !38
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.j:                                             ; preds = %bb.a
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am                    ; 7 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !50

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %1, align 4, !tbaa !38
  store i32 %i.aq, ptr %5, align 4, !tbaa !38
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.k, %bb.l, %bb.m
  %i.ar = getelementptr inbounds i8, ptr %5, i64 %i.an
  %i.as = icmp eq ptr %0, %1
  br i1 %i.as, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.at = ashr exact i64 %i.an, 2                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.o, label %bb.p, !prof !50

bb.o:                                             ; preds = %bb.n
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %5, i64 %i.an, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.p:                                             ; preds = %bb.n
  %i.ax = icmp eq i64 %i.an, 4
  br i1 %i.ax, label %bb.q, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds i8, ptr %2, i64 -4
  %i.az = load i32, ptr %5, align 4, !tbaa !38
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !38
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.ba = icmp eq ptr %2, %1
  br i1 %i.ba, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %.val.val.i23 = load ptr, ptr %i.a, align 8, !tbaa !155 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.s
  %.sroa.019.0.i.ph = phi ptr [ %2, %bb.s ], [ %i.by, %bb.u ]
  %.sroa.023.0.i.ph.pn = phi ptr [ %1, %bb.s ], [ %.sroa.023.0.i.ph, %bb.u ]
  %.0.i.ph = phi ptr [ %i.bb, %bb.s ], [ %.0.i, %bb.u ]
  %.sroa.023.0.i.ph = getelementptr inbounds i8, ptr %.sroa.023.0.i.ph.pn, i64 -4 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.aa
  %.sroa.019.0.i = phi ptr [ %i.by, %bb.aa ], [ %.sroa.019.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.cm, %bb.aa ], [ %.0.i.ph, %.outer ] ; 5 uses
  %.0.val.i24 = load i32, ptr %.0.i, align 4, !tbaa !38 ; 2 uses
  %i.bc = load i32, ptr %.sroa.023.0.i.ph, align 4, !tbaa !38 ; 2 uses
  %i.bd = sext i32 %.0.val.i24 to i64
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i23, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %.val5.i.i.i25 = load i64, ptr %i.bf, align 8, !tbaa !162
  %i.bg = load <2 x i64>, ptr %i.bf, align 8
  %i.bh = uitofp <2 x i64> %i.bg to <2 x double>  ; 2 uses
  %i.bi = sext i32 %i.bc to i64
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i23, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 8      ; 2 uses
  %.val3.i.i.i28 = load i64, ptr %i.bk, align 8, !tbaa !162
  %i.bl = load <2 x i64>, ptr %i.bk, align 8
  %i.bm = uitofp <2 x i64> %i.bl to <2 x double>  ; 2 uses
  %i.bn = icmp eq i64 %.val5.i.i.i25, 0
  %i.bo = icmp eq i64 %.val3.i.i.i28, 0
  %i.bp = shufflevector <2 x double> %i.bh, <2 x double> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <2 x double> %i.bh, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.br = fdiv <2 x double> %i.bp, %i.bq
  %i.bs = insertelement <2 x i1> poison, i1 %i.bn, i64 0
  %i.bt = insertelement <2 x i1> %i.bs, i1 %i.bo, i64 1
  %i.bu = select <2 x i1> %i.bt, <2 x double> zeroinitializer, <2 x double> %i.br ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = extractelement <2 x double> %i.bu, i64 1
  %i.bx = fcmp ogt double %i.bv, %i.bw
  %i.by = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 5 uses
  br i1 %i.bx, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  store i32 %i.bc, ptr %i.by, align 4, !tbaa !38
  %i.bz = icmp eq ptr %0, %.sroa.023.0.i.ph
  br i1 %i.bz, label %bb.v, label %.outer, !llvm.loop !548

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %5 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = ashr exact i64 %i.cd, 2                 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 1
  br i1 %i.cf, label %bb.w, label %bb.x, !prof !50

bb.w:                                             ; preds = %bb.v
  %i.cg = sub nsw i64 0, %i.ce
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %5, i64 %i.cd, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.x:                                             ; preds = %bb.v
  %i.ci = icmp eq i64 %i.cd, 4
  br i1 %i.ci, label %bb.y, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8
  %i.ck = load i32, ptr %5, align 4, !tbaa !38
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !38
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit"

bb.z:                                             ; preds = %bb.t
  store i32 %.0.val.i24, ptr %i.by, align 4, !tbaa !38
  %i.cl = icmp eq ptr %5, %.0.i
  br i1 %i.cl, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds i8, ptr %.0.i, i64 -4
  br label %bb.t, !llvm.loop !548

"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_SE_T1_T2_.exit": ; preds = %bb.f, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr nofree readonly captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.018 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.0.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %.sroa.0.021 = phi ptr [ %.sroa.0.018, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 7 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 4 uses
  %.val.val = load ptr, ptr %2, align 8, !tbaa !155 ; 4 uses
  %i.c = load i32, ptr %.sroa.0.021, align 4, !tbaa !38 ; 2 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val5.i.i = load i64, ptr %i.g, align 8, !tbaa !162
  %.val5.i.i.fr.i = freeze i64 %.val5.i.i         ; 2 uses
  %3 = getelementptr i8, ptr %i.f, i64 16         ; 2 uses
  %.val6.i.i = load i64, ptr %3, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val3.i.i = load i64, ptr %i.j, align 8, !tbaa !162
  %i.k = load <2 x i64>, ptr %i.j, align 8
  %i.l = uitofp <2 x i64> %i.k to <2 x double>    ; 2 uses
  %4 = icmp eq i64 %.val5.i.i.fr.i, 0             ; 2 uses
  %5 = uitofp i64 %.val6.i.i to double
  %6 = uitofp i64 %.val5.i.i.fr.i to double       ; 2 uses
  %7 = icmp eq i64 %.val3.i.i, 0
  %8 = insertelement <2 x double> %i.l, double %5, i64 0
  %9 = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %10 = insertelement <2 x double> %9, double %6, i64 0
  %i.m = fdiv <2 x double> %8, %10                ; 2 uses
  %11 = insertelement <2 x i1> poison, i1 %4, i64 0
  %12 = insertelement <2 x i1> %11, i1 %7, i64 1
  %i.n = select <2 x i1> %12, <2 x double> zeroinitializer, <2 x double> %i.m ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = extractelement <2 x double> %i.n, i64 1
  %i.q = fcmp ogt double %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %.sroa.0.021 to i64
  %i.s = sub i64 %i.r, %i.b                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.e, !prof !50

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.w = sub nsw i64 0, %i.t
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.x, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.s, 4
  br i1 %i.y, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  store i32 %i.d, ptr %i.z, align 4, !tbaa !38
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  br i1 %4, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.split.i

.split.i:                                         ; preds = %bb.g
  %i.aa = load i32, ptr %.pn20, align 4, !tbaa !38 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %.val3.i.i13.i = load i64, ptr %i.ad, align 8, !tbaa !162
  %i.ae = load <2 x i64>, ptr %i.ad, align 8
  %i.af = icmp eq i64 %.val3.i.i13.i, 0
  %i.ag = uitofp <2 x i64> %i.ae to <2 x double>  ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fdiv double %i.ai, %i.ah
  %.0.i7.i.i15.i = select i1 %i.af, double 0.000000e+00, double %i.aj
  %i.ak = extractelement <2 x double> %i.m, i64 0
  %i.al = fcmp ogt double %i.ak, %.0.i7.i.i15.i
  br i1 %i.al, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

.lr.ph.i:                                         ; preds = %.split.i, %.lr.ph.i
  %i.am = phi i32 [ %i.an, %.lr.ph.i ], [ %i.aa, %.split.i ]
  %.sroa.0.017.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn20, %.split.i ] ; 3 uses
  %.sroa.06.016.i = phi ptr [ %.sroa.0.017.i, %.lr.ph.i ], [ %.sroa.0.021, %.split.i ]
  store i32 %i.am, ptr %.sroa.06.016.i, align 4, !tbaa !38
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.017.i, i64 -4 ; 2 uses
  %i.an = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !38 ; 2 uses
  %.val6.i.i.i = load i64, ptr %3, align 8
  %i.ao = uitofp i64 %.val6.i.i.i to double
  %i.ap = fdiv double %i.ao, %6
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.as, align 8, !tbaa !162
  %i.at = load <2 x i64>, ptr %i.as, align 8
  %i.au = icmp eq i64 %.val3.i.i.i, 0
  %i.av = uitofp <2 x i64> %i.at to <2 x double>  ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = extractelement <2 x double> %i.av, i64 1
  %i.ay = fdiv double %i.ax, %i.aw
  %.0.i7.i.i.i = select i1 %i.au, double 0.000000e+00, double %i.ay
  %i.az = fcmp ogt double %i.ap, %.0.i7.i.i.i
  br i1 %i.az, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, !llvm.loop !549

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %.split.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.021, %bb.g ], [ %.sroa.0.021, %.split.i ], [ %.sroa.0.017.i, %.lr.ph.i ]
  store i32 %i.c, ptr %.sink, align 4, !tbaa !38
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 4 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !550

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEEvT_SD_SD_T0_SE_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree readonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond95 = or i1 %i.a, %i.b
  br i1 %or.cond95, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr91100 = phi i64 [ %4, %.lr.ph ], [ %i.cs, %tailrecurse ] ; 4 uses
  %.tr9099 = phi i64 [ %3, %.lr.ph ], [ %i.cr, %tailrecurse ] ; 4 uses
  %.tr8897 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr96 = phi ptr [ %0, %.lr.ph ], [ %i.cq, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr91100, %.tr9099
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val.val = load ptr, ptr %5, align 8, !tbaa !155 ; 2 uses
  %i.f = load i32, ptr %.tr8897, align 4, !tbaa !38 ; 2 uses
  %i.g = load i32, ptr %.tr96, align 4, !tbaa !38 ; 2 uses
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load <2 x i64>, ptr %i.j, align 8        ; 2 uses
  %i.o = load <2 x i64>, ptr %i.m, align 8        ; 2 uses
  %i.p = shufflevector <2 x i64> %i.n, <2 x i64> %i.o, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.q = icmp eq <2 x i64> %i.p, zeroinitializer
  %i.r = shufflevector <2 x i64> %i.n, <2 x i64> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = uitofp <2 x i64> %i.r to <2 x double>
  %i.t = uitofp <2 x i64> %i.p to <2 x double>
  %i.u = fdiv <2 x double> %i.s, %i.t
  %i.v = select <2 x i1> %i.q, <2 x double> zeroinitializer, <2 x double> %i.u ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = extractelement <2 x double> %i.v, i64 1
  %i.y = fcmp ogt double %i.w, %i.x
  br i1 %i.y, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %.tr96, align 4, !tbaa !38
  store i32 %i.g, ptr %.tr8897, align 4, !tbaa !38
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.z = icmp sgt i64 %.tr9099, %.tr91100
  %i.aa = ptrtoint ptr %.tr8897 to i64            ; 4 uses
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.ab = sdiv i64 %.tr9099, 2                    ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.tr96, i64 %i.ab ; 2 uses
  %i.ad = sub i64 %i.c, %i.aa
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val52 = load i32, ptr %i.ac, align 4
  %.val.val.i = load ptr, ptr %5, align 8, !tbaa !155 ; 2 uses
  %i.ag = sext i32 %.val52 to i64
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !162
  %i.aj = load <2 x i64>, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %.val3.i.i.i, 0
  %i.al = uitofp <2 x i64> %i.aj to <2 x double>  ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = fdiv double %i.an, %i.am
  %.0.i7.i.i.i = select i1 %i.ak, double 0.000000e+00, double %i.ao
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.08.i = phi i64 [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %.tr8897, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.03.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.ap = lshr i64 %.08.i, 1                      ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.07.i, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !38
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.au, align 8, !tbaa !162
  %i.av = load <2 x i64>, ptr %i.au, align 8
  %i.aw = icmp eq i64 %.val5.i.i.i, 0
  %i.ax = uitofp <2 x i64> %i.av to <2 x double>  ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = extractelement <2 x double> %i.ax, i64 1
  %i.ba = fdiv double %i.az, %i.ay
  %.0.i.i.i.i = select i1 %i.aw, double 0.000000e+00, double %i.ba
  %i.bb = fcmp ogt double %.0.i.i.i.i, %.0.i7.i.i.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bd = xor i64 %i.ap, -1
  %i.be = add nsw i64 %.08.i, %i.bd
  %.sroa.03.1.i = select i1 %i.bb, ptr %i.bc, ptr %.sroa.03.07.i ; 3 uses
  %.1.i = select i1 %i.bb, i64 %i.be, i64 %i.ap   ; 2 uses
  %i.bf = icmp sgt i64 %.1.i, 0
  br i1 %i.bf, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !6

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.03.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr8897, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bg = sub i64 %.pre-phi, %i.aa
  %i.bh = ashr exact i64 %i.bg, 2
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57: ; preds = %bb.e
  %i.bi = sdiv i64 %.tr91100, 2                   ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.tr8897, i64 %i.bi ; 2 uses
  %i.bk = ptrtoint ptr %.tr96 to i64              ; 3 uses
  %i.bl = sub i64 %i.aa, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.val53 = load i32, ptr %i.bj, align 4
  %.val.val.i60 = load ptr, ptr %5, align 8, !tbaa !155 ; 2 uses
  %i.bo = sext i32 %.val53 to i64
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i60, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %.val5.i.i.i61 = load i64, ptr %i.bq, align 8, !tbaa !162
  %i.br = load <2 x i64>, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %.val5.i.i.i61, 0
  %i.bt = uitofp <2 x i64> %i.br to <2 x double>  ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0
  %i.bv = extractelement <2 x double> %i.bt, i64 1
  %i.bw = fdiv double %i.bv, %i.bu
  %.0.i.i.i.i63 = select i1 %i.bs, double 0.000000e+00, double %i.bw
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59
  %.08.i65 = phi i64 [ %i.bm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59 ], [ %.1.i73, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %.sroa.03.07.i66 = phi ptr [ %.tr96, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59 ], [ %.sroa.03.1.i72, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %i.bx = lshr i64 %.08.i65, 1                    ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.07.i66, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !38
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i60, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %.val3.i.i.i69 = load i64, ptr %i.cc, align 8, !tbaa !162
  %i.cd = load <2 x i64>, ptr %i.cc, align 8
  %i.ce = icmp eq i64 %.val3.i.i.i69, 0
  %i.cf = uitofp <2 x i64> %i.cd to <2 x double>  ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = extractelement <2 x double> %i.cf, i64 1
  %i.ci = fdiv double %i.ch, %i.cg
  %.0.i7.i.i.i71 = select i1 %i.ce, double 0.000000e+00, double %i.ci
  %i.cj = fcmp ogt double %.0.i.i.i.i63, %.0.i7.i.i.i71 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cl = xor i64 %i.bx, -1
  %i.cm = add nsw i64 %.08.i65, %i.cl
  %.sroa.03.1.i72 = select i1 %i.cj, ptr %.sroa.03.07.i66, ptr %i.ck ; 3 uses
  %.1.i73 = select i1 %i.cj, i64 %i.bx, i64 %i.cm ; 2 uses
  %i.cn = icmp sgt i64 %.1.i73, 0
  br i1 %i.cn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !7

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %.pre103 = ptrtoint ptr %.sroa.03.1.i72 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.pre-phi104 = phi i64 [ %.pre103, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.bk, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %.sroa.03.0.lcssa.i58 = phi ptr [ %.sroa.03.1.i72, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_0EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr96, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %i.co = sub i64 %.pre-phi104, %i.bk
end_hunk_0
begin_hunk_1_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElS2_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_SD_T0_SE_T1_T2_":bb.a
  %i.u = icmp eq i64 %.val3.i.i.i, 0
  %i.v = shufflevector <2 x double> %i.n, <2 x double> %i.s, <2 x i32> <i32 1, i32 3>
  %i.w = shufflevector <2 x double> %i.n, <2 x double> %i.s, <2 x i32> <i32 0, i32 2>
  %i.x = fdiv <2 x double> %i.v, %i.w
  %i.y = insertelement <2 x i1> poison, i1 %i.t, i64 0
  %i.z = insertelement <2 x i1> %i.y, i1 %i.u, i64 1
  %i.aa = select <2 x i1> %i.z, <2 x double> zeroinitializer, <2 x double> %i.x ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = extractelement <2 x double> %i.aa, i64 1
  %i.ad = fcmp ogt double %i.ab, %i.ac            ; 3 uses
  %.0.val.sink.i = select i1 %i.ad, i32 %i.i, i32 %.0.val.i
  %.sroa.017.1.idx.i = select i1 %i.ad, i64 4, i64 0
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.025.i, i64 %.sroa.017.1.idx.i
  %.1.idx.i = select i1 %i.ad, i64 0, i64 4
  %.1.i = getelementptr inbounds nuw i8, ptr %.026.i, i64 %.1.idx.i ; 2 uses
  store i32 %.0.val.sink.i, ptr %.sroa.013.024.i, align 4, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.024.i, i64 4
  %.not.i = icmp eq ptr %.1.i, %i.h
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !582

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.af = ptrtoint ptr %i.h to i64
  %i.ag = ptrtoint ptr %.026.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 4
  br i1 %i.ai, label %bb.g, label %bb.h, !prof !50

bb.g:                                             ; preds = %.critedge.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.sroa.013.024.i, ptr align 4 %.026.i, i64 %i.ah, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.h:                                             ; preds = %.critedge.i
  %i.aj = icmp eq i64 %i.ah, 4
  br i1 %i.aj, label %bb.i, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.i:                                             ; preds = %bb.h
  %i.ak = load i32, ptr %.026.i, align 4, !tbaa !38
  store i32 %i.ak, ptr %.sroa.013.024.i, align 4, !tbaa !38
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.j:                                             ; preds = %bb.a
  %i.al = ptrtoint ptr %2 to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am                    ; 7 uses
  %i.ao = icmp sgt i64 %i.an, 4
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !50

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %5, ptr align 4 %1, i64 %i.an, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.l:                                             ; preds = %bb.j
  %i.ap = icmp eq i64 %i.an, 4
  br i1 %i.ap, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

bb.m:                                             ; preds = %bb.l
  %i.aq = load i32, ptr %1, align 4, !tbaa !38
  store i32 %i.aq, ptr %5, align 4, !tbaa !38
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22: ; preds = %bb.k, %bb.l, %bb.m
  %i.ar = getelementptr inbounds i8, ptr %5, i64 %i.an
  %i.as = icmp eq ptr %0, %1
  br i1 %i.as, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.at = ashr exact i64 %i.an, 2                 ; 2 uses
  %i.au = icmp sgt i64 %i.at, 1
  br i1 %i.au, label %bb.o, label %bb.p, !prof !50

bb.o:                                             ; preds = %bb.n
  %i.av = sub nsw i64 0, %i.at
  %i.aw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.av
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %5, i64 %i.an, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.p:                                             ; preds = %bb.n
  %i.ax = icmp eq i64 %i.an, 4
  br i1 %i.ax, label %bb.q, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds i8, ptr %2, i64 -4
  %i.az = load i32, ptr %5, align 4, !tbaa !38
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !38
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.r:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit22
  %i.ba = icmp eq ptr %2, %1
  br i1 %i.ba, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds i8, ptr %i.ar, i64 -4
  %.val.val.i23 = load ptr, ptr %i.a, align 8, !tbaa !155 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.s
  %.sroa.019.0.i.ph = phi ptr [ %2, %bb.s ], [ %i.by, %bb.u ]
  %.sroa.023.0.i.ph.pn = phi ptr [ %1, %bb.s ], [ %.sroa.023.0.i.ph, %bb.u ]
  %.0.i.ph = phi ptr [ %i.bb, %bb.s ], [ %.0.i, %bb.u ]
  %.sroa.023.0.i.ph = getelementptr inbounds i8, ptr %.sroa.023.0.i.ph.pn, i64 -4 ; 3 uses
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.aa
  %.sroa.019.0.i = phi ptr [ %i.by, %bb.aa ], [ %.sroa.019.0.i.ph, %.outer ] ; 2 uses
  %.0.i = phi ptr [ %i.cm, %bb.aa ], [ %.0.i.ph, %.outer ] ; 5 uses
  %.0.val.i24 = load i32, ptr %.0.i, align 4, !tbaa !38 ; 2 uses
  %i.bc = load i32, ptr %.sroa.023.0.i.ph, align 4, !tbaa !38 ; 2 uses
  %i.bd = sext i32 %.0.val.i24 to i64
  %i.be = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i23, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 8      ; 2 uses
  %.val5.i.i.i25 = load i64, ptr %i.bf, align 8, !tbaa !162
  %i.bg = load <2 x i64>, ptr %i.bf, align 8
  %i.bh = uitofp <2 x i64> %i.bg to <2 x double>  ; 2 uses
  %i.bi = sext i32 %i.bc to i64
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i23, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 8      ; 2 uses
  %.val3.i.i.i28 = load i64, ptr %i.bk, align 8, !tbaa !162
  %i.bl = load <2 x i64>, ptr %i.bk, align 8
  %i.bm = uitofp <2 x i64> %i.bl to <2 x double>  ; 2 uses
  %i.bn = icmp eq i64 %.val5.i.i.i25, 0
  %i.bo = icmp eq i64 %.val3.i.i.i28, 0
  %i.bp = shufflevector <2 x double> %i.bh, <2 x double> %i.bm, <2 x i32> <i32 1, i32 3>
  %i.bq = shufflevector <2 x double> %i.bh, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.br = fdiv <2 x double> %i.bp, %i.bq
  %i.bs = insertelement <2 x i1> poison, i1 %i.bn, i64 0
  %i.bt = insertelement <2 x i1> %i.bs, i1 %i.bo, i64 1
  %i.bu = select <2 x i1> %i.bt, <2 x double> zeroinitializer, <2 x double> %i.br ; 2 uses
  %i.bv = extractelement <2 x double> %i.bu, i64 0
  %i.bw = extractelement <2 x double> %i.bu, i64 1
  %i.bx = fcmp ogt double %i.bv, %i.bw
  %i.by = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -4 ; 5 uses
  br i1 %i.bx, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  store i32 %i.bc, ptr %i.by, align 4, !tbaa !38
  %i.bz = icmp eq ptr %0, %.sroa.023.0.i.ph
  br i1 %i.bz, label %bb.v, label %.outer, !llvm.loop !583

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.cb = ptrtoint ptr %i.ca to i64
  %i.cc = ptrtoint ptr %5 to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = ashr exact i64 %i.cd, 2                 ; 2 uses
  %i.cf = icmp sgt i64 %i.ce, 1
  br i1 %i.cf, label %bb.w, label %bb.x, !prof !50

bb.w:                                             ; preds = %bb.v
  %i.cg = sub nsw i64 0, %i.ce
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ch, ptr align 4 %5, i64 %i.cd, i1 false)
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.x:                                             ; preds = %bb.v
  %i.ci = icmp eq i64 %i.cd, 4
  br i1 %i.ci, label %bb.y, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -8
  %i.ck = load i32, ptr %5, align 4, !tbaa !38
  store i32 %i.ck, ptr %i.cj, align 4, !tbaa !38
  br label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit"

bb.z:                                             ; preds = %bb.t
  store i32 %.0.val.i24, ptr %i.by, align 4, !tbaa !38
  %i.cl = icmp eq ptr %5, %.0.i
  br i1 %i.cl, label %"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr inbounds i8, ptr %.0.i, i64 -4
  br label %bb.t, !llvm.loop !583

"_ZSt21__move_merge_adaptiveIPiN9__gnu_cxx17__normal_iteratorIS0_St6vectorIiSaIiEEEES6_NS1_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_SE_T1_T2_.exit": ; preds = %bb.f, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_T0_"(ptr %0, ptr nofree readnone captures(address) %1, ptr nofree readonly captures(none) %2) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.018 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.0.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
  %.sroa.0.021 = phi ptr [ %.sroa.0.018, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 7 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.021, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit ] ; 4 uses
  %.val.val = load ptr, ptr %2, align 8, !tbaa !155 ; 4 uses
  %i.c = load i32, ptr %.sroa.0.021, align 4, !tbaa !38 ; 2 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  %i.e = sext i32 %i.c to i64
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.e ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val5.i.i = load i64, ptr %i.g, align 8, !tbaa !162
  %.val5.i.i.fr.i = freeze i64 %.val5.i.i         ; 2 uses
  %3 = getelementptr i8, ptr %i.f, i64 16         ; 2 uses
  %.val6.i.i = load i64, ptr %3, align 8
  %i.h = sext i32 %i.d to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val3.i.i = load i64, ptr %i.j, align 8, !tbaa !162
  %i.k = load <2 x i64>, ptr %i.j, align 8
  %i.l = uitofp <2 x i64> %i.k to <2 x double>    ; 2 uses
  %4 = icmp eq i64 %.val5.i.i.fr.i, 0             ; 2 uses
  %5 = uitofp i64 %.val6.i.i to double
  %6 = uitofp i64 %.val5.i.i.fr.i to double       ; 2 uses
  %7 = icmp eq i64 %.val3.i.i, 0
  %8 = insertelement <2 x double> %i.l, double %5, i64 0
  %9 = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %10 = insertelement <2 x double> %9, double %6, i64 0
  %i.m = fdiv <2 x double> %8, %10                ; 2 uses
  %11 = insertelement <2 x i1> poison, i1 %4, i64 0
  %12 = insertelement <2 x i1> %11, i1 %7, i64 1
  %i.n = select <2 x i1> %12, <2 x double> zeroinitializer, <2 x double> %i.m ; 2 uses
  %i.o = extractelement <2 x double> %i.n, i64 0
  %i.p = extractelement <2 x double> %i.n, i64 1
  %i.q = fcmp ogt double %i.o, %i.p
  br i1 %i.q, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.r = ptrtoint ptr %.sroa.0.021 to i64
  %i.s = sub i64 %i.r, %i.b                       ; 3 uses
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  %i.u = icmp sgt i64 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.e, !prof !50

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.pn20, i64 8
  %i.w = sub nsw i64 0, %i.t
  %i.x = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.x, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.s, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.e:                                             ; preds = %bb.c
  %i.y = icmp eq i64 %i.s, 4
  br i1 %i.y, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.pn20, i64 4
  store i32 %i.d, ptr %i.z, align 4, !tbaa !38
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

bb.g:                                             ; preds = %bb.b
  br i1 %4, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, label %.split.i

.split.i:                                         ; preds = %bb.g
  %i.aa = load i32, ptr %.pn20, align 4, !tbaa !38 ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 8      ; 2 uses
  %.val3.i.i13.i = load i64, ptr %i.ad, align 8, !tbaa !162
  %i.ae = load <2 x i64>, ptr %i.ad, align 8
  %i.af = icmp eq i64 %.val3.i.i13.i, 0
  %i.ag = uitofp <2 x i64> %i.ae to <2 x double>  ; 2 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 0
  %i.ai = extractelement <2 x double> %i.ag, i64 1
  %i.aj = fdiv double %i.ai, %i.ah
  %.0.i7.i.i15.i = select i1 %i.af, double 0.000000e+00, double %i.aj
  %i.ak = extractelement <2 x double> %i.m, i64 0
  %i.al = fcmp ogt double %i.ak, %.0.i7.i.i15.i
  br i1 %i.al, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit

.lr.ph.i:                                         ; preds = %.split.i, %.lr.ph.i
  %i.am = phi i32 [ %i.an, %.lr.ph.i ], [ %i.aa, %.split.i ]
  %.sroa.0.017.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn20, %.split.i ] ; 3 uses
  %.sroa.06.016.i = phi ptr [ %.sroa.0.017.i, %.lr.ph.i ], [ %.sroa.0.021, %.split.i ]
  store i32 %i.am, ptr %.sroa.06.016.i, align 4, !tbaa !38
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.017.i, i64 -4 ; 2 uses
  %i.an = load i32, ptr %.sroa.0.0.i, align 4, !tbaa !38 ; 2 uses
  %.val6.i.i.i = load i64, ptr %3, align 8
  %i.ao = uitofp i64 %.val6.i.i.i to double
  %i.ap = fdiv double %i.ao, %6
  %i.aq = sext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 8      ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.as, align 8, !tbaa !162
  %i.at = load <2 x i64>, ptr %i.as, align 8
  %i.au = icmp eq i64 %.val3.i.i.i, 0
  %i.av = uitofp <2 x i64> %i.at to <2 x double>  ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = extractelement <2 x double> %i.av, i64 1
  %i.ay = fdiv double %i.ax, %i.aw
  %.0.i7.i.i.i = select i1 %i.au, double 0.000000e+00, double %i.ay
  %i.az = fcmp ogt double %i.ap, %.0.i7.i.i.i
  br i1 %i.az, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, !llvm.loop !584

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit: ; preds = %.lr.ph.i, %.split.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.021, %bb.g ], [ %.sroa.0.021, %.split.i ], [ %.sroa.0.017.i, %.lr.ph.i ]
  store i32 %i.c, ptr %.sink, align 4, !tbaa !38
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 4 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !585

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEEvT_SD_SD_T0_SE_T1_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr nofree readonly captures(none) %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond95 = or i1 %i.a, %i.b
  br i1 %or.cond95, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr91100 = phi i64 [ %4, %.lr.ph ], [ %i.cs, %tailrecurse ] ; 4 uses
  %.tr9099 = phi i64 [ %3, %.lr.ph ], [ %i.cr, %tailrecurse ] ; 4 uses
  %.tr8897 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr96 = phi ptr [ %0, %.lr.ph ], [ %i.cq, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr91100, %.tr9099
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.val.val = load ptr, ptr %5, align 8, !tbaa !155 ; 2 uses
  %i.f = load i32, ptr %.tr8897, align 4, !tbaa !38 ; 2 uses
  %i.g = load i32, ptr %.tr96, align 4, !tbaa !38 ; 2 uses
  %i.h = sext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = sext i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.val.val, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load <2 x i64>, ptr %i.j, align 8        ; 2 uses
  %i.o = load <2 x i64>, ptr %i.m, align 8        ; 2 uses
  %i.p = shufflevector <2 x i64> %i.n, <2 x i64> %i.o, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.q = icmp eq <2 x i64> %i.p, zeroinitializer
  %i.r = shufflevector <2 x i64> %i.n, <2 x i64> %i.o, <2 x i32> <i32 1, i32 3>
  %i.s = uitofp <2 x i64> %i.r to <2 x double>
  %i.t = uitofp <2 x i64> %i.p to <2 x double>
  %i.u = fdiv <2 x double> %i.s, %i.t
  %i.v = select <2 x i1> %i.q, <2 x double> zeroinitializer, <2 x double> %i.u ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = extractelement <2 x double> %i.v, i64 1
  %i.y = fcmp ogt double %i.w, %i.x
  br i1 %i.y, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  store i32 %i.f, ptr %.tr96, align 4, !tbaa !38
  store i32 %i.g, ptr %.tr8897, align 4, !tbaa !38
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.z = icmp sgt i64 %.tr9099, %.tr91100
  %i.aa = ptrtoint ptr %.tr8897 to i64            ; 4 uses
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.ab = sdiv i64 %.tr9099, 2                    ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.tr96, i64 %i.ab ; 2 uses
  %i.ad = sub i64 %i.c, %i.aa
  %i.ae = ashr exact i64 %i.ad, 2                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val52 = load i32, ptr %i.ac, align 4
  %.val.val.i = load ptr, ptr %5, align 8, !tbaa !155 ; 2 uses
  %i.ag = sext i32 %.val52 to i64
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 8      ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !162
  %i.aj = load <2 x i64>, ptr %i.ai, align 8
  %i.ak = icmp eq i64 %.val3.i.i.i, 0
  %i.al = uitofp <2 x i64> %i.aj to <2 x double>  ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = fdiv double %i.an, %i.am
  %.0.i7.i.i.i = select i1 %i.ak, double 0.000000e+00, double %i.ao
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.08.i = phi i64 [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %.tr8897, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.03.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.ap = lshr i64 %.08.i, 1                      ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.07.i, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !38
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  %.val5.i.i.i = load i64, ptr %i.au, align 8, !tbaa !162
  %i.av = load <2 x i64>, ptr %i.au, align 8
  %i.aw = icmp eq i64 %.val5.i.i.i, 0
  %i.ax = uitofp <2 x i64> %i.av to <2 x double>  ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0
  %i.az = extractelement <2 x double> %i.ax, i64 1
  %i.ba = fdiv double %i.az, %i.ay
  %.0.i.i.i.i = select i1 %i.aw, double 0.000000e+00, double %i.ba
  %i.bb = fcmp ogt double %.0.i.i.i.i, %.0.i7.i.i.i ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.bd = xor i64 %i.ap, -1
  %i.be = add nsw i64 %.08.i, %i.bd
  %.sroa.03.1.i = select i1 %i.bb, ptr %i.bc, ptr %.sroa.03.07.i ; 3 uses
  %.1.i = select i1 %i.bb, i64 %i.be, i64 %i.ap   ; 2 uses
  %i.bf = icmp sgt i64 %.1.i, 0
  br i1 %i.bf, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !8

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.03.1.i to i64
  br label %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.1.i, %"_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Iter_comp_valIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr8897, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bg = sub i64 %.pre-phi, %i.aa
  %i.bh = ashr exact i64 %i.bg, 2
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57: ; preds = %bb.e
  %i.bi = sdiv i64 %.tr91100, 2                   ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.tr8897, i64 %i.bi ; 2 uses
  %i.bk = ptrtoint ptr %.tr96 to i64              ; 3 uses
  %i.bl = sub i64 %i.aa, %i.bk
  %i.bm = ashr exact i64 %i.bl, 2                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit"

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.val53 = load i32, ptr %i.bj, align 4
  %.val.val.i60 = load ptr, ptr %5, align 8, !tbaa !155 ; 2 uses
  %i.bo = sext i32 %.val53 to i64
  %i.bp = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i60, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %.val5.i.i.i61 = load i64, ptr %i.bq, align 8, !tbaa !162
  %i.br = load <2 x i64>, ptr %i.bq, align 8
  %i.bs = icmp eq i64 %.val5.i.i.i61, 0
  %i.bt = uitofp <2 x i64> %i.br to <2 x double>  ; 2 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 0
  %i.bv = extractelement <2 x double> %i.bt, i64 1
  %i.bw = fdiv double %i.bv, %i.bu
  %.0.i.i.i.i63 = select i1 %i.bs, double 0.000000e+00, double %i.bw
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59
  %.08.i65 = phi i64 [ %i.bm, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59 ], [ %.1.i73, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %.sroa.03.07.i66 = phi ptr [ %.tr96, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i59 ], [ %.sroa.03.1.i72, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ] ; 2 uses
  %i.bx = lshr i64 %.08.i65, 1                    ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03.07.i66, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !38
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [48 x i8], ptr %.val.val.i60, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 8      ; 2 uses
  %.val3.i.i.i69 = load i64, ptr %i.cc, align 8, !tbaa !162
  %i.cd = load <2 x i64>, ptr %i.cc, align 8
  %i.ce = icmp eq i64 %.val3.i.i.i69, 0
  %i.cf = uitofp <2 x i64> %i.cd to <2 x double>  ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = extractelement <2 x double> %i.cf, i64 1
  %i.ci = fdiv double %i.ch, %i.cg
  %.0.i7.i.i.i71 = select i1 %i.ce, double 0.000000e+00, double %i.ci
  %i.cj = fcmp ogt double %.0.i.i.i.i63, %.0.i7.i.i.i71 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cl = xor i64 %i.bx, -1
  %i.cm = add nsw i64 %.08.i65, %i.cl
  %.sroa.03.1.i72 = select i1 %i.cj, ptr %.sroa.03.07.i66, ptr %i.ck ; 3 uses
  %.1.i73 = select i1 %i.cj, i64 %i.bx, i64 %i.cm ; 2 uses
  %i.cn = icmp sgt i64 %.1.i73, 0
  br i1 %i.cn, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit", !llvm.loop !9

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit": ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %.pre103 = ptrtoint ptr %.sroa.03.1.i72 to i64
  br label %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit"

"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit": ; preds = %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit", %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.pre-phi104 = phi i64 [ %.pre103, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %i.bk, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %.sroa.03.0.lcssa.i58 = phi ptr [ %.sroa.03.1.i72, %"_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiNS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_113CallGraphSort3runEvE3$_1EEET_SD_SD_RKT0_T1_.exit.loopexit" ], [ %.tr96, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %i.co = sub i64 %.pre-phi104, %i.bk
end_hunk_1
